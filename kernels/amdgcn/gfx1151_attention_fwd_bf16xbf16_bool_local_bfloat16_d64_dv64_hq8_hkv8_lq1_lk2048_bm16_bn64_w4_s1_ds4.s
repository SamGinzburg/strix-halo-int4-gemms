	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s68, s[0:1], 0x60
	s_load_b64 s[46:47], s[0:1], 0x58
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v33, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v84, 3, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b64 s[60:61], s[0:1], 0x0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v77, 3, v33
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x78
	s_load_b32 s15, s[0:1], 0x80
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v81, 1, v0
	v_lshlrev_b32_e32 v34, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v86, 0x78, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v85, 15, v0
	v_lshlrev_b32_e32 v82, 2, v0
	v_and_b32_e32 v6, 0x70, v81
	v_lshlrev_b32_e32 v83, 5, v0
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v6, v34, v6
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s68
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s68
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[78:79], null, s46, v84, v[77:78]
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v77
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v87, 0, v6
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
	s_mul_i32 s7, s7, s68
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s14, v84
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
	v_add_lshl_u32 v2, s4, v78, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s44
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s68, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s68
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
	s_max_i32 s69, s6, s4
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s70, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s69, s70
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v87, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_19
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_and_b32_e32 v37, 0x60, v0
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[58:59], s[0:1], 0x30
	v_dual_mov_b32 v50, 0x7632 :: v_dual_lshlrev_b32 v35, 4, v33
	v_bfe_i32 v41, v0, 0, 1
	v_lshrrev_b32_e32 v38, 3, v37
	v_bfe_i32 v42, v0, 2, 1
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v17, v85, 7, v35
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_xor_b32_e32 v110, v82, v38
	v_lshlrev_b32_e32 v38, 3, v0
	v_and_b32_e32 v41, 0x420, v41
	v_and_b32_e32 v42, 0x840, v42
	s_add_i32 s1, s3, s0
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v4, 0x60, v17
	v_and_b32_e32 v38, 16, v38
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s2, s3, s2
	.loc	1 871 27                        ; attention.py:871:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s9, s1
	v_and_or_b32 v34, 0x180, v34, v38
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s2, s10, s2
	v_dual_mov_b32 v49, 0x5410 :: v_dual_add_nc_u32 v98, 0, v4
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s76, s2, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_or3_b32 v115, v34, v41, v42
	v_and_b32_e32 v34, 16, v0
	v_bfe_i32 v42, v0, 3, 1
	v_bfe_i32 v48, v0, 5, 1
	v_and_b32_e32 v47, 4, v0
	v_and_b32_e32 v41, 0x60, v83
	v_cmp_eq_u32_e64 s1, 0, v34
	v_and_b32_e32 v51, 0x420, v42
	v_and_b32_e32 v48, 0x840, v48
	v_and_b32_e32 v53, 0x80, v81
	v_lshl_add_u32 v47, v47, 7, 0
	v_cndmask_b32_e64 v49, 0x1054, v49, s1
	v_cndmask_b32_e64 v50, 0x3276, v50, s1
	v_xor3_b32 v41, v51, v41, v48
	v_mul_lo_u32 v36, s11, v84
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v88, 1, v77
	v_lshl_or_b32 v48, v49, 8, v49
	v_lshl_or_b32 v49, v50, 8, v50
	v_add3_u32 v41, v47, v53, v41
	v_or_b32_e32 v89, 2, v77
	v_or_b32_e32 v90, 3, v77
	v_and_b32_e32 v47, 0x540054, v48
	v_and_b32_e32 v48, 0x760076, v49
	v_xor_b32_e32 v49, v35, v86
	v_lshl_or_b32 v35, v37, 6, v35
	v_and_or_b32 v37, 0x410, v42, v37
	v_or_b32_e32 v91, 4, v77
	v_or_b32_e32 v92, 5, v77
	v_or_b32_e32 v93, 6, v77
	v_or_b32_e32 v94, 7, v77
	v_lshl_or_b32 v116, v33, 10, v49
	v_xor_b32_e32 v35, v37, v35
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_add_nc_u32 v105, v36, v88
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_add_nc_u32 v106, v36, v89
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v107, v36, v90
	v_and_b32_e32 v39, 28, v0
	v_add_nc_u32_e32 v108, v36, v91
	v_add_nc_u32_e32 v109, v36, v92
	v_add_nc_u32_e32 v111, v36, v93
	v_add_nc_u32_e32 v113, v36, v94
	v_add_nc_u32_e32 v114, v36, v77
	v_xor_b32_e32 v36, 0x210, v110
	v_lshl_or_b32 v119, v33, 7, v35
	v_xor_b32_e32 v33, 0x360, v116
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v18, 16, v17
	v_xor_b32_e32 v10, 48, v17
	v_xor_b32_e32 v2, 64, v17
	v_xor_b32_e32 v3, 0x50, v17
	v_xor_b32_e32 v5, 0x70, v17
	v_and_or_b32 v112, 0x3e0, v83, v39
	v_xor_b32_e32 v37, 0x120, v116
	v_add_nc_u32_e32 v120, v41, v34
	v_xor_b32_e32 v34, 0x3f0, v116
	v_add_nc_u32_e32 v121, 0, v36
	v_xor_b32_e32 v36, 32, v119
	v_add_nc_u32_e32 v137, 0, v33
	v_xor_b32_e32 v33, 48, v119
	v_xor_b32_e32 v9, 32, v17
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v41, 1, v86
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v100, 0, v2
	v_add_nc_u32_e32 v103, 0, v18
	v_xor_b32_e32 v39, 4, v112
	v_xor_b32_e32 v40, 8, v112
	v_xor_b32_e32 v38, 20, v112
	v_add_nc_u32_e32 v133, 0, v37
	v_add_nc_u32_e32 v138, 0, v34
	v_add_nc_u32_e32 v140, 0, v36
	v_xor_b32_e32 v34, 64, v119
	v_xor_b32_e32 v36, 0x60, v119
	v_add_nc_u32_e32 v141, 0, v33
	v_xor_b32_e32 v37, 0x70, v119
	v_mov_b32_e32 v33, 0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v1, s15, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v97, 0, v5
	v_add_nc_u32_e32 v99, 0, v3
	v_add_nc_u32_e32 v101, 0, v10
	v_add_nc_u32_e32 v102, 0, v9
	v_add_nc_u32_e32 v104, 0, v17
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[79:80], null, s47, v41, v[77:78]
	v_add_nc_u32_e32 v122, 0, v39
	v_add_nc_u32_e32 v123, 0, v40
	v_add_nc_u32_e32 v126, 0, v38
	v_add_nc_u32_e32 v142, 0, v34
	v_add_nc_u32_e32 v144, 0, v36
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v145, 0, v37
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v95, s12, v1
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v96, s13, v1
	v_mov_b32_e32 v36, v33
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[5:8], v97
	ds_load_b128 v[1:4], v98
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	ds_load_b128 v[13:16], v99
	ds_load_b128 v[9:12], v100
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	ds_load_b128 v[21:24], v101
	ds_load_b128 v[17:20], v102
	v_mov_b32_e32 v80, 0xff800000
	ds_load_b128 v[29:32], v103
	ds_load_b128 v[25:28], v104
	v_lshl_or_b32 v47, v47, 4, v47
	v_lshl_or_b32 v48, v48, 4, v48
	v_xor_b32_e32 v35, 16, v119
	v_xor_b32_e32 v43, 12, v112
	v_xor_b32_e32 v44, 16, v112
	v_xor_b32_e32 v45, 24, v112
	v_xor_b32_e32 v46, 28, v112
	v_xor_b32_e32 v52, 32, v115
	v_xor_b32_e32 v50, 64, v115
	v_xor_b32_e32 v51, 0x60, v115
	v_and_b32_e32 v117, 0x5040504, v47
	v_and_b32_e32 v118, 0x7060706, v48
	v_xor_b32_e32 v42, 0x90, v116
	v_xor_b32_e32 v47, 0x1b0, v116
	v_xor_b32_e32 v48, 0x240, v116
	v_xor_b32_e32 v49, 0x2d0, v116
	v_add_nc_u32_e32 v139, 0, v35
	v_xor_b32_e32 v35, 0x50, v119
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s47, v77
	v_add_nc_u32_e32 v124, 0, v43
	v_add_nc_u32_e32 v125, 0, v44
	v_add_nc_u32_e32 v127, 0, v45
	v_add_nc_u32_e32 v128, 0, v46
	v_add_nc_u32_e32 v129, 0, v52
	v_add_nc_u32_e32 v130, 0, v50
	v_add_nc_u32_e32 v131, 0, v51
	v_add_nc_u32_e32 v132, 0, v42
	v_add_nc_u32_e32 v134, 0, v47
	v_add_nc_u32_e32 v135, 0, v48
	v_add_nc_u32_e32 v136, 0, v49
	v_add_nc_u32_e32 v143, 0, v35
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v146, v33
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s72, s8, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s14, s14, s11
	s_and_b32 s5, s5, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s71, s3, 11
	s_lshl_b32 s73, s46, 4
	s_lshl_b32 s74, s46, 5
	s_mul_i32 s75, s46, 48
	s_add_i32 s76, s76, s14
	s_lshl_b32 s77, s47, 1
	s_mul_i32 s78, s47, 3
	s_and_b32 s65, s7, 0xffff
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s79, 0x76543210
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s64, s6
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 32 is_stmt 0                ; attention.py:0:32
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v76.h, 0xff, v76.h
	v_and_b16 v75.l, 0xff, v75.l
	v_and_b16 v74.l, 0xff, v74.l
	v_and_b16 v74.h, 0xff, v74.h
	v_and_b16 v73.l, 0xff, v73.l
	v_and_b16 v73.h, 0xff, v73.h
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v152, s72, v49 :: v_dual_mul_f32 v153, s72, v50
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v49.l, 0xff, v76.l
	v_and_b16 v75.h, 0xff, v75.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u16_e64 s1, 0, v73.h
	v_cmp_ne_u16_e64 s2, 0, v73.l
	v_cmp_ne_u16_e64 s4, 0, v74.h
	v_cmp_ne_u16_e64 s5, 0, v74.l
	v_cmp_ne_u16_e64 s7, 0, v75.l
	v_cmp_ne_u16_e64 s8, 0, v76.h
	v_cmp_ne_u16_e64 s9, 0, v49.l
	v_cmp_ne_u16_e64 s6, 0, v75.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s23, s10, s1
	s_and_b32 s26, s11, s2
	s_and_b32 s27, s12, s4
	s_and_b32 s25, s16, s8
	s_and_b32 s29, s13, s5
	s_and_b32 s31, s17, s9
	s_and_b32 s33, s15, s7
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v149, s72, v57 :: v_dual_mul_f32 v150, s72, v58
	v_dual_mul_f32 v151, s72, v59 :: v_dual_mul_f32 v60, s72, v60
	v_mul_f32_e32 v154, s72, v51
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v59, 0, 1, s23
	v_cndmask_b32_e64 v73, 0, 1, s26
	v_cndmask_b32_e64 v50, 0, 1, s27
	v_cndmask_b32_e64 v49, 0, 1, s25
	v_cndmask_b32_e64 v58, 0, 1, s29
	v_cndmask_b32_e64 v51, 0, 1, s31
	v_cndmask_b32_e64 v74, 0, 1, s33
	s_and_b32 s30, s14, s6
	v_lshlrev_b16 v49.l, 8, v49.l
	v_cndmask_b32_e64 v57, 0, 1, s30
	v_lshlrev_b16 v49.h, 8, v50.l
	v_mov_b16_e32 v50.l, v59.l
	v_lshlrev_b16 v50.h, 8, v51.l
	v_mov_b16_e32 v51.l, v74.l
	v_lshlrev_b16 v51.h, 8, v58.l
	v_mov_b16_e32 v58.l, v73.l
	v_or_b16 v57.h, v57.l, v49.l
	v_or_b16 v57.l, v50.l, v49.h
	v_add_nc_u32_e32 v49, 0, v110
	v_or_b16 v50.h, v51.l, v50.h
	v_or_b16 v50.l, v58.l, v51.h
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v74, s72, v53 :: v_dual_add_nc_u32 v51, 0, v112
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v49, v57
	ds_store_b32 v121, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v49, v51
	ds_load_b32 v50, v122
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v155, s72, v56 :: v_dual_mul_f32 v158, s72, v43
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v43, v123
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v159, s72, v44 :: v_dual_mul_f32 v162, s72, v47
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v44, v124
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v73, s72, v52 :: v_dual_mul_f32 v76, s72, v55
	v_mul_f32_e32 v161, s72, v46
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v46, v125
	ds_load_b32 v47, v126
	ds_load_b32 v51, v127
	ds_load_b32 v52, v128
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v75, s72, v54 :: v_dual_mul_f32 v156, s72, v41
	v_dual_mul_f32 v157, s72, v42 :: v_dual_mul_f32 v160, s72, v45
	v_mul_f32_e32 v163, s72, v48
	v_dual_mul_f32 v65, s72, v65 :: v_dual_mul_f32 v66, s72, v66
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v80, v80, v80
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(7)
	v_lshrrev_b16 v41.l, 8, v49.l
	s_waitcnt lgkmcnt(6)
	v_lshrrev_b16 v41.h, 8, v50.l
	v_and_b32_e32 v48, 0x1000000, v49
	v_and_b32_e32 v53, 0x10000, v49
	v_and_b32_e32 v49, 1, v49
	v_and_b16 v42.l, 1, v41.l
	v_and_b16 v45.l, 1, v41.h
	s_waitcnt lgkmcnt(5)
	v_lshrrev_b16 v41.l, 8, v43.l
	s_waitcnt lgkmcnt(4)
	v_lshrrev_b16 v41.h, 8, v44.l
	v_cmp_eq_u32_e64 s42, 1, v49
	v_cmp_eq_u16_e64 s43, 1, v42.l
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v177, 1, v51
	v_and_b16 v45.h, 1, v41.l
	v_and_b16 v55.l, 1, v41.h
	v_lshrrev_b16 v41.l, 8, v46.l
	v_lshrrev_b16 v41.h, 8, v47.l
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v178, 0x1000000, v52
	v_and_b32_e32 v179, 0x10000, v52
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v66, s43
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v58.l, 1, v41.l
	v_and_b16 v58.h, 1, v41.h
	v_lshrrev_b16 v41.l, 8, v51.l
	v_lshrrev_b16 v41.h, 8, v52.l
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v67, s72, v67 :: v_dual_mul_f32 v68, s72, v68
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s40, 0, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b16 v59.l, 1, v41.l
	v_and_b16 v59.h, 1, v41.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v65, s42
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v173, 0x10000, v47
	v_cmp_eq_u16_e64 s13, 1, v58.h
	v_cmp_ne_u32_e64 s1, 0, v179
	v_cmp_ne_u32_e64 s4, 0, v178
	v_and_b32_e32 v54, 0x1000000, v50
	v_cmp_ne_u32_e64 s12, 0, v173
	v_and_b32_e32 v57, 0x1000000, v43
	v_and_b32_e32 v164, 0x10000, v43
	v_and_b32_e32 v165, 1, v43
	v_and_b32_e32 v166, 0x1000000, v44
	v_and_b32_e32 v175, 0x1000000, v51
	v_and_b32_e32 v180, 1, v52
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v67, s40
	v_cndmask_b32_e64 v66, 0xff800000, v75, s13
	v_cndmask_b32_e64 v67, 0xff800000, v76, s12
	v_cndmask_b32_e64 v75, 0xff800000, v162, s1
	v_cndmask_b32_e64 v76, 0xff800000, v163, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v169, 0x1000000, v46
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v71, s72, v71 :: v_dual_mul_f32 v72, s72, v72
	v_dual_mul_f32 v63, s72, v63 :: v_dual_mul_f32 v64, s72, v64
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s36, 0, v54
	v_cmp_ne_u32_e64 s24, 0, v164
	v_cmp_ne_u32_e64 s19, 0, v166
	v_cmp_ne_u32_e64 s7, 0, v175
	v_cmp_eq_u32_e64 s5, 1, v180
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v164, v75, v76
.Ltmp2:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s16, 0, v169
	v_and_b32_e32 v167, 0x10000, v44
	v_and_b32_e32 v170, 0x10000, v46
	v_and_b32_e32 v171, 1, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, 0xff800000, v72, s36
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s28, 0, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v57, 0xff800000, v64, s19
	v_cndmask_b32_e64 v64, 0xff800000, v73, s16
	v_cndmask_b32_e64 v72, 0xff800000, v159, s7
	v_cndmask_b32_e64 v73, 0xff800000, v160, s5
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v168, 1, v44
	v_and_b32_e32 v56, 0x10000, v50
	v_and_b32_e32 v50, 1, v50
	v_and_b32_e32 v172, 0x1000000, v47
	v_and_b32_e32 v174, 1, v47
	v_and_b32_e32 v176, 0x10000, v51
	v_cmp_ne_u32_e64 s41, 0, v48
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v61, s72, v61 :: v_dual_mul_f32 v62, s72, v62
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s21, 1, v55.l
	v_cmp_ne_u32_e64 s20, 0, v167
	v_cmp_eq_u32_e64 s17, 1, v171
	v_cmp_eq_u16_e64 s18, 1, v58.l
	v_cmp_ne_u32_e64 s15, 0, v170
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v163, v72, v73
.Ltmp4:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s22, 1, v168
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v69, s72, v69 :: v_dual_mul_f32 v70, s72, v70
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s39, 1, v50
	v_cmp_eq_u16_e64 s38, 1, v45.l
	v_cmp_ne_u32_e64 s37, 0, v56
	v_cmp_eq_u32_e64 s14, 1, v174
	v_cmp_ne_u32_e64 s11, 0, v172
	v_cmp_eq_u32_e64 s34, 1, v165
	v_cmp_eq_u16_e64 s35, 1, v45.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v68, s41
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s9, 1, v177
	v_cmp_eq_u16_e64 s10, 1, v59.l
	v_cmp_ne_u32_e64 s8, 0, v176
	v_cmp_eq_u16_e64 s6, 1, v59.h
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v45, 0, v115
	v_cndmask_b32_e64 v54, 0xff800000, v61, s22
	v_cndmask_b32_e64 v55, 0xff800000, v62, s21
	v_cndmask_b32_e64 v56, 0xff800000, v63, s20
	v_cndmask_b32_e64 v61, 0xff800000, v152, s17
	v_cndmask_b32_e64 v62, 0xff800000, v153, s18
	v_cndmask_b32_e64 v63, 0xff800000, v154, s15
	v_cndmask_b32_e64 v46, 0xff800000, v69, s39
	v_cndmask_b32_e64 v47, 0xff800000, v70, s38
	v_cndmask_b32_e64 v48, 0xff800000, v71, s37
	v_cndmask_b32_e64 v65, 0xff800000, v74, s14
	v_cndmask_b32_e64 v68, 0xff800000, v155, s11
	v_cndmask_b32_e64 v50, 0xff800000, v149, s34
	v_cndmask_b32_e64 v51, 0xff800000, v150, s35
	v_cndmask_b32_e64 v52, 0xff800000, v151, s24
	v_cndmask_b32_e64 v53, 0xff800000, v60, s28
	v_cndmask_b32_e64 v69, 0xff800000, v156, s9
	v_cndmask_b32_e64 v70, 0xff800000, v157, s10
	v_cndmask_b32_e64 v71, 0xff800000, v158, s8
	v_cndmask_b32_e64 v74, 0xff800000, v161, s6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v45, v[41:44]
	ds_store_b128 v45, v[61:64] offset:512
	ds_store_b128 v129, v[46:49]
	ds_store_b128 v129, v[65:68] offset:512
	ds_store_b128 v130, v[50:53]
	ds_store_b128 v130, v[69:72] offset:512
	ds_store_b128 v131, v[54:57]
	ds_store_b128 v131, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[149:152], v120 offset:256
	ds_load_b128 v[153:156], v120
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v157, v51, v52, v53
	v_max3_f32 v158, v54, v55, v56
	v_max3_f32 v159, v57, v61, v62
	v_max3_f32 v160, v63, v64, v65
	v_max3_f32 v161, v66, v67, v68
	v_max3_f32 v162, v69, v70, v71
