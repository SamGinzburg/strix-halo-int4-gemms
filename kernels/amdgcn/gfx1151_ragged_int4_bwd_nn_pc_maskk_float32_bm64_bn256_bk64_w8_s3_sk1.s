	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 674 0                         ; ragged.py:674:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.loc	1 701 20 prologue_end           ; ragged.py:701:20
	s_abs_i32 s8, s2
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v36, 1, v0
	v_lshlrev_b32_e32 v103, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:698:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:699:21 ]
	s_add_i32 s5, s25, 0xff
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
	s_ashr_i32 s21, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s20, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 700 27 is_stmt 1              ; ragged.py:700:27
	s_mul_i32 s4, s20, s21
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
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s8, s20
	.loc	1 701 20                        ; ragged.py:701:20
	s_xor_b32 s5, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_cvt_f32_u32 s6, s8
	.loc	1 701 20                        ; ragged.py:701:20
	s_sub_i32 s10, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, 0, s8
	.loc	1 702 22                        ; ragged.py:702:22
	s_mul_i32 s4, s10, s4
	.loc	1 703 17                        ; ragged.py:703:17
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 702 16                        ; ragged.py:702:16
	s_sub_i32 s4, s2, s4
	.loc	1 725 35                        ; ragged.py:725:35
	s_mul_i32 s28, s10, s24
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s9, s4
	s_xor_b32 s11, s4, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s22, s11, 31
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s6, s5
	s_add_i32 s5, s6, s5
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s5, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s5, s8
	s_add_i32 s11, s5, 1
	s_sub_i32 s9, s9, s12
	s_sub_i32 s12, s9, s8
	s_cmp_ge_u32 s9, s8
	s_cselect_b32 s5, s11, s5
	s_cselect_b32 s9, s12, s9
	s_add_i32 s11, s5, 1
	s_cmp_ge_u32 s9, s8
	s_cselect_b32 s5, s11, s5
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s11, s10, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s23, s5, s22
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[8:9], s[10:11], 2
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, s23, s22
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s12, s5, s20
	.loc	1 706 18                        ; ragged.py:706:18
	s_lshl_b32 s11, s5, 6
	.loc	1 704 17                        ; ragged.py:704:17
	s_sub_i32 s4, s4, s12
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 719 22                        ; ragged.py:719:22
	s_lshl_b32 s29, s3, 5
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s18, s[6:7], 0x0
	s_mov_b32 s3, 0
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s18, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 26 is_stmt 0              ; ragged.py:711:26
	s_lshr_b32 s6, s5, 31
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s30, s5, 1
	.loc	1 720 19 is_stmt 1              ; ragged.py:720:19
	s_cmp_lt_i32 s29, s30
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 765 17                        ; ragged.py:765:17
	v_lshlrev_b32_e32 v35, 1, v0
	.loc	1 754 21                        ; ragged.py:754:21
	s_add_i32 s17, s11, s28
	.loc	1 827 22                        ; ragged.py:827:22
	s_lshl_b32 s16, s25, 4
	s_lshl_b32 s26, s25, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr17
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $sgpr16
                                        ; implicit-def: $sgpr26
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v101, 15, v0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v100, 0x70, v36
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v102, 0xf0, v0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_mov_b32_e32 v94, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s27, s4, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b32 s3, s[0:1], 0x38
	s_load_b128 s[4:7], s[0:1], 0x0
	.loc	1 735 33 is_stmt 1              ; ragged.py:735:33
	s_and_b32 s0, s18, 0x80000001
	.loc	1 706 36                        ; ragged.py:706:36
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 735 33                        ; ragged.py:735:33
	s_cmp_eq_u32 s0, 1
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshlrev_b32_e32 v3, 3, v0
	.loc	1 735 33                        ; ragged.py:735:33
	s_cselect_b32 s31, -1, 0
	.loc	1 720 19                        ; ragged.py:720:19
	s_lshl_b32 s16, s23, 6
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v6, s11, v1
	.loc	1 720 19                        ; ragged.py:720:19
	v_add3_u32 v1, s28, s16, v1
	s_lshl_b32 s16, s22, 6
	.loc	1 714 18                        ; ragged.py:714:18
	v_lshrrev_b32_e32 v104, 4, v102
	v_and_b32_e32 v97, 24, v3
	.loc	1 720 19                        ; ragged.py:720:19
	s_mul_i32 s21, s21, s10
	v_subrev_nc_u32_e32 v1, s16, v1
	s_sub_i32 s17, s22, s21
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshlrev_b32_e32 v2, 4, v101
	.loc	1 720 19                        ; ragged.py:720:19
	s_lshl_b32 s2, s2, 8
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e32 vcc_lo, s24, v6
	v_add3_u32 v122, 0, v100, v101
	.loc	1 729 35                        ; ragged.py:729:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s10, s3
	.loc	1 720 19                        ; ragged.py:720:19
	v_mad_u64_u32 v[98:99], null, s3, v1, v[97:98]
	v_add3_u32 v8, s1, s29, v104
	v_sub_nc_u32_e32 v1, s30, v104
	s_sub_i32 s1, s17, s23
	s_mov_b32 s19, 0x31027000
	s_mul_i32 s20, s20, s1
	s_mov_b32 s18, 0x7ffffffe
	v_subrev_nc_u32_e32 v114, 17, v1
	v_add_nc_u32_e32 v115, -1, v1
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v9, 16, v8
	v_mul_lo_u32 v8, s25, v8
	v_and_b32_e32 v5, 24, v103
	s_lshl_b32 s1, s20, 8
	v_and_b32_e32 v4, 24, v36
	s_add_i32 s2, s2, s1
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v7, s27, v2
	v_lshl_or_b32 v5, v101, 5, v5
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 720 19                        ; ragged.py:720:19
	v_add3_u32 v99, s2, v8, v2
	v_mov_b32_e32 v8, v1
	v_mul_lo_u32 v9, s25, v9
	v_xor_b32_e32 v6, 16, v5
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s25, v7
	v_xor_b32_e32 v7, 24, v5
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v117, 0, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v119, 0, v6
	.loc	1 720 19                        ; ragged.py:720:19
	v_add3_u32 v105, s2, v9, v2
	v_mov_b32_e32 v2, v1
	v_xor_b32_e32 v3, v3, v4
	v_xor_b32_e32 v4, 8, v5
	v_mov_b32_e32 v6, v1
	v_sub_nc_u32_e32 v11, s30, v97
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v120, 0, v7
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v116, 0, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v106, -8, v11
	v_add_nc_u32_e32 v107, -7, v11
	v_dual_mov_b32 v9, v1 :: v_dual_add_nc_u32 v108, -6, v11
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v109, -5, v11
	v_add_nc_u32_e32 v110, -4, v11
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v111, -3, v11
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v112, -2, v11
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v113, -1, v11
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v118, 0, v4
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v121, 0, v10
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v25, v1
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
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_lshl_b32 s26, s25, 5
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s21, s7
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v75, s29, v104
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s1, s29, v115
	v_add_nc_u32_e32 v82, s29, v98
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s2, s30, v75
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s6, s31, s1
	.loc	1 737 66                        ; ragged.py:737:66
	s_and_b32 s1, s0, s2
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s2, s29, v108
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v65, 0x80000000, v99, s1
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s1, s29, v109
	.loc	1 720 19                        ; ragged.py:720:19
	v_add_nc_u32_e32 v99, s26, v99
	.loc	1 737 34                        ; ragged.py:737:34
	buffer_load_b128 v[65:68], v65, s[20:23], 0 offen
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s7, s31, s1
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(0)
	v_and_b16 v69.l, v65.l, 15
	v_and_b16 v69.h, v65.h, 15
	v_and_b16 v70.l, v66.l, 15
	v_and_b16 v70.h, v66.h, 15
	v_and_b16 v71.l, v67.l, 15
	v_and_b16 v71.h, v67.h, 15
	v_and_b16 v72.l, v68.l, 15
	v_and_b16 v72.h, v68.h, 15
	.loc	1 737 34                        ; ragged.py:737:34
	v_lshrrev_b32_e32 v76, 8, v65
	v_lshrrev_b32_e32 v77, 8, v66
	v_lshrrev_b32_e32 v78, 24, v66
	v_lshrrev_b64 v[73:74], 24, v[65:66]
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v65.l, v65.l, v69.l, s6
	v_cndmask_b16 v65.h, v65.h, v69.h, s6
	v_cndmask_b16 v66.l, v66.l, v70.l, s6
	v_cndmask_b16 v66.h, v66.h, v70.h, s6
	v_cndmask_b16 v69.l, v67.l, v71.l, s6
	v_cndmask_b16 v69.h, v67.h, v71.h, s6
	v_cndmask_b16 v70.l, v68.l, v72.l, s6
	v_cndmask_b16 v70.h, v68.h, v72.h, s6
	.loc	1 737 34                        ; ragged.py:737:34
	v_lshrrev_b64 v[71:72], 24, v[67:68]
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v72, s29, v97
	.loc	1 737 34                        ; ragged.py:737:34
	v_lshrrev_b32_e32 v80, 8, v68
	v_lshrrev_b32_e32 v81, 24, v68
	v_lshrrev_b32_e32 v79, 8, v67
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v67.l, v73.l, 15
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v68, 4, v72
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v67.h, v71.l, 15
	.loc	1 739 34 is_stmt 0              ; ragged.py:739:34
	v_and_b16 v69.l, 0xff, v69.l
	v_and_b16 v70.l, 0xff, v70.l
	v_cndmask_b16 v67.l, v73.l, v67.l, s6
	.loc	1 734 30 is_stmt 1              ; ragged.py:734:30
	v_cmp_gt_i32_e64 s3, s30, v68
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v68, 6, v72
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v67.h, v71.l, v67.h, s6
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v71, 5, v72
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v70.h, 0xff, v70.h
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s3, vcc_lo, s3
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s5, s30, v68
	v_add_nc_u32_e32 v68, 4, v82
	v_cmp_gt_i32_e64 s4, s30, v71
	v_add_nc_u32_e32 v71, 7, v72
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v66.l, 0xff, v66.l
	v_and_b16 v66.h, 0xff, v66.h
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s3, s31, s2
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s1, s30, v71
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s2, vcc_lo, s4
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v65.l, 0xff, v65.l
	.loc	1 736 34                        ; ragged.py:736:34
	buffer_load_u8 v71, v68, s[16:19], 0 offen
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v69.h, 0xff, v69.h
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s1, vcc_lo, s1
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v65.h, 0xff, v65.h
	v_lshlrev_b16 v67.h, 8, v67.h
	v_lshlrev_b16 v67.l, 8, v67.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v125.h, v69.h, v67.h
	v_or_b16 v123.h, v65.h, v67.l
	.loc	1 738 62                        ; ragged.py:738:62
	s_waitcnt vmcnt(0)
	v_and_b16 v68.l, v71.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 738 34 is_stmt 0              ; ragged.py:738:34
	v_cndmask_b16 v68.l, v71.l, v68.l, s7
	v_add_nc_u32_e32 v71, 5, v82
	.loc	1 736 34 is_stmt 1              ; ragged.py:736:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s2, s29, v106
	.loc	1 736 34                        ; ragged.py:736:34
	buffer_load_u8 v71, v71, s[16:19], 0 offen
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s2, s31, s2
	.loc	1 738 62                        ; ragged.py:738:62
	s_waitcnt vmcnt(0)
	v_and_b16 v68.h, v71.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 738 34 is_stmt 0              ; ragged.py:738:34
	v_cndmask_b16 v68.h, v71.l, v68.h, s3
	.loc	1 736 34 is_stmt 1              ; ragged.py:736:34
	v_add_nc_u32_e32 v71, 7, v82
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s3, s29, v110
	.loc	1 738 34                        ; ragged.py:738:34
	v_lshlrev_b16 v68.h, 8, v68.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s1
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s1, s29, v107
	.loc	1 735 32 is_stmt 0              ; ragged.py:735:32
	s_and_b32 s3, s31, s3
	.loc	1 738 34 is_stmt 1              ; ragged.py:738:34
	v_or_b16 v74.l, v68.l, v68.h
	.loc	1 736 34                        ; ragged.py:736:34
	buffer_load_u8 v73, v71, s[16:19], 0 offen
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v68, 2, v72
	.loc	1 738 62                        ; ragged.py:738:62
	s_waitcnt vmcnt(0)
	v_and_b16 v71.l, v73.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 738 34 is_stmt 0              ; ragged.py:738:34
	v_cndmask_b16 v71.l, v73.l, v71.l, s2
	v_add_nc_u32_e32 v73, 6, v82
	.loc	1 735 32 is_stmt 1              ; ragged.py:735:32
	s_and_b32 s2, s31, s1
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s1, vcc_lo, s5
	.loc	1 738 34                        ; ragged.py:738:34
	v_lshlrev_b16 v71.l, 8, v71.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v73, 0x80000000, v73, s1
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s1, s30, v68
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v68, 3, v72
	.loc	1 736 34                        ; ragged.py:736:34
	buffer_load_u8 v73, v73, s[16:19], 0 offen
	.loc	1 736 66 is_stmt 0              ; ragged.py:736:66
	s_and_b32 s1, vcc_lo, s1
	.loc	1 738 62 is_stmt 1              ; ragged.py:738:62
	s_waitcnt vmcnt(0)
	v_and_b16 v71.h, v73.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 738 34 is_stmt 0              ; ragged.py:738:34
	v_cndmask_b16 v71.h, v73.l, v71.h, s2
	.loc	1 734 30 is_stmt 1              ; ragged.py:734:30
	v_cmp_gt_i32_e64 s2, s30, v68
	v_add_nc_u32_e32 v68, 3, v82
	.loc	1 738 34                        ; ragged.py:738:34
	v_or_b16 v74.h, v71.h, v71.l
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s2, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 736 34 is_stmt 0              ; ragged.py:736:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s2, s29, v111
	.loc	1 736 34                        ; ragged.py:736:34
	buffer_load_u8 v71, v68, s[16:19], 0 offen
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s2, s31, s2
	.loc	1 738 62                        ; ragged.py:738:62
	s_waitcnt vmcnt(0)
	v_and_b16 v68.l, v71.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 738 34 is_stmt 0              ; ragged.py:738:34
	v_cndmask_b16 v68.l, v71.l, v68.l, s3
	v_add_nc_u32_e32 v71, 2, v82
	.loc	1 734 30 is_stmt 1              ; ragged.py:734:30
	v_cmp_gt_i32_e64 s3, s30, v72
	.loc	1 738 34                        ; ragged.py:738:34
	v_lshlrev_b16 v68.l, 8, v68.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s1
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s1, s29, v113
	.loc	1 736 34                        ; ragged.py:736:34
	buffer_load_u8 v71, v71, s[16:19], 0 offen
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s4, s31, s1
	.loc	1 738 62                        ; ragged.py:738:62
	s_waitcnt vmcnt(0)
	v_and_b16 v68.h, v71.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 738 34 is_stmt 0              ; ragged.py:738:34
	v_cndmask_b16 v68.h, v71.l, v68.h, s2
	.loc	1 735 56 is_stmt 1              ; ragged.py:735:56
	v_cmp_eq_u32_e64 s2, s29, v112
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v71, 1, v72
	.loc	1 738 34                        ; ragged.py:738:34
	v_or_b16 v73.h, v68.h, v68.l
	.loc	1 721 22                        ; ragged.py:721:22
	v_add_nc_u32_e32 v68, 16, v75
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s5, s31, s2
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s2, vcc_lo, s3
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s3, s30, v71
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v71, 0x80000000, v82, s2
	.loc	1 734 30                        ; ragged.py:734:30
	v_cmp_gt_i32_e64 s1, s30, v68
	v_add_nc_u32_e32 v68, 1, v82
	.loc	1 736 66                        ; ragged.py:736:66
	s_and_b32 s2, vcc_lo, s3
	.loc	1 736 34 is_stmt 0              ; ragged.py:736:34
	buffer_load_u8 v71, v71, s[16:19], 0 offen
	.loc	1 737 66 is_stmt 1              ; ragged.py:737:66
	s_and_b32 s1, s0, s1
	.loc	1 736 34                        ; ragged.py:736:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	.loc	1 737 34                        ; ragged.py:737:34
	v_cndmask_b32_e64 v75, 0x80000000, v105, s1
	.loc	1 735 56                        ; ragged.py:735:56
	v_cmp_eq_u32_e64 s1, s29, v114
	.loc	1 720 19                        ; ragged.py:720:19
	v_add_nc_u32_e32 v105, s26, v105
	.loc	1 750 17                        ; ragged.py:750:17
	s_add_i32 s29, s29, 32
	.loc	1 736 34                        ; ragged.py:736:34
	buffer_load_u8 v72, v68, s[16:19], 0 offen
	.loc	1 737 34                        ; ragged.py:737:34
	buffer_load_b128 v[127:130], v75, s[20:23], 0 offen
	.loc	1 739 62                        ; ragged.py:739:62
	s_waitcnt vmcnt(2)
	v_and_b16 v71.h, v81.l, 15
	.loc	1 738 34                        ; ragged.py:738:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 735 32                        ; ragged.py:735:32
	s_and_b32 s1, s31, s1
	.loc	1 720 19                        ; ragged.py:720:19
	s_cmp_lt_i32 s29, s30
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v71.h, v81.l, v71.h, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v71.h, 8, v71.h
	v_or_b16 v126.h, v70.h, v71.h
	.loc	1 738 62                        ; ragged.py:738:62
	v_and_b16 v68.l, v71.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 738 34 is_stmt 0              ; ragged.py:738:34
	v_cndmask_b16 v68.l, v71.l, v68.l, s4
	.loc	1 739 62 is_stmt 1              ; ragged.py:739:62
	v_and_b16 v71.l, v80.l, 15
	.loc	1 738 62                        ; ragged.py:738:62
	s_waitcnt vmcnt(1)
	v_and_b16 v68.h, v72.l, 15
	.loc	1 737 34                        ; ragged.py:737:34
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v134, 8, v128
	v_lshrrev_b32_e32 v135, 24, v128
	v_lshrrev_b32_e32 v136, 8, v129
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v71.l, v80.l, v71.l, s6
	.loc	1 738 34                        ; ragged.py:738:34
	v_cndmask_b16 v68.h, v72.l, v68.h, s5
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v72.l, v79.l, 15
	.loc	1 737 34                        ; ragged.py:737:34
	v_lshrrev_b64 v[131:132], 24, v[127:128]
	v_lshrrev_b32_e32 v133, 8, v127
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v71.l, 8, v71.l
	.loc	1 738 34                        ; ragged.py:738:34
	v_lshlrev_b16 v68.h, 8, v68.h
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v72.l, v79.l, v72.l, s6
	.loc	1 737 34                        ; ragged.py:737:34
	v_lshrrev_b32_e32 v137, 8, v130
	v_lshrrev_b32_e32 v138, 24, v130
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v126.l, v70.l, v71.l
	.loc	1 738 34                        ; ragged.py:738:34
	v_or_b16 v73.l, v68.l, v68.h
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v72.l, 8, v72.l
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v68.l, v77.l, 15
	v_and_b16 v68.h, v78.l, 15
	.loc	1 738 34 is_stmt 1              ; ragged.py:738:34
	ds_store_b64 v116, v[73:74]
	.loc	1 739 34                        ; ragged.py:739:34
	v_or_b16 v125.l, v69.l, v72.l
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v69.l, v76.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v68.l, v77.l, v68.l, s6
	v_cndmask_b16 v68.h, v78.l, v68.h, s6
	.loc	1 738 34 is_stmt 1              ; ragged.py:738:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v69.l, v76.l, v69.l, s6
	v_lshlrev_b16 v68.l, 8, v68.l
	v_lshlrev_b16 v68.h, 8, v68.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v69.l, 8, v69.l
	v_or_b16 v124.l, v66.l, v68.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v124.h, v66.h, v68.h
	v_or_b16 v123.l, v65.l, v69.l
	.loc	1 738 34                        ; ragged.py:738:34
	ds_load_2addr_stride64_b64 v[93:96], v117 offset1:1
	ds_load_2addr_stride64_b64 v[89:92], v117 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v118 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v118 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v119 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v119 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v120 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v120 offset0:2 offset1:3
	.loc	1 739 34                        ; ragged.py:739:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v121, v[123:126]
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v124.l, v128.l, 15
	v_and_b16 v124.h, v128.h, 15
	v_and_b16 v125.l, v129.l, 15
	v_and_b16 v125.h, v129.h, 15
	v_and_b16 v123.h, v127.h, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v124.l, v128.l, v124.l, s1
	v_cndmask_b16 v124.h, v128.h, v124.h, s1
	v_cndmask_b16 v125.l, v129.l, v125.l, s1
	v_cndmask_b16 v125.h, v129.h, v125.h, s1
	.loc	1 737 34 is_stmt 1              ; ragged.py:737:34
	v_lshrrev_b64 v[128:129], 24, v[129:130]
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v123.h, v127.h, v123.h, s1
	.loc	1 739 62 is_stmt 0              ; ragged.py:739:62
	v_and_b16 v126.l, v130.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v125.l, 0xff, v125.l
	v_and_b16 v124.l, 0xff, v124.l
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v123.l, v127.l, 15
	v_and_b16 v127.h, v128.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v126.l, v130.l, v126.l, s1
	v_and_b16 v124.h, 0xff, v124.h
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v126.h, v130.h, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v123.l, v127.l, v123.l, s1
	v_cndmask_b16 v127.h, v128.l, v127.h, s1
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v128.l, v137.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_and_b16 v126.l, 0xff, v126.l
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v127.l, v131.l, 15
	v_and_b16 v128.h, v138.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v126.h, v130.h, v126.h, s1
	v_cndmask_b16 v128.l, v137.l, v128.l, s1
	v_and_b16 v123.l, 0xff, v123.l
	v_cndmask_b16 v127.l, v131.l, v127.l, s1
	v_cndmask_b16 v128.h, v138.l, v128.h, s1
	v_and_b16 v126.h, 0xff, v126.h
	v_lshlrev_b16 v128.l, 8, v128.l
	v_and_b16 v125.h, 0xff, v125.h
	v_lshlrev_b16 v127.h, 8, v127.h
	v_lshlrev_b16 v128.h, 8, v128.h
	v_and_b16 v123.h, 0xff, v123.h
	v_or_b16 v126.l, v126.l, v128.l
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v128.l, v136.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_lshlrev_b16 v127.l, 8, v127.l
	v_or_b16 v126.h, v126.h, v128.h
	v_or_b16 v125.h, v125.h, v127.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v128.l, v136.l, v128.l, s1
	v_or_b16 v123.h, v123.h, v127.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v128.l, 8, v128.l
	v_or_b16 v125.l, v125.l, v128.l
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v128.l, v134.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v128.l, v134.l, v128.l, s1
	v_lshlrev_b16 v128.l, 8, v128.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v124.l, v124.l, v128.l
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v128.l, v135.l, 15
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v128.l, v135.l, v128.l, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v128.l, 8, v128.l
	v_or_b16 v124.h, v124.h, v128.l
	.loc	1 739 62                        ; ragged.py:739:62
	v_and_b16 v128.l, v133.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 739 34                        ; ragged.py:739:34
	v_cndmask_b16 v128.l, v133.l, v128.l, s1
	v_lshlrev_b16 v128.l, 8, v128.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v123.l, v123.l, v128.l
	ds_store_b128 v121, v[123:126] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 740 27 is_stmt 1              ; ragged.py:740:27
	ds_load_u8 v123, v122 offset:1280
	ds_load_u8 v124, v122 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v122 offset:1792
	ds_load_u8 v125, v122 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v122 offset:256
	ds_load_u8 v126, v122
	v_lshl_or_b32 v124, v124, 16, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v122 offset:768
	ds_load_u8 v127, v122 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v126, 16, v125
	ds_load_u8 v125, v122 offset:1408
	ds_load_u8 v126, v122 offset:1152
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[89:90], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[123:124], v[91:92], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[123:124], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[95:96], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v122 offset:1920
	ds_load_u8 v127, v122 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v122 offset:384
	ds_load_u8 v128, v122 offset:128
	v_lshl_or_b32 v126, v126, 16, v125
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v122 offset:896
	ds_load_u8 v129, v122 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v125, v128, 16, v127
	v_wmma_i32_16x16x16_iu4 v[41:48], v[125:126], v[89:90], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v89, v122 offset:3328
	ds_load_u8 v90, v122 offset:3072
	v_wmma_i32_16x16x16_iu4 v[57:64], v[125:126], v[91:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[93:94], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[95:96], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v122 offset:3840
	ds_load_u8 v91, v122 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v122 offset:2304
	ds_load_u8 v92, v122 offset:2048
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v122 offset:2816
	ds_load_u8 v93, v122 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v92, 16, v91
	ds_load_u8 v91, v122 offset:3456
	ds_load_u8 v92, v122 offset:3200
	v_wmma_i32_16x16x16_iu4 v[1:8], v[89:90], v[85:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[89:90], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[87:88], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v122 offset:3968
	ds_load_u8 v93, v122 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v122 offset:2432
	ds_load_u8 v94, v122 offset:2176
	v_lshl_or_b32 v92, v92, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v122 offset:2944
	ds_load_u8 v95, v122 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v94, 16, v93
	v_wmma_i32_16x16x16_iu4 v[9:16], v[91:92], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[91:92], v[83:84], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v122 offset:5376
	ds_load_u8 v82, v122 offset:5120
	ds_load_u8 v83, v122 offset:5888
	ds_load_u8 v84, v122 offset:5632
	ds_load_u8 v85, v122 offset:4352
	ds_load_u8 v86, v122 offset:5504
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[87:88], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v122 offset:4096
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v122 offset:4864
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v85, v82, v85, 0xc0c0004
	ds_load_u8 v82, v122 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v82, v84, 0xc0c0004
	v_lshl_or_b32 v82, v83, 16, v81
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v81, v84, 16, v85
	ds_load_u8 v83, v122 offset:5248
	ds_load_u8 v84, v122 offset:6016
	ds_load_u8 v85, v122 offset:5760
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[77:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[75:76], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v83, v86, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v122 offset:4480
	ds_load_u8 v86, v122 offset:4224
	v_lshl_or_b32 v84, v84, 16, v83
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v122 offset:4992
	ds_load_u8 v87, v122 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v86, 16, v85
	ds_load_u8 v85, v122 offset:7424
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[79:80], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v77, v122 offset:7168
	ds_load_u8 v78, v122 offset:7936
	ds_load_u8 v79, v122 offset:7680
	ds_load_u8 v80, v122 offset:6400
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[75:76], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v77, v77, v85, 0xc0c0004
	ds_load_u8 v85, v122 offset:6144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v122 offset:6912
	v_lshl_or_b32 v78, v78, 16, v77
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v80, v85, v80, 0xc0c0004
	ds_load_u8 v85, v122 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v85, v79, 0xc0c0004
	ds_load_u8 v85, v122 offset:7552
	v_lshl_or_b32 v77, v79, 16, v80
	ds_load_u8 v79, v122 offset:7296
	ds_load_u8 v80, v122 offset:8064
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[77:78], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[77:78], v[67:68], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v79, v79, v85, 0xc0c0004
	ds_load_u8 v85, v122 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v85, v80, 0xc0c0004
	ds_load_u8 v85, v122 offset:6528
	ds_load_u8 v86, v122 offset:6272
	v_lshl_or_b32 v80, v80, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v122 offset:7040
	ds_load_u8 v87, v122 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v86, 16, v85
	v_wmma_i32_16x16x16_iu4 v[9:16], v[79:80], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[79:80], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[79:80], v[67:68], v[57:64] neg_lo:[1,1,0]
	.loc	1 720 19                        ; ragged.py:720:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 751 19                        ; ragged.py:751:19
	v_cvt_f32_i32_e32 v94, v1
	v_cvt_f32_i32_e32 v93, v2
	v_cvt_f32_i32_e32 v92, v3
	v_cvt_f32_i32_e32 v91, v4
	v_cvt_f32_i32_e32 v84, v5
	v_cvt_f32_i32_e32 v83, v6
	v_cvt_f32_i32_e32 v82, v7
	v_cvt_f32_i32_e32 v81, v8
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v79, v10
	v_cvt_f32_i32_e32 v78, v11
	v_cvt_f32_i32_e32 v77, v12
	v_cvt_f32_i32_e32 v76, v13
	v_cvt_f32_i32_e32 v75, v14
	v_cvt_f32_i32_e32 v74, v15
	v_cvt_f32_i32_e32 v73, v16
	v_cvt_f32_i32_e32 v90, v17
	v_cvt_f32_i32_e32 v89, v18
	v_cvt_f32_i32_e32 v88, v19
	v_cvt_f32_i32_e32 v87, v20
	v_cvt_f32_i32_e32 v72, v21
	v_cvt_f32_i32_e32 v71, v22
	v_cvt_f32_i32_e32 v70, v23
	v_cvt_f32_i32_e32 v69, v24
	v_cvt_f32_i32_e32 v68, v25
	v_cvt_f32_i32_e32 v67, v26
	v_cvt_f32_i32_e32 v66, v27
	v_cvt_f32_i32_e32 v65, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v27, v30
	v_cvt_f32_i32_e32 v18, v31
	v_cvt_f32_i32_e32 v17, v32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v33, v36
	v_cvt_f32_i32_e32 v26, v37
	v_cvt_f32_i32_e32 v25, v38
	v_cvt_f32_i32_e32 v24, v39
	v_cvt_f32_i32_e32 v23, v40
	v_cvt_f32_i32_e32 v16, v41
	v_cvt_f32_i32_e32 v15, v42
	v_cvt_f32_i32_e32 v14, v43
	v_cvt_f32_i32_e32 v13, v44
	v_cvt_f32_i32_e32 v12, v45
	v_cvt_f32_i32_e32 v11, v46
	v_cvt_f32_i32_e32 v10, v47
	v_cvt_f32_i32_e32 v9, v48
	v_cvt_f32_i32_e32 v32, v49
	v_cvt_f32_i32_e32 v31, v50
	v_cvt_f32_i32_e32 v30, v51
	v_cvt_f32_i32_e32 v29, v52
	v_cvt_f32_i32_e32 v22, v53
	v_cvt_f32_i32_e32 v21, v54
	v_cvt_f32_i32_e32 v20, v55
	v_cvt_f32_i32_e32 v19, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v5, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	v_mov_b32_e32 v35, v103
	s_add_i32 s17, s11, s28
	s_lshl_b32 s16, s25, 4
.LBB0_7:                                ; %._crit_edge
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v36, s11, v101
	.loc	1 754 21                        ; ragged.py:754:21
	v_add_lshl_u32 v38, s17, v101, 1
	.loc	1 761 33                        ; ragged.py:761:33
	s_mul_i32 s2, s10, s25
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v37, s27, v0
	.loc	1 761 21                        ; ragged.py:761:21
	s_add_i32 s2, s27, s2
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v41, 16, v36
	v_or_b32_e32 v40, 32, v36
	.loc	1 753 36                        ; ragged.py:753:36
	v_add_nc_u32_e32 v42, 32, v38
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v39, 48, v36
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s1, s24, v36
	v_cmp_gt_i32_e64 s0, s24, v41
	.loc	1 760 36                        ; ragged.py:760:36
	v_add_lshl_u32 v43, s2, v0, 1
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s2, s24, v40
	v_cmp_gt_i32_e32 vcc_lo, s24, v39
	.loc	1 753 36                        ; ragged.py:753:36
	v_cndmask_b32_e64 v36, 0x80000000, v38, s1
	v_cndmask_b32_e64 v41, 0x80000000, v42, s0
	v_add_nc_u32_e32 v42, 64, v38
	v_add_nc_u32_e32 v38, 0x60, v38
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s25, v37
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	v_cndmask_b32_e64 v40, 0x80000000, v42, s2
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s12
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_and_b32 v35, 28, v35
	.loc	1 760 36                        ; ragged.py:760:36
	v_cndmask_b32_e64 v37, 0x80000000, v43, s3
	.loc	1 753 36                        ; ragged.py:753:36
	s_clause 0x3
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v42, v40, s[4:7], 0 offen
	buffer_load_u16 v43, v38, s[4:7], 0 offen
	.loc	1 760 36                        ; ragged.py:760:36
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v40, s25, v101
	.loc	1 760 36                        ; ragged.py:760:36
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v38, 4, v0
	.loc	1 827 22                        ; ragged.py:827:22
	s_mul_i32 s3, s17, s25
	.loc	1 765 17                        ; ragged.py:765:17
	v_lshl_add_u32 v39, v102, 2, 0
	v_lshl_add_u32 v44, v102, 1, 0
	s_waitcnt lgkmcnt(0)
	.loc	1 707 36                        ; ragged.py:707:36
	v_and_or_b32 v45, v38, 1, v100
	.loc	1 765 17                        ; ragged.py:765:17
	s_barrier
	.loc	1 827 13                        ; ragged.py:827:13
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v46, 0x80, v45
	v_or_b32_e32 v48, 0x8e, v45
	v_or_b32_e32 v49, 0x8c, v45
	v_or_b32_e32 v50, 0x8a, v45
	v_or_b32_e32 v51, 0x88, v45
	v_or_b32_e32 v52, 0x86, v45
	v_or_b32_e32 v53, 0x84, v45
	v_or_b32_e32 v54, 0x82, v45
	v_or_b32_e32 v55, 14, v45
	v_or_b32_e32 v56, 12, v45
	v_or_b32_e32 v57, 10, v45
	v_or_b32_e32 v58, 8, v45
	v_or_b32_e32 v59, 6, v45
	v_or_b32_e32 v60, 4, v45
	v_or_b32_e32 v61, 2, v45
	.loc	1 707 18 is_stmt 0              ; ragged.py:707:18
	v_or_b32_e32 v47, s27, v45
	v_or_b32_e32 v63, s27, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 709 20 is_stmt 1              ; ragged.py:709:20
	v_cmp_gt_i32_e64 s4, s25, v47
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s1, s4
	.loc	1 753 36                        ; ragged.py:753:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v137, v30, v43 :: v_dual_lshlrev_b32 v134, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v93, v93, v134 :: v_dual_lshlrev_b32 v0, 5, v0
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v94, v94, v134 :: v_dual_lshlrev_b32 v37, 16, v37
	.loc	1 753 36                        ; ragged.py:753:36
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v91, v91, v134 :: v_dual_and_b32 v38, 32, v0
	.loc	1 827 22                        ; ragged.py:827:22
	v_add3_u32 v0, s3, s27, v40
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v92, v92, v134 :: v_dual_lshlrev_b32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 765 17                        ; ragged.py:765:17
	v_add3_u32 v35, v39, v38, v35
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v85, v85, v42 :: v_dual_add_nc_u32 v38, s16, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v90, v41
	v_mul_f32_e32 v87, v87, v41
	.loc	1 765 17                        ; ragged.py:765:17
	ds_store_b32 v35, v37
	s_waitcnt lgkmcnt(0)
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v107, v38, v45, 2
	v_add_lshl_u32 v108, v38, v61, 2
	v_add_lshl_u32 v109, v38, v60, 2
	v_add_lshl_u32 v110, v38, v59, 2
	v_add_lshl_u32 v111, v38, v58, 2
	v_add_lshl_u32 v112, v38, v57, 2
	v_add_lshl_u32 v113, v38, v56, 2
	v_add_lshl_u32 v114, v38, v55, 2
	v_add_lshl_u32 v115, v38, v46, 2
	v_add_lshl_u32 v116, v38, v54, 2
	v_add_lshl_u32 v117, v38, v53, 2
	v_add_lshl_u32 v118, v38, v52, 2
	v_add_lshl_u32 v119, v38, v51, 2
	v_add_lshl_u32 v120, v38, v50, 2
	v_add_lshl_u32 v121, v38, v49, 2
	v_add_lshl_u32 v122, v38, v48, 2
	.loc	1 765 17                        ; ragged.py:765:17
	s_barrier
	ds_load_b128 v[35:38], v44
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v135, v32, v43
	v_mul_f32_e32 v136, v31, v43
	v_mul_f32_e32 v138, v29, v43
	.loc	1 765 17                        ; ragged.py:765:17
	ds_load_b128 v[29:32], v44 offset:16
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[39:40], null, s25, 48, v[0:1]
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v89, v89, v41
	v_mul_f32_e32 v88, v88, v41
	v_mul_f32_e32 v71, v71, v41
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v40, v0, v45, 2
	v_add_lshl_u32 v47, v0, v61, 2
	v_add_lshl_u32 v64, v0, v60, 2
	v_add_lshl_u32 v95, v0, v59, 2
	v_add_lshl_u32 v96, v0, v58, 2
	v_add_lshl_u32 v97, v0, v57, 2
	v_add_lshl_u32 v98, v0, v56, 2
	v_add_lshl_u32 v99, v0, v55, 2
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s3, s25, v63
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v84, v84, v134 :: v_dual_mul_f32 v69, v69, v41
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v93, v93, v36
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v33, v33, v42 :: v_dual_add_nc_u32 v62, s26, v0
	v_dual_mul_f32 v86, v86, v42 :: v_dual_mul_f32 v89, v89, v36
	v_dual_mul_f32 v34, v34, v42 :: v_dual_mul_f32 v85, v85, v36
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v91, v91, v38
	v_mul_f32_e32 v87, v87, v38
	v_mul_f32_e32 v33, v33, v38
	v_mul_f32_e32 v38, v138, v38
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v123, v62, v45, 2
	v_add_lshl_u32 v124, v62, v61, 2
	v_add_lshl_u32 v125, v62, v60, 2
	v_add_lshl_u32 v126, v62, v59, 2
	v_add_lshl_u32 v127, v62, v58, 2
	v_add_lshl_u32 v128, v62, v57, 2
	v_add_lshl_u32 v129, v62, v56, 2
	v_add_lshl_u32 v130, v62, v55, 2
	v_add_lshl_u32 v131, v62, v46, 2
	v_add_lshl_u32 v132, v62, v54, 2
	v_add_lshl_u32 v133, v62, v53, 2
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v94, v94, v35
	v_mul_f32_e32 v92, v92, v37
	v_dual_mul_f32 v90, v90, v35 :: v_dual_mul_f32 v83, v83, v134
	v_dual_mul_f32 v88, v88, v37 :: v_dual_mul_f32 v81, v81, v134
	v_dual_mul_f32 v86, v86, v35 :: v_dual_mul_f32 v79, v79, v134
	v_dual_mul_f32 v34, v34, v37 :: v_dual_mul_f32 v77, v77, v134
	v_dual_mul_f32 v35, v135, v35 :: v_dual_mul_f32 v36, v136, v36
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v75, v75, v134
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v37, v137, v37
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v135, v62, v52, 2
	v_add_lshl_u32 v136, v62, v51, 2
	v_add_lshl_u32 v137, v62, v50, 2
	v_add_lshl_u32 v138, v62, v49, 2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v82, v82, v134 :: v_dual_mul_f32 v67, v67, v41
	v_dual_mul_f32 v76, v76, v134 :: v_dual_mul_f32 v21, v21, v43
	v_dual_mul_f32 v74, v74, v134 :: v_dual_mul_f32 v19, v19, v43
	v_dual_mul_f32 v73, v73, v134 :: v_dual_mul_f32 v72, v72, v41
	v_dual_mul_f32 v70, v70, v41 :: v_dual_mul_f32 v25, v25, v42
	v_dual_mul_f32 v68, v68, v41 :: v_dual_mul_f32 v23, v23, v42
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v26, v26, v42 :: v_dual_mul_f32 v69, v69, v32
	v_dual_mul_f32 v22, v22, v43 :: v_dual_mul_f32 v71, v71, v30
	v_mul_f32_e32 v24, v24, v42
	v_dual_mul_f32 v20, v20, v43 :: v_dual_mul_f32 v17, v17, v41
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v40, 0x80000000, v40, s5
	v_cndmask_b32_e64 v47, 0x80000000, v47, s5
	v_cndmask_b32_e64 v63, 0x80000000, v64, s5
	v_cndmask_b32_e64 v64, 0x80000000, v95, s5
	v_cndmask_b32_e64 v95, 0x80000000, v96, s5
	v_cndmask_b32_e64 v96, 0x80000000, v97, s5
	v_cndmask_b32_e64 v97, 0x80000000, v98, s5
	v_cndmask_b32_e64 v98, 0x80000000, v99, s5
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s0, s4
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v80, v80, v134 :: v_dual_mul_f32 v65, v65, v41
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v99, 0x80000000, v107, s5
	v_cndmask_b32_e64 v107, 0x80000000, v108, s5
	v_cndmask_b32_e64 v108, 0x80000000, v109, s5
	v_cndmask_b32_e64 v109, 0x80000000, v110, s5
	v_cndmask_b32_e64 v110, 0x80000000, v111, s5
	v_cndmask_b32_e64 v111, 0x80000000, v112, s5
	v_cndmask_b32_e64 v112, 0x80000000, v113, s5
	v_cndmask_b32_e64 v113, 0x80000000, v114, s5
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s5, s2, s4
	s_and_b32 s2, s2, s3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v114, 0x80000000, v123, s5
	v_cndmask_b32_e64 v123, 0x80000000, v124, s5
	v_cndmask_b32_e64 v124, 0x80000000, v125, s5
	v_cndmask_b32_e64 v125, 0x80000000, v126, s5
	v_cndmask_b32_e64 v126, 0x80000000, v127, s5
	v_cndmask_b32_e64 v127, 0x80000000, v128, s5
	v_cndmask_b32_e64 v128, 0x80000000, v129, s5
	v_cndmask_b32_e64 v129, 0x80000000, v130, s5
	v_cndmask_b32_e64 v130, 0x80000000, v131, s2
	v_cndmask_b32_e64 v131, 0x80000000, v132, s2
	v_cndmask_b32_e64 v132, 0x80000000, v133, s2
	v_cndmask_b32_e64 v133, 0x80000000, v135, s2
	v_cndmask_b32_e64 v135, 0x80000000, v136, s2
	v_cndmask_b32_e64 v136, 0x80000000, v137, s2
	v_cndmask_b32_e64 v137, 0x80000000, v138, s2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v78, v78, v134 :: v_dual_mul_f32 v27, v27, v41
	v_dual_mul_f32 v66, v66, v41 :: v_dual_mul_f32 v83, v83, v30
	v_dual_mul_f32 v28, v28, v41 :: v_dual_mul_f32 v81, v81, v32
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v84, v84, v29 :: v_dual_mul_f32 v15, v15, v42
	v_dual_mul_f32 v82, v82, v31 :: v_dual_mul_f32 v13, v13, v42
	v_dual_mul_f32 v72, v72, v29 :: v_dual_mul_f32 v11, v11, v42
	v_dual_mul_f32 v70, v70, v31 :: v_dual_mul_f32 v9, v9, v42
	v_mul_f32_e32 v134, v26, v29
	v_mul_f32_e32 v138, v25, v30
	v_dual_mul_f32 v140, v23, v32 :: v_dual_mul_f32 v5, v5, v43
	v_mul_f32_e32 v29, v22, v29
	v_dual_mul_f32 v139, v24, v31 :: v_dual_mul_f32 v30, v21, v30
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v7, v7, v43
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v31, v20, v31 :: v_dual_mul_f32 v32, v19, v32
	.loc	1 758 17                        ; ragged.py:758:17
	v_mul_f32_e32 v1, v1, v43
	.loc	1 765 17                        ; ragged.py:765:17
	ds_load_b128 v[19:22], v44 offset:512
	ds_load_b128 v[23:26], v44 offset:528
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v100, v0, v46, 2
	v_add_lshl_u32 v101, v0, v54, 2
	v_add_lshl_u32 v102, v0, v53, 2
	v_add_lshl_u32 v103, v0, v52, 2
	v_add_lshl_u32 v104, v0, v51, 2
	v_add_lshl_u32 v105, v0, v50, 2
	v_add_lshl_u32 v106, v0, v49, 2
	v_add_lshl_u32 v0, v0, v48, 2
	v_add_lshl_u32 v62, v62, v48, 2
	v_add_lshl_u32 v45, v39, v45, 2
	v_add_lshl_u32 v61, v39, v61, 2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v18, v18, v41 :: v_dual_mul_f32 v3, v3, v43
	v_mul_f32_e32 v16, v16, v42
	v_mul_f32_e32 v14, v14, v42
	v_mul_f32_e32 v12, v12, v42
	v_mul_f32_e32 v10, v10, v42
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s1, s3
	s_and_b32 s0, s0, s3
	s_and_b32 s4, vcc_lo, s4
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 765 17                        ; ragged.py:765:17
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v74, v74, v25 :: v_dual_mul_f32 v9, v9, v26
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v60, v39, v60, 2
	v_cndmask_b32_e64 v100, 0x80000000, v100, s1
	v_cndmask_b32_e64 v115, 0x80000000, v115, s0
	v_cndmask_b32_e64 v45, 0x80000000, v45, s4
	v_cndmask_b32_e64 v101, 0x80000000, v101, s1
	v_cndmask_b32_e64 v102, 0x80000000, v102, s1
	v_cndmask_b32_e64 v103, 0x80000000, v103, s1
	v_cndmask_b32_e64 v104, 0x80000000, v104, s1
	v_cndmask_b32_e64 v105, 0x80000000, v105, s1
	v_cndmask_b32_e64 v106, 0x80000000, v106, s1
	v_cndmask_b32_e64 v116, 0x80000000, v116, s0
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	.loc	1 758 17                        ; ragged.py:758:17
	v_dual_mul_f32 v8, v8, v43 :: v_dual_mul_f32 v73, v73, v26
	v_dual_mul_f32 v6, v6, v43 :: v_dual_mul_f32 v65, v65, v22
	v_dual_mul_f32 v4, v4, v43 :: v_dual_mul_f32 v27, v27, v24
	v_dual_mul_f32 v2, v2, v43 :: v_dual_mul_f32 v17, v17, v26
	.loc	1 765 17                        ; ragged.py:765:17
	v_dual_mul_f32 v41, v80, v19 :: v_dual_mul_f32 v42, v79, v20
	v_mul_f32_e32 v13, v13, v22
	v_dual_mul_f32 v43, v78, v21 :: v_dual_mul_f32 v44, v77, v22
	v_dual_mul_f32 v15, v15, v20 :: v_dual_mul_f32 v76, v76, v23
	v_mul_f32_e32 v11, v11, v24
	v_dual_mul_f32 v75, v75, v24 :: v_dual_mul_f32 v68, v68, v19
	v_mul_f32_e32 v7, v7, v20
	v_dual_mul_f32 v67, v67, v20 :: v_dual_mul_f32 v66, v66, v21
	v_dual_mul_f32 v5, v5, v22 :: v_dual_mul_f32 v28, v28, v23
	v_dual_mul_f32 v3, v3, v24 :: v_dual_mul_f32 v18, v18, v25
	v_dual_mul_f32 v1, v1, v26 :: v_dual_mul_f32 v12, v12, v23
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v16, v16, v19
	v_mul_f32_e32 v14, v14, v21
	v_mul_f32_e32 v10, v10, v25
	.loc	1 827 13                        ; ragged.py:827:13
	s_clause 0x1f
	buffer_store_b32 v94, v40, s[8:11], 0 offen
	buffer_store_b32 v93, v47, s[8:11], 0 offen
	buffer_store_b32 v92, v63, s[8:11], 0 offen
	buffer_store_b32 v91, v64, s[8:11], 0 offen
	buffer_store_b32 v84, v95, s[8:11], 0 offen
	buffer_store_b32 v83, v96, s[8:11], 0 offen
	buffer_store_b32 v82, v97, s[8:11], 0 offen
	buffer_store_b32 v81, v98, s[8:11], 0 offen
	buffer_store_b32 v41, v100, s[8:11], 0 offen
	buffer_store_b32 v42, v101, s[8:11], 0 offen
	buffer_store_b32 v43, v102, s[8:11], 0 offen
	buffer_store_b32 v44, v103, s[8:11], 0 offen
	buffer_store_b32 v76, v104, s[8:11], 0 offen
	buffer_store_b32 v75, v105, s[8:11], 0 offen
	buffer_store_b32 v74, v106, s[8:11], 0 offen
	buffer_store_b32 v73, v0, s[8:11], 0 offen
	buffer_store_b32 v90, v99, s[8:11], 0 offen
	buffer_store_b32 v89, v107, s[8:11], 0 offen
	buffer_store_b32 v88, v108, s[8:11], 0 offen
	buffer_store_b32 v87, v109, s[8:11], 0 offen
	buffer_store_b32 v72, v110, s[8:11], 0 offen
	buffer_store_b32 v71, v111, s[8:11], 0 offen
	buffer_store_b32 v70, v112, s[8:11], 0 offen
	buffer_store_b32 v69, v113, s[8:11], 0 offen
	buffer_store_b32 v68, v115, s[8:11], 0 offen
	buffer_store_b32 v67, v116, s[8:11], 0 offen
	buffer_store_b32 v66, v117, s[8:11], 0 offen
	buffer_store_b32 v65, v118, s[8:11], 0 offen
	buffer_store_b32 v28, v119, s[8:11], 0 offen
	buffer_store_b32 v27, v120, s[8:11], 0 offen
	buffer_store_b32 v18, v121, s[8:11], 0 offen
	buffer_store_b32 v17, v122, s[8:11], 0 offen
	s_clause 0x10
	buffer_store_b32 v86, v114, s[8:11], 0 offen
	buffer_store_b32 v85, v123, s[8:11], 0 offen
	buffer_store_b32 v34, v124, s[8:11], 0 offen
	buffer_store_b32 v33, v125, s[8:11], 0 offen
	buffer_store_b32 v134, v126, s[8:11], 0 offen
	buffer_store_b32 v138, v127, s[8:11], 0 offen
	buffer_store_b32 v139, v128, s[8:11], 0 offen
	buffer_store_b32 v140, v129, s[8:11], 0 offen
	buffer_store_b32 v16, v130, s[8:11], 0 offen
	buffer_store_b32 v15, v131, s[8:11], 0 offen
	buffer_store_b32 v14, v132, s[8:11], 0 offen
	buffer_store_b32 v13, v133, s[8:11], 0 offen
	buffer_store_b32 v12, v135, s[8:11], 0 offen
	buffer_store_b32 v11, v136, s[8:11], 0 offen
	buffer_store_b32 v10, v137, s[8:11], 0 offen
	buffer_store_b32 v9, v62, s[8:11], 0 offen
	buffer_store_b32 v35, v45, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v61, s4
	v_add_lshl_u32 v9, v39, v59, 2
	v_add_lshl_u32 v10, v39, v58, 2
	v_add_lshl_u32 v11, v39, v57, 2
	v_cndmask_b32_e64 v12, 0x80000000, v60, s4
	buffer_store_b32 v36, v0, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v9, s4
	v_cndmask_b32_e64 v9, 0x80000000, v10, s4
	v_cndmask_b32_e64 v10, 0x80000000, v11, s4
	v_add_lshl_u32 v11, v39, v56, 2
	s_clause 0x3
	buffer_store_b32 v37, v12, s[8:11], 0 offen
	buffer_store_b32 v38, v0, s[8:11], 0 offen
	buffer_store_b32 v29, v9, s[8:11], 0 offen
	buffer_store_b32 v30, v10, s[8:11], 0 offen
	v_add_lshl_u32 v0, v39, v55, 2
	v_add_lshl_u32 v10, v39, v46, 2
	v_cndmask_b32_e64 v9, 0x80000000, v11, s4
	v_add_lshl_u32 v11, v39, v54, 2
	v_add_lshl_u32 v12, v39, v53, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v8, v8, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 827 13                        ; ragged.py:827:13
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v6, v6, v21
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v31, v9, s[8:11], 0 offen
	buffer_store_b32 v32, v0, s[8:11], 0 offen
	buffer_store_b32 v8, v10, s[8:11], 0 offen
	buffer_store_b32 v7, v11, s[8:11], 0 offen
	buffer_store_b32 v6, v12, s[8:11], 0 offen
	v_add_lshl_u32 v0, v39, v52, 2
	v_add_lshl_u32 v6, v39, v51, 2
	v_add_lshl_u32 v7, v39, v50, 2
	v_add_lshl_u32 v8, v39, v49, 2
	v_add_lshl_u32 v9, v39, v48, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v4, v4, v23
	.loc	1 827 13                        ; ragged.py:827:13
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	.loc	1 765 17                        ; ragged.py:765:17
	v_mul_f32_e32 v2, v2, v25
	.loc	1 827 13                        ; ragged.py:827:13
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v5, v0, s[8:11], 0 offen
	buffer_store_b32 v4, v6, s[8:11], 0 offen
	buffer_store_b32 v3, v7, s[8:11], 0 offen
	buffer_store_b32 v2, v8, s[8:11], 0 offen
	buffer_store_b32 v1, v9, s[8:11], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 141
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 141
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8000
; TotalNumSgprs: 34
; NumVgprs: 141
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 141
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     141
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
