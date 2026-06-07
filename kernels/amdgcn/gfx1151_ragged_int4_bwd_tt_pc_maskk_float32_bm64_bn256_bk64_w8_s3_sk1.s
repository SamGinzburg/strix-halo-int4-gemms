	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 674 0                         ; ragged.py:674:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 701 20 prologue_end           ; ragged.py:701:20
	s_abs_i32 s10, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:698:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:699:21 ]
	s_add_i32 s5, s35, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_ashr_i32 s9, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s8, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 700 27 is_stmt 1              ; ragged.py:700:27
	s_mul_i32 s4, s8, s9
	.loc	1 701 20                        ; ragged.py:701:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s10, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s11, s6, s5
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s6, 1
	s_sub_i32 s12, s10, s5
	s_cmp_ge_u32 s10, s5
	s_cselect_b32 s6, s11, s6
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s6, 1
	s_cmp_ge_u32 s10, s5
	s_cselect_b32 s5, s11, s6
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s11, s8
	.loc	1 701 20                        ; ragged.py:701:20
	s_xor_b32 s5, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_cvt_f32_u32 s6, s11
	.loc	1 701 20                        ; ragged.py:701:20
	s_sub_i32 s38, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, 0, s11
	.loc	1 702 22                        ; ragged.py:702:22
	s_mul_i32 s4, s38, s4
	.loc	1 703 17                        ; ragged.py:703:17
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 702 16                        ; ragged.py:702:16
	s_sub_i32 s12, s2, s4
	.loc	1 727 35                        ; ragged.py:727:35
	s_mul_i32 s53, s38, s35
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s10, s12, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s6, s5
	s_abs_i32 s5, s12
	s_add_i32 s4, s6, s4
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s4, s5, s4
	s_mul_i32 s13, s4, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s13
	s_add_i32 s13, s4, 1
	s_sub_i32 s14, s5, s11
	s_cmp_ge_u32 s5, s11
	s_cselect_b32 s4, s13, s4
	s_cselect_b32 s5, s14, s5
	s_add_i32 s13, s4, 1
	s_cmp_ge_u32 s5, s11
	s_cselect_b32 s4, s13, s4
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s39, s38, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s11, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s11, s10
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s5, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 704 17 is_stmt 0              ; ragged.py:704:17
	s_sub_i32 s5, s12, s5
	.loc	1 710 19 is_stmt 1              ; ragged.py:710:19
	s_lshl_b64 s[12:13], s[38:39], 2
	.loc	1 707 18                        ; ragged.py:707:18
	s_lshl_b32 s52, s5, 8
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s12
	s_addc_u32 s7, s7, s13
	.loc	1 719 22                        ; ragged.py:719:22
	s_lshl_b32 s55, s3, 5
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s12, s[6:7], 0x0
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s12, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 26 is_stmt 0              ; ragged.py:711:26
	s_lshr_b32 s6, s5, 31
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s54, s5, 1
	s_mov_b32 s5, 0
	.loc	1 720 19 is_stmt 1              ; ragged.py:720:19
	s_cmp_lt_i32 s55, s54
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 761 21                        ; ragged.py:761:21
	s_add_i32 s3, s52, s53
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr3
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v98, 15, v0
	v_lshrrev_b32_e32 v100, 1, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v99, 1, v0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s39, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b32 s3, s[0:1], 0x38
	s_load_b128 s[4:7], s[0:1], 0x0
	.loc	1 735 33 is_stmt 1              ; ragged.py:735:33
	s_and_b32 s0, s12, 0x80000001
	.loc	1 720 19                        ; ragged.py:720:19
	s_mul_i32 s9, s9, s38
	.loc	1 735 33                        ; ragged.py:735:33
	s_cmp_eq_u32 s0, 1
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshrrev_b32_e32 v101, 3, v0
	.loc	1 735 33                        ; ragged.py:735:33
	s_cselect_b32 s56, -1, 0
	.loc	1 720 19                        ; ragged.py:720:19
	s_sub_i32 s1, s10, s9
	s_lshl_b32 s9, s2, 8
	s_sub_i32 s1, s1, s11
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v2, 3, v0
	s_mul_i32 s8, s8, s1
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v3, s52, v100
	.loc	1 720 19                        ; ragged.py:720:19
	s_lshl_b32 s8, s8, 8
	v_and_b32_e32 v6, 16, v0
	s_add_i32 s8, s8, s53
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshlrev_b32_e32 v65, 4, v99
	.loc	1 720 19                        ; ragged.py:720:19
	v_add3_u32 v68, s8, s9, v100
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v9, 0x80, v3
	.loc	1 723 35                        ; ragged.py:723:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s0, s38, s3
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v3
	.loc	1 720 19                        ; ragged.py:720:19
	v_add3_u32 v8, s0, s55, v101
	v_lshrrev_b32_e32 v3, 2, v6
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v66, 0x80, v68
	v_cmp_eq_u32_e64 s0, 0, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v6, s34, v8
	.loc	1 706 36                        ; ragged.py:706:36
	v_and_b32_e32 v7, 56, v2
	v_and_or_b32 v102, 0x78, v2, v3
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v120, 0, v2
	v_mov_b32_e32 v2, v1
	.loc	1 720 19                        ; ragged.py:720:19
	v_mad_u64_u32 v[66:67], null, s3, v66, v[65:66]
	v_or_b32_e32 v4, 0x3f0, v0
	s_lshl_b32 s2, s11, 6
	v_or_b32_e32 v5, 0x7f0, v0
	v_sub_nc_u32_e32 v8, s54, v65
	s_lshl_b32 s10, s10, 6
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v121, 0, v4
	v_mov_b32_e32 v4, v1
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v10, s39, v7
	.loc	1 720 19                        ; ragged.py:720:19
	v_add3_u32 v3, v6, s2, v7
	v_mad_u64_u32 v[67:68], null, s3, v68, v[65:66]
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s1, s35, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s2, s34, v10
	.loc	1 720 19                        ; ragged.py:720:19
	v_subrev_nc_u32_e32 v103, s10, v3
	v_add_nc_u32_e32 v104, -16, v8
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v105, -15, v8
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v106, -14, v8
	v_add_nc_u32_e32 v107, -13, v8
	v_dual_mov_b32 v9, v1 :: v_dual_add_nc_u32 v108, -12, v8
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v109, -11, v8
	v_dual_mov_b32 v11, v1 :: v_dual_add_nc_u32 v110, -10, v8
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v111, -9, v8
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v112, -8, v8
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v113, -7, v8
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v114, -6, v8
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v115, -5, v8
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v116, -4, v8
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v117, -3, v8
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v118, -2, v8
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v119, -1, v8
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v122, 0, v5
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v8, v1
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v123, 0, v98
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	v_xor_b32_e32 v124, 4, v102
	v_xad_u32 v125, v101, -1, s54
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s49, s7, 0xffff
	s_lshl_b32 s57, s34, 5
	s_mov_b32 s44, s4
	s_mov_b32 s45, s5
	s_mov_b32 s48, s6
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 734 30                        ; ragged.py:734:30
	v_add_nc_u32_e32 v69, s55, v101
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s3, s55, v125
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v71, s55, v65
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s12, s55, v111
	v_cmp_eq_u32_e64 s13, s55, v110
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s20, s54, v69
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s62, s56, s3
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s3, s54, v71
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s4, s55, v119
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v69, 1, v71
	v_add_nc_u32_e32 v72, 2, v71
	v_add_nc_u32_e32 v73, 3, v71
	v_add_nc_u32_e32 v74, 4, v71
	v_add_nc_u32_e32 v75, 5, v71
	v_add_nc_u32_e32 v76, 6, v71
	v_add_nc_u32_e32 v77, 7, v71
	v_add_nc_u32_e32 v92, 8, v71
	v_add_nc_u32_e32 v93, 9, v71
	v_add_nc_u32_e32 v94, 10, v71
	v_add_nc_u32_e32 v95, 11, v71
	v_add_nc_u32_e32 v96, 12, v71
	v_add_nc_u32_e32 v97, 13, v71
	v_add_nc_u32_e32 v126, 14, v71
	v_add_nc_u32_e32 v71, 15, v71
	v_add_nc_u32_e32 v70, s55, v67
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s5, s55, v118
	.loc	1 735 32 is_stmt 0              ; ragged.py:735:32
	s_and_b32 s73, s56, s12
	.loc	1 736 66 is_stmt 1              ; ragged.py:736:66
	s_and_b32 s12, s2, s20
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s72, s56, s13
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s13, vcc_lo, s3
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s6, s55, v116
	v_cmp_eq_u32_e64 s7, s55, v117
	v_cmp_eq_u32_e64 s16, s55, v107
	.loc	1 735 32 is_stmt 0              ; ragged.py:735:32
	s_and_b32 s74, s56, s4
	.loc	1 734 30 is_stmt 1              ; ragged.py:734:30
	v_cmp_gt_i32_e64 s4, s54, v71
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v71, 0x80000000, v103, s12
	v_add_nc_u32_e32 v78, 1, v70
	v_add_nc_u32_e32 v79, 2, v70
	v_add_nc_u32_e32 v80, 3, v70
	v_add_nc_u32_e32 v81, 4, v70
	v_add_nc_u32_e32 v82, 5, v70
	v_add_nc_u32_e32 v83, 6, v70
	v_add_nc_u32_e32 v84, 7, v70
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s66, s56, s5
	v_add_nc_u32_e32 v127, 8, v70
	v_add_nc_u32_e32 v128, 9, v70
	v_add_nc_u32_e32 v129, 10, v70
	v_add_nc_u32_e32 v130, 11, v70
	v_add_nc_u32_e32 v131, 12, v70
	v_add_nc_u32_e32 v132, 13, v70
	v_add_nc_u32_e32 v133, 14, v70
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s5, s54, v69
	v_add_nc_u32_e32 v69, 15, v70
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s13
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s65, s56, s6
	s_and_b32 s63, s56, s7
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s6, s54, v72
	v_cmp_gt_i32_e64 s7, s54, v73
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s69, s56, s16
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s16, s54, v93
	.loc	1 736 34                        ; ragged.py:736:34
	buffer_load_b64 v[72:73], v71, s[44:47], 0 offen
	.loc	1 737 34                        ; ragged.py:737:34
	buffer_load_u8 v93, v70, s[48:51], 0 offen
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s8, s55, v115
	v_cmp_eq_u32_e64 s9, s55, v114
	v_cmp_eq_u32_e64 s10, s55, v112
	v_cmp_eq_u32_e64 s11, s55, v113
	v_cmp_eq_u32_e64 s14, s55, v108
	v_cmp_eq_u32_e64 s15, s55, v109
	v_cmp_eq_u32_e64 s17, s55, v106
	v_cmp_eq_u32_e64 s18, s55, v104
	v_cmp_eq_u32_e64 s19, s55, v105
	v_add_nc_u32_e32 v68, s55, v66
	.loc	1 735 32 is_stmt 0              ; ragged.py:735:32
	s_and_b32 s61, s56, s8
	.loc	1 734 30 is_stmt 1              ; ragged.py:734:30
	v_cmp_gt_i32_e64 s8, s54, v74
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s60, s56, s9
	s_and_b32 s59, s56, s10
	s_and_b32 s58, s56, s11
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s9, s54, v75
	v_cmp_gt_i32_e64 s10, s54, v76
	v_cmp_gt_i32_e64 s11, s54, v77
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s71, s56, s14
	s_and_b32 s70, s56, s15
	s_and_b32 s68, s56, s17
	s_and_b32 s67, s56, s18
	s_and_b32 s64, s56, s19
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s14, s1, s3
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s15, s54, v92
	v_cmp_gt_i32_e64 s17, s54, v94
	v_cmp_gt_i32_e64 s18, s54, v95
	v_cmp_gt_i32_e64 s19, s54, v96
	v_cmp_gt_i32_e64 s20, s54, v97
	v_cmp_gt_i32_e64 s3, s54, v126
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s12, vcc_lo, s5
	v_add_nc_u32_e32 v85, 1, v68
	v_add_nc_u32_e32 v86, 2, v68
	v_add_nc_u32_e32 v87, 3, v68
	v_add_nc_u32_e32 v88, 4, v68
	v_add_nc_u32_e32 v89, 5, v68
	v_add_nc_u32_e32 v90, 6, v68
	v_add_nc_u32_e32 v91, 7, v68
	v_add_nc_u32_e32 v134, 8, v68
	v_add_nc_u32_e32 v135, 9, v68
	.loc	1 737 34 is_stmt 0              ; ragged.py:737:34
	v_cndmask_b32_e64 v92, 0x80000000, v68, s14
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s14, vcc_lo, s7
	v_add_nc_u32_e32 v74, 10, v68
	v_add_nc_u32_e32 v75, 11, v68
	v_add_nc_u32_e32 v76, 12, v68
	v_add_nc_u32_e32 v77, 13, v68
	s_and_b32 s13, vcc_lo, s6
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v70, 0x80000000, v78, s12
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s21, vcc_lo, s8
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v78, 0x80000000, v80, s14
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s22, vcc_lo, s9
	s_and_b32 s23, vcc_lo, s10
	s_and_b32 s24, vcc_lo, s11
	s_and_b32 s5, s1, s5
	s_and_b32 s6, s1, s6
	s_and_b32 s7, s1, s7
	s_and_b32 s8, s1, s8
	s_and_b32 s9, s1, s9
	s_and_b32 s10, s1, s10
	s_and_b32 s11, s1, s11
	s_and_b32 s25, vcc_lo, s15
	s_and_b32 s26, vcc_lo, s16
	s_and_b32 s27, vcc_lo, s17
	s_and_b32 s28, vcc_lo, s18
	s_and_b32 s29, vcc_lo, s19
	s_and_b32 s30, vcc_lo, s20
	s_and_b32 s31, vcc_lo, s3
	s_and_b32 s15, s1, s15
	s_and_b32 s16, s1, s16
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v71, 0x80000000, v79, s13
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s33, vcc_lo, s4
	s_and_b32 s17, s1, s17
	s_and_b32 s18, s1, s18
	s_and_b32 s19, s1, s19
	s_and_b32 s20, s1, s20
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v79, 0x80000000, v81, s21
	v_cndmask_b32_e64 v80, 0x80000000, v82, s22
	v_cndmask_b32_e64 v81, 0x80000000, v83, s23
	v_cndmask_b32_e64 v82, 0x80000000, v84, s24
	buffer_load_u8 v83, v92, s[48:51], 0 offen
	v_cndmask_b32_e64 v84, 0x80000000, v85, s5
	v_cndmask_b32_e64 v85, 0x80000000, v86, s6
	v_cndmask_b32_e64 v86, 0x80000000, v87, s7
	v_cndmask_b32_e64 v87, 0x80000000, v88, s8
	v_cndmask_b32_e64 v88, 0x80000000, v89, s9
	v_cndmask_b32_e64 v89, 0x80000000, v90, s10
	v_cndmask_b32_e64 v90, 0x80000000, v91, s11
	v_cndmask_b32_e64 v91, 0x80000000, v127, s25
	v_cndmask_b32_e64 v92, 0x80000000, v128, s26
	v_cndmask_b32_e64 v94, 0x80000000, v129, s27
	v_cndmask_b32_e64 v95, 0x80000000, v130, s28
	v_cndmask_b32_e64 v96, 0x80000000, v131, s29
	v_cndmask_b32_e64 v97, 0x80000000, v132, s30
	v_cndmask_b32_e64 v126, 0x80000000, v133, s31
	v_cndmask_b32_e64 v127, 0x80000000, v134, s15
	v_cndmask_b32_e64 v128, 0x80000000, v135, s16
	v_cndmask_b32_e64 v69, 0x80000000, v69, s33
	v_cndmask_b32_e64 v74, 0x80000000, v74, s17
	v_cndmask_b32_e64 v75, 0x80000000, v75, s18
	v_cndmask_b32_e64 v76, 0x80000000, v76, s19
	v_cndmask_b32_e64 v77, 0x80000000, v77, s20
	s_clause 0x1b
	buffer_load_u8 v129, v70, s[48:51], 0 offen
	buffer_load_u8 v78, v78, s[48:51], 0 offen
	buffer_load_u8 v130, v71, s[48:51], 0 offen
	buffer_load_u8 v79, v79, s[48:51], 0 offen
	buffer_load_u8 v80, v80, s[48:51], 0 offen
	buffer_load_u8 v82, v82, s[48:51], 0 offen
	buffer_load_u8 v81, v81, s[48:51], 0 offen
	buffer_load_u8 v84, v84, s[48:51], 0 offen
	buffer_load_u8 v86, v86, s[48:51], 0 offen
	buffer_load_u8 v85, v85, s[48:51], 0 offen
	buffer_load_u8 v87, v87, s[48:51], 0 offen
	buffer_load_u8 v88, v88, s[48:51], 0 offen
	buffer_load_u8 v90, v90, s[48:51], 0 offen
	buffer_load_u8 v89, v89, s[48:51], 0 offen
	buffer_load_u8 v91, v91, s[48:51], 0 offen
	buffer_load_u8 v92, v92, s[48:51], 0 offen
	buffer_load_u8 v95, v95, s[48:51], 0 offen
	buffer_load_u8 v94, v94, s[48:51], 0 offen
	buffer_load_u8 v96, v96, s[48:51], 0 offen
	buffer_load_u8 v97, v97, s[48:51], 0 offen
	buffer_load_u8 v131, v69, s[48:51], 0 offen
	buffer_load_u8 v126, v126, s[48:51], 0 offen
	buffer_load_u8 v127, v127, s[48:51], 0 offen
	buffer_load_u8 v128, v128, s[48:51], 0 offen
	buffer_load_u8 v132, v75, s[48:51], 0 offen
	buffer_load_u8 v133, v74, s[48:51], 0 offen
	buffer_load_u8 v134, v76, s[48:51], 0 offen
	buffer_load_u8 v135, v77, s[48:51], 0 offen
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s4, s1, s4
	s_and_b32 s3, s1, s3
	.loc	1 720 19 is_stmt 1              ; ragged.py:720:19
	v_add_nc_u32_e32 v103, s57, v103
	.loc	1 750 17                        ; ragged.py:750:17
	s_add_i32 s55, s55, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 720 19                        ; ragged.py:720:19
	s_cmp_lt_i32 s55, s54
	.loc	1 736 34                        ; ragged.py:736:34
	s_waitcnt vmcnt(30)
	v_lshrrev_b64 v[70:71], 24, v[72:73]
	v_lshrrev_b32_e32 v71, 8, v73
	v_lshrrev_b32_e32 v74, 24, v73
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(29)
	v_and_b16 v71.h, v93.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 738 62                        ; ragged.py:738:62
	v_and_b16 v69.l, v70.l, 15
	v_and_b16 v69.h, v71.l, 15
	v_and_b16 v70.h, v74.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v71.h, v93.l, v71.h, s74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v70.l, v70.l, v69.l, s62
	.loc	1 738 62 is_stmt 0              ; ragged.py:738:62
	v_and_b16 v69.l, v73.l, 15
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v69.h, v71.l, v69.h, s62
	.loc	1 738 62                        ; ragged.py:738:62
	v_and_b16 v71.l, v73.h, 15
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v70.h, v74.l, v70.h, s62
	v_lshlrev_b16 v70.l, 8, v70.l
	v_cndmask_b16 v69.l, v73.l, v69.l, s62
	v_lshlrev_b16 v69.h, 8, v69.h
	v_cndmask_b16 v71.l, v73.h, v71.l, s62
	.loc	1 736 34 is_stmt 1              ; ragged.py:736:34
	v_lshrrev_b32_e32 v73, 8, v72
	.loc	1 738 34                        ; ragged.py:738:34
	v_lshlrev_b16 v70.h, 8, v70.h
	v_and_b16 v69.l, 0xff, v69.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b16 v71.l, 0xff, v71.l
	v_or_b16 v69.l, v69.l, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v69.h, v71.l, v70.h
	.loc	1 738 62 is_stmt 0              ; ragged.py:738:62
	v_and_b16 v70.h, v72.l, 15
	v_and_b16 v71.l, v72.h, 15
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v70.h, v72.l, v70.h, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v71.l, v72.h, v71.l, s62
	.loc	1 738 62                        ; ragged.py:738:62
	v_and_b16 v72.h, v73.l, 15
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v72.h, v73.l, v72.h, s62
	.loc	1 739 62 is_stmt 1              ; ragged.py:739:62
	s_waitcnt vmcnt(27)
	v_and_b16 v73.l, v129.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v73.h, v78.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v74.l, v130.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v74.h, v79.l, 15
	s_waitcnt vmcnt(23)
	v_and_b16 v75.l, v80.l, 15
	v_and_b16 v72.l, v83.l, 15
	.loc	1 739 34 is_stmt 0              ; ragged.py:739:34
	v_cndmask_b16 v73.h, v78.l, v73.h, s65
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(21)
	v_and_b16 v76.l, v81.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v74.h, v79.l, v74.h, s61
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(18)
	v_and_b16 v77.h, v85.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v78.l, v87.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v78.h, v88.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v72.l, v83.l, v72.l, s74
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v75.h, v82.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v76.l, v81.l, v76.l, s58
	v_cndmask_b16 v78.l, v87.l, v78.l, s61
	.loc	1 737 34 is_stmt 1              ; ragged.py:737:34
	v_add_nc_u32_e32 v87, 15, v68
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v78.h, v88.l, v78.h, s60
	v_add_nc_u32_e32 v68, 14, v68
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v76.h, v84.l, 15
	v_and_b16 v77.l, v86.l, 15
	.loc	1 737 34 is_stmt 1              ; ragged.py:737:34
	v_cndmask_b32_e64 v87, 0x80000000, v87, s4
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v77.h, v85.l, v77.h, s63
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(15)
	v_and_b16 v79.l, v90.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v80.h, v92.l, 15
	.loc	1 737 34                        ; ragged.py:737:34
	buffer_load_u8 v88, v87, s[48:51], 0 offen
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(12)
	v_and_b16 v81.l, v95.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v82.h, v97.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v83.l, v131.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v84.h, v128.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v85.l, v132.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v86.h, v135.l, 15
	.loc	1 739 34 is_stmt 0              ; ragged.py:739:34
	v_cndmask_b16 v73.l, v129.l, v73.l, s66
	v_cndmask_b16 v75.l, v80.l, v75.l, s60
	v_cndmask_b16 v75.h, v82.l, v75.h, s59
	v_cndmask_b16 v76.h, v84.l, v76.h, s66
	v_cndmask_b16 v77.l, v86.l, v77.l, s65
	v_cndmask_b16 v79.l, v90.l, v79.l, s59
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v79.h, v89.l, 15
	v_and_b16 v80.l, v91.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v80.h, v92.l, v80.h, s72
	v_cndmask_b16 v81.l, v95.l, v81.l, s71
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v81.h, v94.l, 15
	v_and_b16 v82.l, v96.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v82.h, v97.l, v82.h, s68
	v_cndmask_b16 v83.l, v131.l, v83.l, s67
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v83.h, v126.l, 15
	v_and_b16 v84.l, v127.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v84.h, v128.l, v84.h, s72
	v_cndmask_b16 v85.l, v132.l, v85.l, s71
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v85.h, v133.l, 15
	v_and_b16 v86.l, v134.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v86.h, v135.l, v86.h, s68
	v_cndmask_b16 v74.l, v130.l, v74.l, s63
	v_cndmask_b16 v79.h, v89.l, v79.h, s58
	v_cndmask_b16 v80.l, v91.l, v80.l, s73
	v_cndmask_b16 v81.h, v94.l, v81.h, s70
	v_cndmask_b16 v82.l, v96.l, v82.l, s69
	v_cndmask_b16 v83.h, v126.l, v83.h, s64
	v_cndmask_b16 v84.l, v127.l, v84.l, s73
	v_cndmask_b16 v85.h, v133.l, v85.h, s70
	v_cndmask_b16 v86.l, v134.l, v86.l, s69
	v_lshlrev_b16 v73.l, 8, v73.l
	v_lshlrev_b16 v75.l, 8, v75.l
	v_lshlrev_b16 v76.h, 8, v76.h
	v_lshlrev_b16 v78.h, 8, v78.h
	v_lshlrev_b16 v80.h, 8, v80.h
	v_lshlrev_b16 v82.h, 8, v82.h
	v_lshlrev_b16 v84.h, 8, v84.h
	v_lshlrev_b16 v86.h, 8, v86.h
	v_or_b16 v72.l, v72.l, v76.h
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(0)
	v_and_b16 v87.l, v88.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v87.l, v88.l, v87.l, s67
	.loc	1 737 34 is_stmt 1              ; ragged.py:737:34
	buffer_load_u8 v88, v68, s[48:51], 0 offen
	.loc	1 738 34                        ; ragged.py:738:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(0)
	v_and_b16 v68.l, v88.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 739 34 is_stmt 0              ; ragged.py:739:34
	v_cndmask_b16 v68.h, v88.l, v68.l, s64
	.loc	1 738 34 is_stmt 1              ; ragged.py:738:34
	v_and_b16 v68.l, 0xff, v70.h
	v_and_b16 v70.h, 0xff, v71.l
	v_lshlrev_b16 v71.l, 8, v72.h
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v72.h, 8, v73.h
	v_lshlrev_b16 v73.h, 8, v75.h
	v_lshlrev_b16 v75.h, 8, v77.l
	v_lshlrev_b16 v77.l, 8, v79.l
	v_lshlrev_b16 v79.l, 8, v81.l
	v_lshlrev_b16 v81.l, 8, v83.l
	v_lshlrev_b16 v83.l, 8, v85.l
	v_lshlrev_b16 v85.l, 8, v87.l
	.loc	1 738 34                        ; ragged.py:738:34
	v_or_b16 v68.l, v68.l, v71.l
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v87.h, v74.l, v72.h
	v_or_b16 v87.l, v71.h, v73.l
	v_or_b16 v71.h, v76.l, v73.h
	v_or_b16 v71.l, v74.h, v75.l
	v_or_b16 v72.h, v77.h, v75.h
	v_or_b16 v73.h, v79.h, v77.l
	v_or_b16 v73.l, v78.l, v78.h
	v_or_b16 v74.h, v81.h, v79.l
	v_or_b16 v74.l, v80.l, v80.h
	v_or_b16 v75.h, v83.h, v81.l
	v_or_b16 v75.l, v82.l, v82.h
	v_or_b16 v76.h, v85.h, v83.l
	v_or_b16 v76.l, v84.l, v84.h
	v_or_b16 v77.h, v68.h, v85.l
	v_or_b16 v77.l, v86.l, v86.h
	.loc	1 738 34                        ; ragged.py:738:34
	v_or_b16 v68.h, v70.h, v70.l
	.loc	1 739 34                        ; ragged.py:739:34
	ds_bpermute_b32 v80, v102, v87
	ds_bpermute_b32 v81, v124, v87
	ds_bpermute_b32 v82, v102, v71
	ds_bpermute_b32 v83, v124, v71
	ds_bpermute_b32 v84, v102, v72
	ds_bpermute_b32 v85, v124, v72
	ds_bpermute_b32 v86, v102, v73
	ds_bpermute_b32 v87, v124, v73
	ds_bpermute_b32 v88, v102, v74
	ds_bpermute_b32 v89, v124, v74
	ds_bpermute_b32 v90, v102, v75
	ds_bpermute_b32 v91, v124, v75
	ds_bpermute_b32 v92, v102, v76
	ds_bpermute_b32 v93, v124, v76
	ds_bpermute_b32 v94, v102, v77
	ds_bpermute_b32 v95, v124, v77
	.loc	1 738 34                        ; ragged.py:738:34
	ds_store_b64 v120, v[68:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 740 27                        ; ragged.py:740:27
	ds_load_u8 v68, v123 offset:320
	ds_load_u8 v69, v123 offset:256
	ds_load_u8 v70, v123 offset:336
	ds_load_u8 v71, v123 offset:448
	ds_load_u8 v72, v123 offset:384
	ds_load_u8 v73, v123 offset:64
	ds_load_u8 v74, v123
	ds_load_u8 v75, v123 offset:192
	ds_load_u8 v76, v123 offset:128
	ds_load_u8 v77, v123 offset:272
	ds_load_u8 v78, v123 offset:352
	ds_load_u8 v79, v123 offset:288
	ds_load_u8 v96, v123 offset:368
	ds_load_u8 v97, v123 offset:304
	ds_load_u8 v126, v123 offset:464
	ds_load_u8 v127, v123 offset:400
	ds_load_u8 v128, v123 offset:480
	ds_load_u8 v129, v123 offset:416
	ds_load_u8 v130, v123 offset:16
	ds_load_u8 v131, v123 offset:80
	ds_load_u8 v132, v123 offset:208
	ds_load_u8 v133, v123 offset:144
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v134, v123 offset:496
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v69, v72, v71, 0xc0c0004
	ds_load_u8 v72, v123 offset:432
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v71, v74, v73, 0xc0c0004
	ds_load_u8 v73, v123 offset:32
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	ds_load_u8 v75, v123 offset:96
	v_lshl_or_b32 v69, v69, 16, v68
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v70, v77, v70, 0xc0c0004
	ds_load_u8 v77, v123 offset:112
	v_lshl_or_b32 v68, v74, 16, v71
	ds_load_u8 v74, v123 offset:224
	ds_load_u8 v76, v123 offset:160
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v71, v127, v126, 0xc0c0004
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v79, v129, v128, 0xc0c0004
	ds_load_u8 v128, v123 offset:784
	ds_load_u8 v135, v123 offset:800
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v127, v130, v131, 0xc0c0004
	ds_load_u8 v130, v123 offset:240
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v131, v133, v132, 0xc0c0004
	ds_load_u8 v132, v123 offset:176
	ds_load_u8 v126, v123 offset:48
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v133, v123 offset:848
	v_lshl_or_b32 v70, v131, 16, v127
	ds_load_u8 v127, v123 offset:832
	ds_load_u8 v131, v123 offset:768
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v75, v73, v75, 0xc0c0004
	v_lshl_or_b32 v73, v79, 16, v78
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b32_e64 v78, v85, v84, s0
	v_cndmask_b32_e64 v79, v87, v86, s0
	.loc	1 740 27                        ; ragged.py:740:27
	ds_load_u8 v140, v123 offset:512
	ds_load_u8 v141, v123 offset:592
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v74, v76, v74, 0xc0c0004
	v_perm_b32 v76, v97, v96, 0xc0c0004
	v_perm_b32 v97, v72, v134, 0xc0c0004
	ds_load_u8 v134, v123 offset:816
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[70:71], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v72, v74, 16, v75
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b32_e64 v74, v81, v80, s0
	v_cndmask_b32_e64 v75, v83, v82, s0
	.loc	1 740 27                        ; ragged.py:740:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[78:79], v[68:69], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v130, v132, v130, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v126, v126, v77, 0xc0c0004
	v_lshl_or_b32 v77, v97, 16, v76
	v_wmma_i32_16x16x16_iu4 v[17:24], v[74:75], v[70:71], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[74:75], v[72:73], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[78:79], v[72:73], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v76, v130, 16, v126
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b32_e64 v72, v84, v85, s0
	v_cndmask_b32_e64 v73, v86, v87, s0
	v_cndmask_b32_e64 v70, v88, v89, s0
	.loc	1 740 27                        ; ragged.py:740:27
	ds_load_u8 v84, v123 offset:560
	ds_load_u8 v86, v123 offset:736
	v_wmma_i32_16x16x16_iu4 v[49:56], v[74:75], v[76:77], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[78:79], v[76:77], v[57:64] neg_lo:[1,1,0]
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b32_e64 v76, v89, v88, s0
	.loc	1 740 27                        ; ragged.py:740:27
	ds_load_u8 v89, v123 offset:752
	ds_load_u8 v88, v123 offset:672
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[68:69], v[1:8] neg_lo:[1,1,0]
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b32_e64 v69, v82, v83, s0
	.loc	1 740 27                        ; ragged.py:740:27
	ds_load_u8 v82, v123 offset:720
	ds_load_u8 v83, v123 offset:656
	ds_load_u8 v129, v123 offset:864
	ds_load_u8 v96, v123 offset:880
	ds_load_u8 v136, v123 offset:960
	ds_load_u8 v138, v123 offset:944
	ds_load_u8 v139, v123 offset:576
	ds_load_u8 v142, v123 offset:528
	ds_load_u8 v143, v123 offset:608
	ds_load_u8 v144, v123 offset:544
	ds_load_u8 v145, v123 offset:704
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b32_e64 v68, v80, v81, s0
	v_cndmask_b32_e64 v77, v91, v90, s0
	v_cndmask_b32_e64 v71, v90, v91, s0
	v_cndmask_b32_e64 v78, v93, v92, s0
	v_cndmask_b32_e64 v74, v92, v93, s0
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v81, v131, v127, 0xc0c0004
	ds_load_u8 v91, v123 offset:1280
	ds_load_u8 v93, v123 offset:1344
	ds_load_u8 v131, v123 offset:1472
	ds_load_u8 v80, v123 offset:640
	ds_load_u8 v146, v123 offset:624
	ds_load_u8 v97, v123 offset:976
	ds_load_u8 v126, v123 offset:912
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v86, v88, v86, 0xc0c0004
	ds_load_u8 v88, v123 offset:1088
	ds_load_u8 v132, v123 offset:896
	ds_load_u8 v130, v123 offset:992
	ds_load_u8 v137, v123 offset:928
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b32_e64 v79, v95, v94, s0
	v_cndmask_b32_e64 v75, v94, v95, s0
	.loc	1 740 27                        ; ragged.py:740:27
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v94, v142, v141, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_perm_b32 v87, v140, v139, 0xc0c0004
	v_perm_b32 v90, v128, v133, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v128, v144, v143, 0xc0c0004
	v_perm_b32 v96, v134, v96, 0xc0c0004
	v_lshl_or_b32 v82, v82, 16, v94
	v_perm_b32 v94, v135, v129, 0xc0c0004
	ds_load_u8 v95, v123 offset:1360
	ds_load_u8 v135, v123 offset:1424
	ds_load_u8 v133, v123 offset:1104
	ds_load_u8 v134, v123 offset:1296
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v80, v80, v145, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v92, v126, v97, 0xc0c0004
	v_perm_b32 v84, v84, v146, 0xc0c0004
	ds_load_u8 v97, v123 offset:1376
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v85, v132, v136, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v126, v137, v130, 0xc0c0004
	v_lshl_or_b32 v80, v80, 16, v87
	v_lshl_or_b32 v83, v92, 16, v90
	ds_load_u8 v90, v123 offset:1392
	ds_load_u8 v92, v123 offset:1408
	v_lshl_or_b32 v81, v85, 16, v81
	ds_load_u8 v85, v123 offset:688
	ds_load_u8 v87, v121
	v_lshl_or_b32 v127, v126, 16, v94
	v_lshl_or_b32 v126, v86, 16, v128
	ds_load_u8 v86, v123 offset:1152
	ds_load_u8 v94, v123 offset:1216
	ds_load_u8 v130, v123 offset:1488
	ds_load_u8 v132, v123 offset:1024
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[80:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[78:79], v[80:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[82:83], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[82:83], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[76:77], v[126:127], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[78:79], v[126:127], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v85, v85, v89, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v138, v87, 0xc0c0004
	ds_load_u8 v89, v123 offset:1232
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v86, v86, v94, 0xc0c0004
	v_lshl_or_b32 v128, v85, 16, v84
	v_perm_b32 v85, v92, v131, 0xc0c0004
	ds_load_u8 v92, v123 offset:1504
	ds_load_u8 v94, v123 offset:1440
	v_lshl_or_b32 v129, v87, 16, v96
	ds_load_u8 v87, v123 offset:1040
	ds_load_u8 v96, v123 offset:1168
	v_perm_b32 v84, v91, v93, 0xc0c0004
	ds_load_u8 v93, v123 offset:1312
	ds_load_u8 v91, v123 offset:1328
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v130, v135, v130, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[76:77], v[128:129], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v85, v85, 16, v84
	v_wmma_i32_16x16x16_iu4 v[57:64], v[78:79], v[128:129], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v92, v94, v92, 0xc0c0004
	ds_load_u8 v94, v123 offset:1200
	v_perm_b32 v88, v132, v88, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v133, v87, v133, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_lshl_or_b32 v84, v86, 16, v88
	ds_load_u8 v88, v123 offset:1120
	ds_load_u8 v131, v123 offset:1248
	v_perm_b32 v86, v134, v95, 0xc0c0004
	ds_load_u8 v95, v123 offset:1056
	ds_load_u8 v134, v123 offset:1264
	ds_load_u8 v132, v123 offset:1184
	v_perm_b32 v89, v96, v89, 0xc0c0004
	ds_load_u8 v96, v123 offset:1520
	v_lshl_or_b32 v87, v130, 16, v86
	v_wmma_i32_16x16x16_iu4 v[1:8], v[68:69], v[84:85], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[84:85], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v89, 16, v133
	ds_load_u8 v130, v123 offset:1456
	ds_load_u8 v133, v123 offset:1136
	v_perm_b32 v89, v93, v97, 0xc0c0004
	ds_load_u8 v93, v123 offset:1072
	v_wmma_i32_16x16x16_iu4 v[17:24], v[68:69], v[86:87], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[86:87], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v92, 16, v89
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v88, v95, v88, 0xc0c0004
	ds_load_u8 v95, v123 offset:1856
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v97, v132, v131, 0xc0c0004
	ds_load_u8 v131, v123 offset:1792
	ds_load_u8 v132, v123 offset:1536
	v_perm_b32 v94, v94, v134, 0xc0c0004
	v_lshl_or_b32 v88, v97, 16, v88
	ds_load_u8 v92, v123 offset:1920
	ds_load_u8 v97, v123 offset:1984
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v93, v93, v133, 0xc0c0004
	ds_load_u8 v133, v123 offset:1728
	v_perm_b32 v91, v130, v96, 0xc0c0004
	ds_load_u8 v96, v123 offset:1600
	ds_load_u8 v130, v123 offset:1664
	v_wmma_i32_16x16x16_iu4 v[33:40], v[68:69], v[88:89], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[88:89], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v91, v91, 16, v90
	v_lshl_or_b32 v90, v94, 16, v93
	ds_load_u8 v94, v123 offset:1872
	ds_load_u8 v134, v123 offset:2000
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v93, v131, v95, 0xc0c0004
	ds_load_u8 v131, v123 offset:1936
	ds_load_u8 v95, v123 offset:1616
	v_wmma_i32_16x16x16_iu4 v[49:56], v[68:69], v[90:91], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[90:91], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v92, v92, v97, 0xc0c0004
	ds_load_u8 v97, v123 offset:1808
	v_lshl_or_b32 v93, v92, 16, v93
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v96, v132, v96, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v130, v130, v133, 0xc0c0004
	ds_load_u8 v133, v123 offset:2016
	v_lshl_or_b32 v92, v130, 16, v96
	ds_load_u8 v96, v123 offset:1744
	ds_load_u8 v130, v123 offset:1680
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[92:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[92:93], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v130, v96, 0xc0c0004
	ds_load_u8 v130, v123 offset:1952
	v_perm_b32 v131, v131, v134, 0xc0c0004
	ds_load_u8 v134, v123 offset:1824
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v130, v130, v133, 0xc0c0004
	ds_load_u8 v133, v123 offset:1696
	ds_load_u8 v132, v123 offset:1552
	v_perm_b32 v94, v97, v94, 0xc0c0004
	ds_load_u8 v97, v123 offset:1888
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v132, v132, v95, 0xc0c0004
	v_lshl_or_b32 v95, v131, 16, v94
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v94, v96, 16, v132
	ds_load_u8 v96, v123 offset:1632
	ds_load_u8 v131, v123 offset:1760
	ds_load_u8 v132, v123 offset:1568
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[94:95], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[74:75], v[94:95], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v131, v133, v131, 0xc0c0004
	ds_load_u8 v133, v123 offset:1584
	v_perm_b32 v97, v134, v97, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v96, v132, v96, 0xc0c0004
	ds_load_u8 v132, v123 offset:1648
	v_lshl_or_b32 v97, v130, 16, v97
	v_lshl_or_b32 v96, v131, 16, v96
	ds_load_u8 v130, v123 offset:1776
	ds_load_u8 v131, v123 offset:1712
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[96:97], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[74:75], v[96:97], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v123 offset:1840
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v123 offset:1904
	v_lshl_or_b32 v130, v130, 16, v132
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v131, v133, 0xc0c0004
	ds_load_u8 v133, v122
	ds_load_u8 v134, v123 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v131, v133, 16, v131
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[130:131], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[74:75], v[130:131], v[57:64] neg_lo:[1,1,0]
	.loc	1 720 19                        ; ragged.py:720:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 751 19                        ; ragged.py:751:19
	v_cvt_f32_i32_e32 v92, v1
	v_cvt_f32_i32_e32 v91, v2
	v_cvt_f32_i32_e32 v90, v3
	v_cvt_f32_i32_e32 v89, v4
	v_cvt_f32_i32_e32 v88, v5
	v_cvt_f32_i32_e32 v87, v6
	v_cvt_f32_i32_e32 v86, v7
	v_cvt_f32_i32_e32 v85, v8
	v_cvt_f32_i32_e32 v84, v9
	v_cvt_f32_i32_e32 v83, v10
	v_cvt_f32_i32_e32 v82, v11
	v_cvt_f32_i32_e32 v81, v12
	v_cvt_f32_i32_e32 v80, v13
	v_cvt_f32_i32_e32 v79, v14
	v_cvt_f32_i32_e32 v78, v15
	v_cvt_f32_i32_e32 v77, v16
	v_cvt_f32_i32_e32 v76, v17
	v_cvt_f32_i32_e32 v75, v18
	v_cvt_f32_i32_e32 v74, v19
	v_cvt_f32_i32_e32 v73, v20
	v_cvt_f32_i32_e32 v68, v21
	v_cvt_f32_i32_e32 v67, v22
	v_cvt_f32_i32_e32 v66, v23
	v_cvt_f32_i32_e32 v65, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v23, v27
	v_cvt_f32_i32_e32 v22, v28
	v_cvt_f32_i32_e32 v14, v29
	v_cvt_f32_i32_e32 v13, v30
	v_cvt_f32_i32_e32 v12, v31
	v_cvt_f32_i32_e32 v11, v32
	v_cvt_f32_i32_e32 v72, v33
	v_cvt_f32_i32_e32 v71, v34
	v_cvt_f32_i32_e32 v70, v35
	v_cvt_f32_i32_e32 v69, v36
	v_cvt_f32_i32_e32 v33, v37
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v21, v41
	v_cvt_f32_i32_e32 v20, v42
	v_cvt_f32_i32_e32 v19, v43
	v_cvt_f32_i32_e32 v18, v44
	v_cvt_f32_i32_e32 v10, v45
	v_cvt_f32_i32_e32 v9, v46
	v_cvt_f32_i32_e32 v8, v47
	v_cvt_f32_i32_e32 v7, v48
	v_cvt_f32_i32_e32 v37, v49
	v_cvt_f32_i32_e32 v36, v50
	v_cvt_f32_i32_e32 v35, v51
	v_cvt_f32_i32_e32 v34, v52
	v_cvt_f32_i32_e32 v29, v53
	v_cvt_f32_i32_e32 v28, v54
	v_cvt_f32_i32_e32 v27, v55
	v_cvt_f32_i32_e32 v26, v56
	v_cvt_f32_i32_e32 v17, v57
	v_cvt_f32_i32_e32 v16, v58
	v_cvt_f32_i32_e32 v15, v59
	v_cvt_f32_i32_e32 v6, v60
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v4, v62
	v_cvt_f32_i32_e32 v3, v63
	v_cvt_f32_i32_e32 v2, v64
	s_add_i32 s3, s52, s53
.LBB0_7:                                ; %._crit_edge
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v1, s39, v98
	.loc	1 754 33                        ; ragged.py:754:33
	s_mul_i32 s0, s38, s34
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s41, 0xffff
	.loc	1 754 21                        ; ragged.py:754:21
	s_add_i32 s8, s39, s0
	s_mov_b32 s7, 0x31027000
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v40, 16, v1
	.loc	1 754 21                        ; ragged.py:754:21
	v_add_lshl_u32 v41, s8, v98, 1
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v39, 32, v1
	v_or_b32_e32 v38, 48, v1
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s0, s34, v1
	v_cmp_gt_i32_e64 s1, s34, v40
	.loc	1 753 36                        ; ragged.py:753:36
	v_add_nc_u32_e32 v42, 32, v41
	v_add_nc_u32_e32 v43, 64, v41
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s2, s34, v39
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v1, 0x80000000, v41, s0
	v_add_nc_u32_e32 v41, 0x60, v41
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v38
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v40, 0x80000000, v42, s1
	v_cndmask_b32_e64 v39, 0x80000000, v43, s2
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s40
	v_dual_cndmask_b32 v38, 0x80000000, v41 :: v_dual_lshlrev_b32 v55, 5, v99
	s_clause 0x3
	buffer_load_u16 v52, v1, s[4:7], 0 offen
	buffer_load_u16 v50, v40, s[4:7], 0 offen
	buffer_load_u16 v51, v39, s[4:7], 0 offen
	buffer_load_u16 v53, v38, s[4:7], 0 offen
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v1, s52, v0
	.loc	1 760 36                        ; ragged.py:760:36
	v_add_lshl_u32 v38, s3, v0, 1
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s4, s42
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v40, s35, v98
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s35, v1
	.loc	1 827 22                        ; ragged.py:827:22
	s_mul_i32 s8, s8, s35
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
	.loc	1 760 36 is_stmt 1              ; ragged.py:760:36
	v_cndmask_b32_e64 v1, 0x80000000, v38, s3
	.loc	1 827 22                        ; ragged.py:827:22
	v_add3_u32 v95, s8, s52, v40
	.loc	1 760 36                        ; ragged.py:760:36
	buffer_load_u16 v49, v1, s[4:7], 0 offen
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 827 22                        ; ragged.py:827:22
	v_lshl_add_u32 v104, s35, 4, v95
	v_lshl_add_u32 v105, s35, 5, v95
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v69, v69, v51 :: v_dual_lshlrev_b32 v52, 16, v52
	v_dual_mul_f32 v89, v89, v52 :: v_dual_lshlrev_b32 v50, 16, v50
	.loc	1 707 36                        ; ragged.py:707:36
	v_and_b32_e32 v38, 0x70, v100
	.loc	1 765 17                        ; ragged.py:765:17
	v_and_b32_e32 v39, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v73, v73, v50 :: v_dual_lshlrev_b32 v0, 1, v0
	v_mul_f32_e32 v75, v75, v50
	.loc	1 707 36                        ; ragged.py:707:36
	v_and_or_b32 v56, v1, 1, v38
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v88, v88, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v71, v71, v51 :: v_dual_and_b32 v0, 28, v0
	v_mul_f32_e32 v76, v76, v50
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v43, 0x80, v56
	.loc	1 707 18 is_stmt 0              ; ragged.py:707:18
	v_or_b32_e32 v58, s52, v56
	.loc	1 765 17 is_stmt 1              ; ragged.py:765:17
	v_lshl_add_u32 v1, v39, 2, 0
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v46, 14, v56
	v_or_b32_e32 v47, 12, v56
	v_or_b32_e32 v48, 10, v56
	v_or_b32_e32 v57, 8, v56
	v_or_b32_e32 v59, 6, v56
	v_or_b32_e32 v62, 4, v56
	v_or_b32_e32 v64, 2, v56
	.loc	1 707 18 is_stmt 0              ; ragged.py:707:18
	v_or_b32_e32 v106, s52, v43
	.loc	1 709 20 is_stmt 1              ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s35, v58
	.loc	1 765 17                        ; ragged.py:765:17
	v_lshl_add_u32 v54, v39, 1, 0
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v39, 0x8c, v56
	v_or_b32_e32 v40, 0x8a, v56
	v_or_b32_e32 v41, 0x88, v56
	v_or_b32_e32 v42, 0x86, v56
	v_or_b32_e32 v44, 0x84, v56
	v_or_b32_e32 v45, 0x82, v56
	.loc	1 765 17                        ; ragged.py:765:17
	v_add3_u32 v55, v1, v55, v0
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[0:1], null, s35, 48, v[95:96]
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	v_add_lshl_u32 v98, v95, v56, 2
	v_add_lshl_u32 v96, v95, v64, 2
	v_add_lshl_u32 v97, v95, v62, 2
	v_add_lshl_u32 v99, v95, v59, 2
	v_add_lshl_u32 v100, v95, v57, 2
	v_add_lshl_u32 v101, v95, v48, 2
	v_add_lshl_u32 v102, v95, v47, 2
	v_add_lshl_u32 v103, v95, v46, 2
	v_add_lshl_u32 v107, v104, v56, 2
	v_add_lshl_u32 v108, v104, v64, 2
	v_add_lshl_u32 v109, v104, v62, 2
	v_add_lshl_u32 v110, v104, v59, 2
	v_add_lshl_u32 v111, v104, v57, 2
	v_add_lshl_u32 v112, v104, v48, 2
	v_add_lshl_u32 v113, v104, v47, 2
	v_add_lshl_u32 v114, v104, v46, 2
	.loc	1 709 20 is_stmt 1              ; ragged.py:709:20
	v_cmp_gt_i32_e64 s4, s35, v106
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s0, s3
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v122, v105, v56, 2
	v_add_lshl_u32 v123, v105, v64, 2
	v_add_lshl_u32 v124, v105, v62, 2
	v_add_lshl_u32 v125, v105, v59, 2
	v_add_lshl_u32 v126, v105, v57, 2
	v_add_lshl_u32 v127, v105, v48, 2
	v_add_lshl_u32 v128, v105, v47, 2
	v_add_lshl_u32 v129, v105, v46, 2
	v_add_lshl_u32 v130, v105, v43, 2
	v_add_lshl_u32 v131, v105, v45, 2
	v_add_lshl_u32 v132, v105, v44, 2
	v_add_lshl_u32 v133, v105, v42, 2
	v_add_lshl_u32 v134, v105, v41, 2
	v_add_lshl_u32 v135, v105, v40, 2
	v_add_lshl_u32 v136, v105, v39, 2
	.loc	1 758 17                        ; ragged.py:758:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v86, v86, v52 :: v_dual_lshlrev_b32 v53, 16, v53
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v84, v84, v52 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v98, 0x80000000, v98, s5
	v_cndmask_b32_e64 v96, 0x80000000, v96, s5
	v_cndmask_b32_e64 v97, 0x80000000, v97, s5
	v_cndmask_b32_e64 v99, 0x80000000, v99, s5
	v_cndmask_b32_e64 v100, 0x80000000, v100, s5
	v_cndmask_b32_e64 v101, 0x80000000, v101, s5
	v_cndmask_b32_e64 v102, 0x80000000, v102, s5
	v_cndmask_b32_e64 v103, 0x80000000, v103, s5
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s1, s3
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v92, v92, v52
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v106, 0x80000000, v107, s5
	v_cndmask_b32_e64 v107, 0x80000000, v108, s5
	v_cndmask_b32_e64 v108, 0x80000000, v109, s5
	v_cndmask_b32_e64 v109, 0x80000000, v110, s5
	v_cndmask_b32_e64 v110, 0x80000000, v111, s5
	v_cndmask_b32_e64 v111, 0x80000000, v112, s5
	v_cndmask_b32_e64 v112, 0x80000000, v113, s5
	v_cndmask_b32_e64 v113, 0x80000000, v114, s5
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s2, s3
	s_and_b32 s2, s2, s4
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v114, 0x80000000, v122, s5
	v_cndmask_b32_e64 v122, 0x80000000, v123, s5
	v_cndmask_b32_e64 v123, 0x80000000, v124, s5
	v_cndmask_b32_e64 v124, 0x80000000, v125, s5
	v_cndmask_b32_e64 v125, 0x80000000, v126, s5
	v_cndmask_b32_e64 v126, 0x80000000, v127, s5
	v_cndmask_b32_e64 v127, 0x80000000, v128, s5
	v_cndmask_b32_e64 v128, 0x80000000, v129, s5
	v_cndmask_b32_e64 v129, 0x80000000, v130, s2
	v_cndmask_b32_e64 v130, 0x80000000, v131, s2
	v_cndmask_b32_e64 v131, 0x80000000, v132, s2
	v_cndmask_b32_e64 v132, 0x80000000, v133, s2
	v_cndmask_b32_e64 v133, 0x80000000, v134, s2
	v_cndmask_b32_e64 v134, 0x80000000, v135, s2
	v_cndmask_b32_e64 v135, 0x80000000, v136, s2
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v91, v91, v52
	v_mul_f32_e32 v90, v90, v52
	v_dual_mul_f32 v87, v87, v52 :: v_dual_mul_f32 v74, v74, v50
	v_dual_mul_f32 v85, v85, v52 :: v_dual_mul_f32 v72, v72, v51
	v_dual_mul_f32 v83, v83, v52 :: v_dual_mul_f32 v70, v70, v51
	v_dual_mul_f32 v82, v82, v52 :: v_dual_mul_f32 v37, v37, v53
	v_dual_mul_f32 v81, v81, v52 :: v_dual_mul_f32 v36, v36, v53
	v_dual_mul_f32 v80, v80, v52 :: v_dual_mul_f32 v35, v35, v53
	v_dual_mul_f32 v79, v79, v52 :: v_dual_mul_f32 v34, v34, v53
	v_dual_mul_f32 v78, v78, v52 :: v_dual_mul_f32 v67, v67, v50
	v_dual_mul_f32 v52, v77, v52 :: v_dual_mul_f32 v31, v31, v51
	v_dual_mul_f32 v68, v68, v50 :: v_dual_mul_f32 v33, v33, v51
	v_dual_mul_f32 v66, v66, v50 :: v_dual_mul_f32 v29, v29, v53
	v_dual_mul_f32 v65, v65, v50 :: v_dual_mul_f32 v32, v32, v51
	v_dual_mul_f32 v30, v30, v51 :: v_dual_mul_f32 v27, v27, v53
	v_dual_mul_f32 v28, v28, v53 :: v_dual_mul_f32 v21, v21, v51
	v_dual_mul_f32 v77, v26, v53 :: v_dual_mul_f32 v136, v25, v50
	v_dual_mul_f32 v137, v24, v50 :: v_dual_mul_f32 v18, v18, v51
	v_dual_mul_f32 v138, v23, v50 :: v_dual_mul_f32 v17, v17, v53
	.loc	1 765 17                        ; ragged.py:765:17
	ds_store_b32 v55, v49
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v54
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v22, v22, v50 :: v_dual_mul_f32 v19, v19, v51
	v_dual_mul_f32 v20, v20, v51 :: v_dual_mul_f32 v15, v15, v53
	v_dual_mul_f32 v16, v16, v53 :: v_dual_mul_f32 v49, v14, v50
	v_dual_mul_f32 v55, v13, v50 :: v_dual_mul_f32 v140, v10, v51
	v_dual_mul_f32 v139, v12, v50 :: v_dual_mul_f32 v144, v5, v53
	v_dual_mul_f32 v50, v11, v50 :: v_dual_mul_f32 v141, v9, v51
	v_dual_mul_f32 v142, v8, v51 :: v_dual_mul_f32 v143, v6, v53
	v_mul_f32_e32 v51, v7, v51
	.loc	1 765 17                        ; ragged.py:765:17
	ds_load_b128 v[7:10], v54 offset:16
	ds_load_b128 v[11:14], v54 offset:512
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v38, 0x8e, v56
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v1, v95, v45, 2
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v92, v92, v23 :: v_dual_mul_f32 v91, v91, v24
	v_dual_mul_f32 v90, v90, v25 :: v_dual_mul_f32 v89, v89, v26
	v_dual_mul_f32 v76, v76, v23 :: v_dual_mul_f32 v75, v75, v24
	v_dual_mul_f32 v74, v74, v25 :: v_dual_mul_f32 v73, v73, v26
	v_dual_mul_f32 v72, v72, v23 :: v_dual_mul_f32 v71, v71, v24
	v_dual_mul_f32 v70, v70, v25 :: v_dual_mul_f32 v69, v69, v26
	v_dual_mul_f32 v24, v36, v24 :: v_dual_mul_f32 v23, v37, v23
	v_dual_mul_f32 v26, v34, v26 :: v_dual_mul_f32 v25, v35, v25
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v34, v88, v7 :: v_dual_mul_f32 v35, v87, v8
	v_dual_mul_f32 v36, v86, v9 :: v_dual_mul_f32 v37, v85, v10
	v_dual_mul_f32 v68, v68, v7 :: v_dual_mul_f32 v67, v67, v8
	v_dual_mul_f32 v66, v66, v9 :: v_dual_mul_f32 v65, v65, v10
	v_dual_mul_f32 v32, v32, v8 :: v_dual_mul_f32 v33, v33, v7
	v_dual_mul_f32 v30, v30, v10 :: v_dual_mul_f32 v31, v31, v9
	v_dual_mul_f32 v28, v28, v8 :: v_dual_mul_f32 v29, v29, v7
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v4, v4, v53
	.loc	1 765 17                        ; ragged.py:765:17
	ds_load_b128 v[5:8], v54 offset:528
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v61, v95, v43, 2
	v_add_lshl_u32 v58, v95, v44, 2
	v_add_lshl_u32 v60, v95, v42, 2
	v_add_lshl_u32 v63, v95, v41, 2
	v_add_lshl_u32 v93, v95, v40, 2
	v_add_lshl_u32 v94, v95, v39, 2
	v_add_lshl_u32 v95, v95, v38, 2
	v_add_lshl_u32 v115, v104, v43, 2
	v_add_lshl_u32 v116, v104, v45, 2
	v_add_lshl_u32 v117, v104, v44, 2
	v_add_lshl_u32 v118, v104, v42, 2
	v_add_lshl_u32 v119, v104, v41, 2
	v_add_lshl_u32 v120, v104, v40, 2
	v_add_lshl_u32 v121, v104, v39, 2
	v_add_lshl_u32 v104, v104, v38, 2
	v_add_lshl_u32 v105, v105, v38, 2
	v_add_lshl_u32 v56, v0, v56, 2
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v2, v2, v53
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v64, v0, v64, 2
	v_add_lshl_u32 v62, v0, v62, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s0, s4
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v59, v0, v59, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s1, s4
	s_and_b32 s0, vcc_lo, s3
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v3, v3, v53
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v57, v0, v57, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	v_cndmask_b32_e64 v61, 0x80000000, v61, s5
	v_cndmask_b32_e64 v115, 0x80000000, v115, s1
	v_cndmask_b32_e64 v56, 0x80000000, v56, s0
	v_cndmask_b32_e64 v58, 0x80000000, v58, s5
	v_cndmask_b32_e64 v60, 0x80000000, v60, s5
	v_cndmask_b32_e64 v63, 0x80000000, v63, s5
	v_cndmask_b32_e64 v93, 0x80000000, v93, s5
	v_cndmask_b32_e64 v94, 0x80000000, v94, s5
	v_cndmask_b32_e64 v95, 0x80000000, v95, s5
	v_cndmask_b32_e64 v116, 0x80000000, v116, s1
	v_cndmask_b32_e64 v117, 0x80000000, v117, s1
	v_cndmask_b32_e64 v118, 0x80000000, v118, s1
	v_cndmask_b32_e64 v119, 0x80000000, v119, s1
	v_cndmask_b32_e64 v120, 0x80000000, v120, s1
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	v_cndmask_b32_e64 v104, 0x80000000, v104, s1
	v_cndmask_b32_e64 v105, 0x80000000, v105, s2
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v9, v27, v9 :: v_dual_mul_f32 v10, v77, v10
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v27, v84, v11
	v_dual_mul_f32 v53, v83, v12 :: v_dual_mul_f32 v54, v82, v13
	v_dual_mul_f32 v77, v81, v14 :: v_dual_mul_f32 v20, v20, v12
	v_dual_mul_f32 v81, v136, v11 :: v_dual_mul_f32 v22, v22, v14
	v_dual_mul_f32 v82, v137, v12 :: v_dual_mul_f32 v83, v138, v13
	v_dual_mul_f32 v12, v16, v12 :: v_dual_mul_f32 v21, v21, v11
	v_dual_mul_f32 v18, v18, v14 :: v_dual_mul_f32 v19, v19, v13
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v52, v52, v8 :: v_dual_mul_f32 v11, v17, v11
	v_mul_f32_e32 v14, v143, v14
	v_dual_mul_f32 v13, v15, v13 :: v_dual_mul_f32 v50, v50, v8
	v_dual_mul_f32 v15, v80, v5 :: v_dual_mul_f32 v16, v79, v6
	v_dual_mul_f32 v17, v78, v7 :: v_dual_mul_f32 v80, v141, v6
	v_dual_mul_f32 v49, v49, v5 :: v_dual_mul_f32 v78, v139, v7
	v_dual_mul_f32 v55, v55, v6 :: v_dual_mul_f32 v84, v142, v7
	v_dual_mul_f32 v79, v140, v5 :: v_dual_mul_f32 v2, v2, v8
	v_dual_mul_f32 v51, v51, v8 :: v_dual_mul_f32 v4, v4, v6
	.loc	1 827 13                        ; ragged.py:827:13
	s_clause 0x1f
	buffer_store_b32 v92, v98, s[36:39], 0 offen
	buffer_store_b32 v91, v96, s[36:39], 0 offen
	buffer_store_b32 v90, v97, s[36:39], 0 offen
	buffer_store_b32 v89, v99, s[36:39], 0 offen
	buffer_store_b32 v34, v100, s[36:39], 0 offen
	buffer_store_b32 v35, v101, s[36:39], 0 offen
	buffer_store_b32 v36, v102, s[36:39], 0 offen
	buffer_store_b32 v37, v103, s[36:39], 0 offen
	buffer_store_b32 v27, v61, s[36:39], 0 offen
	buffer_store_b32 v53, v1, s[36:39], 0 offen
	buffer_store_b32 v54, v58, s[36:39], 0 offen
	buffer_store_b32 v77, v60, s[36:39], 0 offen
	buffer_store_b32 v15, v63, s[36:39], 0 offen
	buffer_store_b32 v16, v93, s[36:39], 0 offen
	buffer_store_b32 v17, v94, s[36:39], 0 offen
	buffer_store_b32 v52, v95, s[36:39], 0 offen
	buffer_store_b32 v76, v106, s[36:39], 0 offen
	buffer_store_b32 v75, v107, s[36:39], 0 offen
	buffer_store_b32 v74, v108, s[36:39], 0 offen
	buffer_store_b32 v73, v109, s[36:39], 0 offen
	buffer_store_b32 v68, v110, s[36:39], 0 offen
	buffer_store_b32 v67, v111, s[36:39], 0 offen
	buffer_store_b32 v66, v112, s[36:39], 0 offen
	buffer_store_b32 v65, v113, s[36:39], 0 offen
	buffer_store_b32 v81, v115, s[36:39], 0 offen
	buffer_store_b32 v82, v116, s[36:39], 0 offen
	buffer_store_b32 v83, v117, s[36:39], 0 offen
	buffer_store_b32 v22, v118, s[36:39], 0 offen
	buffer_store_b32 v49, v119, s[36:39], 0 offen
	buffer_store_b32 v55, v120, s[36:39], 0 offen
	buffer_store_b32 v78, v121, s[36:39], 0 offen
	buffer_store_b32 v50, v104, s[36:39], 0 offen
	s_clause 0x10
	buffer_store_b32 v72, v114, s[36:39], 0 offen
	buffer_store_b32 v71, v122, s[36:39], 0 offen
	buffer_store_b32 v70, v123, s[36:39], 0 offen
	buffer_store_b32 v69, v124, s[36:39], 0 offen
	buffer_store_b32 v33, v125, s[36:39], 0 offen
	buffer_store_b32 v32, v126, s[36:39], 0 offen
	buffer_store_b32 v31, v127, s[36:39], 0 offen
	buffer_store_b32 v30, v128, s[36:39], 0 offen
	buffer_store_b32 v21, v129, s[36:39], 0 offen
	buffer_store_b32 v20, v130, s[36:39], 0 offen
	buffer_store_b32 v19, v131, s[36:39], 0 offen
	buffer_store_b32 v18, v132, s[36:39], 0 offen
	buffer_store_b32 v79, v133, s[36:39], 0 offen
	buffer_store_b32 v80, v134, s[36:39], 0 offen
	buffer_store_b32 v84, v135, s[36:39], 0 offen
	buffer_store_b32 v51, v105, s[36:39], 0 offen
	buffer_store_b32 v23, v56, s[36:39], 0 offen
	v_add_lshl_u32 v1, v0, v48, 2
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	v_cndmask_b32_e64 v6, 0x80000000, v62, s0
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v3, v3, v7
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v7, 0x80000000, v59, s0
	v_cndmask_b32_e64 v8, 0x80000000, v57, s0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_clause 0x1
	buffer_store_b32 v24, v64, s[36:39], 0 offen
	buffer_store_b32 v25, v6, s[36:39], 0 offen
	v_add_lshl_u32 v6, v0, v47, 2
	s_clause 0x2
	buffer_store_b32 v26, v7, s[36:39], 0 offen
	buffer_store_b32 v29, v8, s[36:39], 0 offen
	buffer_store_b32 v28, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v0, v46, 2
	v_add_lshl_u32 v7, v0, v43, 2
	v_add_lshl_u32 v8, v0, v45, 2
	v_add_lshl_u32 v15, v0, v44, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v5, v144, v5 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	s_clause 0x4
	buffer_store_b32 v9, v6, s[36:39], 0 offen
	buffer_store_b32 v10, v1, s[36:39], 0 offen
	buffer_store_b32 v11, v7, s[36:39], 0 offen
	buffer_store_b32 v12, v8, s[36:39], 0 offen
	buffer_store_b32 v13, v15, s[36:39], 0 offen
	v_add_lshl_u32 v1, v0, v42, 2
	v_add_lshl_u32 v6, v0, v41, 2
	v_add_lshl_u32 v7, v0, v40, 2
	v_add_lshl_u32 v8, v0, v39, 2
	v_add_lshl_u32 v0, v0, v38, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v1, s[36:39], 0 offen
	buffer_store_b32 v5, v6, s[36:39], 0 offen
	buffer_store_b32 v4, v7, s[36:39], 0 offen
	buffer_store_b32 v3, v8, s[36:39], 0 offen
	buffer_store_b32 v2, v0, s[36:39], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 147
		.amdhsa_next_free_sgpr 75
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 147
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9840
; TotalNumSgprs: 77
; NumVgprs: 147
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 147
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	698                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	699                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     147
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