.Ltmp6:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v147
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s69, s69, 64
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s69, s70
	.loc	1 877 25                        ; attention.py:877:25
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v45, v152, v152
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v58, v156, v156
	v_max3_f32 v59, v153, v149, v154
	v_max3_f32 v60, v150, v155, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v45, v58, v45
	v_max3_f32 v45, v59, v60, v45
	v_max3_f32 v59, v44, v46, v47
	v_max3_f32 v60, v48, v49, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v58, v45
	v_mov_b32_dpp v58, v58 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v45, v45, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v58, v45
	v_mov_b32_dpp v58, v58 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v45, v45, v58
	v_max_f32_e32 v58, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v58, v58, v43, v59
	v_max3_f32 v59, v157, v158, v159
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v157, v45
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v158, v160, v161, v162
	v_max3_f32 v159, v163, v74, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v58, v58, v60, v59
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v157, v157 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v58, v158, v159
	v_max_f32_e32 v59, v157, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v60, v58, s79, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v157, v45, v59
.Ltmp18:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v148, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v59, v147, v58, v60
	v_max_f32_e32 v80, v80, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v58, v45, v157 :: v_dual_sub_f32 v45, v147, v59
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v149, v149, v80 :: v_dual_sub_f32 v60, v148, v58
	v_dual_sub_f32 v150, v150, v80 :: v_dual_sub_f32 v159, v44, v59
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v158, v45
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v151, v151, v80 :: v_dual_sub_f32 v160, v46, v59
	v_dual_sub_f32 v152, v152, v80 :: v_dual_sub_f32 v161, v47, v59
	v_sub_f32_e32 v157, v42, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v149, v149
	v_exp_f32_e32 v150, v150
	v_exp_f32_e32 v151, v151
	v_exp_f32_e32 v152, v152
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v147, 0, v158, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v148
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v148, v153, v80
	v_sub_f32_e32 v153, v154, v80
	v_sub_f32_e32 v154, v155, v80
	v_dual_sub_f32 v155, v156, v80 :: v_dual_sub_f32 v158, v43, v59
	v_sub_f32_e32 v156, v41, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v148, v148
	v_exp_f32_e32 v153, v153
	v_exp_f32_e32 v154, v154
	v_exp_f32_e32 v155, v155
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v149, s26
	v_cndmask_b32_e64 v150, 0, v150, s29
	v_cndmask_b32_e64 v151, 0, v151, s33
	v_cndmask_b32_e64 v152, 0, v152, s31
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_mov_b16_e32 v45.h, 0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v61, v59
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v148, s23
	v_cndmask_b32_e64 v153, 0, v153, s27
	v_cndmask_b32_e64 v154, 0, v154, s30
	v_cndmask_b32_e64 v155, 0, v155, s25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v163, v49, v59 :: v_dual_add_f32 v148, v148, v149
	v_dual_sub_f32 v164, v50, v59 :: v_dual_add_f32 v149, v153, v150
	v_sub_f32_e32 v166, v52, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v150, v154, v151 :: v_dual_add_f32 v151, v155, v152
