	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
	v_lshrrev_b32_e32 v90, 3, v0
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
	v_lshlrev_b32_e32 v87, 1, v0
	v_lshlrev_b32_e32 v34, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v92, 0x78, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v91, 15, v0
	v_lshlrev_b32_e32 v88, 2, v0
	v_and_b32_e32 v6, 0x70, v87
	v_lshlrev_b32_e32 v89, 5, v0
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v6, v34, v6
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
	v_mad_u64_u32 v[82:83], null, s46, v90, v[81:82]
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v81
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v93, 0, v6
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
	v_or_b32_e32 v1, s14, v90
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
	ds_store_b128 v93, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_and_b32_e32 v36, 1, v0
	v_and_b32_e32 v37, 14, v0
	v_and_b32_e32 v39, 0x70, v0
	v_lshlrev_b32_e32 v40, 3, v91
	v_lshlrev_b32_e32 v49, 3, v0
	v_lshlrev_b32_e32 v36, 6, v36
	v_lshlrev_b32_e32 v41, 2, v37
	v_bfe_i32 v53, v0, 2, 1
	v_and_b32_e32 v38, 16, v0
	v_and_b32_e32 v49, 16, v49
	v_lshl_or_b32 v36, v37, 7, v36
	v_lshrrev_b32_e32 v37, 1, v39
	v_lshl_or_b32 v39, v39, 4, v40
	v_and_b32_e32 v53, 0x840, v53
	v_and_or_b32 v34, 0x180, v34, v49
	v_bfe_i32 v56, v0, 3, 1
	v_bfe_i32 v58, v0, 5, 1
	v_xor_b32_e32 v37, v39, v37
	v_bfe_i32 v39, v0, 0, 1
	v_lshlrev_b32_e32 v42, 3, v38
	v_and_b32_e32 v57, 4, v0
	v_and_b32_e32 v58, 0x840, v58
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[64:65], s[0:1], 0x30
	v_and_b32_e32 v39, 0x420, v39
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshlrev_b32_e32 v35, 4, v33
	v_or3_b32 v104, v36, v42, v41
	v_and_b32_e32 v36, 0x60, v0
	v_and_b32_e32 v61, 0x80, v87
	v_or3_b32 v107, v34, v39, v53
	v_and_b32_e32 v34, 0x60, v89
	v_and_b32_e32 v39, 0x420, v56
	v_lshl_add_u32 v57, v57, 7, 0
	v_lshl_or_b32 v9, v91, 7, v35
	v_lshrrev_b32_e32 v41, 3, v36
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_xor3_b32 v34, v39, v34, v58
	s_lshr_b32 s0, s0, 29
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v14, 0x50, v9
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v2, 0x70, v9
	v_add3_u32 v34, v57, v61, v34
	v_xor_b32_e32 v57, v35, v92
	v_lshl_or_b32 v35, v36, 6, v35
	v_and_or_b32 v36, 0x410, v56, v36
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	v_lshl_or_b32 v108, v33, 10, v57
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s2, s3, s2
	v_xor_b32_e32 v35, v36, v35
	.loc	1 872 27                        ; attention.py:872:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s2, s10, s2
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s1, s9, s1
	v_dual_mov_b32 v59, 0x7632 :: v_dual_add_nc_u32 v98, 0, v14
	v_lshl_or_b32 v111, v33, 7, v35
	v_xor_b32_e32 v33, 0x240, v108
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s78, s2, s1
	v_cmp_eq_u32_e64 s1, 0, v38
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v12, 48, v9
	v_dual_mov_b32 v53, 0x5410 :: v_dual_add_nc_u32 v96, 0, v2
	v_add_nc_u32_e32 v135, 0, v33
	v_xor_b32_e32 v33, 0x70, v111
	v_cndmask_b32_e64 v39, 0x3276, v59, s1
	v_add_nc_u32_e32 v100, 0, v12
	v_xor_b32_e32 v36, 0x90, v108
	v_xor_b32_e32 v13, 64, v9
	v_add_nc_u32_e32 v145, 0, v33
	v_mov_b32_e32 v33, 0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v1, s15, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v11, 32, v9
	v_xor_b32_e32 v10, 16, v9
	v_cndmask_b32_e64 v53, 0x1054, v53, s1
	v_lshl_or_b32 v39, v39, 8, v39
	v_xor_b32_e32 v35, 0x2d0, v108
	v_add_nc_u32_e32 v132, 0, v36
	v_mov_b32_e32 v36, v33
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v94, s12, v1
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v95, s13, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v1, 0x60, v9
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_add_nc_u32 v99, 0, v13
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_add_nc_u32 v101, 0, v11
	v_add_nc_u32_e32 v102, 0, v10
	v_xor_b32_e32 v40, 8, v104
	v_lshl_or_b32 v53, v53, 8, v53
	v_and_b32_e32 v39, 0x760076, v39
	v_add_nc_u32_e32 v97, 0, v1
	v_add_nc_u32_e32 v103, 0, v9
	v_add_nc_u32_e32 v136, 0, v35
	v_mov_b32_e32 v35, v33
	ds_load_b128 v[13:16], v98
	ds_load_b128 v[9:12], v99
	ds_load_b128 v[21:24], v100
	ds_load_b128 v[17:20], v101
	ds_load_b128 v[29:32], v102
	ds_load_b128 v[25:28], v103
	v_and_b32_e32 v42, 28, v0
	v_and_b32_e32 v53, 0x540054, v53
	v_lshl_or_b32 v39, v39, 4, v39
	v_add_nc_u32_e32 v114, 0, v40
	v_mov_b32_e32 v40, v33
	ds_load_b128 v[5:8], v96
	ds_load_b128 v[1:4], v97
	v_xor_b32_e32 v105, v88, v41
	v_xor_b32_e32 v41, 40, v104
	v_and_or_b32 v106, 0x3e0, v89, v42
	v_lshl_or_b32 v53, v53, 4, v53
	v_and_b32_e32 v110, 0x7060706, v39
	v_xor_b32_e32 v39, 0x120, v108
	v_add_nc_u32_e32 v118, 0, v41
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v41, 1, v92
	v_xor_b32_e32 v43, 16, v104
	v_xor_b32_e32 v44, 24, v104
	v_xor_b32_e32 v45, 32, v104
	v_xor_b32_e32 v42, 48, v104
	v_xor_b32_e32 v46, 56, v104
	v_xor_b32_e32 v47, 0x210, v105
	v_xor_b32_e32 v48, 4, v106
	v_xor_b32_e32 v50, 8, v106
	v_xor_b32_e32 v51, 12, v106
	v_xor_b32_e32 v52, 16, v106
	v_xor_b32_e32 v54, 20, v106
	v_xor_b32_e32 v55, 24, v106
	v_xor_b32_e32 v49, 28, v106
	v_xor_b32_e32 v60, 32, v107
	v_xor_b32_e32 v58, 64, v107
	v_xor_b32_e32 v59, 0x60, v107
	v_and_b32_e32 v109, 0x5040504, v53
	v_xor_b32_e32 v53, 0x1b0, v108
	v_xor_b32_e32 v56, 0x360, v108
	v_xor_b32_e32 v57, 0x3f0, v108
	v_xor_b32_e32 v61, 16, v111
	v_xor_b32_e32 v62, 32, v111
	v_xor_b32_e32 v63, 48, v111
	v_xor_b32_e32 v64, 64, v111
	v_xor_b32_e32 v65, 0x50, v111
	v_add_nc_u32_e32 v133, 0, v39
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v112, v34, v38
	v_xor_b32_e32 v34, 0x60, v111
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[83:84], null, s11, v90, v[81:82]
	v_mad_u64_u32 v[84:85], null, s47, v41, v[81:82]
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s47, v81
	v_add_nc_u32_e32 v113, 0, v37
	v_add_nc_u32_e32 v115, 0, v43
	v_add_nc_u32_e32 v116, 0, v44
	v_add_nc_u32_e32 v117, 0, v45
	v_add_nc_u32_e32 v119, 0, v42
	v_add_nc_u32_e32 v120, 0, v46
	v_add_nc_u32_e32 v121, 0, v47
	v_add_nc_u32_e32 v122, 0, v48
	v_add_nc_u32_e32 v123, 0, v50
	v_add_nc_u32_e32 v124, 0, v51
	v_add_nc_u32_e32 v125, 0, v52
	v_add_nc_u32_e32 v126, 0, v54
	v_add_nc_u32_e32 v127, 0, v55
	v_add_nc_u32_e32 v128, 0, v49
	v_add_nc_u32_e32 v129, 0, v60
	v_add_nc_u32_e32 v130, 0, v58
	v_add_nc_u32_e32 v131, 0, v59
	v_add_nc_u32_e32 v134, 0, v53
	v_add_nc_u32_e32 v137, 0, v56
	v_add_nc_u32_e32 v138, 0, v57
	v_add_nc_u32_e32 v139, 0, v61
	v_add_nc_u32_e32 v140, 0, v62
	v_add_nc_u32_e32 v141, 0, v63
	v_add_nc_u32_e32 v142, 0, v64
	v_add_nc_u32_e32 v143, 0, v65
	v_add_nc_u32_e32 v144, 0, v34
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v37, v33
	v_dual_mov_b32 v38, v33 :: v_dual_mov_b32 v85, 0xff800000
	v_mov_b32_e32 v147, v33
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
	s_add_i32 s10, s59, s73
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v80, s55 :: v_dual_mov_b32 v79, s54
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[41:42], null, s10, s46, v[82:83]
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v78, s53 :: v_dual_mov_b32 v77, s52
	v_dual_mov_b32 v76, s51 :: v_dual_mov_b32 v75, s50
	v_dual_mov_b32 v74, s49 :: v_dual_mov_b32 v73, s48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v43, v41, s75, 1
	v_add_lshl_u32 v44, v41, s76, 1
	v_add_lshl_u32 v41, v41, s77, 1
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_add_nc_u32 v157, 4, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v45, 0x80000000, v43 :: v_dual_add_nc_u32 v156, 0, v104
	v_dual_cndmask_b32 v49, 0x80000000, v44 :: v_dual_add_nc_u32 v158, 6, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v53, 0x80000000, v41 :: v_dual_add_nc_u32 v160, 7, v83
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[60:63], 0 offen
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	buffer_load_b128 v[49:52], v49, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v86, 6, v81
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v165, s59, v81
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v150, 4, v81
	v_or_b32_e32 v151, 2, v81
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v162, 3, v83
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v152, 7, v81
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v165, v94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v165, v95
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v165, v85, v85
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v85, s59, v86
	v_or_b32_e32 v86, s59, v151
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v155, 1, v81
	v_or_b32_e32 v153, 5, v81
	v_or_b32_e32 v154, 3, v81
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v85, v94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v85, v95
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v85, s59, v150
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v86, v94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v86, v95
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v159, 5, v83
	v_add_nc_u32_e32 v161, 2, v83
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v85, v94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v85, v95
	v_mad_u64_u32 v[85:86], null, s10, s47, v[84:85]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v163, 1, v83
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v86, s59, v152
	v_or_b32_e32 v152, s59, v155
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s11, s78, s59
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v150, s59, v153
	v_or_b32_e32 v151, s59, v154
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v153, s11, v157, 1
	v_add_lshl_u32 v154, s11, v158, 1
	v_add_lshl_u32 v155, s11, v159, 1
	v_add_lshl_u32 v157, s11, v160, 1
	v_add_lshl_u32 v158, s11, v161, 1
	v_add_lshl_u32 v159, s11, v162, 1
	v_add_lshl_u32 v160, s11, v163, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v86, v94
	v_cmp_ge_i32_e64 s16, v152, v94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v152, v95
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s4
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v150, v94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v150, v95
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v151, v94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v151, v95
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s4, s44, s1
	s_and_b32 s1, s2, s5
	s_and_b32 s2, s6, s7
	s_and_b32 s1, s44, s1
	s_and_b32 s5, s8, s9
	s_and_b32 s8, s12, s13
	s_and_b32 s9, s14, s15
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v151, 0x80000000, v154, s1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s44, s2
	s_and_b32 s7, s44, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v152, 0x80000000, v153, s2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s44, s8
	s_and_b32 s9, s44, s9
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v153, 0x80000000, v158, s7
	v_cndmask_b32_e64 v155, 0x80000000, v155, s8
	v_cndmask_b32_e64 v158, 0x80000000, v159, s9
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v149.l, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s59, s59, 64
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v162.l, v149.l
	v_mov_b16_e64 v161.l, v149.l
	v_mov_b16_e64 v159.l, v149.l
	v_mov_b16_e64 v163.l, v149.l
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v93, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v93, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v93, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v93, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v102
	ds_load_b128 v[41:44], v103
	ds_load_b128 v[49:52], v103 offset:2048
	ds_load_b128 v[53:56], v102 offset:2048
	ds_load_b128 v[170:173], v102 offset:4096
	ds_load_b128 v[166:169], v103 offset:4096
	ds_load_b128 v[174:177], v103 offset:6144
	ds_load_b128 v[178:181], v102 offset:6144
	ds_load_b128 v[186:189], v100
	ds_load_b128 v[182:185], v101
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[41:48], v[25:32], v[73:80]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[49:56], v[25:32], v[73:80]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[166:173], v[25:32], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[170:173], v100 offset:4096
	ds_load_b128 v[166:169], v101 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[174:181], v[25:32], v[73:80]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[182:189], v[17:24], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v101 offset:2048
	ds_load_b128 v[77:80], v100 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[166:173], v[17:24], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[170:173], v98
	ds_load_b128 v[166:169], v99
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[73:80], v[17:24], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v101 offset:6144
	ds_load_b128 v[77:80], v100 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[166:173], v[9:16], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[170:173], v98 offset:4096
	ds_load_b128 v[166:169], v99 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[73:80], v[17:24], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v99 offset:2048
	ds_load_b128 v[77:80], v98 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[166:173], v[9:16], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[170:173], v96
	ds_load_b128 v[166:169], v97
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[73:80], v[9:16], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v99 offset:6144
	ds_load_b128 v[77:80], v98 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[166:173], v[1:8], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[170:173], v96 offset:4096
	ds_load_b128 v[166:169], v97 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[73:80], v[9:16], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v97 offset:2048
	ds_load_b128 v[77:80], v96 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[166:173], v[1:8], v[49:56]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v168, s11, v83, 1
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v86, v95
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v86.l, v149.l
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[73:80], v[1:8], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[73:76], v97 offset:6144
	ds_load_b128 v[77:80], v96 offset:6144
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v150, 0x80000000, v168, s4
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s10, s11
	s_and_b32 s10, s16, s17
	s_and_b32 s6, s44, s6
	s_and_b32 s10, s44, s10
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v154, 0x80000000, v157, s6
	v_cndmask_b32_e64 v157, 0x80000000, v160, s10
	s_clause 0x7
	buffer_load_u16 v151, v151, s[64:67], 0 offen
	buffer_load_u16 v157, v157, s[64:67], 0 offen
	buffer_load_u16 v152, v152, s[64:67], 0 offen
	buffer_load_u16 v153, v153, s[64:67], 0 offen
	buffer_load_u16 v150, v150, s[64:67], 0 offen
	buffer_load_u16 v154, v154, s[64:67], 0 offen
	buffer_load_u16 v155, v155, s[64:67], 0 offen
	buffer_load_u16 v158, v158, s[64:67], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[41:48], v[73:80], v[1:8], v[41:48]
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v76.h, 0xff80, v151.l, s1
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v77.l, 0xff80, v157.l, s10
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v76.l, 0xff80, v152.l, s2
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v75.h, 0xff80, v153.l, s7
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v75.l, 0xff80, v150.l, s4
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v78.h, 0xff80, v154.l, s6
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v78.l, 0xff80, v155.l, s8
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v77.h, 0xff80, v158.l, s9
	v_mov_b16_e64 v162.h, v75.h
	v_mov_b16_e32 v86.h, v76.h
	v_mov_b16_e64 v149.h, v75.l
	v_mov_b16_e64 v161.h, v76.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v113, v[75:76], v[77:78] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[73:74], v156
	ds_load_b64 v[79:80], v114
	ds_load_b64 v[150:151], v115
	ds_load_b64 v[152:153], v116
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v86
	v_cmp_neq_f32_e64 s13, 0xff800000, v162
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v159.h, v78.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v161
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v163.h, v78.h
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v149
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v149.h, v77.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v159
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s1, s1, s11
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v163
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s7, s13
	s_and_b32 s5, s4, s5
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v149
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s8, s15
	s_and_b32 s4, s6, s14
	s_and_b32 s6, s2, s12
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(3)
	v_lshlrev_b32_e32 v155, 16, v74
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v158, 16, v80
	v_lshlrev_b32_e32 v157, 16, v79
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s10, s10, s11
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v155, 0x3fb8aa3b, v155 :: v_dual_mul_f32 v158, 0x3fb8aa3b, v158
	v_dual_mul_f32 v157, 0x3fb8aa3b, v157 :: v_dual_add_nc_u32 v166, 0, v107
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v156, 0xffff0000, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v155, s74, v67 :: v_dual_lshlrev_b32 v154, 16, v73
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v73, 0xffff0000, v73
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v157, s74, v69 :: v_dual_mul_f32 v156, 0x3fb8aa3b, v156
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v79, 0xffff0000, v79
	v_mov_b16_e64 v69.l, v149.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v74, 0x3fb8aa3b, v73
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v69.h, v77.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v156, s74, v68
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v73, 0x3fb8aa3b, v79 :: v_dual_add_nc_u32 v164, 0, v105
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v158, s74, v71
	.loc	1 881 34 is_stmt 1              ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v69
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v69, 16, v150
	v_and_b32_e32 v159, 0xffff0000, v151
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v73, s74, v70
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v70, 0xffff0000, v150
	v_lshlrev_b32_e32 v86, 16, v151
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v162, 0x3fb8aa3b, v69
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v159, 0x3fb8aa3b, v159 :: v_dual_lshlrev_b32 v160, 16, v152
	v_mul_f32_e32 v69, 0x3fb8aa3b, v70
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v80, 0xffff0000, v80
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v86, 0x3fb8aa3b, v86 :: v_dual_lshlrev_b32 v161, 16, v153
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v153, 0xffff0000, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v69, s74, v58
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v80, 0x3fb8aa3b, v80 :: v_dual_add_nc_u32 v167, 0, v106
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	ds_load_b64 v[77:78], v119
	ds_load_b64 v[150:151], v120
	v_and_b32_e32 v152, 0xffff0000, v152
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v86, s74, v59
	v_fmac_f32_e32 v80, s74, v72
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[71:72], v117
	ds_load_b64 v[75:76], v118
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v168, 0x3fb8aa3b, v160 :: v_dual_mul_f32 v153, 0x3fb8aa3b, v153
	v_mul_f32_e32 v70, 0x3fb8aa3b, v152
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v159, s74, v60
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v58, 0, 1, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v168, s74, v61 :: v_dual_fmac_f32 v153, s74, v64
	v_fmac_f32_e32 v162, s74, v57
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v61, 0, 1, s7
	v_cndmask_b32_e64 v59, 0, 1, s6
	s_and_b32 s9, s9, s16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v154, 0x3fb8aa3b, v154
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v74, s74, v66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v68.h, v149.l
	v_mov_b16_e64 v79.h, v149.l
	v_mov_b16_e64 v67.h, v149.l
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v57, 16, v71
	v_and_b32_e32 v60, 0xffff0000, v71
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v152, 0x3fb8aa3b, v161
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v70, s74, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v161, 0x3fb8aa3b, v57 :: v_dual_lshlrev_b32 v62, 16, v72
	v_dual_mul_f32 v57, 0x3fb8aa3b, v60 :: v_dual_fmac_f32 v152, s74, v63
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v63, 0xffff0000, v72
	v_and_b32_e32 v71, 0xffff0000, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v161, s74, v49 :: v_dual_lshlrev_b32 v72, 16, v76
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v49.l, v58.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v63
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v64, 16, v75
	v_and_b32_e32 v75, 0xffff0000, v76
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v60, 0x3fb8aa3b, v71 :: v_dual_mul_f32 v71, 0x3fb8aa3b, v72
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v58, 0xffff0000, v77
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v172, 0x3fb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v72, 0x3fb8aa3b, v75 :: v_dual_lshlrev_b32 v75, 16, v150
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v60, s74, v54 :: v_dual_fmac_f32 v63, s74, v52
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v64, 0x3fb8aa3b, v64
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v76, 0, 1, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v75, 0x3fb8aa3b, v75
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v71, s74, v55 :: v_dual_and_b32 v62, 0xffff0000, v78
	v_fmac_f32_e32 v57, s74, v50
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v55, 0, 1, s9
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v75, s74, v45 :: v_dual_fmac_f32 v172, s74, v51
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v51.l, v61.l
	v_mov_b16_e32 v50.l, v59.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v64, s74, v53 :: v_dual_lshlrev_b32 v59, 16, v78
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v53, 0, 1, s4
	v_cndmask_b32_e64 v61, 0, 1, s10
	v_mov_b16_e32 v52.l, v76.l
	v_lshlrev_b16 v49.l, 8, v49.l
	v_lshlrev_b16 v49.h, 8, v51.l
	v_cndmask_b32_e64 v54, 0, 1, s8
	v_lshlrev_b16 v50.h, 8, v53.l
	v_lshlrev_b16 v51.l, 8, v55.l
	v_mov_b16_e32 v53.l, v61.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v76, 0xffff0000, v150
	v_and_b32_e32 v78, 0xffff0000, v151
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v61, 0x3fb8aa3b, v58 :: v_dual_fmac_f32 v72, s74, v56
	v_dual_mul_f32 v58, 0x3fb8aa3b, v59 :: v_dual_mul_f32 v59, 0x3fb8aa3b, v62
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v56, 16, v77
	v_lshlrev_b32_e32 v77, 16, v151
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v52.h, v50.l, v49.l
	v_or_b16 v52.l, v52.l, v49.h
	v_or_b16 v49.h, v54.l, v50.h
	v_or_b16 v49.l, v53.l, v51.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v62, 0x3fb8aa3b, v76
	v_mul_f32_e32 v50, 0x3fb8aa3b, v77
	v_mul_f32_e32 v54, 0x3fb8aa3b, v78
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b32 v164, v52
	ds_store_b32 v121, v49
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v76, v167
	ds_load_b32 v77, v122
	ds_load_b32 v78, v123
	ds_load_b32 v151, v124
	ds_load_b32 v164, v125
	ds_load_b32 v176, v126
	ds_load_b32 v180, v127
	ds_load_b32 v184, v128
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v59, s74, v44
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v150, 0x3fb8aa3b, v56
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v154, s74, v65 :: v_dual_fmac_f32 v61, s74, v42
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v150, s74, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v65.h, v149.l
	v_mov_b16_e64 v66.h, v149.l
	v_mov_b16_e64 v149.h, v149.l
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s59, s72
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v58, s74, v43 :: v_dual_and_b32 v49, 1, v76
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v43, 0x10000, v78
	v_and_b32_e32 v41, 0x10000, v76
	v_and_b32_e32 v45, 0x10000, v164
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s41, 1, v49
	v_and_b32_e32 v42, 0x10000, v77
	v_cmp_ne_u32_e64 s26, 0, v43
	v_and_b32_e32 v43, 1, v78
	v_cmp_ne_u32_e64 s38, 0, v41
	v_and_b32_e32 v41, 1, v77
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, 0xff800000, v154, s41
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v62, s74, v46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s28, 1, v43
	v_cmp_ne_u32_e64 s16, 0, v45
	v_cmp_eq_u32_e64 s37, 1, v41
	v_and_b32_e32 v41, 0x1000000, v164
	v_and_b32_e32 v45, 0x1000000, v184
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, 0xff800000, v162, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v52, 0x1000000, v76
	v_cmp_ne_u32_e64 s29, 0, v42
	v_cmp_ne_u32_e64 s21, 0, v41
	v_and_b32_e32 v42, 0x1000000, v77
	v_cmp_ne_u32_e64 s12, 0, v45
	v_cmp_ne_u32_e64 s39, 0, v52
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v50, s74, v47 :: v_dual_and_b32 v45, 1, v164
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v47, 0x10000, v180
	v_cmp_ne_u32_e64 s36, 0, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, 0xff800000, v156, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v41, 0x1000000, v180
	v_cmp_eq_u32_e64 s22, 1, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, 0xff800000, v157, s37
	v_cndmask_b32_e64 v56, 0xff800000, v80, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v44, 0x10000, v151
	v_cmp_ne_u32_e64 s17, 0, v41
	v_lshrrev_b16 v41.l, 8, v76.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v171, 0xff800000, v161, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v42, 1, v176
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v158, s29
	v_cndmask_b32_e64 v182, 0xff800000, v59, s17
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v54, s74, v48 :: v_dual_lshlrev_b32 v59, 1, v85
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v48, 0x10000, v184
	v_cmp_eq_u32_e64 s18, 1, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s34, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v77.l
	v_and_b32_e32 v46, 0x10000, v176
	v_cmp_ne_u32_e64 s11, 0, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v175, 0xff800000, v64, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v42, 1, v184
	v_and_b16 v41.l, 1, v41.l
	v_lshrrev_b16 v41.h, 8, v164.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v185, 0xff800000, v50, s11
	v_cndmask_b32_e64 v50, 0xff800000, v74, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v43, 0x1000000, v176
	v_cmp_eq_u16_e64 s40, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v78.l
	v_cmp_ne_u32_e64 s23, 0, v44
	v_cmp_ne_u32_e64 s15, 0, v46
	v_and_b32_e32 v46, 1, v151
	v_cmp_ne_u32_e64 s13, 0, v47
	v_and_b16 v41.l, 1, v41.l
	v_and_b32_e32 v47, 0x1000000, v151
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, 0xff800000, v86, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v44, 0x1000000, v78
	v_cmp_ne_u32_e64 s19, 0, v43
	v_cmp_eq_u16_e64 s43, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v151.l
	v_cmp_eq_u32_e64 s14, 1, v42
	v_lshrrev_b16 v42.l, 8, v176.l
	v_lshrrev_b16 v42.h, 8, v180.l
	v_lshrrev_b16 v43.l, 8, v184.l
	v_and_b16 v41.l, 1, v41.l
	v_and_b16 v41.h, 1, v41.h
	v_cmp_ne_u32_e64 s27, 0, v44
	v_cmp_eq_u32_e64 s25, 1, v46
	v_cmp_ne_u32_e64 s24, 0, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v173, 0xff800000, v172, s16
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v44, 1, v180
	v_and_b16 v42.l, 1, v42.l
	v_and_b16 v42.h, 1, v42.h
	v_and_b16 v43.l, 1, v43.l
	v_cmp_eq_u16_e64 s42, 1, v41.l
	v_cmp_eq_u16_e64 s35, 1, v41.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v159, s27
	v_cndmask_b32_e64 v167, 0xff800000, v168, s25
	v_cndmask_b32_e64 v169, 0xff800000, v152, s23
	v_cndmask_b32_e64 v170, 0xff800000, v153, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s20, 1, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v183, 0xff800000, v75, s14
	v_cndmask_b32_e64 v186, 0xff800000, v54, s12
	v_cndmask_b32_e64 v54, 0xff800000, v73, s40
	v_cndmask_b32_e64 v161, 0xff800000, v69, s43
	v_cndmask_b32_e64 v168, 0xff800000, v70, s42
	v_cndmask_b32_e64 v172, 0xff800000, v57, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s33, 1, v42.l
	v_cmp_eq_u16_e64 s31, 1, v42.h
	v_cmp_eq_u16_e64 s30, 1, v43.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, 0xff800000, v155, s38
	v_cndmask_b32_e64 v174, 0xff800000, v63, s21
	v_cndmask_b32_e64 v177, 0xff800000, v71, s15
	v_cndmask_b32_e64 v178, 0xff800000, v72, s19
	v_cndmask_b32_e64 v179, 0xff800000, v150, s20
	v_cndmask_b32_e64 v181, 0xff800000, v58, s13
	v_cndmask_b32_e64 v176, 0xff800000, v60, s33
	v_cndmask_b32_e64 v180, 0xff800000, v61, s31
	v_cndmask_b32_e64 v184, 0xff800000, v62, s30
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v47, v182, v183 :: v_dual_max_f32 v48, v185, v186
	v_max3_f32 v41, v161, v162, v163
	v_max3_f32 v42, v167, v168, v169
	v_max3_f32 v43, v170, v171, v172
	v_max_f32_e32 v57, v49, v50
	v_max3_f32 v60, v52, v53, v54
	v_max3_f32 v45, v173, v174, v175
	v_max3_f32 v46, v55, v56, v160
	v_max3_f32 v61, v41, v42, v43
	v_max3_f32 v62, v176, v177, v178
	v_max3_f32 v63, v47, v184, v48
	v_max3_f32 v47, v179, v180, v181
	v_max3_f32 v48, v57, v51, v60
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v166, v[49:52]
	ds_store_b128 v166, v[171:174] offset:512
	ds_store_b128 v129, v[53:56]
	ds_store_b128 v129, v[175:178] offset:512
	ds_store_b128 v130, v[160:163]
	ds_store_b128 v130, v[179:182] offset:512
	ds_store_b128 v131, v[167:170]
	ds_store_b128 v131, v[183:186] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v112
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v57, v45, v62, v47
	v_max3_f32 v60, v48, v46, v61
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[45:48], v112 offset:256
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v77.h, v149.l
	v_mov_b16_e64 v76.h, v149.l
	v_mov_b16_e64 v152.h, v149.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v57, v60, v57, v63
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.h, v149.l
	v_mov_b16_e64 v153.h, v149.l
	v_mov_b16_e64 v58.h, v149.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v73, v85, s79, 1
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v60, v57, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v74, v85, s80, 1
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v57, v148, v57, v60
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v164, v49, v57
	v_sub_f32_e32 v190, v54, v57
	s_waitcnt lgkmcnt(1)
	v_dual_sub_f32 v63, v179, v57 :: v_dual_max_f32 v54, v44, v44
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v49, v48, v48
	v_max3_f32 v72, v41, v45, v42
