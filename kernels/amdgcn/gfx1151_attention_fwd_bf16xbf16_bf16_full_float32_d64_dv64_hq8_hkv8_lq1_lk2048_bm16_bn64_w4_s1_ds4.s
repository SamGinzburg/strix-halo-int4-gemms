	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s58, s[0:1], 0x60
	s_load_b64 s[46:47], s[0:1], 0x58
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v34, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v71, 3, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b64 s[60:61], s[0:1], 0x0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v33, 3, v34
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v68, 1, v0
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v73, 0x78, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v72, 15, v0
	v_lshlrev_b32_e32 v70, 2, v0
	v_and_b32_e32 v5, 0x70, v68
	v_lshlrev_b32_e32 v69, 5, v0
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v5, v35, v5
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s58
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s58
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[65:66], null, s46, v71, v[33:34]
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v33
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v74, 0, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s4
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s4, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s5
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
	s_lshl_b32 s4, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s58
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v36, s4, v71
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s4, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s45, s2, s7
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s4, s4, s46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s44, 1, v36
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s4, v65, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s44
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s58, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s58
	s_abs_i32 s4, s4
	.loc	1 788 26                        ; attention.py:788:26
	buffer_load_b128 v[1:4], v1, s[60:63], 0 offen
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
	s_mul_i32 s4, s45, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s59, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s59, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s72, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s59, s72
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v74, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v128, 0xff800000 :: v_dual_and_b32 v39, 1, v0
	v_and_b32_e32 v40, 14, v0
	v_and_b32_e32 v41, 16, v0
	v_and_b32_e32 v42, 0x70, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v39, 6, v39
	v_lshlrev_b32_e32 v43, 3, v72
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[64:65], s[0:1], 0x30
	v_dual_mov_b32 v133, 0xff800000 :: v_dual_lshlrev_b32 v44, 2, v40
	v_lshlrev_b32_e32 v45, 3, v41
	v_lshl_or_b32 v39, v40, 7, v39
	v_lshrrev_b32_e32 v40, 1, v42
	v_lshl_or_b32 v42, v42, 4, v43
	v_lshlrev_b32_e32 v49, 3, v0
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshlrev_b32_e32 v37, 4, v34
	v_or3_b32 v86, v39, v45, v44
	v_bfe_i32 v51, v0, 2, 1
	v_xor_b32_e32 v39, v42, v40
	v_bfe_i32 v40, v0, 0, 1
	v_and_b32_e32 v49, 16, v49
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v9, v72, 7, v37
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s1, s0, 29
	v_and_b32_e32 v40, 0x420, v40
	v_and_b32_e32 v51, 0x840, v51
	v_and_or_b32 v35, 0x180, v35, v49
	s_add_i32 s1, s3, s1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v13, 64, v9
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s1, -8
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v2, 0x60, v9
	v_or3_b32 v89, v35, v40, v51
	v_bfe_i32 v40, v0, 3, 1
	v_bfe_i32 v51, v0, 5, 1
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s2, s3, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 872 27                        ; attention.py:872:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s2, s10, s2
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s1, s9, s1
	v_dual_mov_b32 v61, 0x5410 :: v_dual_add_nc_u32 v78, 0, v2
	v_dual_mov_b32 v63, 0x7632 :: v_dual_add_nc_u32 v80, 0, v13
	s_add_i32 s2, s2, s1
	v_and_b32_e32 v57, 4, v0
	v_and_b32_e32 v59, 0x60, v69
	v_and_b32_e32 v60, 0x420, v40
	v_and_b32_e32 v51, 0x840, v51
	v_cmp_eq_u32_e64 s1, 0, v41
	v_mul_lo_u32 v36, v36, s11
	v_and_b32_e32 v62, 0x80, v68
	v_lshl_add_u32 v57, v57, 7, 0
	v_xor3_b32 v51, v60, v59, v51
	v_cndmask_b32_e64 v59, 0x1054, v61, s1
	v_cndmask_b32_e64 v61, 0x3276, v63, s1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v38, 1, v73
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s47, v33
	v_add3_u32 v85, s2, v33, v36
	v_and_b32_e32 v36, 0x60, v0
	v_add3_u32 v51, v57, v62, v51
	v_lshl_or_b32 v57, v61, 8, v61
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v75, 0x800, v33
	v_sub_nc_u32_e32 v76, 0x800, v38
	v_lshrrev_b32_e32 v44, 3, v36
	v_mad_u64_u32 v[66:67], null, s47, v38, v[33:34]
	v_and_b32_e32 v33, 0x760076, v57
	v_xor_b32_e32 v38, v37, v73
	v_lshl_or_b32 v37, v36, 6, v37
	v_and_or_b32 v36, 0x410, v40, v36
	v_and_b32_e32 v47, 28, v0
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v67, v34, 10, v38
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v11, 32, v9
	v_xor_b32_e32 v36, v36, v37
	v_xor_b32_e32 v14, 0x50, v9
	v_and_b32_e32 v91, 0x7060706, v33
	v_xor_b32_e32 v33, 0x90, v67
	v_and_or_b32 v88, 0x3e0, v69, v47
	v_lshl_or_b32 v92, v34, 7, v36
	v_xor_b32_e32 v12, 48, v9
	v_xor_b32_e32 v10, 16, v9
	v_add_nc_u32_e32 v113, 0, v33
	v_xor_b32_e32 v1, 0x70, v9
	v_xor_b32_e32 v33, 0x60, v92
	v_add_nc_u32_e32 v82, 0, v11
	v_xor_b32_e32 v35, 28, v88
	v_xor_b32_e32 v38, 0x1b0, v67
	v_xor_b32_e32 v40, 0x360, v67
	v_add_nc_u32_e32 v125, 0, v33
	v_mov_b32_e32 v33, 0
	v_add_nc_u32_e32 v79, 0, v14
	v_add_nc_u32_e32 v81, 0, v12
	v_add_nc_u32_e32 v77, 0, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v130, v33 :: v_dual_add_nc_u32 v83, 0, v10
	v_lshl_or_b32 v59, v59, 8, v59
	v_xor_b32_e32 v36, 0x2d0, v67
	v_add_nc_u32_e32 v84, 0, v9
	v_add_nc_u32_e32 v109, 0, v35
	v_add_nc_u32_e32 v115, 0, v38
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v118, 0, v40
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v40, v33
	ds_load_b128 v[13:16], v79
	ds_load_b128 v[9:12], v80
	ds_load_b128 v[21:24], v81
	ds_load_b128 v[17:20], v82
	ds_load_b128 v[29:32], v83
	ds_load_b128 v[25:28], v84
	v_and_b32_e32 v59, 0x540054, v59
	v_add_nc_u32_e32 v117, 0, v36
	v_mov_b32_e32 v36, v33
	ds_load_b128 v[5:8], v77
	ds_load_b128 v[1:4], v78
	v_xor_b32_e32 v87, v70, v44
	v_lshl_or_b32 v57, v59, 4, v59
	v_xor_b32_e32 v34, 0x240, v67
	v_xor_b32_e32 v42, 8, v86
	v_xor_b32_e32 v43, 16, v86
	v_xor_b32_e32 v45, 24, v86
	v_xor_b32_e32 v46, 32, v86
	v_xor_b32_e32 v48, 40, v86
	v_xor_b32_e32 v44, 48, v86
	v_xor_b32_e32 v47, 56, v86
	v_xor_b32_e32 v50, 0x210, v87
	v_xor_b32_e32 v52, 4, v88
	v_xor_b32_e32 v53, 8, v88
	v_xor_b32_e32 v49, 12, v88
	v_xor_b32_e32 v54, 16, v88
	v_xor_b32_e32 v55, 20, v88
	v_xor_b32_e32 v56, 24, v88
	v_xor_b32_e32 v58, 32, v89
	v_xor_b32_e32 v60, 64, v89
	v_xor_b32_e32 v63, 0x60, v89
	v_and_b32_e32 v90, 0x5040504, v57
	v_xor_b32_e32 v37, 0x120, v67
	v_xor_b32_e32 v57, 0x3f0, v67
	v_xor_b32_e32 v59, 16, v92
	v_xor_b32_e32 v61, 32, v92
	v_xor_b32_e32 v62, 48, v92
	v_xor_b32_e32 v64, 64, v92
	v_add_nc_u32_e32 v93, v51, v41
	v_xor_b32_e32 v41, 0x50, v92
	v_add_nc_u32_e32 v116, 0, v34
	v_xor_b32_e32 v34, 0x70, v92
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_add_nc_u32 v94, 0, v39
	v_add_nc_u32_e32 v95, 0, v42
	v_add_nc_u32_e32 v96, 0, v43
	v_add_nc_u32_e32 v97, 0, v45
	v_add_nc_u32_e32 v98, 0, v46
	v_add_nc_u32_e32 v99, 0, v48
	v_add_nc_u32_e32 v100, 0, v44
	v_add_nc_u32_e32 v101, 0, v47
	v_add_nc_u32_e32 v102, 0, v50
	v_add_nc_u32_e32 v103, 0, v52
	v_add_nc_u32_e32 v104, 0, v53
	v_add_nc_u32_e32 v105, 0, v49
	v_add_nc_u32_e32 v106, 0, v54
	v_add_nc_u32_e32 v107, 0, v55
	v_add_nc_u32_e32 v108, 0, v56
	v_add_nc_u32_e32 v110, 0, v58
	v_add_nc_u32_e32 v111, 0, v60
	v_add_nc_u32_e32 v112, 0, v63
	v_add_nc_u32_e32 v114, 0, v37
	v_add_nc_u32_e32 v119, 0, v57
	v_add_nc_u32_e32 v120, 0, v59
	v_add_nc_u32_e32 v121, 0, v61
	v_add_nc_u32_e32 v122, 0, v62
	v_add_nc_u32_e32 v123, 0, v64
	v_add_nc_u32_e32 v124, 0, v41
	v_add_nc_u32_e32 v126, 0, v34
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v39, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v127, 0x800, v71
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s74, s8, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s73, s3, 11
	s_lshl_b32 s75, s46, 4
	s_lshl_b32 s76, s46, 5
	s_mul_i32 s77, s46, 48
	s_and_b32 s65, s65, 0xffff
	s_lshl_b32 s78, s47, 1
	s_mul_i32 s79, s47, 3
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s80, 0x76543210
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s68, s6
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s11, s59, s73
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s1, s59, v127
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[41:42], null, s11, s46, v[65:66]
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s1, vcc_lo, s1
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v149, s55 :: v_dual_lshlrev_b32 v42, 1, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v43, v41, s75, 1
	v_add_lshl_u32 v44, v41, s76, 1
	v_add_lshl_u32 v41, v41, s77, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v148, s54 :: v_dual_mov_b32 v147, s53
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v45, 0x80000000, v43, s1
	v_cndmask_b32_e64 v49, 0x80000000, v44, s1
	v_cndmask_b32_e64 v53, 0x80000000, v41, s1
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[60:63], 0 offen
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	buffer_load_b128 v[49:52], v49, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v146, s52 :: v_dual_mov_b32 v145, s51
	v_dual_mov_b32 v144, s50 :: v_dual_mov_b32 v143, s49
	v_mov_b32_e32 v142, s48
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s1, s59, v75
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v74, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v74, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v74, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v74, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v83
	ds_load_b128 v[41:44], v84
	ds_load_b128 v[49:52], v84 offset:2048
	ds_load_b128 v[53:56], v83 offset:2048
	ds_load_b128 v[61:64], v83 offset:4096
	ds_load_b128 v[57:60], v84 offset:4096
	ds_load_b128 v[134:137], v84 offset:6144
	ds_load_b128 v[138:141], v83 offset:6144
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s10, s44, s1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[153:160], v[41:48], v[25:32], v[142:149]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[161:168], v[49:56], v[25:32], v[142:149]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[53:56], v81
	ds_load_b128 v[49:52], v82
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[57:64], v[25:32], v[142:149]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[134:141], v[25:32], v[142:149]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[153:160], v[49:56], v[17:24], v[153:160]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[49:52], v82 offset:2048
	ds_load_b128 v[53:56], v81 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[161:168], v[49:56], v[17:24], v[161:168]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[53:56], v81 offset:4096
	ds_load_b128 v[49:52], v82 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[49:56], v[17:24], v[169:176]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[49:52], v82 offset:6144
	ds_load_b128 v[53:56], v81 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[17:24], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[53:56], v79
	ds_load_b128 v[49:52], v80
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[153:160], v[49:56], v[9:16], v[153:160]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[49:52], v80 offset:2048
	ds_load_b128 v[53:56], v79 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[161:168], v[49:56], v[9:16], v[161:168]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[53:56], v79 offset:4096
	ds_load_b128 v[49:52], v80 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[49:56], v[9:16], v[169:176]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[49:52], v80 offset:6144
	ds_load_b128 v[53:56], v79 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[9:16], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[53:56], v77
	ds_load_b128 v[49:52], v78
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[153:160], v[49:56], v[1:8], v[153:160]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[49:52], v78 offset:2048
	ds_load_b128 v[53:56], v77 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[161:168], v[49:56], v[1:8], v[161:168]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[53:56], v77 offset:4096
	ds_load_b128 v[49:52], v78 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[49:56], v[1:8], v[169:176]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[49:52], v78 offset:6144
	ds_load_b128 v[53:56], v77 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[1:8], v[41:48]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v49, v85, s59, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v49, 0x80000000, v49, s10
	buffer_load_b128 v[49:52], v49, s[64:67], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v150, 0xff80ff80, v50, s10
	v_cndmask_b32_e64 v152, 0xff80ff80, v51, s10
	v_cndmask_b32_e64 v149, 0xff80ff80, v52, s10
	v_cndmask_b32_e64 v151, 0xff80ff80, v49, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e64 v49.h, v150.l
	v_mov_b16_e64 v50.l, v152.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v50.h, v149.l
	v_mov_b16_e64 v49.l, v151.l
	v_mov_b16_e64 v52.l, v152.h
	v_mov_b16_e64 v52.h, v149.h
	v_mov_b16_e64 v51.l, v151.h
	v_mov_b16_e64 v51.h, v150.h
	ds_store_2addr_b64 v94, v[49:50], v[51:52] offset1:16
	v_add_nc_u32_e32 v49, 0, v86
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[49:50], v49
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v53, 16, v50
	v_and_b32_e32 v54, 0xffff0000, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v56, 0x3fb8aa3b, v53 :: v_dual_mul_f32 v53, 0x3fb8aa3b, v54
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v52, 0xffff0000, v49
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v56, s74, v155 :: v_dual_fmac_f32 v53, s74, v156
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v51, 16, v49
	ds_load_b64 v[49:50], v95
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v50
	v_and_b32_e32 v59, 0xffff0000, v50
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v52 :: v_dual_mul_f32 v55, 0x3fb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v52, 0x3fb8aa3b, v58 :: v_dual_lshlrev_b32 v57, 16, v49
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v50, s74, v154 :: v_dual_and_b32 v49, 0xffff0000, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v55, s74, v153 :: v_dual_fmac_f32 v52, s74, v159
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v54, 0x3fb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v51, 0x3fb8aa3b, v57
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	ds_load_b64 v[57:58], v96
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v49, 0x3fb8aa3b, v59 :: v_dual_fmac_f32 v54, s74, v158
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v51, s74, v157
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v61, 16, v58
	v_and_b32_e32 v62, 0xffff0000, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v64, 0x3fb8aa3b, v61 :: v_dual_mul_f32 v61, 0x3fb8aa3b, v62
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v60, 0xffff0000, v57
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v64, s74, v163 :: v_dual_fmac_f32 v61, s74, v164
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v59, 16, v57
	ds_load_b64 v[57:58], v97
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v49, s74, v160 :: v_dual_lshlrev_b32 v132, 16, v58
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v134, 0xffff0000, v58
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v58, 0x3fb8aa3b, v60 :: v_dual_lshlrev_b32 v131, 16, v57
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v57, 0xffff0000, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v60, 0x3fb8aa3b, v132
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v58, s74, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v62, 0x3fb8aa3b, v57 :: v_dual_mul_f32 v63, 0x3fb8aa3b, v59
	v_mul_f32_e32 v59, 0x3fb8aa3b, v131
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	ds_load_b64 v[131:132], v98
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v57, 0x3fb8aa3b, v134
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v62, s74, v166 :: v_dual_fmac_f32 v63, s74, v161
	v_dual_fmac_f32 v60, s74, v167 :: v_dual_fmac_f32 v57, s74, v168
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v134, 16, v131
	v_lshlrev_b32_e32 v136, 16, v132
	v_and_b32_e32 v135, 0xffff0000, v131
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v59, s74, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v141, 0x3fb8aa3b, v134 :: v_dual_mul_f32 v142, 0x3fb8aa3b, v136
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v137, 0xffff0000, v132
	ds_load_b64 v[131:132], v99
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v141, s74, v169 :: v_dual_lshlrev_b32 v138, 16, v131
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v138, 0x3fb8aa3b, v138 :: v_dual_lshlrev_b32 v139, 16, v132
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v143, 0xffff0000, v132
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v132, 0x3fb8aa3b, v135
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[135:136], v100
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v139, 0x3fb8aa3b, v139
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v142, s74, v171
	v_fmac_f32_e32 v138, s74, v173
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v140, 0x3fb8aa3b, v137 :: v_dual_mul_f32 v137, 0x3fb8aa3b, v143
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v132, s74, v170 :: v_dual_and_b32 v131, 0xffff0000, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v139, s74, v175 :: v_dual_fmac_f32 v140, s74, v172
	v_dual_fmac_f32 v137, s74, v176 :: v_dual_mul_f32 v134, 0x3fb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, s74, v174
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v144, 16, v136
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v148, 0x3fb8aa3b, v144 :: v_dual_lshlrev_b32 v131, 16, v135
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v145, 0xffff0000, v136
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v147, 0x3fb8aa3b, v131
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v131.l, 0
	v_mov_b16_e64 v131.h, v151.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v148, s74, v43
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v146, 0x3fb8aa3b, v145
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v143, 0xffff0000, v135
	ds_load_b64 v[135:136], v101
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v147, s74, v41
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v41.l, v131.l
	v_mov_b16_e64 v41.h, v152.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v146, s74, v44
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v41
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v41.h, v149.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s10, s2
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v41
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v41.h, v150.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v131
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.h, v131.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s1, s10, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v154, 0xffff0000, v135
	v_lshlrev_b32_e32 v153, 16, v135
	v_lshlrev_b32_e32 v155, 16, v136
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v135, 0x3fb8aa3b, v143
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v156, 0xffff0000, v136
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v136, 0x3fb8aa3b, v154
	v_mul_f32_e32 v144, 0x3fb8aa3b, v153
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v41
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v41, 0, 1, s1
	s_and_b32 s6, s10, s2
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v136, s74, v46
	v_dual_fmac_f32 v144, s74, v45 :: v_dual_fmac_f32 v135, s74, v42
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v42, 0, 1, s4
	v_lshlrev_b16 v41.l, 8, v41.l
	s_and_b32 s5, s10, s5
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v143, 0x3fb8aa3b, v156
	v_mad_u64_u32 v[44:45], null, s11, s47, v[66:67]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v43.h, v42.l, v41.l
	v_cndmask_b32_e64 v41, 0, 1, s5
	v_cndmask_b32_e64 v42, 0, 1, s6
	v_add_nc_u32_e32 v45, 0, v88
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v145, 0x3fb8aa3b, v155
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v41.l, 8, v41.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v43.l, v42.l, v41.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v41, 0xffff0000, v152
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v41
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v41, 0xffff0000, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v41
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v41, 0xffff0000, v151
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s10, s7
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v41
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v41, 0xffff0000, v149
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s10, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v41
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v41, 0, 1, s7
	v_cndmask_b32_e64 v42, 0, 1, s8
	s_and_b32 s9, s10, s9
	v_lshlrev_b16 v41.l, 8, v41.l
	s_and_b32 s10, s10, s2
	.loc	1 892 27 is_stmt 1              ; attention.py:892:27
	v_cmp_lt_i32_e64 s2, s59, v76
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s59, s59, 64
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v46.l, v42.l, v41.l
	v_cndmask_b32_e64 v41, 0, 1, s9
	v_cndmask_b32_e64 v42, 0, 1, s10
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s2, s0, s2
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s59, s72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v41.l, 8, v41.l
	v_or_b16 v46.h, v42.l, v41.l
	v_add_nc_u32_e32 v41, 0, v87
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v42, v44, s47, 1
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b32 v102, v46
	ds_store_b32 v41, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v45, v45
	ds_load_b32 v150, v106
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v145, s74, v47
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v154, v107
	ds_load_b32 v158, v108
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v41, 1, v44
	v_add_lshl_u32 v43, v44, s78, 1
	v_add_lshl_u32 v44, v44, s79, 1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v162, v109
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v46, 0x10000, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s35, 0, v46
	ds_load_b32 v46, v103
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v56, s35
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v47, 0x10000, v46
	v_cmp_ne_u32_e64 s33, 0, v47
	ds_load_b32 v47, v104
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v143, s74, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v155, 0xff800000, v52, s33
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v48, 0x10000, v47
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s28, 0, v48
	ds_load_b32 v48, v105
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v159, 0xff800000, v64, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v149, 0x10000, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s27, 0, v149
	v_and_b32_e32 v149, 0x10000, v150
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v60, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s20, 0, v149
	v_and_b32_e32 v149, 0x10000, v154
	v_cmp_ne_u32_e64 s17, 0, v149
	v_and_b32_e32 v149, 0x10000, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s12, 0, v149
	v_and_b32_e32 v149, 0x10000, v162
	v_cmp_ne_u32_e64 s11, 0, v149
	v_and_b32_e32 v149, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s40, 1, v149
	v_and_b32_e32 v149, 0x1000000, v45
	v_lshrrev_b16 v45.l, 8, v45.l
	v_cmp_ne_u32_e64 s38, 0, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b16 v45.l, 1, v45.l
	v_and_b32_e32 v149, 1, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, 0xff800000, v53, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s43, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v46.l
	v_cmp_eq_u32_e64 s37, 1, v149
	v_and_b32_e32 v149, 0x1000000, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b16 v45.l, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, 0xff800000, v51, s37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s36, 0, v149
	v_and_b32_e32 v149, 1, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, 0xff800000, v142, s20
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s42, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v47.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v49, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s34, 1, v149
	v_and_b32_e32 v149, 0x1000000, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b16 v45.l, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v63, s34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s31, 0, v149
	v_and_b32_e32 v149, 1, v48
	v_cmp_eq_u16_e64 s41, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v48.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v63, 0xff800000, v145, s11
	v_cndmask_b32_e64 v160, 0xff800000, v61, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s30, 1, v149
	v_and_b32_e32 v149, 0x1000000, v48
	v_and_b16 v45.l, 1, v45.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v59, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s29, 0, v149
	v_and_b32_e32 v149, 1, v150
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s39, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v150.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v59, 0xff800000, v148, s12
	v_cndmask_b32_e64 v164, 0xff800000, v57, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s24, 1, v149
	v_and_b32_e32 v149, 0x1000000, v150
	v_and_b16 v45.l, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v50, s43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v49, 0xff800000, v141, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s23, 0, v149
	v_and_b32_e32 v149, 1, v154
	v_cmp_eq_u16_e64 s26, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v154.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, 0xff800000, v140, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s21, 1, v149
	v_and_b32_e32 v149, 0x1000000, v154
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b16 v45.l, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v154, 0xff800000, v54, s42
	v_cndmask_b32_e64 v50, 0xff800000, v132, s26
	v_cndmask_b32_e64 v53, 0xff800000, v138, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s19, 0, v149
	v_and_b32_e32 v149, 1, v158
	v_cmp_eq_u16_e64 s25, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v158.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, 0xff800000, v137, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s18, 1, v149
	v_and_b32_e32 v149, 0x1000000, v158
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b16 v45.l, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v54, 0xff800000, v134, s25
	v_cndmask_b32_e64 v158, 0xff800000, v58, s41
	v_cndmask_b32_e64 v57, 0xff800000, v147, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s16, 0, v149
	v_and_b32_e32 v149, 1, v162
	v_cmp_eq_u16_e64 s22, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v162.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v60, 0xff800000, v146, s16
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s13, 1, v149
	v_and_b32_e32 v149, 0x1000000, v162
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b16 v45.l, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v58, 0xff800000, v135, s22
	v_cndmask_b32_e64 v162, 0xff800000, v62, s39
	v_cndmask_b32_e64 v61, 0xff800000, v144, s13
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s14, 0, v149
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, 0xff800000, v55, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s15, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v45, 0, v89
	v_cndmask_b32_e64 v55, 0xff800000, v139, s17
	v_cndmask_b32_e64 v64, 0xff800000, v143, s14
	ds_store_b128 v45, v[149:152]
	ds_store_b128 v45, v[49:52] offset:512
	v_cndmask_b32_e64 v62, 0xff800000, v136, s15
	ds_store_b128 v110, v[153:156]
	ds_store_b128 v110, v[53:56] offset:512
	ds_store_b128 v111, v[157:160]
	ds_store_b128 v111, v[57:60] offset:512
	ds_store_b128 v112, v[161:164]
	ds_store_b128 v112, v[61:64] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[143:146], v41, s[68:71], 0 offen
	buffer_load_b128 v[165:168], v43, s[68:71], 0 offen
	buffer_load_b128 v[135:138], v44, s[68:71], 0 offen
	buffer_load_b128 v[139:142], v42, s[68:71], 0 offen
	v_add_nc_u32_e32 v132, 0, v67
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[45:48], v93
	ds_load_b128 v[41:44], v93 offset:256
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v147.l, v143.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v148.l, v165.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v148.h, v135.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v147.h, v139.l
	v_mov_b16_e64 v139.l, v143.h
	v_mov_b16_e64 v135.l, v165.h
	v_mov_b16_e64 v143.l, v145.l
	v_mov_b16_e64 v143.h, v141.l
	ds_store_b64 v132, v[147:148]
	v_mov_b16_e64 v147.h, v140.l
	v_mov_b32_e32 v134, v139
	v_mov_b16_e64 v140.l, v144.h
	v_mov_b16_e64 v148.l, v166.l
	v_mov_b16_e64 v148.h, v136.l
	v_mov_b16_e64 v147.l, v144.l
	ds_store_b64 v113, v[134:135]
	ds_store_b64 v114, v[147:148]
	v_mov_b16_e64 v136.l, v166.h
	v_mov_b32_e32 v135, v140
	v_mov_b16_e64 v144.l, v167.l
	v_mov_b16_e64 v144.h, v137.l
	v_mov_b16_e64 v141.l, v145.h
	ds_store_b64 v115, v[135:136]
	ds_store_b64 v116, v[143:144]
	v_mov_b16_e64 v135.h, v138.l
	v_mov_b16_e64 v138.l, v168.h
	v_mov_b16_e64 v137.l, v167.h
	v_mov_b32_e32 v136, v141
	v_mov_b16_e64 v135.l, v168.l
	v_mov_b16_e64 v134.l, v146.l
	v_mov_b16_e64 v134.h, v142.l
	v_mov_b32_e32 v143, v138
	v_mov_b16_e64 v142.l, v146.h
	ds_store_b64 v117, v[136:137]
	ds_store_b64 v118, v[134:135]
	ds_store_b64 v119, v[142:143]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v158, v159, v160
	v_max3_f32 v134, v161, v162, v163
	v_max3_f32 v135, v164, v49, v50
	v_max3_f32 v136, v57, v58, v59
