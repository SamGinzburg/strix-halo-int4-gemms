	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
	v_and_b32_e32 v34, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v80, 3, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b64 s[60:61], s[0:1], 0x0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v33, 3, v34
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v77, 1, v0
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v82, 0x78, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v81, 15, v0
	v_lshlrev_b32_e32 v79, 2, v0
	v_and_b32_e32 v5, 0x70, v77
	v_lshlrev_b32_e32 v78, 5, v0
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v5, v35, v5
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
	v_mad_u64_u32 v[73:74], null, s46, v80, v[33:34]
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v33
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v83, 0, v5
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
	s_mul_i32 s7, s7, s68
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v36, s4, v80
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
	v_add_lshl_u32 v1, s4, v73, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s44
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s68, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s68
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
	s_lshl_b32 s69, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s69, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s70, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s69, s70
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v83, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[58:59], s[0:1], 0x30
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v132, 0xff800000 :: v_dual_and_b32 v41, 28, v0
	s_lshr_b32 s1, s0, 29
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v37, 4, v34
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_and_or_b32 v96, 0x3e0, v78, v41
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s2, s3, s2
	v_bfe_i32 v41, v0, 0, 1
	v_bfe_i32 v42, v0, 2, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v17, v81, 7, v37
	v_bfe_i32 v48, v0, 5, 1
	v_and_b32_e32 v51, 16, v0
	v_and_b32_e32 v41, 0x420, v41
	v_and_b32_e32 v42, 0x840, v42
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v36, v36, s11
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s2, s10, s2
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s1, s9, s1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v2, 0x50, v17
	s_add_i32 s2, s2, s1
	v_xor_b32_e32 v4, 0x70, v17
	v_and_b32_e32 v50, 0x60, v78
	v_and_b32_e32 v48, 0x840, v48
	v_add3_u32 v95, s2, v33, v36
	v_lshlrev_b32_e32 v36, 3, v0
	v_dual_mov_b32 v53, 0x5410 :: v_dual_add_nc_u32 v86, 0, v4
	v_dual_mov_b32 v55, 0x7632 :: v_dual_add_nc_u32 v88, 0, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v36, 16, v36
	v_cmp_eq_u32_e64 s1, 0, v51
	v_and_b32_e32 v54, 0x80, v77
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v38, 1, v82
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s47, v33
	v_and_or_b32 v35, 0x180, v35, v36
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v84, 0x800, v33
	v_and_b32_e32 v39, 0x60, v0
	v_sub_nc_u32_e32 v85, 0x800, v38
	v_mad_u64_u32 v[74:75], null, s47, v38, v[33:34]
	v_or3_b32 v97, v35, v41, v42
	v_bfe_i32 v42, v0, 3, 1
	v_and_b32_e32 v41, 4, v0
	v_xor_b32_e32 v38, v37, v82
	v_lshrrev_b32_e32 v40, 3, v39
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v18, 16, v17
	v_and_b32_e32 v52, 0x420, v42
	v_lshl_add_u32 v41, v41, 7, 0
	v_lshl_or_b32 v98, v34, 10, v38
	v_xor_b32_e32 v10, 48, v17
	v_xor_b32_e32 v94, v79, v40
	v_xor3_b32 v48, v52, v50, v48
	v_cndmask_b32_e64 v50, 0x1054, v53, s1
	v_cndmask_b32_e64 v53, 0x3276, v55, s1
	v_xor_b32_e32 v9, 32, v17
	v_xor_b32_e32 v1, 64, v17
	v_add3_u32 v41, v41, v54, v48
	v_xor_b32_e32 v3, 0x60, v17
	v_lshl_or_b32 v48, v53, 8, v53
	v_add_nc_u32_e32 v90, 0, v10
	v_xor_b32_e32 v40, 0x210, v94
	v_xor_b32_e32 v36, 12, v96
	v_xor_b32_e32 v35, 28, v96
	v_and_b32_e32 v33, 0x760076, v48
	v_lshl_or_b32 v50, v50, 8, v50
	v_lshl_or_b32 v37, v39, 6, v37
	v_and_or_b32 v39, 0x410, v42, v39
	v_xor_b32_e32 v38, 0x120, v98
	v_lshl_or_b32 v33, v33, 4, v33
	v_and_b32_e32 v50, 0x540054, v50
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_add_nc_u32 v102, 0, v40
	v_xor_b32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v100, 0x7060706, v33
	v_xor_b32_e32 v33, 0x90, v98
	v_add_nc_u32_e32 v105, 0, v36
	v_add_nc_u32_e32 v109, 0, v35
	v_add_nc_u32_e32 v115, 0, v38
	v_lshl_or_b32 v48, v50, 4, v50
	v_add_nc_u32_e32 v114, 0, v33
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v92, 0, v18
	v_add_nc_u32_e32 v87, 0, v3
	v_add_nc_u32_e32 v89, 0, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v40, v33 :: v_dual_add_nc_u32 v91, 0, v9
	v_dual_mov_b32 v130, v33 :: v_dual_add_nc_u32 v93, 0, v17
	ds_load_b128 v[21:24], v90
	ds_load_b128 v[17:20], v91
	v_mov_b32_e32 v35, v33
	ds_load_b128 v[29:32], v92
	ds_load_b128 v[25:28], v93
	v_mov_b32_e32 v36, v33
	ds_load_b128 v[5:8], v86
	ds_load_b128 v[1:4], v87
	v_mov_b32_e32 v38, v33
	ds_load_b128 v[13:16], v88
	ds_load_b128 v[9:12], v89
	v_lshl_or_b32 v101, v34, 7, v37
	v_xor_b32_e32 v43, 4, v96
	v_xor_b32_e32 v44, 8, v96
	v_xor_b32_e32 v45, 16, v96
	v_xor_b32_e32 v46, 20, v96
	v_xor_b32_e32 v47, 24, v96
	v_xor_b32_e32 v49, 32, v97
	v_xor_b32_e32 v52, 64, v97
	v_xor_b32_e32 v55, 0x60, v97
	v_and_b32_e32 v99, 0x5040504, v48
	v_xor_b32_e32 v39, 0x1b0, v98
	v_xor_b32_e32 v34, 0x240, v98
	v_xor_b32_e32 v37, 0x2d0, v98
	v_xor_b32_e32 v42, 0x360, v98
	v_xor_b32_e32 v48, 0x3f0, v98
	v_xor_b32_e32 v50, 16, v101
	v_xor_b32_e32 v53, 32, v101
	v_xor_b32_e32 v54, 48, v101
	v_xor_b32_e32 v56, 64, v101
	v_xor_b32_e32 v57, 0x50, v101
	v_xor_b32_e32 v58, 0x60, v101
	v_xor_b32_e32 v59, 0x70, v101
	v_add_nc_u32_e32 v103, 0, v43
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_add_nc_u32 v104, 0, v44
	v_add_nc_u32_e32 v106, 0, v45
	v_add_nc_u32_e32 v107, 0, v46
	v_add_nc_u32_e32 v108, 0, v47
	v_add_nc_u32_e32 v110, 0, v49
	v_add_nc_u32_e32 v111, 0, v52
	v_add_nc_u32_e32 v112, 0, v55
	v_add_nc_u32_e32 v113, v41, v51
	v_add_nc_u32_e32 v116, 0, v39
	v_add_nc_u32_e32 v117, 0, v34
	v_add_nc_u32_e32 v118, 0, v37
	v_add_nc_u32_e32 v119, 0, v42
	v_add_nc_u32_e32 v120, 0, v48
	v_add_nc_u32_e32 v121, 0, v50
	v_add_nc_u32_e32 v122, 0, v53
	v_add_nc_u32_e32 v123, 0, v54
	v_add_nc_u32_e32 v124, 0, v56
	v_add_nc_u32_e32 v125, 0, v57
	v_add_nc_u32_e32 v126, 0, v58
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v127, 0, v59
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v39, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v128, 0x800, v80
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s72, s8, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s71, s3, 11
	s_lshl_b32 s73, s46, 4
	s_lshl_b32 s74, s46, 5
	s_mul_i32 s75, s46, 48
	s_lshl_b32 s76, s47, 1
	s_mul_i32 s77, s47, 3
	s_and_b32 s65, s7, 0xffff
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s78, 0x76543210
	s_mov_b32 s64, s6
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 32 is_stmt 0                ; attention.py:0:32
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 859 30 is_stmt 1              ; attention.py:859:30
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v133, 8, v76
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v134, s72, v57 :: v_dual_mul_f32 v135, s72, v58
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v57, 8, v75
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v62, s72, v62 :: v_dual_mul_f32 v137, s72, v49
	v_dual_mul_f32 v64, s72, v64 :: v_dual_mul_f32 v139, s72, v51
	v_mul_f32_e32 v138, s72, v50
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v49.l, 0xff, v75.l
	v_and_b16 v49.h, 0xff, v57.l
	v_and_b16 v50.l, 0xff, v75.h
	v_lshrrev_b32_e32 v57, 24, v75
	v_and_b16 v51.l, 0xff, v133.l
	v_and_b16 v51.h, 0xff, v76.h
	v_lshrrev_b32_e32 v58, 24, v76
	v_and_b16 v50.h, 0xff, v76.l
	v_cmp_ne_u16_e64 s1, 0, v49.l
	v_cmp_ne_u16_e64 s2, 0, v49.h
	v_cmp_ne_u16_e64 s4, 0, v50.l
	v_cmp_ne_u16_e64 s5, 0, v57.l
	v_cmp_ne_u16_e64 s7, 0, v51.l
	v_cmp_ne_u16_e64 s8, 0, v51.h
	v_cmp_ne_u16_e64 s9, 0, v58.l
	v_cmp_ne_u16_e64 s6, 0, v50.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s23, s10, s1
	s_and_b32 s26, s10, s2
	s_and_b32 s27, s10, s4
	s_and_b32 s25, s10, s8
	s_and_b32 s29, s10, s5
	s_and_b32 s31, s10, s9
	s_and_b32 s33, s10, s7
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v136, s72, v59 :: v_dual_mul_f32 v61, s72, v61
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v59, 0, 1, s23
	v_cndmask_b32_e64 v75, 0, 1, s26
	v_cndmask_b32_e64 v50, 0, 1, s27
	v_cndmask_b32_e64 v49, 0, 1, s25
	v_cndmask_b32_e64 v58, 0, 1, s29
	v_cndmask_b32_e64 v51, 0, 1, s31
	v_cndmask_b32_e64 v76, 0, 1, s33
	s_and_b32 s30, s10, s6
	v_lshlrev_b16 v49.l, 8, v49.l
	v_cndmask_b32_e64 v57, 0, 1, s30
	v_lshlrev_b16 v49.h, 8, v50.l
	v_mov_b16_e32 v50.l, v59.l
	v_lshlrev_b16 v50.h, 8, v51.l
	v_mov_b16_e32 v51.l, v76.l
	v_lshlrev_b16 v51.h, 8, v58.l
	v_mov_b16_e32 v58.l, v75.l
	v_or_b16 v57.h, v57.l, v49.l
	v_or_b16 v57.l, v50.l, v49.h
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v76, s72, v53 :: v_dual_add_nc_u32 v49, 0, v94
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v50.h, v51.l, v50.h
	v_or_b16 v50.l, v58.l, v51.h
	v_add_nc_u32_e32 v51, 0, v96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v49, v57
	ds_store_b32 v102, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v49, v51
	ds_load_b32 v50, v103
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v141, s72, v56 :: v_dual_mul_f32 v144, s72, v43
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v43, v104
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v145, s72, v44 :: v_dual_mul_f32 v148, s72, v47
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v44, v105
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v75, s72, v52 :: v_dual_mul_f32 v140, s72, v55
	v_mul_f32_e32 v147, s72, v46
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v46, v106
	ds_load_b32 v47, v107
	ds_load_b32 v51, v108
	ds_load_b32 v52, v109
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v133, s72, v54 :: v_dual_mul_f32 v142, s72, v41
	v_dual_mul_f32 v143, s72, v42 :: v_dual_mul_f32 v146, s72, v45
	v_mul_f32_e32 v149, s72, v48
	v_dual_mul_f32 v65, s72, v65 :: v_dual_mul_f32 v66, s72, v66
	v_dual_mul_f32 v71, s72, v71 :: v_dual_mul_f32 v72, s72, v72
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(6)
	v_lshrrev_b16 v41.h, 8, v50.l
	v_lshrrev_b16 v41.l, 8, v49.l
	v_and_b32_e32 v54, 0x1000000, v50
	s_waitcnt lgkmcnt(5)
	v_and_b32_e32 v150, 0x10000, v43
	v_and_b32_e32 v48, 0x1000000, v49
	v_and_b16 v45.l, 1, v41.h
	s_waitcnt lgkmcnt(4)
	v_lshrrev_b16 v41.h, 8, v44.l
	v_and_b16 v42.l, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v43.l
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v161, 0x1000000, v51
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v164, 0x1000000, v52
	v_and_b16 v55.l, 1, v41.h
	v_lshrrev_b16 v41.h, 8, v47.l
	v_and_b16 v45.h, 1, v41.l
	v_and_b32_e32 v165, 0x10000, v52
	v_and_b32_e32 v166, 1, v52
	v_and_b32_e32 v53, 0x10000, v49
	v_and_b16 v58.h, 1, v41.h
	v_and_b32_e32 v49, 1, v49
	v_lshrrev_b16 v41.l, 8, v46.l
	v_cmp_eq_u16_e64 s43, 1, v42.l
	v_cmp_ne_u32_e64 s36, 0, v54
	v_cmp_eq_u16_e64 s35, 1, v45.h
	v_cmp_ne_u32_e64 s24, 0, v150
	v_cmp_eq_u16_e64 s13, 1, v58.h
	v_cmp_ne_u32_e64 s7, 0, v161
	v_cmp_eq_u32_e64 s5, 1, v166
	v_cmp_ne_u32_e64 s1, 0, v165
	v_cmp_ne_u32_e64 s4, 0, v164
	v_and_b16 v58.l, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v51.l
	v_lshrrev_b16 v41.h, 8, v52.l
	v_cmp_eq_u32_e64 s42, 1, v49
	v_and_b32_e32 v152, 0x1000000, v44
	v_and_b32_e32 v153, 0x10000, v44
	v_and_b32_e32 v156, 0x10000, v46
	v_and_b32_e32 v157, 1, v46
	v_and_b32_e32 v162, 0x10000, v51
	v_and_b32_e32 v163, 1, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v66, s43
	v_cndmask_b32_e64 v49, 0xff800000, v72, s36
	v_cndmask_b32_e64 v51, 0xff800000, v135, s35
	v_cndmask_b32_e64 v52, 0xff800000, v136, s24
	v_cndmask_b32_e64 v66, 0xff800000, v133, s13
	v_cndmask_b32_e64 v72, 0xff800000, v145, s7
	v_cndmask_b32_e64 v133, 0xff800000, v146, s5
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v154, 1, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v148, s1
	v_cndmask_b32_e64 v136, 0xff800000, v149, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v155, 0x1000000, v46
	v_and_b32_e32 v56, 0x10000, v50
	v_and_b32_e32 v50, 1, v50
	v_and_b32_e32 v158, 0x1000000, v47
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v129, v129, v129 :: v_dual_and_b32 v160, 1, v47
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v59.l, 1, v41.l
	v_and_b16 v59.h, 1, v41.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v65, s42
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v159, 0x10000, v47
	v_and_b32_e32 v57, 0x1000000, v43
	v_and_b32_e32 v151, 1, v43
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v67, s72, v67 :: v_dual_mul_f32 v68, s72, v68
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s40, 0, v53
	v_cmp_ne_u32_e64 s41, 0, v48
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v60, s72, v60 :: v_dual_mul_f32 v63, s72, v63
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s21, 1, v55.l
	v_cmp_ne_u32_e64 s20, 0, v153
	v_cmp_ne_u32_e64 s19, 0, v152
	v_cmp_eq_u32_e64 s17, 1, v157
	v_cmp_eq_u16_e64 s18, 1, v58.l
	v_cmp_ne_u32_e64 s15, 0, v156
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v149, v72, v133
.Ltmp2:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s22, 1, v154
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v150, v135, v136
.Ltmp4:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s16, 0, v155
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v69, s72, v69 :: v_dual_mul_f32 v70, s72, v70
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s39, 1, v50
	v_cmp_eq_u16_e64 s38, 1, v45.l
	v_cmp_ne_u32_e64 s37, 0, v56
	v_cmp_eq_u32_e64 s14, 1, v160
	v_cmp_ne_u32_e64 s12, 0, v159
	v_cmp_ne_u32_e64 s11, 0, v158
	v_cmp_eq_u32_e64 s34, 1, v151
	v_cmp_ne_u32_e64 s28, 0, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v67, s40
	v_cndmask_b32_e64 v44, 0xff800000, v68, s41
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s9, 1, v163
	v_cmp_eq_u16_e64 s10, 1, v59.l
	v_cmp_ne_u32_e64 s8, 0, v162
	v_cmp_eq_u16_e64 s6, 1, v59.h
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v45, 0, v97
	v_cndmask_b32_e64 v54, 0xff800000, v61, s22
	v_cndmask_b32_e64 v55, 0xff800000, v62, s21
	v_cndmask_b32_e64 v56, 0xff800000, v63, s20
	v_cndmask_b32_e64 v57, 0xff800000, v64, s19
	v_cndmask_b32_e64 v61, 0xff800000, v137, s17
	v_cndmask_b32_e64 v62, 0xff800000, v138, s18
	v_cndmask_b32_e64 v63, 0xff800000, v139, s15
	v_cndmask_b32_e64 v64, 0xff800000, v75, s16
	v_cndmask_b32_e64 v46, 0xff800000, v69, s39
	v_cndmask_b32_e64 v47, 0xff800000, v70, s38
	v_cndmask_b32_e64 v48, 0xff800000, v71, s37
	v_cndmask_b32_e64 v65, 0xff800000, v76, s14
	v_cndmask_b32_e64 v67, 0xff800000, v140, s12
	v_cndmask_b32_e64 v68, 0xff800000, v141, s11
	v_cndmask_b32_e64 v50, 0xff800000, v134, s34
	v_cndmask_b32_e64 v53, 0xff800000, v60, s28
	v_cndmask_b32_e64 v69, 0xff800000, v142, s9
	v_cndmask_b32_e64 v70, 0xff800000, v143, s10
	v_cndmask_b32_e64 v71, 0xff800000, v144, s8
	v_cndmask_b32_e64 v134, 0xff800000, v147, s6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v45, v[41:44]
	ds_store_b128 v45, v[61:64] offset:512
	ds_store_b128 v110, v[46:49]
	ds_store_b128 v110, v[65:68] offset:512
	ds_store_b128 v111, v[50:53]
	ds_store_b128 v111, v[69:72] offset:512
	ds_store_b128 v112, v[54:57]
	ds_store_b128 v112, v[133:136] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[137:140], v113 offset:256
	ds_load_b128 v[141:144], v113
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v75, v51, v52, v53
	v_max3_f32 v76, v54, v55, v56
	v_max3_f32 v145, v57, v61, v62
	v_max3_f32 v146, v63, v64, v65
	v_max3_f32 v147, v66, v67, v68
	v_max3_f32 v148, v69, v70, v71