.Ltmp10:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v187, v51, v57
	v_sub_f32_e32 v189, v53, v57
	v_sub_f32_e32 v159, v55, v57
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v54, v49
	v_max3_f32 v54, v46, v43, v47
.Ltmp12:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v166, v50, v57
	v_sub_f32_e32 v191, v56, v57
	v_sub_f32_e32 v157, v160, v57
	v_sub_f32_e32 v188, v52, v57
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v72, v54, v49
.Ltmp14:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v54, v148, v57
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v151, v167, v57
	v_sub_f32_e32 v155, v162, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.h, v149.l
	v_mov_b16_e64 v160.h, v149.l
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v54, v54
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.h, v149.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v159, v159
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v69, v173, v57
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v72, v85, s47, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v85.h, v149.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v171, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v171.h, v149.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v54, 0, v54, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v158, v161, v57
	v_sub_f32_e32 v156, v163, v57
	v_sub_f32_e32 v71, v176, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v55, v180, v57 :: v_dual_mul_f32 v38, v38, v54
	v_dual_sub_f32 v51, v183, v57 :: v_dual_mul_f32 v36, v36, v54
	v_dual_sub_f32 v53, v186, v57 :: v_dual_mul_f32 v40, v40, v54
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v33, v33, v54
	v_mul_f32_e32 v34, v34, v54
	v_mul_f32_e32 v35, v35, v54
	v_mul_f32_e32 v37, v37, v54
	v_dual_mul_f32 v39, v39, v54 :: v_dual_mov_b32 v54, v49
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v158
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v161.h, v149.l
	v_mov_b16_e64 v163.h, v149.l
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v54, v54 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v159, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.l, v151.h
	v_cmp_o_f32_e64 s25, v151, v151
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v54, v54, v54
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v154, v168, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v158, s43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v58.l, v159.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s16
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v49, v54
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v166
	v_exp_f32_e32 v166, v191
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v152.l, v158.h
	v_and_b32_e32 v58, 1, v58
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v159, v159
	v_cmp_o_f32_e64 s43, v158, v158
	v_and_b32_e32 v152, 1, v152
	v_add3_u32 v58, v159, v58, 0x7fff
	v_mov_b16_e64 v159.h, v149.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v54, s34
	v_cndmask_b32_e64 v166, 0, v166, s36
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v159.l, v71.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v178, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v79.l, v54.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v169, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v76.l, v166.h
	v_cmp_o_f32_e64 s34, v54, v54
	v_cmp_o_f32_e64 s36, v166, v166
	v_and_b32_e32 v79, 1, v79
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v76, 1, v76
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v61, v175, v57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v54, v54, v79, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v76, v166, v76, 0x7fff
	v_add3_u32 v166, v158, v152, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.h, v149.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.h, v149.l
	v_mov_b16_e64 v157.h, v149.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s22
	v_cndmask_b32_e64 v63, 0, v63, s20
	v_cndmask_b32_e64 v79, 0, v79, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.l, v80.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v172, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v80, v80
	v_mov_b16_e32 v68.l, v79.h
	v_cmp_o_f32_e64 s41, v79, v79
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v172, 0x80000000, v72, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.l, v152.h
	v_cmp_o_f32_e64 s28, v152, v152
	v_and_b32_e32 v68, 1, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v72, 0x80000000, v73, s0
	v_cndmask_b32_e64 v73, 0x80000000, v74, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v150, 1, v150
	v_mov_b16_e64 v164.l, v75.h
	v_add3_u32 v68, v79, v68, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v188
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v62, v177, v57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v167, v152, v150, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.h, v149.l
	v_mov_b16_e64 v156.h, v149.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v51, v51
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v75, v75
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v71, v71
	v_cmp_o_f32_e64 s20, v63, v63
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s27
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v50, v185, v57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v79.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v86, v170, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s39, v79, v79
	v_mov_b16_e64 v153.l, v152.h
	v_cmp_o_f32_e64 s27, v152, v152
	v_and_b32_e32 v67, 1, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v86, v86
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v170.h, v149.l
	v_and_b32_e32 v153, 1, v153
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v61, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v79, v67, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v187
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v168, v152, v153, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v61.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v86, s24
	v_cndmask_b32_e64 v51, 0, v51, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.l, v55.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v52, v184, v57
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v161.l, v86.h
	v_cmp_o_f32_e64 s24, v86, v86
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s26
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v66.l, v79.h
	v_cmp_o_f32_e64 s38, v79, v79
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s34
	v_mov_b16_e64 v148.l, v152.h
	v_cmp_o_f32_e64 s26, v152, v152
	v_and_b32_e32 v66, 1, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v51, v51
	v_and_b32_e32 v148, 1, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v79, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v190
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.l, 0x7fff, v58.h, s29
	v_add3_u32 v169, v152, v148, 0x7fff
	v_and_b32_e32 v152, 1, v160
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v171.l, v50.h
	v_cmp_o_f32_e64 s14, v53, v53
	v_cndmask_b16 v54.l, 0x7fff, v68.h, s41
	v_add3_u32 v160, v151, v152, 0x7fff
	v_and_b32_e32 v151, 1, v161
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s40
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[152:155], v72, s[68:71], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v72, 1, v158
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s38
	v_add3_u32 v86, v86, v151, 0x7fff
	v_mov_b16_e32 v65.l, v79.h
	v_and_b32_e32 v151, 1, v162
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s40, v79, v79
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v148, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v80, v80, v151, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v76.h, s36
	v_cndmask_b16 v68.h, 0x7fff, v166.h, s43
	v_mov_b16_e64 v85.l, v148.h
	v_add3_u32 v65, v79, v65, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v189
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s42, v148, v148
	v_and_b32_e32 v85, 1, v85
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s40
	v_cndmask_b16 v68.l, 0x7fff, v167.h, s28
	v_mov_b16_e64 v163.l, v78.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v174, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v85, v148, v85, 0x7fff
	v_mov_b16_e64 v148.h, v149.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v151, 1, v163
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.l, v63.h
	v_cmp_o_f32_e64 s2, v78, v78
	v_mov_b16_e32 v77.l, v79.h
	v_cmp_o_f32_e64 s37, v79, v79
	v_add3_u32 v78, v78, v151, 0x7fff
	v_and_b32_e32 v151, 1, v164
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v77, 1, v77
	v_and_b32_e32 v148, 1, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v75, v75, v151, 0x7fff
	v_mov_b16_e64 v163.l, v51.h
	v_add3_u32 v77, v79, v77, 0x7fff
	v_mov_b16_e64 v79.h, v149.l
	v_mov_b16_e32 v79.l, v70.h
	v_mov_b16_e64 v149.l, v69.h
	v_cmp_o_f32_e64 s16, v70, v70
	v_add3_u32 v63, v63, v148, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v62, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v74, 1, v79
	v_and_b32_e32 v79, 1, v149
	v_and_b32_e32 v149, 1, v159
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v62.h
	v_add3_u32 v70, v70, v74, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v181, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v71, v71, v149, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v60, v182, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v69, v69
	v_add3_u32 v69, v69, v79, 0x7fff
	v_cmp_o_f32_e64 s15, v61, v61
	v_and_b32_e32 v79, 1, v156
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v61, v61, v72, 0x7fff
	v_and_b32_e32 v72, 1, v157
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[156:159], v59, s[68:71], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v59, 1, v163
	v_mov_b16_e64 v150.l, v64.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v60, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v64, v64
	v_add3_u32 v51, v51, v59, 0x7fff
	v_and_b32_e32 v74, 1, v150
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[148:151], v73, s[68:71], 0 offen
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v59, v49
.Ltmp22:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.l, v53.h
	v_add3_u32 v64, v64, v74, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v56, s13
	v_cndmask_b32_e64 v60, 0, v60, s17
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v59 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v55, v55
	v_add3_u32 v55, v55, v72, 0x7fff
	v_mov_b16_e64 v161.l, v56.h
	v_mov_b16_e64 v170.l, v60.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s30
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v59, v59
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v56, v56
	v_cmp_o_f32_e64 s31, v60, v60
	v_and_b32_e32 v74, 1, v170
	v_mov_b16_e64 v162.l, v52.h
	v_cmp_o_f32_e64 s30, v50, v50
	v_cndmask_b16 v65.l, 0x7fff, v77.h, s37
	v_cndmask_b16 v76.h, 0x7fff, v78.h, s2
	v_add3_u32 v60, v60, v74, 0x7fff
	v_and_b32_e32 v72, 1, v162
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v162, v49, v58 :: v_dual_and_b32 v73, 1, v161
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v74, 1, v164
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s21
	v_cndmask_b16 v78.h, 0x7fff, v55.h, s13
	v_permlanex16_b32 v55, v65, s81, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v56, v56, v73, 0x7fff
	v_and_b32_e32 v73, 1, v171
	v_add3_u32 v53, v53, v74, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v86.h, s24
	v_cndmask_b16 v74.l, 0x7fff, v80.h, s23
	v_cndmask_b16 v76.l, 0x7fff, v75.h, s22
	v_add3_u32 v50, v50, v73, 0x7fff
	v_cndmask_b16 v75.h, 0x7fff, v64.h, s18
	v_cndmask_b16 v86.h, 0x7fff, v53.h, s14
	v_permlanex16_b32 v69, v74, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v53, v55, v65, v109
	v_cndmask_b16 v86.l, 0x7fff, v50.h, s30
	v_permlanex16_b32 v50, v54, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s16
	v_perm_b32 v64, v69, v74, v109
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s33
	v_cndmask_b16 v71.l, 0x7fff, v61.h, s15
	v_perm_b32 v49, v50, v54, v109
	v_perm_b32 v50, v50, v54, v110
	v_perm_b32 v54, v55, v65, v110
	v_perm_b32 v65, v69, v74, v110
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v74, v162
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v73.h, 0x7fff, v85.h, s42
	v_cndmask_b16 v73.l, 0x7fff, v160.h, s25
	v_permlanex16_b32 v59, v68, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v85, v70, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v160, v71, s81, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s12, v52, v52
	v_add3_u32 v52, v52, v72, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s39
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v74, v74, v74
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v58, v59, v68, v109
	v_perm_b32 v59, v59, v68, v110
	v_perm_b32 v68, v85, v70, v109
	v_perm_b32 v69, v85, v70, v110
	v_perm_b32 v70, v160, v71, v109
	v_perm_b32 v71, v160, v71, v110
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v160, v162, v74
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v62, v62
	v_add3_u32 v62, v62, v79, 0x7fff
	v_cndmask_b16 v79.l, 0x7fff, v56.h, s17
	v_cndmask_b16 v80.h, 0x7fff, v52.h, s12
	v_permlanex16_b32 v52, v67, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v56, v66, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v77, v76, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v85, v165, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v80.l, 0x7fff, v51.h, s11
	v_perm_b32 v51, v52, v67, v109
	v_perm_b32 v52, v52, v67, v110
	v_perm_b32 v55, v56, v66, v109
	v_perm_b32 v56, v56, v66, v110
	v_perm_b32 v66, v77, v76, v109
	v_perm_b32 v67, v77, v76, v110
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v41, v85
	v_sub_f32_e32 v76, v42, v85
	v_sub_f32_e32 v162, v43, v85
	v_sub_f32_e32 v163, v44, v85
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[41:44], v172, s[68:71], 0 offen
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v45, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v168.h, s27
	v_cndmask_b16 v72.l, 0x7fff, v169.h, s26
	v_cndmask_b16 v75.l, 0x7fff, v62.h, s19
	v_mov_b32_e32 v166, v147
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v164, v48, v85
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v78.l, 0x7fff, v63.h, s20
	v_permlanex16_b32 v61, v72, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v63, v73, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v161, v75, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v79.h, 0x7fff, v60.h, s31
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v47, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v60, v61, v72, v109
	v_perm_b32 v61, v61, v72, v110
	v_perm_b32 v62, v63, v73, v109
	v_perm_b32 v63, v63, v73, v110
	v_perm_b32 v72, v161, v75, v109
	v_perm_b32 v73, v161, v75, v110
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v161, v46, v85
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s10
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v147, v164
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v165, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v167, v86, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v146, v165, v165
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v147, 0, v147, s4
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v146, v146, v160
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v48.l, v153.l
	v_mov_b16_e64 v46.l, v152.l
	v_mov_b16_e64 v75.l, v154.l
	v_mov_b16_e64 v77.l, v155.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v48.h, v149.l
	v_mov_b16_e64 v149.l, v153.h
	v_add_nc_u32_e32 v153, 0, v111
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v46.h, v148.l
	v_mov_b16_e64 v148.l, v152.h
	v_add_nc_u32_e32 v152, 0, v108
	v_mov_b16_e64 v77.h, v151.l
	v_mov_b16_e64 v151.l, v155.h
	v_mov_b16_e64 v75.h, v150.l
	v_mov_b16_e64 v150.l, v154.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s5
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v74, v45
.Ltmp38:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v76
	v_exp_f32_e32 v76, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v161, v78, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_perm_b32 v155, v161, v78, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v76, 0, v76, s9
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v76
.Ltmp40:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v74
.Ltmp42:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v74.l, v158.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v47, v76, v47
.Ltmp44:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v163
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v163, v80, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v160, v163, v80, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v165
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v76, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v47, v47, v76
.Ltmp46:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v76.l, v159.l
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v47, v45
	v_mov_b32_dpp v47, v47 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v74.h, v43.l
	v_mov_b16_e64 v43.l, v158.h
	v_mov_b16_e32 v76.h, v44.l
	v_mov_b16_e64 v44.l, v159.h
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v164, v45, v47
.Ltmp51:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v45.h, v41.l
	v_mov_b16_e64 v41.l, v156.h
	v_mov_b16_e64 v45.l, v156.l
	v_mov_b16_e32 v47.h, v42.l
	v_mov_b16_e64 v42.l, v157.h
	v_mov_b16_e64 v47.l, v157.l
	v_mov_b32_e32 v147, v41
	ds_store_b64 v152, v[45:46]
	v_mov_b32_e32 v45, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v156, v161, v78, v110
	v_perm_b32 v159, v163, v80, v109
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v132, v[147:148]
	v_mov_b32_e32 v148, v42
	ds_store_b64 v133, v[47:48]
	ds_store_b64 v134, v[148:149]
	v_mov_b32_e32 v149, v43
	ds_store_b64 v135, v[74:75]
	ds_store_b64 v136, v[149:150]
	ds_store_b64 v137, v[76:77]
	ds_store_b64 v138, v[44:45]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v153
	ds_load_b128 v[45:48], v139
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v74, v164
.Ltmp53:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[147:150], v140
	ds_load_b128 v[151:154], v141
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v75, v165, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v161, v167, v86, v109
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v75, v75
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v164, v74
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v76, v74
.Ltmp58:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[41:48], v[49:56], v[33:40]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v142
	ds_load_b128 v[45:48], v143
	ds_load_b128 v[49:52], v144
	ds_load_b128 v[53:56], v145
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[147:154], v[58:65], v[33:40]
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v58, 0, v75, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v148, v57 :: v_dual_add_f32 v147, v74, v76
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v162, v79, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v147, v166, v58
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v157, v162, v79, v109
	v_perm_b32 v158, v162, v79, v110
	v_perm_b32 v162, v167, v86, v110
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[41:48], v[66:73], v[33:40]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[155:162], v[33:40]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
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
	v_mov_b32_e32 v147, v40
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v92
	s_mov_b32 s1, 0x76543210
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp62:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s58, s58, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v146 :: v_dual_and_b32 v4, 12, v88
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v3, 0, v147, vcc_lo
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v91
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s47, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp65:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v7, 0, v33 :: v_dual_add_nc_u32 v4, 0, v4
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp67:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v34, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v14, 0, v39 :: v_dual_max_f32 v1, v1, v2
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v2, 12, v90
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp70:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
.Ltmp71:
	.loc	1 1025 31 is_stmt 1             ; attention.py:1025:31
	s_add_i32 s1, s45, s58
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v3, v3, v5 :: v_dual_add_nc_u32 v2, 0, v2
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v7
.Ltmp75:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v9, 0, v35, vcc_lo
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v9
.Ltmp80:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp81:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v7, v5
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v6, v5
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v4
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v9, v12 :: v_dual_add_f32 v3, v8, v11
.Ltmp90:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v11, 0, v36, vcc_lo
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v8, v4
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v3 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, v12
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v3, v3, v7
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_mov_b32 v16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp100:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v40 :: v_dual_mov_b32 v10, v3
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v4, v4, v16 :: v_dual_mov_b32 v7, v2
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp109:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp110:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v10, v8
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v2, v7
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v9, v7
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v13, v13, v18
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v20 :: v_dual_mov_b32 v18, v13
.Ltmp121:
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
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v12, v12, v17
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
.Ltmp127:
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
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp133:
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
.Ltmp134:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp136:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp138:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp140:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp141:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp142:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v88
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v87
.Ltmp144:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v87
	v_and_b32_e32 v2, 32, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp146:
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
.Ltmp147:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 192
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 192
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10204
; TotalNumSgprs: 84
; NumVgprs: 192
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 192
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     192
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