.Ltmp2:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.h, v131.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v132, v134, v135
	v_max3_f32 v134, v51, v52, v53
	v_max3_f32 v135, v54, v55, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v134, v134, v135, v136
	v_max_f32_e32 v135, v149, v150
	v_max3_f32 v136, v152, v153, v154
	v_max3_f32 v135, v135, v151, v136
	v_max3_f32 v136, v155, v156, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v132, v135, v136, v132
	v_dual_max_f32 v135, v60, v61 :: v_dual_max_f32 v136, v63, v64
	v_max3_f32 v135, v135, v62, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v132, v132, v134, v135
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v134, v132, s80, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v132, v133, v132, v134
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v150, v132
	v_sub_f32_e32 v134, v149, v132
	v_sub_f32_e32 v137, v152, v132
	v_sub_f32_e32 v136, v151, v132
	v_sub_f32_e32 v138, v153, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v138, v138
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v155, v132
	v_sub_f32_e32 v52, v52, v132
	v_sub_f32_e32 v50, v50, v132
	v_sub_f32_e32 v56, v56, v132
	v_sub_f32_e32 v54, v54, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v135, s43
	v_cndmask_b32_e64 v134, 0, v134, s40
	v_cndmask_b32_e64 v137, 0, v137, s38
	v_cndmask_b32_e64 v136, 0, v136, s35
	v_cndmask_b32_e64 v138, 0, v138, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v142.l, v135.h
	v_cmp_o_f32_e64 s2, v135, v135
	v_cmp_o_f32_e64 s40, v134, v134
	v_cmp_o_f32_e64 s35, v136, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v142, 1, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v56, v56
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v60, v60, v132
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v135, v135, v142, 0x7fff
	v_mov_b16_e64 v142.h, v131.l
	v_mov_b16_e64 v142.l, v134.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v135.h, 0x7fff, v135.h, s2
	v_cmp_o_f32_e64 s2, v137, v137
	v_and_b32_e32 v142, 1, v142
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v140, v140
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s26
	v_cndmask_b32_e64 v56, 0, v56, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v134, v134, v142, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v53, v53, v132
	v_sub_f32_e32 v58, v58, v132
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v52, v52
	v_cndmask_b16 v135.l, 0x7fff, v134.h, s40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v54, s25
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v58, v58
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v57, v132
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_permlanex16_b32 v142, v135, s80, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v60, 0, v60, s16
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v132
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v50, v50
	v_cmp_o_f32_e64 s19, v56, v56
	v_perm_b32 v134, v142, v135, v90
	v_perm_b32 v135, v142, v135, v91
	v_mov_b16_e64 v142.h, v131.l
	v_mov_b16_e64 v142.l, v137.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v51, v132
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s21
	v_cndmask_b32_e64 v58, 0, v58, s22
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v142, 1, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v61, v61, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v54, v54
	v_add3_u32 v137, v137, v142, 0x7fff
	v_mov_b16_e64 v142.h, v131.l
	v_mov_b16_e64 v142.l, v136.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v63, v132
	v_sub_f32_e32 v64, v64, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v137.h, 0x7fff, v137.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v142, 1, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v62, s15
	v_cndmask_b32_e64 v51, 0, v51, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v53, v53
	v_add3_u32 v136, v136, v142, 0x7fff
	v_cmp_o_f32_e64 s22, v58, v58
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v63, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v57, v57
	v_cndmask_b16 v137.l, 0x7fff, v136.h, s35
	v_cmp_o_f32_e64 s35, v138, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v61, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v51, v51
	v_cmp_o_f32_e64 s16, v60, v60
	v_permlanex16_b32 v142, v137, s80, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v55, v132
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s14
	v_cndmask_b32_e64 v63, 0, v63, s11
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v62, v62
	v_perm_b32 v136, v142, v137, v90
	v_perm_b32 v137, v142, v137, v91
	v_mov_b16_e64 v142.h, v131.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v139, v154, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v61, v61
	v_cmp_o_f32_e64 s14, v64, v64
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v59, v59, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v63, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v59, v59
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v139, 0, v139, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v55, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.l, v139.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v139, v139
	v_and_b32_e32 v142, 1, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v139, v139, v142, 0x7fff
	v_mov_b16_e64 v142.h, v131.l
	v_mov_b16_e64 v142.l, v138.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v156, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v139.h, 0x7fff, v139.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v142, 1, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v138, v138, v142, 0x7fff
	v_cndmask_b16 v139.l, 0x7fff, v138.h, s35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v141, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v142, v139, s80, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v141, v141
	v_perm_b32 v138, v142, v139, v90
	v_perm_b32 v139, v142, v139, v91
	v_mov_b16_e64 v142.h, v131.l
	v_mov_b16_e64 v142.l, v141.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v142, 1, v142
	v_add3_u32 v141, v141, v142, 0x7fff
	v_mov_b16_e64 v142.h, v131.l
	v_mov_b16_e64 v142.l, v140.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v141.h, 0x7fff, v141.h, s2
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v133
	.loc	1 885 74 is_stmt 0              ; attention.py:885:74
	v_sub_f32_e32 v133, v133, v132
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v133, v133
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v133, 0, v133, s2
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v33, v33, v133 :: v_dual_and_b32 v142, 1, v142
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v140, v140, v142, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v34, v34, v133
	v_mul_f32_e32 v35, v35, v133
	v_mul_f32_e32 v36, v36, v133
	v_mul_f32_e32 v37, v37, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v141.l, 0x7fff, v140.h, s33
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v38, v38, v133
	v_mul_f32_e32 v39, v39, v133
	v_dual_mul_f32 v40, v40, v133 :: v_dual_add_nc_u32 v133, 0, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v142, v141, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v140, v142, v141, v90
	v_perm_b32 v141, v142, v141, v91
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[142:145], v133
	ds_load_b128 v[146:149], v120
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v157, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v133, s34
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[142:149], v[134:141], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v158, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.h, v131.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v136, v160, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v133, v133
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v159, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v162, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v137, v161, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v164, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v138
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v139, v163, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v134, s41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v136, s31
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v135, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v141.l, v134.h
	v_cmp_o_f32_e64 s2, v134, v134
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v138, s39
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v137, 0, v137, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v135, v135
	v_and_b32_e32 v141, 1, v141
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s29
	v_cndmask_b32_e64 v139, 0, v139, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v134, v134, v141, 0x7fff
	v_mov_b16_e64 v141.h, v131.l
	v_mov_b16_e64 v141.l, v133.h
	v_cmp_o_f32_e64 s27, v139, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v134.h, 0x7fff, v134.h, s2
	v_cmp_o_f32_e64 s2, v136, v136
	v_and_b32_e32 v141, 1, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v133, v133, v141, 0x7fff
	v_cndmask_b16 v134.l, 0x7fff, v133.h, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v141, v134, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v133, v141, v134, v90
	v_perm_b32 v134, v141, v134, v91
	v_mov_b16_e64 v141.h, v131.l
	v_mov_b16_e64 v141.l, v136.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v141, 1, v141
	v_add3_u32 v136, v136, v141, 0x7fff
	v_mov_b16_e64 v141.h, v131.l
	v_mov_b16_e64 v141.l, v135.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v136.h, 0x7fff, v136.h, s2
	v_cmp_o_f32_e64 s2, v138, v138
	v_and_b32_e32 v141, 1, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v135, v135, v141, 0x7fff
	v_cndmask_b16 v136.l, 0x7fff, v135.h, s28
	v_cmp_o_f32_e64 s28, v137, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v141, v136, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v135, v141, v136, v90
	v_perm_b32 v136, v141, v136, v91
	v_mov_b16_e64 v141.h, v131.l
	v_mov_b16_e64 v141.l, v138.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v141, 1, v141
	v_add3_u32 v138, v138, v141, 0x7fff
	v_mov_b16_e64 v141.h, v131.l
	v_mov_b16_e64 v141.l, v137.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v138.h, 0x7fff, v138.h, s2
	v_cmp_o_f32_e64 s2, v140, v140
	v_and_b32_e32 v141, 1, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v137, v137, v141, 0x7fff
	v_cndmask_b16 v138.l, 0x7fff, v137.h, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v141, v138, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v137, v141, v138, v90
	v_perm_b32 v138, v141, v138, v91
	v_mov_b16_e64 v141.h, v131.l
	v_mov_b16_e64 v141.l, v140.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v141, 1, v141
	v_add3_u32 v140, v140, v141, 0x7fff
	v_mov_b16_e64 v141.h, v131.l
	v_mov_b16_e64 v141.l, v139.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v140.h, 0x7fff, v140.h, s2
	v_cmp_o_f32_e64 s2, v59, v59
	v_and_b32_e32 v141, 1, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v139, v139, v141, 0x7fff
	v_cndmask_b16 v140.l, 0x7fff, v139.h, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v141, v140, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v139, v141, v140, v90
	v_perm_b32 v140, v141, v140, v91
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[141:144], v121
	ds_load_b128 v[145:148], v122
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[141:148], v[133:140], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v49, v132
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v44, v44
	v_max_f32_e32 v136, v48, v48
	v_max3_f32 v137, v45, v41, v46
	v_mov_b32_e32 v134, v130