.Ltmp20:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v165, v51, v59 :: v_dual_add_f32 v148, v148, v149
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v155, v161
	v_exp_f32_e32 v153, v159
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v149, v150, v151
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v167, v53, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v159, v166
	v_exp_f32_e32 v166, v61
	v_exp_f32_e32 v150, v156
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v148, v148, v149
.Ltmp24:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v168, v54, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v151, v157
	v_exp_f32_e32 v152, v158
	v_mad_u64_u32 v[41:42], null, s80, s47, v[79:80]
.Ltmp25:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v149, v148
.Ltmp26:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v60, v60
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v160
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s42
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v33, v33, v147
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v149, v149 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v169, v55, v59
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v34, v34, v147
	v_mul_f32_e32 v35, v35, v147
	v_mul_f32_e32 v36, v36, v147
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v148, v148, v149
.Ltmp30:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v59
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v37, v37, v147
	v_mul_f32_e32 v38, v38, v147
	v_mul_f32_e32 v39, v39, v147
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v161, v148
.Ltmp32:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v40, v40, v147
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v153, s41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v42, v41, s77, 1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s40
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v161, v161 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v162, v48, v59 :: v_dual_lshlrev_b32 v43, 1, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v44, v41, s47, 1
	v_add_lshl_u32 v41, v41, s78, 1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v61, v148, v161
