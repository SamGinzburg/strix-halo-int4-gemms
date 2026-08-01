	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s8, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v86, 15, v0
	v_lshlrev_b32_e32 v151, 1, v0
	v_lshlrev_b32_e32 v152, 5, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s28, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s11, s11, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s9, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s7, s6, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s6, s6, s5
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s8, s9, s7
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s5, s2, s6
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s8, s8, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s6, s5
	s_abs_i32 s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s9
	s_sub_i32 s11, 0, s9
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
	s_mul_hi_u32 s2, s6, s10
	s_xor_b32 s10, s5, s8
	s_mul_i32 s11, s2, s9
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s2, 1
	s_sub_i32 s12, s6, s9
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s2, s11, s2
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s2, 1
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s2, s11, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s10
	s_sub_i32 s30, s2, s10
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s4, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s30, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s6
	s_mov_b32 s6, 0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s5, s5, s7
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s2, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v2, 1, v0
	v_lshlrev_b32_e32 v1, 5, v0
	s_branch .LBB0_3
.Ltmp15:
.LBB0_2:
	.loc	1 0 15 is_stmt 0                ; generate_amdgcn.py:0:15
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow652
	s_load_b128 s[16:19], s[0:1], 0x20
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v87, 7, v0
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v85, 0xf0, v0
	v_lshrrev_b32_e32 v84, 4, v0
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v81, 4, v86
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v147, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s31, s5, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 3, v0
	s_load_b256 s[8:15], s[0:1], 0x0
	v_dual_mov_b32 v149, 0 :: v_dual_lshlrev_b32 v2, 2, v87
.Ltmp16:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s4, s4, 31
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v1, s28, v1
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s6, s4, 31
	v_or_b32_e32 v3, s31, v86
	s_lshr_b32 s6, s6, 27
	v_lshrrev_b32_e32 v6, 6, v0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s5, s2, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s4, s4, s6
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s5, s5, 26
	v_add3_u32 v153, v1, v2, s31
	v_lshrrev_b32_e32 v1, 1, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s33, s4, 5
	s_mov_b32 s4, 0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s2, s5
	v_or_b32_e32 v5, 16, v3
	v_and_or_b32 v1, 0x70, v1, v86
	v_mul_lo_u32 v157, v3, s33
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_lshlrev_b32_e32 v2, 2, v0
	v_add_nc_u32_e32 v156, 0, v1
	v_and_b32_e32 v1, 2, v6
	v_lshlrev_b32_e32 v3, 1, v85