.Ltmp7:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.h, v131.l
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v136, v49
	v_max3_f32 v136, v42, v47, v43
.Ltmp9:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.l, v50.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v137, v136, v49
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v136.h, v131.l
	v_mov_b16_e64 v136.l, v52.h
	v_and_b32_e32 v130, 1, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v135, s24
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v137, v49 :: v_dual_and_b32 v136, 1, v136
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v50, v50, v130, 0x7fff
	v_mov_b16_e64 v130.h, v131.l
	v_mov_b16_e64 v130.l, v54.h
	v_cmp_o_f32_e64 s24, v135, v135
	v_add3_u32 v52, v52, v136, 0x7fff
	v_mov_b16_e64 v136.h, v131.l
	v_mov_b16_e64 v136.l, v56.h
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v129, v129, v129 :: v_dual_and_b32 v130, 1, v130
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v137, v137 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v136, 1, v136
	v_add3_u32 v54, v54, v130, 0x7fff
	v_mov_b16_e64 v130.h, v131.l
	v_mov_b16_e64 v130.l, v58.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v56, v56, v136, 0x7fff
	v_mov_b16_e64 v136.h, v131.l
	v_mov_b16_e64 v136.l, v60.h
	v_mov_b32_e32 v133, v128
	v_mov_b16_e64 v128.h, v131.l
	v_mov_b16_e64 v128.l, v135.h
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v137, v137, v137 :: v_dual_and_b32 v130, 1, v130
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v136, 1, v136
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s12, 0xff800000, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v128, 1, v128
	v_add3_u32 v58, v58, v130, 0x7fff
	v_mov_b16_e64 v130.h, v131.l
	v_mov_b16_e64 v130.l, v62.h
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v49, v137
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v128, v135, v128, 0x7fff
	v_mov_b16_e64 v135.h, v131.l
	v_mov_b16_e64 v135.l, v53.h
	v_mov_b16_e64 v137.h, v131.l
	v_mov_b16_e64 v137.l, v51.h
	v_and_b32_e32 v130, 1, v130
	v_add3_u32 v60, v60, v136, 0x7fff
	v_and_b32_e32 v135, 1, v135
	v_mov_b16_e64 v136.h, v131.l
	v_and_b32_e32 v137, 1, v137
	v_add3_u32 v62, v62, v130, 0x7fff
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v130, v49
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v53, v53, v135, 0x7fff
	v_mov_b16_e64 v135.h, v131.l
	v_mov_b16_e64 v135.l, v57.h
	v_add3_u32 v51, v51, v137, 0x7fff
	v_mov_b16_e64 v136.l, v64.h
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v130, v130 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.h, v131.l
	v_and_b32_e32 v135, 1, v135
	v_cndmask_b16 v128.l, 0x7fff, v51.h, s20
	v_and_b32_e32 v136, 1, v136
	v_mov_b16_e64 v137.l, v55.h
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s22
	v_add3_u32 v57, v57, v135, 0x7fff
	v_mov_b16_e64 v135.h, v131.l
	v_mov_b16_e64 v135.l, v61.h
	v_add3_u32 v64, v64, v136, 0x7fff
	v_cndmask_b16 v136.l, 0x7fff, v53.h, s21
	v_and_b32_e32 v137, 1, v137
	v_cndmask_b16 v136.h, 0x7fff, v54.h, s25
	v_and_b32_e32 v135, 1, v135
	v_cndmask_b16 v58.l, 0x7fff, v57.h, s18
	v_cndmask_b16 v60.h, 0x7fff, v60.h, s16
	v_add3_u32 v55, v55, v137, 0x7fff
	v_mov_b16_e64 v137.h, v131.l
	v_add3_u32 v61, v61, v135, 0x7fff
	v_cndmask_b16 v135.l, 0x7fff, v128.h, s24
	v_cndmask_b16 v128.h, 0x7fff, v52.h, s23
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v130, v130
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.l, v59.h
	v_mov_b16_e64 v137.l, v63.h
	v_cndmask_b16 v135.h, 0x7fff, v50.h, s26
	v_permlanex16_b32 v53, v128, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v49, v52
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v131, 1, v131
	v_and_b32_e32 v137, 1, v137
	v_permlanex16_b32 v51, v135, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v52, v53, v128, v90
	v_perm_b32 v53, v53, v128, v91
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v128, v49
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v59, v59, v131, 0x7fff
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v131, v133, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v63, v63, v137, 0x7fff
	v_cndmask_b16 v137.h, 0x7fff, v56.h, s19
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v128, v128 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v137.l, 0x7fff, v55.h, s17
	v_permlanex16_b32 v55, v136, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v50, v51, v135, v90
	v_perm_b32 v51, v51, v135, v91
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v128, v128, v128
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v57, v137, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v54, v55, v136, v90
	v_perm_b32 v55, v55, v136, v91
	v_cndmask_b16 v60.l, 0x7fff, v59.h, s2
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v49, v128
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v56, v57, v137, v90
	v_perm_b32 v57, v57, v137, v91
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s11
	v_permlanex16_b32 v62, v58, s80, 0xfedcba98 op_sel:[1,0]
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v129, v129, v49
	v_max_f32_e32 v128, v131, v49
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v59.l, 0x7fff, v61.h, s13
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s14
	v_cndmask_b16 v61.l, 0x7fff, v63.h, s15
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v45, v129
	v_sub_f32_e32 v41, v41, v129
	v_sub_f32_e32 v46, v46, v129
	v_sub_f32_e32 v47, v47, v129
	v_sub_f32_e32 v48, v48, v129
	v_sub_f32_e32 v42, v42, v129
	v_sub_f32_e32 v43, v43, v129
	v_sub_f32_e32 v44, v44, v129
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v44, v44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_permlanex16_b32 v63, v60, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v64, v59, s80, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s6
	v_cndmask_b32_e64 v41, 0, v41, s8
	v_cndmask_b32_e64 v46, 0, v46, s5
	v_cndmask_b32_e64 v42, 0, v42, s7
	v_cndmask_b32_e64 v47, 0, v47, s4
	v_cndmask_b32_e64 v43, 0, v43, s10
	v_cndmask_b32_e64 v48, 0, v48, s1
	v_cndmask_b32_e64 v44, 0, v44, s9
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v41, v45, v41 :: v_dual_add_f32 v42, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v43, v47, v43
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v130, v61, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v44, v48, v44 :: v_dual_add_f32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v42, v43, v44
	v_add_f32_e32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v42, v41
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v41, v42
.Ltmp41:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v123
	ds_load_b128 v[45:48], v124
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v131, v49
	v_mov_b32_dpp v131, v131 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[41:48], v[50:57], v[33:40]
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v44, v133, v128
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v57, v49, v131
.Ltmp45:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[49:52], v125
	ds_load_b128 v[53:56], v126
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v41, v62, v58, v90
	v_perm_b32 v42, v62, v58, v91
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v58, v44
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v62, v57
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v43, v63, v60, v90
	v_perm_b32 v44, v63, v60, v91
	v_perm_b32 v45, v64, v59, v90
	v_perm_b32 v46, v64, v59, v91
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v47, v130, v61, v90
	v_perm_b32 v48, v130, v61, v91
	v_mov_b32_e32 v133, v132
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v58, 0, v58, s12
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v57, v62
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp51:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v130, v134, v58
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[41:48], v[33:40]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v128, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v130, v40
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v73
	s_mov_b32 s1, 0x76543210
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v4, 12, v70
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp53:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v1, 0xff800000, v128, vcc_lo
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s58, s58, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s47, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v4, 0, v4
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, v1, v1
	v_max_f32_e32 v1, v1, v2