.Ltmp6:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v131
	.loc	1 877 25                        ; attention.py:877:25
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v45, v140, v140
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v58, v144, v144
	v_max3_f32 v59, v141, v137, v142
	v_max3_f32 v60, v138, v143, v139
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
	v_max3_f32 v59, v75, v76, v145
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v75, v45
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v76, v146, v147, v148
	v_max3_f32 v145, v149, v134, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v58, v58, v60, v59
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v58, v76, v145
	v_max_f32_e32 v59, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v60, v58, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v75, v45, v59
.Ltmp18:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v132, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v59, v131, v58, v60
	v_max_f32_e32 v129, v129, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v58, v45, v75
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v45, v131, v59 :: v_dual_sub_f32 v140, v140, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v60, v132, v58 :: v_dual_sub_f32 v131, v137, v129
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v137, v138, v129
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v76, v45
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v138, v143, v129 :: v_dual_sub_f32 v143, v42, v59
	v_sub_f32_e32 v146, v46, v59
	v_sub_f32_e32 v150, v50, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v140, v140
	.loc	1 859 30 is_stmt 1              ; attention.py:859:30
	v_mov_b16_e32 v45.h, 0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v147, v47, v59
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v75, 0, v76, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v132
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v132, v142, v129
	v_sub_f32_e32 v142, v41, v59
	v_sub_f32_e32 v145, v44, v59
	v_mad_u64_u32 v[41:42], null, s79, s47, v[74:75]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v132, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v131, s26
	v_cndmask_b32_e64 v138, 0, v138, s30
	v_cndmask_b32_e64 v140, 0, v140, s31
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v52, v59
	v_dual_sub_f32 v61, v61, v59 :: v_dual_lshlrev_b32 v42, 1, v41
	v_sub_f32_e32 v76, v141, v129
	v_sub_f32_e32 v139, v139, v129
	v_dual_sub_f32 v141, v144, v129 :: v_dual_sub_f32 v144, v43, v59
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v139, v139
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v141, v141
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v132, s27
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v60, v60
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v149, v49, v59
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v43, v41, s76, 1
	v_add_lshl_u32 v44, v41, s47, 1
	v_add_lshl_u32 v41, v41, s77, 1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v137, s29
	v_cndmask_b32_e64 v76, 0, v76, s23
	v_cndmask_b32_e64 v139, 0, v139, s33
	v_cndmask_b32_e64 v141, 0, v141, s25
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v148, v48, v59
	v_sub_f32_e32 v154, v54, v59
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v76, v131
	v_dual_add_f32 v131, v132, v137 :: v_dual_add_f32 v132, v138, v139
	v_dual_add_f32 v137, v141, v140 :: v_dual_sub_f32 v62, v62, v59
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v76, v131
.Ltmp22:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v145
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v132, v137
.Ltmp24:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v145, v152
	v_exp_f32_e32 v152, v61
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v132, v134, v59
	v_sub_f32_e32 v134, v136, v59
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v76, v131
.Ltmp26:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v131, v133, v59
	v_sub_f32_e32 v133, v135, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v136, v142
	v_exp_f32_e32 v137, v143