.Ltmp22:
	.loc	1 359 14 is_stmt 1              ; generate_amdgcn.py:359:14
	s_lshl_b32 s1, s29, 1
	v_mul_lo_u32 v158, v5, s33
	v_and_b32_e32 v5, 0x1c0, v2
	v_and_b32_e32 v6, 32, v152
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v1, 0, v1
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v160, 0, v3
	v_mad_u64_u32 v[82:83], null, s1, v84, v[81:82]
	v_lshlrev_b32_e32 v4, 4, v0
	v_or_b32_e32 v7, 0x3f0, v0
	v_dual_mov_b32 v148, 0 :: v_dual_and_b32 v9, 28, v151
	v_add3_u32 v10, v1, v5, v6
	v_add3_u32 v11, v160, v3, v6
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s0, s30, 8
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v163, 0, v2
	s_add_i32 s34, s0, s29
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v164, 0, v4
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v165, 0, v7
	v_mov_b32_e32 v1, s4
	v_lshl_add_u32 v154, s29, 5, v82
	v_dual_mov_b32 v2, s5 :: v_dual_add_nc_u32 v155, 0, v86
	v_or_b32_e32 v159, s0, v0
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v161, s34, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_add_u32 v162, s28, 5, v153
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v166, v10, v9
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v167, v11, v9
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v101, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s2, s2, 6
	s_lshl_b32 s35, s29, 6
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
.Ltmp24:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s5, s5, 6
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s6, s5, s28
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s7, s5, s1
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v9, s6, v153
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s36, s7, s0
	v_add_nc_u32_e32 v10, s6, v162
	v_add_nc_u32_e32 v11, s36, v82
	v_add_nc_u32_e32 v12, s36, v154
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_clause 0x1
	buffer_load_b32 v22, v9, s[20:23], 0 offen
	buffer_load_b32 v21, v10, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[17:20], v11, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v12, s[24:27], 0 offen
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	s_add_i32 s6, s7, s35
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v27, s29, v11
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s7, s6, s0
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	s_add_i32 s6, s6, s34
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v28, s7, v82
	v_add_nc_u32_e32 v25, s7, v154
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v24, s6, v82
	v_add_nc_u32_e32 v26, s29, v12
	v_add_nc_u32_e32 v23, s6, v154
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	buffer_load_b128 v[9:12], v28, s[24:27], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s5, s1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s33
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(4)
	ds_store_b32 v163, v22 offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v164, v[17:20]
	buffer_load_b128 v[17:20], v25, s[24:27], 0 offen
	s_waitcnt vmcnt(2)
	ds_store_b128 v164, v[13:16] offset:4096
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[13:16], v24, s[24:27], 0 offen
	buffer_load_b128 v[27:30], v27, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	ds_store_b128 v164, v[27:30] offset:16384
	buffer_load_b128 v[24:27], v26, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	ds_store_b128 v164, v[24:27] offset:20480
	buffer_load_b128 v[23:26], v23, s[24:27], 0 offen
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v163, v21 offset:33792
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b128 v164, v[9:12] offset:8192
	ds_store_b128 v164, v[17:20] offset:12288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b128 v164, v[13:16] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v164, v[23:26] offset:28672
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v155 offset:33184
	ds_load_u8 v10, v155 offset:33152
	ds_load_u8 v11, v155 offset:33248
	ds_load_u8 v12, v155 offset:33216
	ds_load_u8 v13, v155 offset:33056
	ds_load_u8 v14, v155 offset:33024
	ds_load_u8 v15, v155 offset:33120
	ds_load_u8 v16, v155 offset:33088
	ds_load_u8 v17, v155 offset:32864
	ds_load_u8 v18, v155 offset:32832
	ds_load_u8 v19, v155 offset:32768
	ds_load_u8 v20, v155 offset:32800
	ds_load_u8 v21, v155 offset:32928
	ds_load_u8 v22, v155 offset:32896
	ds_load_u8 v23, v155 offset:32992
	ds_load_u8 v24, v155 offset:32960
	ds_load_u8 v25, v156 offset:3328
	ds_load_u8 v26, v156 offset:3840
	ds_load_u8 v27, v156 offset:3584
	ds_load_u8 v28, v156 offset:3072
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v156 offset:2304
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v156 offset:2816
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	v_lshl_or_b32 v52, v11, 16, v9
	ds_load_u8 v9, v156 offset:2048
	ds_load_u8 v11, v156 offset:2560
	ds_load_u8 v16, v156 offset:1792
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_lshl_or_b32 v51, v14, 16, v13
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v13, v22, v21, 0xc0c0004
	ds_load_u8 v14, v156 offset:1280
	ds_load_u8 v18, v156 offset:256
	ds_load_u8 v22, v156 offset:512
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v24, v23, 0xc0c0004
	v_perm_b32 v19, v19, v20, 0xc0c0004
	ds_load_u8 v20, v156 offset:768
	ds_load_u8 v24, v156
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v23, v27, v26, 0xc0c0004
	v_lshl_or_b32 v50, v15, 16, v13
	ds_load_u8 v13, v156 offset:1536
	ds_load_u8 v15, v156 offset:1024
	v_lshl_or_b32 v49, v17, 16, v19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v21, v28, v25, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v10, v155 offset:33696
	ds_load_u8 v12, v155 offset:33664
	v_lshl_or_b32 v28, v23, 16, v21
	v_lshl_or_b32 v27, v11, 16, v9
	ds_load_u8 v9, v155 offset:33760
	ds_load_u8 v11, v155 offset:33728
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v19, v22, v20, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v24, v18, 0xc0c0004
	ds_load_u8 v18, v155 offset:33440
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v16, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v155 offset:33568
	ds_load_u8 v16, v155 offset:33536
	v_lshl_or_b32 v25, v19, 16, v17
	v_lshl_or_b32 v26, v13, 16, v14
	ds_load_u8 v13, v155 offset:33632
	ds_load_u8 v14, v155 offset:33600
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v155 offset:33504
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v155 offset:33472
	ds_load_u8 v20, v155 offset:33408
	v_lshl_or_b32 v56, v9, 16, v10
	ds_load_u8 v9, v155 offset:33280
	ds_load_u8 v10, v155 offset:33376
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v156 offset:7424
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v155 offset:33312
	v_lshl_or_b32 v55, v13, 16, v15
	ds_load_u8 v15, v155 offset:33344
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v20, v18, 0xc0c0004
	ds_load_u8 v12, v156 offset:7168
	v_lshl_or_b32 v54, v11, 16, v13
	ds_load_u8 v11, v156 offset:7936
	ds_load_u8 v13, v156 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v9, v14, 0xc0c0004
	ds_load_u8 v14, v156 offset:6400
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v15, v10, 0xc0c0004
	ds_load_u8 v15, v156 offset:6912
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v12, v16, 0xc0c0004
	v_lshl_or_b32 v53, v10, 16, v9
	ds_load_u8 v9, v156 offset:5888
	ds_load_u8 v10, v156 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v156 offset:6656
	ds_load_u8 v16, v156 offset:6144
	v_lshl_or_b32 v32, v11, 16, v12
	ds_load_u8 v12, v156 offset:4096
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v156 offset:4352
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v13, v13, v15, 0xc0c0004
	ds_load_u8 v15, v156 offset:5120
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v156 offset:5376
	v_lshl_or_b32 v31, v13, 16, v14
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v155 offset:33200
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v15, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v9, 16, v11
	ds_load_u8 v9, v156 offset:4864
	ds_load_u8 v11, v156 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v155 offset:33168
	v_lshl_or_b32 v29, v9, 16, v10
	ds_load_u8 v9, v155 offset:33264
	ds_load_u8 v10, v155 offset:33232
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v155 offset:33072
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v155 offset:33040
	v_lshl_or_b32 v76, v9, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v12, 0xc0c0004
	ds_load_u8 v12, v155 offset:33136
	ds_load_u8 v13, v155 offset:33104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v12, 16, v10
	ds_load_u8 v9, v155 offset:32944
	ds_load_u8 v10, v155 offset:32912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v155 offset:33008
	ds_load_u8 v11, v155 offset:32976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v10, 16, v9
	ds_load_u8 v9, v155 offset:32880
	ds_load_u8 v10, v155 offset:32848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v155 offset:32784
	ds_load_u8 v11, v155 offset:32816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v9, 16, v10
	ds_load_u8 v9, v155 offset:33584
	ds_load_u8 v10, v155 offset:33552
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v155 offset:33648
	ds_load_u8 v11, v155 offset:33616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v155 offset:33456
	ds_load_u8 v12, v155 offset:33424
	v_lshl_or_b32 v79, v10, 16, v9
	ds_load_u8 v9, v155 offset:33328
	ds_load_u8 v10, v155 offset:33296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v155 offset:33520
	ds_load_u8 v13, v155 offset:33488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v12, 16, v11
	ds_load_u8 v10, v155 offset:33392
	ds_load_u8 v11, v155 offset:33360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v77, v10, 16, v9
	ds_load_u8 v9, v155 offset:33712
	ds_load_u8 v10, v155 offset:33680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v155 offset:33744
	ds_load_u8 v11, v165 offset:32768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[49:52], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v156 offset:3456
	ds_load_u8 v26, v156 offset:3200
	v_wmma_i32_16x16x16_iu8 v[17:24], v[29:32], v[77:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[53:56], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v156 offset:3968
	ds_load_u8 v27, v156 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v156 offset:2432
	ds_load_u8 v28, v156 offset:2176
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v156 offset:1408
	ds_load_u8 v26, v156 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v156 offset:2944
	ds_load_u8 v29, v156 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v156 offset:1920
	ds_load_u8 v27, v156 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v156 offset:384
	ds_load_u8 v26, v156 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v156 offset:896
	ds_load_u8 v27, v156 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v156 offset:7552
	ds_load_u8 v26, v156 offset:7296
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v156 offset:8064
	ds_load_u8 v27, v156 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v156 offset:6528
	ds_load_u8 v28, v156 offset:6272
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v156 offset:5504
	ds_load_u8 v26, v156 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v156 offset:7040
	ds_load_u8 v29, v156 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v156 offset:6016
	ds_load_u8 v27, v156 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v156 offset:4480
	ds_load_u8 v26, v156 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v156 offset:4992
	ds_load_u8 v27, v156 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[49:52], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	ds_load_u8 v41, v156 offset:19712
	ds_load_u8 v42, v156 offset:19456
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[77:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[53:56], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v156 offset:20224
	ds_load_u8 v43, v156 offset:19968
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v156 offset:18688
	ds_load_u8 v44, v156 offset:18432
	v_lshl_or_b32 v171, v42, 16, v41
	ds_load_u8 v41, v156 offset:17664
	ds_load_u8 v42, v156 offset:17408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v156 offset:19200
	ds_load_u8 v45, v156 offset:18944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v44, 16, v43
	ds_load_u8 v42, v156 offset:18176
	ds_load_u8 v43, v156 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v169, v42, 16, v41
	ds_load_u8 v41, v156 offset:16384
	ds_load_u8 v42, v156 offset:16640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v156 offset:17152
	ds_load_u8 v43, v156 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v42, 16, v41
	ds_load_u8 v41, v156 offset:23808
	ds_load_u8 v42, v156 offset:23552
	v_wmma_i32_16x16x16_iu8 v[57:64], v[168:171], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[168:171], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v156 offset:24320
	ds_load_u8 v43, v156 offset:24064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v156 offset:22784
	ds_load_u8 v44, v156 offset:22528
	v_lshl_or_b32 v175, v42, 16, v41
	ds_load_u8 v41, v156 offset:21760
	ds_load_u8 v42, v156 offset:21504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v156 offset:23296
	ds_load_u8 v45, v156 offset:23040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v44, 16, v43
	ds_load_u8 v42, v156 offset:22272
	ds_load_u8 v43, v156 offset:22016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v173, v42, 16, v41
	ds_load_u8 v41, v156 offset:20736
	ds_load_u8 v42, v156 offset:20480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v156 offset:21248
	ds_load_u8 v43, v156 offset:20992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v172, v42, 16, v41
	ds_load_u8 v41, v156 offset:19840
	ds_load_u8 v42, v156 offset:19584
	v_wmma_i32_16x16x16_iu8 v[57:64], v[172:175], v[53:56], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[172:175], v[77:80], v[65:72] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v63, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v156 offset:20352
	ds_load_u8 v43, v156 offset:20096
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v61, v61
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v156 offset:18816
	ds_load_u8 v44, v156 offset:18560
	v_lshl_or_b32 v179, v42, 16, v41
	ds_load_u8 v41, v156 offset:17792
	ds_load_u8 v42, v156 offset:17536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v156 offset:19328
	ds_load_u8 v45, v156 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v44, 16, v43
	ds_load_u8 v42, v156 offset:18304
	ds_load_u8 v43, v156 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v177, v42, 16, v41
	ds_load_u8 v41, v156 offset:16768
	ds_load_u8 v42, v156 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v156 offset:17280
	ds_load_u8 v43, v156 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v42, 16, v41
	ds_load_u8 v41, v156 offset:23936
	ds_load_u8 v42, v156 offset:23680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v156 offset:24448
	ds_load_u8 v43, v156 offset:24192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v156 offset:22912
	ds_load_u8 v44, v156 offset:22656
	v_lshl_or_b32 v183, v42, 16, v41
	ds_load_u8 v41, v156 offset:21888
	ds_load_u8 v42, v156 offset:21632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v156 offset:23424
	ds_load_u8 v45, v156 offset:23168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v182, v44, 16, v43
	ds_load_u8 v42, v156 offset:22400
	ds_load_u8 v43, v156 offset:22144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v181, v42, 16, v41
	ds_load_u8 v41, v156 offset:20864
	ds_load_u8 v42, v156 offset:20608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v156 offset:21376
	ds_load_u8 v43, v156 offset:21120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v180, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[176:179], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[180:183], v[53:56], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[176:179], v[73:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v73, v159, s6, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v74, v158, s5, 1
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v75, v161, s6, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[49:56], v[180:183], v[77:80], v[49:56] neg_lo:[1,1,0]
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_or_b32 s6, s5, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s6, s33
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v166, v73 offset:34816
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v73, v157, s5, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s5, s6, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x1
	buffer_load_u16 v169, v73, s[8:11], 0 offen
	buffer_load_u16 v168, v74, s[8:11], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v169, 16, v169
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_lshlrev_b32 v168, 16, v168
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v12, v12, v169
	v_mul_f32_e32 v11, v11, v169
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v170, v75, s[12:15], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[77:80], v160 offset:34816
	ds_load_b128 v[73:76], v160 offset:34832
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v10, v169
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	ds_store_b16 v166, v170 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v170, v155 offset:34208
	ds_load_u8 v171, v155 offset:34176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v155 offset:34272
	ds_load_u8 v172, v155 offset:34240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v155 offset:34080
	ds_load_u8 v173, v155 offset:34048
	v_lshl_or_b32 v221, v171, 16, v170
	ds_load_u8 v170, v155 offset:33952
	ds_load_u8 v171, v155 offset:33920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v155 offset:34144
	ds_load_u8 v174, v155 offset:34112
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v220, v173, 16, v172
	ds_load_u8 v171, v155 offset:34016
	ds_load_u8 v172, v155 offset:33984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	v_lshl_or_b32 v219, v171, 16, v170
	ds_load_u8 v170, v155 offset:33824
	ds_load_u8 v171, v155 offset:33792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v155 offset:33888
	ds_load_u8 v172, v155 offset:33856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v218, v171, 16, v170
	ds_load_u8 v170, v156 offset:11520
	ds_load_u8 v171, v156 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v156 offset:12032
	ds_load_u8 v172, v156 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v156 offset:10496
	ds_load_u8 v173, v156 offset:10240
	v_lshl_or_b32 v189, v171, 16, v170
	ds_load_u8 v170, v156 offset:9472
	ds_load_u8 v171, v156 offset:9216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v156 offset:11008
	ds_load_u8 v174, v156 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v188, v173, 16, v172
	ds_load_u8 v171, v156 offset:9984
	ds_load_u8 v172, v156 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	v_lshl_or_b32 v187, v171, 16, v170
	ds_load_u8 v170, v156 offset:8192
	ds_load_u8 v171, v156 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v170, v171, 0xc0c0004
	ds_load_u8 v171, v156 offset:8960
	ds_load_u8 v172, v156 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v171, 16, v170
	ds_load_u8 v170, v155 offset:34720
	ds_load_u8 v171, v155 offset:34688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v155 offset:34784
	ds_load_u8 v172, v155 offset:34752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v155 offset:34592
	ds_load_u8 v173, v155 offset:34560
	v_lshl_or_b32 v225, v171, 16, v170
	ds_load_u8 v170, v155 offset:34464
	ds_load_u8 v171, v155 offset:34432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v155 offset:34656
	ds_load_u8 v174, v155 offset:34624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v224, v173, 16, v172
	ds_load_u8 v171, v155 offset:34528
	ds_load_u8 v172, v155 offset:34496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	v_lshl_or_b32 v223, v171, 16, v170
	ds_load_u8 v170, v155 offset:34336
	ds_load_u8 v171, v155 offset:34304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v155 offset:34400
	ds_load_u8 v172, v155 offset:34368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v222, v171, 16, v170
	ds_load_u8 v170, v156 offset:15616
	ds_load_u8 v171, v156 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v156 offset:16128
	ds_load_u8 v172, v156 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v156 offset:14592
	ds_load_u8 v173, v156 offset:14336
	v_lshl_or_b32 v193, v171, 16, v170
	ds_load_u8 v170, v156 offset:13568
	ds_load_u8 v171, v156 offset:13312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v156 offset:15104
	ds_load_u8 v174, v156 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v192, v173, 16, v172
	ds_load_u8 v171, v156 offset:14080
	ds_load_u8 v172, v156 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	v_lshl_or_b32 v191, v171, 16, v170
	ds_load_u8 v170, v156 offset:12288
	ds_load_u8 v171, v156 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v170, v171, 0xc0c0004
	ds_load_u8 v171, v156 offset:13056
	ds_load_u8 v172, v156 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v171, 16, v170
	ds_load_u8 v170, v155 offset:34224
	ds_load_u8 v171, v155 offset:34192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v155 offset:34288
	ds_load_u8 v172, v155 offset:34256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v155 offset:34096
	ds_load_u8 v173, v155 offset:34064
	v_lshl_or_b32 v237, v171, 16, v170
	ds_load_u8 v170, v155 offset:33968
	ds_load_u8 v171, v155 offset:33936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v155 offset:34160
	ds_load_u8 v174, v155 offset:34128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v236, v173, 16, v172
	ds_load_u8 v171, v155 offset:34032
	ds_load_u8 v172, v155 offset:34000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	v_lshl_or_b32 v235, v171, 16, v170
	ds_load_u8 v170, v155 offset:33840
	ds_load_u8 v171, v155 offset:33808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v155 offset:33904
	ds_load_u8 v172, v155 offset:33872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v234, v171, 16, v170
	ds_load_u8 v170, v155 offset:34608
	ds_load_u8 v171, v155 offset:34576
	v_wmma_i32_16x16x16_iu8 v[178:185], v[186:189], v[234:237], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v155 offset:34672
	ds_load_u8 v172, v155 offset:34640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v155 offset:34480
	ds_load_u8 v173, v155 offset:34448
	v_lshl_or_b32 v240, v171, 16, v170
	ds_load_u8 v170, v155 offset:34352
	ds_load_u8 v171, v155 offset:34320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v155 offset:34544
	ds_load_u8 v174, v155 offset:34512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v239, v173, 16, v172
	ds_load_u8 v171, v155 offset:34416
	ds_load_u8 v172, v155 offset:34384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	v_lshl_or_b32 v238, v171, 16, v170
	ds_load_u8 v170, v155 offset:34736
	ds_load_u8 v171, v155 offset:34704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v155 offset:34768
	ds_load_u8 v172, v165 offset:33792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v241, v171, 16, v170
	v_wmma_i32_16x16x16_iu8 v[170:177], v[186:189], v[218:221], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v186, v156 offset:11648
	ds_load_u8 v187, v156 offset:11392
	v_wmma_i32_16x16x16_iu8 v[178:185], v[190:193], v[238:241], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[170:177], v[190:193], v[222:225], v[170:177] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v170, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v182, v182
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v156 offset:12160
	ds_load_u8 v188, v156 offset:11904
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v185, v185
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v156 offset:10624
	ds_load_u8 v189, v156 offset:10368
	v_lshl_or_b32 v205, v187, 16, v186
	ds_load_u8 v186, v156 offset:9600
	ds_load_u8 v187, v156 offset:9344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v156 offset:11136
	ds_load_u8 v190, v156 offset:10880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v204, v189, 16, v188
	ds_load_u8 v187, v156 offset:10112
	ds_load_u8 v188, v156 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	v_lshl_or_b32 v203, v187, 16, v186
	ds_load_u8 v186, v156 offset:8576
	ds_load_u8 v187, v156 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v156 offset:9088
	ds_load_u8 v188, v156 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v202, v187, 16, v186
	ds_load_u8 v186, v156 offset:15744
	ds_load_u8 v187, v156 offset:15488
	v_wmma_i32_16x16x16_iu8 v[194:201], v[202:205], v[234:237], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v156 offset:16256
	ds_load_u8 v188, v156 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v156 offset:14720
	ds_load_u8 v189, v156 offset:14464
	v_lshl_or_b32 v209, v187, 16, v186
	ds_load_u8 v186, v156 offset:13696
	ds_load_u8 v187, v156 offset:13440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v156 offset:15232
	ds_load_u8 v190, v156 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v208, v189, 16, v188
	ds_load_u8 v187, v156 offset:14208
	ds_load_u8 v188, v156 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	v_lshl_or_b32 v207, v187, 16, v186
	ds_load_u8 v186, v156 offset:12672
	ds_load_u8 v187, v156 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v156 offset:13184
	ds_load_u8 v188, v156 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v187, 16, v186
	v_wmma_i32_16x16x16_iu8 v[186:193], v[202:205], v[218:221], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	ds_load_u8 v202, v156 offset:27904
	ds_load_u8 v203, v156 offset:27648
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[194:201], v[206:209], v[238:241], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[206:209], v[222:225], v[186:193] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v190, v190
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v194, v194
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v195, v195
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v197, v197
	v_cvt_f32_i32_e32 v191, v191
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v156 offset:28416
	ds_load_u8 v204, v156 offset:28160
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v192, v192
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v199, v199
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	ds_load_u8 v204, v156 offset:26880
	ds_load_u8 v205, v156 offset:26624
	v_lshl_or_b32 v229, v203, 16, v202
	ds_load_u8 v202, v156 offset:25856
	ds_load_u8 v203, v156 offset:25600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v204, v205, v204, 0xc0c0004
	ds_load_u8 v205, v156 offset:27392
	ds_load_u8 v206, v156 offset:27136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v205, v206, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v228, v205, 16, v204
	ds_load_u8 v203, v156 offset:26368
	ds_load_u8 v204, v156 offset:26112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	v_lshl_or_b32 v227, v203, 16, v202
	ds_load_u8 v202, v156 offset:24576
	ds_load_u8 v203, v156 offset:24832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v202, v203, 0xc0c0004
	ds_load_u8 v203, v156 offset:25344
	ds_load_u8 v204, v156 offset:25088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v226, v203, 16, v202
	ds_load_u8 v202, v156 offset:32000
	ds_load_u8 v203, v156 offset:31744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v156 offset:32512
	ds_load_u8 v204, v156 offset:32256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	ds_load_u8 v204, v156 offset:30976
	ds_load_u8 v205, v156 offset:30720
	v_lshl_or_b32 v233, v203, 16, v202
	ds_load_u8 v202, v156 offset:29952
	ds_load_u8 v203, v156 offset:29696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v204, v205, v204, 0xc0c0004
	ds_load_u8 v205, v156 offset:31488
	ds_load_u8 v206, v156 offset:31232
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v205, v206, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v232, v205, 16, v204
	ds_load_u8 v203, v156 offset:30464
	ds_load_u8 v204, v156 offset:30208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	v_lshl_or_b32 v231, v203, 16, v202
	ds_load_u8 v202, v156 offset:28928
	ds_load_u8 v203, v156 offset:28672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v156 offset:29440
	ds_load_u8 v204, v156 offset:29184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v230, v203, 16, v202
	ds_load_u8 v202, v156 offset:28032
	ds_load_u8 v203, v156 offset:27776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v156 offset:28544
	ds_load_u8 v204, v156 offset:28288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	ds_load_u8 v204, v156 offset:27008
	ds_load_u8 v205, v156 offset:26752
	v_lshl_or_b32 v245, v203, 16, v202
	ds_load_u8 v202, v156 offset:25984
	ds_load_u8 v203, v156 offset:25728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v204, v205, v204, 0xc0c0004
	ds_load_u8 v205, v156 offset:27520
	ds_load_u8 v206, v156 offset:27264
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v205, v206, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v244, v205, 16, v204
	ds_load_u8 v203, v156 offset:26496
	ds_load_u8 v204, v156 offset:26240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	v_lshl_or_b32 v243, v203, 16, v202
	ds_load_u8 v202, v156 offset:24960
	ds_load_u8 v203, v156 offset:24704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v156 offset:25472
	ds_load_u8 v204, v156 offset:25216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v242, v203, 16, v202
	ds_load_u8 v202, v156 offset:32128
	ds_load_u8 v203, v156 offset:31872
	v_wmma_i32_16x16x16_iu8 v[210:217], v[242:245], v[218:221], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v156 offset:32640
	ds_load_u8 v204, v156 offset:32384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	ds_load_u8 v204, v156 offset:31104
	ds_load_u8 v205, v156 offset:30848
	v_lshl_or_b32 v249, v203, 16, v202
	ds_load_u8 v202, v156 offset:30080
	ds_load_u8 v203, v156 offset:29824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v204, v205, v204, 0xc0c0004
	ds_load_u8 v205, v156 offset:31616
	ds_load_u8 v206, v156 offset:31360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v205, v206, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v248, v205, 16, v204
	ds_load_u8 v203, v156 offset:30592
	ds_load_u8 v204, v156 offset:30336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	v_lshl_or_b32 v247, v203, 16, v202
	ds_load_u8 v202, v156 offset:29056
	ds_load_u8 v203, v156 offset:28800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v156 offset:29568
	ds_load_u8 v204, v156 offset:29312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v246, v203, 16, v202
	v_wmma_i32_16x16x16_iu8 v[202:209], v[226:229], v[218:221], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[246:249], v[222:225], v[210:217] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[202:209], v[230:233], v[222:225], v[202:209] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[218:225], v[226:229], v[234:237], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v214, v214
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v216, v216
	v_wmma_i32_16x16x16_iu8 v[218:225], v[230:233], v[238:241], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[226:233], v[242:245], v[234:237], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v237, v13
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v13.h, v80.l
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v234, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[226:233], v[246:249], v[238:241], v[226:233] neg_lo:[1,1,0]
	v_mov_b16_e64 v238.l, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v235, v15
	v_cvt_f32_i32_e32 v236, v14
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v238.h, v73.l
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v226, v226
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v13.l, v238.l
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v213, v213
	v_cvt_f32_i32_e32 v232, v232
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v229, v229
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v121, v12, v13
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v12, v20, v168
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v227, v227
	v_cvt_f32_i32_e32 v233, v233
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v203, v203
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v97, v12, v13
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v12.l, v238.l
	v_mov_b16_e32 v12.h, v79.l
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v218, v218
	v_cvt_f32_i32_e32 v219, v219
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v126, v11, v12
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v11, v19, v168
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v220, v220
	v_cvt_f32_i32_e32 v221, v221
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v206, v206
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v102, v11, v12 :: v_dual_lshlrev_b32 v11, 16, v78
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v209, v209
	v_cvt_f32_i32_e32 v222, v222
	v_cvt_f32_i32_e32 v223, v223
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v120, v10, v11
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v10, v18, v168 :: v_dual_mul_f32 v9, v9, v169
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v224, v224
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v210, v210
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v96, v10, v11
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v10, 16, v77
	v_add_lshl_u32 v11, v159, s5, 1
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v212, v212
	v_cvt_f32_i32_e32 v231, v231
	v_cvt_f32_i32_e32 v228, v228
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v119, v9, v10
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v17, v168
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v230, v230
	v_cvt_f32_i32_e32 v215, v215
	v_cvt_f32_i32_e32 v217, v217
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v91, v9, v10
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v9, v157, s6, 1
	v_add_lshl_u32 v10, v158, s6, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v17, v11, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v18, v9, s[8:11], 0 offen
	buffer_load_u16 v239, v10, s[8:11], 0 offen
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[9:12], v160 offset:34816
	ds_load_b128 v[13:16], v160 offset:34832
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v240, 16, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v167, v17 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v160 offset:34816
	v_mul_f32_e32 v170, v170, v240
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v119, v170, v17 :: v_dual_mul_f32 v170, v171, v240
	v_fmac_f32_e32 v120, v170, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v170, v172, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v126, v170, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v170, v173, v240
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v121, v170, v20 :: v_dual_lshlrev_b32 v170, 16, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v171, v178, v170
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v91, v171, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v179, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v96, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v180, v170 :: v_dual_lshlrev_b32 v18, 16, v76
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v102, v17, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v181, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v97, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v234, v169
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v125, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v24, v168
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v24, v240, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v101, v17, v18
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v235, v169 :: v_dual_lshlrev_b32 v18, 16, v75
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v124, v17, v18 :: v_dual_mul_f32 v17, v23, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v23, v170, v233 :: v_dual_fmac_f32 v100, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v236, v169 :: v_dual_lshlrev_b32 v18, 16, v74
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v123, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v22, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v22, v170, v232 :: v_dual_fmac_f32 v99, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v237, v169
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v122, v17, v238
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v21, v168
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v21, v174, v240 :: v_dual_fmac_f32 v98, v17, v238
	ds_load_b128 v[17:20], v160 offset:34832
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v238.h, v13.l
	v_and_b32_e32 v13, 0xffff0000, v13
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v122, v21, v17 :: v_dual_mul_f32 v21, v175, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v123, v21, v18
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v176, v240
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v124, v21, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v177, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v125, v21, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v182, v170
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v98, v21, v17 :: v_dual_mul_f32 v17, v183, v170
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v169, v25
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v170, v230
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v99, v17, v18
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v184, v170
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v18, 0xffff0000, v78
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v100, v17, v19
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v185, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v101, v17, v20
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v17, 0xffff0000, v77
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v147, v21, v17 :: v_dual_and_b32 v20, 0xffff0000, v80
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v168, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v138, v21, v17 :: v_dual_and_b32 v19, 0xffff0000, v79
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v169, v28 :: v_dual_mul_f32 v28, v170, v227
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v113, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v168, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v89, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v169, v27
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v27, v170, v228 :: v_dual_fmac_f32 v112, v17, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v168, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v88, v17, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v169, v26 :: v_dual_mul_f32 v26, v170, v229
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v111, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v168, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v83, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[17:20], v160 offset:35328
	v_mul_f32_e32 v21, v240, v186
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v147, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v170, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v138, v21, v17 :: v_dual_mul_f32 v17, v240, v187
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v169, v30
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v111, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v240, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v112, v17, v19 :: v_dual_mul_f32 v17, v240, v189
	v_fmac_f32_e32 v113, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v170, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v83, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v170, v196 :: v_dual_and_b32 v18, 0xffff0000, v75
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v88, v17, v19 :: v_dual_mul_f32 v17, v170, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v89, v17, v20
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v17, 0xffff0000, v74
	v_and_b32_e32 v20, 0xffff0000, v73
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v141, v21, v17
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v168, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v137, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v169, v31
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v19, 0xffff0000, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v21, v240, v191 :: v_dual_fmac_f32 v140, v17, v18
	v_mul_f32_e32 v17, v168, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v136, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v169, v32
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v139, v17, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v168, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v135, v17, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v169, v29
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v114, v17, v20 :: v_dual_mul_f32 v17, v168, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[17:20], v160 offset:35344
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v141, v21, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v240, v192
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v140, v21, v19 :: v_dual_mul_f32 v21, v240, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v21, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v170, v199
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v137, v21, v18 :: v_dual_mul_f32 v18, v170, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v136, v18, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v18, v170, v201
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v135, v18, v20 :: v_dual_mul_f32 v18, v240, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v114, v18, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v18, v170, v198
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v90, v18, v17 :: v_dual_mul_f32 v17, v169, v60
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v18.l, v238.l
	v_mov_b16_e32 v18.h, v12.l
	v_and_b32_e32 v12, 0xffff0000, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v132, v17, v18 :: v_dual_mul_f32 v17, v168, v68
	v_fmac_f32_e32 v108, v17, v18
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v169, v59
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_mov_b16_e32 v18.h, v11.l
	v_and_b32_e32 v11, 0xffff0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v127, v17, v18
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v168, v67
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v103, v17, v18
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v169, v58
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_mov_b16_e32 v18.h, v10.l
	v_and_b32_e32 v10, 0xffff0000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v133, v17, v18
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v168, v66
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v109, v17, v18
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v169, v57
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_mov_b16_e32 v18.h, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v134, v17, v18 :: v_dual_and_b32 v9, 0xffff0000, v9
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v168, v65
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v110, v17, v18
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v17, v161, s5, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v167, v17 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v160 offset:34816
	v_mul_f32_e32 v21, v240, v202
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v134, v21, v17 :: v_dual_mul_f32 v21, v240, v203
	v_fmac_f32_e32 v133, v21, v18
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v21, v240, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v127, v21, v19
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v21, v240, v205
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v132, v21, v20 :: v_dual_mul_f32 v21, v170, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v110, v21, v17 :: v_dual_mul_f32 v17, v170, v219
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v21, v240, v206
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v109, v17, v18
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v170, v220
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v18.l, v238.l
	v_mov_b16_e32 v18.h, v16.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v103, v17, v19 :: v_dual_and_b32 v16, 0xffff0000, v16
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v170, v221
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v108, v17, v20
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v169, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v128, v17, v18 :: v_dual_mul_f32 v17, v168, v72
	v_fmac_f32_e32 v104, v17, v18
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v169, v63
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_mov_b16_e32 v18.h, v15.l
	v_and_b32_e32 v15, 0xffff0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v129, v17, v18
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v168, v71
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v105, v17, v18
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v169, v62
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_mov_b16_e32 v18.h, v14.l
	v_and_b32_e32 v14, 0xffff0000, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v130, v17, v18
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v168, v70
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v106, v17, v18
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v169, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v131, v17, v238
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v168, v69
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v107, v17, v238
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[17:20], v160 offset:34832
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v131, v21, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v21, v240, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v130, v21, v18 :: v_dual_mul_f32 v21, v240, v208
	v_fmac_f32_e32 v129, v21, v19
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v21, v240, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v128, v21, v20 :: v_dual_mul_f32 v21, v170, v222
	v_fmac_f32_e32 v107, v21, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v170, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v21, v170, v231 :: v_dual_fmac_f32 v106, v17, v18
	v_mul_f32_e32 v17, v170, v224
	v_dual_mul_f32 v18, v240, v216 :: v_dual_fmac_f32 v105, v17, v19
	v_mul_f32_e32 v17, v170, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v19, v240, v217 :: v_dual_fmac_f32 v104, v17, v20
	v_dual_mul_f32 v17, v169, v41 :: v_dual_mul_f32 v20, v170, v226
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v149, v17, v9
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v168, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v145, v17, v9
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v9, v169, v46
	v_dual_mul_f32 v17, v240, v215 :: v_dual_fmac_f32 v150, v9, v14
	v_mul_f32_e32 v9, v168, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v144, v9, v14
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v9, v169, v47 :: v_dual_mul_f32 v14, v240, v213
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v148, v9, v15
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v9, v168, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v143, v9, v15
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v9, v169, v48
	v_mul_f32_e32 v15, v240, v212
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v146, v9, v16
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v9, v168, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v142, v9, v16
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v9, v169, v45 :: v_dual_mul_f32 v16, v240, v211
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v115, v9, v13
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v9, v168, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v95, v9, v13
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v9, v169, v44
	v_dual_mul_f32 v13, v240, v210 :: v_dual_fmac_f32 v116, v9, v12
	v_mul_f32_e32 v9, v168, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v94, v9, v12
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v9, v169, v43
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v117, v9, v11
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v9, v168, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v93, v9, v11
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v9, v169, v42
	v_mul_f32_e32 v11, v168, v50
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v118, v9, v10
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v92, v11, v10
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[9:12], v160 offset:35328
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v149, v13, v9 :: v_dual_fmac_f32 v118, v16, v10
	v_dual_fmac_f32 v117, v15, v11 :: v_dual_fmac_f32 v116, v14, v12
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[13:16], v160 offset:35344
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v145, v20, v9
	v_dual_fmac_f32 v92, v28, v10 :: v_dual_fmac_f32 v93, v27, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v94, v26, v12 :: v_dual_fmac_f32 v115, v24, v13
	v_fmac_f32_e32 v150, v17, v14
	v_fmac_f32_e32 v148, v18, v15
	v_dual_fmac_f32 v146, v19, v16 :: v_dual_fmac_f32 v95, v25, v13
	v_dual_fmac_f32 v144, v21, v14 :: v_dual_fmac_f32 v143, v22, v15
	v_fmac_f32_e32 v142, v23, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v151 :: v_dual_mov_b32 v1, v152
.LBB0_7:                                ; %._crit_edge
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v3, 0xbfb8aa3b, v149 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v128
	v_dual_mul_f32 v5, 0xbfb8aa3b, v150 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v145
	v_dual_mul_f32 v9, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_dual_mul_f32 v3, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v148
	v_dual_mul_f32 v29, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v10
	v_dual_mul_f32 v22, 0xbfb8aa3b, v117 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v134
	v_mul_f32_e32 v18, 0xbfb8aa3b, v103
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v149
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_dual_fmac_f32 v11, 0xbfb8aa3b, v148 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v150
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v146
	v_exp_f32_e32 v8, v8
	v_dual_mul_f32 v20, 0xbfb8aa3b, v104 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v145
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v6, v7, v6
	v_ldexp_f32 v7, v11, v10
	v_exp_f32_e32 v10, v15
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_dual_mul_f32 v21, 0xbfb8aa3b, v108 :: v_dual_add_f32 v6, 1.0, v6
	v_ldexp_f32 v5, v8, v5
	v_dual_mul_f32 v25, 0xbfb8aa3b, v127 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v130
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v8, v13, v12
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v6, v6, v149
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v10, v10, v14
	v_mul_f32_e32 v13, 0xbfb8aa3b, v144
	v_dual_mul_f32 v23, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v109
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v35, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_mul_f32_e32 v13, 0xbfb8aa3b, v143
	v_dual_mul_f32 v17, 0xbfb8aa3b, v116 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v105
	v_dual_mul_f32 v15, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v94
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v19, 0xbfb8aa3b, v106
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_mov_b32 s4, 0x76543210
.Ltmp25:
	.loc	1 82 15 is_stmt 1               ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v1, 0x60, v1
.Ltmp26:
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v144
.Ltmp27:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v2, 0x100, v2
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s5, s29, 31
.Ltmp28:
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
.Ltmp29:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s5, s5, 24
.Ltmp30:
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v41, v14
.Ltmp31:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s5, s29, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s5, s5, 8
.Ltmp32:
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v32, v41, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v7, 1.0, v7 :: v_dual_add_f32 v32, 1.0, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v7, v7, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v42
	v_fma_f32 v47, -v42, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v5, 1.0, v5 :: v_dual_fmac_f32 v44, v47, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v5, v5, v150
	v_div_scale_f32 v46, s0, v150, v5, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v37
	v_fma_f32 v14, -v37, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v11, 0xbfb8aa3b, v95 :: v_dual_fmac_f32 v40, v14, v40
	v_mul_f32_e32 v14, 0xbfb8aa3b, v92
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_mul_f32_e32 v13, 0xbfb8aa3b, v142
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v41, v46, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_mul_f32_e32 v27, 0xbfb8aa3b, v110
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v13, -v33, v35, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v143
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, vcc_lo, v149, v6, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v36, v36
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v34, v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v39, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, s1, v148, v7, v148
	v_fmac_f32_e32 v35, v13, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v13, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v45, v43, v35
	v_fma_f32 v36, -v33, v45, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v36, v35
	v_fma_f32 v36, -v37, v41, v46
	v_fma_f32 v33, -v33, v45, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v36, v40
	v_mul_f32_e32 v36, v39, v44
	v_div_scale_f32 v43, null, v8, v8, v146
	v_div_fmas_f32 v33, v33, v35, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v37, v41, v46
	v_fma_f32 v37, -v42, v36, v39
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v6, v33, v6, v149
	v_div_fmas_f32 v35, v35, v40, v41
	v_fmac_f32_e32 v36, v37, v44
	s_mov_b32 vcc_lo, s1
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v35, v5, v150
	v_fma_f32 v33, -v42, v36, v39
	v_div_scale_f32 v35, null, v10, v10, v145
	v_div_scale_f32 v39, null, v34, v34, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v44, v36
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v38, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v40, vcc_lo, v146, v8, v146
	v_div_fixup_f32 v7, v33, v7, v148
	v_div_scale_f32 v46, null, v37, v37, v142
	v_fma_f32 v33, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v50, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s0, v145, v10, v145
	v_fmac_f32_e32 v42, v50, v42
	v_div_scale_f32 v50, s2, v143, v34, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v51, v33, v36
	v_fma_f32 v52, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v50, v42
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v32, v32, v144
	v_fmac_f32_e32 v48, v52, v48
	v_div_scale_f32 v52, s3, v142, v37, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v40, v45
	v_rcp_f32_e32 v41, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v43, v44, v40
	v_fmac_f32_e32 v44, v49, v45
	v_fma_f32 v49, -v35, v51, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v38, v41, 1.0
	v_fma_f32 v40, -v43, v44, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v49, v36
	v_fma_f32 v49, -v39, v54, v50
	v_fmac_f32_e32 v41, v47, v41
	v_div_scale_f32 v47, s1, v144, v32, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v35, v51, v33
	v_fmac_f32_e32 v54, v49, v42
	v_div_fmas_f32 v40, v40, v45, v44
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v33, v33, v36, v51
	v_mul_f32_e32 v53, v47, v41
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v8, v40, v8, v146
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v33, v33, v10, v145
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v147, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v55, v52, v48
	v_fma_f32 v43, -v38, v53, v47
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v9, v141, v5 :: v_dual_mul_f32 v8, v139, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v133
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v35, -v46, v55, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v43, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v55, v35, v48 :: v_dual_mul_f32 v6, v138, v33
	v_fma_f32 v36, -v38, v53, v47
	v_fma_f32 v35, -v39, v54, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v46, v55, v52
	v_div_fmas_f32 v36, v36, v41, v53
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v42, v54
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v36, v32, v144
	v_div_fmas_f32 v38, v38, v48, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v35, v34, v143
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v38, v37, v142
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, s1
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v132
	v_dual_fmac_f32 v4, 0xbfb8aa3b, v134 :: v_dual_mul_f32 v5, v135, v35
	v_ldexp_f32 v35, v40, v36
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v33, v38
	v_exp_f32_e32 v39, v4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v136, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v137, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v131
	v_ldexp_f32 v30, v33, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v140, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v39, v31
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v34, v34
	v_cndmask_b32_e64 v41, 0, 0x42800000, s0
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, s1, v132, v30, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v128
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v30, v30, v132
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v32, v34, v32
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v129
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v34, v44
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v127
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v28, v41, v28
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v31, v31, v134
	v_div_scale_f32 v45, vcc_lo, v134, v31, v134
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v36, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v25, v38
	v_fma_f32 v41, -v44, v34, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v29, v33, v29
	v_ldexp_f32 v33, v40, v39
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v43, null, v35, v35, v133
	v_div_scale_f32 v41, null, v32, v32, v131
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v38, v25, 1.0
	v_mul_f32_e32 v48, v46, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v41
	v_fmac_f32_e32 v25, v42, v25
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v39, v45, v25
	v_fma_f32 v37, -v38, v39, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v43, v42, 1.0
	v_dual_fmac_f32 v39, v37, v25 :: v_dual_fmac_f32 v42, v40, v42
	v_div_scale_f32 v40, s0, v133, v35, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v39, v45
	v_div_fmas_f32 v25, v38, v25, v39
	v_fma_f32 v39, -v44, v48, v46
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v25, v31, v134
	v_fmac_f32_e32 v48, v39, v34
	v_div_scale_f32 v39, s2, v131, v32, v131
	v_mul_f32_e32 v37, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v43, v37, v40
	v_fmac_f32_e32 v37, v45, v42
	v_fma_f32 v45, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v43, v37, v40
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v43, null, v36, v36, v129
	v_div_scale_f32 v45, null, v28, v28, v128
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v25, v25, v42, v37
	v_fma_f32 v37, -v44, v48, v46
	v_mul_f32_e32 v42, v39, v47
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v50, v45
	v_div_fixup_f32 v35, v25, v35, v133
	v_div_fmas_f32 v34, v37, v34, v48
	v_fma_f32 v37, -v41, v42, v39
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v30, v34, v30, v132
	v_fmac_f32_e32 v42, v37, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v49, null, v29, v29, v130
	v_div_scale_f32 v44, s0, v130, v29, v130
	v_div_scale_f32 v37, null, v33, v33, v127
	v_rcp_f32_e32 v38, v49
	v_div_scale_f32 v34, s1, v129, v36, v129
	v_fma_f32 v39, -v41, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v40, -v49, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v40, v38
	v_rcp_f32_e32 v40, v43
	v_mul_f32_e32 v46, v44, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v25, -v49, v46, v44
	v_fma_f32 v48, -v43, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v48, v40
	v_fma_f32 v48, -v45, v50, 1.0
	v_dual_fmac_f32 v46, v25, v38 :: v_dual_mul_f32 v25, v34, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v48, v50
	v_div_fmas_f32 v39, v39, v47, v42
	v_fma_f32 v42, -v49, v46, v44
	v_fma_f32 v49, -v37, v41, 1.0
	v_fma_f32 v44, -v43, v25, v34
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v48, s3, v128, v28, v128
	v_div_fmas_f32 v38, v42, v38, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v44, v40
	v_fmac_f32_e32 v41, v49, v41
	v_div_scale_f32 v44, s0, v127, v33, v127
	v_div_fixup_f32 v29, v38, v29, v130
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v38, v44, v41
	v_div_fixup_f32 v32, v39, v32, v131
	v_fma_f32 v22, -v37, v38, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v47, v48, v50 :: v_dual_fmac_f32 v38, v22, v41
	v_fma_f32 v42, -v45, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v42, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s1
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v117
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v43, v25, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v25, v34, v40, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v45, v47, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v25, v36, v129
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v23, v23, v50, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v28, v23, v28, v128
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v39, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v16, -v37, v38, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v42
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v116
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v34, v39, v34
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v115
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v16, v16, v41, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v36, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v16, v33, v127
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v37, v40
	v_ldexp_f32 v17, v22, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v34, v34, v118
	v_div_scale_f32 v45, vcc_lo, v118, v34, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v17
	v_add_f32_e32 v38, 1.0, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v36, v42
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v126, v16
	v_mul_f32_e32 v16, v125, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v28, v37
	v_div_scale_f32 v36, null, v39, v39, v116
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, null, v38, v38, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v36
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v124, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v42, v42, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v25, -v37, v28, 1.0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v123, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v48, s0, v117, v38, v117
	v_fmac_f32_e32 v28, v25, v28
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v122, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v36, v43, 1.0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v119, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v40, v41, 1.0
	v_div_scale_f32 v49, s1, v116, v39, v116
	v_fmac_f32_e32 v43, v32, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v29, v41
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v121, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, s2, v115, v42, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v46, v32, v46 :: v_dual_mul_f32 v47, v45, v28
	v_mul_f32_e32 v50, v48, v41
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v120, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v37, v47, v45
	v_fmac_f32_e32 v47, v30, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v40, v50, v48
	v_fma_f32 v31, -v37, v47, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v50, v30, v41 :: v_dual_mul_f32 v51, v49, v43
	v_div_fmas_f32 v28, v31, v28, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v40, v50, v48
	v_fma_f32 v35, -v36, v51, v49
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v28, v28, v34, v118
	v_mul_f32_e32 v53, v52, v46
	v_fmac_f32_e32 v51, v35, v43
	v_div_fmas_f32 v31, v31, v41, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v44, v53, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v31, v38, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v30, v46
	v_fma_f32 v30, -v36, v51, v49
	v_fma_f32 v35, -v44, v53, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v43, v51
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v35, v35, v46, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v27, v30, v39, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v30, v35, v42, v115
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v114, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v109
	v_exp_f32_e32 v30, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v19, v113, v27 :: v_dual_mul_f32 v24, v111, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v21
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v108
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v27, v30, v34
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v106
	v_exp_f32_e32 v37, v37
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v28, v40, v35
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v34, v42
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v27, v27, v110
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v30, v37, v36
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v105
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v18, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v34, v34, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v28, v28, v109
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v41
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v35, v18, 1.0
	v_div_scale_f32 v49, null, v34, v34, v106
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v20, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v18, v40, v18 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v107
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v41, v42, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v104
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v51, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v43, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, s0, v109, v28, v109
	v_div_scale_f32 v52, null, v20, v20, v105
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v53, -v49, v51, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v26, v37, v36
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v112, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v39, v38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, vcc_lo, v110, v27, v110
	v_div_scale_f32 v37, null, v30, v30, v108
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v103 :: v_dual_mul_f32 v36, v40, v18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v37
	v_fmac_f32_e32 v51, v53, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v39
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v37, v44, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v39, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v35, v36, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v36, v39, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v35, v36, v40
	v_mul_f32_e32 v40, v43, v42
	v_div_scale_f32 v45, null, v31, v31, v107
	v_div_fmas_f32 v18, v35, v18, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v41, v40, v43
	v_rcp_f32_e32 v39, v45
	v_rcp_f32_e32 v36, v52
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v18, v18, v27, v110
	v_fmac_f32_e32 v40, v48, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v27, -v41, v40, v43
	v_fma_f32 v47, -v45, v39, 1.0
	v_fmac_f32_e32 v44, v46, v44
	v_div_scale_f32 v46, s1, v108, v30, v108
	v_div_scale_f32 v41, s3, v106, v34, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v39, v47, v39 :: v_dual_mul_f32 v50, v46, v44
	v_div_scale_f32 v47, s2, v107, v31, v107
	v_fma_f32 v43, -v52, v36, 1.0
	v_fma_f32 v35, -v37, v50, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v47, v39
	v_fmac_f32_e32 v36, v43, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v35, v44
	v_fma_f32 v35, -v45, v48, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v37, v50, v46
	v_fmac_f32_e32 v48, v35, v39
	v_mul_f32_e32 v35, v41, v51
	v_div_fmas_f32 v27, v27, v42, v40
	v_div_scale_f32 v40, s0, v105, v20, v105
	v_div_scale_f32 v42, null, v26, v26, v104
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v43, -v45, v48, v47
	v_div_fmas_f32 v37, v37, v44, v50
	v_fma_f32 v44, -v49, v35, v41
	v_mul_f32_e32 v45, v40, v36
	v_rcp_f32_e32 v46, v42
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v30, v37, v30, v108
	v_div_fmas_f32 v39, v43, v39, v48
	v_fmac_f32_e32 v35, v44, v51
	v_fma_f32 v43, -v52, v45, v40
	v_div_fixup_f32 v44, v27, v28, v109
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v37, v39, v31, v107
	v_fma_f32 v27, -v49, v35, v41
	v_fma_f32 v28, -v42, v46, 1.0
	v_fmac_f32_e32 v45, v43, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v27, v51, v35
	v_fmac_f32_e32 v46, v28, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v31, -v52, v45, v40
	v_div_scale_f32 v28, s1, v104, v26, v104
	v_div_scale_f32 v35, null, v38, v38, v103
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v14, v31, v36, v45
	v_mul_f32_e32 v31, v28, v46
	v_rcp_f32_e32 v36, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v27, v34, v106
	v_div_fixup_f32 v14, v14, v20, v105
	v_fma_f32 v13, -v42, v31, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v31, v13, v46
	v_fma_f32 v12, -v35, v36, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v13, v40
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v36, v12, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v11, v27
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v28, -v42, v31, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, s0, v103, v38, v103
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v13, v13, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v11, v11, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v28, v28, v46, v31
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v20, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v31, v42, v36
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v26, v28, v26, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v27, -v35, v31, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v12, v20, v12
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v31, v27, v36
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v13, v13, v92
	v_fma_f32 v27, -v35, v31, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v52, s2, v95, v12, v95
	v_div_fmas_f32 v27, v27, v36, v31
	v_div_scale_f32 v31, null, v12, v12, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v39, v39, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v40, v41
	v_div_scale_f32 v45, vcc_lo, v92, v13, v92
	v_rcp_f32_e32 v46, v31
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v27, v27, v38, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v20, null, v11, v11, v93
	v_fma_f32 v28, -v41, v40, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v35, v20
	v_fmac_f32_e32 v40, v28, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v38, v45, v40
	v_fma_f32 v28, -v20, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v41, v38, v45
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v35, v28, v35
	v_fma_f32 v28, -v31, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v49, v40
	v_div_scale_f32 v43, null, v39, v39, v94
	v_div_scale_f32 v48, s1, v94, v39, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v28, v46
	v_rcp_f32_e32 v42, v43
	v_div_scale_f32 v47, s0, v93, v11, v93
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v28, v100, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v41, v38, v45
	v_mul_f32_e32 v53, v52, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v14, v14, v40, v38
	v_fma_f32 v36, -v43, v42, 1.0
	s_mov_b32 vcc_lo, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v38, v96, v44
.Ltmp33:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v44, v87, 7, 0
.Ltmp34:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v13, v14, v13, v92
	v_fmac_f32_e32 v42, v36, v42
	v_mul_f32_e32 v50, v47, v35
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v102, v27
.Ltmp35:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v14, |v24|, |v21|, |v19|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v51, v48, v42
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v101, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v20, v50, v47
	v_fma_f32 v49, -v43, v51, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v26, v35
	v_fma_f32 v26, -v31, v53, v52
	v_fmac_f32_e32 v51, v49, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v50, v47
	v_div_fmas_f32 v20, v20, v35, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v35, v97, v30 :: v_dual_mul_f32 v30, v83, v13
.Ltmp37:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v13, |v17|, |v16|, |v10|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v11, v20, v11, v93
	v_fmac_f32_e32 v53, v26, v46
	v_fma_f32 v26, -v43, v51, v48
	v_div_fmas_f32 v26, v26, v42, v51
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v26, v26, v39, v94
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v39, v91, v18
	v_mul_f32_e32 v20, v89, v26
	v_mul_f32_e32 v26, v88, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v31, v53, v52
.Ltmp39:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v11, |v33|, |v32|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v42, |v30|, |v26|, |v20|
.Ltmp40:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v40, v31, v46, v53
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v31, v99, v34 :: v_dual_mul_f32 v34, v98, v37
.Ltmp41:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v37, |v15|, |v9|, |v7|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v12, v40, v12, v95
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v40, |v39|, |v38|
	v_max3_f32 v41, |v35|, |v34|, |v31|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v90, v12
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v12, |v29|, |v25|, |v22|
	v_max3_f32 v43, |v18|, |v3|, |v4|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max3_f32 v11, v11, |v23|, v12
	v_max3_f32 v12, v14, v37, |v8|
	v_max3_f32 v37, v40, |v36|, v41
	v_max3_f32 v40, v42, v43, |v5|
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v42, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v12, v11, v13, v12
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v11, 0xe0, v0
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v14, |v28|, |v27|, |v6|
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v41, 1, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v13, v37, v14, v40
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v14, v12, s4, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v40, 4, v87
	v_permlanex16_b32 v37, v13, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_or_b32 v43, v11, 2, v40
	v_xor_b32_e32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v12, v12, v14
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v14, v43, v41
	v_lshlrev_b32_e32 v41, 3, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v13, v13, v37
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v37, v44, v40, v42
	v_add3_u32 v14, 0, v42, v14
	v_lshrrev_b32_e32 v40, 2, v11
	ds_store_b64 v37, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[12:13], v14
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v14, v12 :: v_dual_mov_b32 v37, v13
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v37, v37, v37
	v_dual_max_f32 v12, v12, v14 :: v_dual_max_f32 v13, v13, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v14, v12 :: v_dual_mov_b32 v37, v13
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v12, v12, v14
	v_max_f32_e32 v14, v13, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v37, v14
	v_mov_b32_e32 v13, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	v_dual_max_f32 v13, v12, v13 :: v_dual_lshlrev_b32 v12, 3, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v14, v14, v37
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v37, 0, v41, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v40, 0, v12
	ds_store_b64 v37, v[13:14]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[13:14], v40
.Ltmp67:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v13, 0x2b8cbccc, v13 :: v_dual_max_f32 v14, 0x2b8cbccc, v14
	v_div_scale_f32 v37, null, 0x40e00000, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v37
	v_fma_f32 v41, -v37, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v13, 0x40e00000, v13
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v37, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	v_div_scale_f32 v43, null, 0x40e00000, 0x40e00000, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v37, v42, v41
	v_rcp_f32_e32 v41, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v40, v42
	v_div_fixup_f32 v13, v37, 0x40e00000, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v43, v41, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v40, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v41, v37, v41
	v_div_scale_f32 v37, vcc_lo, v14, 0x40e00000, v14
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v40, v13, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v13, v37, v41
	v_fma_f32 v44, -v43, v13, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v13, v44, v41 :: v_dual_and_b32 v42, 0xffff0000, v40
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v45, null, v42, v42, v33
	v_div_scale_f32 v47, null, v42, v42, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v37, -v43, v13, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v44, v45
	v_div_scale_f32 v46, null, v42, v42, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v47
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v13, v37, v41, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v41, vcc_lo, v33, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v43, v46
	v_div_scale_f32 v50, null, v42, v42, v29
	v_fma_f32 v37, -v45, v44, 1.0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v14, v13, 0x40e00000, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v51, s0, v32, v42, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v47, v49, 1.0
	v_fmac_f32_e32 v44, v37, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v37, v14, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v13, -v46, v43, 1.0
	v_fmac_f32_e32 v49, v55, v49
	v_div_scale_f32 v56, null, v42, v42, v22
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v37, v14, v37, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v48, v41, v44
	v_fmac_f32_e32 v43, v13, v43
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v13.l, v40.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v57, null, v42, v42, v24
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v14.l, v37.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 0xffff0000, v37
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v52, -v45, v48, v41
	v_fma_f32 v55, -v50, v53, 1.0
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v13.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v48, v52, v44 :: v_dual_fmac_f32 v53, v55, v53
	v_div_scale_f32 v52, s1, v23, v42, v23
	v_div_scale_f32 v55, null, v42, v42, v25
	v_fma_f32 v41, -v45, v48, v41
	v_div_scale_f32 v45, s2, v29, v42, v29
	v_mul_f32_e32 v54, v51, v43
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v14.h, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v41, v41, v44, v48
	v_rcp_f32_e32 v48, v55
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v40, -v46, v54, v51
	v_div_fixup_f32 v33, v41, v42, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v40, v43
	v_mul_f32_e32 v40, v52, v49
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v44, -v46, v54, v51
	v_fma_f32 v46, -v47, v40, v52
	v_mul_f32_e32 v51, v45, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v46, v49
	v_fma_f32 v46, -v50, v51, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v47, v40, v52
	v_fmac_f32_e32 v51, v46, v53
	v_div_fmas_f32 v43, v44, v43, v54
	v_fma_f32 v54, -v55, v48, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v44, v56
	v_div_fmas_f32 v40, v41, v49, v40
	v_div_fixup_f32 v32, v43, v42, v32
	v_fmac_f32_e32 v48, v54, v48
	v_div_scale_f32 v43, s0, v25, v42, v25
	v_fma_f32 v41, -v50, v51, v45
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v47, null, v42, v42, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v45, v43, v48
	v_div_fmas_f32 v41, v41, v53, v51
	v_fma_f32 v46, -v56, v44, 1.0
	v_div_scale_f32 v50, null, v42, v42, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v55, v45, v43
	v_div_scale_f32 v49, s1, v22, v42, v22
	v_rcp_f32_e32 v54, v50
	v_div_fixup_f32 v23, v40, v42, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v45, v51, v48
	v_div_scale_f32 v51, null, v42, v42, v10
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v29, v41, v42, v29
	v_fma_f32 v43, -v55, v45, v43
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v44, v46, v44
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v41, s2, v17, v42, v17
	v_div_fmas_f32 v43, v43, v48, v45
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v25, v43, v42, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v53, -v47, v46, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v53, -v50, v54, 1.0
	v_fmac_f32_e32 v54, v53, v54
	v_mul_f32_e32 v52, v49, v44
	v_div_scale_f32 v53, s3, v16, v42, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v56, v52, v49
	v_fmac_f32_e32 v52, v40, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v56, v52, v49
	v_fma_f32 v56, -v51, v55, 1.0
	v_mul_f32_e32 v49, v53, v54
	v_fmac_f32_e32 v55, v56, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v44, v45, v44, v52
	v_rcp_f32_e32 v45, v57
	v_div_scale_f32 v52, s0, v10, v42, v10
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v22, v44, v42, v22
	v_mul_f32_e32 v43, v52, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v44, -v57, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v40, v41, v46 :: v_dual_fmac_f32 v45, v44, v45
	v_fma_f32 v48, -v47, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v48, v46
	v_fma_f32 v48, -v50, v49, v53
	v_fma_f32 v41, -v47, v40, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v48, v54
	v_div_scale_f32 v47, null, v42, v42, v21
	v_div_scale_f32 v48, s1, v24, v42, v24
	v_div_fmas_f32 v40, v41, v46, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v50, v49, v53
	v_fma_f32 v46, -v51, v43, v52
	v_div_scale_f32 v50, null, v42, v42, v19
	v_rcp_f32_e32 v44, v47
	v_div_fixup_f32 v17, v40, v42, v17
	v_fmac_f32_e32 v43, v46, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v50
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v41, v41, v54, v49
	v_fma_f32 v40, -v51, v43, v52
	v_mul_f32_e32 v49, v48, v45
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v53, -v47, v44, 1.0
	v_div_fixup_f32 v16, v41, v42, v16
	v_div_fmas_f32 v40, v40, v55, v43
	v_fma_f32 v52, -v50, v46, 1.0
	v_fma_f32 v41, -v57, v49, v48
	v_div_scale_f32 v51, s2, v21, v42, v21
	v_div_scale_f32 v54, null, v42, v42, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v46, v52, v46
	v_div_scale_f32 v52, s0, v19, v42, v19
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v53, null, v42, v42, v15
	v_fmac_f32_e32 v49, v41, v45
	v_div_fixup_f32 v10, v40, v42, v10
	v_rcp_f32_e32 v56, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v53
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v40, -v57, v49, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v40, v45, v49
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v49, -v54, v56, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v53, v43, 1.0
	v_div_fixup_f32 v24, v40, v42, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v49, v56
	v_fmac_f32_e32 v43, v57, v43
	v_mul_f32_e32 v55, v52, v46
	v_mul_f32_e32 v41, v51, v44
	v_div_scale_f32 v49, null, v42, v42, v7
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v45, -v50, v55, v52
	v_fma_f32 v48, -v47, v41, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v55, v45, v46
	v_fmac_f32_e32 v41, v48, v44
	v_div_scale_f32 v48, s1, v15, v42, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v47, v41, v51
	v_mul_f32_e32 v45, v48, v43
	v_div_scale_f32 v47, s3, v9, v42, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v44, v41
	v_fma_f32 v41, -v50, v55, v52
	v_fma_f32 v44, -v53, v45, v48
	v_rcp_f32_e32 v50, v49
	v_div_scale_f32 v52, null, v42, v42, v8
	v_mul_f32_e32 v51, v47, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v44, v43
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v44, v52
	v_div_fmas_f32 v41, v41, v46, v55
	v_fma_f32 v46, -v54, v51, v47
	v_div_fixup_f32 v21, v40, v42, v21
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v55, -v49, v50, 1.0
	v_fma_f32 v40, -v53, v45, v48
	v_div_fixup_f32 v19, v41, v42, v19
	v_fmac_f32_e32 v51, v46, v56
	v_div_scale_f32 v41, s0, v7, v42, v7
	v_fmac_f32_e32 v50, v55, v50
	v_fma_f32 v46, -v52, v44, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v40, v43, v45
	v_fma_f32 v43, -v54, v51, v47
	v_dual_mul_f32 v45, v41, v50 :: v_dual_fmac_f32 v44, v46, v44
	v_div_scale_f32 v46, null, v37, v37, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v47, s1, v8, v42, v8
	v_div_fmas_f32 v43, v43, v56, v51
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v51, -v49, v45, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v47, v44
	v_div_scale_f32 v54, null, v37, v37, v38
	v_div_fixup_f32 v15, v40, v42, v15
	v_fmac_f32_e32 v45, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v52, v53, v47
	v_div_fixup_f32 v9, v43, v42, v9
	v_rcp_f32_e32 v43, v54
	v_fma_f32 v51, -v46, v48, 1.0
	v_fma_f32 v41, -v49, v45, v41
	v_div_scale_f32 v49, null, v37, v37, v36
	v_fmac_f32_e32 v53, v40, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v51, v48
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v51, v49
	v_div_fmas_f32 v41, v41, v50, v45
	v_fma_f32 v45, -v52, v53, v47
	v_div_scale_f32 v40, s2, v39, v37, v39
	v_fma_f32 v55, -v54, v43, 1.0
	v_div_scale_f32 v56, null, v37, v37, v35
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v47, v40, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v49, v51, 1.0
	v_fmac_f32_e32 v43, v55, v43
	v_div_scale_f32 v50, s0, v38, v37, v38
	v_rcp_f32_e32 v58, v56
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, s3, v36, v37, v36
	v_div_fmas_f32 v44, v45, v44, v53
	v_fma_f32 v55, -v46, v47, v40
	v_mul_f32_e32 v57, v50, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v52, v51
	v_div_fixup_f32 v7, v41, v42, v7
	v_div_fixup_f32 v8, v44, v42, v8
	v_div_scale_f32 v44, null, v37, v37, v34
	v_fma_f32 v41, -v49, v53, v52
	v_fmac_f32_e32 v47, v55, v48
	v_fma_f32 v45, -v54, v57, v50
	v_fma_f32 v42, -v56, v58, 1.0
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v53, v41, v51
	v_rcp_f32_e32 v41, v44
	v_fma_f32 v40, -v46, v47, v40
	v_dual_fmac_f32 v57, v45, v43 :: v_dual_fmac_f32 v58, v42, v58
	v_div_scale_f32 v42, s1, v35, v37, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v48, v47
	v_fma_f32 v45, -v54, v57, v50
	v_div_scale_f32 v47, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v46, v42, v58
	v_fma_f32 v48, -v44, v41, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v39, v40, v37, v39
	v_div_fmas_f32 v43, v45, v43, v57
	v_fma_f32 v45, -v49, v53, v52
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v50, -v56, v46, v42
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s0, v34, v37, v34
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v46, v50, v58
	v_div_fmas_f32 v45, v45, v51, v53
	v_mul_f32_e32 v40, v48, v41
	v_div_fixup_f32 v38, v43, v37, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v49, 1.0
	v_fma_f32 v42, -v56, v46, v42
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v50, -v44, v40, v48
	v_div_fixup_f32 v36, v45, v37, v36
	v_div_scale_f32 v45, null, v37, v37, v28
	v_fmac_f32_e32 v49, v43, v49
	v_div_scale_f32 v43, s2, v31, v37, v31
	v_div_fmas_f32 v42, v42, v58, v46
	v_fmac_f32_e32 v40, v50, v41
	v_rcp_f32_e32 v51, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v46, v43, v49
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v35, v42, v37, v35
	v_fma_f32 v42, -v44, v40, v48
	v_div_scale_f32 v50, null, v37, v37, v27
	v_fma_f32 v44, -v47, v46, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v42, v41, v40
	v_div_scale_f32 v41, null, v37, v37, v6
	v_fma_f32 v48, -v45, v51, 1.0
	v_rcp_f32_e32 v52, v50
	v_fmac_f32_e32 v46, v44, v49
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v42, s0, v28, v37, v28
	v_fmac_f32_e32 v51, v48, v51
	v_div_scale_f32 v48, null, v37, v37, v30
	v_div_fixup_f32 v34, v40, v37, v34
	v_fma_f32 v43, -v47, v46, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v50, v52, 1.0
	v_rcp_f32_e32 v54, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v53, -v41, v44, 1.0
	v_mul_f32_e32 v47, v42, v51
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v52, v40, v52
	v_div_scale_f32 v40, s1, v27, v37, v27
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v53, null, v37, v37, v26
	v_div_fmas_f32 v43, v43, v49, v46
	v_fma_f32 v46, -v45, v47, v42
	v_mul_f32_e32 v49, v40, v52
	v_div_scale_f32 v55, s2, v6, v37, v6
	v_fma_f32 v56, -v48, v54, 1.0
	v_rcp_f32_e32 v57, v53
	v_fmac_f32_e32 v47, v46, v51
	v_fma_f32 v46, -v50, v49, v40
	v_mul_f32_e32 v58, v55, v44
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, s3, v30, v37, v30
	v_div_fixup_f32 v31, v43, v37, v31
	v_fma_f32 v42, -v45, v47, v42
	v_fmac_f32_e32 v49, v46, v52
	v_fma_f32 v43, -v41, v58, v55
	v_mul_f32_e32 v45, v56, v54
	v_fma_f32 v46, -v53, v57, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v40, -v50, v49, v40
	v_fmac_f32_e32 v58, v43, v44
	v_fma_f32 v43, -v48, v45, v56
	v_fmac_f32_e32 v57, v46, v57
	v_div_scale_f32 v46, s0, v26, v37, v26
	v_div_fmas_f32 v42, v42, v51, v47
	v_fma_f32 v41, -v41, v58, v55
	v_fmac_f32_e32 v45, v43, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v43, v46, v57
	v_div_scale_f32 v47, null, v37, v37, v20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v42, v37, v28
	v_div_fmas_f32 v40, v40, v52, v49
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v49, v47
	v_div_fmas_f32 v41, v41, v44, v58
	v_fma_f32 v44, -v48, v45, v56
	v_fma_f32 v48, -v53, v43, v46
	v_div_fixup_f32 v27, v40, v37, v27
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v6, v41, v37, v6
	v_div_fmas_f32 v44, v44, v54, v45
	v_fmac_f32_e32 v43, v48, v57
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v42, -v47, v49, 1.0
	v_div_scale_f32 v41, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v53, v43, v46
	v_div_fixup_f32 v30, v44, v37, v30
	v_fmac_f32_e32 v49, v42, v49
	v_div_scale_f32 v42, null, v37, v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v40, v57, v43
	v_div_scale_f32 v45, vcc_lo, v20, v37, v20
	v_rcp_f32_e32 v43, v41
	v_div_scale_f32 v44, null, v37, v37, v4
	v_mul_f32_e32 v50, v45, v49
	v_rcp_f32_e32 v46, v42
	v_div_scale_f32 v51, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v44
	v_fma_f32 v54, -v47, v50, v45
	v_div_fixup_f32 v26, v40, v37, v26
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_fma_f32 v40, -v41, v43, 1.0
	v_rcp_f32_e32 v53, v51
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v50, v54, v49
	v_fma_f32 v52, -v42, v46, 1.0
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, s0, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v50, v45
	v_fma_f32 v55, -v44, v48, 1.0
	v_fmac_f32_e32 v46, v52, v46
	v_div_scale_f32 v52, s1, v3, v37, v3
	v_div_fmas_f32 v45, v45, v49, v50
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_mul_f32_e32 v56, v40, v43
	v_fmac_f32_e32 v48, v55, v48
	v_div_scale_f32 v55, s2, v4, v37, v4
	v_fma_f32 v57, -v51, v53, 1.0
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v58, v52, v46
	v_fma_f32 v54, -v41, v56, v40
	v_mul_f32_e32 v59, v55, v48
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v38, v38
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v53, v57, v53
	v_div_scale_f32 v57, s3, v5, v37, v5
	v_fma_f32 v47, -v42, v58, v52
	v_fmac_f32_e32 v56, v54, v43
	v_fma_f32 v54, -v44, v59, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v60, v57, v53
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v58, v47, v46
	v_fma_f32 v40, -v41, v56, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v41, -v51, v60, v57
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v59, v54, v48
	v_fma_f32 v42, -v42, v58, v52
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v47, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v60, v41, v53
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 15, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v41, -v44, v59, v55
	v_div_fmas_f32 v40, v40, v43, v56
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v43, -v51, v60, v57
	v_div_fmas_f32 v42, v42, v46, v58
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v41, v41, v48, v59
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v3, v42, v37, v3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v41, v37, v4
	v_div_fmas_f32 v43, v43, v53, v60
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v3, v3
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v18, v40, v37, v18
	v_div_fixup_f32 v5, v43, v37, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v44, v28
	v_cvt_i32_f32_e32 v51, v4
	v_and_b32_e32 v4, 15, v32
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v28, 10, v0
	v_lshlrev_b32_e32 v32, 6, v0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v20, v45, v37, v20
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v37, v39
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v45, v27
	v_cvt_i32_f32_e32 v46, v6
	v_cvt_i32_f32_e32 v50, v3
	v_and_b32_e32 v3, 15, v33
	v_and_b32_e32 v6, 15, v29
	v_and_b32_e32 v27, 15, v34
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v29, 0x60, v0
	v_and_b32_e32 v33, 0x1800, v28
	v_and_b32_e32 v34, 0x400, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v20, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v39, v10
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v40, v15
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v35, v81, v29
	v_add3_u32 v33, 0, v33, v34
	v_and_or_b32 v1, 0x1b00, v32, v1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v49, v18
	v_cvt_i32_f32_e32 v52, v5
	v_and_b32_e32 v5, 15, v23
	v_and_b32_e32 v15, 15, v39
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v40
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v39, v33, v2, v35
	v_xad_u32 v40, v1, v85, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v41, v9
	v_cvt_i32_f32_e32 v42, v7
	v_cvt_i32_f32_e32 v43, v8
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v48, v20
	v_and_b32_e32 v9, 15, v17
	v_and_b32_e32 v10, 15, v16
	v_and_b32_e32 v16, 15, v24
	v_and_b32_e32 v17, 15, v21
	v_and_b32_e32 v7, 15, v25
	v_and_b32_e32 v8, 15, v22
	v_and_b32_e32 v23, 15, v37
	v_and_b32_e32 v24, 15, v38
	v_and_b32_e32 v25, 15, v36
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v39, v[3:6]
	ds_store_b128 v39, v[15:18] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v40
	ds_load_b128 v[15:18], v40 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v20, 15, v41
	v_and_b32_e32 v21, 15, v42
	v_and_b32_e32 v22, 15, v43
	v_and_b32_e32 v28, 15, v31
	v_and_b32_e32 v29, 15, v46
	v_and_b32_e32 v30, 15, v30
	v_and_b32_e32 v31, 15, v47
	v_and_b32_e32 v32, 15, v48
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[23:26]
	ds_store_b128 v39, v[29:32] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v40
	ds_load_b128 v[31:34], v40 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[7:10]
	ds_store_b128 v39, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v40
	ds_load_b128 v[19:22], v40 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v29, 15, v44
	v_and_b32_e32 v30, 15, v45
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v9, v15, 4, v1
	v_lshl_or_b32 v2, v16, 4, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v35, 15, v49
	v_and_b32_e32 v36, 15, v50
	v_and_b32_e32 v37, 15, v51
	v_and_b32_e32 v38, 15, v52
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[27:30]
	ds_store_b128 v39, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v40
	ds_load_b128 v[35:38], v40 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v1, v18, 4, v4
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v2.l, 8, v2.l
	v_and_b16 v2.h, 0xff, v9.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v3, v17, 4, v3
	v_lshl_or_b32 v4, v20, 4, v6
	v_lshl_or_b32 v6, v21, 4, v7
	v_lshl_or_b32 v5, v19, 4, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v22, 4, v8
	v_lshl_or_b32 v16, v33, 4, v25
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v3.h, 0xff, v6.l
	v_or_b16 v6.l, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v2, 16, v0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v34, 4, v26
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v4.l, 8, v4.l
	v_and_b16 v4.h, 0xff, v5.l
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v8, s0, v84
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v7.l
	v_lshlrev_b16 v5.l, 8, v17.l
	v_and_b16 v5.h, 0xff, v16.l
	v_or_b16 v7.l, v4.h, v4.l
	.loc	1 87 14 is_stmt 1               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, v0, 31, s31
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v2, v13, v14, vcc_lo
	.loc	1 85 21 is_stmt 1               ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s30, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s31, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v10, v31, 4, v23
	v_lshl_or_b32 v15, v32, 4, v24
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v19, v37, 4, v29
	v_lshl_or_b32 v20, v38, 4, v30
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v7.h, v3.h, v3.l
	v_or_b16 v3.h, v5.h, v5.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v5, v4, s5
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_bfe_i32 v4, v2, 0, 16
	.loc	1 86 14 is_stmt 1               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s2, s2, s1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v18, v36, 4, v28
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v8, s2, v12, v8
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v12, v35, 4, v27
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v6.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v15.l
	v_and_b16 v0.l, 0xff, v10.l
	v_lshlrev_b16 v0.h, 8, v20.l
	v_and_b16 v1.h, 0xff, v19.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_permlanex16_b32 v9, v4, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v2.l, 8, v18.l
	v_and_b16 v2.h, 0xff, v12.l
	v_or_b16 v3.l, v0.l, v1.l
	v_or_b16 v4.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_lshl_u32 v0, v5, s30, 1
	v_cndmask_b32_e32 v1, v9, v13, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v21, s0, 4, v8
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v4.l, v2.h, v2.l
	s_and_b32 s1, s17, 0xffff
	s_mov_b32 s3, 0x31027000
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_mov_b32 s2, 0x7ffffffe
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 s0, s16
	s_clause 0x1
	buffer_store_b64 v[6:7], v8, s[0:3], 0 offen
	buffer_store_b64 v[3:4], v21, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s1, s19, 0xffff
	s_mov_b32 s0, s18
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp68:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp69:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 250
		.amdhsa_next_free_sgpr 37
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 250
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21760
; TotalNumSgprs: 39
; NumVgprs: 250
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 250
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     250
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
