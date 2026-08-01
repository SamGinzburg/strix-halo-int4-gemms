	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b128 s[24:27], s[0:1], 0x20
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s9, s2
	s_load_b32 s35, s[0:1], 0x38
	v_dual_mov_b32 v148, 0 :: v_dual_and_b32 v141, 15, v0
	v_mov_b32_e32 v149, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v172, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s7, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s10, s6, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s12, s10, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s12, s12, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s10, s10, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s10, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v160, 0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v162, 0
	s_cvt_f32_u32 s8, s5
	s_sub_i32 s11, 0, s5
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v164, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v176, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s8, v1
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	s_mul_f32 s8, s8, 0x4f7ffffe
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s8, s8
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v205, 0
	s_mul_i32 s11, s11, s8
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v195, 0
	s_mul_hi_u32 s11, s8, s11
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v145, 0
	s_add_i32 s8, s8, s11
	s_xor_b32 s11, s2, s4
	s_mul_hi_u32 s8, s9, s8
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s8, s5
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v159, 0
	s_sub_i32 s9, s9, s12
	s_add_i32 s12, s8, 1
	s_sub_i32 s13, s9, s5
	s_cmp_ge_u32 s9, s5
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v161, 0
	s_cselect_b32 s8, s12, s8
	s_cselect_b32 s9, s13, s9
	s_add_i32 s12, s8, 1
	s_cmp_ge_u32 s9, s5
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v165, 0
	s_cselect_b32 s5, s12, s8
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v175, 0
	s_xor_b32 s5, s5, s11
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v177, 0
	s_sub_i32 s5, s5, s11
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v181, 0
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s8, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s9, s10, s8
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s9, s9, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s10, s9
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	s_cvt_f32_u32 s11, s10
	s_sub_i32 s12, 0, s10
	v_dual_mov_b32 v193, 0 :: v_dual_and_b32 v142, 0xf0, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s11
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v140, 4, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v137, 4, v141
	v_mov_b32_e32 v197, 0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	v_readfirstlane_b32 s11, v1
	s_mul_f32 s11, s11, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s11, s11
	s_mul_i32 s12, s12, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s11, s12
	s_add_i32 s11, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s11
	s_xor_b32 s11, s2, s9
	s_mul_i32 s12, s4, s10
	s_ashr_i32 s11, s11, 31
	s_sub_i32 s5, s5, s12
	s_add_i32 s12, s4, 1
	s_sub_i32 s13, s5, s10
	s_cmp_ge_u32 s5, s10
	s_cselect_b32 s4, s12, s4
	s_cselect_b32 s5, s13, s5
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s5, s10
	s_cselect_b32 s4, s12, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s11
	s_sub_i32 s33, s4, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s33, s9
	s_sub_i32 s4, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s35, 63
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s4, s4, s8
	s_mov_b32 s8, 0
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s4, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s2, 64
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v207, 3, v0
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v1, 3, v0
	v_mul_lo_u32 v2, s6, v207
	s_load_b256 s[16:23], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s35, 31
	v_dual_mov_b32 v193, 0 :: v_dual_lshlrev_b32 v8, 1, v0
.Ltmp15:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 56, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s4, s1, 31
	v_mad_u64_u32 v[138:139], null, s7, v140, v[137:138]
	s_lshr_b32 s4, s4, 27
	v_add3_u32 v208, v2, v3, s34
	v_lshrrev_b32_e32 v2, 1, v0
	v_or_b32_e32 v3, s34, v141
	s_add_i32 s1, s1, s4
	v_mov_b32_e32 v190, 0
	s_ashr_i32 s38, s1, 5
	v_and_or_b32 v2, 0x70, v2, v141
	v_or_b32_e32 v6, 16, v3
	v_or_b32_e32 v7, 32, v3
	v_mul_lo_u32 v213, v3, s38
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v210, 0, v1
	v_add_nc_u32_e32 v212, 0, v2
	v_or_b32_e32 v2, 48, v3
	v_lshrrev_b32_e32 v3, 6, v0
	v_mul_lo_u32 v214, v6, s38
	v_mul_lo_u32 v215, v7, s38
	v_lshlrev_b32_e32 v6, 5, v0
	v_mul_lo_u32 v216, v2, s38
	v_lshlrev_b32_e32 v2, 2, v0
	v_and_b32_e32 v3, 2, v3
	v_lshlrev_b32_e32 v7, 1, v142
	v_dual_mov_b32 v191, 0 :: v_dual_and_b32 v6, 32, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 0x1c0, v2
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v217, 0, v7
	v_or_b32_e32 v4, 0x3f0, v0
	v_or_b32_e32 v5, 0x7f0, v0
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v9, 28, v8
	v_add3_u32 v10, v3, v2, v6
	v_add3_u32 v11, v217, v7, v6
.Ltmp17:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp18:
	.loc	1 356 14 is_stmt 1              ; generate_amdgcn.py:356:14
	s_lshl_b32 s36, s33, 8
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 26
	v_dual_mov_b32 v181, 0 :: v_dual_add_nc_u32 v220, v210, v1
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v221, 0, v4
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v222, 0, v5
	v_mov_b32_e32 v1, s8