.Ltmp36:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v63, v59
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v60, 0, v60, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v154, s39
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v148, v61
.Ltmp38:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	v_cndmask_b32_e64 v46, 0x80000000, v41, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v163
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v148, v148 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v170, v56, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v156, v162
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	buffer_load_b128 v[46:49], v46, s[64:67], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v164
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v61, v61, v148
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v151, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v150.h
	v_mov_b16_e64 v151.h, v45.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v165
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v147, v147
	v_mov_b16_e64 v45.l, v148.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v151, 1, v151
	v_cmp_o_f32_e64 s2, v148, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v156, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v161, 1, v45
	v_mov_b16_e64 v45.l, v147.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v154, v154
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v149, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v153, v148, v161, 0x7fff
	v_add3_u32 v148, v150, v151, 0x7fff
	v_mov_b16_e64 v151.l, v152.h
	v_mov_b16_e64 v151.h, v45.h
	v_and_b32_e32 v161, 1, v45
	v_cndmask_b16 v153.h, 0x7fff, v153.h, s2
	v_cmp_o_f32_e64 s2, v150, v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v150, 1, v151
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v155, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v155, v147, v161, 0x7fff
	v_mov_b16_e64 v161.l, v154.h
	v_mov_b16_e64 v161.h, v45.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v171, v57, v59
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[54:57], v42, s[64:67], 0 offen
	buffer_load_b128 v[50:53], v43, s[64:67], 0 offen
	buffer_load_b128 v[41:44], v44, s[64:67], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v45.l, v151.h
	v_cndmask_b16 v153.l, 0x7fff, v148.h, s2
	v_add3_u32 v147, v152, v150, 0x7fff
	v_and_b32_e32 v148, 1, v161
	v_cmp_o_f32_e64 s2, v152, v152
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v157, s36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v150.h, 0x7fff, v155.h, s23
	v_and_b32_e32 v155, 1, v45
	v_add3_u32 v148, v154, v148, 0x7fff
	v_mov_b16_e64 v45.l, v152.h
	v_mov_b16_e64 v157.l, v156.h
	v_mov_b16_e64 v157.h, v45.h
	v_add3_u32 v155, v151, v155, 0x7fff
	v_cmp_o_f32_e64 s23, v151, v151
	v_and_b32_e32 v154, 1, v45
	v_cndmask_b16 v151.l, 0x7fff, v148.h, s25
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v158, s35
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v70, v70, v59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v150.l, 0x7fff, v147.h, s2
	v_and_b32_e32 v147, 1, v157
	v_add3_u32 v154, v152, v154, 0x7fff
	v_cmp_o_f32_e64 s2, v152, v152
	v_mov_b16_e64 v45.l, v148.h
	v_mov_b16_e64 v152.l, v149.h
	v_mov_b16_e64 v152.h, v45.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v59
	v_sub_f32_e32 v72, v72, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v163, v169
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v151.h, 0x7fff, v155.h, s23
	v_add3_u32 v147, v156, v147, 0x7fff
	v_cmp_o_f32_e64 s23, v156, v156
	v_and_b32_e32 v155, 1, v45
	v_and_b32_e32 v152, 1, v152
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v159, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v154.h, 0x7fff, v154.h, s2
	v_cndmask_b16 v154.l, 0x7fff, v147.h, s23
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v160, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v155, v148, v155, 0x7fff
	v_cmp_o_f32_e64 s2, v148, v148
	v_add3_u32 v148, v149, v152, 0x7fff
	v_mov_b16_e64 v152.l, v156.h
	v_mov_b16_e64 v152.h, v45.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v76, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v162, v168
	v_exp_f32_e32 v165, v171
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v45.l, v147.h
	v_cndmask_b16 v155.h, 0x7fff, v155.h, s2
	v_cmp_o_f32_e64 s2, v149, v149
	v_and_b32_e32 v149, 1, v152
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v163, s21
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v74, v74, v59 :: v_dual_and_b32 v157, 1, v45
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v164, v170
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v45.l, v152.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v162, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v157, v147, v157, 0x7fff
	v_cmp_o_f32_e64 s21, v147, v147
	v_cndmask_b16 v155.l, 0x7fff, v148.h, s2
	v_add3_u32 v147, v156, v149, 0x7fff
	v_and_b32_e32 v149, 1, v45
	v_cmp_o_f32_e64 s2, v156, v156
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v165, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.l, v158.h
	v_mov_b16_e64 v159.h, v45.h
	v_add3_u32 v149, v152, v149, 0x7fff
	v_cmp_o_f32_e64 s19, v152, v152
	v_mov_b16_e64 v45.l, v156.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v148, 1, v159
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v164, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v152.h, 0x7fff, v149.h, s19
	v_and_b32_e32 v149, 1, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v62, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v148, v158, v148, 0x7fff
	v_mov_b16_e64 v160.l, v159.h
	v_mov_b16_e64 v160.h, v45.h
	v_cmp_o_f32_e64 s20, v158, v158
	v_cndmask_b16 v157.l, 0x7fff, v147.h, s2
	v_add3_u32 v149, v156, v149, 0x7fff
	v_cmp_o_f32_e64 s2, v156, v156
	v_mov_b16_e32 v45.l, v62.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v147, 1, v160
	v_cndmask_b16 v152.l, 0x7fff, v148.h, s20
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v166, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v158.h, 0x7fff, v149.h, s2
	v_and_b32_e32 v149, 1, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v147, v159, v147, 0x7fff
	v_cmp_o_f32_e64 s17, v159, v159
	v_mov_b16_e64 v156.l, v148.h
	v_mov_b16_e64 v156.h, v45.h
	v_add3_u32 v149, v62, v149, 0x7fff
	v_cmp_o_f32_e64 s2, v62, v62
	v_mov_b16_e32 v45.l, v64.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v158.l, 0x7fff, v147.h, s17
	v_and_b32_e32 v147, 1, v156
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v63, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v156.h, 0x7fff, v149.h, s2
	v_and_b32_e32 v149, 1, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s14
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v62, v148, v147, 0x7fff
	v_mov_b16_e64 v147.l, v63.h
	v_mov_b16_e64 v147.h, v45.h
	v_cmp_o_f32_e64 s2, v148, v148
	v_add3_u32 v148, v64, v149, 0x7fff
	v_mov_b16_e64 v149.l, v65.h
	v_mov_b16_e64 v149.h, v45.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v147, 1, v147
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v64, v64
	v_and_b32_e32 v64, 1, v149
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v59
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v66.h
	v_cndmask_b16 v156.l, 0x7fff, v62.h, s2
	v_add3_u32 v62, v63, v147, 0x7fff
	v_cmp_o_f32_e64 s2, v63, v63
	v_add3_u32 v63, v65, v64, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v68, s11
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v147, 1, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v65, v65
	v_mov_b16_e32 v45.l, v64.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v68, v66, v147, 0x7fff
	v_mov_b16_e64 v147.l, v67.h
	v_mov_b16_e64 v147.h, v45.h
	v_and_b32_e32 v65, 1, v45
	v_cndmask_b16 v160.l, 0x7fff, v63.h, s12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v70, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v66, v66
	v_cndmask_b16 v159.l, 0x7fff, v62.h, s2
	v_and_b32_e32 v62, 1, v147
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v69, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v64, v65, 0x7fff
	v_cmp_o_f32_e64 s2, v64, v64
	v_mov_b16_e32 v45.l, v63.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v62, v67, v62, 0x7fff
	v_cmp_o_f32_e64 s9, v67, v67
	v_mov_b16_e32 v64.l, v66.h
	v_mov_b16_e32 v64.h, v45.h
	v_cndmask_b16 v162.h, 0x7fff, v65.h, s2
	v_and_b32_e32 v65, 1, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v72, s7
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v61, v146, v60
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v59
	v_sub_f32_e32 v71, v71, v59
	v_sub_f32_e32 v73, v73, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v65, v63, v65, 0x7fff
	v_cmp_o_f32_e64 s2, v63, v63
	v_mov_b16_e32 v45.l, v67.h
	v_mov_b32_e32 v146, v61
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v73, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v64, v66, v64, 0x7fff
	v_cndmask_b16 v72.h, 0x7fff, v65.h, s2
	v_cmp_o_f32_e64 s2, v66, v66
	v_and_b32_e32 v65, 1, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v74, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v160.h, 0x7fff, v68.h, s11
	v_cndmask_b16 v162.l, 0x7fff, v62.h, s9
	v_cndmask_b16 v72.l, 0x7fff, v64.h, s2
	v_add3_u32 v64, v67, v65, 0x7fff
	v_mov_b16_e32 v45.l, v66.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v75, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v76, s4
	v_cndmask_b32_e64 v62, 0, v71, s8
	v_cndmask_b32_e64 v68, 0, v73, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v70, 1, v45
	v_mov_b16_e32 v63.h, v45.h
	v_mov_b16_e32 v45.l, v67.h
	v_mov_b16_e32 v63.l, v62.h
	v_mov_b16_e32 v65.l, v68.h
	v_mov_b16_e32 v65.h, v45.h
	v_mov_b16_e32 v71.h, v45.h
	v_and_b32_e32 v45, 1, v45
	v_and_b32_e32 v63, 1, v63
	v_cmp_o_f32_e64 s5, v67, v67
	v_and_b32_e32 v65, 1, v65
	v_mov_b16_e32 v71.l, v69.h
	v_add3_u32 v45, v67, v45, 0x7fff
	v_add3_u32 v63, v62, v63, 0x7fff
	v_cndmask_b16 v73.h, 0x7fff, v64.h, s1
	v_cmp_o_f32_e64 s1, v62, v62
	v_add3_u32 v62, v68, v65, 0x7fff
	v_add3_u32 v65, v66, v70, 0x7fff
	v_cmp_o_f32_e64 s4, v68, v68
	v_cndmask_b16 v75.h, 0x7fff, v45.h, s5
	v_permlanex16_b32 v45, v153, s79, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v64, 1, v71
	v_cndmask_b16 v73.l, 0x7fff, v63.h, s1
	v_cndmask_b16 v74.l, 0x7fff, v62.h, s4
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v62, v45, v153, v117
	v_perm_b32 v63, v45, v153, v118
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v157.h, 0x7fff, v157.h, s21
	v_cndmask_b16 v159.h, 0x7fff, v148.h, s13
	v_cmp_o_f32_e64 s2, v66, v66
	v_add3_u32 v64, v69, v64, 0x7fff
	v_cmp_o_f32_e64 s6, v69, v69
	v_permlanex16_b32 v67, v151, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v154, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v163, v152, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v164, v158, s79, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v74.h, 0x7fff, v65.h, s2
	v_permlanex16_b32 v65, v150, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v76, v155, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v161, v157, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v171, v156, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v172, v159, s79, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v67, v151, v117
	v_perm_b32 v67, v67, v151, v118
	v_perm_b32 v68, v69, v154, v117
	v_perm_b32 v69, v69, v154, v118
	v_perm_b32 v151, v163, v152, v117
	v_perm_b32 v152, v163, v152, v118
	v_perm_b32 v153, v164, v158, v117
	v_perm_b32 v154, v164, v158, v118
	v_cndmask_b16 v75.l, 0x7fff, v64.h, s6
	v_perm_b32 v64, v65, v150, v117
	v_perm_b32 v65, v65, v150, v118
	v_perm_b32 v147, v76, v155, v117
	v_perm_b32 v148, v76, v155, v118
	v_perm_b32 v149, v161, v157, v117
	v_perm_b32 v150, v161, v157, v118
	v_perm_b32 v155, v171, v156, v117
	v_perm_b32 v156, v171, v156, v118
	v_perm_b32 v157, v172, v159, v117
	v_perm_b32 v158, v172, v159, v118
	v_permlanex16_b32 v179, v160, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v180, v162, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v181, v72, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v182, v73, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v183, v74, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v184, v75, s79, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v159, v179, v160, v117
	v_perm_b32 v160, v179, v160, v118
	v_perm_b32 v161, v180, v162, v117
	v_perm_b32 v162, v180, v162, v118
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v71.h, v46.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v71.l, v54.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v70.l, v50.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v70.h, v41.l
	v_mov_b16_e32 v41.l, v50.h
	v_add_nc_u32_e32 v50, 0, v116
	v_mov_b16_e32 v46.l, v54.h
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v45, v41
	ds_store_b64 v50, v[70:71]
	ds_store_b64 v132, v[45:46]
	v_mov_b16_e32 v70.h, v42.l
	v_mov_b16_e32 v42.l, v51.h
	v_mov_b16_e32 v71.l, v55.l
	v_mov_b16_e32 v71.h, v47.l
	v_mov_b16_e32 v70.l, v51.l
	v_mov_b16_e32 v41.h, v43.l
	v_mov_b16_e32 v43.l, v52.h
	v_mov_b16_e32 v47.l, v55.h
	v_mov_b32_e32 v46, v42
	v_mov_b16_e32 v42.l, v56.l
	v_mov_b16_e32 v42.h, v48.l
	v_mov_b16_e32 v41.l, v52.l
	ds_store_b64 v133, v[70:71]
	ds_store_b64 v134, v[46:47]
	v_mov_b16_e32 v48.l, v56.h
	v_mov_b32_e32 v47, v43
	v_mov_b16_e32 v51.h, v49.l
	v_mov_b16_e32 v49.l, v57.h
	v_mov_b16_e32 v51.l, v57.l
	v_mov_b16_e32 v50.l, v53.l
	v_mov_b16_e32 v50.h, v44.l
	ds_store_b64 v135, v[41:42]
	ds_store_b64 v136, v[47:48]
	v_add_nc_u32_e32 v41, 0, v119
	v_mov_b16_e32 v44.l, v53.h
	v_mov_b32_e32 v45, v49
	ds_store_b64 v137, v[50:51]
	ds_store_b64 v138, v[44:45]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v41
	ds_load_b128 v[45:48], v139
	ds_load_b128 v[49:52], v140
	ds_load_b128 v[53:56], v141
	ds_load_b128 v[163:166], v142
	ds_load_b128 v[167:170], v143
	ds_load_b128 v[171:174], v144
	ds_load_b128 v[175:178], v145
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[41:48], v[62:69], v[33:40]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v41, v181, v72, v117
	v_perm_b32 v42, v181, v72, v118
	v_perm_b32 v43, v182, v73, v117
	v_perm_b32 v44, v182, v73, v118
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[147:154], v[33:40]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v45, v183, v74, v117
	v_perm_b32 v46, v183, v74, v118
	v_perm_b32 v47, v184, v75, v117
	v_perm_b32 v48, v184, v75, v118
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[163:170], v[155:162], v[33:40]
	v_dual_mov_b32 v147, v59 :: v_dual_mov_b32 v148, v58
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[171:178], v[41:48], v[33:40]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_20
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s80, s69, s71
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v172, s55 :: v_dual_mov_b32 v171, s54
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[41:42], null, s80, s46, v[78:79]
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v170, s53 :: v_dual_mov_b32 v169, s52
	v_dual_mov_b32 v168, s51 :: v_dual_mov_b32 v167, s50
	v_dual_mov_b32 v166, s49 :: v_dual_mov_b32 v165, s48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v43, v41, s73, 1
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v44, v41, s74, 1
	v_add_lshl_u32 v41, v41, s75, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v73, s69, v77
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v45, 0x80000000, v43 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v49, 0x80000000, v44, vcc_lo
	v_cndmask_b32_e32 v53, 0x80000000, v41, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[60:63], 0 offen
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	buffer_load_b128 v[49:52], v49, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v73, v95
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v73, v96
	v_mov_b16_e32 v73.l, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s4, s76, s69
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v87, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v87, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v87, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v87, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v103
	ds_load_b128 v[41:44], v104
	ds_load_b128 v[49:52], v104 offset:2048
	ds_load_b128 v[53:56], v103 offset:2048
	ds_load_b128 v[153:156], v103 offset:4096
	ds_load_b128 v[149:152], v104 offset:4096
	ds_load_b128 v[157:160], v104 offset:6144
	ds_load_b128 v[161:164], v103 offset:6144
	ds_load_b128 v[173:176], v102
	ds_load_b128 v[181:184], v102 offset:2048
	ds_load_b128 v[177:180], v101
	ds_load_b128 v[185:188], v101 offset:2048
	v_mov_b16_e32 v73.h, v73.l
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s10, s44, s1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[41:48], v[25:32], v[165:172]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[49:56], v[25:32], v[165:172]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[149:156], v[25:32], v[165:172]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[157:164], v[25:32], v[165:172]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[149:152], v102 offset:4096
	ds_load_b128 v[157:160], v102 offset:6144
	ds_load_b128 v[153:156], v101 offset:4096
	ds_load_b128 v[161:164], v101 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[173:180], v[17:24], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[165:168], v100
	ds_load_b128 v[173:176], v100 offset:2048
	ds_load_b128 v[169:172], v99
	ds_load_b128 v[177:180], v99 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[181:188], v[17:24], v[57:64]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[149:156], v[17:24], v[49:56]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[157:164], v[17:24], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[149:152], v100 offset:4096
	ds_load_b128 v[157:160], v100 offset:6144
	ds_load_b128 v[153:156], v99 offset:4096
	ds_load_b128 v[161:164], v99 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[165:172], v[9:16], v[65:72]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[173:180], v[9:16], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[165:168], v98
	ds_load_b128 v[173:176], v98 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[149:156], v[9:16], v[49:56]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[157:164], v[9:16], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[149:152], v98 offset:4096
	ds_load_b128 v[157:160], v98 offset:6144
	ds_load_b128 v[169:172], v97
	ds_load_b128 v[177:180], v97 offset:2048
	ds_load_b128 v[153:156], v97 offset:4096
	ds_load_b128 v[161:164], v97 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[165:172], v[1:8], v[65:72]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[173:180], v[1:8], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[149:156], v[1:8], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[157:164], v[1:8], v[41:48]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s2, s10
	s_cbranch_execz .LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v74, s4, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v75, 31, v74
	v_add_co_u32 v74, s1, s58, v74
	v_add_co_ci_u32_e64 v75, null, s59, v75, s1
	.loc	1 877 34                        ; attention.py:877:34
	global_load_d16_hi_u8 v73, v[74:75], off
