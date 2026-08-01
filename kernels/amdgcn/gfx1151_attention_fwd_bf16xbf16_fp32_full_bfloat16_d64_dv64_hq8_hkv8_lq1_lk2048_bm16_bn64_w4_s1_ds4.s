	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s59, s[0:1], 0x60
	s_load_b64 s[46:47], s[0:1], 0x58
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v92, 3, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b64 s[60:61], s[0:1], 0x0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v89, 1, v0
	v_lshlrev_b32_e32 v94, 4, v0
	v_and_b32_e32 v93, 15, v0
	v_lshlrev_b32_e32 v90, 5, v0
	v_lshlrev_b32_e32 v91, 2, v0
	v_and_b32_e32 v6, 0x70, v89
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v6, v94, v6
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s59
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s59
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v95, 0, v6
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v1, 7, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v33, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[85:86], null, s46, v92, v[33:34]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s6, s6, s4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v33
	.loc	1 798 32                        ; attention.py:798:32
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
	s_and_b32 s61, s61, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s12, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s59
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s12, v92
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s12, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s58, s2, s7
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s4, s4, s46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s45, 1, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s4, v85, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s45
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s59, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s59
	s_abs_i32 s4, s4
	.loc	1 788 26                        ; attention.py:788:26
	buffer_load_b128 v[2:5], v2, s[60:63], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s58, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s72, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s72, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s73, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s72, s73
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v95, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[64:65], s[0:1], 0x30
	v_and_b32_e32 v35, 24, v0
	v_and_b32_e32 v38, 3, v0
	v_bfe_i32 v39, v0, 4, 1
	v_and_b32_e32 v40, 0x180, v90
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshlrev_b32_e32 v34, 4, v1
	v_and_b32_e32 v36, 0x60, v0
	v_lshlrev_b32_e32 v37, 1, v35
	v_dual_mov_b32 v120, 0xff800000 :: v_dual_lshlrev_b32 v41, 4, v38
	v_and_b32_e32 v39, 0x840, v39
	v_lshl_or_b32 v40, v38, 9, v40
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s3, 31
	v_lshl_or_b32 v37, v36, 2, v37
	s_lshr_b32 s1, s1, 29
	v_lshlrev_b32_e32 v50, 3, v0
	v_or3_b32 v108, v39, v41, v40
	v_mov_b32_e32 v39, 0x5410
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v9, v93, 7, v34
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[86:87], null, s11, v92, v[33:34]
	v_lshl_or_b32 v34, v35, 6, v34
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v2, 0x70, v9
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	v_xor_b32_e32 v106, v34, v37
	v_and_b32_e32 v34, 16, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s2, s3, s2
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s1, s9, s1
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s2, s10, s2
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s47, v33
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s79, s2, s1
	v_cmp_eq_u32_e64 s1, 0, v34
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v97, 0x800, v33
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v98, 0, v2
	v_xor_b32_e32 v40, 16, v108
	v_bfe_i32 v53, v0, 0, 1
	v_cndmask_b32_e64 v39, 0x1054, v39, s1
	v_bfe_i32 v54, v0, 2, 1
	v_and_b32_e32 v50, 16, v50
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[87:88], null, s47, v92, v[33:34]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v39, v39, 8, v39
	v_mov_b32_e32 v33, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v1, 0x60, v9
	v_and_b32_e32 v54, 0x840, v54
	v_and_or_b32 v50, 0x420, v53, v50
	v_and_b32_e32 v39, 0x540054, v39
	v_add_nc_u32_e32 v115, 0, v40
	v_dual_mov_b32 v40, v33 :: v_dual_lshlrev_b32 v35, 4, v35
	v_add_nc_u32_e32 v99, 0, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v39, v39, 4, v39
	v_bfe_i32 v58, v0, 3, 1
	v_bfe_i32 v59, v0, 5, 1
	v_or3_b32 v111, v50, v54, v35
	v_and_b32_e32 v57, 4, v0
	v_and_b32_e32 v88, 0x5040504, v39
	v_mov_b32_e32 v39, v33
	v_lshlrev_b32_e32 v35, 5, v38
	v_mov_b32_e32 v38, 0x7632
	v_and_b32_e32 v50, 0x420, v58
	v_and_b32_e32 v54, 0x840, v59
	v_xor_b32_e32 v14, 0x50, v9
	v_and_b32_e32 v59, 0x80, v89
	v_cndmask_b32_e64 v38, 0x3276, v38, s1
	v_xor_b32_e32 v13, 64, v9
	v_xor3_b32 v35, v50, v35, v54
	v_lshl_add_u32 v50, v57, 7, 0
	v_xor_b32_e32 v12, 48, v9
	v_lshl_or_b32 v38, v38, 8, v38
	v_xor_b32_e32 v11, 32, v9
	v_xor_b32_e32 v10, 16, v9
	v_dual_mov_b32 v137, 0xff800000 :: v_dual_add_nc_u32 v100, 0, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v38, 0x760076, v38
	v_xor_b32_e32 v37, 0x840, v106
	v_add3_u32 v35, v50, v59, v35
	v_lshlrev_b32_e32 v50, 1, v93
	v_add_nc_u32_e32 v101, 0, v13
	v_lshl_or_b32 v38, v38, 4, v38
	v_dual_mov_b32 v135, 0xff800000 :: v_dual_add_nc_u32 v102, 0, v12
	v_add_nc_u32_e32 v103, 0, v11
	v_add_nc_u32_e32 v104, 0, v10
	v_add_nc_u32_e32 v105, 0, v9
	v_and_b32_e32 v112, 0x7060706, v38
	v_add_nc_u32_e32 v114, 0, v37
	v_add_nc_u32_e32 v134, v35, v34
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v37, v33
	v_lshrrev_b32_e32 v41, 3, v36
	v_add3_u32 v113, 0, v50, v36
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v38, v33
	ds_load_b128 v[13:16], v100
	ds_load_b128 v[9:12], v101
	ds_load_b128 v[21:24], v102
	ds_load_b128 v[17:20], v103
	ds_load_b128 v[29:32], v104
	ds_load_b128 v[25:28], v105
	ds_load_b128 v[5:8], v98
	ds_load_b128 v[1:4], v99
	v_and_b32_e32 v42, 28, v0
	v_xor_b32_e32 v109, v91, v41
	v_xor_b32_e32 v43, 32, v108
	v_xor_b32_e32 v44, 48, v108
	v_xor_b32_e32 v45, 64, v108
	v_and_or_b32 v110, 0x3e0, v90, v42
	v_xor_b32_e32 v41, 0x50, v108
	v_xor_b32_e32 v42, 0x60, v108
	v_xor_b32_e32 v46, 0x70, v108
	v_xor_b32_e32 v47, 0x210, v109
	v_xor_b32_e32 v48, 4, v110
	v_xor_b32_e32 v49, 8, v110
	v_xor_b32_e32 v51, 12, v110
	v_xor_b32_e32 v52, 16, v110
	v_xor_b32_e32 v55, 20, v110
	v_xor_b32_e32 v56, 24, v110
	v_xor_b32_e32 v53, 28, v110
	v_xor_b32_e32 v58, 32, v111
	v_xor_b32_e32 v54, 64, v111
	v_xor_b32_e32 v57, 0x60, v111
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v96, 0x800, v92
	v_add_nc_u32_e32 v107, 4, v86
	v_add_nc_u32_e32 v116, 0, v43
	v_add_nc_u32_e32 v117, 0, v44
	v_add_nc_u32_e32 v118, 0, v45
	v_add_nc_u32_e32 v119, 0, v41
	v_add_nc_u32_e32 v121, 0, v42
	v_add_nc_u32_e32 v122, 0, v46
	v_add_nc_u32_e32 v123, 0, v47
	v_add_nc_u32_e32 v124, 0, v48
	v_add_nc_u32_e32 v125, 0, v49
	v_add_nc_u32_e32 v126, 0, v51
	v_add_nc_u32_e32 v127, 0, v52
	v_add_nc_u32_e32 v128, 0, v55
	v_add_nc_u32_e32 v129, 0, v56
	v_add_nc_u32_e32 v130, 0, v53
	v_add_nc_u32_e32 v131, 0, v58
	v_add_nc_u32_e32 v132, 0, v54
	v_dual_mov_b32 v136, v33 :: v_dual_add_nc_u32 v133, 0, v57
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s75, s8, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s12, s12, s11
	s_and_b32 s5, s5, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s74, s3, 11
	s_lshl_b32 s76, s46, 4
	s_lshl_b32 s77, s46, 5
	s_mul_i32 s78, s46, 48
	s_add_i32 s79, s79, s12
	s_and_b32 s65, s65, 0xffff
	s_lshl_b32 s80, s47, 4
	s_lshl_b32 s81, s47, 5
	s_mul_i32 s82, s47, 48
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s83, 0x76543210
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s68, s6
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s2, s72, s74
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s4, s79, s72
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[49:50], null, s2, s46, v[85:86]
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s1, s72, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v50, s4, v86, 2
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s15, s72, v96
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v41, s48 :: v_dual_mov_b32 v42, s49
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s9, s45, s1
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v51, v49, s76, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v81, 0x80000000, v50, s9
	.loc	1 854 32                        ; attention.py:854:32
	v_lshlrev_b32_e32 v50, 1, v49
	v_add_lshl_u32 v52, v49, s77, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s1, vcc_lo, s15
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v49, v49, s78, 1
	v_cndmask_b32_e64 v53, 0x80000000, v51, s1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	v_cndmask_b32_e64 v57, 0x80000000, v52, s1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v43, s50 :: v_dual_mov_b32 v44, s51
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v61, 0x80000000, v49, s1
	s_clause 0x3
	buffer_load_b128 v[49:52], v50, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	buffer_load_b128 v[57:60], v57, s[60:63], 0 offen
	buffer_load_b128 v[61:64], v61, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v45, s52 :: v_dual_mov_b32 v46, s53
	v_dual_mov_b32 v47, s54 :: v_dual_mov_b32 v48, s55
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s72, s72, 64
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v95, v[49:52]
	s_waitcnt vmcnt(2)
	ds_store_b128 v95, v[53:56] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v95, v[57:60] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v95, v[61:64] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v104
	ds_load_b128 v[49:52], v105
	ds_load_b128 v[57:60], v105 offset:2048
	ds_load_b128 v[61:64], v104 offset:2048
	ds_load_b128 v[69:72], v104 offset:4096
	ds_load_b128 v[65:68], v105 offset:4096
	ds_load_b128 v[73:76], v105 offset:6144
	ds_load_b128 v[77:80], v104 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[49:56], v[25:32], v[41:48]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[57:64], v[25:32], v[41:48]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[65:72], v[25:32], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[73:80], v[25:32], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v102
	ds_load_b128 v[41:44], v103
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v72, 0, v109
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[41:48], v[17:24], v[138:145]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v103 offset:2048
	ds_load_b128 v[45:48], v102 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[41:48], v[17:24], v[146:153]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v102 offset:4096
	ds_load_b128 v[41:44], v103 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[41:48], v[17:24], v[154:161]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v103 offset:6144
	ds_load_b128 v[45:48], v102 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[41:48], v[17:24], v[162:169]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v100
	ds_load_b128 v[41:44], v101
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[41:48], v[9:16], v[138:145]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v101 offset:2048
	ds_load_b128 v[45:48], v100 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[41:48], v[9:16], v[146:153]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v100 offset:4096
	ds_load_b128 v[41:44], v101 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[41:48], v[9:16], v[154:161]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v101 offset:6144
	ds_load_b128 v[45:48], v100 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[41:48], v[9:16], v[162:169]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v98
	ds_load_b128 v[41:44], v99
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[41:48], v[1:8], v[138:145]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v99 offset:2048
	ds_load_b128 v[45:48], v98 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[41:48], v[1:8], v[146:153]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v98 offset:4096
	ds_load_b128 v[41:44], v99 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[41:48], v[1:8], v[154:161]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v99 offset:6144
	ds_load_b128 v[45:48], v98 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[162:169], v[41:48], v[1:8], v[162:169]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[43:46], v81, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v42, 0xff800000, v46, s9
	v_cndmask_b32_e64 v46, 0xff800000, v45, s9
	v_cndmask_b32_e64 v45, 0xff800000, v43, s9
	v_add_lshl_u32 v43, v107, s4, 2
	v_cndmask_b32_e64 v41, 0xff800000, v44, s9
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v42
	v_cmp_neq_f32_e64 s6, 0xff800000, v46
	v_cmp_neq_f32_e64 s5, 0xff800000, v45
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v43, 0x80000000, v43, s9
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s9, s5
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[47:50], v43, s[64:67], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v43, 0xff800000, v48, s9
	v_cndmask_b32_e64 v48, 0xff800000, v49, s9
	v_cndmask_b32_e64 v47, 0xff800000, v47, s9
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v49, 0, v106
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v44, 0xff800000, v50, s9
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v49, v[45:48]
	ds_store_b128 v114, v[41:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v116
	ds_load_b128 v[61:64], v117
	ds_load_b128 v[65:68], v118
	ds_load_b128 v[73:76], v119
	ds_load_b128 v[77:80], v121
	ds_load_b128 v[81:84], v122
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v47
	v_cmp_neq_f32_e64 s7, 0xff800000, v48
	v_cmp_neq_f32_e64 s10, 0xff800000, v43
	v_cmp_neq_f32_e64 s12, 0xff800000, v44
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v44, 0, 1, s8
	s_and_b32 s4, s9, s1
	s_and_b32 s1, s9, s7
	s_and_b32 s7, s9, s6
	v_cndmask_b32_e64 v42, 0, 1, s4
	v_cndmask_b32_e64 v43, 0, 1, s7
	s_and_b32 s5, s9, s12
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_add_nc_u32_e32 v50, 0, v108
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s9, s10
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b128 v[53:56], v115
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v57, 0x3fb8aa3b, v57 :: v_dual_mul_f32 v58, 0x3fb8aa3b, v58
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v64, 0x3fb8aa3b, v64 :: v_dual_mul_f32 v69, 0x3fb8aa3b, v65
	v_dual_mul_f32 v70, 0x3fb8aa3b, v68 :: v_dual_mul_f32 v71, 0x3fb8aa3b, v67
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v73, 0x3fb8aa3b, v73
	v_mul_f32_e32 v75, 0x3fb8aa3b, v75
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v57, s75, v146 :: v_dual_fmac_f32 v64, s75, v153
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v65, 0x3fb8aa3b, v66
	v_mul_f32_e32 v66, 0x3fb8aa3b, v74
	v_mul_f32_e32 v74, 0x3fb8aa3b, v76
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v71, s75, v156 :: v_dual_mul_f32 v68, 0x3fb8aa3b, v82
	v_dual_fmac_f32 v70, s75, v157 :: v_dual_fmac_f32 v73, s75, v158
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v80, 0x3fb8aa3b, v80
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v75, s75, v160 :: v_dual_mul_f32 v82, 0x3fb8aa3b, v83
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v77, 0x3fb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v67, 0x3fb8aa3b, v78 :: v_dual_fmac_f32 v80, s75, v165
	v_mul_f32_e32 v78, 0x3fb8aa3b, v84
	v_mad_u64_u32 v[83:84], null, s2, s47, v[87:88]
	.loc	1 881 34 is_stmt 1              ; attention.py:881:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v41
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v41, 0, 1, s1
	v_cndmask_b32_e64 v84, 0, 1, s5
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_load_b128 v[49:52], v50
	v_dual_mul_f32 v79, 0x3fb8aa3b, v79 :: v_dual_fmac_f32 v82, s75, v168
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v41.l, 8, v41.l
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v45, 1, v83
	v_add_lshl_u32 v46, v83, s80, 1
	v_add_lshl_u32 v47, v83, s81, 1
	v_add_lshl_u32 v48, v83, s82, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v83.h, v42.l, v41.l
	v_mov_b16_e32 v41.l, v43.l
	v_mov_b16_e32 v42.l, v44.l
	s_and_b32 s10, s9, s2
	s_and_b32 s9, s9, s11
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v67, s75, v163
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v41.l, 8, v41.l
	v_cndmask_b32_e64 v43, 0, 1, s9
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v79, s75, v164 :: v_dual_add_nc_u32 v76, 0, v110
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v83.l, v42.l, v41.l
	v_mov_b16_e32 v41.l, v84.l
	v_cndmask_b32_e64 v42, 0, 1, s6
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v49, 0x3fb8aa3b, v49 :: v_dual_mul_f32 v56, 0x3fb8aa3b, v56
	.loc	1 881 25                        ; attention.py:881:25
	s_barrier
	v_lshlrev_b16 v41.l, 8, v41.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v81, 0x3fb8aa3b, v81 :: v_dual_fmac_f32 v68, s75, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v49, s75, v138
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v50 :: v_dual_mul_f32 v53, 0x3fb8aa3b, v53
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v41.h, v42.l, v41.l
	v_mov_b16_e32 v41.l, v43.l
	v_cndmask_b32_e64 v42, 0, 1, s10
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v51
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v50, s75, v139
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v52
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_lshlrev_b16 v41.l, 8, v41.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v62, 0x3fb8aa3b, v62 :: v_dual_mul_f32 v63, 0x3fb8aa3b, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v51, s75, v140 :: v_dual_fmac_f32 v52, s75, v141
	v_fmac_f32_e32 v53, s75, v142
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v41.l, v42.l, v41.l
	ds_store_b32 v72, v83
	ds_store_b32 v123, v41
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v41, v76
	ds_load_b32 v42, v124
	ds_load_b32 v43, v125
	ds_load_b32 v44, v126
	ds_load_b32 v138, v127
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v81, s75, v166
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v139, v128
	ds_load_b32 v140, v129
	ds_load_b32 v141, v130
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v62, s75, v151 :: v_dual_fmac_f32 v63, s75, v152
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v54, 0x3fb8aa3b, v54 :: v_dual_mul_f32 v55, 0x3fb8aa3b, v55
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v56, s75, v145 :: v_dual_mul_f32 v59, 0x3fb8aa3b, v59
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v60, 0x3fb8aa3b, v60 :: v_dual_mul_f32 v61, 0x3fb8aa3b, v61
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v69, s75, v154 :: v_dual_fmac_f32 v66, s75, v159
	v_dual_fmac_f32 v65, s75, v155 :: v_dual_fmac_f32 v74, s75, v161
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(7)
	v_and_b32_e32 v72, 0x10000, v41
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v54, s75, v143 :: v_dual_fmac_f32 v55, s75, v144
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s2, s0, s15
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v58, s75, v147 :: v_dual_fmac_f32 v59, s75, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s33, 0, v72
	s_waitcnt lgkmcnt(6)
	v_and_b32_e32 v72, 0x10000, v42
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v60, s75, v149 :: v_dual_fmac_f32 v61, s75, v150
	v_dual_fmac_f32 v77, s75, v162 :: v_dual_fmac_f32 v78, s75, v169
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s29, 0, v72
	s_waitcnt lgkmcnt(5)
	v_and_b32_e32 v72, 0x10000, v43
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, 0xff800000, v51, s33
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v55, 0xff800000, v55, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s26, 0, v72
	v_and_b32_e32 v72, 0x10000, v44
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s72, s73
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v59, 0xff800000, v59, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s22, 0, v72
	v_and_b32_e32 v72, 0x10000, v138
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v63, 0xff800000, v63, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s20, 0, v72
	v_and_b32_e32 v72, 0x10000, v139
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v71, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s18, 0, v72
	v_and_b32_e32 v72, 0x10000, v140
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v75, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s16, 0, v72
	v_and_b32_e32 v72, 0x10000, v141
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v79, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s17, 0, v72
	v_and_b32_e32 v72, 1, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v82, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s40, 1, v72
	v_and_b32_e32 v72, 0x1000000, v41
	v_lshrrev_b16 v41.l, 8, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, 0xff800000, v49, s40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s38, 0, v72
	v_and_b16 v41.l, 1, v41.l
	v_and_b32_e32 v72, 1, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, 0xff800000, v52, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s44, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v42.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s37, 1, v72
	v_and_b32_e32 v72, 0x1000000, v42
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v45, s2
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, 0xff800000, v50, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, 0xff800000, v53, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s35, 0, v72
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v48, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s43, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v43.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, 0xff800000, v56, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v54, 0xff800000, v54, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s42, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v44.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v58, 0xff800000, v58, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	v_cmp_eq_u16_e64 s41, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v138.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v62, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v72, 1, v43
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s34, 1, v72
	v_and_b32_e32 v72, 0x1000000, v43
	v_cmp_eq_u16_e64 s39, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v139.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v46, s2
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v57, 0xff800000, v57, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s31, 0, v72
	v_and_b32_e32 v72, 1, v44
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v60, 0xff800000, v60, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s30, 1, v72
	v_and_b32_e32 v72, 0x1000000, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s36, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v140.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v47, s2
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v61, 0xff800000, v61, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s28, 0, v72
	v_and_b32_e32 v72, 1, v138
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, 0xff800000, v64, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s27, 1, v72
	v_and_b32_e32 v72, 0x1000000, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s14, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v141.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v138, v58, v59, v60
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v69, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s25, 0, v72
	v_and_b32_e32 v72, 1, v139
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s24, 1, v72
	v_and_b32_e32 v72, 0x1000000, v139
	v_cmp_eq_u16_e64 s13, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v41, 0, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v73, 0xff800000, v73, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s23, 0, v72
	v_and_b32_e32 v72, 1, v140
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v68, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v76, 0xff800000, v74, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s21, 1, v72
	v_and_b32_e32 v72, 0x1000000, v140
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v66, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v77, 0xff800000, v77, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s12, 0, v72
	v_and_b32_e32 v72, 1, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v80, s12
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s19, 1, v72
	v_and_b32_e32 v72, 0x1000000, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v81, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s11, 0, v72
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v70, s25
	v_cndmask_b32_e64 v70, 0xff800000, v65, s39
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v84, 0xff800000, v78, s11
	v_cndmask_b32_e64 v78, 0xff800000, v67, s14
	ds_store_b128 v41, v[49:52]
	ds_store_b128 v41, v[69:72] offset:512
	ds_store_b128 v131, v[53:56]
	ds_store_b128 v131, v[73:76] offset:512
	ds_store_b128 v132, v[57:60]
	ds_store_b128 v132, v[77:80] offset:512
	ds_store_b128 v133, v[61:64]
	ds_store_b128 v133, v[81:84] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[140:143], v42, s[68:71], 0 offen
	buffer_load_b128 v[144:147], v43, s[68:71], 0 offen
	buffer_load_b128 v[148:151], v44, s[68:71], 0 offen
	buffer_load_b128 v[65:68], v45, s[68:71], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[45:48], v134
	ds_load_b128 v[41:44], v134 offset:256
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v139, 0, v94
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v139, v[140:143]
	s_waitcnt vmcnt(2)
	ds_store_b128 v139, v[144:147] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v139, v[148:151] offset:4096
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v140, v61, v62, v63
	v_max3_f32 v141, v64, v69, v70
	v_max3_f32 v142, v77, v78, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v138, v138, v140, v141
	v_max3_f32 v140, v71, v72, v73
	v_max3_f32 v141, v74, v75, v76
	v_max3_f32 v140, v140, v141, v142
	v_max_f32_e32 v141, v49, v50
	v_max3_f32 v142, v52, v53, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v141, v141, v51, v142
	v_max3_f32 v142, v55, v56, v57
	v_max3_f32 v138, v141, v142, v138
	v_dual_max_f32 v141, v80, v81 :: v_dual_max_f32 v142, v83, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v141, v141, v82, v142
	v_max3_f32 v138, v138, v140, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v140, v138, s83, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v138, v137, v138, v140
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v49, v138
	v_sub_f32_e32 v156, v50, v138
	v_sub_f32_e32 v50, v57, v138
	v_sub_f32_e32 v49, v58, v138
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v44, v44
	v_max_f32_e32 v58, v48, v48
.Ltmp7:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v52, v138
	v_sub_f32_e32 v148, v69, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.h, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v52, v59, v138 :: v_dual_max_f32 v57, v58, v57
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v45, v41, v46
	v_max3_f32 v59, v42, v47, v43
.Ltmp9:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v76, v138
	v_sub_f32_e32 v143, v74, v138
	v_sub_f32_e32 v74, v83, v138
	v_sub_f32_e32 v142, v75, v138
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v57, v58, v59, v57
.Ltmp11:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v145, v72, v138
	v_sub_f32_e32 v75, v81, v138
	v_sub_f32_e32 v151, v54, v138
	v_sub_f32_e32 v140, v77, v138
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v58, v57 :: v_dual_sub_f32 v77, v79, v138
.Ltmp13:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v149, v56, v138
	v_sub_f32_e32 v147, v70, v138
	v_sub_f32_e32 v70, v82, v138
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v58 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v75, v75
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v139, v[65:68] offset:6144
	s_waitcnt lgkmcnt(0)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
.Ltmp17:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v58
.Ltmp19:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s16
	v_cndmask_b32_e64 v75, 0, v75, s19
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v58, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v75, v75
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v58 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v57, v57, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v58, v57
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	v_dual_max_f32 v76, v57, v58 :: v_dual_max_f32 v57, v135, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v135, v57, v76 :: v_dual_sub_f32 v154, v51, v138
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v53, v138
	v_sub_f32_e32 v51, v60, v138
	v_dual_sub_f32 v150, v55, v138 :: v_dual_sub_f32 v79, v44, v135
	v_sub_f32_e32 v157, v41, v135
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v156
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v42, v135
	v_sub_f32_e32 v81, v43, v135
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v43.h, v69.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v62, v138
	v_sub_f32_e32 v55, v64, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.h, v69.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v82, v46, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v46.h, v69.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s44
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v41, v41
	v_and_b32_e32 v42, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v43.l, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v42, v42
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v42, v43, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v41, s83, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v57, v42, v41, v88
	v_perm_b32 v58, v42, v41, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.h, v69.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v41, v41
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v153
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v42, v42
	v_and_b32_e32 v43, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v42, v43, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v41, s83, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v59, v42, v41, v88
	v_perm_b32 v60, v42, v41, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v152
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.h, v69.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v41, v41
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v42.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v61, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v42, v42
	v_and_b32_e32 v43, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v42, v43, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v41, s83, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v61, v42, v41, v88
	v_perm_b32 v62, v42, v41, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.h, v69.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v41, v41
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v42.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v63, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v42, v42
	v_and_b32_e32 v43, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v42, v43, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v41, s83, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v63, v42, v41, v88
	v_perm_b32 v64, v42, v41, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.h, v69.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v41, v41
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v49
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v42, v42
	v_and_b32_e32 v43, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v42, v43, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v41, s83, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v49, v42, v41, v88
	v_perm_b32 v50, v42, v41, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v52
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.h, v69.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v41, v41
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v51
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v42.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v146, v71, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v42, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v71, v84, v138 :: v_dual_sub_f32 v84, v45, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v43, 1, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v42, v42, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s15
	v_permlanex16_b32 v42, v41, s83, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v51, v42, v41, v88
	v_perm_b32 v52, v42, v41, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.h, v69.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v42.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v144, v73, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v42, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v73, v78, v138 :: v_dual_sub_f32 v78, v48, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v43, 1, v69
	v_mov_b16_e32 v48.h, v69.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v42, v42, v43, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v42, v41, s83, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v53, v42, v41, v88
	v_perm_b32 v54, v42, v41, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.h, v69.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v42.h
	v_cmp_o_f32_e64 s15, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v69
	v_add3_u32 v42, v42, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s15
	v_permlanex16_b32 v42, v41, s83, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v55, v42, v41, v88
	v_perm_b32 v56, v42, v41, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.h, v69.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v147
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v42, v42
	v_and_b32_e32 v43, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v42, v42, v43, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s2
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v42, s83, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v43, v42, v88
	v_perm_b32 v42, v43, v42, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v146
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v43, v43
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v145
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v44.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v80, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v80, v47, v135 :: v_dual_and_b32 v45, 1, v69
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v44, v44, v45, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s2
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v45, v44, s83, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v43, v45, v44, v88
	v_perm_b32 v44, v45, v44, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v144
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v46.l, v45.h
	v_cmp_o_f32_e64 s2, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v45, v45, v46, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v46.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v46, v46
	v_and_b32_e32 v47, 1, v69
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v46, v46, v47, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s2
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v46, s83, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v47, v46, v88
	v_perm_b32 v46, v47, v46, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v142
	v_mov_b32_e32 v142, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v48.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v47, v47
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v47, v47, v48, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v141
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v48.h
	v_cmp_o_f32_e64 s15, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v141, 1, v69
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v73.h
	v_add3_u32 v48, v48, v141, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s2
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v137
	.loc	1 885 74 is_stmt 0              ; attention.py:885:74
	v_sub_f32_e32 v137, v137, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s15
	v_cmp_o_f32_e64 s15, v77, v77
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v137, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v141, v48, s83, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s17, v74, v74
	v_perm_b32 v47, v141, v48, v88
	v_perm_b32 v48, v141, v48, v112
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v137, 0, v137, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v73, v73
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v33, v33, v137
	v_mul_f32_e32 v34, v34, v137
	v_mul_f32_e32 v35, v35, v137
	v_mul_f32_e32 v36, v36, v137
	v_mul_f32_e32 v37, v37, v137
	v_mul_f32_e32 v38, v38, v137
	v_mul_f32_e32 v39, v39, v137
	v_mul_f32_e32 v40, v40, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.h, v69.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v137, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.l, v137.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s18, v137, v137
	v_and_b32_e32 v140, 1, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v137, v137, v140, 0x7fff
	v_mov_b16_e64 v140.h, v69.h
	v_mov_b16_e64 v140.l, v77.h
	v_and_b32_e32 v140, 1, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v140, v77, v140, 0x7fff
	v_mov_b16_e32 v77.h, v69.h
	v_mov_b16_e32 v77.l, v75.h
	v_and_b32_e32 v77, 1, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v141, v75, v77, 0x7fff
	v_mov_b16_e32 v75.h, v69.h
	v_mov_b16_e32 v75.l, v74.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v70, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v75, v142, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.l, 0x7fff, v140.h, s15
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v120, v75, v76 :: v_dual_and_b32 v75, 1, v69
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_add3_u32 v73, v73, v75, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v84
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v75, 0, v75, s8
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v75, v76
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v82
	v_exp_f32_e32 v76, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s7
	v_cndmask_b32_e64 v76, 0, v76, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp29:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v75, v76
.Ltmp30:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v80
	v_exp_f32_e32 v76, v81
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v76, 0, v76, s6
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v77, v77
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v75, v76
.Ltmp32:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v78
	v_exp_f32_e32 v76, v79
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v84, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp34:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s1
	v_cndmask_b32_e64 v76, 0, v76, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v72, v72
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v75, v76
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v76.h, 0x7fff, v73.h, s2
	v_and_b32_e32 v73, 1, v69
	v_mov_b16_e32 v69.l, v77.h
	v_cndmask_b16 v76.l, 0x7fff, v137.h, s18
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v81, v79
.Ltmp38:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v71, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v73, v72, v73, 0x7fff
	v_and_b32_e32 v80, 1, v69
	v_mov_b32_e32 v72, v136
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v140, v78, v79
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v75.h
	v_permlanex16_b32 v136, v76, s83, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v137, v77, v80, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v77, v113
	ds_load_u16_d16 v78, v113 offset:256
	ds_load_u16_d16 v79, v113 offset:512
	ds_load_u16_d16 v80, v113 offset:768
	ds_load_u16_d16 v81, v113 offset:1024
	ds_load_u16_d16 v82, v113 offset:1280
	ds_load_u16_d16 v83, v113 offset:1536
	ds_load_u16_d16 v84, v113 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v113 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v113 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v113 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v113 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v81, v113 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v82, v113 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v83, v113 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v84, v113 offset:1920
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v69, 1, v69
	v_cmp_o_f32_e64 s1, v75, v75
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v70, v142, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v73.l, 0x7fff, v141.h, s16
	v_cndmask_b16 v71.l, 0x7fff, v74.h, s17
	v_add3_u32 v68, v75, v69, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v73.h, s5
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v70, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v73.h, 0x7fff, v137.h, s4
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v71.h, 0x7fff, v68.h, s1
	v_permlanex16_b32 v67, v74, s83, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v137, v138
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v70, 0, v70, s2
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[77:84], v[57:64], v[33:40]
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v59, v140
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v57, v136, v76, v88
	v_perm_b32 v58, v136, v76, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v59, v59 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v140, v59
.Ltmp45:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v59, v113 offset:2048
	ds_load_u16_d16 v60, v113 offset:2304
	ds_load_u16_d16 v61, v113 offset:2560
	ds_load_u16_d16 v62, v113 offset:2816
	ds_load_u16_d16 v63, v113 offset:3072
	ds_load_u16_d16 v64, v113 offset:3328
	ds_load_u16_d16 v65, v113 offset:3584
	ds_load_u16_d16 v66, v113 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v59, v113 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v60, v113 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v61, v113 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v62, v113 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v63, v113 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v64, v113 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v65, v113 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v66, v113 offset:3968
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v83, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[59:66], v[49:56], v[33:40]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v49, v113 offset:4096
	ds_load_u16_d16 v50, v113 offset:4352
	ds_load_u16_d16 v51, v113 offset:4608
	ds_load_u16_d16 v52, v113 offset:4864
	ds_load_u16_d16 v53, v113 offset:5120
	ds_load_u16_d16 v54, v113 offset:5376
	ds_load_u16_d16 v55, v113 offset:5632
	ds_load_u16_d16 v56, v113 offset:5888
	ds_load_u16_d16 v75, v113 offset:6144
	ds_load_u16_d16 v76, v113 offset:6400
	ds_load_u16_d16 v77, v113 offset:6656
	ds_load_u16_d16 v78, v113 offset:6912
	ds_load_u16_d16 v79, v113 offset:7168
	ds_load_u16_d16 v80, v113 offset:7424
	ds_load_u16_d16 v81, v113 offset:7680
	ds_load_u16_d16 v82, v113 offset:7936
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v69, v83
.Ltmp49:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v49, v113 offset:4224
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v50, v113 offset:4480
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v51, v113 offset:4736
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v52, v113 offset:4992
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v53, v113 offset:5248
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v54, v113 offset:5504
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v55, v113 offset:5760
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v56, v113 offset:6016
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v75, v113 offset:6272
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v76, v113 offset:6528
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v77, v113 offset:6784
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v78, v113 offset:7040
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v79, v113 offset:7296
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v80, v113 offset:7552
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v81, v113 offset:7808
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v82, v113 offset:8064
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v66, v65
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v62, v73, s83, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v64, v71, s83, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v59, v67, v74, v88
	v_perm_b32 v60, v67, v74, v112
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v61, v62, v73, v88
	v_perm_b32 v62, v62, v73, v112
	v_perm_b32 v63, v64, v71, v88
	v_perm_b32 v64, v64, v71, v112
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v65, v66
.Ltmp55:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[41:48], v[33:40]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v136, v72, v70
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[75:82], v[57:64], v[33:40]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v120, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v136, v40
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v92
	s_mov_b32 s1, 0x76543210
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp57:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s59, s59, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v1, 0xff800000, v120, vcc_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_dual_cndmask_b32 v3, 0, v136 :: v_dual_and_b32 v4, 12, v91
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v93
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s47, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp60:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s58, s59
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, v1, v1
.Ltmp62:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v7, 0, v33 :: v_dual_add_nc_u32 v4, 0, v4
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp64:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v9, 0, v35, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v2 :: v_dual_and_b32 v2, 12, v92
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v7 :: v_dual_cndmask_b32 v8, 0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp68:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v9
.Ltmp70:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v7, v5
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v10
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp78:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v14, 0, v39 :: v_dual_max_f32 v1, v1, v6
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v4
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v9, v12 :: v_dual_add_f32 v3, v8, v11
.Ltmp83:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v11, 0, v36, vcc_lo
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp85:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v8, v4
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v3 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, v12
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v3, v3, v7
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_mov_b32 v16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp93:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v40 :: v_dual_mov_b32 v10, v3
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v4, v4, v16 :: v_dual_mov_b32 v7, v2
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp102:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v10, v8
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v2, v7
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v9, v7
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v13, v13, v18
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v20 :: v_dual_mov_b32 v18, v13
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v12, v12, v17
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v12
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp129:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp131:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp133:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp134:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp135:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v91
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v89
.Ltmp137:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v89
	v_and_b32_e32 v2, 32, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp139:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s47, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[56:59], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp140:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 170
		.amdhsa_next_free_sgpr 84
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_vgpr, 170
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.numbered_sgpr, 84
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9828
; TotalNumSgprs: 86
; NumVgprs: 170
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 86
; NumVGPRsForWavesPerEU: 170
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
	.short	1031                            ; DW_AT_call_line
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
	.short	1032                            ; DW_AT_call_line
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     86
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     170
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
