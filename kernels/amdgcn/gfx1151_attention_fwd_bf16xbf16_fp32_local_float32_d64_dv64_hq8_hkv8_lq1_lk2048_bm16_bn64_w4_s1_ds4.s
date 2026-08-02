	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
	v_and_b32_e32 v33, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v89, 3, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b64 s[60:61], s[0:1], 0x0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v81, 3, v33
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x78
	s_load_b32 s15, s[0:1], 0x80
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v86, 1, v0
	v_lshlrev_b32_e32 v6, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v91, 0x78, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v90, 15, v0
	v_lshlrev_b32_e32 v87, 5, v0
	v_and_b32_e32 v7, 0x70, v86
	v_lshlrev_b32_e32 v88, 2, v0
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v6, v6, v7
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
	v_mad_u64_u32 v[82:83], null, s46, v89, v[81:82]
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v81
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v92, 0, v6
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
	s_lshl_b32 s14, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s58
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s14, v89
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s14, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s45, s2, s7
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s4, s4, s46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s44, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s4, v82, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s44
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s58, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s58
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
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s13, s15
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s14
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s15, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s8
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s14
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s6, s45, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s6, s6, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s4, s4, 0x7fffffc0
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s6, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s59, s6, s4
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s72, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s59, s72
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v92, v[2:5]
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
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_and_b32 v35, 24, v0
	v_lshlrev_b32_e32 v51, 3, v0
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshlrev_b32_e32 v34, 4, v33
	v_and_b32_e32 v36, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_lshlrev_b32 v37, 1, v35
	v_bfe_i32 v54, v0, 0, 1
	v_bfe_i32 v55, v0, 2, 1
	v_and_b32_e32 v51, 16, v51
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_and_b32_e32 v38, 3, v0
	s_lshr_b32 s0, s0, 29
	v_bfe_i32 v39, v0, 4, 1
	v_and_b32_e32 v40, 0x180, v87
	v_lshl_or_b32 v41, v35, 6, v34
	v_lshl_or_b32 v37, v36, 2, v37
	v_lshlrev_b32_e32 v35, 4, v35
	v_and_b32_e32 v55, 0x840, v55
	v_and_or_b32 v51, 0x420, v54, v51
	v_bfe_i32 v58, v0, 3, 1
	v_bfe_i32 v59, v0, 5, 1
	s_add_i32 s1, s3, s0
	v_lshlrev_b32_e32 v42, 4, v38
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s1, -8
	v_and_b32_e32 v39, 0x840, v39
	v_lshl_or_b32 v40, v38, 9, v40
	v_xor_b32_e32 v103, v41, v37
	v_and_b32_e32 v37, 16, v0
	v_and_b32_e32 v60, 4, v0
	v_or3_b32 v107, v51, v55, v35
	v_lshlrev_b32_e32 v35, 5, v38
	v_and_b32_e32 v38, 0x420, v58
	v_and_b32_e32 v51, 0x840, v59
	s_sub_i32 s2, s3, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 872 27                        ; attention.py:872:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s2, s10, s2
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s1, s9, s1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v1, s15, v1
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s78, s2, s1
	v_or3_b32 v104, v39, v42, v40
	v_mov_b32_e32 v40, 0x5410
	v_cmp_eq_u32_e64 s1, 0, v37
	v_mov_b32_e32 v55, 0x7632
	v_and_b32_e32 v61, 0x80, v86
	v_xor3_b32 v35, v38, v35, v51
	v_lshl_add_u32 v51, v60, 7, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v9, v90, 7, v34
	v_lshrrev_b32_e32 v42, 3, v36
	v_cndmask_b32_e64 v40, 0x1054, v40, s1
	v_cndmask_b32_e64 v38, 0x3276, v55, s1
	v_add3_u32 v35, v51, v61, v35
	v_xor_b32_e32 v51, v34, v91
	v_lshl_or_b32 v34, v36, 6, v34
	v_and_or_b32 v36, 0x410, v58, v36
	v_lshl_or_b32 v40, v40, 8, v40
	v_lshl_or_b32 v38, v38, 8, v38
	v_lshl_or_b32 v108, v33, 10, v51
	v_xor_b32_e32 v14, 0x50, v9
	v_xor_b32_e32 v34, v36, v34
	v_and_b32_e32 v40, 0x540054, v40
	v_and_b32_e32 v38, 0x760076, v38
	v_xor_b32_e32 v13, 64, v9
	v_xor_b32_e32 v12, 48, v9
	v_lshl_or_b32 v111, v33, 7, v34
	v_xor_b32_e32 v33, 0x240, v108
	v_lshl_or_b32 v40, v40, 4, v40
	v_lshl_or_b32 v38, v38, 4, v38
	v_xor_b32_e32 v11, 32, v9
	v_xor_b32_e32 v10, 16, v9
	v_add_nc_u32_e32 v135, 0, v33
	v_xor_b32_e32 v33, 0x60, v111
	v_xor_b32_e32 v2, 0x70, v9
	v_xor_b32_e32 v34, 0x2d0, v108
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v93, s12, v1
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v94, s13, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v1, 0x60, v9
	v_xor_b32_e32 v39, 0x840, v103
	v_and_b32_e32 v109, 0x5040504, v40
	v_and_b32_e32 v110, 0x7060706, v38
	v_xor_b32_e32 v36, 0x90, v108
	v_xor_b32_e32 v38, 0x120, v108
	v_xor_b32_e32 v40, 0x1b0, v108
	v_add_nc_u32_e32 v144, 0, v33
	v_mov_b32_e32 v33, 0
	v_add_nc_u32_e32 v97, 0, v14
	v_add_nc_u32_e32 v98, 0, v13
	v_add_nc_u32_e32 v99, 0, v12
	v_add_nc_u32_e32 v100, 0, v11
	v_add_nc_u32_e32 v95, 0, v2
	v_add_nc_u32_e32 v101, 0, v10
	v_add_nc_u32_e32 v112, v35, v37
	v_xor_b32_e32 v35, 0x50, v111
	v_add_nc_u32_e32 v136, 0, v34
	v_xor_b32_e32 v34, 0x70, v111
	v_add_nc_u32_e32 v96, 0, v1
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_add_nc_u32 v102, 0, v9
	v_add_nc_u32_e32 v113, 0, v39
	v_add_nc_u32_e32 v132, 0, v36
	v_add_nc_u32_e32 v133, 0, v38
	v_add_nc_u32_e32 v134, 0, v40
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	ds_load_b128 v[13:16], v97
	ds_load_b128 v[9:12], v98
	ds_load_b128 v[21:24], v99
	ds_load_b128 v[17:20], v100
	ds_load_b128 v[29:32], v101
	ds_load_b128 v[25:28], v102
	v_and_b32_e32 v43, 28, v0
	v_add_nc_u32_e32 v143, 0, v35
	v_add_nc_u32_e32 v145, 0, v34
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	ds_load_b128 v[5:8], v95
	ds_load_b128 v[1:4], v96
	v_xor_b32_e32 v41, 16, v104
	v_xor_b32_e32 v105, v88, v42
	v_and_or_b32 v106, 0x3e0, v87, v43
	v_xor_b32_e32 v44, 32, v104
	v_xor_b32_e32 v45, 48, v104
	v_add_nc_u32_e32 v114, 0, v41
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v41, 1, v91
	v_xor_b32_e32 v46, 64, v104
	v_xor_b32_e32 v42, 0x50, v104
	v_xor_b32_e32 v43, 0x60, v104
	v_xor_b32_e32 v47, 0x70, v104
	v_xor_b32_e32 v48, 0x210, v105
	v_xor_b32_e32 v49, 4, v106
	v_xor_b32_e32 v50, 8, v106
	v_xor_b32_e32 v52, 12, v106
	v_xor_b32_e32 v53, 16, v106
	v_xor_b32_e32 v56, 20, v106
	v_xor_b32_e32 v57, 24, v106
	v_xor_b32_e32 v54, 28, v106
	v_xor_b32_e32 v59, 32, v107
	v_xor_b32_e32 v55, 64, v107
	v_xor_b32_e32 v60, 0x60, v107
	v_xor_b32_e32 v51, 0x360, v108
	v_xor_b32_e32 v58, 0x3f0, v108
	v_xor_b32_e32 v61, 16, v111
	v_xor_b32_e32 v62, 32, v111
	v_xor_b32_e32 v63, 48, v111
	v_xor_b32_e32 v64, 64, v111
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[83:84], null, s11, v89, v[81:82]
	v_mad_u64_u32 v[84:85], null, s47, v41, v[81:82]
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s47, v81
	v_add_nc_u32_e32 v115, 0, v44
	v_add_nc_u32_e32 v116, 0, v45
	v_add_nc_u32_e32 v117, 0, v46
	v_add_nc_u32_e32 v118, 0, v42
	v_add_nc_u32_e32 v119, 0, v43
	v_add_nc_u32_e32 v120, 0, v47
	v_add_nc_u32_e32 v121, 0, v48
	v_add_nc_u32_e32 v122, 0, v49
	v_add_nc_u32_e32 v123, 0, v50
	v_add_nc_u32_e32 v124, 0, v52
	v_add_nc_u32_e32 v125, 0, v53
	v_add_nc_u32_e32 v126, 0, v56
	v_add_nc_u32_e32 v127, 0, v57
	v_add_nc_u32_e32 v128, 0, v54
	v_add_nc_u32_e32 v129, 0, v59
	v_add_nc_u32_e32 v130, 0, v55
	v_add_nc_u32_e32 v131, 0, v60
	v_add_nc_u32_e32 v137, 0, v51
	v_add_nc_u32_e32 v138, 0, v58
	v_add_nc_u32_e32 v139, 0, v61
	v_add_nc_u32_e32 v140, 0, v62
	v_add_nc_u32_e32 v141, 0, v63
	v_dual_mov_b32 v85, v33 :: v_dual_add_nc_u32 v142, 0, v64
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s74, s8, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s14, s14, s11
	s_and_b32 s5, s5, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s73, s3, 11
	s_lshl_b32 s75, s46, 4
	s_lshl_b32 s76, s46, 5
	s_mul_i32 s77, s46, 48
	s_add_i32 s78, s78, s14
	s_and_b32 s65, s65, 0xffff
	s_lshl_b32 s79, s47, 1
	s_mul_i32 s80, s47, 3
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s81, 0x76543210
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s68, s6
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s14, s59, s73
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v80, s55 :: v_dual_mov_b32 v79, s54
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[41:42], null, s14, s46, v[82:83]
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v78, s53 :: v_dual_mov_b32 v77, s52
	v_dual_mov_b32 v76, s51 :: v_dual_mov_b32 v75, s50
	v_dual_mov_b32 v74, s49 :: v_dual_mov_b32 v73, s48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v43, v41, s75, 1
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v44, v41, s76, 1
	v_add_lshl_u32 v41, v41, s77, 1
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v154, 2, v83
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v45, 0x80000000, v43, vcc_lo
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_add_nc_u32 v155, 1, v83
	v_cndmask_b32_e32 v49, 0x80000000, v44, vcc_lo
	v_cndmask_b32_e32 v53, 0x80000000, v41, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[60:63], 0 offen
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	buffer_load_b128 v[49:52], v49, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v149, 3, v81
	v_or_b32_e32 v150, 4, v81
	v_or_b32_e32 v151, 5, v81
	v_or_b32_e32 v156, 2, v81
	v_or_b32_e32 v166, 1, v81
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v165, s59, v81
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v152, 6, v81
	v_or_b32_e32 v153, 7, v81
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v156, s59, v156
	v_or_b32_e32 v166, s59, v166
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v165, v93
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v165, v94
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s15, s78, s59
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v156, v93
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v156, v94
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v166, v93
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v166, v94
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s4, s1, s4
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v147
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s44, s4
	s_and_b32 s4, s7, s8
	s_and_b32 s5, s5, s6
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v156.h, 0
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v92, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v92, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v92, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v92, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v101
	ds_load_b128 v[41:44], v102
	ds_load_b128 v[49:52], v102 offset:2048
	ds_load_b128 v[53:56], v101 offset:2048
	ds_load_b128 v[161:164], v101 offset:4096
	ds_load_b128 v[157:160], v102 offset:4096
	ds_load_b128 v[167:170], v102 offset:6144
	ds_load_b128 v[171:174], v101 offset:6144
	ds_load_b128 v[179:182], v99
	ds_load_b128 v[175:178], v100
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v148, v148, v148
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[41:48], v[25:32], v[73:80]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[49:56], v[25:32], v[73:80]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[157:164], v[25:32], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[161:164], v99 offset:4096
	ds_load_b128 v[157:160], v100 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[167:174], v[25:32], v[73:80]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[175:182], v[17:24], v[65:72]
	v_mov_b32_e32 v167, v146
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v146, s59, v149
	v_or_b32_e32 v149, s59, v150
	v_or_b32_e32 v150, s59, v151
	v_mad_u64_u32 v[176:177], null, s14, s47, v[84:85]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v151, s15, v154, 2
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v100 offset:2048
	ds_load_b128 v[77:80], v99 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v179.h, v156.h
	v_mov_b16_e64 v177.h, v156.h
	v_mov_b16_e64 v178.h, v156.h
	v_mov_b16_e64 v180.h, v156.h
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v149, v93
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v149, v94
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v150, v93
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v150, v94
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[157:164], v[17:24], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[161:164], v97
	ds_load_b128 v[157:160], v98
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v149, s59, v152
	v_or_b32_e32 v150, s59, v153
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v146, v93
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v146, v94
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v146, s15, v83, 2
	v_add_lshl_u32 v152, s15, v155, 2
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s59, s59, 64
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v149, v93
	v_cmp_ge_i32_e64 s16, v150, v93
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v150, v94
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s6, s2, s9
	s_and_b32 s7, s10, s11
	s_and_b32 s2, s44, s4
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v146, 0x80000000, v146, s17
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s12, s13
	s_and_b32 s10, s44, s5
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[73:80], v[17:24], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v100 offset:6144
	ds_load_b128 v[77:80], v99 offset:6144
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s44, s6
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[157:164], v[9:16], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[161:164], v97 offset:4096
	ds_load_b128 v[157:160], v98 offset:4096
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s44, s7
	s_and_b32 s4, s44, s8
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v150, 0x80000000, v152, s10
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s16, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s6, s44, s12
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[73:80], v[17:24], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v98 offset:2048
	ds_load_b128 v[77:80], v97 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[157:164], v[9:16], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[161:164], v95
	ds_load_b128 v[157:160], v96
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[73:80], v[9:16], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v98 offset:6144
	ds_load_b128 v[77:80], v97 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[157:164], v[1:8], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[161:164], v95 offset:4096
	ds_load_b128 v[157:160], v96 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[73:80], v[9:16], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v96 offset:2048
	ds_load_b128 v[77:80], v95 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[157:164], v[1:8], v[49:56]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v160, 6, v83
	v_add_nc_u32_e32 v157, 3, v83
	v_add_nc_u32_e32 v158, 4, v83
	v_add_nc_u32_e32 v159, 5, v83
	v_add_nc_u32_e32 v161, 7, v83
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v162, 0, v103
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v153, s15, v157, 2
	v_add_lshl_u32 v154, s15, v158, 2
	v_add_lshl_u32 v155, s15, v159, 2
	v_add_lshl_u32 v157, s15, v160, 2
	v_add_lshl_u32 v158, s15, v161, 2
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v149, v94
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v149, 0x80000000, v151, s2
	v_cndmask_b32_e64 v151, 0x80000000, v153, s9
	v_cndmask_b32_e64 v152, 0x80000000, v154, s5
	v_cndmask_b32_e64 v153, 0x80000000, v155, s4
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s14, s15
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v155, 0x80000000, v158, s6
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s44, s11
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[73:80], v[1:8], v[57:64]
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v154, 0x80000000, v157, s1
	s_clause 0x7
	buffer_load_b32 v146, v146, s[64:67], 0 offen
	buffer_load_b32 v149, v149, s[64:67], 0 offen
	buffer_load_b32 v151, v151, s[64:67], 0 offen
	buffer_load_b32 v152, v152, s[64:67], 0 offen
	buffer_load_b32 v153, v153, s[64:67], 0 offen
	buffer_load_b32 v154, v154, s[64:67], 0 offen
	buffer_load_b32 v155, v155, s[64:67], 0 offen
	buffer_load_b32 v150, v150, s[64:67], 0 offen
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v96 offset:6144
	ds_load_b128 v[77:80], v95 offset:6144
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v163, 0, v104
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[41:48], v[73:80], v[1:8], v[41:48]
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v73, 0xff800000, v146, s17
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v74, 0xff800000, v149, s2
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v78, 0xff800000, v151, s9
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v75, 0xff800000, v152, s5
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v79, 0xff800000, v153, s4
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v76, 0xff800000, v154, s1
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v80, 0xff800000, v155, s6
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v77, 0xff800000, v150, s10
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v162, v[73:76]
	ds_store_b128 v113, v[77:80]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[149:152], v163
	ds_load_b128 v[157:160], v114
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v164, 0, v105
	v_add_nc_u32_e32 v165, 0, v106
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v166, 0, v107
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v73
	v_cmp_neq_f32_e64 s12, 0xff800000, v76
	v_cmp_neq_f32_e64 s13, 0xff800000, v77
	v_cmp_neq_f32_e64 s14, 0xff800000, v78
	v_cmp_neq_f32_e64 s16, 0xff800000, v80
	v_cmp_neq_f32_e64 s7, 0xff800000, v74
	v_cmp_neq_f32_e64 s15, 0xff800000, v79
	v_cmp_neq_f32_e64 s11, 0xff800000, v75
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s1, s1, s12
	s_and_b32 s6, s6, s16
	s_and_b32 s7, s2, s7
	s_and_b32 s4, s4, s15
	s_and_b32 s5, s5, s11
	s_and_b32 s8, s17, s8
	s_and_b32 s9, s9, s14
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v146, 0x3fb8aa3b, v149 :: v_dual_mul_f32 v149, 0x3fb8aa3b, v150
	v_dual_mul_f32 v150, 0x3fb8aa3b, v151 :: v_dual_mul_f32 v151, 0x3fb8aa3b, v152
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v152, 0x3fb8aa3b, v157 :: v_dual_mul_f32 v153, 0x3fb8aa3b, v158
	v_dual_mul_f32 v154, 0x3fb8aa3b, v159 :: v_dual_mul_f32 v155, 0x3fb8aa3b, v160
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v146, s74, v65 :: v_dual_fmac_f32 v149, s74, v66
	v_dual_fmac_f32 v150, s74, v67 :: v_dual_fmac_f32 v151, s74, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v152, s74, v69 :: v_dual_fmac_f32 v153, s74, v70
	v_dual_fmac_f32 v154, s74, v71 :: v_dual_fmac_f32 v155, s74, v72
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b128 v[65:68], v115
	ds_load_b128 v[69:72], v116
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_and_b32 s10, s10, s13
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s59, s72
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v157, 0x3fb8aa3b, v65 :: v_dual_mul_f32 v160, 0x3fb8aa3b, v68
	v_dual_mul_f32 v158, 0x3fb8aa3b, v66 :: v_dual_mul_f32 v159, 0x3fb8aa3b, v67
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v162, 0x3fb8aa3b, v72 :: v_dual_mul_f32 v69, 0x3fb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v163, 0x3fb8aa3b, v70 :: v_dual_fmac_f32 v160, s74, v60
	v_dual_mul_f32 v161, 0x3fb8aa3b, v71 :: v_dual_fmac_f32 v162, s74, v64
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v157, s74, v57 :: v_dual_fmac_f32 v158, s74, v58
	v_fmac_f32_e32 v159, s74, v59
	v_fmac_f32_e32 v69, s74, v61
	v_fmac_f32_e32 v163, s74, v62
	v_fmac_f32_e32 v161, s74, v63
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b128 v[57:60], v117
	ds_load_b128 v[61:64], v118
	ds_load_b128 v[65:68], v119
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v76, 0x3fb8aa3b, v58
	v_dual_mul_f32 v78, 0x3fb8aa3b, v60 :: v_dual_mul_f32 v73, 0x3fb8aa3b, v57
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v80, 0x3fb8aa3b, v62 :: v_dual_mul_f32 v77, 0x3fb8aa3b, v59
	ds_load_b128 v[57:60], v120
	v_dual_mul_f32 v168, 0x3fb8aa3b, v64 :: v_dual_mul_f32 v79, 0x3fb8aa3b, v61
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v78, s74, v52 :: v_dual_fmac_f32 v73, s74, v49
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v170, 0x3fb8aa3b, v67
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v80, s74, v54 :: v_dual_fmac_f32 v77, s74, v51
	v_dual_fmac_f32 v168, s74, v56 :: v_dual_fmac_f32 v79, s74, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v170, s74, v43
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v49, 0, 1, s1
	v_cndmask_b32_e64 v51, 0, 1, s7
	v_cndmask_b32_e64 v53, 0, 1, s6
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v76, s74, v50
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v50, 0, 1, s5
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v63
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v52, 0, 1, s8
	v_cndmask_b32_e64 v54, 0, 1, s4
	v_lshlrev_b16 v49.l, 8, v49.l
	v_lshlrev_b16 v49.h, 8, v51.l
	v_lshlrev_b16 v50.h, 8, v53.l
	v_cndmask_b32_e64 v56, 0, 1, s10
	s_waitcnt lgkmcnt(0)
	v_or_b16 v52.h, v50.l, v49.l
	v_or_b16 v52.l, v52.l, v49.h
	v_or_b16 v49.h, v54.l, v50.h
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v58 :: v_dual_fmac_f32 v63, s74, v55
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v55, 0, 1, s9
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v57 :: v_dual_mul_f32 v54, 0x3fb8aa3b, v60
	v_mul_f32_e32 v65, 0x3fb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v51.l, 8, v55.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v50, s74, v46
	v_fmac_f32_e32 v54, s74, v48
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v49.l, v56.l, v51.l
	ds_store_b32 v164, v52
	ds_store_b32 v121, v49
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v49, v165
	ds_load_b32 v52, v122
	ds_load_b32 v55, v123
	ds_load_b32 v56, v124
	ds_load_b32 v57, v125
	ds_load_b32 v58, v126
	ds_load_b32 v164, v127
	ds_load_b32 v165, v128
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v59
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v65, s74, v41
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v169, 0x3fb8aa3b, v66
	v_mul_f32_e32 v171, 0x3fb8aa3b, v68
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v59, 1, v49
	v_and_b32_e32 v60, 0x1000000, v49
	v_and_b32_e32 v43, 0x10000, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s39, 1, v59
	v_and_b32_e32 v46, 0x10000, v58
	v_and_b32_e32 v48, 0x10000, v165
	v_cmp_ne_u32_e64 s20, 0, v60
	v_cmp_ne_u32_e64 s29, 0, v43
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v59, 0xff800000, v146, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v41, 0x10000, v49
	v_cmp_ne_u32_e64 s16, 0, v46
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v169, s74, v42 :: v_dual_and_b32 v46, 1, v56
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v42, 0x10000, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s2, 0, v41
	v_and_b32_e32 v41, 1, v52
	v_cmp_ne_u32_e64 s18, 0, v48
	v_and_b32_e32 v43, 1, v55
	v_cmp_ne_u32_e64 s42, 0, v42
	v_and_b32_e32 v42, 0x1000000, v52
	v_cmp_eq_u32_e64 s41, 1, v41
	v_and_b32_e32 v41, 0x1000000, v57
	v_cmp_eq_u32_e64 s34, 1, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v154, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s21, 0, v42
	v_and_b32_e32 v42, 1, v58
	v_cmp_ne_u32_e64 s24, 0, v41
	v_and_b32_e32 v41, 0x1000000, v164
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v171, s74, v44
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v44, 0x10000, v56
	v_cmp_eq_u32_e64 s26, 1, v42
	v_and_b32_e32 v42, 1, v165
	v_cmp_ne_u32_e64 s13, 0, v41
	v_lshrrev_b16 v41.l, 8, v49.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v51, s74, v47
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s30, 0, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v69, s34
	v_cndmask_b32_e64 v61, 0xff800000, v150, s2
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v174, 0xff800000, v51, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v47, 0x10000, v164
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, 0xff800000, v152, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s43, 1, v43
	v_cmp_eq_u16_e64 s38, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v52.l
	v_cmp_eq_u32_e64 s28, 1, v42
	v_lshrrev_b16 v42.l, 8, v57.l
	v_cmp_ne_u32_e64 s17, 0, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v60, 0xff800000, v149, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v44, 0x1000000, v55
	v_and_b16 v41.l, 1, v41.l
	v_and_b16 v42.l, 1, v42.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v151, s20
	v_cndmask_b32_e64 v70, 0xff800000, v159, s29
	v_cndmask_b32_e64 v74, 0xff800000, v161, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s31, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v55.l
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v59, v60
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s22, 0, v44
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v53, s74, v45 :: v_dual_and_b32 v44, 1, v164
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v45, 0x10000, v57
	v_and_b16 v41.l, 1, v41.l
	v_cmp_eq_u16_e64 s37, 1, v42.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s27, 1, v44
	v_lshrrev_b16 v44.l, 8, v164.l
	v_cmp_ne_u32_e64 s19, 0, v45
	v_and_b32_e32 v45, 0x1000000, v165
	v_cmp_eq_u16_e64 s33, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v56.l
	v_and_b16 v44.l, 1, v44.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v160, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s11, 0, v45
	v_and_b32_e32 v45, 1, v57
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v158, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v47, 0x1000000, v56
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v175, 0xff800000, v54, s11
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s25, 1, v45
	v_lshrrev_b16 v45.l, 8, v165.l
	v_cmp_eq_u16_e64 s36, 1, v41.l
	v_cmp_ne_u32_e64 s23, 0, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v171, 0xff800000, v171, s13
	v_cndmask_b32_e64 v152, 0xff800000, v73, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v43, 0x1000000, v58
	v_and_b16 v45.l, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v162, s23
	v_cndmask_b32_e64 v73, 0xff800000, v163, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s15, 1, v44.l
	v_cmp_ne_u32_e64 s14, 0, v43
	v_lshrrev_b16 v43.l, 8, v58.l
	v_cmp_eq_u16_e64 s12, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v155, s21
	v_cndmask_b32_e64 v68, 0xff800000, v157, s43
	v_cndmask_b32_e64 v162, 0xff800000, v168, s14
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v43.l, 1, v43.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v168, 0xff800000, v65, s27
	v_cndmask_b32_e64 v65, 0xff800000, v153, s31
	v_cndmask_b32_e64 v153, 0xff800000, v76, s37
	v_cndmask_b32_e64 v173, 0xff800000, v50, s12
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s35, 1, v43.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v174, v175
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v172, 0xff800000, v53, s28
	v_cndmask_b32_e64 v154, 0xff800000, v77, s19
	v_cndmask_b32_e64 v155, 0xff800000, v78, s24
	v_cndmask_b32_e64 v159, 0xff800000, v79, s26
	v_cndmask_b32_e64 v161, 0xff800000, v63, s16
	v_cndmask_b32_e64 v170, 0xff800000, v170, s17
	v_cndmask_b32_e64 v160, 0xff800000, v80, s35
	v_cndmask_b32_e64 v169, 0xff800000, v169, s15
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v171, v172
	v_max3_f32 v51, v69, v70, v71
	v_max3_f32 v52, v72, v73, v74
	v_max3_f32 v53, v75, v152, v153
	v_max3_f32 v56, v62, v64, v65
	v_max3_f32 v46, v154, v155, v159
	v_max3_f32 v48, v66, v67, v68
	v_max3_f32 v58, v160, v161, v162
	v_max3_f32 v57, v51, v52, v53
	v_max3_f32 v49, v49, v173, v50
	v_max3_f32 v50, v168, v169, v170
	v_max3_f32 v55, v55, v61, v56
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v166, v[59:62]
	ds_store_b128 v166, v[152:155] offset:512
	ds_store_b128 v129, v[64:67]
	ds_store_b128 v129, v[159:162] offset:512
	ds_store_b128 v130, v[68:71]
	ds_store_b128 v130, v[168:171] offset:512
	ds_store_b128 v131, v[72:75]
	ds_store_b128 v131, v[172:175] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v112
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v46, v46, v58, v50
	v_max3_f32 v48, v55, v48, v57
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[55:58], v112 offset:256
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v156.h
	v_mov_b16_e64 v165.h, v156.h
	v_mov_b16_e64 v43.h, v156.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v46, v48, v46, v49
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v45.h, v156.h
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v163, v176, s79, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v42.h, v156.h
	v_mov_b16_e64 v41.h, v156.h
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v48, v46, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v164, v176, s80, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v63, v147, v46, v48
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v47, 1, v176
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v49, v54, v54
.Ltmp14:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v166, v66, v63
	v_sub_f32_e32 v66, v169, v63
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v48, v58, v58
.Ltmp16:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v62, v63
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v62, v51, v55, v52
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v59, v63
	v_sub_f32_e32 v146, v69, v63
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v48, v49, v48
	v_max3_f32 v49, v56, v53, v57