.Ltmp20:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v206, 16, v140
	v_lshl_add_u32 v209, s7, 4, v138
	v_dual_mov_b32 v6, s13 :: v_dual_add_nc_u32 v211, 0, v141
	v_or_b32_e32 v218, s36, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_add_u32 v219, s6, 5, v208
	v_dual_mov_b32 v2, s9 :: v_dual_mov_b32 v3, s10
	v_dual_mov_b32 v4, s11 :: v_dual_mov_b32 v5, s12
	v_dual_mov_b32 v7, s14 :: v_dual_mov_b32 v8, s15
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v223, v10, v9
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v224, v11, v9
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v148, 0
	v_mov_b32_e32 v151, 0
	v_mov_b32_e32 v149, 0
	s_mov_b32 s31, 0x31027000
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s2, s0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s19, s19, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_ashr_i32 s37, s2, 6
	s_lshl_b32 s39, s7, 5
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s12, s18
	s_mov_b32 s13, s19
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	s_mov_b32 s16, s20
	s_mov_b32 s17, s21
	s_mov_b32 s18, s30
	s_mov_b32 s19, s31
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
.Ltmp22:
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s0, s8, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s10, s0, 6
	v_or_b32_e32 v9, s10, v207
	v_or_b32_e32 v10, s10, v140
	s_or_b32 s9, s10, 32
	v_or_b32_e32 v11, s10, v206
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s1, s10, s7
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s0, s10, s6
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v13, s9, v207
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s1, s1, s36
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v12, s0, v208
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v14, s9, v140
	v_or_b32_e32 v15, s9, v206
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v9
	v_add_nc_u32_e32 v16, s0, v219
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v17, s1, v138
	s_add_i32 s2, s1, s39
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s35, v10
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v18, s1, v209
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s1, s35, v11
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v9, s2, v138
	v_add_nc_u32_e32 v10, s2, v209
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e64 s2, s35, v13
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s4, s35, v14
	v_cmp_gt_i32_e64 s5, s35, v15
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v12, 0x80000000, v17, s0
	v_cndmask_b32_e64 v13, 0x80000000, v18, s1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e64 v19, 0x80000000, v16, s2
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v20, 0x80000000, v9, s4
	v_cndmask_b32_e64 v23, 0x80000000, v10, s5
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[17:18], v11, s[28:31], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v12, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v13, s[12:15], 0 offen
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[21:22], v19, s[28:31], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s10, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s0, s7
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s38
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(3)
	ds_store_b64 v210, v[17:18] offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v220, v[9:12]
	s_clause 0x1
	buffer_load_b128 v[17:20], v20, s[12:15], 0 offen
	buffer_load_b128 v[9:12], v23, s[12:15], 0 offen
	s_waitcnt vmcnt(3)
	ds_store_b128 v220, v[13:16] offset:4096
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v210, v[21:22] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v220, v[17:20] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v220, v[9:12] offset:12288
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v211 offset:17216
	ds_load_u8 v10, v211 offset:17152
	ds_load_u8 v11, v211 offset:17344
	ds_load_u8 v12, v211 offset:17280
	ds_load_u8 v13, v211 offset:16960
	ds_load_u8 v14, v211 offset:16896
	ds_load_u8 v15, v211 offset:17088
	ds_load_u8 v16, v211 offset:17024
	ds_load_u8 v17, v211 offset:16704
	ds_load_u8 v18, v211 offset:16640
	ds_load_u8 v19, v211 offset:16832
	ds_load_u8 v20, v211 offset:16768
	ds_load_u8 v21, v211 offset:16448
	ds_load_u8 v22, v211 offset:16384
	ds_load_u8 v23, v211 offset:16576
	ds_load_u8 v25, v212 offset:3328
	ds_load_u8 v24, v211 offset:16512
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	ds_load_u8 v14, v212 offset:3584
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v13, v16, v15, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v18, v17, 0xc0c0004
	ds_load_u8 v16, v212 offset:2304
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	v_lshl_or_b32 v11, v13, 16, v11
	ds_load_u8 v9, v212 offset:3072
	ds_load_u8 v13, v212 offset:3840
	ds_load_u8 v19, v212 offset:2560
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v22, v21, 0xc0c0004
	v_lshl_or_b32 v10, v15, 16, v10
	ds_load_u8 v15, v212 offset:2048
	ds_load_u8 v17, v212 offset:2816
	ds_load_u8 v21, v212 offset:1280
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v22, v9, v25, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v212 offset:1792
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	ds_load_u8 v16, v212 offset:1536
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v212 offset:256
	v_lshl_or_b32 v68, v13, 16, v22
	v_lshl_or_b32 v67, v17, 16, v15
	ds_load_u8 v13, v212
	ds_load_u8 v15, v212 offset:768
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v211 offset:18240
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v13, v19, 0xc0c0004
	ds_load_u8 v19, v211 offset:18304
	v_perm_b32 v20, v24, v23, 0xc0c0004
	ds_load_u8 v23, v212 offset:1024
	v_lshl_or_b32 v9, v20, 16, v18
	ds_load_u8 v18, v212 offset:512
	ds_load_u8 v20, v211 offset:17728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v23, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v14, 16, v17
	ds_load_u8 v14, v211 offset:18176
	ds_load_u8 v17, v211 offset:18368
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v15, v18, v15, 0xc0c0004
	ds_load_u8 v18, v211 offset:17984
	v_lshl_or_b32 v65, v15, 16, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v14, v16, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v211 offset:18112
	ds_load_u8 v16, v211 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v16, v18, 0xc0c0004
	ds_load_u8 v16, v211 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v16, v19, 0xc0c0004
	v_lshl_or_b32 v16, v17, 16, v14
	ds_load_u8 v13, v211 offset:17664
	ds_load_u8 v14, v211 offset:17856
	ds_load_u8 v17, v211 offset:17792
	v_lshl_or_b32 v15, v19, 16, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	ds_load_u8 v17, v211 offset:17472
	v_perm_b32 v13, v13, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v13, v211 offset:17408
	ds_load_u8 v18, v211 offset:17600
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v13, v17, 0xc0c0004
	ds_load_u8 v17, v211 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:7424
	v_lshl_or_b32 v13, v17, 16, v13
	ds_load_u8 v17, v212 offset:7168
	ds_load_u8 v19, v212 offset:7936
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	ds_load_u8 v18, v212 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	ds_load_u8 v19, v212 offset:6400
	ds_load_u8 v20, v212 offset:6144
	v_lshl_or_b32 v72, v18, 16, v17
	ds_load_u8 v17, v212 offset:5376
	ds_load_u8 v18, v212 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v212 offset:6912
	ds_load_u8 v21, v212 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v20, 16, v19
	ds_load_u8 v18, v212 offset:5888
	ds_load_u8 v19, v212 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v70, v18, 16, v17
	ds_load_u8 v17, v212 offset:4352
	ds_load_u8 v18, v212 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:4864
	ds_load_u8 v19, v212 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v18, 16, v17
	ds_load_u8 v17, v212 offset:3456
	ds_load_u8 v18, v212 offset:3200
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[13:16], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v251, v28
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v28, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:3968
	ds_load_u8 v19, v212 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v212 offset:2432
	ds_load_u8 v20, v212 offset:2176
	v_lshl_or_b32 v76, v18, 16, v17
	ds_load_u8 v17, v212 offset:1408
	ds_load_u8 v18, v212 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v212 offset:2944
	ds_load_u8 v21, v212 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v20, 16, v19
	ds_load_u8 v18, v212 offset:1920
	ds_load_u8 v19, v212 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v74, v18, 16, v17
	ds_load_u8 v17, v212 offset:384
	ds_load_u8 v18, v212 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:896
	ds_load_u8 v19, v212 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v18, 16, v17
	ds_load_u8 v17, v212 offset:7552
	ds_load_u8 v18, v212 offset:7296
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[9:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:17232
	ds_load_u8 v10, v211 offset:17168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:8064
	ds_load_u8 v19, v212 offset:7808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:17360
	ds_load_u8 v11, v211 offset:17296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v212 offset:6528
	ds_load_u8 v20, v212 offset:6272
	v_lshl_or_b32 v80, v18, 16, v17
	ds_load_u8 v17, v212 offset:5504
	ds_load_u8 v18, v212 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:16976
	ds_load_u8 v12, v211 offset:16912
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v212 offset:7040
	ds_load_u8 v21, v212 offset:6784
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v20, 16, v19
	ds_load_u8 v18, v212 offset:6016
	ds_load_u8 v19, v212 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v78, v18, 16, v17
	ds_load_u8 v17, v212 offset:4480
	ds_load_u8 v18, v212 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v212 offset:4992
	ds_load_u8 v19, v212 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[13:16], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v12, v211 offset:17104
	ds_load_u8 v13, v211 offset:17040
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v211 offset:16720
	ds_load_u8 v10, v211 offset:16656
	v_lshl_or_b32 v11, v13, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:16848
	ds_load_u8 v13, v211 offset:16784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:16400
	ds_load_u8 v13, v211 offset:16464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v13, 0xc0c0004
	ds_load_u8 v13, v211 offset:16592
	ds_load_u8 v14, v211 offset:16528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v13, 16, v9
	ds_load_u8 v13, v211 offset:18256
	ds_load_u8 v14, v211 offset:18192
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v211 offset:18384
	ds_load_u8 v15, v211 offset:18320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v211 offset:18000
	ds_load_u8 v16, v211 offset:17936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v211 offset:18128
	ds_load_u8 v17, v211 offset:18064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	ds_load_u8 v13, v211 offset:17744
	ds_load_u8 v14, v211 offset:17680
	v_lshl_or_b32 v15, v17, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v211 offset:17872
	ds_load_u8 v17, v211 offset:17808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v13, v211 offset:17488
	ds_load_u8 v17, v211 offset:17424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v17, v13, 0xc0c0004
	ds_load_u8 v17, v211 offset:17616
	ds_load_u8 v18, v211 offset:17552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v17, 16, v13
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[9:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:17248
	ds_load_u8 v10, v211 offset:17184
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[13:16], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[13:16], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v252, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v250, v19
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:17376
	ds_load_u8 v11, v211 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:16992
	ds_load_u8 v12, v211 offset:16928
	v_lshl_or_b32 v36, v10, 16, v9
	ds_load_u8 v9, v211 offset:16736
	ds_load_u8 v10, v211 offset:16672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:17120
	ds_load_u8 v13, v211 offset:17056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v12, 16, v11
	ds_load_u8 v10, v211 offset:16864
	ds_load_u8 v11, v211 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v34, v10, 16, v9
	ds_load_u8 v9, v211 offset:16416
	ds_load_u8 v10, v211 offset:16480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	ds_load_u8 v10, v211 offset:16608
	ds_load_u8 v11, v211 offset:16544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v10, 16, v9
	ds_load_u8 v9, v211 offset:18272
	ds_load_u8 v10, v211 offset:18208
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:18400
	ds_load_u8 v11, v211 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:18016
	ds_load_u8 v12, v211 offset:17952
	v_lshl_or_b32 v40, v10, 16, v9
	ds_load_u8 v9, v211 offset:17760
	ds_load_u8 v10, v211 offset:17696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:18144
	ds_load_u8 v13, v211 offset:18080
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v12, 16, v11
	ds_load_u8 v10, v211 offset:17888
	ds_load_u8 v11, v211 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v38, v10, 16, v9
	ds_load_u8 v9, v211 offset:17504
	ds_load_u8 v10, v211 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:17632
	ds_load_u8 v11, v211 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[33:36], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v33, v211 offset:17008
	ds_load_u8 v34, v211 offset:16944
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[37:40], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v253, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v249, v10
	v_cvt_f32_i32_e32 v248, v9
	v_cvt_f32_i32_e32 v254, v11
	v_cvt_f32_i32_e32 v247, v16
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v59, v59
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v211 offset:17136
	ds_load_u8 v35, v211 offset:17072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v211 offset:16752
	ds_load_u8 v36, v211 offset:16688
	v_lshl_or_b32 v83, v34, 16, v33
	ds_load_u8 v33, v211 offset:16432
	ds_load_u8 v34, v211 offset:16496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v211 offset:16880
	ds_load_u8 v37, v211 offset:16816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v36, 16, v35
	ds_load_u8 v34, v211 offset:16624
	ds_load_u8 v35, v211 offset:16560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v81, v34, 16, v33
	ds_load_u8 v33, v211 offset:17264
	ds_load_u8 v34, v211 offset:17200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v221 offset:16384
	ds_load_u8 v35, v211 offset:17328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v34, 16, v33
	ds_load_u8 v33, v211 offset:18032
	ds_load_u8 v34, v211 offset:17968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v211 offset:18160
	ds_load_u8 v35, v211 offset:18096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v211 offset:17776
	ds_load_u8 v36, v211 offset:17712
	v_lshl_or_b32 v87, v34, 16, v33
	ds_load_u8 v33, v211 offset:17520
	ds_load_u8 v34, v211 offset:17456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v211 offset:17904
	ds_load_u8 v37, v211 offset:17840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v86, v36, 16, v35
	ds_load_u8 v34, v211 offset:17648
	ds_load_u8 v35, v211 offset:17584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v85, v34, 16, v33
	ds_load_u8 v33, v211 offset:18288
	ds_load_u8 v34, v211 offset:18224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v222 offset:16384
	ds_load_u8 v35, v211 offset:18352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v88, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[85:88], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[73:76], v[81:84], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v73, v218, s1, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v76, v216, s0, 1
	v_add_lshl_u32 v74, v214, s0, 1
	v_add_lshl_u32 v75, v215, s0, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[65:72], v[77:80], v[85:88], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v73, v73, s[20:23], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v227, v65
	v_cvt_f32_i32_e32 v226, v70
	v_cvt_f32_i32_e32 v70, v71
	v_cvt_f32_i32_e32 v65, v72
	v_cvt_f32_i32_e32 v72, v41
	v_cvt_f32_i32_e32 v71, v46
	v_cvt_f32_i32_e32 v46, v48
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v48, v55
	v_cvt_f32_i32_e32 v42, v56
	v_cvt_f32_i32_e32 v55, v63
	v_cvt_f32_i32_e32 v56, v58
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v223, v73 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v73, v213, s0, 1
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s9, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s38
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s0, s7
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x3
	buffer_load_u16 v230, v73, s[16:19], 0 offen
	buffer_load_u16 v229, v74, s[16:19], 0 offen
	buffer_load_u16 v228, v75, s[16:19], 0 offen
	buffer_load_u16 v225, v76, s[16:19], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v73, v211 offset:19264
	ds_load_u8 v74, v211 offset:19200
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[9:12], v217 offset:20480
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s8, s37
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v211 offset:19392
	ds_load_u8 v75, v211 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v211 offset:19008
	ds_load_u8 v76, v211 offset:18944
	v_lshl_or_b32 v92, v74, 16, v73
	ds_load_u8 v73, v211 offset:18752
	ds_load_u8 v74, v211 offset:18688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v211 offset:19136
	ds_load_u8 v77, v211 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v76, 16, v75
	ds_load_u8 v74, v211 offset:18880
	ds_load_u8 v75, v211 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v90, v74, 16, v73
	ds_load_u8 v73, v211 offset:18496
	ds_load_u8 v74, v211 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v211 offset:18624
	ds_load_u8 v75, v211 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v74, 16, v73
	ds_load_u8 v73, v212 offset:11520
	ds_load_u8 v74, v212 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v212 offset:12032
	ds_load_u8 v75, v212 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v212 offset:10496
	ds_load_u8 v76, v212 offset:10240
	v_lshl_or_b32 v132, v74, 16, v73
	ds_load_u8 v73, v212 offset:9472
	ds_load_u8 v74, v212 offset:9216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v212 offset:11008
	ds_load_u8 v77, v212 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v131, v76, 16, v75
	ds_load_u8 v74, v212 offset:9984
	ds_load_u8 v75, v212 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v130, v74, 16, v73
	ds_load_u8 v73, v212 offset:8448
	ds_load_u8 v74, v212 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v212 offset:8960
	ds_load_u8 v75, v212 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v74, 16, v73
	ds_load_u8 v73, v211 offset:20288
	ds_load_u8 v74, v211 offset:20224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v211 offset:20416
	ds_load_u8 v75, v211 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v211 offset:20032
	ds_load_u8 v76, v211 offset:19968
	v_lshl_or_b32 v96, v74, 16, v73
	ds_load_u8 v73, v211 offset:19776
	ds_load_u8 v74, v211 offset:19712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v211 offset:20160
	ds_load_u8 v77, v211 offset:20096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v76, 16, v75
	ds_load_u8 v74, v211 offset:19904
	ds_load_u8 v75, v211 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v94, v74, 16, v73
	ds_load_u8 v73, v211 offset:19520
	ds_load_u8 v74, v211 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v211 offset:19648
	ds_load_u8 v75, v211 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v74, 16, v73
	ds_load_u8 v73, v212 offset:15616
	ds_load_u8 v74, v212 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v212 offset:16128
	ds_load_u8 v75, v212 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v212 offset:14592
	ds_load_u8 v76, v212 offset:14336
	v_lshl_or_b32 v136, v74, 16, v73
	ds_load_u8 v73, v212 offset:13568
	ds_load_u8 v74, v212 offset:13312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v212 offset:15104
	ds_load_u8 v77, v212 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v76, 16, v75
	ds_load_u8 v74, v212 offset:14080
	ds_load_u8 v75, v212 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v134, v74, 16, v73
	ds_load_u8 v73, v212 offset:12544
	ds_load_u8 v74, v212 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v212 offset:13056
	ds_load_u8 v75, v212 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v74, 16, v73
	ds_load_u8 v73, v212 offset:11648
	ds_load_u8 v74, v212 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v212 offset:12160
	ds_load_u8 v75, v212 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v212 offset:10624
	ds_load_u8 v76, v212 offset:10368
	v_lshl_or_b32 v234, v74, 16, v73
	ds_load_u8 v73, v212 offset:9600
	ds_load_u8 v74, v212 offset:9344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v212 offset:11136
	ds_load_u8 v77, v212 offset:10880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v233, v76, 16, v75
	ds_load_u8 v74, v212 offset:10112
	ds_load_u8 v75, v212 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v232, v74, 16, v73
	ds_load_u8 v73, v212 offset:8576
	ds_load_u8 v74, v212 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v212 offset:9088
	ds_load_u8 v75, v212 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v231, v74, 16, v73
	ds_load_u8 v73, v212 offset:15744
	ds_load_u8 v74, v212 offset:15488
	v_wmma_i32_16x16x16_iu8 v[81:88], v[231:234], v[89:92], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v212 offset:16256
	ds_load_u8 v75, v212 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v212 offset:14720
	ds_load_u8 v76, v212 offset:14464
	v_lshl_or_b32 v238, v74, 16, v73
	ds_load_u8 v73, v212 offset:13696
	ds_load_u8 v74, v212 offset:13440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v212 offset:15232
	ds_load_u8 v77, v212 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v237, v76, 16, v75
	ds_load_u8 v74, v212 offset:14208
	ds_load_u8 v75, v212 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v236, v74, 16, v73
	ds_load_u8 v73, v212 offset:12672
	ds_load_u8 v74, v212 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v212 offset:13184
	ds_load_u8 v75, v212 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v235, v74, 16, v73
	v_wmma_i32_16x16x16_iu8 v[73:80], v[129:132], v[89:92], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v89, v211 offset:19280
	ds_load_u8 v90, v211 offset:19216
	v_wmma_i32_16x16x16_iu8 v[81:88], v[235:238], v[93:96], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[133:136], v[93:96], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v32, v86
	v_cvt_f32_i32_e32 v86, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v79, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v211 offset:19408
	ds_load_u8 v91, v211 offset:19344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v211 offset:19024
	ds_load_u8 v92, v211 offset:18960
	v_lshl_or_b32 v108, v90, 16, v89
	ds_load_u8 v89, v211 offset:18768
	ds_load_u8 v90, v211 offset:18704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v211 offset:19152
	ds_load_u8 v93, v211 offset:19088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v107, v92, 16, v91
	ds_load_u8 v90, v211 offset:18896
	ds_load_u8 v91, v211 offset:18832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_lshl_or_b32 v106, v90, 16, v89
	ds_load_u8 v89, v211 offset:18448
	ds_load_u8 v90, v211 offset:18512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v89, v90, 0xc0c0004
	ds_load_u8 v90, v211 offset:18640
	ds_load_u8 v91, v211 offset:18576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v90, 16, v89
	ds_load_u8 v89, v211 offset:20304
	ds_load_u8 v90, v211 offset:20240
	v_wmma_i32_16x16x16_iu8 v[97:104], v[231:234], v[105:108], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v211 offset:20432
	ds_load_u8 v91, v211 offset:20368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v211 offset:20048
	ds_load_u8 v92, v211 offset:19984
	v_lshl_or_b32 v112, v90, 16, v89
	ds_load_u8 v89, v211 offset:19792
	ds_load_u8 v90, v211 offset:19728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v211 offset:20176
	ds_load_u8 v93, v211 offset:20112
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v111, v92, 16, v91
	ds_load_u8 v90, v211 offset:19920
	ds_load_u8 v91, v211 offset:19856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_lshl_or_b32 v110, v90, 16, v89
	ds_load_u8 v89, v211 offset:19536
	ds_load_u8 v90, v211 offset:19472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v211 offset:19664
	ds_load_u8 v91, v211 offset:19600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v90, 16, v89
	v_wmma_i32_16x16x16_iu8 v[89:96], v[129:132], v[105:108], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v105, v211 offset:19296
	ds_load_u8 v106, v211 offset:19232
	v_wmma_i32_16x16x16_iu8 v[97:104], v[235:238], v[109:112], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[133:136], v[109:112], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v58, v97
	v_cvt_f32_i32_e32 v63, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v97, v101
	v_cvt_f32_i32_e32 v103, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v211 offset:19424
	ds_load_u8 v107, v211 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v211 offset:19040
	ds_load_u8 v108, v211 offset:18976
	v_lshl_or_b32 v124, v106, 16, v105
	ds_load_u8 v105, v211 offset:18784
	ds_load_u8 v106, v211 offset:18720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v211 offset:19168
	ds_load_u8 v109, v211 offset:19104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v123, v108, 16, v107
	ds_load_u8 v106, v211 offset:18912
	ds_load_u8 v107, v211 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_lshl_or_b32 v122, v106, 16, v105
	ds_load_u8 v105, v211 offset:18464
	ds_load_u8 v106, v211 offset:18528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v105, v106, 0xc0c0004
	ds_load_u8 v106, v211 offset:18656
	ds_load_u8 v107, v211 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v106, 16, v105
	ds_load_u8 v105, v211 offset:20320
	ds_load_u8 v106, v211 offset:20256
	v_wmma_i32_16x16x16_iu8 v[113:120], v[231:234], v[121:124], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v211 offset:20448
	ds_load_u8 v107, v211 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v211 offset:20064
	ds_load_u8 v108, v211 offset:20000
	v_lshl_or_b32 v128, v106, 16, v105
	ds_load_u8 v105, v211 offset:19808
	ds_load_u8 v106, v211 offset:19744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v211 offset:20192
	ds_load_u8 v109, v211 offset:20128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v108, 16, v107
	ds_load_u8 v106, v211 offset:19936
	ds_load_u8 v107, v211 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_lshl_or_b32 v126, v106, 16, v105
	ds_load_u8 v105, v211 offset:19552
	ds_load_u8 v106, v211 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v211 offset:19680
	ds_load_u8 v107, v211 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v106, 16, v105
	v_wmma_i32_16x16x16_iu8 v[105:112], v[129:132], v[121:124], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v121, v211 offset:19056
	ds_load_u8 v122, v211 offset:18992
	v_wmma_i32_16x16x16_iu8 v[113:120], v[235:238], v[125:128], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[133:136], v[125:128], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v84, v120
	v_cvt_f32_i32_e32 v120, v76
	v_cvt_f32_i32_e32 v76, v80
	v_cvt_f32_i32_e32 v80, v95
	v_cvt_f32_i32_e32 v95, v106
	v_cvt_f32_i32_e32 v78, v112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v211 offset:19184
	ds_load_u8 v123, v211 offset:19120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v211 offset:18800
	ds_load_u8 v124, v211 offset:18736
	v_lshl_or_b32 v241, v122, 16, v121
	ds_load_u8 v121, v211 offset:18480
	ds_load_u8 v122, v211 offset:18544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v211 offset:18928
	ds_load_u8 v125, v211 offset:18864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v121, v121, v122, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v240, v124, 16, v123
	ds_load_u8 v122, v211 offset:18672
	ds_load_u8 v123, v211 offset:18608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_lshl_or_b32 v239, v122, 16, v121
	ds_load_u8 v121, v211 offset:19312
	ds_load_u8 v122, v211 offset:19248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v221 offset:18432
	ds_load_u8 v123, v211 offset:19376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v242, v122, 16, v121
	ds_load_u8 v121, v211 offset:20080
	ds_load_u8 v122, v211 offset:20016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v211 offset:20208
	ds_load_u8 v123, v211 offset:20144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v211 offset:19824
	ds_load_u8 v124, v211 offset:19760
	v_lshl_or_b32 v245, v122, 16, v121
	ds_load_u8 v121, v211 offset:19568
	ds_load_u8 v122, v211 offset:19504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v211 offset:19952
	ds_load_u8 v125, v211 offset:19888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v244, v124, 16, v123
	ds_load_u8 v122, v211 offset:19696
	ds_load_u8 v123, v211 offset:19632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_lshl_or_b32 v243, v122, 16, v121
	ds_load_u8 v121, v211 offset:20336
	ds_load_u8 v122, v211 offset:20272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v222 offset:18432
	ds_load_u8 v123, v211 offset:20400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v246, v122, 16, v121
	v_wmma_i32_16x16x16_iu8 v[121:128], v[129:132], v[239:242], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[133:136], v[243:246], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[231:234], v[239:242], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v231, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[235:238], v[243:246], v[129:136] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v236, v35
	v_cvt_f32_i32_e32 v35, v37
	v_cvt_f32_i32_e32 v37, v87
	v_cvt_f32_i32_e32 v87, v116
	v_cvt_f32_i32_e32 v116, v121
	v_cvt_f32_i32_e32 v121, v90
	v_cvt_f32_i32_e32 v90, v94
	v_mov_b16_e32 v94.l, 0
	v_cvt_f32_i32_e32 v233, v21
	v_cvt_f32_i32_e32 v21, v82
	v_cvt_f32_i32_e32 v64, v104
	v_cvt_f32_i32_e32 v82, v118
	v_cvt_f32_i32_e32 v118, v73
	v_cvt_f32_i32_e32 v104, v77
	v_cvt_f32_i32_e32 v77, v96
	v_cvt_f32_i32_e32 v96, v105
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v105.l, v94.l
	v_mov_b16_e32 v105.h, v12.l
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v73, 16, v230
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v234, v22
	v_cvt_f32_i32_e32 v22, v98
	v_cvt_f32_i32_e32 v98, v117
	v_cvt_f32_i32_e32 v117, v74
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v74, v251, v73
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v239, v24
	v_cvt_f32_i32_e32 v24, v83
	v_cvt_f32_i32_e32 v83, v119
	v_cvt_f32_i32_e32 v119, v75
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v202, v74, v105
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v74, 16, v229
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v240, v36
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v38, v88
	v_cvt_f32_i32_e32 v88, v85
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v75, v252, v74
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v85, v100
	v_cvt_f32_i32_e32 v100, v127
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v127, 16, v225
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v238, v26
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v186, v75, v105 :: v_dual_lshlrev_b32 v75, 16, v228
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v243, v27
	v_cvt_f32_i32_e32 v235, v25
	v_cvt_f32_i32_e32 v242, v18
	v_cvt_f32_i32_e32 v241, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v106, v253, v75
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v232, v57
	v_cvt_f32_i32_e32 v57, v62
	v_cvt_f32_i32_e32 v62, v102
	v_cvt_f32_i32_e32 v102, v125
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v170, v106, v105
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v106, v240, v127
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v125, v107
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v107, v218, s1, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v27, v31
	v_cvt_f32_i32_e32 v25, v29
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v154, v106, v105
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v105, v243, v73
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v106.l, v94.l
	v_mov_b16_e32 v106.h, v11.l
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v246, v15
	v_cvt_f32_i32_e32 v15, v129
	v_cvt_f32_i32_e32 v31, v81
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v203, v105, v106
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v105, v250, v74
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v29, v99
	v_cvt_f32_i32_e32 v81, v113
	v_cvt_f32_i32_e32 v113, v124
	v_cvt_f32_i32_e32 v99, v128
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v187, v105, v106
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v105, v254, v75
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v124, v92
	v_cvt_f32_i32_e32 v92, v93
	v_cvt_f32_i32_e32 v93, v109
	v_cvt_f32_i32_e32 v26, v30
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v171, v105, v106
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v105, v236, v127
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v237, v23
	v_cvt_f32_i32_e32 v23, v114
	v_cvt_f32_i32_e32 v30, v115
	v_cvt_f32_i32_e32 v114, v122
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v155, v105, v106
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v105, v238, v73 :: v_dual_lshlrev_b32 v106, 16, v10
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v115, v123
	v_cvt_f32_i32_e32 v101, v126
	v_cvt_f32_i32_e32 v122, v89
	v_cvt_f32_i32_e32 v123, v91
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v204, v105, v106
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v105, v242, v74
	v_mul_f32_e32 v34, v34, v127
	v_mul_f32_e32 v33, v33, v127
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v126, v108
	v_cvt_f32_i32_e32 v91, v110
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v188, v105, v106
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v105, v249, v75 :: v_dual_fmac_f32 v156, v34, v106
	v_mul_f32_e32 v34, v235, v73
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v89, v111
	v_cvt_f32_i32_e32 v245, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v172, v105, v106 :: v_dual_lshlrev_b32 v105, 16, v9
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v106, v216, s0, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v27, v27, v73
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v244, v13
	v_cvt_f32_i32_e32 v13, v130
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v205, v34, v105
	v_fmac_f32_e32 v157, v33, v105
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v33, v213, s0, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v34, v241, v74
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v20, v133
	v_cvt_f32_i32_e32 v16, v134
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v189, v34, v105 :: v_dual_mul_f32 v34, v248, v75
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v18, v136
	v_cvt_f32_i32_e32 v14, v131
	v_cvt_f32_i32_e32 v17, v135
	v_cvt_f32_i32_e32 v19, v132
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v173, v34, v105
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v34, v214, s0, 1
	v_add_lshl_u32 v105, v215, s0, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v28, v28, v73
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v10, 0xffff0000, v10
	v_and_b32_e32 v12, 0xffff0000, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v105, 0x80000000, v105
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v109, v107, s[20:23], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x3
	buffer_load_u16 v33, v33, s[16:19], 0 offen
	buffer_load_u16 v34, v34, s[16:19], 0 offen
	buffer_load_u16 v128, v105, s[16:19], 0 offen
	buffer_load_u16 v129, v106, s[16:19], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[105:108], v217 offset:20496
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v26, v26, v73
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v94.h, v105.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v109, 16, v109
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v224, v109 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[109:112], v217 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v29, v34, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v22, v34, v22 :: v_dual_mul_f32 v117, v117, v33
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v204, v117, v110 :: v_dual_mul_f32 v117, v119, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v203, v117, v111
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v117, v120, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v202, v117, v112 :: v_dual_mul_f32 v117, v122, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v189, v117, v109
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v117, v121, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v188, v117, v110
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v117, v123, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v187, v117, v111
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v117, v124, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v186, v117, v112
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v118, v118, v33 :: v_dual_lshlrev_b32 v117, 16, v128
	v_mul_f32_e32 v21, v33, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v24, v33, v24 :: v_dual_mul_f32 v95, v95, v117
	v_mul_f32_e32 v96, v96, v117
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v172, v95, v110 :: v_dual_mul_f32 v95, v125, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v173, v96, v109
	v_fmac_f32_e32 v171, v95, v111
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v95, v126, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v205, v118, v109 :: v_dual_fmac_f32 v170, v95, v112
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v95, 16, v129
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v96, v116, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v157, v96, v109 :: v_dual_mul_f32 v96, v114, v95
	v_fmac_f32_e32 v156, v96, v110
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v96, v115, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v155, v96, v111
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v96, v113, v95
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v154, v96, v112
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v96, 16, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v198, v28, v96
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v28, v239, v74 :: v_dual_and_b32 v9, 0xffff0000, v9
	v_mul_f32_e32 v23, v117, v23
	v_dual_mul_f32 v30, v117, v30 :: v_dual_and_b32 v11, 0xffff0000, v11
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v182, v28, v96
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v28, v247, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v166, v28, v96
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v28, v40, v127
	v_mul_f32_e32 v40, v117, v82
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v148, v28, v96
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v28, 16, v107
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v20, v95, v20
	v_mul_f32_e32 v18, v95, v18
	v_mul_f32_e32 v17, v95, v17
	v_mul_f32_e32 v19, v95, v19
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v199, v27, v28
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v27, v237, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v183, v27, v28
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v27, v246, v75
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v167, v27, v28
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v27, v39, v127
	v_mul_f32_e32 v39, v34, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v149, v27, v28
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v27, 16, v106
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v200, v26, v27
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v26, v234, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v184, v26, v27 :: v_dual_mul_f32 v25, v25, v73
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v26, v245, v75
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v201, v25, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v25, v233, v74 :: v_dual_fmac_f32 v168, v26, v27
	v_mul_f32_e32 v26, v36, v127
	v_dual_mul_f32 v36, v34, v63 :: v_dual_fmac_f32 v185, v25, v94
	v_mul_f32_e32 v25, v244, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v151, v26, v27
	v_fmac_f32_e32 v169, v25, v94
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v35, v127
	v_mul_f32_e32 v35, v104, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v153, v25, v94
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[25:28], v217 offset:20496
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v201, v35, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v103, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v200, v35, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v79, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v199, v35, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v76, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v198, v35, v28 :: v_dual_mul_f32 v35, v92, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v185, v35, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v90, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v184, v35, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v80, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v183, v35, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v77, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v182, v35, v28 :: v_dual_mul_f32 v35, v93, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v169, v35, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v91, v117
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v168, v35, v26 :: v_dual_mul_f32 v35, v89, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v167, v35, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v78, v117
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v166, v35, v28 :: v_dual_mul_f32 v35, v102, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v153, v35, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v73, v72
	v_mul_f32_e32 v25, v101, v95
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v197, v35, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v74, v231
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v151, v25, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v100, v95
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v181, v35, v9 :: v_dual_and_b32 v26, 0xffff0000, v107
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v75, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v149, v25, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v99, v95
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v27, 0xffff0000, v108
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v165, v35, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v35, v127, v227 :: v_dual_fmac_f32 v148, v25, v28
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v25, 0xffff0000, v106
	v_and_b32_e32 v28, 0xffff0000, v105
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v152, v35, v9 :: v_dual_mul_f32 v9, v73, v71
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v34, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v193, v9, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v74, v54
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v177, v9, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v75, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v161, v9, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v127, v226
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v146, v9, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v73, v47
	v_mul_f32_e32 v25, v127, v66
	v_mul_f32_e32 v47, v95, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v191, v9, v26
	v_dual_fmac_f32 v150, v25, v10 :: v_dual_mul_f32 v9, v74, v48
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v48, v95, v13 :: v_dual_mul_f32 v25, v33, v31
	v_mul_f32_e32 v31, v33, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v175, v9, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v75, v55
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v159, v9, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v127, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v145, v9, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v73, v46 :: v_dual_mul_f32 v46, v95, v16
	v_mul_f32_e32 v26, v33, v32
	v_mul_f32_e32 v32, v33, v86
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v190, v9, v27 :: v_dual_mul_f32 v9, v74, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v42, v117, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v174, v9, v27 :: v_dual_mul_f32 v9, v75, v50
	v_dual_fmac_f32 v158, v9, v27 :: v_dual_mul_f32 v9, v127, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v144, v9, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v73, v45
	v_mul_f32_e32 v45, v95, v15
	ds_load_b128 v[13:16], v217 offset:21008
	v_mul_f32_e32 v27, v33, v37
	v_mul_f32_e32 v37, v34, v64
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v192, v9, v28 :: v_dual_mul_f32 v9, v74, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v176, v9, v28 :: v_dual_mul_f32 v9, v75, v61
	v_dual_fmac_f32 v160, v9, v28 :: v_dual_mul_f32 v9, v127, v69
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v192, v31, v13 :: v_dual_fmac_f32 v139, v9, v28
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v73, v44
	v_mul_f32_e32 v28, v33, v38
	v_mul_f32_e32 v33, v34, v58
	v_mul_f32_e32 v38, v34, v97
	v_mul_f32_e32 v34, v117, v81
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v194, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v74, v52 :: v_dual_mul_f32 v44, v117, v87
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v191, v27, v15 :: v_dual_fmac_f32 v190, v28, v16
	v_fmac_f32_e32 v176, v38, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v178, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v75, v60
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v175, v36, v15 :: v_dual_fmac_f32 v174, v37, v16
	v_dual_fmac_f32 v158, v42, v16 :: v_dual_fmac_f32 v161, v40, v14
	v_fmac_f32_e32 v162, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v127, v68
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v139, v20, v13 :: v_dual_fmac_f32 v146, v46, v14
	v_dual_fmac_f32 v145, v17, v15 :: v_dual_fmac_f32 v144, v18, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v143, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v73, v43 :: v_dual_mul_f32 v12, v75, v56
	v_mul_f32_e32 v43, v117, v98
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v195, v9, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v74, v51 :: v_dual_fmac_f32 v164, v12, v10
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v160, v43, v13 :: v_dual_fmac_f32 v179, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v75, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v163, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v127, v67
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v147, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v73, v41
	v_mul_f32_e32 v11, v74, v49
	v_mul_f32_e32 v41, v117, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v196, v9, v10
	v_fmac_f32_e32 v180, v11, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v217 offset:20992
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v159, v41, v15
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v196, v21, v10
	v_fmac_f32_e32 v197, v25, v9
	v_fmac_f32_e32 v195, v24, v11
	v_dual_fmac_f32 v194, v32, v12 :: v_dual_fmac_f32 v181, v33, v9
	v_dual_fmac_f32 v180, v22, v10 :: v_dual_fmac_f32 v179, v29, v11
	v_dual_fmac_f32 v178, v39, v12 :: v_dual_fmac_f32 v193, v26, v14
	v_dual_fmac_f32 v165, v34, v9 :: v_dual_fmac_f32 v164, v23, v10
	v_fmac_f32_e32 v177, v35, v14
	v_dual_fmac_f32 v163, v30, v11 :: v_dual_fmac_f32 v162, v44, v12
	v_fmac_f32_e32 v152, v45, v9
	v_dual_fmac_f32 v150, v48, v10 :: v_dual_fmac_f32 v147, v47, v11
	v_fmac_f32_e32 v143, v19, v12
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v204|, |v204|
	v_max_f32_e64 v2, |v205|, |v205|
	v_max3_f32 v3, |v202|, |v201|, |v200|
	v_max3_f32 v4, |v196|, |v195|, |v194|
	v_max3_f32 v5, |v192|, |v193|, |v191|
	v_max_f32_e64 v6, |v189|, |v189|
	v_max_f32_e32 v1, v2, v1
	v_max_f32_e64 v2, |v188|, |v188|
	v_max3_f32 v9, |v180|, |v179|, |v178|
	v_max3_f32 v4, v4, v5, |v190|
	v_max_f32_e64 v5, |v173|, |v173|
	v_max3_f32 v1, v1, |v203|, v3
	v_max_f32_e64 v3, |v172|, |v172|
	v_max_f32_e32 v2, v6, v2
	v_max3_f32 v6, |v186|, |v185|, |v184|
	v_max3_f32 v10, |v176|, |v177|, |v175|
	v_max3_f32 v11, |v164|, |v163|, |v162|
	v_max_f32_e32 v3, v5, v3
	v_max3_f32 v5, |v170|, |v169|, |v168|
	v_max3_f32 v12, |v160|, |v161|, |v159|
	v_max3_f32 v7, |v199|, |v198|, |v197|
	v_max3_f32 v8, |v183|, |v182|, |v181|
	v_max3_f32 v2, v2, |v187|, v6
	v_max3_f32 v6, v9, v10, |v174|
	v_max3_f32 v9, |v167|, |v166|, |v165|
	v_max3_f32 v3, v3, |v171|, v5
	v_max3_f32 v5, v11, v12, |v158|
	v_max_f32_e64 v10, |v156|, |v156|
	v_max_f32_e64 v11, |v157|, |v157|
	v_max3_f32 v1, v1, v7, v4
	v_max3_f32 v2, v2, v8, v6
	v_max3_f32 v3, v3, v9, v5
	v_max3_f32 v5, |v154|, |v153|, |v151|
	v_max_f32_e32 v4, v11, v10
	v_max3_f32 v7, |v150|, |v147|, |v143|
	v_max3_f32 v8, |v139|, |v146|, |v145|
	v_max3_f32 v6, |v149|, |v148|, |v152|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v4, v4, |v155|, v5
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v5, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v7, v8, |v144|
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v9, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_and_b32 v12, 0x80, v0
	v_max3_f32 v4, v4, v6, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v8, v9, v9 :: v_dual_max_f32 v9, v10, v10
	v_dual_max_f32 v1, v1, v5 :: v_dual_and_b32 v10, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v6, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v2, v8 :: v_dual_max_f32 v3, v3, v9
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v8, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v5, 5, v10
	v_lshl_add_u32 v9, v10, 9, 0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v14, v6, v6 :: v_dual_and_b32 v7, 0x60, v0
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v11, 4, v0
	v_and_b32_e32 v13, 8, v0
	v_lshl_add_u32 v9, v8, 2, v9
	v_lshlrev_b32_e32 v6, 1, v12
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v4, v4, v14
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_or_b32 v11, 0x680, v11, v5
	v_xor_b32_e32 v15, v5, v7
	v_lshl_add_u32 v9, v13, 4, v9
	v_lshrrev_b32_e32 v16, 3, v12
	v_lshl_add_u32 v17, v8, 6, 0
	v_xor_b32_e32 v11, v11, v7
.Ltmp35:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s4, s7, 31
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v9, v9, v6, v15
.Ltmp37:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s4, s4, 24
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v8, 5, v8
	v_add3_u32 v11, v17, v16, v11
.Ltmp39:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s4, s7, s4
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b128 v9, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v11, v2
	v_dual_mov_b32 v9, v1 :: v_dual_mov_b32 v14, v3
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v15, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_add_nc_u32 v12, 0, v12
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v4, v4, v4
	v_dual_max_f32 v2, v2, v11 :: v_dual_lshlrev_b32 v13, 3, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v1, v1, v9
	v_max_f32_e32 v9, v14, v14
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v14, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v14, v14, v14
	v_dual_max_f32 v4, v15, v4 :: v_dual_mov_b32 v11, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v14
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v15, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v11, v11, v11
	v_max_f32_e32 v1, v1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v11, v15, v15
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v15, v2 :: v_dual_mov_b32 v14, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v3, v3, v9 :: v_dual_max_f32 v4, v4, v11
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v15, v15, v15
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v9, v3 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v14
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v14, 1, v7
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp58:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v137, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v4, v4, v11
	v_max_f32_e32 v3, v3, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v9, v3
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v3, v3, v9
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v9, v10, 4, 0
	v_add3_u32 v10, v12, v14, v13
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v8, v9, v8, v13
	ds_store_b128 v10, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v8
.Ltmp63:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v1, v1, v1
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v2, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	v_div_scale_f32 v8, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v12, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v10, v8
	v_rcp_f32_e32 v11, v9
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v14, v12
	v_div_scale_f32 v18, vcc_lo, v1, 0x40e00000, v1
	v_rcp_f32_e32 v15, v13
	v_div_scale_f32 v19, s0, v3, 0x40e00000, v3
	v_fma_f32 v16, -v8, v10, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v9, v11, 1.0
	v_dual_fmac_f32 v10, v16, v10 :: v_dual_fmac_f32 v11, v17, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v16, -v12, v14, 1.0
	v_fma_f32 v17, -v13, v15, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v20, v18, v10 :: v_dual_mul_f32 v21, v19, v11
	v_fmac_f32_e32 v14, v16, v14
	v_div_scale_f32 v16, s1, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, v17, v15
	v_div_scale_f32 v17, s2, v4, 0x40e00000, v4
	v_fma_f32 v22, -v8, v20, v18
	v_fma_f32 v23, -v9, v21, v19
	v_dual_mul_f32 v24, v16, v14 :: v_dual_mul_f32 v25, v17, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v20, v22, v10 :: v_dual_fmac_f32 v21, v23, v11
	v_fma_f32 v22, -v12, v24, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v13, v25, v17
	v_fma_f32 v8, -v8, v20, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v9, -v9, v21, v19
	v_dual_fmac_f32 v24, v22, v14 :: v_dual_fmac_f32 v25, v23, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v8, v8, v10, v20
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v10.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v9, v9, v11, v21
	v_fma_f32 v11, -v12, v24, v16
	v_fma_f32 v12, -v13, v25, v17
	v_div_fixup_f32 v1, v8, 0x40e00000, v1
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v8, v9, 0x40e00000, v3
	v_div_fmas_f32 v3, v11, v14, v24
	s_mov_b32 vcc_lo, s2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v11.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v9, v12, v15, v25
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v11.h, v10.h
	v_mov_b16_e32 v10.l, v8.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v2, v3, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v9, v9, 0x40e00000, v4
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 1, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 1, v10
	v_mov_b16_e32 v11.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v10.l, v9.h
	v_add3_u32 v3, v1, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v8, v4, 0x7fff
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v10, 1, v10
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v25, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v4, v2, v11, 0x7fff
	v_add3_u32 v2, v9, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v9, null, v25, v25, v205
	v_div_scale_f32 v10, null, v25, v25, v204
	v_div_scale_f32 v15, null, v25, v25, v203
	v_rcp_f32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v13, v10
	v_div_scale_f32 v12, vcc_lo, v205, v25, v205
	v_div_scale_f32 v16, null, v25, v25, v202
	v_rcp_f32_e32 v18, v15
	v_div_scale_f32 v14, s0, v204, v25, v204
	v_rcp_f32_e32 v21, v16
	v_fma_f32 v8, -v9, v11, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v20, -v10, v13, 1.0
	v_div_scale_f32 v22, null, v25, v25, v201
	v_div_scale_f32 v17, s1, v203, v25, v203
	v_fmac_f32_e32 v11, v8, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v13, v20, v13
	v_fma_f32 v24, -v15, v18, 1.0
	v_div_scale_f32 v23, null, v25, v25, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v20, v12, v11
	v_mul_f32_e32 v26, v14, v13
	v_fma_f32 v28, -v16, v21, 1.0
	v_fmac_f32_e32 v18, v24, v18
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v38, 0xffff0000, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v27, -v9, v20, v12
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v19, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v24, -v10, v26, v14
	v_dual_fmac_f32 v21, v28, v21 :: v_dual_mul_f32 v28, v17, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v27, v11
	v_rcp_f32_e32 v27, v22
	v_fmac_f32_e32 v26, v24, v13
	v_rcp_f32_e32 v24, v23
	v_div_scale_f32 v44, null, v38, v38, v182
	v_fma_f32 v9, -v9, v20, v12
	v_div_scale_f32 v12, s2, v202, v25, v202
	v_fma_f32 v10, -v10, v26, v14
	v_fma_f32 v14, -v15, v28, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v9, v9, v11, v20
	v_fma_f32 v11, -v22, v27, 1.0
	v_mul_f32_e32 v20, v12, v21
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v28, v14, v18
	v_div_fmas_f32 v10, v10, v13, v26
	v_fmac_f32_e32 v27, v11, v27
	v_fma_f32 v13, -v16, v20, v12
	v_fma_f32 v11, -v23, v24, 1.0
	v_fma_f32 v15, -v15, v28, v17
	v_div_scale_f32 v17, s3, v200, v25, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, v13, v21
	v_fmac_f32_e32 v24, v11, v24
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v38, v38, v181
	v_div_fmas_f32 v11, v15, v18, v28
	v_fma_f32 v12, -v16, v20, v12
	v_mul_f32_e32 v18, v17, v24
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v46, null, v38, v38, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v12, v12, v21, v20
	v_fma_f32 v20, -v23, v18, v17
	v_div_scale_f32 v49, null, v38, v38, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v46
	v_div_scale_f32 v54, null, v19, v19, v172
	v_fmac_f32_e32 v18, v20, v24
	v_div_scale_f32 v14, s0, v201, v25, v201
	v_div_scale_f32 v26, null, v25, v25, v199
	v_div_scale_f32 v28, null, v25, v25, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v13, v14, v27
	v_rcp_f32_e32 v16, v26
	v_div_scale_f32 v20, s1, v199, v25, v199
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v15, -v22, v13, v14
	v_div_scale_f32 v31, null, v25, v25, v195
	v_div_scale_f32 v33, null, v25, v25, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v13, v15, v27
	v_fma_f32 v21, -v26, v16, 1.0
	v_rcp_f32_e32 v15, v28
	v_div_scale_f32 v35, null, v25, v25, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v22, v13, v14
	v_fmac_f32_e32 v16, v21, v16
	v_div_scale_f32 v22, null, v25, v25, v197
	v_div_fixup_f32 v9, v9, v25, v205
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v13, v14, v27, v13
	v_fma_f32 v14, -v23, v18, v17
	v_mul_f32_e32 v17, v20, v16
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v21, -v28, v15, 1.0
	v_div_scale_f32 v23, s0, v198, v25, v198
	v_div_fmas_f32 v14, v14, v24, v18
	v_fma_f32 v18, -v26, v17, v20
	v_div_scale_f32 v27, null, v25, v25, v196
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v10, v10, v25, v204
	v_fmac_f32_e32 v17, v18, v16
	v_rcp_f32_e32 v30, v27
	v_div_fixup_f32 v11, v11, v25, v203
	v_div_fixup_f32 v12, v12, v25, v202
	v_div_fixup_f32 v13, v13, v25, v201
	v_fma_f32 v20, -v26, v17, v20
	v_rcp_f32_e32 v26, v31
	v_fmac_f32_e32 v15, v21, v15
	v_rcp_f32_e32 v21, v22
	v_div_fixup_f32 v14, v14, v25, v200
	v_div_fmas_f32 v16, v20, v16, v17
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v24, v23, v15
	v_fma_f32 v32, -v27, v30, 1.0
	v_div_scale_f32 v55, null, v19, v19, v171
	v_div_scale_f32 v63, null, v19, v19, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v18, -v28, v24, v23
	v_fma_f32 v29, -v22, v21, 1.0
	v_fmac_f32_e32 v30, v32, v30
	v_div_scale_f32 v32, s3, v196, v25, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v18, v15
	v_div_scale_f32 v64, null, v19, v19, v160
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v8, 0xffff0000, v2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v17, -v28, v24, v23
	v_fma_f32 v28, -v31, v26, 1.0
	v_mul_f32_e32 v23, v32, v30
	v_div_scale_f32 v71, null, v8, v8, v154
	v_div_scale_f32 v74, null, v8, v8, v150
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v26, v28, v26
	v_div_fmas_f32 v17, v17, v15, v24
	v_rcp_f32_e32 v24, v33
	v_fmac_f32_e32 v21, v29, v21
	v_div_scale_f32 v29, s2, v197, v25, v197
	v_div_scale_f32 v28, s0, v195, v25, v195
	v_div_fixup_f32 v15, v16, v25, v199
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v18, v29, v21
	v_div_fixup_f32 v16, v17, v25, v198
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v73, v71
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v20, -v22, v18, v29
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v18, v20, v21
	v_fma_f32 v20, -v27, v23, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v78, -v74, v76, 1.0
	v_fma_f32 v17, -v22, v18, v29
	v_fma_f32 v22, -v33, v24, 1.0
	v_div_scale_f32 v29, null, v25, v25, v192
	v_fmac_f32_e32 v23, v20, v30
	v_mul_f32_e32 v20, v28, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v22, v24
	v_rcp_f32_e32 v22, v29
	v_div_fmas_f32 v17, v17, v21, v18
	v_fma_f32 v18, -v27, v23, v32
	v_fma_f32 v21, -v31, v20, v28
	v_div_scale_f32 v27, s1, v194, v25, v194
	v_div_scale_f32 v32, null, v25, v25, v193
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v20, v21, v26
	v_div_fmas_f32 v18, v18, v30, v23
	v_rcp_f32_e32 v23, v32
	v_fma_f32 v30, -v29, v22, 1.0
	v_mul_f32_e32 v21, v27, v24
	v_fma_f32 v28, -v31, v20, v28
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v17, v17, v25, v197
	v_fmac_f32_e32 v22, v30, v22
	v_fma_f32 v31, -v33, v21, v27
	v_div_scale_f32 v30, s2, v192, v25, v192
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v32, v23, 1.0
	v_div_fmas_f32 v20, v28, v26, v20
	v_dual_fmac_f32 v21, v31, v24 :: v_dual_mul_f32 v26, v30, v22
	v_rcp_f32_e32 v28, v35
	v_div_scale_f32 v31, s0, v193, v25, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v33, v21, v27
	v_fma_f32 v33, -v29, v26, v30
	v_fmac_f32_e32 v23, v34, v23
	v_div_scale_f32 v34, null, v25, v25, v190
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v26, v33, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v35, v28, 1.0
	v_rcp_f32_e32 v37, v34
	v_div_fmas_f32 v21, v27, v24, v21
	v_div_scale_f32 v27, s1, v191, v25, v191
	v_fmac_f32_e32 v28, v39, v28
	v_fma_f32 v29, -v29, v26, v30
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v39, null, v38, v38, v188
	v_div_scale_f32 v30, s3, v190, v25, v190
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v33, -v34, v37, 1.0
	v_mul_f32_e32 v36, v31, v23
	v_div_fmas_f32 v22, v29, v22, v26
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v18, v18, v25, v196
	v_fmac_f32_e32 v37, v33, v37
	v_fma_f32 v24, -v32, v36, v31
	v_div_scale_f32 v33, null, v38, v38, v189
	v_div_fixup_f32 v20, v20, v25, v195
	v_div_fixup_f32 v21, v21, v25, v194
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v36, v24, v23
	v_mul_f32_e32 v24, v27, v28
	v_div_fixup_f32 v22, v22, v25, v192
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v26, -v32, v36, v31
	v_rcp_f32_e32 v31, v33
	v_fma_f32 v29, -v35, v24, v27
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v23, v26, v23, v36
	v_rcp_f32_e32 v26, v39
	v_fmac_f32_e32 v24, v29, v28
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v23, v23, v25, v193
	v_fma_f32 v36, -v33, v31, 1.0
	v_mul_f32_e32 v32, v30, v37
	v_fma_f32 v27, -v35, v24, v27
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v31, v36, v31
	v_fma_f32 v29, -v34, v32, v30
	v_fma_f32 v35, -v39, v26, 1.0
	v_div_scale_f32 v36, null, v38, v38, v187
	v_div_fmas_f32 v24, v27, v28, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v29, v37
	v_fmac_f32_e32 v26, v35, v26
	v_div_scale_f32 v35, null, v38, v38, v186
	v_div_scale_f32 v29, s0, v189, v38, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v34, v32, v30
	v_rcp_f32_e32 v30, v36
	v_rcp_f32_e32 v41, v35
	v_div_scale_f32 v34, s1, v188, v38, v188
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v24, v24, v25, v191
	v_div_fmas_f32 v27, v27, v37, v32
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v76, v78, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v40, -v36, v30, 1.0
	v_fma_f32 v42, -v35, v41, 1.0
	v_div_fixup_f32 v25, v27, v25, v190
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v41, v42, v41 :: v_dual_fmac_f32 v30, v40, v30
	v_dual_mul_f32 v28, v29, v31 :: v_dual_mul_f32 v37, v34, v26
	v_div_scale_f32 v40, null, v38, v38, v185
	v_div_scale_f32 v42, s3, v186, v38, v186
	v_fma_f32 v32, -v33, v28, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v39, v37, v34
	v_rcp_f32_e32 v43, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v28, v32, v31
	v_div_scale_f32 v32, s2, v187, v38, v187
	v_fmac_f32_e32 v37, v27, v26
	v_fma_f32 v29, -v33, v28, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v33, v32, v30
	v_div_fmas_f32 v27, v29, v31, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v28, -v39, v37, v34
	v_div_scale_f32 v39, null, v38, v38, v184
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v29, -v36, v33, v32
	v_mul_f32_e32 v31, v42, v41
	v_fma_f32 v34, -v40, v43, 1.0
	v_div_fmas_f32 v28, v28, v26, v37
	v_rcp_f32_e32 v37, v39
	v_div_fixup_f32 v26, v27, v38, v189
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v43, v34, v43
	v_div_scale_f32 v34, s0, v185, v38, v185
	v_fmac_f32_e32 v33, v29, v30
	v_fma_f32 v29, -v35, v31, v42
	v_div_fixup_f32 v27, v28, v38, v188
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v28, -v36, v33, v32
	v_dual_fmac_f32 v31, v29, v41 :: v_dual_mul_f32 v32, v34, v43
	v_fma_f32 v29, -v39, v37, 1.0
	v_div_scale_f32 v36, null, v38, v38, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v30, v33
	v_fma_f32 v30, -v35, v31, v42
	v_fma_f32 v33, -v40, v32, v34
	v_fmac_f32_e32 v37, v29, v37
	v_rcp_f32_e32 v35, v36
	v_div_scale_f32 v42, s1, v184, v38, v184
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v32, v33, v43
	v_div_fmas_f32 v29, v30, v41, v31
	v_mul_f32_e32 v31, v42, v37
	v_rcp_f32_e32 v33, v44
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v34, -v40, v32, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v36, v35, 1.0
	v_fma_f32 v40, -v39, v31, v42
	v_div_scale_f32 v41, s2, v183, v38, v183
	v_div_fmas_f32 v32, v34, v43, v32
	v_div_scale_f32 v43, s0, v182, v38, v182
	v_fmac_f32_e32 v35, v30, v35
	v_fmac_f32_e32 v31, v40, v37
	v_rcp_f32_e32 v40, v45
	v_fma_f32 v30, -v44, v33, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v28, v38, v187
	v_div_fixup_f32 v29, v29, v38, v186
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v48, -v45, v40, 1.0
	v_fmac_f32_e32 v33, v30, v33
	v_div_fixup_f32 v30, v32, v38, v185
	v_fma_f32 v32, -v39, v31, v42
	v_fmac_f32_e32 v40, v48, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v43, v33
	v_mul_f32_e32 v34, v41, v35
	v_div_scale_f32 v48, null, v38, v38, v179
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v39, -v36, v34, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v39, v35
	v_div_fmas_f32 v31, v32, v37, v31
	v_fma_f32 v32, -v44, v42, v43
	v_div_scale_f32 v37, s1, v181, v38, v181
	v_fma_f32 v36, -v36, v34, v41
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v32, v33 :: v_dual_mul_f32 v41, v37, v40
	v_fma_f32 v39, -v46, v47, 1.0
	v_div_fmas_f32 v32, v36, v35, v34
	v_rcp_f32_e32 v36, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v44, v42, v43
	v_fma_f32 v35, -v45, v41, v37
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v44, null, v38, v38, v178
	v_div_fmas_f32 v33, v34, v33, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v35, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v48, v36, 1.0
	v_fmac_f32_e32 v47, v39, v47
	v_fma_f32 v37, -v45, v41, v37
	v_div_scale_f32 v39, s3, v180, v38, v180
	v_fmac_f32_e32 v36, v35, v36
	v_div_scale_f32 v45, s0, v179, v38, v179
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v35, v37, v40, v41
	v_rcp_f32_e32 v40, v49
	v_div_scale_f32 v41, s1, v178, v38, v178
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v31, v38, v184
	v_div_fixup_f32 v32, v32, v38, v183
	v_div_fixup_f32 v33, v33, v38, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v50, -v49, v40, 1.0
	v_mul_f32_e32 v43, v39, v47
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v40, v50, v40
	v_fma_f32 v34, -v46, v43, v39
	v_div_scale_f32 v50, null, v38, v38, v175
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v34, v47
	v_fma_f32 v34, -v44, v42, 1.0
	v_rcp_f32_e32 v53, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v46, v43, v39
	v_fmac_f32_e32 v42, v34, v42
	v_div_scale_f32 v46, null, v38, v38, v177
	v_div_fixup_f32 v34, v35, v38, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v47, v43
	v_mul_f32_e32 v47, v41, v42
	v_mul_f32_e32 v39, v45, v36
	v_rcp_f32_e32 v51, v46
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v35, v37, v38, v180
	v_fma_f32 v37, -v44, v47, v41
	v_fma_f32 v43, -v48, v39, v45
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v39, v43, v36
	v_div_scale_f32 v43, s2, v176, v38, v176
	v_fmac_f32_e32 v47, v37, v42
	v_fma_f32 v52, -v46, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v48, v39, v45
	v_mul_f32_e32 v48, v43, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v44, v47, v41
	v_fma_f32 v44, -v50, v53, 1.0
	v_div_fmas_f32 v36, v45, v36, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v39, -v49, v48, v43
	v_div_scale_f32 v45, null, v38, v38, v174
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v36, v36, v38, v179
	v_fmac_f32_e32 v48, v39, v40
	v_div_fmas_f32 v37, v37, v42, v47
	v_rcp_f32_e32 v42, v45
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, s3, v177, v38, v177
	v_fma_f32 v43, -v49, v48, v43
	v_div_scale_f32 v49, null, v19, v19, v173
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v37, v37, v38, v178
	v_div_fmas_f32 v40, v43, v40, v48
	v_rcp_f32_e32 v48, v49
	v_mul_f32_e32 v41, v52, v51
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v39, -v46, v41, v52
	v_fmac_f32_e32 v41, v39, v51
	v_fma_f32 v39, -v45, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v46, v41, v52
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v52, s1, v174, v38, v174
	v_div_fixup_f32 v39, v40, v38, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v41, v43, v51, v41
	v_rcp_f32_e32 v43, v54
	v_fma_f32 v51, -v49, v48, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v40, v41, v38, v177
	v_dual_fmac_f32 v48, v51, v48 :: v_dual_fmac_f32 v53, v44, v53
	v_div_scale_f32 v44, s0, v175, v38, v175
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v54, v43, 1.0
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v40, v40
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v43, v51, v43
	v_div_scale_f32 v51, s0, v172, v19, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v47, v44, v53 :: v_dual_mul_f32 v56, v51, v43
	v_fma_f32 v46, -v50, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v47, v46, v53 :: v_dual_mul_f32 v46, v52, v42
	v_fma_f32 v41, -v50, v47, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v44, -v45, v46, v52
	v_div_scale_f32 v50, s2, v173, v19, v173
	v_fmac_f32_e32 v46, v44, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v50, v48
	v_div_fmas_f32 v41, v41, v53, v47
	v_div_scale_f32 v53, null, v19, v19, v170
	v_fma_f32 v45, -v45, v46, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v49, v44, v50
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v57, v53
	v_rcp_f32_e32 v47, v55
	v_div_fmas_f32 v42, v45, v42, v46
	v_fmac_f32_e32 v44, v52, v48
	v_div_fixup_f32 v41, v41, v38, v175
	v_fma_f32 v45, -v54, v56, v51
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v38, v42, v38, v174
	v_fma_f32 v42, -v49, v44, v50
	v_div_scale_f32 v49, s3, v170, v19, v170
	v_fma_f32 v52, -v53, v57, 1.0
	v_fma_f32 v58, -v55, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v48, v44
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v46, s1, v171, v19, v171
	v_fmac_f32_e32 v57, v52, v57
	v_div_scale_f32 v50, null, v19, v19, v169
	v_div_fixup_f32 v42, v42, v19, v173
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v52, v49, v57
	v_fmac_f32_e32 v56, v45, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v44, -v54, v56, v51
	v_rcp_f32_e32 v51, v50
	v_div_scale_f32 v54, null, v19, v19, v168
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v43, v44, v43, v56
	v_fma_f32 v44, -v53, v52, v49
	v_fmac_f32_e32 v47, v58, v47
	v_div_scale_f32 v58, null, v19, v19, v166
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v52, v44, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v56, -v50, v51, 1.0
	v_rcp_f32_e32 v60, v58
	v_div_fixup_f32 v43, v43, v19, v172
	v_fmac_f32_e32 v51, v56, v51
	v_div_scale_f32 v56, null, v19, v19, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v43, v43
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v61, -v58, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v45, v46, v47 :: v_dual_fmac_f32 v60, v61, v60
	v_fma_f32 v48, -v55, v45, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v48, v47
	v_rcp_f32_e32 v48, v54
	v_fma_f32 v46, -v55, v45, v46
	v_div_scale_f32 v55, s0, v169, v19, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v45, v46, v47, v45
	v_fma_f32 v46, -v53, v52, v49
	v_rcp_f32_e32 v49, v56
	v_fma_f32 v44, -v54, v48, 1.0
	v_mul_f32_e32 v47, v55, v51
	v_div_scale_f32 v53, s1, v168, v19, v168
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v46, v46, v57, v52
	v_fma_f32 v52, -v50, v47, v55
	v_div_fixup_f32 v44, v45, v19, v171
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v56, v49, 1.0
	v_mul_f32_e32 v57, v53, v48
	v_div_fixup_f32 v45, v46, v19, v170
	v_fmac_f32_e32 v47, v52, v51
	v_div_scale_f32 v52, s2, v167, v19, v167
	v_fmac_f32_e32 v49, v59, v49
	v_div_scale_f32 v59, null, v19, v19, v165
	v_fma_f32 v46, -v54, v57, v53
	v_fma_f32 v50, -v50, v47, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v52, v49
	v_rcp_f32_e32 v62, v59
	v_div_scale_f32 v61, s3, v166, v19, v166
	v_fmac_f32_e32 v57, v46, v48
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v44, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v46, v50, v51, v47
	v_fma_f32 v50, -v56, v55, v52
	v_fma_f32 v47, -v54, v57, v53
	v_mul_f32_e32 v51, v61, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v53, -v59, v62, 1.0
	v_div_scale_f32 v54, null, v19, v19, v164
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v55, v50, v49
	v_div_fmas_f32 v47, v47, v48, v57
	v_rcp_f32_e32 v50, v54
	v_fma_f32 v48, -v58, v51, v61
	v_fmac_f32_e32 v62, v53, v62
	v_div_scale_f32 v53, s0, v165, v19, v165
	v_fma_f32 v52, -v56, v55, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v48, v60
	v_div_scale_f32 v57, null, v19, v19, v163
	v_mul_f32_e32 v56, v53, v62
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v54, v50, 1.0
	v_div_fmas_f32 v49, v52, v49, v55
	v_fma_f32 v52, -v58, v51, v61
	v_fma_f32 v55, -v59, v56, v53
	v_rcp_f32_e32 v58, v57
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v50, v48, v50
	v_div_scale_f32 v61, s1, v164, v19, v164
	v_div_fmas_f32 v51, v52, v60, v51
	v_fmac_f32_e32 v56, v55, v62
	v_rcp_f32_e32 v52, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v55, v61, v50
	v_div_fixup_f32 v48, v49, v19, v167
	v_fma_f32 v60, -v57, v58, 1.0
	v_div_fixup_f32 v49, v51, v19, v166
	v_fma_f32 v51, -v59, v56, v53
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v53, -v54, v55, v61
	v_fmac_f32_e32 v58, v60, v58
	v_div_scale_f32 v59, s2, v163, v19, v163
	v_fma_f32 v60, -v63, v52, 1.0
	v_div_fmas_f32 v51, v51, v62, v56
	v_rcp_f32_e32 v56, v64
	v_div_scale_f32 v62, null, v19, v19, v161
	v_fmac_f32_e32 v55, v53, v50
	v_dual_mul_f32 v53, v59, v58 :: v_dual_fmac_f32 v52, v60, v52
	v_div_scale_f32 v60, s0, v162, v19, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v66, v62
	v_fma_f32 v54, -v54, v55, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v57, v53, v59
	v_mul_f32_e32 v65, v60, v52
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v67, -v64, v56, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v46, v46, v19, v169
	v_div_fmas_f32 v50, v54, v50, v55
	v_fma_f32 v54, -v63, v65, v60
	v_fmac_f32_e32 v56, v67, v56
	v_div_scale_f32 v55, s1, v160, v19, v160
	v_fmac_f32_e32 v53, v61, v58
	v_fma_f32 v61, -v62, v66, 1.0
	v_fmac_f32_e32 v65, v54, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v54, v55, v56
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v57, -v57, v53, v59
	v_fmac_f32_e32 v66, v61, v66
	v_div_scale_f32 v59, s3, v161, v19, v161
	v_div_scale_f32 v61, null, v19, v19, v159
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v53, v57, v58, v53
	v_fma_f32 v57, -v63, v65, v60
	v_fma_f32 v58, -v64, v54, v55
	v_mul_f32_e32 v63, v59, v66
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v60, v61
	v_div_fmas_f32 v52, v57, v52, v65
	v_fmac_f32_e32 v54, v58, v56
	v_fma_f32 v58, -v62, v63, v59
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v67, null, v19, v19, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v64, v54, v55
	v_fmac_f32_e32 v63, v58, v66
	v_div_scale_f32 v58, s0, v159, v19, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v57, v67
	v_div_fmas_f32 v54, v55, v56, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v62, v63, v59
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v65, -v61, v60, 1.0
	v_div_scale_f32 v59, null, v8, v8, v157
	v_div_fmas_f32 v55, v55, v66, v63
	v_div_scale_f32 v66, null, v8, v8, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v60, v65, v60
	v_fma_f32 v64, -v67, v57, 1.0
	v_rcp_f32_e32 v63, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v68, v66
	v_div_scale_f32 v62, s1, v158, v19, v158
	v_mul_f32_e32 v56, v58, v60
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v47, v47, v19, v168
	v_div_fixup_f32 v51, v51, v19, v165
	v_div_fixup_f32 v50, v50, v19, v164
	v_div_fixup_f32 v53, v53, v19, v163
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v69, -v59, v63, 1.0
	v_fma_f32 v70, -v66, v68, 1.0
	v_div_fixup_f32 v52, v52, v19, v162
	v_div_fixup_f32 v54, v54, v19, v160
	v_div_fixup_f32 v55, v55, v19, v161
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v63, v69, v63 :: v_dual_fmac_f32 v68, v70, v68
	v_fmac_f32_e32 v57, v64, v57
	v_fma_f32 v64, -v61, v56, v58
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v65, v62, v57 :: v_dual_fmac_f32 v56, v64, v60
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v51, v51
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v64, -v67, v65, v62
	v_fma_f32 v58, -v61, v56, v58
	v_div_scale_f32 v61, null, v8, v8, v155
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v65, v64, v57
	v_div_scale_f32 v64, s2, v157, v8, v157
	v_rcp_f32_e32 v69, v61
	v_div_fmas_f32 v56, v58, v60, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v67, v65, v62
	v_mul_f32_e32 v60, v64, v63
	v_div_scale_f32 v62, s0, v156, v8, v156
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v56, v56, v19, v159
	v_fma_f32 v70, -v59, v60, v64
	v_mul_f32_e32 v72, v62, v68
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v67, -v61, v69, 1.0
	v_div_fmas_f32 v57, v58, v57, v65
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v60, v70, v63
	v_fma_f32 v58, -v66, v72, v62
	v_fmac_f32_e32 v69, v67, v69
	v_div_scale_f32 v67, s3, v155, v8, v155
	v_div_fixup_f32 v19, v57, v19, v158
	v_fma_f32 v57, -v59, v60, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v72, v58, v68 :: v_dual_mul_f32 v65, v67, v69
	v_div_scale_f32 v64, null, v8, v8, v153
	v_fma_f32 v59, -v71, v73, 1.0
	v_div_fmas_f32 v57, v57, v63, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v58, -v61, v65, v67
	v_fma_f32 v60, -v66, v72, v62
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v73, v59, v73
	v_div_scale_f32 v59, s1, v154, v8, v154
	v_fmac_f32_e32 v65, v58, v69
	v_rcp_f32_e32 v58, v64
	v_div_scale_f32 v63, null, v8, v8, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v62, v59, v73
	v_fma_f32 v61, -v61, v65, v67
	v_div_fmas_f32 v60, v60, v68, v72
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v78, s3, v150, v8, v150
	v_fma_f32 v67, -v71, v62, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v64, v58, 1.0
	v_div_fmas_f32 v61, v61, v69, v65
	v_rcp_f32_e32 v65, v63
	v_div_scale_f32 v69, null, v8, v8, v149
	v_fmac_f32_e32 v58, v66, v58
	v_div_scale_f32 v66, s0, v153, v8, v153
	v_fmac_f32_e32 v62, v67, v73
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v61, v61, v8, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v67, v66, v58
	v_fma_f32 v68, -v63, v65, 1.0
	v_fma_f32 v59, -v71, v62, v59
	v_rcp_f32_e32 v71, v69
	v_div_fixup_f32 v57, v57, v8, v157
	v_fma_f32 v70, -v64, v67, v66
	v_fmac_f32_e32 v65, v68, v65
	v_div_fmas_f32 v59, v59, v73, v62
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v68, s2, v151, v8, v151
	v_fmac_f32_e32 v67, v70, v58
	v_div_scale_f32 v70, null, v8, v8, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v62, v68, v65
	v_fma_f32 v72, -v69, v71, 1.0
	v_fma_f32 v64, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v73, v70
	v_div_fixup_f32 v60, v60, v8, v156
	v_fma_f32 v66, -v63, v62, v68
	v_fmac_f32_e32 v71, v72, v71
	v_div_fmas_f32 v58, v64, v58, v67
	v_div_scale_f32 v64, null, v8, v8, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v66, v65
	v_div_scale_f32 v66, s0, v149, v8, v149
	v_rcp_f32_e32 v67, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v70, v73, 1.0
	v_fma_f32 v63, -v63, v62, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v68, v66, v71
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v77, s2, v152, v8, v152
	v_fmac_f32_e32 v73, v72, v73
	v_div_scale_f32 v72, s1, v148, v8, v148
	v_fma_f32 v75, -v64, v67, 1.0
	v_div_fmas_f32 v62, v63, v65, v62
	v_fma_f32 v63, -v69, v68, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v65, v72, v73
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v67, v75, v67
	v_div_scale_f32 v75, null, v8, v8, v147
	v_fmac_f32_e32 v68, v63, v71
	v_fma_f32 v63, -v70, v65, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v80, v77, v67
	v_rcp_f32_e32 v79, v75
	v_div_fixup_f32 v62, v62, v8, v151
	v_fma_f32 v66, -v69, v68, v66
	v_fmac_f32_e32 v65, v63, v73
	v_fma_f32 v63, -v64, v80, v77
	v_mul_f32_e32 v69, v78, v76
	v_div_fixup_f32 v59, v59, v8, v154
	v_div_fmas_f32 v66, v66, v71, v68
	v_fma_f32 v68, -v70, v65, v72
	v_fmac_f32_e32 v80, v63, v67
	v_fma_f32 v81, -v75, v79, 1.0
	v_fma_f32 v63, -v74, v69, v78
	v_div_scale_f32 v70, s0, v147, v8, v147
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v79, v81, v79
	v_div_fmas_f32 v65, v68, v73, v65
	v_fmac_f32_e32 v69, v63, v76
	v_div_scale_f32 v68, null, v8, v8, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v63, v70, v79
	v_fma_f32 v64, -v64, v80, v77
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v72, v68
	v_div_scale_f32 v73, null, v8, v8, v145
	v_fma_f32 v71, -v75, v63, v70
	v_div_fmas_f32 v64, v64, v67, v80
	v_fma_f32 v67, -v74, v69, v78
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v77, v73
	v_fmac_f32_e32 v63, v71, v79
	v_div_fixup_f32 v66, v66, v8, v149
	v_div_fmas_f32 v67, v67, v76, v69
	v_fma_f32 v71, -v68, v72, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v69, -v75, v63, v70
	v_div_scale_f32 v70, null, v8, v8, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v71, v72
	v_div_scale_f32 v71, null, v8, v8, v146
	v_div_fmas_f32 v63, v69, v79, v63
	v_div_scale_f32 v74, vcc_lo, v143, v8, v143
	v_rcp_f32_e32 v69, v70
	v_div_scale_f32 v79, null, v8, v8, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v78, v74, v72
	v_rcp_f32_e32 v75, v71
	v_fma_f32 v83, -v73, v77, 1.0
	v_rcp_f32_e32 v81, v79
	v_div_fixup_f32 v58, v58, v8, v153
	v_fma_f32 v82, -v68, v78, v74
	v_div_fixup_f32 v65, v65, v8, v148
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v76, -v70, v69, 1.0
	v_div_fixup_f32 v64, v64, v8, v152
	v_div_fixup_f32 v67, v67, v8, v150
	v_fmac_f32_e32 v78, v82, v72
	v_fma_f32 v80, -v71, v75, 1.0
	v_fmac_f32_e32 v69, v76, v69
	v_div_scale_f32 v76, s0, v139, v8, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v68, v78, v74
	v_fma_f32 v85, -v79, v81, 1.0
	v_div_fixup_f32 v63, v63, v8, v147
	v_mul_f32_e32 v84, v76, v69
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v61, v61
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v68, v68, v72, v78
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v82, -v70, v84, v76
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v84, v82, v69
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v75, v80, v75
	v_div_scale_f32 v80, s1, v146, v8, v146
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v77, v83, v77
	v_div_scale_f32 v83, s2, v145, v8, v145
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v81, v85, v81
	v_div_scale_f32 v85, s3, v144, v8, v144
	v_mul_f32_e32 v86, v80, v75
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v87, v83, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v88, v85, v81
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v74, -v71, v86, v80
	v_fma_f32 v70, -v70, v84, v76
	v_fma_f32 v82, -v73, v87, v83
	v_fma_f32 v72, -v79, v88, v85
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v86, v74, v75
	v_div_fmas_f32 v69, v70, v69, v84
	v_fmac_f32_e32 v87, v82, v77
	v_fmac_f32_e32 v88, v72, v81
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v70, -v71, v86, v80
	v_div_fixup_f32 v68, v68, v8, v143
	v_fma_f32 v71, -v73, v87, v83
	v_fma_f32 v72, -v79, v88, v85
	v_div_fixup_f32 v69, v69, v8, v139
	v_div_fmas_f32 v70, v70, v75, v86
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v62, v62
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v71, v71, v77, v87
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v70, v70, v8, v146
	v_div_fmas_f32 v72, v72, v81, v88
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v66, v66
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v71, v71, v8, v145
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v8, v72, v8, v144
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v72, v38
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v66, v66
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v59, v59
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v73, v19
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v74, v58
	v_cvt_i32_f32_e32 v75, v63
	v_cvt_i32_f32_e32 v76, v8
	v_and_b32_e32 v8, 15, v9
	v_and_b32_e32 v9, 15, v10
	v_and_b32_e32 v10, 15, v11
	v_and_b32_e32 v11, 15, v12
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v20
	v_and_b32_e32 v20, 15, v22
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v24, 15, v26
	v_and_b32_e32 v26, 15, v28
	v_and_b32_e32 v28, 15, v30
	v_and_b32_e32 v30, 15, v32
	v_and_b32_e32 v32, 15, v34
	v_and_b32_e32 v34, 15, v36
	v_and_b32_e32 v36, 15, v39
	v_and_b32_e32 v39, 15, v72
	v_and_b32_e32 v58, 15, v61
	v_and_b32_e32 v61, 15, v62
	v_and_b32_e32 v62, 15, v66
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v66, 10, v0
	v_and_b32_e32 v72, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v68, v68
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_and_b32_e32 v19, 15, v21
	v_and_b32_e32 v21, 15, v23
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	v_and_b32_e32 v33, 15, v35
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v37, 15, v40
	v_and_b32_e32 v38, 15, v41
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v41, 15, v43
	v_and_b32_e32 v42, 15, v44
	v_and_b32_e32 v43, 15, v45
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v45, 15, v47
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v48, 15, v51
	v_and_b32_e32 v49, 15, v50
	v_and_b32_e32 v50, 15, v53
	v_and_b32_e32 v51, 15, v52
	v_and_b32_e32 v52, 15, v54
	v_and_b32_e32 v53, 15, v55
	v_and_b32_e32 v54, 15, v56
	v_and_b32_e32 v55, 15, v73
	v_and_b32_e32 v56, 15, v57
	v_and_b32_e32 v57, 15, v60
	v_and_b32_e32 v60, 15, v74
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v73, 0x1800, v66
	v_lshlrev_b32_e32 v74, 6, v72
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v66, 15, v75
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v75, 6, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v73, 0, v73, v74
	v_and_or_b32 v5, 0x1b00, v75, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_and_b32_e32 v59, 15, v59
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v73, v73, v7, v6
	v_xad_u32 v74, v5, v142, 0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v63, 15, v65
	v_and_b32_e32 v64, 15, v64
	v_and_b32_e32 v65, 15, v67
	v_and_b32_e32 v67, 15, v68
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v73, v[8:11]
	ds_store_b128 v73, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v74
	ds_load_b128 v[16:19], v74 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[24:27]
	ds_store_b128 v73, v[32:35] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v74
	ds_load_b128 v[32:35], v74 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[40:43]
	ds_store_b128 v73, v[48:51] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v74
	ds_load_b128 v[48:51], v74 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[56:59]
	ds_store_b128 v73, v[64:67] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v74
	ds_load_b128 v[64:67], v74 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[12:15]
	ds_store_b128 v73, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v74
	ds_load_b128 v[20:23], v74 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[28:31]
	ds_store_b128 v73, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v74
	ds_load_b128 v[36:39], v74 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[44:47]
	ds_store_b128 v73, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v74
	ds_load_b128 v[52:55], v74 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v68, 15, v69
	v_and_b32_e32 v69, 15, v70
	v_and_b32_e32 v70, 15, v71
	v_and_b32_e32 v71, 15, v76
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[60:63]
	ds_store_b128 v73, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v74
	ds_load_b128 v[68:71], v74 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s7, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v16, 4, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s7, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v6, v17, 4, v6
	v_lshl_or_b32 v7, v18, 4, v7
	v_lshl_or_b32 v8, v19, 4, v8
	v_lshl_or_b32 v9, v20, 4, v9
	v_lshl_or_b32 v10, v21, 4, v10
	v_lshl_or_b32 v11, v22, 4, v11
	v_lshl_or_b32 v12, v23, 4, v12
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v35, 3, v141
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v36, s0, v140
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v32, 4, v24
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v35
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v12.l
	v_and_b16 v5.h, 0xff, v11.l
	v_lshlrev_b16 v6.l, 8, v10.l
	v_and_b16 v6.h, 0xff, v9.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v21, v48, 4, v40
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v28, v55, 4, v47
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v40, v38, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v2.l, 0xff, v15.l
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v4.l, 0xff, v13.l
	v_lshlrev_b16 v5.l, 8, v20.l
	v_and_b16 v5.h, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v22, v49, 4, v41
	v_lshl_or_b32 v23, v50, 4, v42
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v41, v36, s1, v38
	v_add3_u32 v42, v36, s2, v38
	v_add3_u32 v36, v36, s0, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s1, s25, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s24
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v24, v51, 4, v43
	v_lshl_or_b32 v25, v52, 4, v44
	v_lshl_or_b32 v26, v53, 4, v45
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v37, v70, 4, v62
	v_lshl_or_b32 v39, v71, 4, v63
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v40, s[0:3], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v28.l
	v_and_b16 v5.h, 0xff, v27.l
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v4.l, 0xff, v21.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	buffer_store_b64 v[7:8], v41, s[0:3], 0 offen
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v39.l
	v_and_b16 v5.h, 0xff, v37.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v29, v64, 4, v56
	v_lshl_or_b32 v30, v65, 4, v57
	v_lshl_or_b32 v31, v66, 4, v58
	v_lshl_or_b32 v32, v67, 4, v59
	v_lshl_or_b32 v33, v68, 4, v60
	v_lshl_or_b32 v34, v69, 4, v61
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.l, v6.h, v6.l
	v_or_b16 v10.h, v5.h, v5.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v5, 2, v72
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v3.l, 8, v30.l
	v_and_b16 v4.l, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	buffer_store_b64 v[7:8], v42, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v7, 2, v140
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v9.l, v4.l, v3.l
	v_or_b16 v10.l, v6.h, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v6, 0, v35
	v_mov_b16_e32 v2.l, v4.h
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v4, v5, v7, v35
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v0, 63, s34
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[9:10], v36, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s4, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s1, s27, 0xffff
	s_mov_b32 s0, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp64:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp65:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 255
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 255
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21216
; TotalNumSgprs: 42
; NumVgprs: 255
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 255
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x9b DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x75 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	366                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x75:0x2f DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp23                         ; DW_AT_low_pc
	.long	.Ltmp64-.Ltmp23                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x8a:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x96:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     255
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
