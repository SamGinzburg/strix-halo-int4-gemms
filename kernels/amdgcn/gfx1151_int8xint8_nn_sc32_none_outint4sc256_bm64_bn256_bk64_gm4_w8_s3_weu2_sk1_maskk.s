	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s34, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s9, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v69, 15, v0
	v_and_b32_e32 v136, 4, v0
	v_and_b32_e32 v137, 16, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s7, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s6, s6, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s11, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s6, s6, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s6, s6, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s8, s5
	s_sub_i32 s10, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s10, s10, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s8, s10
	s_add_i32 s8, s8, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s8, s9, s8
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s9, s11
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s9, s12, s9
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s11, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s8, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s6, s8
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s4, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s9, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s4
	s_abs_i32 s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s6
	s_sub_i32 s11, 0, s6
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s2, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s2
	s_mul_hi_u32 s2, s5, s10
	s_xor_b32 s10, s4, s9
	s_mul_i32 s11, s2, s6
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s2, 1
	s_sub_i32 s12, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s2, s11, s2
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s2, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s2, s11, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s10
	s_sub_i32 s6, s2, s10
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s34, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	s_mov_b32 s5, 0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s4, s4, s8
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s2, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v1, 4, v0
.Ltmp15:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 16, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 15 is_stmt 0                ; generate_amdgcn.py:0:15
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow418
	s_load_b128 s[20:23], s[0:1], 0x20
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v70, 0xf0, v0
	v_lshrrev_b32_e32 v68, 4, v0
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v65, 4, v69
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v134, 3, v0
	v_dual_mov_b32 v80, 0 :: v_dual_lshlrev_b32 v135, 4, v0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v119, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s33, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[12:19], s[0:1], 0x0
	s_mov_b32 s8, 0
	v_bfe_i32 v5, v0, 2, 1
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
.Ltmp17:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s34, 31
	v_lshrrev_b32_e32 v6, 1, v0
.Ltmp18:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 2, v0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s5, s1, 31
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v139, 3, v134
	s_lshr_b32 s5, s5, 27
	v_and_or_b32 v6, 0x70, v6, v69
	v_mul_lo_u32 v1, s34, v1
	s_add_i32 s1, s1, s5
.Ltmp20:
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	s_mul_i32 s4, s33, s34
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s37, s1, 5
	v_bfe_i32 v3, v0, 4, 1
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s28, s14
	s_mov_b32 s29, s15
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_lshlrev_b32_e32 v2, 5, v0
	v_add_nc_u32_e32 v142, 0, v6
	v_add3_u32 v140, v1, v139, s4
	v_lshlrev_b32_e32 v1, 3, v0
	v_and_b32_e32 v3, 0x90, v3
	v_and_b32_e32 v4, 0x160, v2
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v2, 32, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v1, 0x778, v1
	v_mad_u64_u32 v[66:67], null, s7, v68, v[65:66]
	v_and_or_b32 v4, 0x90, v5, v4
	v_or_b32_e32 v5, s33, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v3, v1
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v9, 28, v8
	v_mov_b32_e32 v120, 0
	v_or_b32_e32 v7, 16, v5
	v_or_b32_e32 v6, 32, v5
	v_mul_lo_u32 v143, v5, s37
	v_or_b32_e32 v5, 48, v5
	v_xor_b32_e32 v3, 16, v4
	v_mul_lo_u32 v144, v7, s37
	v_lshrrev_b32_e32 v7, 6, v0
	v_mul_lo_u32 v145, v6, s37
	v_lshlrev_b32_e32 v6, 2, v0
	v_mul_lo_u32 v146, v5, s37
	v_mov_b32_e32 v119, 0
	v_and_b32_e32 v5, 2, v7
	v_lshlrev_b32_e32 v7, 1, v70
	v_and_b32_e32 v6, 0x1c0, v6
	v_mov_b32_e32 v118, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_add_nc_u32_e32 v147, 0, v7
.Ltmp22:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp23:
	.loc	1 356 14 is_stmt 1              ; generate_amdgcn.py:356:14
	s_lshl_b32 s35, s6, 8
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 26
	v_add3_u32 v10, v5, v6, v2
	v_add3_u32 v11, v147, v7, v2
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v149, 0, v1
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v151, 0, v4
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v152, 0, v3
	v_mov_b32_e32 v1, s8