.LBB0_5:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v74, s69, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v74, v95
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v74, v96
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s2
	s_and_b32 s11, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s2, s11
	s_cbranch_execz .LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v74, s4, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v75, 31, v74
	v_add_co_u32 v74, s1, s58, v74
	v_add_co_ci_u32_e64 v75, null, s59, v75, s1
	global_load_d16_u8 v73, v[74:75], off
.LBB0_7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v75, s69, v89
	v_mov_b16_e32 v74.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v75, v95
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v75, v96
	v_mov_b16_e32 v74.h, v74.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s44, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s2, s12
	s_cbranch_execz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v75, s4, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s1, s58, v75
	v_add_co_ci_u32_e64 v76, null, s59, v76, s1
	global_load_d16_hi_u8 v74, v[75:76], off
.LBB0_9:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v75, s69, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v75, v95
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v75, v96
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s2
	s_and_b32 s13, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s2, s13
	s_cbranch_execz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v75, s4, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s1, s58, v75
	v_add_co_ci_u32_e64 v76, null, s59, v76, s1
	global_load_d16_u8 v74, v[75:76], off
.LBB0_11:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v76, s69, v91
	v_mov_b16_e32 v75.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v76, v95
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v76, v96
	v_mov_b16_e32 v75.h, v75.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s44, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s2, s14
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v76, s4, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v150, 31, v76
	v_add_co_u32 v149, s1, s58, v76
	v_add_co_ci_u32_e64 v150, null, s59, v150, s1
	global_load_d16_hi_u8 v75, v[149:150], off
