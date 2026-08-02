	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	v_lshlrev_b32_e32 v204, 4, v0
	v_lshlrev_b32_e32 v205, 1, v0
	v_lshlrev_b32_e32 v206, 5, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s6, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s8, s6
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s16, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s4, s9
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s2, s4
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s2, s5, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s4, s4, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s17, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s6, s15, 5
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v1, 4, v0
	v_dual_mov_b32 v3, s6 :: v_dual_lshlrev_b32 v4, 1, v0
	v_lshlrev_b32_e32 v2, 5, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow415
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v140, 0 :: v_dual_and_b32 v203, 7, v0
	v_or_b32_e32 v202, s2, v0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v165, 0
	v_mov_b32_e32 v177, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s24, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s17, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s16, 31
	v_dual_mov_b32 v177, 0 :: v_dual_and_b32 v2, 0xf0, v0
.Ltmp16:
	.loc	1 368 26 is_stmt 1              ; generate_amdgcn.py:368:26
	s_lshl_b32 s25, s3, 6
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 24
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s3, s1, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s17, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s0, s3, 27
.Ltmp21:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v5, 3, v2
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s1, s0
	s_mov_b32 s0, 0
.Ltmp23:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s26, s17, 8
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s27, s1, 5
	s_mov_b32 s1, s0
	s_mov_b32 s3, s0