.Ltmp20:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v60, v63
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v64, v63
	v_sub_f32_e32 v76, v61, v63
.Ltmp21:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v62, v49, v48
.Ltmp22:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v48, v147, v63
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v158, v152, v63
	v_sub_f32_e32 v152, v153, v63
	v_sub_f32_e32 v60, v72, v63
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v69, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s39
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v78, v65, v63
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v62, v176, s47, 1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v48.h, v156.h
	v_mov_b16_e64 v177.l, v50.h
	v_cmp_o_f32_e64 s39, v50, v50
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v150, v73, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v73.h, v156.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v69, 0, v69, s40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v67, v63
	v_sub_f32_e32 v181, v68, v63
	v_sub_f32_e32 v59, v70, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v149, v71, v63 :: v_dual_mul_f32 v40, v40, v69
	v_dual_sub_f32 v68, v162, v63 :: v_dual_mul_f32 v33, v33, v69
	v_dual_sub_f32 v162, v174, v63 :: v_dual_mul_f32 v35, v35, v69
	v_dual_sub_f32 v64, v175, v63 :: v_dual_mul_f32 v37, v37, v69
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v34, v34, v69
	v_mul_f32_e32 v36, v36, v69
	v_mul_f32_e32 v38, v38, v69
	v_mul_f32_e32 v39, v39, v69
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v69, v49
.Ltmp24:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v46, s38
	v_cndmask_b32_e64 v60, 0, v60, s34
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v150, v150
.Ltmp25:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v74, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v70.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v160, v63
	v_sub_f32_e32 v160, v170, v63
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v69, v69
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v69, 1, v177
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v151, v75, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s38, v70, v70
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v61, v61
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v49, v46
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v50, v50, v69, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v76
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v49, 1, v156
	v_mov_b16_e32 v44.l, v60.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v60, v60
	v_mov_b16_e64 v76.h, v156.h
	v_add3_u32 v49, v70, v49, 0x7fff
	v_and_b32_e32 v44, 1, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v61, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v43.l, v59.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v59, v59
	v_add3_u32 v44, v60, v44, 0x7fff
	v_mov_b16_e32 v45.l, v61.h
	v_cmp_o_f32_e64 s30, v61, v61
	v_mov_b16_e64 v178.l, v69.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v154, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s40, v69, v69
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v154, v155, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v155, v159, v63 :: v_dual_and_b32 v70, 1, v178
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v45, 1, v45
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v153
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v155, v155
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v69, v69, v70, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v45, v61, v45, 0x7fff
	v_mov_b16_e64 v80.h, v156.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.l, 0x7fff, v69.h, s40
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v152
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s19
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v147.h, v156.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v155, s26
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v154, v154
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v41.l, v153.h
	v_cmp_o_f32_e64 s36, v153, v153
	v_mov_b16_e64 v48.l, v155.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v159, v168, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v179.l, v70.h
	v_cmp_o_f32_e64 s41, v70, v70
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v168, 0x80000000, v47, s0
	v_cndmask_b32_e64 v47, 0x80000000, v163, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v48, 1, v48
	v_and_b32_e32 v72, 1, v179
	v_and_b32_e32 v41, 1, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s23
	v_cndmask_b32_e64 v152, 0, v152, s37
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v70, v70, v72, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v166
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v166, v167, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v41, v153, v41, 0x7fff
	v_cmp_o_f32_e64 s34, v150, v150
	v_mov_b16_e64 v71.h, v156.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v163, 0x80000000, v164, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v43, v59, v43, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v154, s24
	v_cndmask_b32_e64 v74, 0, v74, s35
	v_cndmask_b32_e64 v72, 0, v72, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v151, v151
	v_cmp_o_f32_e64 s24, v152, v152
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v66, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.l, v72.h
	v_cmp_o_f32_e64 s42, v72, v72
	v_cmp_o_f32_e64 s23, v74, v74
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v75, 1, v180
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v66, 0, v66, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v72, v72, v75, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v181
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.l, 0x7fff, v43.h, s2
	v_cmp_o_f32_e64 s14, v68, v68
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v50.l, 0x7fff, v72.h, s42
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v75, 0, v75, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v165.l, v75.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s43, v75, v75
	v_and_b32_e32 v165, 1, v165
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v75, v75, v165, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v165, 0x80000000, v62, s0
	buffer_load_b128 v[59:62], v47, s[68:71], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v77
	v_exp_f32_e32 v77, v78
	v_exp_f32_e32 v78, v79
	v_exp_f32_e32 v79, v146
	v_exp_f32_e32 v146, v149
	v_exp_f32_e32 v149, v158
	v_exp_f32_e32 v158, v159
	v_exp_f32_e32 v159, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v75.l, 0x7fff, v45.h, s30
	v_cndmask_b16 v70.l, 0x7fff, v75.h, s43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s20
	v_cndmask_b32_e64 v77, 0, v77, s31
	v_cndmask_b32_e64 v78, 0, v78, s21
	v_cndmask_b32_e64 v79, 0, v79, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v155, v155
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v149, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v47.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v159, s17
	v_cndmask_b32_e64 v158, 0, v158, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v155, v155, v48, 0x7fff
	v_mov_b16_e64 v42.l, v149.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v157, v161, v63
	v_sub_f32_e32 v161, v172, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v149, v149
	v_mov_b16_e64 v76.l, v159.h
	v_and_b32_e32 v42, 1, v42
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v160, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v153, 1, v156
	v_mov_b16_e64 v156.l, v77.h
	v_add3_u32 v42, v149, v42, 0x7fff
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v149, v46
.Ltmp32:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v67, v171, v63 :: v_dual_and_b32 v76, 1, v76
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v73.l, v158.h
	v_cndmask_b16 v48.h, 0x7fff, v49.h, s38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v149, v149 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v160, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.l, 0x7fff, v50.h, s39
	v_and_b32_e32 v49, 1, v156
	v_mov_b16_e64 v156.l, v78.h
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v149, v149
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v80.l, v160.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s22
	v_cndmask_b32_e64 v157, 0, v157, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v47, v47
	v_cmp_o_f32_e64 s16, v159, v159
	v_and_b32_e32 v73, 1, v73
	v_and_b32_e32 v80, 1, v80
	v_add3_u32 v159, v159, v76, 0x7fff
	v_add3_u32 v47, v47, v153, 0x7fff
	v_cndmask_b16 v76.l, 0x7fff, v42.h, s33
	v_permlanex16_b32 v42, v48, s81, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v43, v77, v49, 0x7fff
	v_and_b32_e32 v45, 1, v156
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v46, v69
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v79.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v161, v162
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v77, v77
	v_cmp_o_f32_e64 s27, v78, v78
	v_cmp_o_f32_e64 s19, v158, v158
	v_cmp_o_f32_e64 s17, v160, v160
	v_add3_u32 v158, v158, v73, 0x7fff
	v_add3_u32 v160, v160, v80, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v44.h, s29
	v_cndmask_b16 v80.l, 0x7fff, v41.h, s36
	v_cndmask_b16 v44.h, 0x7fff, v47.h, s25
	v_perm_b32 v41, v42, v48, v109
	v_perm_b32 v42, v42, v48, v110
	v_add3_u32 v45, v78, v45, 0x7fff
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v48, v49 :: v_dual_and_b32 v69, 1, v156
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v146.h
	v_cmp_o_f32_e64 s28, v79, v79
	v_cndmask_b16 v47.l, 0x7fff, v70.h, s41
	v_permlanex16_b32 v46, v44, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v47.h, 0x7fff, v43.h, s26
	v_cndmask_b16 v50.h, 0x7fff, v45.h, s27
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v69, v79, v69, 0x7fff
	v_and_b32_e32 v77, 1, v156
	v_mov_b16_e64 v156.l, v150.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v161, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v146, v146
	v_perm_b32 v43, v46, v44, v109
	v_perm_b32 v44, v46, v44, v110
	v_permlanex16_b32 v46, v47, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v78, v50, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v79, v48, v48
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.h, 0x7fff, v69.h, s28
	v_add3_u32 v69, v146, v77, 0x7fff
	v_and_b32_e32 v77, 1, v156
	v_mov_b16_e64 v156.l, v151.h
	v_mov_b16_e64 v147.l, v161.h
	v_perm_b32 v45, v46, v47, v109
	v_perm_b32 v46, v46, v47, v110
	v_perm_b32 v47, v78, v50, v109
	v_perm_b32 v48, v78, v50, v110
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v78, v49, v79
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v69.h, s31
	v_add3_u32 v69, v150, v77, 0x7fff
	v_and_b32_e32 v77, 1, v156
	v_mov_b16_e64 v156.l, v152.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v65, v173, v63 :: v_dual_max_f32 v148, v148, v78
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v71.l, v157.h
	v_cndmask_b16 v73.h, 0x7fff, v69.h, s34
	v_add3_u32 v69, v151, v77, 0x7fff
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v146, v166, v78 :: v_dual_and_b32 v77, 1, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v147, 1, v147
	v_cmp_o_f32_e64 s18, v161, v161
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v166, v56, v148 :: v_dual_and_b32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v56, v167, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v147, v161, v147, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v161, v53, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v53, v152, v77, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[150:153], v163, s[68:71], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v50, v70, s81, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v156.l, v154.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v162, v54, v148
	v_sub_f32_e32 v164, v55, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v75.h, 0x7fff, v69.h, s35
	v_perm_b32 v49, v50, v70, v109
	v_perm_b32 v50, v50, v70, v110
	v_permlanex16_b32 v70, v72, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v54, v73, s81, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v55, 1, v156
	v_mov_b16_e64 v156.l, v74.h
	v_cndmask_b16 v76.h, 0x7fff, v53.h, s24
	v_cmp_o_f32_e64 s22, v154, v154
	v_cmp_o_f32_e64 s21, v157, v157
	v_add3_u32 v71, v157, v71, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v149, v51, v148
	v_sub_f32_e32 v157, v52, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v51, v70, v72, v109
	v_perm_b32 v52, v70, v72, v110
	v_perm_b32 v53, v54, v73, v109
	v_permlanex16_b32 v69, v75, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v54, v54, v73, v110
	v_add3_u32 v70, v154, v55, 0x7fff
	v_and_b32_e32 v72, 1, v156
	v_permlanex16_b32 v73, v76, s81, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v156.l, v68.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v154, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v55, v69, v75, v109
	v_perm_b32 v56, v69, v75, v110
	v_cndmask_b16 v80.h, 0x7fff, v70.h, s22
	v_perm_b32 v69, v73, v76, v109
	v_perm_b32 v70, v73, v76, v110
	v_cndmask_b16 v76.l, 0x7fff, v71.h, s21
	v_and_b32_e32 v71, 1, v156
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v57, v148
	v_sub_f32_e32 v58, v58, v148
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v73, v164
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v72, v74, v72, 0x7fff
	v_add3_u32 v68, v68, v71, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v155.h, s20
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v157
	v_exp_f32_e32 v155, v161
	v_exp_f32_e32 v57, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v76.h, 0x7fff, v68.h, s14
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v149
	v_exp_f32_e32 v149, v166
	v_exp_f32_e32 v157, v162
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v67, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v66.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.h, 0x7fff, v72.h, s23
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s7
	v_cndmask_b32_e64 v155, 0, v155, s5
	v_cndmask_b32_e64 v68, 0, v68, s8
	v_cndmask_b32_e64 v149, 0, v149, s9
	v_cndmask_b32_e64 v57, 0, v57, s4
	v_cndmask_b32_e64 v157, 0, v157, s1
	v_cndmask_b32_e64 v58, 0, v58, s6
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v68, v68, v73 :: v_dual_and_b32 v73, 1, v156
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v72, v80, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v66, v66
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v75, v149
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v149, v74, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v57, v155, v57 :: v_dual_add_f32 v58, v157, v58
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v161, v66, v73, 0x7fff
	v_permlanex16_b32 v66, v76, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v72, v80, v109
	v_perm_b32 v72, v72, v80, v110
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[77:80], v168, s[68:71], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v73, v149, v74, v109
	v_perm_b32 v74, v149, v74, v110
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v149, v68, v75 :: v_dual_add_f32 v162, v57, v58
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v75, v66, v76, v109
	v_perm_b32 v76, v66, v76, v110
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v67.h
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v149, v149, v162
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v174.l, 0x7fff, v147.h, s18
	v_cmp_o_f32_e64 s14, v67, v67
	v_mov_b32_e32 v173, v85
	v_and_b32_e32 v155, 1, v156
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v175, 0, v154, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v85.l, 0x7fff, v159.h, s16
	v_cndmask_b16 v147.l, 0x7fff, v160.h, s17
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v67, v155, 0x7fff
	v_cmp_o_f32_e64 s4, v64, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v156.l, v65.h
	v_cmp_o_f32_e64 s1, v65, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v85.h, 0x7fff, v67.h, s14
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v66.l, v59.l
	v_mov_b16_e32 v68.l, v60.l
	v_mov_b16_e64 v157.l, v62.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v62.l, 0x7fff, v158.h, s19
	v_and_b32_e32 v158, 1, v156
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v155.l, v61.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v64.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v65, v158, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v158, 0, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v159, 1, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v147.h, 0x7fff, v65.h, s1
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v149
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v177, v149, v65
.Ltmp59:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v66.h, v150.l
	v_mov_b16_e64 v150.l, v59.h
	v_mov_b16_e64 v68.h, v151.l
	v_mov_b16_e64 v151.l, v60.h
	buffer_load_b128 v[57:60], v165, s[68:71], 0 offen
	v_mov_b16_e64 v155.h, v152.l
	v_mov_b16_e64 v152.l, v61.h
	v_add_nc_u32_e32 v61, 0, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b16_e64 v157.h, v153.l
	v_mov_b16_e64 v153.l, v62.h
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v62.h, 0x7fff, v161.h, s13
	s_delay_alu instid0(VALU_DEP_1)
	v_permlanex16_b32 v176, v62, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v65.l, v77.l
	v_mov_b16_e32 v67.l, v78.l
	v_mov_b16_e64 v154.l, v79.l
	v_mov_b16_e64 v156.l, v80.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v65.h, v57.l
	v_mov_b16_e32 v57.l, v77.h
	v_mov_b16_e32 v67.h, v58.l
	v_mov_b16_e32 v58.l, v78.h
	v_mov_b16_e64 v154.h, v59.l
	v_mov_b16_e32 v59.l, v79.h
	v_mov_b32_e32 v149, v57
	ds_store_b64 v61, v[65:66]
	v_mov_b16_e64 v156.h, v60.l
	v_mov_b16_e32 v60.l, v80.h
	v_mov_b32_e32 v61, v153
	ds_store_b64 v132, v[149:150]
	v_mov_b32_e32 v150, v58
	ds_store_b64 v133, v[67:68]
	ds_store_b64 v134, v[150:151]
	v_mov_b32_e32 v151, v59
	ds_store_b64 v135, v[154:155]
	ds_store_b64 v136, v[151:152]
	ds_store_b64 v137, v[156:157]
	ds_store_b64 v138, v[60:61]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[149:152], v158
	ds_load_b128 v[153:156], v139
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v57, v64, v159, 0x7fff
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v58, v177
.Ltmp61:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[157:160], v140
	ds_load_b128 v[161:164], v141
	ds_load_b128 v[165:168], v142
	ds_load_b128 v[169:172], v143
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v59, v85, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v174.h, 0x7fff, v57.h, s4
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v58, v58 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v58, v177, v58
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v57, v58
.Ltmp65:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[149:156], v[41:48], v[33:40]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[149:152], v144
	ds_load_b128 v[153:156], v145
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v46, v147, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v174, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[157:164], v[49:56], v[33:40]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v41, v176, v62, v109
	v_perm_b32 v42, v176, v62, v110
	v_perm_b32 v43, v59, v85, v109
	v_perm_b32 v44, v59, v85, v110
	v_perm_b32 v45, v46, v147, v109
	v_perm_b32 v46, v46, v147, v110
	v_perm_b32 v47, v48, v174, v109
	v_perm_b32 v48, v48, v174, v110