.Ltmp56:
	.loc	1 1031 36                       ; attention.py:1031:36
	v_dual_cndmask_b32 v3, 0, v130 :: v_dual_and_b32 v2, 12, v71
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v1
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v7, 0, v33 :: v_dual_add_nc_u32 v2, 0, v2
	v_cndmask_b32_e32 v8, 0, v34, vcc_lo
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp62:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v9, 0, v35, vcc_lo
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v7
	v_dual_mov_b32 v11, v8 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp65:
	.loc	1 1025 31 is_stmt 1             ; attention.py:1025:31
	s_add_i32 s1, s45, s58
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v9
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v6
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v7, v5
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v2, v1
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v10
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v4
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v9, v12 :: v_dual_add_f32 v3, v8, v11
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v6, v5 :: v_dual_cndmask_b32 v11, 0, v36
.Ltmp78:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v14, 0, v39, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v8, v4 :: v_dual_mov_b32 v7, v3
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v1
.Ltmp84:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v3, v3, v7
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_mov_b32 v16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp89:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v40 :: v_dual_mov_b32 v10, v3
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v4, v4, v16 :: v_dual_mov_b32 v7, v2
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp98:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp99:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v10, v8
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v2, v7
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v9, v7
	v_dual_mov_b32 v5, v3 :: v_dual_add_f32 v12, v12, v17
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v13, v13, v18
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v20 :: v_dual_mov_b32 v18, v13
.Ltmp108:
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
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v12, v12, v17
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
.Ltmp114:
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
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp120:
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
.Ltmp121:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp123:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp125:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp127:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp128:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp129:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v70
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v68
.Ltmp131:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v68
	v_and_b32_e32 v2, 32, v69
	v_add_nc_u32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp133:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
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
.Ltmp134:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_vgpr, 177
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9972
; TotalNumSgprs: 83
; NumVgprs: 177
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 83
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.kd
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