.Ltmp27:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v135, v76
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v144
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v60, 0, v60, s2
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s2, s69, v85
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v146
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v135, v135 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v33, v33, v75
	v_mul_f32_e32 v34, v34, v75
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v136, s42
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v35, v35, v75
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v76, v135
.Ltmp32:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v59
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v36, v36, v75
	v_mul_f32_e32 v37, v37, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v38, v38, v75 :: v_dual_mov_b32 v147, v76
	v_mul_f32_e32 v39, v39, v75
	v_mul_f32_e32 v40, v40, v75
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v139, s41
	v_cndmask_b32_e64 v138, 0, v138, s40
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v147, v147 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s2, s0, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v149
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v61, v76, v147
.Ltmp36:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v46, 0x80000000, v41, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s39
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v135, v150
.Ltmp37:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v76, v61
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v75, v75
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v140, v140
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v154
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v55, v59
	v_sub_f32_e32 v157, v57, v59
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[46:49], v46, s[64:67], 0 offen
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v135, s34
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v61, v61, v76
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v137, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.l, v136.h
	v_mov_b16_e64 v137.h, v45.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v59
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v76.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v156, v56, v59 :: v_dual_and_b32 v137, 1, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v76, v76
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v147, 1, v45
	v_mov_b16_e32 v45.l, v75.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v156
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v64, v64
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v139, v76, v147, 0x7fff
	v_add3_u32 v76, v136, v137, 0x7fff
	v_mov_b16_e64 v137.l, v138.h
	v_mov_b16_e64 v137.h, v45.h
	v_and_b32_e32 v147, 1, v45
	v_cndmask_b16 v139.h, 0x7fff, v139.h, s2
	v_cmp_o_f32_e64 s2, v136, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v136, 1, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v141, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v141, v75, v147, 0x7fff
	v_mov_b16_e64 v147.l, v140.h
	v_mov_b16_e64 v147.h, v45.h
	v_cndmask_b16 v139.l, 0x7fff, v76.h, s2
	v_mov_b16_e64 v45.l, v137.h
	v_add3_u32 v75, v138, v136, 0x7fff
	v_cmp_o_f32_e64 s2, v138, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v143, s36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v76, 1, v147
	v_cndmask_b16 v136.h, 0x7fff, v141.h, s23
	v_and_b32_e32 v141, 1, v45
	v_mov_b16_e64 v45.l, v138.h
	v_cndmask_b16 v136.l, 0x7fff, v75.h, s2
	v_add3_u32 v76, v140, v76, 0x7fff
	v_cmp_o_f32_e64 s2, v138, v138
	v_mov_b16_e64 v143.l, v142.h
	v_and_b32_e32 v140, 1, v45
	v_mov_b16_e64 v143.h, v45.h
	v_add3_u32 v141, v137, v141, 0x7fff
	v_cmp_o_f32_e64 s23, v137, v137
	v_cndmask_b16 v137.l, 0x7fff, v76.h, s25
	v_add3_u32 v140, v138, v140, 0x7fff
	v_mov_b16_e64 v138.l, v135.h
	v_mov_b16_e64 v138.h, v45.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v151, v51, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v75, 1, v143
	v_cndmask_b16 v137.h, 0x7fff, v141.h, s23
	v_cmp_o_f32_e64 s23, v142, v142
	v_and_b32_e32 v138, 1, v138
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v75, v142, v75, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v145, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.h, v45.h
	v_cndmask_b16 v140.h, 0x7fff, v140.h, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v140.l, 0x7fff, v75.h, s23
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v62, s18
	v_cndmask_b32_e64 v64, 0, v64, s16
	v_cndmask_b32_e64 v66, 0, v66, s13
	v_cndmask_b32_e64 v76, 0, v144, s35
	v_cndmask_b32_e64 v144, 0, v148, s22
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v59
	v_sub_f32_e32 v67, v67, v59
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v76.h
	v_mov_b16_e64 v145.l, v144.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v53, v59
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[54:57], v43, s[64:67], 0 offen
	buffer_load_b128 v[50:53], v42, s[64:67], 0 offen
	buffer_load_b128 v[41:44], v44, s[64:67], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v76, v76
	v_and_b32_e32 v141, 1, v45
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v67, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v64, v64
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v141, v76, v141, 0x7fff
	v_add3_u32 v76, v135, v138, 0x7fff
	v_mov_b16_e64 v138.l, v142.h
	v_mov_b16_e64 v138.h, v45.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v141.h, 0x7fff, v141.h, s2
	v_cmp_o_f32_e64 s2, v135, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v135, 1, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v149, s21
	v_cndmask_b32_e64 v67, 0, v67, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v141.l, 0x7fff, v76.h, s2
	v_and_b32_e32 v76, 1, v145
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v146, v153
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v150, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v142, v142
	v_cmp_o_f32_e64 s20, v144, v144
	v_add3_u32 v76, v144, v76, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v65, v65
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v61, v130, v60
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v71, v59
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v146, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v146.l, v145.h
	v_mov_b16_e64 v146.h, v45.h
	v_mov_b32_e32 v130, v61
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v45.l, v75.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v70, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v75, v75
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v131, v131
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v143, 1, v45
	v_mov_b16_e64 v45.l, v138.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v143, v75, v143, 0x7fff
	v_add3_u32 v75, v142, v135, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v151, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v138, v138
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s69, s69, 64
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v135.h, 0x7fff, v143.h, s21
	v_and_b32_e32 v143, 1, v45
	v_mov_b16_e64 v45.l, v142.h
	v_cndmask_b16 v135.l, 0x7fff, v75.h, s2
	v_and_b32_e32 v75, 1, v146
	v_cmp_o_f32_e64 s2, v142, v142
	v_add3_u32 v143, v138, v143, 0x7fff
	v_cndmask_b16 v138.l, 0x7fff, v76.h, s20
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v152, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v75, v145, v75, 0x7fff
	v_cmp_o_f32_e64 s17, v145, v145
	v_cndmask_b16 v138.h, 0x7fff, v143.h, s19
	v_and_b32_e32 v143, 1, v45
	v_mov_b16_e32 v45.l, v62.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v134, v134
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s69, s70
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v143, v142, v143, 0x7fff
	v_mov_b16_e64 v142.l, v76.h
	v_mov_b16_e64 v142.h, v45.h
	v_and_b32_e32 v144, 1, v45
	v_mov_b16_e32 v45.l, v64.h
	v_cndmask_b16 v143.l, 0x7fff, v75.h, s17
	v_cndmask_b16 v143.h, 0x7fff, v143.h, s2
	v_and_b32_e32 v75, 1, v142
	v_add3_u32 v142, v62, v144, 0x7fff
	v_and_b32_e32 v144, 1, v45
	v_mov_b16_e32 v45.l, v66.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v63, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v62, v62
	v_add3_u32 v62, v76, v75, 0x7fff
	v_mov_b16_e32 v75.h, v45.h
	v_permlanex16_b32 v145, v143, s78, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v142.h, 0x7fff, v142.h, s2
	v_cmp_o_f32_e64 s2, v76, v76
	v_add3_u32 v76, v64, v144, 0x7fff
	v_mov_b16_e64 v144.l, v65.h
	v_mov_b16_e64 v144.h, v45.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v142.l, 0x7fff, v62.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v63, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v64, 1, v144
	v_permlanex16_b32 v155, v142, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v144, v138, s78, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v75.l, v63.h
	v_cmp_o_f32_e64 s2, v63, v63
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v62, v63, v75, 0x7fff
	v_cndmask_b16 v75.h, 0x7fff, v76.h, s13
	v_and_b32_e32 v76, 1, v45
	v_add3_u32 v63, v65, v64, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v68, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v75.l, 0x7fff, v62.h, s2
	v_cmp_o_f32_e64 s11, v66, v66
	v_add3_u32 v68, v66, v76, 0x7fff
	v_mov_b16_e32 v76.l, v67.h
	v_mov_b16_e32 v76.h, v45.h
	v_mov_b16_e32 v45.l, v64.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v69, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v64, v64
	v_cmp_o_f32_e64 s9, v67, v67
	v_and_b32_e32 v62, 1, v76
	v_and_b32_e32 v65, 1, v45
	v_cndmask_b16 v76.l, 0x7fff, v63.h, s12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v70, s10
	v_cndmask_b32_e64 v69, 0, v133, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v62, v67, v62, 0x7fff
	v_add3_u32 v65, v64, v65, 0x7fff
	v_mov_b16_e32 v64.l, v66.h
	v_mov_b16_e32 v45.l, v63.h
	v_mov_b16_e32 v64.h, v45.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v72, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v146.h, 0x7fff, v65.h, s2
	v_cmp_o_f32_e64 s2, v63, v63
	v_and_b32_e32 v65, 1, v45
	v_and_b32_e32 v64, 1, v64
	v_mov_b16_e32 v45.l, v67.h
	v_cmp_o_f32_e64 s1, v67, v67
	v_cndmask_b16 v76.h, 0x7fff, v68.h, s11
	v_add3_u32 v65, v63, v65, 0x7fff
	v_add3_u32 v64, v66, v64, 0x7fff
	v_cndmask_b16 v146.l, 0x7fff, v62.h, s9
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v71, s8
	v_cndmask_b32_e64 v68, 0, v131, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v65.h, s2
	v_cmp_o_f32_e64 s2, v66, v66
	v_and_b32_e32 v65, 1, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v132, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v63.l, v62.h
	v_mov_b16_e32 v63.h, v45.h
	v_cndmask_b16 v72.l, 0x7fff, v64.h, s2
	v_add3_u32 v64, v67, v65, 0x7fff
	v_mov_b16_e32 v45.l, v66.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v134, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v68.h
	v_mov_b16_e32 v65.h, v45.h
	v_mov_b16_e32 v71.h, v45.h
	v_and_b32_e32 v70, 1, v45
	v_mov_b16_e32 v45.l, v67.h
	v_and_b32_e32 v63, 1, v63
	v_and_b32_e32 v65, 1, v65
	v_cmp_o_f32_e64 s5, v67, v67
	v_mov_b16_e32 v71.l, v69.h
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v63, v62, v63, 0x7fff
	v_cndmask_b16 v163.h, 0x7fff, v64.h, s1
	v_cmp_o_f32_e64 s1, v62, v62
	v_add3_u32 v62, v68, v65, 0x7fff
	v_add3_u32 v45, v67, v45, 0x7fff
	v_add3_u32 v65, v66, v70, 0x7fff
	v_cmp_o_f32_e64 s4, v68, v68
	v_cndmask_b16 v163.l, 0x7fff, v63.h, s1
	v_cmp_o_f32_e64 s2, v66, v66
	v_cndmask_b16 v165.h, 0x7fff, v45.h, s5
	v_permlanex16_b32 v45, v139, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v164.l, 0x7fff, v62.h, s4
	v_cmp_o_f32_e64 s6, v69, v69
	v_cndmask_b16 v164.h, 0x7fff, v65.h, s2
	v_permlanex16_b32 v65, v136, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v62, v45, v139, v99
	v_perm_b32 v63, v45, v139, v100
	v_permlanex16_b32 v67, v137, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v132, v141, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v156, v75, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v134, v135, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v139, v155, v142, v99
	v_perm_b32 v66, v67, v137, v99
	v_perm_b32 v67, v67, v137, v100
	v_perm_b32 v131, v132, v141, v99
	v_perm_b32 v132, v132, v141, v100
	v_perm_b32 v141, v156, v75, v99
	v_permlanex16_b32 v166, v76, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v167, v146, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v133, v134, v135, v99
	v_perm_b32 v134, v134, v135, v100
	v_perm_b32 v135, v144, v138, v99
	v_perm_b32 v137, v145, v143, v99
	v_permlanex16_b32 v168, v72, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v169, v163, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v170, v164, s78, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v70.l, v50.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v70.h, v41.l
	v_mov_b16_e32 v41.l, v50.h
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v45, v41 :: v_dual_add_nc_u32 v50, 0, v98
	v_mov_b16_e32 v41.h, v43.l
	v_mov_b16_e32 v43.l, v52.h
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v64, 1, v71
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v71.l, v54.l
	v_mov_b16_e32 v71.h, v46.l
	v_mov_b16_e32 v46.l, v54.h
	ds_store_b64 v50, v[70:71]
	ds_store_b64 v114, v[45:46]
	v_mov_b16_e32 v70.h, v42.l
	v_mov_b16_e32 v42.l, v51.h
	v_mov_b16_e32 v71.l, v55.l
	v_mov_b16_e32 v71.h, v47.l
	v_mov_b16_e32 v70.l, v51.l
	v_mov_b16_e32 v47.l, v55.h
	v_mov_b32_e32 v46, v42
	v_mov_b16_e32 v42.l, v56.l
	v_mov_b16_e32 v42.h, v48.l
	v_mov_b16_e32 v41.l, v52.l
	ds_store_b64 v115, v[70:71]
	ds_store_b64 v116, v[46:47]
	v_mov_b16_e32 v48.l, v56.h
	v_mov_b32_e32 v47, v43
	v_mov_b16_e32 v51.h, v49.l
	v_mov_b16_e32 v49.l, v57.h
	v_mov_b16_e32 v51.l, v57.l
	v_mov_b16_e32 v50.l, v53.l
	v_mov_b16_e32 v50.h, v44.l
	ds_store_b64 v117, v[41:42]
	ds_store_b64 v118, v[47:48]
	v_add_nc_u32_e32 v41, 0, v101
	v_mov_b16_e32 v44.l, v53.h
	v_mov_b32_e32 v45, v49
	ds_store_b64 v119, v[50:51]
	ds_store_b64 v120, v[44:45]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v41
	ds_load_b128 v[45:48], v121
	ds_load_b128 v[49:52], v122
	ds_load_b128 v[53:56], v123
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v64, v69, v64, 0x7fff
	v_permlanex16_b32 v69, v140, s78, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[147:150], v124
	ds_load_b128 v[151:154], v125
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v165.l, 0x7fff, v64.h, s6
	v_perm_b32 v64, v65, v136, v99
	v_perm_b32 v65, v65, v136, v100
	v_perm_b32 v68, v69, v140, v99
	v_perm_b32 v69, v69, v140, v100
	v_perm_b32 v140, v155, v142, v100
	v_perm_b32 v142, v156, v75, v100
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[155:158], v126
	ds_load_b128 v[159:162], v127
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v136, v144, v138, v100
	v_perm_b32 v138, v145, v143, v100
	v_permlanex16_b32 v171, v165, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v143, v166, v76, v99
	v_perm_b32 v144, v166, v76, v100
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[41:48], v[62:69], v[33:40]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v145, v167, v146, v99
	v_perm_b32 v146, v167, v146, v100
	v_perm_b32 v41, v168, v72, v99
	v_perm_b32 v42, v168, v72, v100
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[131:138], v[33:40]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v43, v169, v163, v99
	v_perm_b32 v44, v169, v163, v100
	v_perm_b32 v45, v170, v164, v99
	v_perm_b32 v46, v170, v164, v100
	v_perm_b32 v47, v171, v165, v99
	v_perm_b32 v48, v171, v165, v100
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[147:154], v[139:146], v[33:40]
	v_dual_mov_b32 v131, v59 :: v_dual_mov_b32 v132, v58
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[155:162], v[41:48], v[33:40]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s79, s69, s71
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s1, s69, v128
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[41:42], null, s79, s46, v[73:74]
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v156, s55 :: v_dual_mov_b32 v153, s52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s1, vcc_lo, s1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v154, s53 :: v_dual_mov_b32 v151, s50
	v_dual_mov_b32 v152, s51 :: v_dual_mov_b32 v149, s48
	v_dual_mov_b32 v155, s54 :: v_dual_lshlrev_b32 v42, 1, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v43, v41, s73, 1
	v_add_lshl_u32 v44, v41, s74, 1
	v_add_lshl_u32 v41, v41, s75, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v150, s49 :: v_dual_mov_b32 v75, 0
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
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s1, s69, v84
	v_mov_b32_e32 v76, 0
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v83, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v83, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v83, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v83, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v92
	ds_load_b128 v[41:44], v93
	ds_load_b128 v[49:52], v93 offset:2048
	ds_load_b128 v[53:56], v92 offset:2048
	ds_load_b128 v[137:140], v92 offset:4096
	ds_load_b128 v[133:136], v93 offset:4096
	ds_load_b128 v[141:144], v93 offset:6144
	ds_load_b128 v[145:148], v92 offset:6144
	ds_load_b128 v[157:160], v91
	ds_load_b128 v[165:168], v91 offset:2048
	ds_load_b128 v[161:164], v90
	ds_load_b128 v[169:172], v90 offset:2048
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s10, s44, s1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[41:48], v[25:32], v[149:156]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[49:56], v[25:32], v[149:156]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[133:140], v[25:32], v[149:156]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[141:148], v[25:32], v[149:156]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[133:136], v91 offset:4096
	ds_load_b128 v[141:144], v91 offset:6144
	ds_load_b128 v[137:140], v90 offset:4096
	ds_load_b128 v[145:148], v90 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[157:164], v[17:24], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[149:152], v89
	ds_load_b128 v[157:160], v89 offset:2048
	ds_load_b128 v[153:156], v88
	ds_load_b128 v[161:164], v88 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[165:172], v[17:24], v[57:64]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[133:140], v[17:24], v[49:56]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[141:148], v[17:24], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[133:136], v89 offset:4096
	ds_load_b128 v[141:144], v89 offset:6144
	ds_load_b128 v[137:140], v88 offset:4096
	ds_load_b128 v[145:148], v88 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[149:156], v[9:16], v[65:72]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[157:164], v[9:16], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[149:152], v87
	ds_load_b128 v[157:160], v87 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[133:140], v[9:16], v[49:56]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[141:148], v[9:16], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[133:136], v87 offset:4096
	ds_load_b128 v[141:144], v87 offset:6144
	ds_load_b128 v[153:156], v86
	ds_load_b128 v[161:164], v86 offset:2048
	ds_load_b128 v[137:140], v86 offset:4096
	ds_load_b128 v[145:148], v86 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[149:156], v[1:8], v[65:72]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[157:164], v[1:8], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[133:140], v[1:8], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[141:148], v[1:8], v[41:48]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s2, s10
	s_cbranch_execz .LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v75, s69, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s1, s58, v75
	v_add_co_ci_u32_e64 v76, null, s59, v76, s1
	global_load_b64 v[75:76], v[75:76], off
	s_branch .LBB0_2
.LBB0_5:
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
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
.LBB0_6:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v82
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
	v_dual_cndmask_b32 v3, 0, v61 :: v_dual_and_b32 v4, 12, v79
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
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
	v_dual_max_f32 v1, v1, v2 :: v_dual_and_b32 v2, 12, v80
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
	s_cbranch_execz .LBB0_8
; %bb.7:
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
.LBB0_8:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp122:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp123:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v79
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v77
.Ltmp125:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v77
	v_and_b32_e32 v2, 32, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp127:
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
.Ltmp128:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 173
		.amdhsa_next_free_sgpr 80
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 173
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8652
; TotalNumSgprs: 82
; NumVgprs: 173
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 82
; NumVGPRsForWavesPerEU: 173
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     173
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