.Ltmp25:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v3, 3, v0
	v_mul_lo_u32 v7, s15, v5
	v_dual_mov_b32 v165, 0 :: v_dual_and_b32 v10, 0xe00, v204
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s21, s7
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 15, v0
	v_mul_lo_u32 v3, s14, v3
	v_lshrrev_b32_e32 v15, 6, v0
	v_dual_mov_b32 v157, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v6, 4, v1
	v_or_b32_e32 v12, s24, v1
	v_lshl_or_b32 v5, v1, 9, v5
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v208, 0, v1
	v_mov_b32_e32 v197, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v201, v7, v6, s2
	s_mov_b32 s2, s0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v4, 3, v203
	v_and_b32_e32 v9, 0x60, v206
	v_or_b32_e32 v14, 32, v12
	v_mul_lo_u32 v209, v12, s27
	v_add_nc_u32_e32 v213, 0, v2
	v_add3_u32 v207, v3, v4, s24
	v_bfe_i32 v3, v0, 2, 1
	v_bfe_i32 v4, v0, 3, 1
	v_mul_lo_u32 v211, v14, s27
	v_and_b32_e32 v14, 2, v15
	v_lshlrev_b32_e32 v8, 3, v0
	v_and_b32_e32 v3, 0x90, v3
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v4, 0x110, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v14, 0, v14
	v_or_b32_e32 v1, 0x3f0, v0
	v_xor_b32_e32 v3, v3, v4
	v_xor_b32_e32 v4, 0x90, v5
	v_xor_b32_e32 v11, 0x110, v5
	v_dual_mov_b32 v178, 0 :: v_dual_and_b32 v15, 28, v205
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v3, v9, v10, v3
	v_or_b32_e32 v10, 16, v12
	v_or_b32_e32 v9, 0x7f0, v0
	v_mov_b32_e32 v189, 0
	v_mov_b32_e32 v153, 0
	v_xor_b32_e32 v13, 16, v3
	v_mul_lo_u32 v210, v10, s27
	v_or_b32_e32 v10, 48, v12
	v_lshlrev_b32_e32 v12, 2, v0
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v215, 0, v8
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v216, 0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v212, v10, s27
	v_and_b32_e32 v10, 0x1c0, v12
	v_and_b32_e32 v12, 32, v206
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v217, 0, v4
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v219, 0, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v10, v14, v10, v12
	v_add3_u32 v12, v213, v2, v12
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v221, 0, v3
	v_mov_b32_e32 v8, s7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_add_u32 v214, s14, 5, v207
	v_dual_mov_b32 v181, 0 :: v_dual_add_nc_u32 v218, 0, v11
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v220, 0, v9
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v222, 0, v13
	v_dual_mov_b32 v7, s6 :: v_dual_mov_b32 v6, s5
	v_dual_mov_b32 v5, s4 :: v_dual_mov_b32 v4, s3
	v_dual_mov_b32 v3, s2 :: v_dual_mov_b32 v2, s1
	v_mov_b32_e32 v1, s0
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v223, v10, v15
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v224, v12, v15
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v156, 0
	v_mov_b32_e32 v188, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v184, 0
	v_mov_b32_e32 v148, 0
	v_mov_b32_e32 v176, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v172, 0
	v_mov_b32_e32 v140, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s28, s15, 5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s1, s0, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s1, s1, s25
	v_mad_u64_u32 v[13:14], null, s1, s15, v[201:202]
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s2, s1, s14
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v14, s15, v13
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	buffer_load_b128 v[9:12], v13, s[20:23], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v17, s28, v13
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	buffer_load_b128 v[13:16], v14, s[20:23], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v13, v9, 0x5010400
	v_perm_b32 v19, v13, v9, 0x7030602
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v13, s15, v17
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v20, v14, v10, 0x5010400
	v_perm_b32 v21, v14, v10, 0x7030602
	v_perm_b32 v22, v15, v11, 0x5010400
	v_perm_b32 v23, v15, v11, 0x7030602
	v_perm_b32 v24, v16, v12, 0x5010400
	v_perm_b32 v25, v16, v12, 0x7030602
	s_clause 0x1
	buffer_load_b128 v[9:12], v17, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	v_lshrrev_b32_e32 v17, 24, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v17.l, 8, v17.l
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v13, v9, 0x5010400
	v_perm_b32 v27, v13, v9, 0x7030602
	.loc	1 372 34 is_stmt 1              ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v9, s2, v207
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v28, v14, v10, 0x5010400
	v_perm_b32 v29, v14, v10, 0x7030602
	v_perm_b32 v30, v15, v11, 0x5010400
	v_perm_b32 v31, v15, v11, 0x7030602
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[9:10], v9, s[16:19], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v11, 24, v19
	v_perm_b32 v32, v16, v12, 0x5010400
	v_perm_b32 v33, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v12, 24, v20
	v_lshrrev_b32_e32 v13, 24, v21
	v_lshlrev_b16 v11.l, 8, v11.l
	v_lshrrev_b32_e32 v14, 24, v22
	v_lshrrev_b32_e32 v15, 24, v23
	v_lshlrev_b16 v12.l, 8, v12.l
	v_lshlrev_b16 v13.l, 8, v13.l
	v_lshrrev_b32_e32 v16, 24, v24
	v_lshlrev_b16 v14.l, 8, v14.l
	v_lshlrev_b16 v15.l, 8, v15.l
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b16 v16.l, 8, v16.l
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v215, v[9:10] offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v9, 8, v18
	v_and_b16 v9.h, 0xff, v18.l
	v_lshrrev_b32_e32 v10, 24, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v18.h
	v_lshrrev_b32_e32 v18, 24, v28
	v_or_b16 v9.h, v9.h, v10.l
	v_lshrrev_b32_e32 v10, 8, v19
	v_and_b16 v10.h, 0xff, v19.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v10.l, 8, v10.l
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v19.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v10.h, v10.h, v11.l
	v_lshrrev_b32_e32 v11, 8, v20
	v_and_b16 v11.h, 0xff, v20.l
	v_lshlrev_b16 v11.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v20.h
	v_or_b16 v11.h, v11.h, v12.l
	v_lshrrev_b32_e32 v12, 8, v21
	v_and_b16 v12.h, 0xff, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v12.l, 8, v12.l
	v_or_b16 v12.l, v12.h, v12.l
	v_and_b16 v12.h, 0xff, v21.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v12.h, v12.h, v13.l
	v_lshrrev_b32_e32 v13, 8, v22
	v_and_b16 v13.h, 0xff, v22.l
	v_lshlrev_b16 v13.l, 8, v13.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v13.l, v13.h, v13.l
	ds_store_b16 v216, v9
	ds_store_b16_d16_hi v216, v9 offset:32
	ds_store_b16 v216, v10 offset:64
	ds_store_b16_d16_hi v216, v10 offset:96
	ds_store_b16 v217, v11
	ds_store_b16_d16_hi v217, v11 offset:32
	ds_store_b16 v217, v12 offset:64
	ds_store_b16_d16_hi v217, v12 offset:96
	ds_store_b16 v218, v13
	v_add_nc_u32_e32 v9, s2, v214
	v_and_b16 v13.h, 0xff, v22.h
	v_and_b16 v10.l, 0xff, v27.l
	v_and_b16 v10.h, 0xff, v27.h
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s2, s1, 5
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[11:12], v9, s[16:19], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v13.h, v13.h, v14.l
	v_lshrrev_b32_e32 v14, 8, v23
	v_and_b16 v14.h, 0xff, v23.l
	v_and_b16 v9.l, 0xff, v26.l
	v_and_b16 v9.h, 0xff, v26.h
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s3, s2, s15
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v14.l, 8, v14.l
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_or_b32 s1, s1, 32
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s2, s27
	s_cselect_b32 vcc_lo, -1, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v14.l, v14.h, v14.l
	v_and_b16 v14.h, 0xff, v23.h
	ds_store_b16_d16_hi v218, v13 offset:32
	v_lshrrev_b32_e32 v13, 8, v26
	v_lshlrev_b16 v13.h, 8, v18.l
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s1, 5
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v14.h, v14.h, v15.l
	v_lshrrev_b32_e32 v15, 8, v24
	v_and_b16 v15.h, 0xff, v24.l
	ds_store_b16 v218, v14 offset:64
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s1, s27
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v218, v14 offset:96
	v_lshlrev_b16 v15.l, 8, v15.l
	v_lshrrev_b32_e32 v14, 24, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v15.l, v15.h, v15.l
	v_and_b16 v15.h, 0xff, v24.h
	v_or_b16 v15.h, v15.h, v16.l
	v_lshrrev_b32_e32 v16, 8, v25
	v_and_b16 v16.h, 0xff, v25.l
	ds_store_b16 v216, v15 offset:384
	v_lshlrev_b16 v16.l, 8, v16.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v16.l, v16.h, v16.l
	v_and_b16 v16.h, 0xff, v25.h
	ds_store_b16_d16_hi v216, v15 offset:416
	v_lshrrev_b32_e32 v15, 8, v27
	v_or_b16 v16.h, v16.h, v17.l
	ds_store_b16 v216, v16 offset:448
	v_lshrrev_b32_e32 v17, 8, v28
	ds_store_b16_d16_hi v216, v16 offset:480
	v_lshrrev_b32_e32 v16, 24, v27
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v215, v[11:12] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v11.h, 8, v13.l
	v_lshlrev_b16 v12.h, 8, v15.l
	v_and_b16 v11.l, 0xff, v28.l
	v_lshlrev_b16 v12.l, 8, v14.l
	v_lshrrev_b32_e32 v14, 8, v29
	v_or_b16 v9.l, v9.l, v11.h
	v_and_b16 v11.h, 0xff, v28.h
	v_or_b16 v10.l, v10.l, v12.h
	v_lshlrev_b16 v12.h, 8, v16.l
	v_lshrrev_b32_e32 v15, 24, v29
	v_lshlrev_b16 v13.l, 8, v17.l
	v_lshrrev_b32_e32 v16, 8, v30
	v_or_b16 v9.h, v9.h, v12.l
	v_and_b16 v12.l, 0xff, v29.l
	v_or_b16 v10.h, v10.h, v12.h
	v_and_b16 v12.h, 0xff, v29.h
	v_or_b16 v11.l, v11.l, v13.l
	v_and_b16 v13.l, 0xff, v30.l
	v_or_b16 v11.h, v11.h, v13.h
	v_lshlrev_b16 v13.h, 8, v14.l
	v_lshrrev_b32_e32 v17, 24, v30
	v_lshlrev_b16 v14.l, 8, v15.l
	v_lshlrev_b16 v14.h, 8, v16.l
	v_lshrrev_b32_e32 v15, 8, v31
	v_or_b16 v12.l, v12.l, v13.h
	v_and_b16 v13.h, 0xff, v30.h
	v_or_b16 v12.h, v12.h, v14.l
	v_and_b16 v14.l, 0xff, v31.l
	v_or_b16 v13.l, v13.l, v14.h
	v_lshlrev_b16 v14.h, 8, v17.l
	v_lshrrev_b32_e32 v16, 24, v31
	v_lshlrev_b16 v15.l, 8, v15.l
	v_lshrrev_b32_e32 v17, 8, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v13.h, v13.h, v14.h
	v_and_b16 v14.h, 0xff, v31.h
	v_or_b16 v14.l, v14.l, v15.l
	v_lshlrev_b16 v15.l, 8, v16.l
	v_lshlrev_b16 v15.h, 8, v17.l
	v_lshrrev_b32_e32 v16, 24, v32
	v_lshrrev_b32_e32 v17, 24, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v14.h, v14.h, v15.l
	v_and_b16 v15.l, 0xff, v32.l
	v_lshlrev_b16 v16.l, 8, v16.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v17.l, 8, v17.l
	v_or_b16 v15.l, v15.l, v15.h
	v_and_b16 v15.h, 0xff, v32.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v15.h, v15.h, v16.l
	v_lshrrev_b32_e32 v16, 8, v33
	v_and_b16 v16.h, 0xff, v33.l
	v_lshlrev_b16 v16.l, 8, v16.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v16.l, v16.h, v16.l
	v_and_b16 v16.h, 0xff, v33.h
	v_or_b16 v16.h, v16.h, v17.l
	ds_store_b16 v216, v9 offset:8192
	ds_store_b16_d16_hi v216, v9 offset:8224
	ds_store_b16 v216, v10 offset:8256
	ds_store_b16_d16_hi v216, v10 offset:8288
	ds_store_b16 v217, v11 offset:8192
	ds_store_b16_d16_hi v217, v11 offset:8224
	ds_store_b16 v217, v12 offset:8256
	ds_store_b16_d16_hi v217, v12 offset:8288
	ds_store_b16 v218, v13 offset:8192
	ds_store_b16_d16_hi v218, v13 offset:8224
	ds_store_b16 v218, v14 offset:8256
	ds_store_b16_d16_hi v218, v14 offset:8288
	ds_store_b16 v216, v15 offset:8576
	ds_store_b16_d16_hi v216, v15 offset:8608
	ds_store_b16 v216, v16 offset:8640
	ds_store_b16_d16_hi v216, v16 offset:8672
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v208 offset:17216
	ds_load_u8 v10, v208 offset:17152
	ds_load_u8 v11, v208 offset:17344
	ds_load_u8 v12, v208 offset:17280
	ds_load_u8 v13, v208 offset:16960
	ds_load_u8 v14, v208 offset:16896
	ds_load_u8 v15, v208 offset:17088
	ds_load_u8 v16, v208 offset:17024
	ds_load_u8 v17, v208 offset:16704
	ds_load_u8 v18, v208 offset:16640
	ds_load_u8 v19, v208 offset:16832
	ds_load_u8 v20, v208 offset:16768
	ds_load_u8 v21, v208 offset:16448
	ds_load_u8 v22, v208 offset:16384
	ds_load_u8 v23, v208 offset:16576
	ds_load_u8 v24, v208 offset:16512
	ds_load_u8 v25, v208 offset:18176
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[41:44], v221
	ds_load_b128 v[45:48], v222
	ds_load_b128 v[49:52], v221 offset:4096
	ds_load_b128 v[53:56], v222 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v208 offset:18240
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	v_lshl_or_b32 v12, v11, 16, v9
	ds_load_u8 v15, v208 offset:17984
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v16, v20, v19, 0xc0c0004
	v_lshl_or_b32 v11, v14, 16, v13
	ds_load_u8 v9, v208 offset:18368
	ds_load_u8 v13, v208 offset:18304
	v_perm_b32 v14, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v18, v22, v21, 0xc0c0004
	ds_load_u8 v19, v208 offset:18112
	ds_load_u8 v21, v208 offset:18048
	ds_load_u8 v17, v208 offset:17920
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v22, v25, v10, 0xc0c0004
	ds_load_u8 v10, v208 offset:17728
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v13, v9, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v21, v19, 0xc0c0004
	ds_load_u8 v21, v208 offset:17792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v17, v15, 0xc0c0004
	ds_load_u8 v17, v208 offset:17856
	ds_load_u8 v9, v208 offset:17664
	v_lshl_or_b32 v15, v19, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v9, v10, 0xc0c0004
	ds_load_u8 v9, v208 offset:17472
	ds_load_u8 v10, v208 offset:17408
	v_perm_b32 v17, v21, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v10, v9, 0xc0c0004
	ds_load_u8 v9, v208 offset:17600
	ds_load_u8 v10, v208 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v10, v9, 0xc0c0004
	v_lshl_or_b32 v10, v16, 16, v14
	v_lshl_or_b32 v9, v20, 16, v18
	v_lshl_or_b32 v16, v13, 16, v22
	v_lshl_or_b32 v14, v17, 16, v23
	v_lshl_or_b32 v13, v24, 16, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[49:52], v[9:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v208 offset:17232
	ds_load_u8 v10, v208 offset:17168
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[13:16], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[53:56], v[13:16], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v208 offset:17360
	ds_load_u8 v11, v208 offset:17296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v208 offset:16976
	ds_load_u8 v12, v208 offset:16912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v208 offset:17104
	ds_load_u8 v13, v208 offset:17040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v208 offset:16720
	ds_load_u8 v10, v208 offset:16656
	v_lshl_or_b32 v11, v13, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v208 offset:16848
	ds_load_u8 v13, v208 offset:16784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v208 offset:16400
	ds_load_u8 v13, v208 offset:16464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v13, 0xc0c0004
	ds_load_u8 v13, v208 offset:16592
	ds_load_u8 v14, v208 offset:16528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v13, 16, v9
	ds_load_u8 v13, v208 offset:18256
	ds_load_u8 v14, v208 offset:18192
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[49:52], v[9:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v208 offset:17248
	ds_load_u8 v10, v208 offset:17184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v208 offset:18384
	ds_load_u8 v15, v208 offset:18320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v208 offset:17376
	ds_load_u8 v11, v208 offset:17312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v208 offset:18000
	ds_load_u8 v16, v208 offset:17936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v208 offset:16992
	ds_load_u8 v12, v208 offset:16928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v208 offset:18128
	ds_load_u8 v17, v208 offset:18064
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	ds_load_u8 v13, v208 offset:17744
	ds_load_u8 v14, v208 offset:17680
	v_lshl_or_b32 v15, v17, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v208 offset:17872
	ds_load_u8 v17, v208 offset:17808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v13, v208 offset:17488
	ds_load_u8 v17, v208 offset:17424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v17, v13, 0xc0c0004
	ds_load_u8 v17, v208 offset:17616
	ds_load_u8 v18, v208 offset:17552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v17, 16, v13
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[13:16], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[53:56], v[13:16], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v12, v208 offset:17120
	ds_load_u8 v13, v208 offset:17056
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v234, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v208 offset:16736
	ds_load_u8 v10, v208 offset:16672
	v_lshl_or_b32 v11, v13, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v208 offset:16864
	ds_load_u8 v13, v208 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v208 offset:16416
	ds_load_u8 v13, v208 offset:16480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v13, 0xc0c0004
	ds_load_u8 v13, v208 offset:16608
	ds_load_u8 v14, v208 offset:16544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v13, 16, v9
	ds_load_u8 v13, v208 offset:18272
	ds_load_u8 v14, v208 offset:18208
	v_wmma_i32_16x16x16_iu8 v[121:128], v[49:52], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v208 offset:18400
	ds_load_u8 v15, v208 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v208 offset:18016
	ds_load_u8 v16, v208 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v208 offset:18144
	ds_load_u8 v17, v208 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	ds_load_u8 v13, v208 offset:17760
	ds_load_u8 v14, v208 offset:17696
	v_lshl_or_b32 v15, v17, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v208 offset:17888
	ds_load_u8 v17, v208 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v13, v208 offset:17504
	ds_load_u8 v17, v208 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v17, v13, 0xc0c0004
	ds_load_u8 v17, v208 offset:17632
	ds_load_u8 v18, v208 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v17, 16, v13
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[9:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v208 offset:17008
	ds_load_u8 v10, v208 offset:16944
	v_wmma_i32_16x16x16_iu8 v[121:128], v[53:56], v[13:16], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[13:16], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v235, v121
	v_cvt_f32_i32_e32 v233, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v122, v123
	v_cvt_f32_i32_e32 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v208 offset:17136
	ds_load_u8 v11, v208 offset:17072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v208 offset:16752
	ds_load_u8 v12, v208 offset:16688
	v_lshl_or_b32 v59, v10, 16, v9
	ds_load_u8 v9, v208 offset:16432
	ds_load_u8 v10, v208 offset:16496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v208 offset:16880
	ds_load_u8 v13, v208 offset:16816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v12, 16, v11
	ds_load_u8 v10, v208 offset:16624
	ds_load_u8 v11, v208 offset:16560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v57, v10, 16, v9
	ds_load_u8 v9, v208 offset:17264
	ds_load_u8 v10, v208 offset:17200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v219 offset:16384
	ds_load_u8 v11, v208 offset:17328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v10, 16, v9
	ds_load_u8 v9, v208 offset:18032
	ds_load_u8 v10, v208 offset:17968
	v_wmma_i32_16x16x16_iu8 v[129:136], v[49:52], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v208 offset:18160
	ds_load_u8 v11, v208 offset:18096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v208 offset:17776
	ds_load_u8 v12, v208 offset:17712
	v_lshl_or_b32 v63, v10, 16, v9
	ds_load_u8 v9, v208 offset:17520
	ds_load_u8 v10, v208 offset:17456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v208 offset:17904
	ds_load_u8 v13, v208 offset:17840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v12, 16, v11
	ds_load_u8 v10, v208 offset:17648
	ds_load_u8 v11, v208 offset:17584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v61, v10, 16, v9
	ds_load_u8 v9, v208 offset:18288
	ds_load_u8 v10, v208 offset:18224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v220 offset:16384
	ds_load_u8 v11, v208 offset:18352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[57:60], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v41, v202, s3, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v42, v210, s2, 1
	v_add_lshl_u32 v43, v211, s2, 1
	v_add_lshl_u32 v44, v212, s2, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[61:64], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[129:136], v[53:56], v[61:64], v[129:136] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v121, v132
	v_cvt_f32_i32_e32 v113, v136
	v_cvt_f32_i32_e32 v132, v33
	v_cvt_f32_i32_e32 v136, v17
	v_cvt_f32_i32_e32 v33, v28
	v_cvt_f32_i32_e32 v123, v131
	v_cvt_f32_i32_e32 v131, v20
	v_cvt_f32_i32_e32 v28, v30
	v_cvt_f32_i32_e32 v20, v22
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v223, v41 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v41, v209, s2, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s2, s1, s15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x3
	buffer_load_u16 v239, v41, s[4:7], 0 offen
	buffer_load_u16 v238, v42, s[4:7], 0 offen
	buffer_load_u16 v237, v43, s[4:7], 0 offen
	buffer_load_u16 v236, v44, s[4:7], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v41, v208 offset:19264
	ds_load_u8 v42, v208 offset:19200
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[97:100], v221 offset:8192
	ds_load_b128 v[101:104], v222 offset:8192
	ds_load_b128 v[225:228], v221 offset:12288
	ds_load_b128 v[229:232], v222 offset:12288
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s0, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s0, s26
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v208 offset:19392
	ds_load_u8 v43, v208 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v208 offset:19008
	ds_load_u8 v44, v208 offset:18944
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v208 offset:18752
	ds_load_u8 v42, v208 offset:18688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v208 offset:19136
	ds_load_u8 v45, v208 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v44, 16, v43
	ds_load_u8 v42, v208 offset:18880
	ds_load_u8 v43, v208 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v208 offset:18496
	ds_load_u8 v42, v208 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v208 offset:18624
	ds_load_u8 v43, v208 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	ds_load_u8 v41, v208 offset:20288
	ds_load_u8 v42, v208 offset:20224
	v_wmma_i32_16x16x16_iu8 v[49:56], v[225:228], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v208 offset:20416
	ds_load_u8 v43, v208 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v208 offset:20032
	ds_load_u8 v44, v208 offset:19968
	v_lshl_or_b32 v64, v42, 16, v41
	ds_load_u8 v41, v208 offset:19776
	ds_load_u8 v42, v208 offset:19712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v208 offset:20160
	ds_load_u8 v45, v208 offset:20096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v44, 16, v43
	ds_load_u8 v42, v208 offset:19904
	ds_load_u8 v43, v208 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v62, v42, 16, v41
	ds_load_u8 v41, v208 offset:19520
	ds_load_u8 v42, v208 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v208 offset:19648
	ds_load_u8 v43, v208 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[97:100], v[57:60], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v208 offset:19280
	ds_load_u8 v58, v208 offset:19216
	v_wmma_i32_16x16x16_iu8 v[49:56], v[229:232], v[61:64], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[101:104], v[61:64], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v17, v55
	v_cvt_f32_i32_e32 v22, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v208 offset:19408
	ds_load_u8 v59, v208 offset:19344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v208 offset:19024
	ds_load_u8 v60, v208 offset:18960
	v_lshl_or_b32 v76, v58, 16, v57
	ds_load_u8 v57, v208 offset:18768
	ds_load_u8 v58, v208 offset:18704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v208 offset:19152
	ds_load_u8 v61, v208 offset:19088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v60, 16, v59
	ds_load_u8 v58, v208 offset:18896
	ds_load_u8 v59, v208 offset:18832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v74, v58, 16, v57
	ds_load_u8 v57, v208 offset:18448
	ds_load_u8 v58, v208 offset:18512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v208 offset:18640
	ds_load_u8 v59, v208 offset:18576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v58, 16, v57
	ds_load_u8 v57, v208 offset:20304
	ds_load_u8 v58, v208 offset:20240
	v_wmma_i32_16x16x16_iu8 v[65:72], v[225:228], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v208 offset:20432
	ds_load_u8 v59, v208 offset:20368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v208 offset:20048
	ds_load_u8 v60, v208 offset:19984
	v_lshl_or_b32 v80, v58, 16, v57
	ds_load_u8 v57, v208 offset:19792
	ds_load_u8 v58, v208 offset:19728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v208 offset:20176
	ds_load_u8 v61, v208 offset:20112
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v60, 16, v59
	ds_load_u8 v58, v208 offset:19920
	ds_load_u8 v59, v208 offset:19856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v78, v58, 16, v57
	ds_load_u8 v57, v208 offset:19536
	ds_load_u8 v58, v208 offset:19472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v208 offset:19664
	ds_load_u8 v59, v208 offset:19600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[97:100], v[73:76], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v73, v208 offset:19296
	ds_load_u8 v74, v208 offset:19232
	v_wmma_i32_16x16x16_iu8 v[65:72], v[229:232], v[77:80], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[77:80], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v30, v68
	v_cvt_f32_i32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v62, v62
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v208 offset:19424
	ds_load_u8 v75, v208 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v208 offset:19040
	ds_load_u8 v76, v208 offset:18976
	v_lshl_or_b32 v92, v74, 16, v73
	ds_load_u8 v73, v208 offset:18784
	ds_load_u8 v74, v208 offset:18720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v208 offset:19168
	ds_load_u8 v77, v208 offset:19104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v76, 16, v75
	ds_load_u8 v74, v208 offset:18912
	ds_load_u8 v75, v208 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v90, v74, 16, v73
	ds_load_u8 v73, v208 offset:18464
	ds_load_u8 v74, v208 offset:18528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v74, 0xc0c0004
	ds_load_u8 v74, v208 offset:18656
	ds_load_u8 v75, v208 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v74, 16, v73
	ds_load_u8 v73, v208 offset:20320
	ds_load_u8 v74, v208 offset:20256
	v_wmma_i32_16x16x16_iu8 v[81:88], v[225:228], v[89:92], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v208 offset:20448
	ds_load_u8 v75, v208 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v208 offset:20064
	ds_load_u8 v76, v208 offset:20000
	v_lshl_or_b32 v96, v74, 16, v73
	ds_load_u8 v73, v208 offset:19808
	ds_load_u8 v74, v208 offset:19744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v208 offset:20192
	ds_load_u8 v77, v208 offset:20128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v76, 16, v75
	ds_load_u8 v74, v208 offset:19936
	ds_load_u8 v75, v208 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v94, v74, 16, v73
	ds_load_u8 v73, v208 offset:19552
	ds_load_u8 v74, v208 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v208 offset:19680
	ds_load_u8 v75, v208 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v74, 16, v73
	v_wmma_i32_16x16x16_iu8 v[73:80], v[97:100], v[89:92], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v89, v208 offset:19056
	ds_load_u8 v90, v208 offset:18992
	v_wmma_i32_16x16x16_iu8 v[81:88], v[229:232], v[93:96], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[101:104], v[93:96], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v55, v86
	v_cvt_f32_i32_e32 v86, v46
	v_cvt_f32_i32_e32 v56, v87
	v_cvt_f32_i32_e32 v87, v47
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v208 offset:19184
	ds_load_u8 v91, v208 offset:19120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v208 offset:18800
	ds_load_u8 v92, v208 offset:18736
	v_lshl_or_b32 v242, v90, 16, v89
	ds_load_u8 v89, v208 offset:18480
	ds_load_u8 v90, v208 offset:18544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v208 offset:18928
	ds_load_u8 v93, v208 offset:18864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v89, v90, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v241, v92, 16, v91
	ds_load_u8 v90, v208 offset:18672
	ds_load_u8 v91, v208 offset:18608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_lshl_or_b32 v240, v90, 16, v89
	ds_load_u8 v89, v208 offset:19312
	ds_load_u8 v90, v208 offset:19248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v219 offset:18432
	ds_load_u8 v91, v208 offset:19376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v243, v90, 16, v89
	ds_load_u8 v89, v208 offset:20080
	ds_load_u8 v90, v208 offset:20016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v208 offset:20208
	ds_load_u8 v91, v208 offset:20144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v208 offset:19824
	ds_load_u8 v92, v208 offset:19760
	v_lshl_or_b32 v246, v90, 16, v89
	ds_load_u8 v89, v208 offset:19568
	ds_load_u8 v90, v208 offset:19504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v208 offset:19952
	ds_load_u8 v93, v208 offset:19888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v245, v92, 16, v91
	ds_load_u8 v90, v208 offset:19696
	ds_load_u8 v91, v208 offset:19632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_lshl_or_b32 v244, v90, 16, v89
	ds_load_u8 v89, v208 offset:20336
	ds_load_u8 v90, v208 offset:20272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v220 offset:18432
	ds_load_u8 v91, v208 offset:20400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v247, v90, 16, v89
	v_wmma_i32_16x16x16_iu8 v[89:96], v[97:100], v[240:243], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[101:104], v[244:247], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[225:228], v[240:243], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v228, v107
	v_cvt_f32_i32_e32 v227, v116
	v_cvt_f32_i32_e32 v116, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[229:232], v[244:247], v[97:104] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v232, v105
	v_cvt_f32_i32_e32 v105, v112
	v_cvt_f32_i32_e32 v112, v118
	v_cvt_f32_i32_e32 v107, v120
	v_cvt_f32_i32_e32 v120, v124
	v_cvt_f32_i32_e32 v118, v125
	v_cvt_f32_i32_e32 v125, v129
	v_cvt_f32_i32_e32 v124, v130
	v_cvt_f32_i32_e32 v117, v134
	v_cvt_f32_i32_e32 v134, v18
	v_cvt_f32_i32_e32 v18, v24
	v_cvt_f32_i32_e32 v241, v11
	v_cvt_f32_i32_e32 v130, v13
	v_cvt_f32_i32_e32 v129, v14
	v_cvt_f32_i32_e32 v11, v15
	v_cvt_f32_i32_e32 v13, v51
	v_cvt_f32_i32_e32 v14, v52
	v_cvt_f32_i32_e32 v15, v53
	v_cvt_f32_i32_e32 v24, v66
	v_cvt_f32_i32_e32 v51, v82
	v_cvt_f32_i32_e32 v52, v83
	v_cvt_f32_i32_e32 v53, v84
	v_cvt_f32_i32_e32 v66, v97
	v_cvt_f32_i32_e32 v82, v42
	v_cvt_f32_i32_e32 v83, v43
	v_cvt_f32_i32_e32 v84, v44
	v_cvt_f32_i32_e32 v97, v41
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[41:44], v213 offset:20480
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v225, v109
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v128
	v_cvt_f32_i32_e32 v128, v34
	v_cvt_f32_i32_e32 v34, v40
	v_cvt_f32_i32_e32 v40, v71
	v_cvt_f32_i32_e32 v71, v102
	v_cvt_f32_i32_e32 v226, v108
	v_cvt_f32_i32_e32 v231, v114
	v_cvt_f32_i32_e32 v108, v119
	v_cvt_f32_i32_e32 v119, v133
	v_cvt_f32_i32_e32 v114, v135
	v_cvt_f32_i32_e32 v133, v25
	v_cvt_f32_i32_e32 v135, v19
	v_cvt_f32_i32_e32 v240, v10
	v_cvt_f32_i32_e32 v242, v12
	v_cvt_f32_i32_e32 v10, v16
	v_cvt_f32_i32_e32 v243, v9
	v_cvt_f32_i32_e32 v9, v49
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v46, 16, v41
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v102, 16, v239
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v12, v50
	v_cvt_f32_i32_e32 v16, v54
	v_cvt_f32_i32_e32 v49, v72
	v_cvt_f32_i32_e32 v50, v81
	v_cvt_f32_i32_e32 v54, v85
	v_cvt_f32_i32_e32 v72, v103
	v_cvt_f32_i32_e32 v81, v104
	v_cvt_f32_i32_e32 v85, v45
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v45, v132, v102 :: v_dual_lshlrev_b32 v104, 16, v237
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v103, 16, v238
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v132, 16, v236
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v229, v115
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v177, v45, v46
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v115, v126
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v45, v133, v103
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v126, v36
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v38, v27
	v_cvt_f32_i32_e32 v230, v106
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v178, v45, v46 :: v_dual_mul_f32 v45, v136, v104
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v106, v111
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v38, v103, v38
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v111, v127
	v_cvt_f32_i32_e32 v127, v35
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v179, v45, v46
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v45, v243, v132
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v35, v39
	v_cvt_f32_i32_e32 v39, v26
	v_cvt_f32_i32_e32 v26, v32
	v_cvt_f32_i32_e32 v32, v70
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v180, v45, v46
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v45, v102, v128 :: v_dual_lshlrev_b32 v46, 16, v42
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v70, v101
	v_cvt_f32_i32_e32 v101, v57
	v_cvt_f32_i32_e32 v25, v67
	v_cvt_f32_i32_e32 v67, v98
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v165, v45, v46
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v45, 16, v43
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v68, v99
	v_cvt_f32_i32_e32 v98, v58
	v_cvt_f32_i32_e32 v99, v59
	v_cvt_f32_i32_e32 v27, v31
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v198, v38, v45
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v38, v104, v135
	v_mul_f32_e32 v39, v103, v39
	v_mul_f32_e32 v33, v103, v33
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v31, v69
	v_cvt_f32_i32_e32 v69, v100
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v199, v38, v45
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v38, v132, v241
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v100, v60
	v_cvt_f32_i32_e32 v19, v23
	v_cvt_f32_i32_e32 v23, v65
	v_cvt_f32_i32_e32 v65, v88
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v200, v38, v45
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v38, v102, v126
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v166, v39, v46
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v39, v104, v134
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v88, v48
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v167, v39, v46
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v39, v132, v240
	v_dual_mul_f32 v37, v102, v37 :: v_dual_mul_f32 v10, v132, v10
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v168, v39, v46
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v46, v202, s2, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v39, v102, v127
	v_mul_f32_e32 v19, v104, v19
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v46, 0x80000000, v46 :: v_dual_fmac_f32 v197, v39, v45
	v_lshlrev_b32_e32 v39, 16, v44
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v45, v212, s1, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v20, v104, v20
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v162, v33, v39
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v33, v104, v131
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v161, v38, v39
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v38, v210, s1, 1
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v163, v33, v39
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v33, v132, v242
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v164, v33, v39
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v33, v209, s1, 1
	v_add_lshl_u32 v39, v211, s1, 1
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v57, v46, s[8:11], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x3
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	buffer_load_u16 v126, v45, s[4:7], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[45:48], v213 offset:20496
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v224, v57 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v213 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v29, v103, v29
	v_mul_f32_e32 v11, v132, v11
	v_dual_mul_f32 v23, v38, v23 :: v_dual_mul_f32 v82, v33, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v73, v73, v39
	v_mul_f32_e32 v97, v97, v33
	v_mul_f32_e32 v25, v38, v25
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v165, v82, v58 :: v_dual_mul_f32 v82, v33, v83
	v_fmac_f32_e32 v179, v73, v57
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v73, v39, v74
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v177, v97, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v197, v82, v59 :: v_dual_mul_f32 v82, v33, v84
	v_fmac_f32_e32 v167, v73, v58
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v73, v39, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v161, v82, v60 :: v_dual_mul_f32 v82, v101, v38
	v_fmac_f32_e32 v199, v73, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v73, v39, v76 :: v_dual_fmac_f32 v178, v82, v57
	v_dual_mul_f32 v82, v38, v98 :: v_dual_fmac_f32 v163, v73, v60
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v166, v82, v58
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v82, v38, v99
	v_mul_f32_e32 v74, v89, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v198, v82, v59
	v_dual_fmac_f32 v180, v74, v57 :: v_dual_mul_f32 v57, v73, v90
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v82, v38, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v168, v57, v58
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v57, v73, v91
	v_mul_f32_e32 v21, v104, v21
	v_mul_f32_e32 v13, v33, v13
	v_dual_mul_f32 v17, v33, v17 :: v_dual_fmac_f32 v162, v82, v60
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v200, v57, v59
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v57, v73, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v164, v57, v60 :: v_dual_lshlrev_b32 v57, 16, v45
	v_fmac_f32_e32 v195, v21, v57
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v21, v132, v130 :: v_dual_fmac_f32 v194, v29, v57
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v29, 16, v46
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v193, v37, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v37, v39, v56 :: v_dual_fmac_f32 v196, v21, v57
	v_mul_f32_e32 v21, v102, v36
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v159, v20, v29
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v20, v132, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v157, v21, v29
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v21, v103, v28 :: v_dual_fmac_f32 v160, v20, v29
	v_mul_f32_e32 v20, v102, v35
	v_dual_mul_f32 v28, v102, v232 :: v_dual_mul_f32 v35, v39, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v158, v21, v29 :: v_dual_lshlrev_b32 v21, 16, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v29, v38, v40
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v191, v19, v21
	v_dual_fmac_f32 v192, v11, v21 :: v_dual_mul_f32 v11, v102, v34
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v19, 16, v48
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v189, v20, v21 :: v_dual_mul_f32 v20, v103, v27
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v27, 0xffff0000, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v153, v11, v19
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v11, v103, v26 :: v_dual_fmac_f32 v190, v20, v21
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v156, v10, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v33, v85
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v26, 0xffff0000, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v154, v11, v19 :: v_dual_mul_f32 v11, v104, v18
	v_fmac_f32_e32 v155, v11, v19
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	ds_load_b128 v[18:21], v213 offset:20496
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v11, 0xffff0000, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v42, v73, v69 :: v_dual_fmac_f32 v193, v10, v18
	v_mul_f32_e32 v10, v33, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v157, v10, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v33, v87
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v189, v10, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v33, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v153, v10, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v38, v61
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v194, v10, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v38, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v158, v10, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v38, v63
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v190, v10, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v38, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v154, v10, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v39, v77
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v195, v10, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v39, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v159, v10, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v39, v79
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v191, v10, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v39, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v155, v10, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v73, v93
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v196, v10, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v73, v94
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v18, 0xffff0000, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v43, v73, v70 :: v_dual_fmac_f32 v160, v10, v19
	v_dual_mul_f32 v10, v73, v95 :: v_dual_and_b32 v19, 0xffff0000, v44
	v_mul_f32_e32 v44, v73, v71
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v192, v10, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v73, v96
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v20, 0xffff0000, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v45, v73, v72 :: v_dual_fmac_f32 v156, v10, v21
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v10, 0xffff0000, v41
	v_and_b32_e32 v21, 0xffff0000, v46
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v41, v73, v68
	v_dual_mul_f32 v46, v73, v81 :: v_dual_fmac_f32 v185, v28, v10
	v_mul_f32_e32 v28, v103, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v186, v28, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v28, v104, v235
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v187, v28, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v28, v132, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v188, v28, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v102, v230
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v149, v10, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v103, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v150, v10, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v104, v233
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v151, v10, v11 :: v_dual_mul_f32 v10, v132, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v152, v10, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v10, v102, v228 :: v_dual_mul_f32 v11, v103, v107
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v181, v10, v18 :: v_dual_mul_f32 v10, v103, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v138, v11, v27
	v_fmac_f32_e32 v182, v10, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v104, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v183, v10, v18 :: v_dual_mul_f32 v10, v132, v123
	v_fmac_f32_e32 v184, v10, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v102, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v145, v10, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v103, v227
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v146, v10, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v104, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v147, v10, v19 :: v_dual_mul_f32 v10, v132, v121
	v_fmac_f32_e32 v148, v10, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v102, v225
	v_mul_f32_e32 v19, v132, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v173, v10, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v103, v116
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v174, v10, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v104, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v175, v10, v20 :: v_dual_mul_f32 v10, v132, v119
	v_fmac_f32_e32 v176, v10, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v102, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v20, v33, v15 :: v_dual_fmac_f32 v141, v10, v21
	v_mul_f32_e32 v10, v103, v112
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v142, v10, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v104, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v143, v10, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v132, v117
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v144, v10, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v10, v102, v106 :: v_dual_mul_f32 v21, v33, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v169, v10, v26 :: v_dual_mul_f32 v10, v103, v108
	v_fmac_f32_e32 v170, v10, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v104, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v171, v10, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v132, v114
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v172, v10, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v10, v102, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v18, v104, v110 :: v_dual_fmac_f32 v137, v10, v27
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v139, v18, v27 :: v_dual_mul_f32 v18, v33, v9
	v_dual_fmac_f32 v140, v19, v27 :: v_dual_mul_f32 v19, v33, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v213 offset:20992
	v_mul_f32_e32 v27, v38, v31
	v_mul_f32_e32 v31, v39, v50
	v_mul_f32_e32 v22, v33, v22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v28, v38, v32 :: v_dual_fmac_f32 v187, v31, v9
	v_mul_f32_e32 v14, v33, v14
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v181, v13, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v33, v39, v52 :: v_dual_mul_f32 v26, v38, v30
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v149, v19, v10
	v_fmac_f32_e32 v145, v14, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[13:16], v213 offset:21008
	v_mul_f32_e32 v24, v38, v24
	v_mul_f32_e32 v34, v39, v53
	v_mul_f32_e32 v36, v39, v55
	v_mul_f32_e32 v30, v38, v49
	v_mul_f32_e32 v38, v39, v65
	v_dual_mul_f32 v40, v73, v67 :: v_dual_fmac_f32 v185, v18, v9
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v186, v23, v9
	v_fmac_f32_e32 v182, v25, v11
	v_dual_fmac_f32 v183, v33, v11 :: v_dual_fmac_f32 v146, v26, v12
	v_fmac_f32_e32 v184, v41, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v148, v42, v12 :: v_dual_fmac_f32 v171, v37, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v32, v39, v51 :: v_dual_fmac_f32 v147, v34, v12
	v_mul_f32_e32 v39, v73, v66
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v173, v20, v13
	v_fmac_f32_e32 v141, v21, v14
	v_fmac_f32_e32 v169, v17, v15
	v_dual_fmac_f32 v137, v22, v16 :: v_dual_fmac_f32 v150, v24, v10
	v_fmac_f32_e32 v174, v27, v13
	v_dual_fmac_f32 v170, v29, v15 :: v_dual_fmac_f32 v151, v32, v10
	v_dual_fmac_f32 v142, v28, v14 :: v_dual_fmac_f32 v175, v35, v13
	v_fmac_f32_e32 v139, v38, v16
	v_dual_fmac_f32 v143, v36, v14 :: v_dual_fmac_f32 v138, v30, v16
	v_fmac_f32_e32 v188, v39, v9
	v_fmac_f32_e32 v152, v40, v10
	v_fmac_f32_e32 v176, v43, v13
	v_fmac_f32_e32 v144, v44, v14
	v_fmac_f32_e32 v172, v45, v15
	v_fmac_f32_e32 v140, v46, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, s28 :: v_dual_mov_b32 v4, v205
	v_dual_mov_b32 v1, v204 :: v_dual_mov_b32 v2, v206
.LBB0_7:                                ; %._crit_edge
	.loc	1 450 23 is_stmt 1              ; generate_amdgcn.py:450:23
	s_mul_i32 s35, s24, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v5, 0xcf0, v1
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add_nc_u32_e32 v64, s35, v3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v3, 16, v0
	v_lshlrev_b32_e32 v0, 6, v0
	v_and_b32_e32 v2, 0x1c00, v2
	v_and_b32_e32 v1, 48, v1
	s_waitcnt lgkmcnt(0)
	v_and_or_b32 v4, v4, 64, v3
	v_lshlrev_b32_e32 v3, 2, v3
	v_and_or_b32 v0, 0x300, v0, v2
	s_barrier
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s15, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v4, v4, v5
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s67, s35, s15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v40, v0, v1, v3
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl1_add_u32 s66, s15, s35
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v65, s35, v202, 2
	v_lshl_or_b32 v4, v203, 13, v4
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s14, s15, 18
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v12, 0x2010, v40, 0
	v_xad_u32 v28, 0x6030, v40, 0
	v_xad_u32 v20, 0x4020, v40, 0
	v_add_nc_u32_e32 v5, 0, v4
	v_xad_u32 v4, v4, 32, 0
	v_xad_u32 v44, 0xa050, v40, 0
	v_xad_u32 v36, 0x8040, v40, 0
	ds_store_b128 v5, v[177:180]
	ds_store_b128 v5, v[197:200] offset:256
	ds_store_b128 v5, v[193:196] offset:512
	ds_store_b128 v5, v[189:192] offset:768
	ds_store_b128 v5, v[185:188] offset:4096
	ds_store_b128 v5, v[181:184] offset:4352
	ds_store_b128 v5, v[173:176] offset:4608
	ds_store_b128 v5, v[169:172] offset:4864
	ds_store_b128 v4, v[165:168]
	ds_store_b128 v4, v[161:164] offset:256
	ds_store_b128 v4, v[157:160] offset:512
	ds_store_b128 v4, v[153:156] offset:768
	ds_store_b128 v4, v[149:152] offset:4096
	ds_store_b128 v4, v[145:148] offset:4352
	ds_store_b128 v4, v[141:144] offset:4608
	ds_store_b128 v4, v[137:140] offset:4864
	v_add_nc_u32_e32 v4, 0, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v4
	ds_load_b128 v[4:7], v4 offset:128
	ds_load_b128 v[8:11], v12
	ds_load_b128 v[12:15], v12 offset:128
	ds_load_b128 v[16:19], v20
	ds_load_b128 v[20:23], v20 offset:128
	ds_load_b128 v[24:27], v28
	ds_load_b128 v[28:31], v28 offset:128
	v_xad_u32 v52, 0xc060, v40, 0
	v_xad_u32 v60, 0xe070, v40, 0
	ds_load_b128 v[40:43], v44
	ds_load_b128 v[44:47], v44 offset:128
	ds_load_b128 v[48:51], v52
	ds_load_b128 v[52:55], v52 offset:128
	ds_load_b128 v[56:59], v60
	ds_load_b128 v[32:35], v36
	ds_load_b128 v[36:39], v36 offset:128
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s65, s35, s0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v66, s67, v202, 2
	ds_load_b128 v[60:63], v60 offset:128
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s15, 5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v67, s66, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s2, s15, 6
	s_mul_i32 s3, s15, 7
	s_mul_i32 s4, s15, 9
	s_mul_i32 s5, s15, 10
	s_mul_i32 s6, s15, 11
	s_mul_i32 s7, s15, 12
	s_mul_i32 s8, s15, 13
	s_mul_i32 s9, s15, 14
	s_mul_i32 s10, s15, 15
	s_mul_i32 s11, s15, 17
	s_mul_i32 s16, s15, 19
	s_mul_i32 s17, s15, 20
	s_mul_i32 s18, s15, 21
	s_mul_i32 s19, s15, 22
	s_mul_i32 s20, s15, 23
	s_mul_i32 s21, s15, 24
	s_mul_i32 s22, s15, 25
	s_mul_i32 s23, s15, 26
	s_mul_i32 s24, s15, 27
	s_mul_i32 s25, s15, 28
	s_mul_i32 s26, s15, 29
	s_mul_i32 s27, s15, 30
	s_mul_i32 s28, s15, 31
	s_mul_i32 s29, s15, 33
	s_mul_i32 s30, s15, 34
	s_mul_i32 s31, s15, 35
	s_mul_i32 s34, s15, 36
	s_mul_i32 s68, s15, 37
	s_mul_i32 s69, s15, 38
	s_mul_i32 s70, s15, 39
	s_mul_i32 s71, s15, 40
	s_mul_i32 s72, s15, 41
	s_mul_i32 s73, s15, 42
	s_mul_i32 s74, s15, 43
	s_mul_i32 s75, s15, 44
	s_mul_i32 s76, s15, 45
	s_mul_i32 s77, s15, 46
	s_mul_i32 s78, s15, 47
	s_mul_i32 s79, s15, 48
	s_mul_i32 s80, s15, 49
	s_mul_i32 s81, s15, 50
	s_mul_i32 s82, s15, 51
	s_mul_i32 s83, s15, 52
	s_mul_i32 s84, s15, 53
	s_mul_i32 s85, s15, 54
	s_mul_i32 s86, s15, 55
	s_mul_i32 s87, s15, 56
	s_mul_i32 s88, s15, 57
	s_mul_i32 s89, s15, 58
	s_mul_i32 s90, s15, 59
	s_mul_i32 s91, s15, 60
	s_mul_i32 s92, s15, 61
	s_mul_i32 s93, s15, 62
	s_mul_i32 s94, s15, 63
	s_lshl2_add_u32 s64, s15, s35
	s_lshl3_add_u32 s60, s15, s35
	s_lshl4_add_u32 s52, s15, s35
	s_add_i32 s50, s35, s14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_add_lshl_u32 v68, s65, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s63, s35, s1
	s_add_i32 s62, s35, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v65, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v67, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v68, s[12:15], 0 offen
	v_add_lshl_u32 v0, s64, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s61, s35, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s63, v202, 2
	v_add_lshl_u32 v16, s62, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s59, s35, s4
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v24, s61, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s58, s35, s5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v65, s60, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s57, s35, s6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v32, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v40, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v48, v16, s[12:15], 0 offen
	buffer_atomic_add_f32 v56, v24, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v65, s[12:15], 0 offen
	v_add_lshl_u32 v0, s59, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s56, s35, s7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s58, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s55, s35, s8
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s57, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s54, s35, s9
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v16, s56, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s53, s35, s10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v24, s55, v202, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v8, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v36, v16, s[12:15], 0 offen
	buffer_atomic_add_f32 v44, v24, s[12:15], 0 offen
	v_add_lshl_u32 v0, s54, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s51, s35, s11
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s53, v202, 2
	v_add_lshl_u32 v8, s52, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s49, s35, s16
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v12, s51, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s48, s35, s17
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v16, s50, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s47, s35, s18
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	buffer_atomic_add_f32 v52, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v12, s[12:15], 0 offen
	buffer_atomic_add_f32 v17, v16, s[12:15], 0 offen
	v_add_lshl_u32 v0, s49, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s46, s35, s19
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s48, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s45, s35, s20
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s47, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s44, s35, s21
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s46, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s43, s35, s22
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v9, s45, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s42, s35, s23
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v33, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v41, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v49, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v57, v9, s[12:15], 0 offen
	v_add_lshl_u32 v0, s44, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s41, s35, s24
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s43, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s40, s35, s25
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s42, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s39, s35, s26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s41, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s38, s35, s27
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v9, s40, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s37, s35, s28
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v21, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v29, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v37, v9, s[12:15], 0 offen
	v_add_lshl_u32 v0, s39, v202, 2
	v_add_lshl_u32 v1, s38, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s36, s35, s29
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s37, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s33, s35, s30
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, v64, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s30, s35, s31
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s36, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s29, s35, s34
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v53, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v61, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v5, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v8, s[12:15], 0 offen
	v_add_lshl_u32 v0, s33, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s28, s35, s68
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s30, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s27, s35, s69
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s29, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s21, s35, s70
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s28, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s20, s35, s71
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s27, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s19, s35, s72
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v34, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v42, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v50, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s21, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s17, s35, s73
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s20, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s11, s35, s74
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s19, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s7, s35, s75
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s17, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s6, s35, s76
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s11, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s4, s35, s77
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s7, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s34, s35, s78
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s6, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s31, s35, s79
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s4, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s24, s35, s80
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s34, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s26, s35, s81
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s31, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s25, s35, s82
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v46, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v54, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v62, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s24, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s23, s35, s83
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s26, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s22, s35, s84
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s25, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s18, s35, s85
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v3, s23, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s16, s35, s86
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s22, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s10, s35, s87
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v27, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v35, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v43, v4, s[12:15], 0 offen
	v_add_lshl_u32 v0, s18, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s8, s35, s88
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s16, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s9, s35, s89
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s10, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s5, s35, s90
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v3, s8, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s3, s35, s91
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s9, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s1, s35, s92
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v59, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v4, s[12:15], 0 offen
	v_add_lshl_u32 v0, s5, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s2, s35, s93
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s3, v202, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s0, s35, s94
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s1, v202, 2
	v_add_lshl_u32 v3, s2, v202, 2
	v_add_lshl_u32 v4, s0, v202, 2
	s_clause 0x4
	buffer_atomic_add_f32 v31, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v39, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v47, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v55, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v63, v4, s[12:15], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 248
		.amdhsa_next_free_sgpr 95
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 248
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 95
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12672
; TotalNumSgprs: 97
; NumVgprs: 248
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 97
; NumVGPRsForWavesPerEU: 248
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     97
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     248
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