.LBB0_13:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v76, s69, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v76, v95
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v76, v96
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s2
	s_and_b32 s15, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s2, s15
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v76, s4, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v150, 31, v76
	v_add_co_u32 v149, s1, s58, v76
	v_add_co_ci_u32_e64 v150, null, s59, v150, s1
	global_load_d16_u8 v75, v[149:150], off
.LBB0_15:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v149, s69, v93
	v_mov_b16_e32 v76.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v149, v95
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v149, v96
	v_mov_b16_e32 v76.h, v76.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s44, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s2, s16
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v149, s4, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v150, 31, v149
	v_add_co_u32 v149, s1, s58, v149
	v_add_co_ci_u32_e64 v150, null, s59, v150, s1
	global_load_d16_hi_u8 v76, v[149:150], off
.LBB0_17:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v149, s69, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v149, v95
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v149, v96
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s2
	s_and_b32 s17, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s2, s17
	s_cbranch_execz .LBB0_2
; %bb.18:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v149, s4, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v150, 31, v149
	v_add_co_u32 v149, s1, s58, v149
	v_add_co_ci_u32_e64 v150, null, s59, v150, s1
	global_load_d16_u8 v76, v[149:150], off
	s_branch .LBB0_2
.LBB0_19:
	.loc	1 0 34                          ; attention.py:0:34
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v58, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v61, v40
.LBB0_20:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v86
	s_mov_b32 s1, 0x76543210
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp44:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s68, s68, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v1, 0xff800000, v58, vcc_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_dual_cndmask_b32 v3, 0, v61 :: v_dual_and_b32 v4, 12, v82
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v85
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s47, 2
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp48:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s45, s68
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp50:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v7, 0, v33 :: v_dual_add_nc_u32 v4, 0, v4
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v2 :: v_dual_and_b32 v2, 12, v84
.Ltmp53:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v9, 0, v35, vcc_lo
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v7 :: v_dual_cndmask_b32 v8, 0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v1
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v10, v3
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp57:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v9
.Ltmp58:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
.Ltmp60:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v7, v5
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_cndmask_b32 v14, 0, v39
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v6
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v4
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v9, v12 :: v_dual_add_f32 v3, v8, v11
.Ltmp71:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v11, 0, v36, vcc_lo
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v8, v4
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v3 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, v12
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v3, v3, v7
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_mov_b32 v16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v40 :: v_dual_mov_b32 v10, v3
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v4, v4, v16 :: v_dual_mov_b32 v7, v2
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp90:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v10, v8
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v2, v7
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v9, v7
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v13, v13, v18
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v20 :: v_dual_mov_b32 v18, v13
.Ltmp102:
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
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v12, v12, v17
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
.Ltmp108:
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
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp114:
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
.Ltmp115:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_22
; %bb.21:
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp117:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp119:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp121:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_22:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp122:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp123:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v82
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v81
.Ltmp125:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v81
	v_and_b32_e32 v2, 32, v83
	v_add_nc_u32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp127:
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
.Ltmp128:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 189
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_vgpr, 189
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9388
; TotalNumSgprs: 83
; NumVgprs: 189
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 189
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
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     189
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