.Ltmp25:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v138, 16, v68
	v_lshl_add_u32 v141, s7, 4, v66
	v_or_b32_e32 v148, s35, v0
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v150, 0, v135
	v_dual_mov_b32 v2, s9 :: v_dual_mov_b32 v3, s10
	v_dual_mov_b32 v4, s11 :: v_dual_mov_b32 v5, s12
	v_dual_mov_b32 v6, s13 :: v_dual_mov_b32 v7, s14
	v_dual_mov_b32 v8, s15 :: v_dual_add_nc_u32 v153, v10, v9
	v_mov_b32_e32 v78, 0
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v154, v11, v9
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v79, 0
.Ltmp26:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s2, s0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_ashr_i32 s36, s2, 6
	s_lshl_b32 s38, s7, 5
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s12, s16
	s_mov_b32 s13, s17
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.Ltmp27:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s0, s8, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s10, s0, 6
	v_or_b32_e32 v9, s10, v139
	v_or_b32_e32 v10, s10, v68
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s0, s10, s7
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_or_b32 s9, s10, 32
	v_or_b32_e32 v11, s10, v138
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s0, s0, s35
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v13, s9, v139
	v_or_b32_e32 v14, s9, v68
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v12, s10, v140
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v15, s9, v138
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v17, s0, v66
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s34, v10
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e64 s1, s34, v9
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v18, s0, v141
	s_add_i32 s2, s0, s38
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s34, v11
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v16, s9, v140
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e64 s4, s34, v13
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v9, s2, v66
	v_add_nc_u32_e32 v10, s2, v141
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s2, s34, v14
	v_cmp_gt_i32_e64 s5, s34, v15
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v11, 0x80000000, v12, s1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v12, 0x80000000, v17, vcc_lo
	v_cndmask_b32_e64 v13, 0x80000000, v18, s0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v21, 0x80000000, v16, s4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v25, 0x80000000, v10, s5
	buffer_load_b128 v[17:20], v12, s[28:31], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[23:24], v11, s[24:27], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[21:22], v21, s[24:27], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s10, 5
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(3)
	ds_store_b64 v149, v[23:24] offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v150, v[13:16] offset:4096
	ds_store_b128 v150, v[17:20]
	buffer_load_b128 v[17:20], v25, s[28:31], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s0, s7
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s37
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v149, v[21:22] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v150, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v150, v[17:20] offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v142 offset:3328
	ds_load_u8 v10, v142 offset:3072
	ds_load_u8 v11, v142 offset:3840
	ds_load_u8 v12, v142 offset:3584
	ds_load_u8 v13, v142 offset:2304
	ds_load_u8 v14, v142 offset:2048
	ds_load_u8 v15, v142 offset:2816
	ds_load_u8 v16, v142 offset:2560
	ds_load_u8 v17, v142 offset:1280
	ds_load_u8 v18, v142 offset:1024
	ds_load_u8 v19, v142 offset:1792
	ds_load_u8 v20, v142 offset:1536
	ds_load_u8 v21, v142 offset:256
	ds_load_u8 v22, v142
	ds_load_u8 v23, v142 offset:768
	ds_load_u8 v24, v142 offset:512
	ds_load_u8 v25, v142 offset:7424
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[33:36], v151 offset:17408
	ds_load_b128 v[37:40], v152 offset:17408
	ds_load_b128 v[175:178], v151 offset:17920
	ds_load_b128 v[179:182], v152 offset:17920
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v142 offset:7168
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v142 offset:7936
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	v_lshl_or_b32 v158, v11, 16, v9
	ds_load_u8 v9, v142 offset:7680
	ds_load_u8 v11, v142 offset:6400
	ds_load_u8 v16, v142 offset:6912
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	v_lshl_or_b32 v157, v14, 16, v13
	v_perm_b32 v13, v18, v17, 0xc0c0004
	ds_load_u8 v14, v142 offset:6144
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	ds_load_u8 v18, v142 offset:5120
	ds_load_u8 v21, v142 offset:5888
	ds_load_u8 v20, v142 offset:3456
	v_lshl_or_b32 v156, v15, 16, v13
	ds_load_u8 v13, v142 offset:6656
	ds_load_u8 v15, v142 offset:5376
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v19, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v10, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v155, v19, 16, v17
	ds_load_u8 v17, v142 offset:2688
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v9, v9, v12, 0xc0c0004
	ds_load_u8 v12, v142 offset:5632
	v_lshl_or_b32 v162, v9, 16, v10
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	ds_load_u8 v14, v142 offset:4352
	ds_load_u8 v9, v142 offset:4864
	ds_load_u8 v10, v142 offset:4608
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v16, 0xc0c0004
	ds_load_u8 v16, v142 offset:4096
	v_lshl_or_b32 v161, v13, 16, v11
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v18, v15, 0xc0c0004
	ds_load_u8 v15, v142 offset:3968
	ds_load_u8 v13, v142 offset:3200
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v12, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v12, 16, v11
	ds_load_u8 v11, v142 offset:3712
	ds_load_u8 v12, v142 offset:2432
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v142 offset:2944
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v142 offset:2176
	v_lshl_or_b32 v159, v9, 16, v14
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v13, v20, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v11, v11, v15, 0xc0c0004
	ds_load_u8 v15, v142 offset:1408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v17, v10, 0xc0c0004
	ds_load_u8 v17, v142 offset:1920
	v_lshl_or_b32 v170, v11, 16, v13
	ds_load_u8 v13, v142 offset:896
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v16, v12, 0xc0c0004
	ds_load_u8 v16, v142 offset:1152
	v_lshl_or_b32 v169, v10, 16, v12
	ds_load_u8 v9, v142 offset:1664
	ds_load_u8 v10, v142 offset:384
	ds_load_u8 v12, v142 offset:128
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v11, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v17, 0xc0c0004
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[17:20], v151 offset:16384
	ds_load_b128 v[21:24], v152 offset:16384
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v142 offset:7296
	v_lshl_or_b32 v168, v9, 16, v11
	ds_load_u8 v9, v142 offset:640
	ds_load_u8 v11, v142 offset:7552
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v13, 0xc0c0004
	ds_load_u8 v13, v142 offset:8064
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v142 offset:6272
	v_lshl_or_b32 v167, v9, 16, v10
	ds_load_u8 v9, v142 offset:7808
	ds_load_u8 v10, v142 offset:6528
	v_wmma_i32_16x16x16_iu8 v[57:64], v[167:170], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[167:170], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v13, 0xc0c0004
	ds_load_u8 v13, v142 offset:7040
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v142 offset:6784
	v_lshl_or_b32 v174, v9, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v12, 16, v10
	ds_load_u8 v9, v142 offset:5504
	ds_load_u8 v10, v142 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v142 offset:6016
	ds_load_u8 v11, v142 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v10, 16, v9
	ds_load_u8 v9, v142 offset:4480
	ds_load_u8 v10, v142 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v142 offset:4992
	ds_load_u8 v11, v142 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v171, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[155:158], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[171:174], v[21:24], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[159:162], v[21:24], v[9:16] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[17:20], v151 offset:16896
	ds_load_b128 v[21:24], v152 offset:16896
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[41:48], v[171:174], v[37:40], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v58, v58
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[155:158], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[167:170], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[159:162], v[21:24], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[171:174], v[21:24], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[155:158], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v49, v49
	v_wmma_i32_16x16x16_iu8 v[17:24], v[159:162], v[37:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[155:158], v[175:178], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v155, v148, s1, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v157, v145, s0, 1
	v_add_lshl_u32 v156, v144, s0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[33:40], v[159:162], v[179:182], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[167:170], v[175:178], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v155, 0x80000000, v155, vcc_lo
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v167, 0x80000000, v157, vcc_lo
	v_add_lshl_u32 v157, v146, s0, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[159:166], v[171:174], v[179:182], v[159:166] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v155, v155, s[16:19], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v168, 0x80000000, v157, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v156, 0x80000000, v156, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v153, v155 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v155, v143, s0, 1
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s9, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s37
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s0, s7
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v155, 0x80000000, v155, vcc_lo
	s_clause 0x3
	buffer_load_u16 v158, v155, s[12:15], 0 offen
	buffer_load_u16 v157, v156, s[12:15], 0 offen
	buffer_load_u16 v156, v167, s[12:15], 0 offen
	buffer_load_u16 v155, v168, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v167, v142 offset:11520
	ds_load_u8 v168, v142 offset:11264
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[183:186], v151 offset:18432
	ds_load_b128 v[187:190], v152 offset:18432
	ds_load_b128 v[199:202], v151 offset:18944
	ds_load_b128 v[203:206], v152 offset:18944
	ds_load_b128 v[215:218], v151 offset:19456
	ds_load_b128 v[219:222], v152 offset:19456
	ds_load_b128 v[239:242], v151 offset:19968
	ds_load_b128 v[243:246], v152 offset:19968
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s8, s36
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v142 offset:12032
	ds_load_u8 v169, v142 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v142 offset:10496
	ds_load_u8 v170, v142 offset:10240
	v_lshl_or_b32 v226, v168, 16, v167
	ds_load_u8 v167, v142 offset:9472
	ds_load_u8 v168, v142 offset:9216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v142 offset:11008
	ds_load_u8 v171, v142 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v225, v170, 16, v169
	ds_load_u8 v168, v142 offset:9984
	ds_load_u8 v169, v142 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_lshl_or_b32 v224, v168, 16, v167
	ds_load_u8 v167, v142 offset:8448
	ds_load_u8 v168, v142 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v142 offset:8960
	ds_load_u8 v169, v142 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v223, v168, 16, v167
	ds_load_u8 v167, v142 offset:15616
	ds_load_u8 v168, v142 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v142 offset:16128
	ds_load_u8 v169, v142 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v142 offset:14592
	ds_load_u8 v170, v142 offset:14336
	v_lshl_or_b32 v230, v168, 16, v167
	ds_load_u8 v167, v142 offset:13568
	ds_load_u8 v168, v142 offset:13312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v142 offset:15104
	ds_load_u8 v171, v142 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v229, v170, 16, v169
	ds_load_u8 v168, v142 offset:14080
	ds_load_u8 v169, v142 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_lshl_or_b32 v228, v168, 16, v167
	ds_load_u8 v167, v142 offset:12544
	ds_load_u8 v168, v142 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v142 offset:13056
	ds_load_u8 v169, v142 offset:12800
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v227, v168, 16, v167
	ds_load_u8 v167, v142 offset:11648
	ds_load_u8 v168, v142 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v142 offset:12160
	ds_load_u8 v169, v142 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v142 offset:10624
	ds_load_u8 v170, v142 offset:10368
	v_lshl_or_b32 v234, v168, 16, v167
	ds_load_u8 v167, v142 offset:9600
	ds_load_u8 v168, v142 offset:9344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v142 offset:11136
	ds_load_u8 v171, v142 offset:10880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v233, v170, 16, v169
	ds_load_u8 v168, v142 offset:10112
	ds_load_u8 v169, v142 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_lshl_or_b32 v232, v168, 16, v167
	ds_load_u8 v167, v142 offset:8576
	ds_load_u8 v168, v142 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v142 offset:9088
	ds_load_u8 v169, v142 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v231, v168, 16, v167
	ds_load_u8 v167, v142 offset:15744
	ds_load_u8 v168, v142 offset:15488
	v_wmma_i32_16x16x16_iu8 v[175:182], v[231:234], v[183:186], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[191:198], v[231:234], v[199:202], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[207:214], v[231:234], v[215:218], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v142 offset:16256
	ds_load_u8 v169, v142 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v142 offset:14720
	ds_load_u8 v170, v142 offset:14464
	v_lshl_or_b32 v238, v168, 16, v167
	ds_load_u8 v167, v142 offset:13696
	ds_load_u8 v168, v142 offset:13440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v142 offset:15232
	ds_load_u8 v171, v142 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v237, v170, 16, v169
	ds_load_u8 v168, v142 offset:14208
	ds_load_u8 v169, v142 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_lshl_or_b32 v236, v168, 16, v167
	ds_load_u8 v167, v142 offset:12672
	ds_load_u8 v168, v142 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v142 offset:13184
	ds_load_u8 v169, v142 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v235, v168, 16, v167
	v_wmma_i32_16x16x16_iu8 v[167:174], v[223:226], v[183:186], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[235:238], v[187:190], v[175:182] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[167:174], v[227:230], v[187:190], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[183:190], v[223:226], v[199:202], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[191:198], v[235:238], v[203:206], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[207:214], v[235:238], v[219:222], v[207:214] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v167, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[183:190], v[227:230], v[203:206], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[199:206], v[223:226], v[215:218], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_wmma_i32_16x16x16_iu8 v[199:206], v[227:230], v[219:222], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[223:226], v[239:242], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v185, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[227:230], v[243:246], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[223:230], v[231:234], v[239:242], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v232, v9
	v_cvt_f32_i32_e32 v9, v12
	v_cvt_f32_i32_e32 v231, v10
	v_wmma_i32_16x16x16_iu8 v[223:230], v[235:238], v[243:246], v[223:230] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v233, v11
	v_cvt_f32_i32_e32 v235, v15
	v_cvt_f32_i32_e32 v15, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v29, v223
	v_cvt_f32_i32_e32 v223, v224
	v_cvt_f32_i32_e32 v224, v225
	v_cvt_f32_i32_e32 v225, v226
	v_cvt_f32_i32_e32 v226, v227
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v227, v9, v158
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[9:12], v147 offset:20480
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v234, v16
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v27, v30
	v_cvt_f32_i32_e32 v30, v228
	v_mov_b16_e64 v228.l, 0
	v_cvt_f32_i32_e32 v237, v13
	v_cvt_f32_i32_e32 v13, v26
	v_cvt_f32_i32_e32 v26, v31
	v_cvt_f32_i32_e32 v31, v229
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v229.l, v228.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v15, v15, v157 :: v_dual_lshlrev_b32 v156, 16, v156
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v236, v14
	v_cvt_f32_i32_e32 v14, v25
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v199, v199
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v181, v181
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v229.h, v12.l
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v215, v215
	v_cvt_f32_i32_e32 v216, v216
	v_cvt_f32_i32_e32 v217, v217
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v114, v15, v229 :: v_dual_mul_f32 v15, v20, v156
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v20.l, v228.l
	v_mov_b16_e32 v20.h, v11.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v130, v227, v229
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v218, v218
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v98, v15, v229 :: v_dual_mul_f32 v15, v36, v155
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v25, v32
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v176, v176
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v82, v15, v229 :: v_dual_mul_f32 v15, v233, v158
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v212, v212
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v194, v194
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v131, v15, v20
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v15, v16, v157 :: v_dual_lshlrev_b32 v16, 16, v10
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v32, v230
	v_cvt_f32_i32_e32 v192, v192
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v115, v15, v20
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v19, v156
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v214, v214
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v99, v15, v20
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v35, v155
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v188, v188
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v83, v15, v20
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v231, v158
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v204, v204
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v132, v15, v16 :: v_dual_mul_f32 v13, v13, v157
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v15, 16, v9
	v_and_b32_e32 v9, 0xffff0000, v9
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v206, v206
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v116, v13, v16
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v18, v156
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v219, v219
	v_cvt_f32_i32_e32 v220, v220
	v_cvt_f32_i32_e32 v221, v221
	v_cvt_f32_i32_e32 v222, v222
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v100, v13, v16 :: v_dual_mul_f32 v13, v34, v155
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v11, 0xffff0000, v11
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v180, v180
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v84, v13, v16 :: v_dual_mul_f32 v13, v232, v158
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v16, v146, s0, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v197, v197
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v133, v13, v15
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v14, v157
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v14, v144, s0, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v195, v195
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v117, v13, v15
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v17, v156
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v17, v148, s1, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v213, v213
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v101, v13, v15
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v33, v155
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v209, v209
	v_cvt_f32_i32_e32 v211, v211
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v85, v13, v15 :: v_dual_and_b32 v10, 0xffff0000, v10
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v13, v143, s0, 1
	v_add_lshl_u32 v15, v145, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v12, 0xffff0000, v12
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v17, v17, s[16:19], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x3
	buffer_load_u16 v18, v13, s[12:15], 0 offen
	buffer_load_u16 v33, v14, s[12:15], 0 offen
	buffer_load_u16 v34, v15, s[12:15], 0 offen
	buffer_load_u16 v35, v16, s[12:15], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[13:16], v147 offset:20496
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v228.h, v13.l
	v_and_b32_e32 v13, 0xffff0000, v13
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v36, 16, v18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v154, v17 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v147 offset:20480
	v_mul_f32_e32 v167, v167, v36
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v133, v167, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v168, v36
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v132, v167, v18 :: v_dual_mul_f32 v167, v169, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v131, v167, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v170, v36
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v130, v167, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v183, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v117, v167, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v184, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v116, v167, v18 :: v_dual_mul_f32 v167, v185, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v115, v167, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v186, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v114, v167, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v199, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v101, v167, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v200, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v100, v167, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v201, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v99, v167, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v202, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v98, v167, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v215, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v85, v167, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v216, v35
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v84, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v217, v35 :: v_dual_lshlrev_b32 v18, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v83, v17, v19 :: v_dual_and_b32 v16, 0xffff0000, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v218, v35
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v82, v17, v20 :: v_dual_mul_f32 v17, v234, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v126, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v25, v157
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v110, v17, v18 :: v_dual_mul_f32 v17, v24, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v94, v17, v18 :: v_dual_mul_f32 v17, v40, v155
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v40, v34, v210
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v76, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v235, v158 :: v_dual_lshlrev_b32 v18, 16, v15
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v15, 0xffff0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v127, v17, v18
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v26, v157
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v111, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v23, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v95, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v39, v155
	v_mul_f32_e32 v39, v34, v211
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v79, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v236, v158
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v18, 16, v14
	v_and_b32_e32 v14, 0xffff0000, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v128, v17, v18 :: v_dual_mul_f32 v17, v27, v157
	v_dual_fmac_f32 v112, v17, v18 :: v_dual_mul_f32 v17, v22, v156
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v96, v17, v18 :: v_dual_mul_f32 v17, v38, v155
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v22, v33, v196
	v_mul_f32_e32 v38, v34, v214
	v_mul_f32_e32 v26, v33, v194
	v_mul_f32_e32 v24, v33, v198
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v80, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v237, v158
	v_mul_f32_e32 v23, v33, v197
	v_mul_f32_e32 v25, v33, v195
	v_mul_f32_e32 v27, v33, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v129, v17, v228
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v28, v157 :: v_dual_mul_f32 v28, v33, v192
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v113, v17, v228
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v21, v156
	v_mul_f32_e32 v21, v171, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v97, v17, v228
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v37, v155
	v_mul_f32_e32 v37, v34, v213
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v81, v17, v228
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[17:20], v147 offset:20496
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v129, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v172, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v128, v21, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v173, v36
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v127, v21, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v174, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v126, v21, v20 :: v_dual_mul_f32 v21, v187, v33
	v_fmac_f32_e32 v113, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v188, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v112, v21, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v189, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v111, v21, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v190, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v110, v21, v20 :: v_dual_mul_f32 v21, v203, v34
	v_fmac_f32_e32 v97, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v204, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v96, v21, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v205, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v95, v21, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v206, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v94, v21, v20 :: v_dual_mul_f32 v21, v219, v35
	v_fmac_f32_e32 v81, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v220, v35
	v_mul_f32_e32 v21, v33, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v33, v34, v207 :: v_dual_fmac_f32 v80, v17, v18
	v_dual_mul_f32 v17, v221, v35 :: v_dual_mul_f32 v18, v36, v181
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v79, v17, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v222, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v19, v36, v182 :: v_dual_fmac_f32 v76, v17, v20
	v_dual_mul_f32 v17, v158, v57 :: v_dual_mul_f32 v20, v36, v179
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v124, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v157, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v109, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v156, v41
	v_mul_f32_e32 v41, v34, v209
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v93, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v155, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v78, v17, v9 :: v_dual_mul_f32 v9, v158, v62
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v36, v180
	v_mul_f32_e32 v29, v35, v29
	v_mul_f32_e32 v30, v35, v30
	v_dual_mul_f32 v31, v35, v31 :: v_dual_fmac_f32 v120, v9, v14
	v_dual_mul_f32 v9, v157, v54 :: v_dual_mul_f32 v32, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v104, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v156, v46
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v88, v9, v14 :: v_dual_mul_f32 v9, v155, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v72, v9, v14 :: v_dual_mul_f32 v9, v158, v63
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v14, v36, v178 :: v_dual_fmac_f32 v119, v9, v15
	v_mul_f32_e32 v9, v157, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v103, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v156, v47
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v87, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v155, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v71, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v158, v64
	v_dual_mul_f32 v15, v36, v177 :: v_dual_fmac_f32 v118, v9, v16
	v_mul_f32_e32 v9, v157, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v102, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v156, v48
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v86, v9, v16 :: v_dual_mul_f32 v9, v155, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v158, v61 :: v_dual_mul_f32 v16, v36, v176
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v121, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v157, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v105, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v156, v45
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v89, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v155, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v73, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v158, v60
	v_mul_f32_e32 v13, v155, v160
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v122, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v157, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v77, v13, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v13, v36, v175 :: v_dual_mul_f32 v36, v34, v212
	v_mul_f32_e32 v34, v34, v208
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v106, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v156, v44
	v_mul_f32_e32 v44, v35, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v90, v9, v12 :: v_dual_mul_f32 v9, v155, v162
	v_dual_fmac_f32 v74, v9, v12 :: v_dual_mul_f32 v9, v158, v59
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v12, v156, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v42, v35, v226 :: v_dual_fmac_f32 v123, v9, v11
	v_dual_mul_f32 v9, v157, v51 :: v_dual_fmac_f32 v92, v12, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v107, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v156, v43
	v_mul_f32_e32 v43, v35, v225
	v_mul_f32_e32 v35, v35, v223
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v91, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v155, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v75, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v158, v58
	v_mul_f32_e32 v11, v157, v50
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v125, v9, v10
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v108, v11, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v147 offset:20992
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v124, v13, v9 :: v_dual_fmac_f32 v125, v16, v10
	v_dual_fmac_f32 v123, v15, v11 :: v_dual_fmac_f32 v122, v14, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[13:16], v147 offset:21008
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v109, v21, v9 :: v_dual_fmac_f32 v108, v28, v10
	v_dual_fmac_f32 v107, v27, v11 :: v_dual_fmac_f32 v106, v26, v12
	v_dual_fmac_f32 v93, v33, v9 :: v_dual_fmac_f32 v92, v34, v10
	v_dual_fmac_f32 v91, v41, v11 :: v_dual_fmac_f32 v90, v40, v12
	v_dual_fmac_f32 v78, v29, v9 :: v_dual_fmac_f32 v77, v35, v10
	v_dual_fmac_f32 v75, v44, v11 :: v_dual_fmac_f32 v74, v43, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v121, v20, v13 :: v_dual_fmac_f32 v120, v17, v14
	v_dual_fmac_f32 v119, v18, v15 :: v_dual_fmac_f32 v118, v19, v16
	v_dual_fmac_f32 v105, v25, v13 :: v_dual_fmac_f32 v104, v22, v14
	v_dual_fmac_f32 v103, v23, v15 :: v_dual_fmac_f32 v102, v24, v16
	v_dual_fmac_f32 v89, v39, v13 :: v_dual_fmac_f32 v88, v36, v14
	v_dual_fmac_f32 v87, v37, v15 :: v_dual_fmac_f32 v86, v38, v16
	v_fmac_f32_e32 v73, v42, v13
	v_dual_fmac_f32 v72, v30, v14 :: v_dual_fmac_f32 v71, v31, v15
	v_fmac_f32_e32 v67, v32, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v136
	v_mov_b32_e32 v3, v137
.LBB0_7:                                ; %._crit_edge
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v2, |v132|, |v132|
	v_max_f32_e64 v4, |v133|, |v133|
	v_max3_f32 v6, |v125|, |v123|, |v122|
	v_max3_f32 v7, |v121|, |v120|, |v119|
	v_max3_f32 v5, |v130|, |v129|, |v128|
	v_max_f32_e64 v8, |v117|, |v117|
	v_max3_f32 v11, |v108|, |v107|, |v106|
	v_max3_f32 v12, |v105|, |v104|, |v103|
	v_max3_f32 v6, v6, v7, |v118|
	v_max_f32_e64 v7, |v101|, |v101|
	v_max_f32_e32 v2, v4, v2
	v_max_f32_e64 v4, |v116|, |v116|
	v_max3_f32 v13, |v92|, |v91|, |v90|
	v_max3_f32 v14, |v89|, |v88|, |v87|
	v_max3_f32 v9, |v127|, |v126|, |v124|
	v_max3_f32 v2, v2, |v131|, v5
	v_max_f32_e64 v5, |v100|, |v100|
	v_max_f32_e32 v4, v8, v4
	v_max3_f32 v8, |v114|, |v113|, |v112|
	v_max3_f32 v10, |v111|, |v110|, |v109|
	v_max3_f32 v2, v2, v9, v6
	v_max_f32_e32 v5, v7, v5
	v_max3_f32 v7, |v98|, |v97|, |v96|
	v_max3_f32 v4, v4, |v115|, v8
	v_max3_f32 v8, v11, v12, |v102|
	v_max3_f32 v11, |v95|, |v94|, |v93|
	v_max_f32_e64 v12, |v84|, |v84|
	v_max3_f32 v5, v5, |v99|, v7
	v_max3_f32 v7, v13, v14, |v86|
	v_max_f32_e64 v13, |v85|, |v85|
	v_max3_f32 v4, v4, v10, v8
	v_max3_f32 v9, |v77|, |v75|, |v74|
	v_max3_f32 v10, |v73|, |v72|, |v71|
	v_max3_f32 v5, v5, v11, v7
	v_max_f32_e32 v6, v13, v12
	v_max3_f32 v7, |v82|, |v81|, |v80|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v8, |v79|, |v76|, |v78|
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v11, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v6, v6, |v83|, v7
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v7, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v9, v9, v10, |v67|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v10, v11, v11 :: v_dual_max_f32 v11, v12, v12
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v17, v1, 6, 0
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v12, v6, v8, v9
	v_dual_max_f32 v10, v4, v10 :: v_dual_max_f32 v11, v5, v11
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v4, v134, 9, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v2, v7
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v2, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v6, 5, v134
	v_and_b32_e32 v8, 0x60, v0
	v_and_b32_e32 v5, 0x80, v0
	v_lshl_add_u32 v4, v1, 2, v4
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_and_b32 v13, 8, v0
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_or_b32 v14, 0x680, v135, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v7, 1, v5
	v_xor_b32_e32 v15, v6, v8
	v_lshrrev_b32_e32 v16, 3, v5
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v12, v12, v2
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v4, v13, 4, v4
	v_xor_b32_e32 v14, v14, v8
.Ltmp42:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s4, s7, 31
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v13, 3, v13
.Ltmp44:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s4, s4, 24
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v2, v4, v7, v15
	v_add3_u32 v4, v17, v16, v14
.Ltmp46:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s4, s7, s4
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v1, 5, v1
	v_add_nc_u32_e32 v5, 0, v5
	ds_store_b128 v2, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v9
	v_dual_mov_b32 v4, v10 :: v_dual_max_f32 v15, v12, v12
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v11
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v2, v9, v2 :: v_dual_max_f32 v9, v11, v11
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v11, v12, v12
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v4, v10, v4
	v_max_f32_e32 v10, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v9, v9, v10 :: v_dual_max_f32 v10, v15, v11
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v15, v10
	v_mov_b32_e32 v12, v2
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v12, v12, v12
	v_dual_max_f32 v11, v9, v11 :: v_dual_max_f32 v2, v2, v12
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v14, v4
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v12, v15, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v12, v10, v12
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_mov_b32 v17, v12
	v_max_f32_e32 v4, v4, v14
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v14, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v14, v14
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v14, 1, v8
.Ltmp64:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v8, v65, v8
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v10, v15, v15 :: v_dual_lshlrev_b32 v65, 6, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v9, v2, v9 :: v_dual_max_f32 v2, v16, v16
.Ltmp66:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v6, 0x1b00, v65, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v10, v4, v10
	v_dual_max_f32 v4, v17, v17 :: v_dual_max_f32 v11, v11, v2
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v2, v134, 4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v12, v12, v4
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v4, v5, v14, v13
	v_add3_u32 v1, v2, v1, v13
	ds_store_b128 v4, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v1
.Ltmp71:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v1, v9, v9 :: v_dual_max_f32 v2, v10, v10
	v_dual_max_f32 v4, v11, v11 :: v_dual_max_f32 v5, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, 0x2b8cbccc, v1 :: v_dual_max_f32 v2, 0x2b8cbccc, v2
	v_dual_max_f32 v4, 0x2b8cbccc, v4 :: v_dual_max_f32 v5, 0x2b8cbccc, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v11, null, 0x40e00000, 0x40e00000, v2
	v_rcp_f32_e32 v12, v9
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v14, v10
	v_rcp_f32_e32 v15, v11
	v_div_scale_f32 v17, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v16, v13
	v_div_scale_f32 v21, s0, v4, 0x40e00000, v4
	v_fma_f32 v18, -v9, v12, 1.0
	v_fma_f32 v19, -v10, v14, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v11, v15, 1.0
	v_fmac_f32_e32 v12, v18, v12
	v_div_scale_f32 v18, s1, v2, 0x40e00000, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v13, v16, 1.0
	v_dual_fmac_f32 v14, v19, v14 :: v_dual_fmac_f32 v15, v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v20, v17, v12
	v_div_scale_f32 v19, s2, v5, 0x40e00000, v5
	v_fmac_f32_e32 v16, v22, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v22, v21, v14
	v_fma_f32 v25, -v9, v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v23, v18, v15 :: v_dual_mul_f32 v24, v19, v16
	v_fma_f32 v26, -v10, v22, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v25, v12
	v_fma_f32 v27, -v11, v23, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v13, v24, v19
	v_fmac_f32_e32 v22, v26, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v9, -v9, v20, v17
	v_fmac_f32_e32 v23, v27, v15
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v17.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v24, v28, v16
	v_fma_f32 v10, -v10, v22, v21
	v_div_fmas_f32 v9, v9, v12, v20
	v_fma_f32 v11, -v11, v23, v18
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v13, -v13, v24, v19
	v_div_fmas_f32 v10, v10, v14, v22
	v_div_fixup_f32 v1, v9, 0x40e00000, v1
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v11, v11, v15, v23
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v9, v10, 0x40e00000, v4
	v_div_fmas_f32 v4, v13, v16, v24
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v10.h, v17.h
	v_mov_b16_e32 v10.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v2, v11, 0x40e00000, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v17.l, v9.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v11, v4, 0x40e00000, v5
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.h, v17.h
	v_and_b32_e32 v4, 1, v10
	v_mov_b16_e32 v5.l, v2.h
	v_and_b32_e32 v10, 1, v17
	v_mov_b16_e32 v17.l, v11.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v4, v1, v4, 0x7fff
	v_and_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v12, 1, v17
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 0xffff0000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, v2, v5, 0x7fff
	v_add3_u32 v2, v11, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v12, null, v26, v26, v131
	v_div_scale_f32 v20, null, v26, v26, v130
	v_div_scale_f32 v18, s1, v131, v26, v131
	v_rcp_f32_e32 v15, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v23, v20
	v_div_scale_f32 v11, null, v26, v26, v132
	v_div_scale_f32 v16, vcc_lo, v133, v26, v133
	v_div_scale_f32 v17, s0, v132, v26, v132
	v_rcp_f32_e32 v14, v11
	v_div_scale_f32 v25, null, v26, v26, v129
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v21, -v12, v15, 1.0
	v_fma_f32 v30, -v20, v23, 1.0
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v39, 0xffff0000, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v15, v21, v15
	v_fmac_f32_e32 v23, v30, v23
	v_div_scale_f32 v30, null, v26, v26, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v11, v14, 1.0
	v_mul_f32_e32 v27, v18, v15
	v_div_scale_f32 v41, null, v39, v39, v114
	v_div_scale_f32 v46, null, v39, v39, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v12, v27, v18
	v_fmac_f32_e32 v14, v19, v14
	v_div_scale_f32 v19, s2, v130, v26, v130
	v_rcp_f32_e32 v43, v41
	v_fmac_f32_e32 v27, v31, v15
	v_rcp_f32_e32 v31, v30
	v_mul_f32_e32 v24, v17, v14
	v_div_scale_f32 v50, null, v39, v39, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v12, -v12, v27, v18
	v_div_scale_f32 v18, s3, v128, v26, v128
	v_fma_f32 v29, -v11, v24, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v30, v31, 1.0
	v_fmac_f32_e32 v24, v29, v14
	v_div_scale_f32 v29, null, v26, v26, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v33, v31
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v9, v10, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v10, null, v26, v26, v133
	v_fma_f32 v11, -v11, v24, v17
	v_mul_f32_e32 v17, v19, v23
	v_rcp_f32_e32 v13, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v10, v13, 1.0
	v_fmac_f32_e32 v13, v9, v13
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v9, 0xffff0000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v21, v16, v13
	v_fma_f32 v28, -v10, v21, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v28, v13
	v_rcp_f32_e32 v28, v25
	v_fma_f32 v10, -v10, v21, v16
	v_div_scale_f32 v16, null, v26, v26, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v13, v21
	v_rcp_f32_e32 v21, v16
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v13, -v25, v28, 1.0
	v_div_fmas_f32 v11, v11, v14, v24
	v_fma_f32 v14, -v20, v17, v19
	v_div_scale_f32 v24, s0, v129, v26, v129
	v_fmac_f32_e32 v28, v13, v28
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v17, v14, v23
	v_fma_f32 v13, -v16, v21, 1.0
	v_div_fmas_f32 v12, v12, v15, v27
	v_mul_f32_e32 v14, v24, v28
	v_div_scale_f32 v27, null, v26, v26, v126
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v21, v13, v21
	v_fma_f32 v13, -v20, v17, v19
	v_rcp_f32_e32 v19, v29
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v15, -v25, v14, v24
	v_mul_f32_e32 v20, v18, v21
	v_div_fmas_f32 v13, v13, v23, v17
	v_rcp_f32_e32 v17, v27
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v14, v15, v28
	v_fma_f32 v15, -v16, v20, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v29, v19, 1.0
	v_fma_f32 v24, -v25, v14, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v15, v21
	v_fmac_f32_e32 v19, v23, v19
	v_div_scale_f32 v23, s1, v127, v26, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v27, v17, 1.0
	v_div_fmas_f32 v14, v24, v28, v14
	v_fma_f32 v16, -v16, v20, v18
	v_mul_f32_e32 v18, v23, v19
	v_div_scale_f32 v28, s0, v126, v26, v126
	v_fmac_f32_e32 v17, v15, v17
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v33, s3, v125, v26, v125
	v_div_fmas_f32 v15, v16, v21, v20
	v_fma_f32 v16, -v29, v18, v23
	v_mul_f32_e32 v20, v28, v17
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v18, v16, v19
	v_fma_f32 v16, -v27, v20, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v29, v18, v23
	v_fmac_f32_e32 v20, v16, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v16, v23, v19, v18
	v_fma_f32 v18, -v27, v20, v28
	v_mul_f32_e32 v23, v33, v31
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v17, v18, v17, v20
	v_fma_f32 v18, -v30, v23, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v18, v31
	v_div_scale_f32 v25, null, v26, v26, v124
	v_div_scale_f32 v32, null, v26, v26, v123
	v_div_scale_f32 v28, null, v26, v26, v122
	v_rcp_f32_e32 v24, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v32
	v_div_scale_f32 v20, s0, v123, v26, v123
	v_rcp_f32_e32 v35, v28
	v_div_scale_f32 v37, null, v26, v26, v118
	v_div_scale_f32 v36, null, v26, v26, v119
	v_div_fixup_f32 v10, v10, v26, v133
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v21, -v25, v24, 1.0
	v_fma_f32 v27, -v32, v34, 1.0
	v_rcp_f32_e32 v38, v37
	v_div_fixup_f32 v11, v11, v26, v132
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v18, -v28, v35, 1.0
	v_fmac_f32_e32 v24, v21, v24
	v_div_scale_f32 v21, s2, v124, v26, v124
	v_fmac_f32_e32 v34, v27, v34
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v35, v18, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v29, v21, v24
	v_div_fixup_f32 v12, v12, v26, v131
	v_div_fixup_f32 v13, v13, v26, v130
	v_div_fixup_f32 v14, v14, v26, v129
	v_div_fixup_f32 v15, v15, v26, v128
	v_fma_f32 v19, -v25, v29, v21
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v22, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v16, v16, v26, v127
	v_div_fixup_f32 v17, v17, v26, v126
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v29, v19, v24
	v_div_scale_f32 v55, null, v22, v22, v100
	v_div_scale_f32 v56, null, v22, v22, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v25, v29, v21
	v_div_scale_f32 v25, null, v26, v26, v121
	v_mul_f32_e32 v21, v20, v34
	v_div_scale_f32 v64, null, v22, v22, v90
	v_div_fmas_f32 v19, v19, v24, v29
	v_fma_f32 v24, -v30, v23, v33
	v_rcp_f32_e32 v29, v25
	v_div_scale_f32 v33, null, v26, v26, v120
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v27, -v32, v21, v20
	v_div_scale_f32 v30, s1, v122, v26, v122
	v_div_fmas_f32 v23, v24, v31, v23
	v_rcp_f32_e32 v24, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v21, v27, v34
	v_mul_f32_e32 v27, v30, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v31, -v25, v29, 1.0
	v_div_fixup_f32 v18, v19, v26, v124
	v_div_fixup_f32 v19, v23, v26, v125
	v_fma_f32 v20, -v32, v21, v20
	v_fma_f32 v23, -v28, v27, v30
	v_fmac_f32_e32 v29, v31, v29
	v_div_scale_f32 v31, s2, v121, v26, v121
	v_fma_f32 v32, -v33, v24, 1.0
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v27, v23, v35
	v_div_fmas_f32 v20, v20, v34, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v23, v31, v29 :: v_dual_fmac_f32 v24, v32, v24
	v_div_scale_f32 v34, s0, v120, v26, v120
	v_fma_f32 v21, -v28, v27, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v25, v23, v31
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v30, v34, v24
	v_rcp_f32_e32 v32, v36
	v_div_fmas_f32 v21, v21, v35, v27
	v_fmac_f32_e32 v23, v28, v29
	v_fma_f32 v35, -v37, v38, 1.0
	v_fma_f32 v27, -v33, v30, v34
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v28, s1, v119, v26, v119
	v_fma_f32 v25, -v25, v23, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v27, v24
	v_fmac_f32_e32 v38, v35, v38
	v_div_scale_f32 v35, null, v39, v39, v117
	v_div_fmas_f32 v23, v25, v29, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v33, v30, v34
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v33, v35
	v_fma_f32 v40, -v36, v32, 1.0
	v_div_scale_f32 v31, s3, v118, v26, v118
	v_div_fmas_f32 v24, v25, v24, v30
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v20, v26, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v34, v31, v38
	v_div_fixup_f32 v21, v21, v26, v122
	v_div_fixup_f32 v23, v23, v26, v121
	v_fma_f32 v30, -v35, v33, 1.0
	v_div_fixup_f32 v24, v24, v26, v120
	v_fma_f32 v25, -v37, v34, v31
	v_div_scale_f32 v66, null, v22, v22, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v33, v30, v33 :: v_dual_fmac_f32 v32, v40, v32
	v_div_scale_f32 v40, null, v39, v39, v116
	v_fmac_f32_e32 v34, v25, v38
	v_div_scale_f32 v30, s0, v117, v39, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v27, v28, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v29, -v36, v27, v28
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v27, v29, v32
	v_rcp_f32_e32 v29, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v28, -v36, v27, v28
	v_div_scale_f32 v36, null, v39, v39, v115
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v27, v28, v32, v27
	v_rcp_f32_e32 v32, v36
	v_fma_f32 v25, -v40, v29, 1.0
	v_fma_f32 v28, -v37, v34, v31
	v_mul_f32_e32 v31, v30, v33
	v_div_scale_f32 v37, s1, v116, v39, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v29, v25, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v27, v26, v119
	v_div_fmas_f32 v28, v28, v38, v34
	v_fma_f32 v42, -v36, v32, 1.0
	v_fma_f32 v34, -v35, v31, v30
	v_mul_f32_e32 v38, v37, v29
	v_div_scale_f32 v45, s3, v114, v39, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v32, v42, v32
	v_div_scale_f32 v42, null, v39, v39, v113
	v_div_fixup_f32 v26, v28, v26, v118
	v_fmac_f32_e32 v31, v34, v33
	v_fma_f32 v27, -v40, v38, v37
	v_div_scale_f32 v34, s2, v115, v39, v115
	v_fma_f32 v28, -v41, v43, 1.0
	v_rcp_f32_e32 v44, v42
	v_fma_f32 v30, -v35, v31, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v38, v27, v29 :: v_dual_mul_f32 v35, v34, v32
	v_fmac_f32_e32 v43, v28, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v27, v30, v33, v31
	v_fma_f32 v28, -v40, v38, v37
	v_fma_f32 v30, -v36, v35, v34
	v_mul_f32_e32 v31, v45, v43
	v_fma_f32 v33, -v42, v44, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v37, null, v39, v39, v112
	v_div_fmas_f32 v28, v28, v29, v38
	v_fmac_f32_e32 v35, v30, v32
	v_fma_f32 v29, -v41, v31, v45
	v_fmac_f32_e32 v44, v33, v44
	v_div_scale_f32 v33, s0, v113, v39, v113
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v30, -v36, v35, v34
	v_fmac_f32_e32 v31, v29, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v34, v33, v44
	v_div_scale_f32 v36, null, v39, v39, v111
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v27, v27, v39, v117
	v_div_fmas_f32 v30, v30, v32, v35
	v_fma_f32 v32, -v41, v31, v45
	v_fma_f32 v35, -v42, v34, v33
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v45, null, v39, v39, v110
	v_fma_f32 v29, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v35, v44
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v41, s1, v112, v39, v112
	v_fmac_f32_e32 v38, v29, v38
	v_div_fmas_f32 v31, v32, v43, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v43, -v36, v40, 1.0
	v_div_fixup_f32 v29, v30, v39, v115
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v32, v41, v38
	v_div_fixup_f32 v30, v31, v39, v114
	v_fmac_f32_e32 v40, v43, v40
	v_fma_f32 v43, -v45, v35, 1.0
	v_fma_f32 v31, -v42, v34, v33
	v_fma_f32 v33, -v37, v32, v41
	v_div_scale_f32 v42, s2, v111, v39, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v43, v35
	v_rcp_f32_e32 v43, v46
	v_div_fmas_f32 v31, v31, v44, v34
	v_dual_fmac_f32 v32, v33, v38 :: v_dual_mul_f32 v33, v42, v40
	v_div_scale_f32 v34, s0, v110, v39, v110
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v37, v32, v41
	v_fma_f32 v41, -v36, v33, v42
	v_mul_f32_e32 v47, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v46, v43, 1.0
	v_div_scale_f32 v44, null, v39, v39, v108
	v_div_fmas_f32 v32, v37, v38, v32
	v_fmac_f32_e32 v33, v41, v40
	v_fma_f32 v37, -v45, v47, v34
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v38, s1, v109, v39, v109
	v_rcp_f32_e32 v48, v44
	v_fma_f32 v36, -v36, v33, v42
	v_fmac_f32_e32 v47, v37, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v37, v38, v43
	v_div_scale_f32 v42, null, v39, v39, v107
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v34, -v45, v47, v34
	v_div_fmas_f32 v33, v36, v40, v33
	v_fma_f32 v36, -v46, v37, v38
	v_rcp_f32_e32 v40, v42
	v_fma_f32 v41, -v44, v48, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v49, null, v39, v39, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v37, v36, v43 :: v_dual_fmac_f32 v48, v41, v48
	v_div_scale_f32 v41, s3, v108, v39, v108
	v_div_fmas_f32 v34, v34, v35, v47
	v_fma_f32 v36, -v42, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v46, v37, v38
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v47, v49
	v_div_scale_f32 v46, s0, v107, v39, v107
	v_fmac_f32_e32 v40, v36, v40
	v_div_fmas_f32 v36, v38, v43, v37
	v_div_scale_f32 v43, s1, v106, v39, v106
	v_mul_f32_e32 v45, v41, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v46, v40
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v28, v28, v39, v116
	v_div_fixup_f32 v31, v31, v39, v113
	v_fma_f32 v35, -v44, v45, v41
	v_div_fixup_f32 v32, v32, v39, v112
	v_div_fixup_f32 v33, v33, v39, v111
	v_div_fixup_f32 v34, v34, v39, v110
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v45, v35, v48
	v_fma_f32 v35, -v49, v47, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v37, -v44, v45, v41
	v_rcp_f32_e32 v41, v50
	v_div_scale_f32 v44, null, v39, v39, v104
	v_fmac_f32_e32 v47, v35, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v48, v45
	v_fma_f32 v45, -v42, v38, v46
	v_rcp_f32_e32 v52, v44
	v_div_fixup_f32 v35, v36, v39, v109
	v_mul_f32_e32 v48, v43, v47
	v_div_fixup_f32 v36, v37, v39, v108
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v50, v41, 1.0
	v_fmac_f32_e32 v38, v45, v40
	v_div_scale_f32 v45, s2, v105, v39, v105
	v_fma_f32 v37, -v49, v48, v43
	v_fmac_f32_e32 v41, v51, v41
	v_div_scale_f32 v51, null, v39, v39, v103
	v_fma_f32 v53, -v44, v52, 1.0
	v_fma_f32 v42, -v42, v38, v46
	v_fmac_f32_e32 v48, v37, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v54, v51
	v_mul_f32_e32 v46, v45, v41
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, s3, v104, v39, v104
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v37, v42, v40, v38
	v_fma_f32 v38, -v49, v48, v43
	v_fma_f32 v40, -v50, v46, v45
	v_mul_f32_e32 v42, v53, v52
	v_fma_f32 v43, -v51, v54, 1.0
	v_div_scale_f32 v49, null, v39, v39, v102
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v46, v40, v41
	v_div_fmas_f32 v38, v38, v47, v48
	v_rcp_f32_e32 v47, v49
	v_fma_f32 v40, -v44, v42, v53
	v_fmac_f32_e32 v54, v43, v54
	v_div_scale_f32 v43, s0, v103, v39, v103
	v_fma_f32 v45, -v50, v46, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v40, v52
	v_div_scale_f32 v50, null, v22, v22, v101
	v_mul_f32_e32 v48, v43, v54
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v49, v47, 1.0
	v_div_fmas_f32 v41, v45, v41, v46
	v_fma_f32 v44, -v44, v42, v53
	v_fma_f32 v45, -v51, v48, v43
	v_rcp_f32_e32 v46, v50
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v53, s1, v102, v39, v102
	v_div_fmas_f32 v42, v44, v52, v42
	v_fmac_f32_e32 v48, v45, v54
	v_div_fixup_f32 v40, v41, v39, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v45, v53, v47
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v52, -v50, v46, 1.0
	v_div_fixup_f32 v41, v42, v39, v104
	v_fma_f32 v42, -v51, v48, v43
	v_fma_f32 v43, -v49, v45, v53
	v_div_scale_f32 v51, s2, v101, v22, v101
	v_fmac_f32_e32 v46, v52, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v54, v48
	v_div_scale_f32 v54, null, v22, v22, v98
	v_fmac_f32_e32 v45, v43, v47
	v_mul_f32_e32 v43, v51, v46
	v_rcp_f32_e32 v44, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v58, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v49, -v49, v45, v53
	v_fma_f32 v53, -v50, v43, v51
	v_div_fixup_f32 v37, v37, v39, v107
	v_div_fixup_f32 v38, v38, v39, v106
	v_rcp_f32_e32 v48, v56
	v_div_fmas_f32 v45, v49, v47, v45
	v_fmac_f32_e32 v43, v53, v46
	v_fma_f32 v52, -v55, v44, 1.0
	v_fma_f32 v53, -v54, v58, 1.0
	v_div_fixup_f32 v42, v42, v39, v103
	v_div_fixup_f32 v39, v45, v39, v102
	v_fma_f32 v45, -v50, v43, v51
	v_div_scale_f32 v50, s3, v98, v22, v98
	v_fmac_f32_e32 v58, v53, v58
	v_fma_f32 v59, -v56, v48, 1.0
	v_div_scale_f32 v49, s1, v99, v22, v99
	v_div_scale_f32 v51, null, v22, v22, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v53, v50, v58 :: v_dual_fmac_f32 v44, v52, v44
	v_div_scale_f32 v52, s0, v100, v22, v100
	v_fmac_f32_e32 v48, v59, v48
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v59, null, v22, v22, v95
	v_mul_f32_e32 v57, v52, v44
	v_div_fmas_f32 v43, v45, v46, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v47, -v55, v57, v52
	v_div_fixup_f32 v43, v43, v22, v101
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v57, v47, v44
	v_mul_f32_e32 v47, v49, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v41, v41
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v45, -v55, v57, v52
	v_fma_f32 v46, -v56, v47, v49
	v_rcp_f32_e32 v52, v51
	v_div_scale_f32 v55, null, v22, v22, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v44, v45, v44, v57
	v_fmac_f32_e32 v47, v46, v48
	v_fma_f32 v45, -v54, v53, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v57, v55
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v44, v44, v22, v100
	v_fma_f32 v49, -v56, v47, v49
	v_fma_f32 v46, -v51, v52, 1.0
	v_fmac_f32_e32 v53, v45, v58
	v_div_scale_f32 v56, s0, v97, v22, v97
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v52, v46, v52
	v_div_fmas_f32 v46, v49, v48, v47
	v_rcp_f32_e32 v49, v59
	v_fma_f32 v45, -v55, v57, 1.0
	v_fma_f32 v47, -v54, v53, v50
	v_div_scale_f32 v54, null, v22, v22, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v48, v56, v52 :: v_dual_fmac_f32 v57, v45, v57
	v_div_scale_f32 v50, s1, v96, v22, v96
	v_rcp_f32_e32 v61, v54
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v60, -v59, v49, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v45, v46, v22, v99
	v_div_fmas_f32 v47, v47, v58, v53
	v_fma_f32 v53, -v51, v48, v56
	v_mul_f32_e32 v58, v50, v57
	v_fmac_f32_e32 v49, v60, v49
	v_div_scale_f32 v60, null, v22, v22, v93
	v_div_fixup_f32 v46, v47, v22, v98
	v_fmac_f32_e32 v48, v53, v52
	v_fma_f32 v47, -v55, v58, v50
	v_div_scale_f32 v53, s2, v95, v22, v95
	v_fma_f32 v62, -v54, v61, 1.0
	v_rcp_f32_e32 v63, v60
	v_fma_f32 v51, -v51, v48, v56
	v_fmac_f32_e32 v58, v47, v57
	v_mul_f32_e32 v56, v53, v49
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, s3, v94, v22, v94
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v43, v43
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v47, v51, v52, v48
	v_fma_f32 v48, -v55, v58, v50
	v_fma_f32 v50, -v59, v56, v53
	v_mul_f32_e32 v51, v62, v61
	v_fma_f32 v52, -v60, v63, 1.0
	v_div_scale_f32 v55, null, v22, v22, v92
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v56, v50, v49
	v_div_fmas_f32 v48, v48, v57, v58
	v_rcp_f32_e32 v57, v55
	v_fma_f32 v50, -v54, v51, v62
	v_fmac_f32_e32 v63, v52, v63
	v_div_scale_f32 v52, s0, v93, v22, v93
	v_fma_f32 v53, -v59, v56, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v50, v61
	v_div_scale_f32 v59, null, v22, v22, v91
	v_mul_f32_e32 v58, v52, v63
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v50, -v55, v57, 1.0
	v_div_fmas_f32 v49, v53, v49, v56
	v_fma_f32 v53, -v54, v51, v62
	v_fma_f32 v54, -v60, v58, v52
	v_rcp_f32_e32 v56, v59
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v57, v50, v57
	v_div_scale_f32 v62, s1, v92, v22, v92
	v_div_fmas_f32 v50, v53, v61, v51
	v_fmac_f32_e32 v58, v54, v63
	v_rcp_f32_e32 v51, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v53, v62, v57
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v54, -v59, v56, 1.0
	v_fma_f32 v52, -v60, v58, v52
	v_div_fixup_f32 v50, v50, v22, v94
	v_fma_f32 v60, -v55, v53, v62
	v_div_fixup_f32 v49, v49, v22, v95
	v_fmac_f32_e32 v56, v54, v56
	v_div_scale_f32 v54, s2, v91, v22, v91
	v_fma_f32 v61, -v64, v51, 1.0
	v_div_fmas_f32 v52, v52, v63, v58
	v_div_scale_f32 v63, null, v22, v22, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v53, v60, v57 :: v_dual_mul_f32 v58, v54, v56
	v_fmac_f32_e32 v51, v61, v51
	v_div_scale_f32 v61, s0, v90, v22, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v94, v63
	v_div_fixup_f32 v52, v52, v22, v93
	v_fma_f32 v55, -v55, v53, v62
	v_fma_f32 v62, -v59, v58, v54
	v_mul_f32_e32 v93, v61, v51
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v60, v66
	v_div_fmas_f32 v53, v55, v57, v53
	v_fmac_f32_e32 v58, v62, v56
	v_fma_f32 v55, -v64, v93, v61
	v_fma_f32 v62, -v63, v94, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v57, s1, v89, v22, v89
	v_fma_f32 v54, -v59, v58, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v55, v51 :: v_dual_fmac_f32 v94, v62, v94
	v_div_scale_f32 v62, null, v22, v22, v87
	v_div_fmas_f32 v54, v54, v56, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v64, v93, v61
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v61, v62
	v_fma_f32 v95, -v66, v60, 1.0
	v_div_scale_f32 v59, s3, v88, v22, v88
	v_div_fmas_f32 v51, v56, v51, v93
	v_div_fixup_f32 v53, v53, v22, v92
	v_div_scale_f32 v92, null, v22, v22, v86
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v54, v54, v22, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v62, v61, 1.0
	v_rcp_f32_e32 v56, v92
	v_div_fixup_f32 v51, v51, v22, v90
	v_div_scale_f32 v91, null, v9, v9, v84
	v_dual_fmac_f32 v61, v93, v61 :: v_dual_fmac_f32 v60, v95, v60
	v_mul_f32_e32 v64, v59, v94
	v_div_fixup_f32 v48, v48, v22, v96
	v_div_fixup_f32 v47, v47, v22, v97
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v44, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v55, v57, v60
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v50, v50
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v58, -v66, v55, v57
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v47, v47
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v55, v58, v60
	v_fma_f32 v58, -v63, v64, v59
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v57, -v66, v55, v57
	v_fmac_f32_e32 v64, v58, v94
	v_div_scale_f32 v58, s0, v87, v22, v87
	v_fma_f32 v66, -v92, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v55, v57, v60, v55
	v_fma_f32 v57, -v63, v64, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v59, v58, v61
	v_div_scale_f32 v60, null, v9, v9, v85
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v66, v56
	v_div_fmas_f32 v57, v57, v94, v64
	v_rcp_f32_e32 v64, v60
	v_fma_f32 v66, -v62, v59, v58
	v_div_scale_f32 v63, s1, v86, v22, v86
	v_div_fixup_f32 v55, v55, v22, v89
	v_div_fixup_f32 v57, v57, v22, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v59, v66, v61 :: v_dual_mul_f32 v90, v63, v56
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v89, -v60, v64, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v62, v59, v58
	v_div_scale_f32 v62, null, v9, v9, v83
	v_fma_f32 v66, -v92, v90, v63
	v_fmac_f32_e32 v64, v89, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v58, v58, v61, v59
	v_rcp_f32_e32 v89, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v91, v88, 1.0
	v_fmac_f32_e32 v90, v66, v56
	v_div_scale_f32 v66, s2, v85, v9, v85
	v_div_scale_f32 v94, null, v9, v9, v82
	v_fma_f32 v59, -v92, v90, v63
	v_fmac_f32_e32 v88, v93, v88
	v_div_scale_f32 v63, s0, v84, v9, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v92, -v62, v89, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v96, v94
	v_mul_f32_e32 v95, v63, v88
	v_div_fmas_f32 v56, v59, v56, v90
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s3, v83, v9, v83
	v_mul_f32_e32 v61, v66, v64
	v_fma_f32 v59, -v91, v95, v63
	v_div_fixup_f32 v58, v58, v22, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v90, v92, v89
	v_div_fixup_f32 v22, v56, v22, v86
	v_fma_f32 v93, -v60, v61, v66
	v_fmac_f32_e32 v95, v59, v88
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v59, -v62, v90, v92
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v55, v55
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v61, v93, v64
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v56, -v60, v61, v66
	v_fma_f32 v60, -v94, v96, 1.0
	v_div_scale_f32 v66, null, v9, v9, v81
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v56, v56, v64, v61
	v_fmac_f32_e32 v96, v60, v96
	v_div_scale_f32 v60, s1, v82, v9, v82
	v_fmac_f32_e32 v90, v59, v89
	v_rcp_f32_e32 v59, v66
	v_fma_f32 v61, -v91, v95, v63
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v63, v60, v96
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v62, -v62, v90, v92
	v_div_fixup_f32 v56, v56, v9, v85
	v_div_fmas_f32 v61, v61, v88, v95
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v88, -v94, v63, v60
	v_div_fmas_f32 v62, v62, v89, v90
	v_fma_f32 v86, -v66, v59, 1.0
	v_div_scale_f32 v85, null, v9, v9, v79
	v_div_scale_f32 v64, null, v9, v9, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, v86, v59
	v_div_scale_f32 v86, s0, v81, v9, v81
	v_div_fixup_f32 v62, v62, v9, v83
	v_fmac_f32_e32 v63, v88, v96
	v_rcp_f32_e32 v89, v85
	v_mul_f32_e32 v83, v86, v59
	v_rcp_f32_e32 v87, v64
	v_div_fixup_f32 v61, v61, v9, v84
	v_fma_f32 v60, -v94, v63, v60
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v88, -v66, v83, v86
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v88, v59
	v_fma_f32 v84, -v64, v87, 1.0
	v_div_scale_f32 v88, null, v9, v9, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v66, v83, v86
	v_fma_f32 v86, -v85, v89, 1.0
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, s2, v80, v9, v80
	v_rcp_f32_e32 v90, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v89, v86, v89
	v_div_fmas_f32 v60, v60, v96, v63
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v63, v84, v87
	v_div_fmas_f32 v59, v66, v59, v83
	v_div_scale_f32 v66, null, v9, v9, v78
	v_div_fixup_f32 v60, v60, v9, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v64, v63, v84
	v_div_fixup_f32 v59, v59, v9, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v83, v66
	v_fma_f32 v81, -v88, v90, 1.0
	v_div_scale_f32 v86, null, v9, v9, v77
	v_fmac_f32_e32 v63, v82, v87
	v_div_scale_f32 v82, s0, v79, v9, v79
	v_fmac_f32_e32 v90, v81, v90
	v_div_scale_f32 v81, s1, v76, v9, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v66, v83, 1.0
	v_fma_f32 v64, -v64, v63, v84
	v_mul_f32_e32 v84, v82, v89
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v92, v86
	v_fmac_f32_e32 v83, v91, v83
	v_div_scale_f32 v91, null, v9, v9, v75
	v_div_fmas_f32 v63, v64, v87, v63
	v_fma_f32 v64, -v85, v84, v82
	v_mul_f32_e32 v87, v81, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v95, v91
	v_div_scale_f32 v93, s2, v78, v9, v78
	v_fmac_f32_e32 v84, v64, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v88, v87, v81
	v_fma_f32 v94, -v86, v92, 1.0
	v_mul_f32_e32 v96, v93, v83
	v_div_fixup_f32 v63, v63, v9, v80
	v_fma_f32 v80, -v85, v84, v82
	v_fmac_f32_e32 v87, v64, v90
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v91, v95, 1.0
	v_fmac_f32_e32 v92, v94, v92
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v94, s3, v77, v9, v77
	v_fma_f32 v81, -v88, v87, v81
	v_fmac_f32_e32 v95, v85, v95
	v_div_scale_f32 v85, null, v9, v9, v74
	v_div_fmas_f32 v80, v80, v89, v84
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v64, -v66, v96, v93
	v_div_fmas_f32 v81, v81, v90, v87
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v84, s0, v75, v9, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v96, v64, v83
	v_div_fixup_f32 v76, v81, v9, v76
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v79, v80, v9, v79
	v_div_scale_f32 v80, null, v9, v9, v73
	v_fma_f32 v66, -v66, v96, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v85, v87, 1.0
	v_mul_f32_e32 v82, v94, v92
	v_div_scale_f32 v89, null, v9, v9, v67
	v_div_fmas_f32 v66, v66, v83, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v81, v87
	v_fma_f32 v64, -v86, v82, v94
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v81, null, v9, v9, v72
	v_div_fixup_f32 v66, v66, v9, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v82, v64, v92
	v_mul_f32_e32 v64, v84, v95
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v66, v66
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v83, -v86, v82, v94
	v_fma_f32 v86, -v91, v64, v84
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v82, v83, v92, v82
	v_fmac_f32_e32 v64, v86, v95
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v77, v82, v9, v77
	v_fma_f32 v78, -v91, v64, v84
	v_div_scale_f32 v82, null, v9, v9, v71
	v_rcp_f32_e32 v84, v81
	v_rcp_f32_e32 v91, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v64, v78, v95, v64
	v_div_scale_f32 v83, vcc_lo, v74, v9, v74
	v_rcp_f32_e32 v78, v80
	v_rcp_f32_e32 v86, v82
	v_div_fixup_f32 v64, v64, v9, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v88, v83, v87
	v_fma_f32 v90, -v81, v84, 1.0
	v_fma_f32 v95, -v89, v91, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v92, -v85, v88, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v75, -v80, v78, 1.0
	v_fma_f32 v93, -v82, v86, 1.0
	v_fmac_f32_e32 v91, v95, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v92, v87
	v_div_scale_f32 v95, s3, v67, v9, v67
	v_fmac_f32_e32 v78, v75, v78
	v_div_scale_f32 v75, s0, v73, v9, v73
	v_fma_f32 v83, -v85, v88, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v94, v75, v78
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s1, v72, v9, v72
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s2, v71, v9, v71
	v_fma_f32 v92, -v80, v94, v75
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v96, v90, v84 :: v_dual_mul_f32 v97, v93, v86
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v94, v92, v78
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v98, v95, v91
	v_fma_f32 v85, -v81, v96, v90
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v92, -v82, v97, v93
	v_fma_f32 v75, -v80, v94, v75
	v_fma_f32 v80, -v89, v98, v95
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v96, v85, v84 :: v_dual_fmac_f32 v97, v92, v86
	v_div_fmas_f32 v75, v75, v78, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v37, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v98, v80, v91
	v_fma_f32 v78, -v81, v96, v90
	v_fma_f32 v80, -v82, v97, v93
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v73, v75, v9, v73
	v_fma_f32 v81, -v89, v98, v95
	v_div_fmas_f32 v78, v78, v84, v96
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v74, v83, v9, v74
	v_div_fmas_f32 v80, v80, v86, v97
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v72, v78, v9, v72
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v73, v73
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v71, v80, v9, v71
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v9, v81, v9, v67
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v67, v79
	v_rndne_f32_e32 v71, v71
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v83, v73
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v73, 10, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v75, v76
	v_rndne_f32_e32 v76, v77
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_cvt_i32_f32_e32 v81, v59
	v_cvt_i32_f32_e32 v85, v71
	v_and_b32_e32 v59, 15, v62
	v_and_b32_e32 v62, 15, v63
	v_and_b32_e32 v63, 15, v67
	v_and_b32_e32 v71, 15, v66
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v66, 0x1800, v73
	v_lshlrev_b32_e32 v67, 6, v3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v72, v72
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v76, v76, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v80, v56
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v66, 0, v66, v67
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v78, v51
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v82, v64
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v77, v39
	v_cvt_i32_f32_e32 v79, v22
	v_cvt_i32_f32_e32 v86, v9
	v_and_b32_e32 v9, 15, v10
	v_and_b32_e32 v10, 15, v11
	v_and_b32_e32 v11, 15, v12
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v23
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v24, 15, v26
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v26, 15, v28
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v28, 15, v30
	v_and_b32_e32 v30, 15, v32
	v_and_b32_e32 v32, 15, v34
	v_and_b32_e32 v34, 15, v36
	v_and_b32_e32 v36, 15, v38
	v_and_b32_e32 v38, 15, v41
	v_and_b32_e32 v39, 15, v42
	v_and_b32_e32 v41, 15, v43
	v_and_b32_e32 v42, 15, v44
	v_and_b32_e32 v43, 15, v45
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v48, 15, v50
	v_and_b32_e32 v50, 15, v53
	v_and_b32_e32 v51, 15, v54
	v_and_b32_e32 v53, 15, v55
	v_and_b32_e32 v54, 15, v57
	v_and_b32_e32 v55, 15, v58
	v_and_b32_e32 v57, 15, v80
	v_and_b32_e32 v58, 15, v61
	v_and_b32_e32 v60, 15, v60
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v65, v66, v8, v7
	v_xad_u32 v66, v6, v70, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v84, v72
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	v_and_b32_e32 v33, 15, v35
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v45, 15, v47
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v49, 15, v52
	v_and_b32_e32 v52, 15, v78
	v_and_b32_e32 v72, 15, v76
	v_and_b32_e32 v73, 15, v82
	v_and_b32_e32 v74, 15, v74
	v_and_b32_e32 v37, 15, v40
	v_and_b32_e32 v40, 15, v77
	v_med3_f32 v75, v75, s0, 0x40e00000
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v65, v[9:12]
	ds_store_b128 v65, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v66
	ds_load_b128 v[17:20], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[25:28]
	ds_store_b128 v65, v[33:36] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v66
	ds_load_b128 v[33:36], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[41:44]
	ds_store_b128 v65, v[49:52] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v66
	ds_load_b128 v[49:52], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[57:60]
	ds_store_b128 v65, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v66
	ds_load_b128 v[70:73], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[13:16]
	ds_store_b128 v65, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v66
	ds_load_b128 v[21:24], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[29:32]
	ds_store_b128 v65, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v66
	ds_load_b128 v[37:40], v66 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v75, v75
	v_and_b32_e32 v56, 15, v79
	v_and_b32_e32 v61, 15, v81
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v64, 15, v75
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v65, v[45:48]
	ds_store_b128 v65, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v66
	ds_load_b128 v[53:56], v66 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v75, 15, v83
	v_and_b32_e32 v76, 15, v84
	v_and_b32_e32 v77, 15, v85
	v_and_b32_e32 v78, 15, v86
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[61:64]
	ds_store_b128 v65, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v66
	ds_load_b128 v[74:77], v66 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s7, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v6, v17, 4, v6
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s7, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v18, 4, v7
	v_lshl_or_b32 v8, v19, 4, v8
	v_lshl_or_b32 v9, v20, 4, v9
	v_lshl_or_b32 v10, v21, 4, v10
	v_lshl_or_b32 v11, v22, 4, v11
	v_lshl_or_b32 v12, v23, 4, v12
	v_lshl_or_b32 v13, v24, 4, v13
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v36, 3, v69
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v18, v37, 4, v29
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v37, s0, v68
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s6, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s33, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v16, v35, 4, v27
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	v_lshl_or_b32 v21, v40, 4, v32
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v39, s2, s1, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v9.l
	v_and_b16 v2.l, 0xff, v8.l
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v5.l, 0xff, v6.l
	v_lshlrev_b16 v6.l, 8, v13.l
	v_and_b16 v6.h, 0xff, v12.l
	v_lshlrev_b16 v7.l, 8, v11.l
	v_and_b16 v7.h, 0xff, v10.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v22, v49, 4, v41
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v27, v54, 4, v46
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v41, v39, v37
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.l, v4.l
	v_or_b16 v9.h, v6.h, v6.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v2.l, 0xff, v16.l
	v_lshlrev_b16 v4.l, 8, v15.l
	v_and_b16 v5.l, 0xff, v14.l
	v_lshlrev_b16 v6.l, 8, v21.l
	v_and_b16 v6.h, 0xff, v20.l
	v_lshlrev_b16 v7.l, 8, v19.l
	v_and_b16 v7.h, 0xff, v18.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v23, v50, 4, v42
	v_lshl_or_b32 v24, v51, 4, v43
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v42, v37, s1, v39
	v_add3_u32 v43, v37, s2, v39
	v_add3_u32 v37, v37, s0, v39
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s1, s21, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s20
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v25, v52, 4, v44
	v_lshl_or_b32 v28, v55, 4, v47
	v_lshl_or_b32 v29, v56, 4, v48
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v34, v74, 4, v61
	v_lshl_or_b32 v35, v75, 4, v62
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[8:9], v41, s[0:3], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.l, v4.l
	v_or_b16 v9.h, v6.h, v6.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v7.l, 8, v27.l
	v_and_b16 v7.h, 0xff, v26.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v30, v70, 4, v57
	v_lshl_or_b32 v31, v71, 4, v58
	v_lshl_or_b32 v32, v72, 4, v59
	v_lshl_or_b32 v33, v73, 4, v60
	v_lshl_or_b32 v38, v76, 4, v63
	v_lshl_or_b32 v40, v77, 4, v64
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v25.l
	v_and_b16 v2.l, 0xff, v24.l
	v_lshlrev_b16 v4.l, 8, v23.l
	v_and_b16 v5.l, 0xff, v22.l
	v_lshlrev_b16 v6.l, 8, v29.l
	v_and_b16 v6.h, 0xff, v28.l
	buffer_store_b64 v[8:9], v42, s[0:3], 0 offen
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v7.l, 8, v35.l
	v_and_b16 v7.h, 0xff, v34.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v3, 2, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.l, v4.l
	v_or_b16 v9.h, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v33.l
	v_and_b16 v2.l, 0xff, v32.l
	v_lshlrev_b16 v4.l, 8, v31.l
	v_and_b16 v5.l, 0xff, v30.l
	v_lshlrev_b16 v6.l, 8, v40.l
	v_and_b16 v6.h, 0xff, v38.l
	v_or_b16 v11.l, v7.h, v7.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v7, 2, v68
	v_add_nc_u32_e32 v3, 0, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v10.l, v5.l, v4.l
	v_or_b16 v11.h, v6.h, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v6, 0, v36
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v1.l, v4.h
	v_add3_u32 v3, v3, v7, v36
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, v0, 63, s33
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v43, s[0:3], 0 offen
	buffer_store_b64 v[10:11], v37, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s4, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v3
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v4, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s1, s23, 0xffff
	s_mov_b32 s0, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s6, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp72:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp73:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 247
		.amdhsa_next_free_sgpr 39
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 247
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16688
; TotalNumSgprs: 41
; NumVgprs: 247
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 247
; Occupancy: 5
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
	.byte	5                               ; Abbreviation Code
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	7                               ; Abbreviation Code
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x93 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x6d DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	347                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	346                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0x27 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x75:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x81:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x8f:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	366                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
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
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     247
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
