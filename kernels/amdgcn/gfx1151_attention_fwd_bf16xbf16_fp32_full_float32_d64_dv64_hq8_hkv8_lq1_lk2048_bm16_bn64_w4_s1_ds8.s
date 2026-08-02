	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
	v_lshrrev_b32_e32 v96, 3, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b64 s[60:61], s[0:1], 0x0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v33, 3, v34
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v93, 1, v0
	v_lshlrev_b32_e32 v5, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v98, 0x78, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v97, 15, v0
	v_lshlrev_b32_e32 v94, 5, v0
	v_and_b32_e32 v6, 0x70, v93
	v_lshlrev_b32_e32 v95, 2, v0
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v5, v5, v6
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
	v_mad_u64_u32 v[82:83], null, s46, v96, v[33:34]
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v33
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v99, 0, v5
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
	s_lshl_b32 s12, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s58
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s12, v96
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s12, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s45, s2, s7
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s4, s4, s46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s44, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s4, v82, 1
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
	ds_store_b128 v99, v[1:4]
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
	v_dual_mov_b32 v158, 0xff800000 :: v_dual_and_b32 v37, 24, v0
	v_and_b32_e32 v41, 3, v0
	v_bfe_i32 v42, v0, 4, 1
	v_and_b32_e32 v43, 0x180, v94
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshlrev_b32_e32 v35, 4, v34
	v_and_b32_e32 v38, 0x60, v0
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_lshlrev_b32 v39, 1, v37
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_lshlrev_b32 v44, 4, v41
	v_and_b32_e32 v42, 0x840, v42
	v_lshl_or_b32 v43, v41, 9, v43
	v_lshlrev_b32_e32 v52, 3, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_lshl_or_b32 v39, v38, 2, v39
	s_lshr_b32 s1, s0, 29
	v_or3_b32 v111, v42, v44, v43
	v_mov_b32_e32 v42, 0x5410
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v9, v97, 7, v35
	v_lshl_or_b32 v40, v37, 6, v35
	v_bfe_i32 v55, v0, 0, 1
	v_bfe_i32 v56, v0, 2, 1
	v_and_b32_e32 v52, 16, v52
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v2, 0x70, v9
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s1, -8
	v_xor_b32_e32 v110, v40, v39
	v_and_b32_e32 v39, 16, v0
	v_lshlrev_b32_e32 v37, 4, v37
	v_and_b32_e32 v56, 0x840, v56
	v_and_or_b32 v52, 0x420, v55, v52
	v_bfe_i32 v59, v0, 3, 1
	v_bfe_i32 v60, v0, 5, 1
	s_sub_i32 s2, s3, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 872 27                        ; attention.py:872:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s2, s10, s2
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s1, s9, s1
	v_dual_mov_b32 v63, 0x7632 :: v_dual_add_nc_u32 v102, 0, v2
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s78, s2, s1
	v_cmp_eq_u32_e64 s1, 0, v39
	v_or3_b32 v114, v52, v56, v37
	v_lshlrev_b32_e32 v37, 5, v41
	v_and_b32_e32 v41, 0x420, v59
	v_and_b32_e32 v52, 0x840, v60
	v_and_b32_e32 v56, 4, v0
	v_and_b32_e32 v62, 0x80, v93
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v36, 1, v98
	v_mad_u64_u32 v[83:84], null, s11, v96, v[33:34]
	v_xor3_b32 v37, v41, v37, v52
	v_cndmask_b32_e64 v41, 0x1054, v42, s1
	v_lshl_add_u32 v42, v56, 7, 0
	v_cndmask_b32_e64 v56, 0x3276, v63, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s47, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v100, 0x800, v33
	v_sub_nc_u32_e32 v101, 0x800, v36
	v_add3_u32 v37, v42, v62, v37
	v_lshl_or_b32 v42, v56, 8, v56
	v_lshrrev_b32_e32 v44, 3, v38
	v_mad_u64_u32 v[84:85], null, s47, v36, v[33:34]
	v_xor_b32_e32 v36, v35, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v33, 0x760076, v42
	v_lshl_or_b32 v35, v38, 6, v35
	v_and_or_b32 v38, 0x410, v59, v38
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v14, 0x50, v9
	v_lshl_or_b32 v115, v34, 10, v36
	v_lshl_or_b32 v33, v33, 4, v33
	v_xor_b32_e32 v13, 64, v9
	v_xor_b32_e32 v35, v38, v35
	v_xor_b32_e32 v12, 48, v9
	v_xor_b32_e32 v36, 0x120, v115
	v_and_b32_e32 v117, 0x7060706, v33
	v_xor_b32_e32 v33, 0x90, v115
	v_lshl_or_b32 v118, v34, 7, v35
	v_xor_b32_e32 v35, 0x2d0, v115
	v_xor_b32_e32 v11, 32, v9
	v_xor_b32_e32 v10, 16, v9
	v_add_nc_u32_e32 v139, 0, v33
	v_xor_b32_e32 v33, 64, v118
	v_xor_b32_e32 v34, 0x240, v115
	v_xor_b32_e32 v1, 0x60, v9
	v_add_nc_u32_e32 v104, 0, v14
	v_xor_b32_e32 v40, 0x840, v110
	v_xor_b32_e32 v38, 0x1b0, v115
	v_add_nc_u32_e32 v119, v37, v39
	v_xor_b32_e32 v37, 48, v118
	v_add_nc_u32_e32 v140, 0, v36
	v_add_nc_u32_e32 v143, 0, v35
	v_xor_b32_e32 v35, 0x60, v118
	v_xor_b32_e32 v36, 0x70, v118
	v_add_nc_u32_e32 v149, 0, v33
	v_mov_b32_e32 v33, 0
	v_add_nc_u32_e32 v105, 0, v13
	v_add_nc_u32_e32 v106, 0, v12
	v_add_nc_u32_e32 v107, 0, v11
	v_add_nc_u32_e32 v108, 0, v10
	v_lshl_or_b32 v41, v41, 8, v41
	v_add_nc_u32_e32 v142, 0, v34
	v_xor_b32_e32 v34, 0x50, v118
	v_add_nc_u32_e32 v103, 0, v1
	v_add_nc_u32_e32 v109, 0, v9
	v_add_nc_u32_e32 v120, 0, v40
	v_add_nc_u32_e32 v141, 0, v38
	v_add_nc_u32_e32 v148, 0, v37
	v_add_nc_u32_e32 v151, 0, v35
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v152, 0, v36
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v40, v33
	ds_load_b128 v[13:16], v104
	ds_load_b128 v[9:12], v105
	ds_load_b128 v[21:24], v106
	ds_load_b128 v[17:20], v107
	ds_load_b128 v[29:32], v108
	ds_load_b128 v[25:28], v109
	v_and_b32_e32 v45, 28, v0
	v_and_b32_e32 v41, 0x540054, v41
	v_add_nc_u32_e32 v150, 0, v34
	v_mov_b32_e32 v34, v33
	ds_load_b128 v[5:8], v102
	ds_load_b128 v[1:4], v103
	v_xor_b32_e32 v112, v95, v44
	v_and_or_b32 v113, 0x3e0, v94, v45
	v_lshl_or_b32 v41, v41, 4, v41
	v_xor_b32_e32 v43, 16, v111
	v_xor_b32_e32 v46, 32, v111
	v_xor_b32_e32 v47, 48, v111
	v_xor_b32_e32 v48, 64, v111
	v_xor_b32_e32 v44, 0x50, v111
	v_xor_b32_e32 v45, 0x60, v111
	v_xor_b32_e32 v49, 0x70, v111
	v_xor_b32_e32 v50, 0x210, v112
	v_xor_b32_e32 v51, 4, v113
	v_xor_b32_e32 v53, 8, v113
	v_xor_b32_e32 v54, 12, v113
	v_xor_b32_e32 v57, 16, v113
	v_xor_b32_e32 v58, 20, v113
	v_xor_b32_e32 v55, 24, v113
	v_xor_b32_e32 v61, 28, v113
	v_xor_b32_e32 v60, 32, v114
	v_xor_b32_e32 v52, 64, v114
	v_xor_b32_e32 v63, 0x60, v114
	v_and_b32_e32 v116, 0x5040504, v41
	v_xor_b32_e32 v41, 0x360, v115
	v_xor_b32_e32 v42, 0x3f0, v115
	v_xor_b32_e32 v56, 16, v118
	v_xor_b32_e32 v59, 32, v118
	v_add_nc_u32_e32 v121, 0, v43
	v_add_nc_u32_e32 v122, 0, v46
	v_add_nc_u32_e32 v123, 0, v47
	v_add_nc_u32_e32 v124, 0, v48
	v_add_nc_u32_e32 v125, 0, v44
	v_add_nc_u32_e32 v126, 0, v45
	v_add_nc_u32_e32 v127, 0, v49
	v_add_nc_u32_e32 v128, 0, v50
	v_add_nc_u32_e32 v129, 0, v51
	v_add_nc_u32_e32 v130, 0, v53
	v_add_nc_u32_e32 v131, 0, v54
	v_add_nc_u32_e32 v132, 0, v57
	v_add_nc_u32_e32 v133, 0, v58
	v_add_nc_u32_e32 v134, 0, v55
	v_add_nc_u32_e32 v135, 0, v61
	v_add_nc_u32_e32 v136, 0, v60
	v_add_nc_u32_e32 v137, 0, v52
	v_add_nc_u32_e32 v138, 0, v63
	v_add_nc_u32_e32 v144, 0, v41
	v_add_nc_u32_e32 v145, 0, v42
	v_add_nc_u32_e32 v146, 0, v56
	v_add_nc_u32_e32 v147, 0, v59
	v_mov_b32_e32 v39, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v153, 0x800, v96
	v_dual_mov_b32 v69, v33 :: v_dual_add_nc_u32 v154, 4, v83
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s74, s8, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s12, s12, s11
	s_and_b32 s5, s5, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s73, s3, 11
	s_lshl_b32 s75, s46, 4
	s_lshl_b32 s76, s46, 5
	s_mul_i32 s77, s46, 48
	s_add_i32 s78, s78, s12
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
	s_add_i32 s4, s59, s73
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s78, s59
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[41:42], null, s4, s46, v[82:83]
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s2, s59, v100
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v42, s5, v83, 2
	v_add_lshl_u32 v43, v154, s5, 2
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s1, s59, v153
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v64, s55 :: v_dual_mov_b32 v63, s54
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s8, s44, s2
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v44, v41, s76, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v65, 0x80000000, v42, s8
	.loc	1 854 32                        ; attention.py:854:32
	v_lshlrev_b32_e32 v42, 1, v41
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v70, 0x80000000, v43, s8
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v43, v41, s75, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s1, vcc_lo, s1
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v41, v41, s77, 1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	v_cndmask_b32_e64 v49, 0x80000000, v44, s1
	v_cndmask_b32_e64 v45, 0x80000000, v43, s1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v62, s53 :: v_dual_mov_b32 v61, s52
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v53, 0x80000000, v41, s1
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[60:63], 0 offen
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	buffer_load_b128 v[49:52], v49, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v60, s51 :: v_dual_mov_b32 v59, s50
	v_dual_mov_b32 v58, s49 :: v_dual_mov_b32 v57, s48
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v157, 0, v110
	v_add_nc_u32_e32 v175, 0, v111
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v99, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v99, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v99, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v99, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[64:67], 0 offen
	buffer_load_b128 v[78:81], v70, s[64:67], 0 offen
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v108
	ds_load_b128 v[41:44], v109
	ds_load_b128 v[49:52], v109 offset:2048
	ds_load_b128 v[53:56], v108 offset:2048
	ds_load_b128 v[74:77], v108 offset:4096
	ds_load_b128 v[70:73], v109 offset:4096
	ds_load_b128 v[85:88], v109 offset:6144
	ds_load_b128 v[89:92], v108 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[159:166], v[41:48], v[25:32], v[57:64]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[167:174], v[49:56], v[25:32], v[57:64]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[70:77], v[25:32], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[85:92], v[25:32], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[61:64], v106
	ds_load_b128 v[57:60], v107
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[159:166], v[57:64], v[17:24], v[159:166]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[57:60], v107 offset:2048
	ds_load_b128 v[61:64], v106 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[167:174], v[57:64], v[17:24], v[167:174]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[61:64], v106 offset:4096
	ds_load_b128 v[57:60], v107 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[57:64], v[17:24], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[57:60], v107 offset:6144
	ds_load_b128 v[61:64], v106 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[57:64], v[17:24], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[61:64], v104
	ds_load_b128 v[57:60], v105
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[159:166], v[57:64], v[9:16], v[159:166]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[57:60], v105 offset:2048
	ds_load_b128 v[61:64], v104 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[167:174], v[57:64], v[9:16], v[167:174]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[61:64], v104 offset:4096
	ds_load_b128 v[57:60], v105 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[57:64], v[9:16], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[57:60], v105 offset:6144
	ds_load_b128 v[61:64], v104 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[57:64], v[9:16], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[61:64], v102
	ds_load_b128 v[57:60], v103
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[159:166], v[57:64], v[1:8], v[159:166]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[57:60], v103 offset:2048
	ds_load_b128 v[61:64], v102 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[167:174], v[57:64], v[1:8], v[167:174]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[61:64], v102 offset:4096
	ds_load_b128 v[57:60], v103 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[57:64], v[1:8], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[57:60], v103 offset:6144
	ds_load_b128 v[61:64], v102 offset:6144
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[41:48], v[57:64], v[1:8], v[41:48]
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v62, 0xff800000, v67, s8
	v_cndmask_b32_e64 v61, 0xff800000, v65, s8
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v64, 0xff800000, v80, s8
	v_cndmask_b32_e64 v63, 0xff800000, v78, s8
	v_cndmask_b32_e64 v58, 0xff800000, v68, s8
	v_cndmask_b32_e64 v57, 0xff800000, v66, s8
	v_cndmask_b32_e64 v60, 0xff800000, v81, s8
	v_cndmask_b32_e64 v59, 0xff800000, v79, s8
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v157, v[61:64]
	ds_store_b128 v120, v[57:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v175
	ds_load_b128 v[75:78], v121
	ds_load_b128 v[85:88], v122
	ds_load_b128 v[89:92], v123
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v63
	v_cmp_neq_f32_e64 s6, 0xff800000, v64
	v_cmp_neq_f32_e64 s2, 0xff800000, v61
	v_cmp_neq_f32_e64 s10, 0xff800000, v57
	v_cmp_neq_f32_e64 s11, 0xff800000, v58
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s5, s8, s1
	s_and_b32 s1, s8, s6
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v59
	v_cmp_neq_f32_e64 s13, 0xff800000, v60
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s8, s2
	s_and_b32 s10, s8, s10
	.loc	1 892 27 is_stmt 1              ; attention.py:892:27
	v_cmp_lt_i32_e64 s2, s59, v101
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s8, s12
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s59, s59, 64
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v80, 0, v113
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s2, s0, s2
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v72, 0x3fb8aa3b, v65 :: v_dual_mul_f32 v65, 0x3fb8aa3b, v66
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v73, 0x3fb8aa3b, v67 :: v_dual_mul_f32 v66, 0x3fb8aa3b, v76
	v_dual_mul_f32 v74, 0x3fb8aa3b, v68 :: v_dual_mul_f32 v75, 0x3fb8aa3b, v75
	v_dual_mul_f32 v76, 0x3fb8aa3b, v77 :: v_dual_mul_f32 v77, 0x3fb8aa3b, v78
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v72, s74, v159 :: v_dual_fmac_f32 v65, s74, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v74, s74, v162 :: v_dual_fmac_f32 v73, s74, v161
	v_dual_fmac_f32 v66, s74, v164 :: v_dual_fmac_f32 v75, s74, v163
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v76, s74, v165 :: v_dual_fmac_f32 v77, s74, v166
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b128 v[159:162], v124
	ds_load_b128 v[163:166], v125
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v79, 0x3fb8aa3b, v85 :: v_dual_mul_f32 v68, 0x3fb8aa3b, v90
	v_dual_mul_f32 v67, 0x3fb8aa3b, v86 :: v_dual_mul_f32 v86, 0x3fb8aa3b, v88
	v_mul_f32_e32 v85, 0x3fb8aa3b, v87
	v_mul_f32_e32 v88, 0x3fb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v79, s74, v167
	v_dual_fmac_f32 v67, s74, v168 :: v_dual_fmac_f32 v86, s74, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, s74, v169
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v87, 0x3fb8aa3b, v89 :: v_dual_fmac_f32 v68, s74, v172
	v_dual_mul_f32 v89, 0x3fb8aa3b, v92 :: v_dual_fmac_f32 v88, s74, v173
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v87, s74, v171 :: v_dual_add_nc_u32 v78, 0, v112
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, s74, v174 :: v_dual_mul_f32 v90, 0x3fb8aa3b, v159
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v70, 0x3fb8aa3b, v160 :: v_dual_mul_f32 v91, 0x3fb8aa3b, v161
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v92, 0x3fb8aa3b, v162 :: v_dual_mul_f32 v71, 0x3fb8aa3b, v164
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v90, s74, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v70, s74, v50
	v_mad_u64_u32 v[49:50], null, s4, s47, v[84:85]
	.loc	1 881 34 is_stmt 1              ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v62
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v157, 0x3fb8aa3b, v163
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v71, s74, v54
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v159, 0x3fb8aa3b, v165 :: v_dual_fmac_f32 v92, s74, v52
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_and_b32 s7, s8, s4
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v50, 1, v49
	v_add_lshl_u32 v54, v49, s47, 1
	v_add_lshl_u32 v163, v49, s79, 1
	v_add_lshl_u32 v164, v49, s80, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v49, 0, 1, s1
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v160, 0x3fb8aa3b, v166 :: v_dual_fmac_f32 v91, s74, v51
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v51, 0, 1, s5
	v_cndmask_b32_e64 v52, 0, 1, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b16 v49.l, 8, v49.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b128 v[165:168], v126
	ds_load_b128 v[61:64], v127
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v157, s74, v53 :: v_dual_fmac_f32 v160, s74, v56
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v53, 0, 1, s9
	v_or_b16 v56.h, v51.l, v49.l
	v_mov_b16_e32 v49.l, v52.l
	s_and_b32 s4, s8, s13
	s_and_b32 s8, s8, s11
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v159, s74, v55
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v55, 0, 1, s4
	v_cndmask_b32_e64 v57, 0, 1, s8
	v_mov_b16_e32 v51.l, v53.l
	v_lshlrev_b16 v49.l, 8, v49.l
	v_cndmask_b32_e64 v52, 0, 1, s6
	v_cndmask_b32_e64 v53, 0, 1, s10
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v56.l, v51.l, v49.l
	v_mov_b16_e32 v49.l, v55.l
	v_mov_b16_e32 v51.l, v57.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v58, 0x3fb8aa3b, v165 :: v_dual_mul_f32 v161, 0x3fb8aa3b, v166
	v_dual_mul_f32 v165, 0x3fb8aa3b, v167 :: v_dual_mul_f32 v162, 0x3fb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v49.l, 8, v49.l
	v_lshlrev_b16 v49.h, 8, v51.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v167, 0x3fb8aa3b, v61 :: v_dual_mul_f32 v166, 0x3fb8aa3b, v168
	v_mul_f32_e32 v62, 0x3fb8aa3b, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v51.h, v52.l, v49.l
	v_or_b16 v51.l, v53.l, v49.h
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v168, 0x3fb8aa3b, v64
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v58, s74, v41 :: v_dual_fmac_f32 v161, s74, v42
	v_dual_fmac_f32 v167, s74, v45 :: v_dual_fmac_f32 v162, s74, v46
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_store_b32 v78, v56
	ds_store_b32 v128, v51
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v42, v80
	ds_load_b32 v46, v129
	ds_load_b32 v169, v130
	ds_load_b32 v170, v131
	ds_load_b32 v171, v132
	ds_load_b32 v172, v133
	ds_load_b32 v173, v134
	ds_load_b32 v174, v135
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v62, s74, v47
	v_dual_fmac_f32 v165, s74, v43 :: v_dual_fmac_f32 v166, s74, v44
	v_fmac_f32_e32 v168, s74, v48
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s59, s72
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v41, 0x10000, v42
	v_and_b32_e32 v43, 0x10000, v46
	v_and_b32_e32 v44, 0x10000, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s34, 0, v41
	v_cmp_ne_u32_e64 s30, 0, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s27, 0, v44
	v_and_b32_e32 v44, 0x1000000, v42
	v_and_b32_e32 v43, 1, v42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v73, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v41, 0x10000, v174
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v63, 0xff800000, v85, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s36, 0, v44
	v_cmp_eq_u32_e64 s37, 1, v43
	v_lshrrev_b16 v42.l, 8, v42.l
	v_cmp_ne_u32_e64 s15, 0, v41
	v_and_b32_e32 v41, 1, v170
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v74, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v44, 1, v171
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v72, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v48, 0x10000, v172
	v_cmp_eq_u32_e64 s28, 1, v41
	v_and_b16 v42.l, 1, v42.l
	v_cmp_eq_u32_e64 s25, 1, v44
	v_and_b32_e32 v44, 0x1000000, v174
	v_cmp_ne_u32_e64 s19, 0, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v57, 0xff800000, v87, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v43, 0x1000000, v170
	v_cmp_eq_u16_e64 s38, 1, v42.l
	v_cmp_ne_u32_e64 s11, 0, v44
	v_lshrrev_b16 v42.l, 8, v46.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v76, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s26, 0, v43
	v_and_b32_e32 v43, 1, v174
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v168, s11
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v42.l, 1, v42.l
	v_and_b32_e32 v41, 0x1000000, v173
	v_and_b32_e32 v49, 0x10000, v173
	v_cmp_eq_u32_e64 s17, 1, v43
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v62, s15
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v48, 1, v169
	v_cmp_eq_u16_e64 s43, 1, v42.l
	v_cmp_ne_u32_e64 s12, 0, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v167, s17
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v42.l, 8, v169.l
	v_cmp_eq_u32_e64 s31, 1, v48
	v_cmp_ne_u32_e64 s16, 0, v49
	v_and_b32_e32 v49, 0x1000000, v169
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v85, 0x80000000, v50, s2
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v42.h, 8, v170.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v61, 0xff800000, v79, s31
	v_cndmask_b32_e64 v79, 0xff800000, v65, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v45, 0x10000, v170
	v_lshrrev_b16 v50.l, 8, v173.l
	v_lshrrev_b16 v50.h, 8, v174.l
	v_and_b16 v42.l, 1, v42.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, 0xff800000, v90, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s24, 0, v45
	v_and_b32_e32 v45, 1, v46
	v_cmp_ne_u32_e64 s29, 0, v49
	v_and_b32_e32 v49, 1, v173
	v_and_b16 v42.h, 1, v42.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v59, 0xff800000, v88, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s35, 1, v45
	v_and_b32_e32 v45, 0x1000000, v171
	v_and_b16 v50.l, 1, v50.l
	v_and_b16 v50.h, 1, v50.h
	v_cmp_eq_u16_e64 s42, 1, v42.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v75, s35
	v_cndmask_b32_e64 v75, 0xff800000, v66, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v48, 0x1000000, v172
	v_cmp_ne_u32_e64 s23, 0, v45
	v_cmp_eq_u32_e64 s18, 1, v49
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v73, 0x80000000, v163, s2
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s41, 1, v42.h
	v_cmp_ne_u32_e64 s20, 0, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v166, s12
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v47, 0x10000, v171
	v_cmp_eq_u16_e64 s14, 1, v50.l
	v_cmp_eq_u16_e64 s13, 1, v50.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v67, s42
	v_add_nc_u32_e32 v72, 0, v114
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s21, 0, v47
	v_and_b32_e32 v47, 0x1000000, v46
	v_lshrrev_b16 v46.l, 8, v171.l
	v_lshrrev_b16 v46.h, 8, v172.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, 0xff800000, v86, s29
	v_cndmask_b32_e64 v55, 0xff800000, v91, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s33, 0, v47
	v_and_b16 v46.l, 1, v46.l
	v_and_b32_e32 v47, 1, v172
	v_and_b16 v46.h, 1, v46.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, 0xff800000, v92, s23
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v87, 0x80000000, v54, s2
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v46.l
	v_cmp_eq_u32_e64 s22, 1, v47
	v_cmp_eq_u16_e64 s39, 1, v46.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v86, 0x80000000, v164, s2
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v77, s33
	v_cndmask_b32_e64 v54, 0xff800000, v70, s40
	v_cndmask_b32_e64 v49, 0xff800000, v157, s22
	v_cndmask_b32_e64 v51, 0xff800000, v159, s19
	v_cndmask_b32_e64 v52, 0xff800000, v160, s20
	v_cndmask_b32_e64 v50, 0xff800000, v71, s39
	v_cndmask_b32_e64 v60, 0xff800000, v89, s26
	v_cndmask_b32_e64 v45, 0xff800000, v58, s18
	v_cndmask_b32_e64 v47, 0xff800000, v165, s16
	v_cndmask_b32_e64 v58, 0xff800000, v68, s41
	v_cndmask_b32_e64 v46, 0xff800000, v161, s14
	v_cndmask_b32_e64 v42, 0xff800000, v162, s13
	ds_store_b128 v72, v[78:81]
	ds_store_b128 v72, v[53:56] offset:512
	ds_store_b128 v136, v[74:77]
	ds_store_b128 v136, v[49:52] offset:512
	ds_store_b128 v137, v[61:64]
	ds_store_b128 v137, v[45:48] offset:512
	ds_store_b128 v138, v[57:60]
	ds_store_b128 v138, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[65:68], v73, s[68:71], 0 offen
	buffer_load_b128 v[70:73], v86, s[68:71], 0 offen
	buffer_load_b128 v[159:162], v85, s[68:71], 0 offen
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v157, v62, v63, v64
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v92.l, v65.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v92.h, v70.l
	v_mov_b16_e32 v70.l, v65.h
	v_mov_b16_e32 v90.l, v66.l
	v_mov_b16_e32 v90.h, v71.l
	v_mov_b16_e32 v71.l, v66.h
	v_mov_b16_e32 v88.l, v67.l
	v_mov_b16_e32 v88.h, v72.l
	v_mov_b16_e32 v86.h, v73.l
	v_mov_b16_e32 v73.l, v68.h
	v_mov_b16_e32 v72.l, v67.h
	v_mov_b16_e32 v86.l, v68.l
	buffer_load_b128 v[65:68], v87, s[68:71], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v91.l, v159.l
	v_mov_b16_e64 v89.l, v160.l
	v_mov_b16_e64 v87.l, v161.l
	v_mov_b16_e64 v85.l, v162.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v91.h, v65.l
	v_mov_b16_e64 v65.l, v159.h
	v_mov_b16_e32 v89.h, v66.l
	v_mov_b16_e64 v66.l, v160.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v159, v57, v58, v59
	v_max3_f32 v160, v60, v53, v54
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v87.h, v67.l
	v_mov_b16_e64 v67.l, v161.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v161, v45, v46, v47
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v85.h, v68.l
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v157, v157, v159, v160
	v_max3_f32 v159, v55, v56, v49
	v_max3_f32 v160, v50, v51, v52
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v68.l, v162.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v159, v159, v160, v161
	v_max_f32_e32 v160, v78, v79
	v_max3_f32 v161, v81, v74, v75
	v_max3_f32 v160, v160, v80, v161
	v_max3_f32 v161, v76, v77, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v157, v160, v161, v157
	v_dual_max_f32 v160, v48, v41 :: v_dual_max_f32 v161, v43, v44
	v_max3_f32 v160, v160, v42, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v157, v157, v159, v160
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v159, v157, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v157, v158, v157, v159
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v180, v74, v157
	v_sub_f32_e32 v179, v75, v157
	v_sub_f32_e32 v178, v76, v157
	v_sub_f32_e32 v177, v77, v157
	v_sub_f32_e32 v168, v45, v157
	v_sub_f32_e32 v167, v47, v157
	v_sub_f32_e32 v76, v48, v157
	v_sub_f32_e32 v166, v41, v157
	v_sub_f32_e32 v75, v42, v157
	v_sub_f32_e32 v165, v43, v157
	v_sub_f32_e32 v74, v44, v157
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[41:44], v119 offset:256
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v46, v157
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[45:48], v119
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v176, v61, v157
	v_sub_f32_e32 v175, v62, v157
	v_sub_f32_e32 v62, v49, v157
	v_sub_f32_e32 v61, v50, v157
	v_sub_f32_e32 v173, v64, v157
	v_sub_f32_e32 v64, v51, v157
	v_sub_f32_e32 v183, v78, v157
	v_sub_f32_e32 v172, v57, v157
	v_sub_f32_e32 v79, v79, v157
	v_sub_f32_e32 v170, v59, v157
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v174, v63, v157
	v_sub_f32_e32 v182, v80, v157
	v_sub_f32_e32 v181, v81, v157
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v44, v44
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v48, v48
	v_max3_f32 v51, v42, v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v49, v50, v49
	v_max3_f32 v50, v45, v41, v46
.Ltmp15:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v62, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v50, v51, v49
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v50, v50 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v50, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v49, v49, v50
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v50, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v49, v49, v50
.Ltmp21:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v171, v58, v157
	v_sub_f32_e32 v58, v53, v157
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
.Ltmp22:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v50, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v58, v58
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v169, v60, v157
	v_sub_f32_e32 v60, v55, v157
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s19
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v50, v50
.Ltmp27:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v54, v157
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v58, s25
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v60, v60
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v78, v49, v50 :: v_dual_max_f32 v49, v155, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v155, v49, v78
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v59, v56, v157
	v_sub_f32_e32 v63, v52, v157
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v60, 0, v60, s21
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v164, v41, v155
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_nc_u32_e32 v41, 0, v115
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v162, v42, v155
	v_sub_f32_e32 v160, v43, v155
	v_sub_f32_e32 v80, v48, v155
	v_sub_f32_e32 v163, v45, v155
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v41, v[91:92]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v79
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v79.h, 0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	v_exp_f32_e32 v80, v80
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v161, v46, v155
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v43.h, v79.h
	v_mov_b16_e32 v52.h, v79.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v44, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.h, v79.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v46.h, v79.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v160, s6
	v_cndmask_b32_e64 v80, 0, v80, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v50.h, v79.h
	v_mov_b16_e32 v79.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v159, v47, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v48.h, v79.h
	v_mov_b16_e32 v54.h, v79.h
	v_and_b32_e32 v42, 1, v79
	v_mov_b16_e32 v56.h, v79.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v63, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v183
	v_exp_f32_e32 v161, v161
	v_exp_f32_e32 v162, v162
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.h, v79.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s12
	v_cndmask_b32_e64 v59, 0, v59, s23
	v_cndmask_b32_e64 v61, 0, v61, s39
	v_cndmask_b32_e64 v63, 0, v63, s20
	v_cndmask_b32_e64 v42, 0, v42, s37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v59, v59
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v161, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v63, v63
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v162, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v43.l, v42.h
	v_cmp_o_f32_e64 s37, v42, v42
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v76, v76
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v161, v161, v162
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v42, v42, v43, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v41.h, s2
	v_cndmask_b16 v43.l, 0x7fff, v42.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v43, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v42, v43, v116
	v_perm_b32 v42, v42, v43, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v182
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v43, v43
	v_and_b32_e32 v44, 1, v44
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v181
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v44, 0, v44, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v79.l, v44.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s34, v44, v44
	v_and_b32_e32 v45, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v44, v45, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s2
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v44, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v45, v44, v116
	v_perm_b32 v44, v45, v44, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v180
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v46.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v45, v45
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v45, v45, v46, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v179
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v79.l, v46.h
	v_cmp_o_f32_e64 s34, v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v79
	v_add3_u32 v46, v46, v47, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s34
	v_permlanex16_b32 v47, v46, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v45, v47, v46, v116
	v_perm_b32 v46, v47, v46, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v178
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v48.l, v47.h
	v_cmp_o_f32_e64 s2, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v47, v47, v48, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v177
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v79.l, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s30, v48, v48
	v_and_b32_e32 v49, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v48, v49, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s2
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v49, v48, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v47, v49, v48, v116
	v_perm_b32 v48, v49, v48, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v176
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v50.l, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v49, v49
	v_and_b32_e32 v50, 1, v50
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v159, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v49, v49, v50, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v175
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v159, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v50, 0, v50, s42
.Ltmp32:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v159, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v79.l, v50.h
	v_cmp_o_f32_e64 s30, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v79
	v_add3_u32 v50, v50, v51, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s30
	v_permlanex16_b32 v51, v50, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v49, v51, v50, v116
	v_perm_b32 v50, v51, v50, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v174
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v52.l, v51.h
	v_cmp_o_f32_e64 s2, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v52, 1, v52
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v51, v51, v52, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v173
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s4
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v75, v75
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v80, v81
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v79.l, v52.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s27, v52, v52
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v160, v80
.Ltmp37:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v80, 0, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v53, 1, v79
	v_add3_u32 v52, v52, v53, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v51.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s27
	v_permlanex16_b32 v53, v52, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v51, v53, v52, v116
	v_perm_b32 v52, v53, v52, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v172
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v54.l, v53.h
	v_cmp_o_f32_e64 s2, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v54, 1, v54
	v_add3_u32 v53, v53, v54, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v171
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v54, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v79.l, v54.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s27, v54, v54
	v_and_b32_e32 v55, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v54, v54, v55, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v53.h, s2
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v55, v54, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v53, v55, v54, v116
	v_perm_b32 v54, v55, v54, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v170
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v56.l, v55.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v55, v55
	v_and_b32_e32 v56, 1, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v55, v55, v56, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v169
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v56, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v79.l, v56.h
	v_cmp_o_f32_e64 s24, v56, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v91, 1, v79
	v_mov_b16_e32 v79.l, v57.h
	v_add3_u32 v56, v56, v91, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v55.h, s2
	v_cmp_o_f32_e64 s2, v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s24
	v_cmp_o_f32_e64 s24, v57, v57
	v_permlanex16_b32 v91, v56, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v55, v91, v56, v116
	v_perm_b32 v56, v91, v56, v117
	v_mov_b16_e32 v91.h, v79.h
	v_mov_b16_e32 v91.l, v58.h
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v58, v58, v91, 0x7fff
	v_and_b32_e32 v91, 1, v79
	v_mov_b16_e32 v79.l, v59.h
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v57, v57, v91, 0x7fff
	v_cmp_o_f32_e64 s2, v60, v60
	v_cndmask_b16 v58.h, 0x7fff, v57.h, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v91, v58, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v57, v91, v58, v116
	v_perm_b32 v58, v91, v58, v117
	v_mov_b16_e32 v91.h, v79.h
	v_mov_b16_e32 v91.l, v60.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v60, v60, v91, 0x7fff
	v_and_b32_e32 v91, 1, v79
	v_mov_b16_e32 v79.l, v61.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s2
	v_add3_u32 v59, v59, v91, 0x7fff
	v_cmp_o_f32_e64 s2, v62, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.h, 0x7fff, v59.h, s21
	v_cmp_o_f32_e64 s21, v61, v61
	v_permlanex16_b32 v91, v60, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v59, v91, v60, v116
	v_perm_b32 v60, v91, v60, v117
	v_mov_b16_e32 v91.h, v79.h
	v_mov_b16_e32 v91.l, v62.h
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v62, v62, v91, 0x7fff
	v_and_b32_e32 v91, 1, v79
	v_mov_b16_e32 v79.l, v63.h
	v_cndmask_b16 v62.l, 0x7fff, v62.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v61, v61, v91, 0x7fff
	v_cmp_o_f32_e64 s2, v64, v64
	v_cndmask_b16 v62.h, 0x7fff, v61.h, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v91, v62, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v61, v91, v62, v116
	v_perm_b32 v62, v91, v62, v117
	v_mov_b16_e32 v91.h, v79.h
	v_mov_b16_e32 v91.l, v64.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v64, v64, v91, 0x7fff
	v_and_b32_e32 v91, 1, v79
	v_mov_b16_e32 v79.l, v77.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s2
	v_add3_u32 v63, v63, v91, 0x7fff
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v64.h, 0x7fff, v63.h, s19
	v_permlanex16_b32 v91, v64, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v63, v91, v64, v116
	v_perm_b32 v64, v91, v64, v117
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v91, v158, v157
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v91, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v91, 0, v91, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v77, v77
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v33, v33, v91
	v_mul_f32_e32 v34, v34, v91
	v_mul_f32_e32 v35, v35, v91
	v_mul_f32_e32 v36, v36, v91
	v_mul_f32_e32 v37, v37, v91
	v_mul_f32_e32 v38, v38, v91
	v_mul_f32_e32 v39, v39, v91
	v_mul_f32_e32 v40, v40, v91
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v168
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v92.l, v91.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s19, v91, v91
	v_and_b32_e32 v92, 1, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v168, v91, v92, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.h, v79.h
	v_cndmask_b16 v81.l, 0x7fff, v168.h, s19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.l, v91.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s18, v91, v91
	v_and_b32_e32 v92, 1, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v158, v91, v92, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v166
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.h, v79.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.l, v91.h
	v_cmp_o_f32_e64 s16, v91, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v92, 1, v92
	v_add3_u32 v92, v91, v92, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v165
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v165.h, v79.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v165.l, v91.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v91, v91
	v_and_b32_e32 v165, 1, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v165, v91, v165, 0x7fff
	v_mov_b32_e32 v91, v156
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v156, v91, v91
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s5, 0xff800000, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v156, v156, v78
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v78, 1, v79
	v_mov_b16_e32 v79.l, v76.h
	v_add3_u32 v77, v77, v78, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v163
	v_exp_f32_e32 v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v81.h, 0x7fff, v77.h, s2
	v_and_b32_e32 v77, 1, v79
	v_mov_b16_e32 v79.l, v75.h
	v_add3_u32 v76, v76, v77, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_and_b32_e32 v77, 1, v79
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v163, 0, v163, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v76.l, 0x7fff, v158.h, s18
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s1
	v_add3_u32 v77, v75, v77, 0x7fff
	v_mov_b32_e32 v75, v69
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v74
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v78, v163
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v77.l, 0x7fff, v92.h, s16
	v_permlanex16_b32 v92, v81, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v74.l, 0x7fff, v165.h, s15
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s4
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v159, v78, v161
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v69, s11
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v69, v91, v156
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v91, v159, v160
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v159, v92, v81, v116
	v_perm_b32 v160, v92, v81, v117
	v_mov_b16_e32 v79.l, v78.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v69, v69
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v79, 1, v79
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v167, 0, v69, s5
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v69, v65
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v91
.Ltmp45:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v139, v[69:70]
	ds_store_b64 v140, v[89:90]
	v_mov_b32_e32 v70, v66
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v69, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v73, v76, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v141, v[70:71]
	v_mov_b32_e32 v71, v67
	ds_store_b64 v142, v[87:88]
	ds_store_b64 v143, v[71:72]
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v91, v65
.Ltmp49:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v144, v[85:86]
	ds_store_b64 v145, v[68:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v80
	ds_load_b128 v[69:72], v146
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v158, v81
.Ltmp51:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v149
	ds_load_b128 v[89:92], v150
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v161, v73, v76, v116
	v_perm_b32 v162, v73, v76, v117
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v158, v158 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[65:72], v[41:48], v[33:40]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v147
	ds_load_b128 v[45:48], v148
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v78, v79, 0x7fff
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v81, v158
	v_mov_b32_e32 v158, v157
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.h, 0x7fff, v65.h, s1
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[41:48], v[49:56], v[33:40]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[41:44], v151
	ds_load_b128 v[45:48], v152
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v50, v66
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v49, v77, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v51, v74, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[33:40], v[85:92], v[57:64], v[33:40]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v163, v49, v77, v116
	v_perm_b32 v164, v49, v77, v117
	v_perm_b32 v165, v51, v74, v116
	v_perm_b32 v166, v51, v74, v117
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v66, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v69, v75, v167
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[41:48], v[159:166], v[33:40]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v69, v40
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v98
	s_mov_b32 s1, 0x76543210
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp63:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s58, s58, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v1, 0xff800000, v156, vcc_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_dual_cndmask_b32 v3, 0, v69 :: v_dual_and_b32 v4, 12, v95
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v97
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s47, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp66:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s45, s58
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, v1, v1
.Ltmp68:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v7, 0, v33 :: v_dual_add_nc_u32 v4, 0, v4
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp70:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v9, 0, v35, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v2 :: v_dual_and_b32 v2, 12, v96
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v7 :: v_dual_cndmask_b32 v8, 0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp74:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v9
.Ltmp76:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v7, v5
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v10
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp84:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v14, 0, v39 :: v_dual_max_f32 v1, v1, v6
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v4
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v9, v12 :: v_dual_add_f32 v3, v8, v11
.Ltmp89:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v11, 0, v36, vcc_lo
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v8, v4
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v3 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, v12
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v3, v3, v7
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_mov_b32 v16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp99:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v40 :: v_dual_mov_b32 v10, v3
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v4, v4, v16 :: v_dual_mov_b32 v7, v2
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp108:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp109:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v10, v8
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v2, v7
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v9, v7
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v13, v13, v18
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v20 :: v_dual_mov_b32 v18, v13
.Ltmp120:
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
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v12, v12, v17
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
.Ltmp126:
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
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp132:
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
.Ltmp133:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp135:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp137:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp139:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp140:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp141:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v95
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v93
.Ltmp143:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v93
	v_and_b32_e32 v2, 32, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp145:
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
.Ltmp146:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 184
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 184
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9456
; TotalNumSgprs: 84
; NumVgprs: 184
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 184
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
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
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     184
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