.Ltmp68:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v58, v57
.Ltmp69:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[165:172], v[69:76], v[33:40]
	v_mov_b32_e32 v147, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v85, v173, v175
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[149:156], v[41:48], v[33:40]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v85, v40
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v91
	s_mov_b32 s1, 0x76543210
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp71:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s58, s58, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v1, 0xff800000, v146, vcc_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_dual_cndmask_b32 v3, 0, v85 :: v_dual_and_b32 v4, 12, v88
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v90
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s47, 2
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp75:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s45, s58
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp77:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v7, 0, v33 :: v_dual_add_nc_u32 v4, 0, v4
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v2 :: v_dual_and_b32 v2, 12, v89
.Ltmp80:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v9, 0, v35, vcc_lo
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v7 :: v_dual_cndmask_b32 v8, 0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v1
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v10, v3
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp84:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v9
.Ltmp85:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v7, v5
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_cndmask_b32 v14, 0, v39
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v6
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v4
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v9, v12 :: v_dual_add_f32 v3, v8, v11
.Ltmp98:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v11, 0, v36, vcc_lo
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp100:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v8, v4
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v3 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, v12
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v3, v3, v7
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_mov_b32 v16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp108:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v40 :: v_dual_mov_b32 v10, v3
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v4, v4, v16 :: v_dual_mov_b32 v7, v2
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp117:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp118:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v10, v8
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v2, v7
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v9, v7
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v13, v13, v18
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v20 :: v_dual_mov_b32 v18, v13
.Ltmp129:
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
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v12, v12, v17
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
.Ltmp135:
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
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp141:
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
.Ltmp142:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp144:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp146:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp148:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp149:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp150:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v88
	v_and_b32_e32 v4, 0xe0, v86
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v2, 32, v87
.Ltmp152:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp154:
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
.Ltmp155:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 183
		.amdhsa_next_free_sgpr 82
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_vgpr, 183
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9792
; TotalNumSgprs: 84
; NumVgprs: 183
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 183
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
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
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     183
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
