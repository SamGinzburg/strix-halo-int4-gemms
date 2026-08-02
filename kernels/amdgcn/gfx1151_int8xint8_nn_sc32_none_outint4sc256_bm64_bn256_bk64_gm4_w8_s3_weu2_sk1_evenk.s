	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_and_b32_e32 v171, 3, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v106, 15, v0
	v_and_b32_e32 v174, 4, v0
	v_and_b32_e32 v175, 8, v0
	v_lshlrev_b32_e32 v177, 4, v0
	v_lshlrev_b32_e32 v176, 5, v171
	v_and_b32_e32 v178, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s28, 63
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
	s_lshr_b32 s11, s11, 26
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
	s_ashr_i32 s9, s9, 6
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
	s_sub_i32 s28, s2, s10
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s4, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s28, s8
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
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v4, 5, v171
	v_and_b32_e32 v1, 4, v0
	v_and_b32_e32 v2, 8, v0
	v_lshlrev_b32_e32 v5, 4, v0
.Ltmp15:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 16, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 15 is_stmt 0                ; generate_amdgcn.py:0:15
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow359
	s_load_b128 s[16:19], s[0:1], 0x20
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v107, 0xf0, v0
	v_dual_mov_b32 v115, 0 :: v_dual_lshlrev_b32 v108, 4, v106
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v163, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s30, s5, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v1, 3, v107
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp18:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s4, 31
.Ltmp19:
	.loc	1 374 34 is_stmt 1              ; generate_amdgcn.py:374:34
	s_mul_i32 s6, s30, s4
	v_mul_lo_u32 v4, s29, v1
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 26
	v_mul_lo_u32 v2, s4, v2
.Ltmp21:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s4, s1, 31
.Ltmp22:
	.loc	1 356 14 is_stmt 1              ; generate_amdgcn.py:356:14
	s_lshl_b32 s5, s28, 8
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s2, s0
.Ltmp24:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s0, s4, 27
	s_mov_b32 s4, 0
	v_or_b32_e32 v184, s5, v0
.Ltmp25:
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add3_u32 v105, v4, v108, s5
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	v_bfe_i32 v6, v0, 4, 1
	v_bfe_i32 v5, v0, 3, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v3, 3, v171
	v_mov_b32_e32 v163, 0
.Ltmp26:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s1, s0
	v_lshl_or_b32 v1, v106, 9, v1
	s_ashr_i32 s1, s1, 5
	v_add3_u32 v179, v2, v3, s6
	v_lshlrev_b32_e32 v2, 3, v0
	s_mov_b32 s6, s4
	v_and_b32_e32 v6, 0x90, v6
	v_bfe_i32 v3, v0, 2, 1
	v_and_b32_e32 v5, 0x110, v5
	v_and_b32_e32 v2, 0x778, v2
	v_lshlrev_b32_e32 v7, 5, v0
	v_and_b32_e32 v8, 0xe00, v177
	v_and_b32_e32 v3, 0x90, v3
	v_xor_b32_e32 v9, 0x90, v1
	v_xor_b32_e32 v2, v6, v2
	v_or_b32_e32 v6, s30, v106
	v_mov_b32_e32 v159, 0
	v_xor_b32_e32 v5, v3, v5
	v_and_or_b32 v3, 0x160, v7, v3
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v7, 32, v7
	v_or_b32_e32 v11, 16, v6
	v_or_b32_e32 v12, 32, v6
	v_or_b32_e32 v14, 48, v6
	v_mul_lo_u32 v180, v6, s1
	v_lshrrev_b32_e32 v6, 6, v0
	v_mul_lo_u32 v181, v11, s1
	v_mul_lo_u32 v182, v12, s1
	v_dual_mov_b32 v158, 0 :: v_dual_lshlrev_b32 v11, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v6, 2, v6
	v_lshlrev_b32_e32 v12, 1, v107
	v_or3_b32 v5, v8, v5, v176
	v_mul_lo_u32 v183, v14, s1
	v_dual_mov_b32 v148, 0 :: v_dual_and_b32 v11, 0x1c0, v11
	v_dual_mov_b32 v157, 0 :: v_dual_lshlrev_b32 v14, 1, v0
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v6, 0, v6
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v185, 0, v12
	v_xor_b32_e32 v8, 0x110, v1
	v_xor_b32_e32 v10, 16, v3
	v_xor_b32_e32 v13, 16, v5
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v14, 28, v14
	v_add3_u32 v11, v6, v11, v7
	v_add3_u32 v12, v185, v12, v7
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v186, 0, v2
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v187, 0, v1
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v189, 0, v8
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v190, 0, v3
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v192, 0, v5
	v_dual_mov_b32 v1, s4 :: v_dual_add_nc_u32 v188, 0, v9
	v_mov_b32_e32 v125, 0
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v191, 0, v10
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v193, 0, v13
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v194, v11, v14
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v195, v12, v14
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v115, 0
	v_mov_b32_e32 v118, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
.Ltmp27:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s2, 6
	s_lshl_b32 s2, s29, 5
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
.Ltmp28:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 368 21 is_stmt 1              ; generate_amdgcn.py:368:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s5, 6
	v_mad_u64_u32 v[13:14], null, s6, s29, v[105:106]
	s_or_b32 s5, s6, 32
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v14, s29, v13
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	buffer_load_b128 v[9:12], v13, s[24:27], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v17, s2, v13
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	buffer_load_b128 v[13:16], v14, s[24:27], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v18, s29, v17
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v13, v9, 0x5010400
	v_perm_b32 v20, v13, v9, 0x7030602
	v_perm_b32 v21, v14, v10, 0x5010400
	v_perm_b32 v22, v14, v10, 0x7030602
	v_perm_b32 v23, v15, v11, 0x5010400
	v_perm_b32 v24, v15, v11, 0x7030602
	v_perm_b32 v25, v16, v12, 0x5010400
	v_perm_b32 v26, v16, v12, 0x7030602
	s_clause 0x1
	buffer_load_b128 v[9:12], v17, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v18, s[24:27], 0 offen
	v_lshrrev_b32_e32 v17, 24, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v17.l, 8, v17.l
	s_waitcnt vmcnt(0)
	v_perm_b32 v27, v13, v9, 0x5010400
	v_perm_b32 v28, v13, v9, 0x7030602
	.loc	1 374 34 is_stmt 1              ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v9, s6, v179
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v29, v14, v10, 0x5010400
	v_perm_b32 v30, v14, v10, 0x7030602
	v_perm_b32 v31, v15, v11, 0x5010400
	v_perm_b32 v32, v15, v11, 0x7030602
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[9:10], v9, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v11, 24, v20
	v_perm_b32 v33, v16, v12, 0x5010400
	v_perm_b32 v34, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v12, 24, v21
	v_lshrrev_b32_e32 v13, 24, v22
	v_lshlrev_b16 v11.l, 8, v11.l
	v_lshrrev_b32_e32 v14, 24, v23
	v_lshrrev_b32_e32 v15, 24, v24
	v_lshlrev_b16 v12.l, 8, v12.l
	v_lshlrev_b16 v13.l, 8, v13.l
	v_lshrrev_b32_e32 v16, 24, v25
	v_lshlrev_b16 v14.l, 8, v14.l
	v_lshlrev_b16 v15.l, 8, v15.l
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s6, s6, 5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v16.l, 8, v16.l
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s7, s6, s29
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s6, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v186, v[9:10] offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v10, 8, v19
	v_and_b16 v9.l, 0xff, v19.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 24, v19
	v_or_b16 v9.l, v9.l, v9.h
	v_and_b16 v9.h, 0xff, v19.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v10.l, 8, v10.l
	v_lshrrev_b32_e32 v19, 24, v27
	v_or_b16 v9.h, v9.h, v10.l
	v_lshrrev_b32_e32 v10, 8, v20
	v_and_b16 v10.h, 0xff, v20.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v10.l, 8, v10.l
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v20.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v10.h, v10.h, v11.l
	v_lshrrev_b32_e32 v11, 8, v21
	v_and_b16 v11.h, 0xff, v21.l
	v_lshlrev_b16 v11.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v21.h
	v_or_b16 v11.h, v11.h, v12.l
	v_lshrrev_b32_e32 v12, 8, v22
	v_and_b16 v12.h, 0xff, v22.l
	ds_store_b16 v187, v9
	ds_store_b16_d16_hi v187, v9 offset:32
	ds_store_b16 v187, v10 offset:64
	ds_store_b16_d16_hi v187, v10 offset:96
	ds_store_b16 v188, v11
	ds_store_b16_d16_hi v188, v11 offset:32
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v9, s5, v179
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v10.h, 0xff, v28.h
	v_lshlrev_b16 v12.l, 8, v12.l
	v_and_b16 v10.l, 0xff, v28.l
	v_and_b16 v11.l, 0xff, v29.l
	v_and_b16 v11.h, 0xff, v29.h
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v12.l, v12.h, v12.l
	v_and_b16 v12.h, 0xff, v22.h
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v12.h, v12.h, v13.l
	v_lshrrev_b32_e32 v13, 8, v23
	v_and_b16 v13.h, 0xff, v23.l
	ds_store_b16 v188, v12 offset:64
	v_and_b16 v12.l, 0xff, v30.l
	ds_store_b16_d16_hi v188, v12 offset:96
	v_lshlrev_b16 v13.l, 8, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v13.l, v13.h, v13.l
	v_and_b16 v13.h, 0xff, v23.h
	v_or_b16 v13.h, v13.h, v14.l
	v_lshrrev_b32_e32 v14, 8, v24
	v_and_b16 v14.h, 0xff, v24.l
	ds_store_b16 v189, v13
	v_lshlrev_b16 v14.l, 8, v14.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v14.l, v14.h, v14.l
	v_and_b16 v14.h, 0xff, v24.h
	ds_store_b16_d16_hi v189, v13 offset:32
	v_lshrrev_b32_e32 v13, 8, v27
	v_or_b16 v14.h, v14.h, v15.l
	v_lshrrev_b32_e32 v15, 8, v25
	v_and_b16 v15.h, 0xff, v25.l
	ds_store_b16 v189, v14 offset:64
	v_lshlrev_b16 v12.h, 8, v13.l
	ds_store_b16_d16_hi v189, v14 offset:96
	v_lshlrev_b16 v15.l, 8, v15.l
	v_lshrrev_b32_e32 v14, 8, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v15.l, v15.h, v15.l
	v_and_b16 v15.h, 0xff, v25.h
	v_lshlrev_b16 v13.l, 8, v14.l
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v15.h, v15.h, v16.l
	v_lshrrev_b32_e32 v16, 8, v26
	v_and_b16 v16.h, 0xff, v26.l
	ds_store_b16 v187, v15 offset:384
	v_or_b16 v10.l, v10.l, v13.l
	v_and_b16 v13.l, 0xff, v31.l
	v_lshlrev_b16 v16.l, 8, v16.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v16.l, v16.h, v16.l
	v_and_b16 v16.h, 0xff, v26.h
	ds_store_b16_d16_hi v187, v15 offset:416
	v_lshrrev_b32_e32 v15, 24, v28
	v_or_b16 v16.h, v16.h, v17.l
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[17:18], v9, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v9.l, 0xff, v27.l
	ds_store_b16 v187, v16 offset:448
	v_and_b16 v9.h, 0xff, v27.h
	ds_store_b16_d16_hi v187, v16 offset:480
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v16, 8, v29
	v_or_b16 v9.l, v9.l, v12.h
	v_lshlrev_b16 v12.h, 8, v19.l
	v_lshrrev_b32_e32 v19, 24, v30
	v_lshlrev_b16 v13.h, 8, v15.l
	v_lshrrev_b32_e32 v15, 8, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v9.h, v9.h, v12.h
	v_and_b16 v12.h, 0xff, v30.h
	v_or_b16 v10.h, v10.h, v13.h
	v_lshlrev_b16 v13.h, 8, v16.l
	v_lshrrev_b32_e32 v16, 24, v31
	v_lshlrev_b16 v15.l, 8, v15.l
	v_and_b16 v16.h, 0xff, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v11.l, v11.l, v13.h
	v_and_b16 v13.h, 0xff, v31.h
	v_lshlrev_b16 v15.h, 8, v16.l
	v_or_b16 v13.l, v13.l, v15.l
	v_and_b16 v15.l, 0xff, v33.l
	v_or_b16 v13.h, v13.h, v15.h
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v186, v[17:18] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v18, 8, v30
	v_lshrrev_b32_e32 v17, 24, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v14.h, 8, v18.l
	v_lshrrev_b32_e32 v18, 24, v32
	v_lshlrev_b16 v14.l, 8, v17.l
	v_lshrrev_b32_e32 v17, 8, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v12.l, v12.l, v14.h
	v_lshlrev_b16 v14.h, 8, v19.l
	v_lshrrev_b32_e32 v19, 8, v33
	v_lshlrev_b16 v16.l, 8, v18.l
	v_or_b16 v11.h, v11.h, v14.l
	v_and_b16 v14.l, 0xff, v32.l
	v_or_b16 v12.h, v12.h, v14.h
	v_and_b16 v14.h, 0xff, v32.h
	v_lshlrev_b16 v15.h, 8, v17.l
	v_lshrrev_b32_e32 v17, 24, v33
	v_lshrrev_b32_e32 v18, 8, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v14.h, v14.h, v16.l
	v_lshlrev_b16 v16.l, 8, v19.l
	v_or_b16 v14.l, v14.l, v15.h
	v_and_b16 v15.h, 0xff, v33.h
	v_lshrrev_b32_e32 v19, 24, v34
	v_or_b16 v15.l, v15.l, v16.l
	v_lshlrev_b16 v16.l, 8, v17.l
	v_lshlrev_b16 v17.l, 8, v18.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v17.h, 8, v19.l
	v_or_b16 v15.h, v15.h, v16.l
	v_and_b16 v16.l, 0xff, v34.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v16.h, v16.h, v17.h
	v_or_b16 v16.l, v16.l, v17.l
	ds_store_b16 v187, v9 offset:8192
	ds_store_b16_d16_hi v187, v9 offset:8224
	ds_store_b16 v187, v10 offset:8256
	ds_store_b16_d16_hi v187, v10 offset:8288
	ds_store_b16 v188, v11 offset:8192
	ds_store_b16_d16_hi v188, v11 offset:8224
	ds_store_b16 v188, v12 offset:8256
	ds_store_b16_d16_hi v188, v12 offset:8288
	ds_store_b16 v189, v13 offset:8192
	ds_store_b16_d16_hi v189, v13 offset:8224
	ds_store_b16 v189, v14 offset:8256
	ds_store_b16_d16_hi v189, v14 offset:8288
	ds_store_b16 v187, v15 offset:8576
	ds_store_b16_d16_hi v187, v15 offset:8608
	ds_store_b16 v187, v16 offset:8640
	ds_store_b16_d16_hi v187, v16 offset:8672
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[33:36], v192 offset:4096
	ds_load_b128 v[37:40], v193 offset:4096
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[9:12], v190 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[25:28], v192
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[13:16], v191 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[29:32], v193
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[41:44], v190 offset:17408
	ds_load_b128 v[45:48], v191 offset:17408
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[25:28], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[33:36], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[33:36], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[29:32], v[13:16], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[37:40], v[13:16], v[215:222] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[9:12], v190 offset:16896
	ds_load_b128 v[13:16], v191 offset:16896
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[37:40], v[45:48], v[240:247] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v215, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v228, v240
	v_cvt_f32_i32_e32 v227, v245
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v224, v246
	v_cvt_f32_i32_e32 v225, v244
	v_cvt_f32_i32_e32 v223, v243
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[232:239], v[33:36], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[29:32], v[13:16], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[232:239], v[37:40], v[13:16], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[45:48], v[9:16] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[41:44], v190 offset:17920
	ds_load_b128 v[45:48], v191 offset:17920
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[25:28], v[41:44], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v25, v184, s7, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v26, v181, s6, 1
	v_add_lshl_u32 v27, v182, s6, 1
	v_add_lshl_u32 v28, v183, s6, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[29:32], v[45:48], v[97:104] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[199:206], v[33:36], v[41:44], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[199:206], v[37:40], v[45:48], v[199:206] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_cvt_f32_i32_e32 v198, v204
	v_cvt_f32_i32_e32 v204, v216
	v_cvt_f32_i32_e32 v216, v238
	v_cvt_f32_i32_e32 v238, v14
	v_cvt_f32_i32_e32 v197, v205
	v_cvt_f32_i32_e32 v205, v217
	v_cvt_f32_i32_e32 v217, v236
	v_cvt_f32_i32_e32 v236, v16
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v16, v183, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v196, v206
	v_cvt_f32_i32_e32 v206, v218
	v_cvt_f32_i32_e32 v218, v241
	v_cvt_f32_i32_e32 v199, v199
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v200, v200
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v194, v25 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v25, v180, s6, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s5, s29
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_clause 0x3
	buffer_load_u16 v231, v25, s[8:11], 0 offen
	buffer_load_u16 v230, v26, s[8:11], 0 offen
	buffer_load_u16 v229, v27, s[8:11], 0 offen
	buffer_load_u16 v226, v28, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[207:210], v192 offset:12288
	ds_load_b128 v[211:214], v193 offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[25:28], v190 offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[81:84], v192 offset:8192
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[29:32], v191 offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[85:88], v193 offset:8192
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[49:52], v190 offset:19456
	ds_load_b128 v[53:56], v191 offset:19456
	ds_load_b128 v[248:251], v190 offset:19968
	ds_load_b128 v[252:255], v191 offset:19968
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[207:210], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[207:210], v[49:52], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[29:32], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[211:214], v[29:32], v[73:80] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[25:28], v190 offset:18944
	ds_load_b128 v[29:32], v191 offset:18944
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[211:214], v[53:56], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v76, v76
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[207:210], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v74, v74
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[85:88], v[29:32], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v59, v59
	v_wmma_i32_16x16x16_iu8 v[65:72], v[211:214], v[29:32], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[85:88], v[53:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[248:251], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[252:255], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[207:210], v[248:251], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v210, v221
	v_cvt_f32_i32_e32 v221, v232
	v_cvt_f32_i32_e32 v209, v233
	v_wmma_i32_16x16x16_iu8 v[81:88], v[211:214], v[252:255], v[81:88] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v214, v235
	v_cvt_f32_i32_e32 v211, v234
	v_cvt_f32_i32_e32 v233, v98
	v_cvt_f32_i32_e32 v232, v97
	v_cvt_f32_i32_e32 v235, v100
	v_cvt_f32_i32_e32 v234, v99
	v_cvt_f32_i32_e32 v100, v104
	v_cvt_f32_i32_e32 v99, v103
	v_cvt_f32_i32_e32 v98, v102
	v_cvt_f32_i32_e32 v97, v101
	v_cvt_f32_i32_e32 v102, v90
	v_cvt_f32_i32_e32 v101, v89
	v_cvt_f32_i32_e32 v104, v92
	v_cvt_f32_i32_e32 v103, v91
	v_cvt_f32_i32_e32 v92, v96
	v_cvt_f32_i32_e32 v91, v95
	v_cvt_f32_i32_e32 v90, v94
	v_cvt_f32_i32_e32 v89, v93
	v_cvt_f32_i32_e32 v93, v10
	v_cvt_f32_i32_e32 v94, v9
	v_cvt_f32_i32_e32 v95, v12
	v_cvt_f32_i32_e32 v96, v11
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[9:12], v185 offset:20480
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v213, v239
	v_cvt_f32_i32_e32 v239, v13
	v_cvt_f32_i32_e32 v208, v219
	v_cvt_f32_i32_e32 v219, v237
	v_cvt_f32_i32_e32 v237, v15
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v15, v182, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v14.h, v12.l
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v212, v220
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v207, v222
	v_cvt_f32_i32_e32 v222, v247
	v_cvt_f32_i32_e32 v220, v242
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v12, 0xffff0000, v12
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v231, 16, v231
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v230, 16, v230
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v229, 16, v229
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v104, v231
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_mov_b16_e32 v104.l, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v14.l, v104.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v169, v13, v14
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v20, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v153, v13, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v95, v229
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v95, 16, v226
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v137, v13, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v235, v95
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v121, v13, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v103, v231
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v14.h, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v170, v13, v14
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v19, v230
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v154, v13, v14 :: v_dual_mul_f32 v13, v96, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v138, v13, v14 :: v_dual_mul_f32 v13, v234, v95
	v_dual_fmac_f32 v122, v13, v14 :: v_dual_mul_f32 v13, v102, v231
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v14, 16, v10
	v_and_b32_e32 v10, 0xffff0000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v172, v13, v14
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v18, v230
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v155, v13, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v93, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v139, v13, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v233, v95
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v123, v13, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v13, v101, v231 :: v_dual_lshlrev_b32 v14, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v173, v13, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v17, v230
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v17, v184, s6, 1
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v156, v13, v14 :: v_dual_mul_f32 v13, v94, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_fmac_f32 v140, v13, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v232, v95
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v124, v13, v14
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v13, v180, s5, 1
	v_add_lshl_u32 v14, v181, s5, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x3
	buffer_load_u16 v18, v13, s[8:11], 0 offen
	buffer_load_u16 v93, v14, s[8:11], 0 offen
	buffer_load_u16 v94, v15, s[8:11], 0 offen
	buffer_load_u16 v96, v16, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[13:16], v185 offset:20496
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v104.h, v13.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v101, 16, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v195, v17 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v185 offset:20480
	v_mul_f32_e32 v33, v33, v101
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v173, v33, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v33, v34, v101
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v172, v33, v18 :: v_dual_mul_f32 v33, v35, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v170, v33, v19 :: v_dual_mul_f32 v33, v36, v101
	v_fmac_f32_e32 v169, v33, v20
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v34, v41, v33
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v156, v34, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v34, v42, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v155, v34, v18 :: v_dual_mul_f32 v34, v43, v33
	v_fmac_f32_e32 v154, v34, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v34, v44, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v153, v34, v20 :: v_dual_lshlrev_b32 v34, 16, v94
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v25, v25, v34 :: v_dual_mul_f32 v36, v34, v60
	v_mul_f32_e32 v35, v34, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v140, v25, v17 :: v_dual_mul_f32 v25, v26, v34
	v_fmac_f32_e32 v139, v25, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v27, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v138, v25, v19 :: v_dual_mul_f32 v25, v28, v34
	v_fmac_f32_e32 v137, v25, v20
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v96
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v13, 0xffff0000, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v26, v49, v25
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v124, v26, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v50, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v123, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v51, v25 :: v_dual_lshlrev_b32 v18, 16, v16
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v16, 0xffff0000, v16
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v122, v17, v19 :: v_dual_mul_f32 v17, v52, v25
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v11, 0xffff0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v121, v17, v20
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v92, v231
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v165, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v24, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v149, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v236, v229
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v133, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v100, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v115, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v91, v231
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v18, 16, v15
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v166, v17, v18 :: v_dual_and_b32 v15, 0xffff0000, v15
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v23, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v150, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v237, v229
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v134, v17, v18 :: v_dual_mul_f32 v17, v99, v95
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v118, v17, v18 :: v_dual_mul_f32 v17, v90, v231
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v18, 16, v14
	v_and_b32_e32 v14, 0xffff0000, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v26, v33, v69
	v_mul_f32_e32 v23, v33, v71
	v_mul_f32_e32 v27, v33, v68
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v167, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v22, v230
	v_mul_f32_e32 v22, v33, v70
	v_mul_f32_e32 v24, v33, v72
	v_mul_f32_e32 v28, v33, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v151, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v238, v229
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v135, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v98, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v119, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v89, v231
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v168, v17, v104
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v21, v230
	v_mul_f32_e32 v21, v37, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v37, v34, v59 :: v_dual_fmac_f32 v152, v17, v104
	v_mul_f32_e32 v17, v239, v229
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v136, v17, v104
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v97, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v120, v17, v104
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[17:20], v185 offset:20496
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v168, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v38, v101
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v167, v21, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v39, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v166, v21, v19 :: v_dual_mul_f32 v21, v40, v101
	v_fmac_f32_e32 v165, v21, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v45, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v152, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v46, v33
	v_dual_mul_f32 v40, v25, v87 :: v_dual_and_b32 v9, 0xffff0000, v9
	v_mul_f32_e32 v38, v25, v81
	v_mul_f32_e32 v39, v25, v86
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v151, v21, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v47, v33
	v_mul_f32_e32 v41, v25, v88
	v_mul_f32_e32 v42, v25, v85
	v_mul_f32_e32 v43, v25, v84
	v_mul_f32_e32 v44, v25, v83
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v150, v21, v19 :: v_dual_mul_f32 v21, v48, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v149, v21, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v29, v34
	v_mul_f32_e32 v29, v33, v66
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v136, v21, v17 :: v_dual_mul_f32 v21, v30, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v30, v34, v57 :: v_dual_fmac_f32 v135, v21, v18
	v_mul_f32_e32 v21, v31, v34
	v_dual_mul_f32 v31, v34, v62 :: v_dual_fmac_f32 v134, v21, v19
	v_dual_mul_f32 v21, v32, v34 :: v_dual_mul_f32 v32, v34, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v133, v21, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v53, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v120, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v54, v25
	v_mul_f32_e32 v21, v33, v65
	v_mul_f32_e32 v33, v34, v64
	v_mul_f32_e32 v34, v34, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v119, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v55, v25 :: v_dual_mul_f32 v18, v101, v79
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v118, v17, v19 :: v_dual_mul_f32 v17, v56, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v25, v82
	v_mul_f32_e32 v19, v101, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v115, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v231, v215 :: v_dual_mul_f32 v20, v101, v77
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v163, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v230, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v148, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v229, v228
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v132, v17, v9 :: v_dual_mul_f32 v17, v95, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v117, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v231, v212
	v_mul_f32_e32 v17, v101, v78
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v159, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v230, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v143, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v229, v227
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v127, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v95, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v111, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v231, v210 :: v_dual_mul_f32 v14, v101, v76
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v158, v9, v15 :: v_dual_mul_f32 v9, v230, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v229, v224
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v126, v9, v15 :: v_dual_mul_f32 v9, v95, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v110, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v231, v207
	v_mul_f32_e32 v15, v101, v75
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v157, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v230, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v141, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v229, v222
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v125, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v95, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v109, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v231, v208 :: v_dual_mul_f32 v16, v101, v74
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v160, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v230, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v144, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v229, v225
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v128, v9, v13 :: v_dual_mul_f32 v9, v95, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v112, v9, v13 :: v_dual_mul_f32 v9, v231, v206
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v95, v200
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v161, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v230, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v116, v13, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v101, v73
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v145, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v229, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v129, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v95, v202
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v113, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v231, v205 :: v_dual_mul_f32 v12, v229, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v162, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v230, v211
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v131, v12, v10 :: v_dual_fmac_f32 v146, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v229, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v130, v9, v11 :: v_dual_mul_f32 v9, v95, v201
	v_dual_fmac_f32 v114, v9, v11 :: v_dual_mul_f32 v9, v231, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v11, v230, v209 :: v_dual_fmac_f32 v164, v9, v10
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v147, v11, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v185 offset:20992
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v163, v13, v9 :: v_dual_fmac_f32 v164, v16, v10
	v_dual_fmac_f32 v162, v15, v11 :: v_dual_fmac_f32 v161, v14, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[13:16], v185 offset:21008
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v148, v21, v9
	v_dual_fmac_f32 v147, v29, v10 :: v_dual_fmac_f32 v146, v28, v11
	v_dual_fmac_f32 v145, v27, v12 :: v_dual_fmac_f32 v132, v30, v9
	v_dual_fmac_f32 v131, v34, v10 :: v_dual_fmac_f32 v130, v37, v11
	v_fmac_f32_e32 v129, v36, v12
	v_dual_fmac_f32 v117, v38, v9 :: v_dual_fmac_f32 v116, v25, v10
	v_dual_fmac_f32 v114, v44, v11 :: v_dual_fmac_f32 v113, v43, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v160, v20, v13 :: v_dual_fmac_f32 v159, v17, v14
	v_dual_fmac_f32 v158, v18, v15 :: v_dual_fmac_f32 v157, v19, v16
	v_fmac_f32_e32 v144, v26, v13
	v_dual_fmac_f32 v143, v22, v14 :: v_dual_fmac_f32 v142, v23, v15
	v_dual_fmac_f32 v141, v24, v16 :: v_dual_fmac_f32 v128, v35, v13
	v_dual_fmac_f32 v127, v31, v14 :: v_dual_fmac_f32 v126, v32, v15
	v_dual_fmac_f32 v125, v33, v16 :: v_dual_fmac_f32 v112, v42, v13
	v_dual_fmac_f32 v111, v39, v14 :: v_dual_fmac_f32 v110, v40, v15
	v_fmac_f32_e32 v109, v41, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v4, v176 :: v_dual_mov_b32 v1, v174
	v_dual_mov_b32 v2, v175 :: v_dual_mov_b32 v5, v177
	v_mov_b32_e32 v3, v178
.LBB0_7:                                ; %._crit_edge
.Ltmp29:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v6, |v172|, |v172|
	v_max_f32_e64 v7, |v173|, |v173|
	v_max3_f32 v8, |v169|, |v168|, |v167|
	v_max3_f32 v9, |v164|, |v162|, |v161|
	v_max3_f32 v10, |v160|, |v159|, |v158|
	v_max_f32_e64 v11, |v156|, |v156|
	v_max_f32_e32 v6, v7, v6
	v_max_f32_e64 v7, |v155|, |v155|
	v_max3_f32 v12, |v166|, |v165|, |v163|
	v_max3_f32 v9, v9, v10, |v157|
	v_max_f32_e64 v10, |v140|, |v140|
	v_max3_f32 v6, v6, |v170|, v8
	v_max_f32_e64 v8, |v139|, |v139|
	v_max_f32_e32 v7, v11, v7
	v_max3_f32 v11, |v153|, |v152|, |v151|
	v_max3_f32 v14, |v147|, |v146|, |v145|
	v_max3_f32 v15, |v144|, |v143|, |v142|
	v_max_f32_e32 v8, v10, v8
	v_max3_f32 v10, |v137|, |v136|, |v135|
	v_max3_f32 v16, |v131|, |v130|, |v129|
	v_max3_f32 v17, |v128|, |v127|, |v126|
	v_max3_f32 v13, |v150|, |v149|, |v148|
	v_max3_f32 v7, v7, |v154|, v11
	v_max3_f32 v11, v14, v15, |v141|
	v_max3_f32 v14, |v134|, |v133|, |v132|
	v_max3_f32 v8, v8, |v138|, v10
	v_max3_f32 v10, v16, v17, |v125|
	v_max_f32_e64 v15, |v123|, |v123|
	v_max_f32_e64 v16, |v124|, |v124|
	v_max3_f32 v6, v6, v12, v9
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v7, v7, v13, v11
	v_max3_f32 v8, v8, v14, v10
	v_max_f32_e32 v9, v16, v15
	v_max3_f32 v10, |v121|, |v120|, |v119|
	v_max3_f32 v11, |v116|, |v114|, |v113|
	v_max3_f32 v12, |v112|, |v111|, |v110|
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v14, v6, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v13, |v118|, |v115|, |v117|
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v15, v7, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v9, v9, |v122|, v10
	v_max3_f32 v10, v11, v12, |v109|
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v11, v8, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v12, v14, v14
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_or_b32 v5, 0x680, v5, v4
	v_lshl_add_u32 v17, v1, 6, 0
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v13, v9, v13, v10
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v14, v15, v15 :: v_dual_max_f32 v9, v6, v12
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v6, v171, 9, 0
.Ltmp39:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s4, s29, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v11, v8, v11 :: v_dual_max_f32 v10, v7, v14
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v7, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x80, v0
	v_and_b32_e32 v8, 0x60, v0
	v_lshl_add_u32 v6, v1, 2, v6
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v12, v7, v7 :: v_dual_lshlrev_b32 v1, 5, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v7, 1, v14
	v_xor_b32_e32 v15, v4, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v6, v2, 4, v6
	v_lshrrev_b32_e32 v16, 3, v14
	v_xor_b32_e32 v5, v5, v8
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v12, v13, v12
.Ltmp45:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s4, s4, 24
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v6, v6, v7, v15
.Ltmp47:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s4, s29, s4
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v5, v17, v16, v5
	v_lshlrev_b32_e32 v2, 3, v2
	ds_store_b128 v6, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v6, v10
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v13, v11 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v15, v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v5, v9, v5 :: v_dual_add_nc_u32 v14, 0, v14
	v_dual_max_f32 v6, v10, v6 :: v_dual_max_f32 v9, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v10, v13, v13 :: v_dual_max_f32 v11, v12, v12
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v12, v5 :: v_dual_mov_b32 v13, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v9, v9, v10 :: v_dual_max_f32 v10, v15, v11
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v11, v9 :: v_dual_max_f32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v9, v11
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v15, v10 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v5, v5, v12
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v12, v15, v15
	v_max_f32_e32 v6, v6, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v12, v10, v12
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v13, v5 :: v_dual_max_f32 v10, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v10, v6, v10 :: v_dual_max_f32 v9, v13, v13
	v_max_f32_e32 v6, v17, v17
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v13, 1, v8
.Ltmp65:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v8, v108, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v9, v5, v9 :: v_dual_max_f32 v12, v12, v6
	v_max_f32_e32 v5, v16, v16
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v6, v14, v13, v2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v11, v11, v5
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v5, v171, 4, 0
	ds_store_b128 v6, v[9:12]
	v_add3_u32 v1, v5, v1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v1
.Ltmp70:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v6, v12, v12 :: v_dual_max_f32 v1, v9, v9
	v_max_f32_e32 v2, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v6, 0x2b8cbccc, v6
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v12, null, 0x40e00000, 0x40e00000, v6
	v_rcp_f32_e32 v16, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v12, v16, 1.0
	v_max_f32_e32 v5, v11, v11
	v_div_scale_f32 v11, null, 0x40e00000, 0x40e00000, v2
	v_dual_fmac_f32 v16, v22, v16 :: v_dual_max_f32 v5, 0x2b8cbccc, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v15, v11
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v5
	v_div_scale_f32 v21, s0, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v14, v10
	v_fma_f32 v20, -v11, v15, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v10, v14, 1.0
	v_dual_max_f32 v1, 0x2b8cbccc, v1 :: v_dual_fmac_f32 v14, v19, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v17, vcc_lo, v1, 0x40e00000, v1
	v_div_scale_f32 v19, s2, v6, 0x40e00000, v6
	v_rcp_f32_e32 v13, v9
	v_mul_f32_e32 v22, v21, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v24, v19, v16
	v_fma_f32 v26, -v10, v22, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v28, -v12, v24, v19
	v_fma_f32 v18, -v9, v13, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v18, v13
	v_fmac_f32_e32 v15, v20, v15
	v_div_scale_f32 v18, s1, v2, 0x40e00000, v2
	v_mul_f32_e32 v20, v17, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v9, v20, v17
	v_dual_mul_f32 v23, v18, v15 :: v_dual_fmac_f32 v20, v25, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v11, v23, v18
	v_fmac_f32_e32 v22, v26, v14
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v25.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v9, -v9, v20, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v27, v15
	v_fma_f32 v10, -v10, v22, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v9, v9, v13, v20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v11, -v11, v23, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v10, v10, v14, v22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v1, v9, 0x40e00000, v1
	v_div_fmas_f32 v11, v11, v15, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v9, v10, 0x40e00000, v5
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v10.h, v25.h
	v_mov_b16_e32 v10.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v24, v28, v16
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v11, 0x40e00000, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v25.l, v9.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v12, -v12, v24, v19
	v_div_fmas_f32 v5, v12, v16, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v11, v5, 0x40e00000, v6
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 1, v10
	v_mov_b16_e32 v6.h, v25.h
	v_mov_b16_e32 v6.l, v2.h
	v_and_b32_e32 v10, 1, v25
	v_mov_b16_e32 v25.l, v11.h
	v_add3_u32 v5, v1, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v27, 0xffff0000, v5
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v16, null, v27, v27, v170
	v_div_scale_f32 v13, vcc_lo, v173, v27, v173
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v12, 1, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v19, v16
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v6, v2, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v2, v11, v12, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v12, null, v27, v27, v172
	v_div_scale_f32 v11, null, v27, v27, v173
	v_rcp_f32_e32 v15, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v14, v11
	v_fma_f32 v22, -v12, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v15, v22, v15
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v9, v10, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v10, -v11, v14, 1.0
.Ltmp71:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v9, 4, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v14, v10, v14
	v_div_scale_f32 v17, s0, v172, v27, v172
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v21, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v20, null, v27, v27, v169
	v_mul_f32_e32 v25, v13, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v26, v17, v15
	v_div_scale_f32 v22, null, v27, v27, v168
	v_rcp_f32_e32 v24, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v11, v25, v13
	v_fma_f32 v30, -v12, v26, v17
	v_div_scale_f32 v28, null, v27, v27, v167
	v_fma_f32 v10, -v16, v19, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v25, v29, v14 :: v_dual_fmac_f32 v26, v30, v15
	v_rcp_f32_e32 v30, v22
	v_div_scale_f32 v18, s1, v170, v27, v170
	v_fma_f32 v11, -v11, v25, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v12, -v12, v26, v17
	v_rcp_f32_e32 v17, v28
	v_fmac_f32_e32 v19, v10, v19
	v_fma_f32 v32, -v20, v24, 1.0
	v_div_fmas_f32 v11, v11, v14, v25
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v40, 0xffff0000, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v25, -v22, v30, 1.0
	v_div_scale_f32 v23, s2, v169, v27, v169
	v_mul_f32_e32 v31, v18, v19
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v30, v25, v30
	v_fma_f32 v25, -v28, v17, 1.0
	v_fmac_f32_e32 v24, v32, v24
	v_fma_f32 v29, -v16, v31, v18
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v10, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v12, v12, v15, v26
	v_fmac_f32_e32 v17, v25, v17
	v_mul_f32_e32 v13, v23, v24
	v_fmac_f32_e32 v31, v29, v19
	v_div_scale_f32 v15, s0, v168, v27, v168
	v_div_scale_f32 v25, s3, v167, v27, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v14, -v20, v13, v23
	v_fma_f32 v16, -v16, v31, v18
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v26, null, v27, v27, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v13, v14, v24 :: v_dual_mul_f32 v18, v15, v30
	v_div_fmas_f32 v14, v16, v19, v31
	v_div_scale_f32 v29, null, v27, v27, v165
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v16, -v20, v13, v23
	v_mul_f32_e32 v23, v25, v17
	v_fma_f32 v19, -v22, v18, v15
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v20, v26
	v_div_fmas_f32 v16, v16, v24, v13
	v_fma_f32 v24, -v28, v23, v25
	v_fmac_f32_e32 v18, v19, v30
	v_rcp_f32_e32 v19, v29
	v_div_fixup_f32 v13, v14, v27, v170
	v_div_fixup_f32 v14, v16, v27, v169
	v_fmac_f32_e32 v23, v24, v17
	v_fma_f32 v15, -v22, v18, v15
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v31, -v26, v20, 1.0
	v_div_scale_f32 v22, s1, v166, v27, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v15, v15, v30, v18
	v_fma_f32 v16, -v29, v19, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, v31, v20
	v_fma_f32 v18, -v28, v23, v25
	v_div_scale_f32 v30, s0, v165, v27, v165
	v_fmac_f32_e32 v19, v16, v19
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v24, null, v27, v27, v163
	v_div_fmas_f32 v16, v18, v17, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v18, v30, v19
	v_mul_f32_e32 v25, v22, v20
	v_rcp_f32_e32 v28, v24
	v_div_scale_f32 v33, null, v27, v27, v162
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v17, -v26, v25, v22
	v_div_scale_f32 v31, null, v27, v27, v164
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v38, null, v27, v27, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v25, v17, v20
	v_fma_f32 v17, -v29, v18, v30
	v_fma_f32 v23, -v24, v28, 1.0
	v_rcp_f32_e32 v32, v31
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v22, -v26, v25, v22
	v_fmac_f32_e32 v18, v17, v19
	v_div_scale_f32 v37, null, v27, v27, v158
	v_div_scale_f32 v42, null, v40, v40, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v17, v22, v20, v25
	v_fma_f32 v20, -v29, v18, v30
	v_fma_f32 v29, -v33, v35, 1.0
	v_fmac_f32_e32 v28, v23, v28
	v_div_scale_f32 v23, s2, v163, v27, v163
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v35, v29, v35
	v_fma_f32 v34, -v31, v32, 1.0
	v_mul_f32_e32 v26, v23, v28
	v_div_fmas_f32 v18, v20, v19, v18
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v30, null, v27, v27, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v24, v26, v23
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v11, v11, v27, v173
	v_rcp_f32_e32 v36, v30
	v_div_fixup_f32 v12, v12, v27, v172
	v_fmac_f32_e32 v26, v22, v28
	v_div_scale_f32 v22, s0, v162, v27, v162
	v_div_fixup_f32 v15, v15, v27, v168
	v_div_fixup_f32 v16, v16, v27, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v20, -v24, v26, v23
	v_mul_f32_e32 v23, v22, v35
	v_div_scale_f32 v24, null, v27, v27, v160
	v_div_fixup_f32 v17, v17, v27, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v20, v20, v28, v26
	v_fma_f32 v28, -v33, v23, v22
	v_fmac_f32_e32 v32, v34, v32
	v_div_scale_f32 v34, s3, v164, v27, v164
	v_rcp_f32_e32 v29, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v23, v28, v35
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v25, v34, v32
	v_div_fixup_f32 v18, v18, v27, v165
	v_div_scale_f32 v46, null, v40, v40, v149
	v_fma_f32 v22, -v33, v23, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v31, v25, v34
	v_div_scale_f32 v47, null, v40, v40, v148
	v_div_scale_f32 v53, null, v40, v40, v142
	v_fmac_f32_e32 v25, v19, v32
	v_fma_f32 v19, -v30, v36, 1.0
	v_div_scale_f32 v55, null, v40, v40, v141
	v_div_scale_f32 v56, null, v21, v21, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v31, v25, v34
	v_div_scale_f32 v34, null, v27, v27, v159
	v_div_scale_f32 v31, s1, v161, v27, v161
	v_div_fmas_f32 v25, v26, v32, v25
	v_fma_f32 v32, -v24, v29, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v26, v34
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v57, null, v21, v21, v138
	v_fmac_f32_e32 v29, v32, v29
	v_div_scale_f32 v32, s2, v160, v27, v160
	v_fmac_f32_e32 v36, v19, v36
	v_div_fixup_f32 v19, v20, v27, v163
	v_div_fixup_f32 v20, v25, v27, v164
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v34, v26, 1.0
	v_div_fmas_f32 v22, v22, v35, v23
	v_mul_f32_e32 v28, v31, v36
	v_div_scale_f32 v35, s0, v159, v27, v159
	v_fmac_f32_e32 v26, v33, v26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v30, v28, v31
	v_rcp_f32_e32 v33, v37
	v_div_fixup_f32 v22, v22, v27, v162
	v_div_scale_f32 v62, null, v21, v21, v132
	v_dual_fmac_f32 v28, v25, v36 :: v_dual_mul_f32 v25, v32, v29
	v_div_scale_f32 v65, null, v21, v21, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v64, v62
	v_fma_f32 v23, -v30, v28, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v30, -v24, v25, v32
	v_mul_f32_e32 v31, v35, v26
	v_fma_f32 v41, -v37, v33, 1.0
	v_div_scale_f32 v66, null, v21, v21, v128
	v_div_fmas_f32 v23, v23, v36, v28
	v_fmac_f32_e32 v25, v30, v29
	v_fma_f32 v28, -v34, v31, v35
	v_fma_f32 v36, -v38, v39, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v30, s1, v158, v27, v158
	v_fma_f32 v24, -v24, v25, v32
	v_fmac_f32_e32 v31, v28, v26
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, null, v40, v40, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v24, v24, v29, v25
	v_fma_f32 v25, -v34, v31, v35
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v36
	v_div_scale_f32 v32, s3, v157, v27, v157
	v_div_fmas_f32 v25, v25, v26, v31
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v23, v27, v161
	v_div_fixup_f32 v24, v24, v27, v160
	v_div_scale_f32 v73, null, v10, v10, v121
	v_div_fixup_f32 v25, v25, v27, v159
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v36, v34, 1.0
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v41, null, v40, v40, v155
	v_rcp_f32_e32 v75, v73
	v_fmac_f32_e32 v34, v31, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v28, v30, v33
	v_div_scale_f32 v31, s0, v156, v40, v156
	v_div_scale_f32 v76, null, v10, v10, v116
	v_fma_f32 v29, -v37, v28, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v78, v76
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v28, v29, v33
	v_rcp_f32_e32 v29, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v30, -v37, v28, v30
	v_div_scale_f32 v37, null, v40, v40, v154
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v76, v78, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v28, v30, v33, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v33, v37
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v43, -v37, v33, 1.0
	v_fmac_f32_e32 v33, v43, v33
	v_fma_f32 v43, -v42, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, v32, v39 :: v_dual_fmac_f32 v44, v43, v44
	v_fma_f32 v26, -v38, v35, v32
	v_div_scale_f32 v43, s3, v153, v40, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v35, v26, v39
	v_fma_f32 v26, -v41, v29, 1.0
	v_fma_f32 v30, -v38, v35, v32
	v_mul_f32_e32 v32, v31, v34
	v_div_scale_f32 v38, s1, v155, v40, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v30, v30, v39, v35
	v_fma_f32 v35, -v36, v32, v31
	v_fmac_f32_e32 v29, v26, v29
	v_div_fixup_f32 v26, v28, v27, v158
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v30, v27, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v32, v35, v34 :: v_dual_mul_f32 v39, v38, v29
	v_div_scale_f32 v30, s2, v154, v40, v154
	v_div_scale_f32 v35, null, v40, v40, v152
	v_fma_f32 v28, -v41, v39, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v36, v32, v31
	v_mul_f32_e32 v36, v30, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v45, v35
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v39, v28, v29
	v_div_fmas_f32 v28, v31, v34, v32
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v34, v43, v44
	v_fma_f32 v32, -v37, v36, v30
	v_fma_f32 v31, -v41, v39, v38
	v_div_scale_f32 v41, null, v40, v40, v151
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v35, v45, 1.0
	v_div_fixup_f32 v28, v28, v40, v156
	v_div_fmas_f32 v29, v31, v29, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v39, v41
	v_fma_f32 v31, -v42, v34, v43
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v29, v29, v40, v155
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v34, v31, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v31, -v41, v39, 1.0
	v_fmac_f32_e32 v36, v32, v33
	v_div_scale_f32 v32, s0, v152, v40, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v31, v39
	v_fma_f32 v30, -v37, v36, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v30, v30, v33, v36
	v_fma_f32 v33, -v42, v34, v43
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v151, v40, v151
	v_div_fixup_f32 v30, v30, v40, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v33, v44, v34
	v_rcp_f32_e32 v34, v46
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v31, v31, v40, v153
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v44, -v46, v34, 1.0
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v40, v40, v150
	v_fmac_f32_e32 v34, v44, v34
	v_div_scale_f32 v44, s0, v149, v40, v149
	v_mul_f32_e32 v33, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v38
	v_mul_f32_e32 v48, v44, v34
	v_mul_f32_e32 v37, v32, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v35, v37, v32
	v_fmac_f32_e32 v37, v36, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v38, v42, 1.0
	v_fma_f32 v32, -v35, v37, v32
	v_fma_f32 v35, -v41, v33, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s2, v150, v40, v150
	v_div_fmas_f32 v32, v32, v45, v37
	v_rcp_f32_e32 v37, v47
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v40, v40, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v32, v32, v40, v152
	v_rcp_f32_e32 v49, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v50, -v47, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v50, v37
	v_fmac_f32_e32 v33, v35, v39
	v_div_scale_f32 v50, null, v40, v40, v145
	v_fma_f32 v41, -v41, v33, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v33, v41, v39, v33
	v_fma_f32 v39, -v46, v48, v44
	v_div_scale_f32 v41, s1, v148, v40, v148
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v33, v33, v40, v151
	v_fmac_f32_e32 v48, v39, v34
	v_div_scale_f32 v39, s3, v147, v40, v147
	v_mul_f32_e32 v35, v36, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v43, -v38, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v35, v43, v42
	v_fma_f32 v43, -v45, v49, 1.0
	v_fma_f32 v36, -v38, v35, v36
	v_mul_f32_e32 v38, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v43, v49
	v_div_scale_f32 v43, null, v40, v40, v146
	v_div_fmas_f32 v35, v36, v42, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v42, -v47, v38, v41
	v_fma_f32 v36, -v46, v48, v44
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v44, v43
	v_mul_f32_e32 v46, v39, v49
	v_fmac_f32_e32 v38, v42, v37
	v_rcp_f32_e32 v42, v50
	v_div_fmas_f32 v36, v36, v34, v48
	v_div_fixup_f32 v34, v35, v40, v150
	v_fma_f32 v48, -v45, v46, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v35, v36, v40, v149
	v_fma_f32 v36, -v47, v38, v41
	v_fma_f32 v51, -v43, v44, 1.0
	v_div_scale_f32 v41, s0, v146, v40, v146
	v_fma_f32 v47, -v50, v42, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v44, v51, v44
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v42, v47, v42
	v_fmac_f32_e32 v46, v48, v49
	v_div_scale_f32 v48, null, v40, v40, v144
	v_div_fmas_f32 v36, v36, v37, v38
	v_div_scale_f32 v47, null, v40, v40, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v46, v39
	v_rcp_f32_e32 v45, v48
	v_mul_f32_e32 v38, v41, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v52, v47
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, s1, v145, v40, v145
	v_div_fmas_f32 v37, v37, v49, v46
	v_fma_f32 v46, -v43, v38, v41
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v49, v39, v42
	v_fma_f32 v51, -v48, v45, 1.0
	v_div_fixup_f32 v36, v36, v40, v148
	v_fmac_f32_e32 v38, v46, v44
	v_fma_f32 v54, -v47, v52, 1.0
	v_fma_f32 v46, -v50, v49, v39
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, s2, v144, v40, v144
	v_fma_f32 v41, -v43, v38, v41
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s3, v143, v40, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v51, v45
	v_div_fmas_f32 v38, v41, v44, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v54, v52
	v_div_fixup_f32 v37, v37, v40, v147
	v_fma_f32 v41, -v48, v43, v51
	v_div_fixup_f32 v38, v38, v40, v146
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v43, v41, v45
	v_fma_f32 v41, -v47, v44, v54
	v_fmac_f32_e32 v49, v46, v42
	v_rcp_f32_e32 v46, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v38
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v44, v41, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v50, v49, v39
	v_div_fmas_f32 v39, v39, v42, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v53, v46, 1.0
	v_rcp_f32_e32 v49, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v39, v39, v40, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s0, v142, v40, v142
	v_fma_f32 v42, -v48, v43, v51
	v_div_scale_f32 v51, null, v21, v21, v140
	v_fma_f32 v41, -v55, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v48, v50, v46
	v_div_fmas_f32 v42, v42, v45, v43
	v_fma_f32 v43, -v47, v44, v54
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v49, v41, v49
	v_fma_f32 v45, -v53, v48, v50
	v_rcp_f32_e32 v47, v51
	v_div_fmas_f32 v43, v43, v52, v44
	v_rcp_f32_e32 v44, v56
	v_div_scale_f32 v54, s1, v141, v40, v141
	v_fmac_f32_e32 v48, v45, v46
	v_div_fixup_f32 v41, v42, v40, v144
	v_div_fixup_f32 v42, v43, v40, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v45, v54, v49
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v52, -v51, v47, 1.0
	v_fma_f32 v43, -v53, v48, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v53, -v56, v44, 1.0
	v_fma_f32 v50, -v55, v45, v54
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v41, v41
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v47, v52, v47
	v_div_scale_f32 v52, s2, v140, v21, v140
	v_div_fmas_f32 v43, v43, v46, v48
	v_fmac_f32_e32 v44, v53, v44
	v_rcp_f32_e32 v48, v57
	v_div_scale_f32 v53, null, v21, v21, v137
	v_dual_fmac_f32 v45, v50, v49 :: v_dual_mul_f32 v46, v52, v47
	v_div_scale_f32 v50, s0, v139, v21, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v59, v53
	v_fma_f32 v54, -v55, v45, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v55, -v51, v46, v52
	v_fma_f32 v60, -v57, v48, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v43, v43, v40, v142
	v_div_fmas_f32 v45, v54, v49, v45
	v_div_scale_f32 v54, s1, v138, v21, v138
	v_fmac_f32_e32 v48, v60, v48
	v_fmac_f32_e32 v46, v55, v47
	v_fma_f32 v55, -v53, v59, 1.0
	v_mul_f32_e32 v58, v50, v44
	v_div_fixup_f32 v40, v45, v40, v141
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v59, v55, v59
	v_fma_f32 v49, -v56, v58, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v58, v49, v44
	v_mul_f32_e32 v49, v54, v48
	v_fma_f32 v45, -v51, v46, v52
	v_div_scale_f32 v51, s3, v137, v21, v137
	v_div_scale_f32 v52, null, v21, v21, v136
	v_div_fmas_f32 v45, v45, v47, v46
	v_fma_f32 v47, -v57, v49, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v55, v51, v59
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v49, v47, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v53, v55, v51
	v_fmac_f32_e32 v55, v47, v59
	v_fma_f32 v46, -v56, v58, v50
	v_rcp_f32_e32 v50, v52
	v_div_scale_f32 v56, null, v21, v21, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v46, v46, v44, v58
	v_div_fixup_f32 v44, v45, v21, v140
	v_rcp_f32_e32 v58, v56
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v45, v46, v21, v139
	v_fma_f32 v60, -v52, v50, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v45, v45
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v50, v60, v50
	v_fma_f32 v46, -v57, v49, v54
	v_div_scale_f32 v57, null, v21, v21, v134
	v_div_scale_f32 v60, null, v21, v21, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v46, v46, v48, v49
	v_fma_f32 v48, -v53, v55, v51
	v_rcp_f32_e32 v51, v57
	v_fma_f32 v47, -v56, v58, 1.0
	v_rcp_f32_e32 v61, v60
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v54, s0, v136, v21, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v58, v47, v58
	v_div_fmas_f32 v47, v48, v59, v55
	v_div_scale_f32 v53, s1, v135, v21, v135
	v_fma_f32 v59, -v57, v51, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v63, -v60, v61, 1.0
	v_div_fixup_f32 v46, v46, v21, v138
	v_div_fixup_f32 v47, v47, v21, v137
	v_fmac_f32_e32 v51, v59, v51
	v_div_scale_f32 v59, s2, v134, v21, v134
	v_mul_f32_e32 v49, v54, v50
	v_fmac_f32_e32 v61, v63, v61
	v_div_scale_f32 v63, s3, v133, v21, v133
	v_mul_f32_e32 v55, v53, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v52, v49, v54
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v47, v47
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v49, v48, v50
	v_fma_f32 v48, -v56, v55, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v52, v49, v54
	v_fmac_f32_e32 v55, v48, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v52, v50, v49
	v_fma_f32 v49, -v56, v55, v53
	v_fma_f32 v53, -v62, v64, 1.0
	v_mul_f32_e32 v52, v63, v61
	v_div_scale_f32 v56, null, v21, v21, v131
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v64, v53, v64
	v_mul_f32_e32 v54, v59, v51
	v_div_scale_f32 v53, s0, v132, v21, v132
	v_div_fixup_f32 v48, v48, v21, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v57, v54, v59
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v54, v50, v51
	v_fma_f32 v50, -v60, v52, v63
	v_fma_f32 v57, -v57, v54, v59
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v52, v50, v61
	v_div_fmas_f32 v49, v49, v58, v55
	v_rcp_f32_e32 v55, v56
	v_mul_f32_e32 v58, v53, v64
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v59, null, v21, v21, v130
	v_div_fmas_f32 v51, v57, v51, v54
	v_fma_f32 v54, -v60, v52, v63
	v_fma_f32 v57, -v62, v58, v53
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v63, s1, v131, v21, v131
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v50, -v56, v55, 1.0
	v_div_fmas_f32 v52, v54, v61, v52
	v_rcp_f32_e32 v54, v65
	v_rcp_f32_e32 v60, v59
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v55, v50, v55 :: v_dual_fmac_f32 v58, v57, v64
	v_div_fixup_f32 v50, v51, v21, v134
	v_div_fixup_f32 v51, v52, v21, v133
	v_div_fixup_f32 v49, v49, v21, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v57, v63, v55
	v_fma_f32 v52, -v62, v58, v53
	v_fma_f32 v62, -v65, v54, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v61, -v59, v60, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v49, v49
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v53, -v56, v57, v63
	v_div_fmas_f32 v52, v52, v64, v58
	v_rcp_f32_e32 v58, v66
	v_fmac_f32_e32 v54, v62, v54
	v_div_scale_f32 v62, s0, v129, v21, v129
	v_fmac_f32_e32 v57, v53, v55
	v_fmac_f32_e32 v60, v61, v60
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v67, v62, v54
	v_div_scale_f32 v61, s2, v130, v21, v130
	v_fma_f32 v56, -v56, v57, v63
	v_fma_f32 v69, -v66, v58, 1.0
	v_div_scale_f32 v64, null, v21, v21, v127
	v_div_fixup_f32 v52, v52, v21, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v55, v56, v55, v57
	v_fma_f32 v56, -v65, v67, v62
	v_fmac_f32_e32 v58, v69, v58
	v_div_scale_f32 v57, s1, v128, v21, v128
	v_rcp_f32_e32 v68, v64
	v_fmac_f32_e32 v67, v56, v54
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v56, v57, v58
	v_mul_f32_e32 v53, v61, v60
	v_div_scale_f32 v69, null, v21, v21, v125
	v_div_fixup_f32 v55, v55, v21, v131
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v50, v50
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v63, -v59, v53, v61
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v53, v63, v60
	v_fma_f32 v63, -v64, v68, 1.0
	v_fma_f32 v59, -v59, v53, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v68, v63, v68
	v_div_scale_f32 v63, null, v21, v21, v126
	v_div_scale_f32 v61, s3, v127, v21, v127
	v_div_fmas_f32 v53, v59, v60, v53
	v_fma_f32 v59, -v65, v67, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v62, v63
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v60, -v66, v56, v57
	v_div_fixup_f32 v53, v53, v21, v130
	v_div_fmas_f32 v54, v59, v54, v67
	v_rcp_f32_e32 v59, v69
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v56, v60, v58
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v53
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v54, v54, v21, v129
	v_fma_f32 v67, -v63, v62, 1.0
	v_mul_f32_e32 v65, v61, v68
	v_fma_f32 v57, -v66, v56, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v54, v54
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v62, v67, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v60, -v64, v65, v61
	v_fma_f32 v66, -v69, v59, 1.0
	v_fmac_f32_e32 v65, v60, v68
	v_div_scale_f32 v60, s0, v126, v21, v126
	v_div_fmas_f32 v56, v57, v58, v56
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v64, v65, v61
	v_dual_mul_f32 v58, v60, v62 :: v_dual_fmac_f32 v59, v66, v59
	v_div_scale_f32 v61, null, v10, v10, v124
	v_div_scale_f32 v64, s1, v125, v21, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v57, v57, v68, v65
	v_div_scale_f32 v68, null, v10, v10, v123
	v_rcp_f32_e32 v65, v61
	v_fma_f32 v66, -v63, v58, v60
	v_mul_f32_e32 v67, v64, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v70, v68
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v56, v56, v21, v128
	v_fmac_f32_e32 v58, v66, v62
	v_fma_f32 v66, -v69, v67, v64
	v_div_fixup_f32 v57, v57, v21, v127
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v61, v65, 1.0
	v_fma_f32 v60, -v63, v58, v60
	v_div_scale_f32 v63, null, v10, v10, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v68, v70, 1.0
	v_fmac_f32_e32 v67, v66, v59
	v_div_fmas_f32 v58, v60, v62, v58
	v_div_scale_f32 v66, s2, v124, v10, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v72, v70
	v_fma_f32 v60, -v69, v67, v64
	v_div_scale_f32 v64, s0, v123, v10, v123
	v_fmac_f32_e32 v65, v71, v65
	v_rcp_f32_e32 v71, v63
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v74, v64, v70
	v_div_fmas_f32 v59, v60, v59, v67
	v_div_fixup_f32 v58, v58, v21, v126
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v56
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v60, -v68, v74, v64
	v_div_fixup_f32 v21, v59, v21, v125
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v57
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v69, -v63, v71, 1.0
	v_mul_f32_e32 v62, v66, v65
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v71, v69, v71
	v_fma_f32 v72, -v61, v62, v66
	v_div_scale_f32 v69, s3, v122, v10, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v62, v72, v65 :: v_dual_mul_f32 v67, v69, v71
	v_fma_f32 v59, -v61, v62, v66
	v_fma_f32 v61, -v73, v75, 1.0
	v_fmac_f32_e32 v74, v60, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v63, v67, v69
	v_div_scale_f32 v66, null, v10, v10, v120
	v_div_fmas_f32 v59, v59, v65, v62
	v_fmac_f32_e32 v75, v61, v75
	v_fmac_f32_e32 v67, v60, v71
	v_fma_f32 v62, -v68, v74, v64
	v_div_scale_f32 v65, null, v10, v10, v119
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v63, -v63, v67, v69
	v_div_fmas_f32 v62, v62, v70, v74
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v60, v66
	v_div_scale_f32 v61, s1, v121, v10, v121
	v_div_fmas_f32 v63, v63, v71, v67
	v_rcp_f32_e32 v67, v65
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v71, null, v10, v10, v118
	v_div_fixup_f32 v59, v59, v10, v124
	v_div_fixup_f32 v62, v62, v10, v123
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v66, v60, 1.0
	v_div_fixup_f32 v63, v63, v10, v122
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v70, -v65, v67, 1.0
	v_fmac_f32_e32 v60, v68, v60
	v_div_scale_f32 v68, s0, v120, v10, v120
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v67, v70, v67
	v_mul_f32_e32 v64, v61, v75
	v_div_scale_f32 v70, s2, v119, v10, v119
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v63, v63
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v69, -v73, v64, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v64, v69, v75 :: v_dual_mul_f32 v69, v68, v60
	v_fma_f32 v72, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v72, v60
	v_fma_f32 v61, -v73, v64, v61
	v_rcp_f32_e32 v73, v71
	v_div_scale_f32 v72, null, v10, v10, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v61, v61, v75, v64
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v75, v72
	v_div_fmas_f32 v60, v66, v60, v69
	v_div_scale_f32 v66, null, v10, v10, v117
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v71, v73, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v79, s2, v117, v10, v117
	v_rcp_f32_e32 v69, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v73, v74, v73
	v_fma_f32 v74, -v72, v75, 1.0
	v_div_fixup_f32 v61, v61, v10, v121
	v_div_fixup_f32 v60, v60, v10, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v75, v74, v75
	v_div_scale_f32 v74, s1, v115, v10, v115
	v_fma_f32 v77, -v66, v69, 1.0
	v_mul_f32_e32 v64, v70, v67
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v69, v77, v69
	v_fma_f32 v68, -v65, v64, v70
	v_div_scale_f32 v77, null, v10, v10, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v82, v79, v69
	v_fmac_f32_e32 v64, v68, v67
	v_div_scale_f32 v68, s0, v118, v10, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v81, v77
	v_fma_f32 v65, -v65, v64, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v70, v68, v73
	v_div_fmas_f32 v64, v65, v67, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v65, -v71, v70, v68
	v_mul_f32_e32 v67, v74, v75
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v83, -v77, v81, 1.0
	v_div_fixup_f32 v64, v64, v10, v119
	v_fmac_f32_e32 v70, v65, v73
	v_fma_f32 v65, -v72, v67, v74
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, s3, v116, v10, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v71, v70, v68
	v_fmac_f32_e32 v67, v65, v75
	v_fma_f32 v65, -v66, v82, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v71, v80, v78
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v68, v68, v73, v70
	v_fma_f32 v70, -v72, v67, v74
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v82, v65, v69
	v_fma_f32 v65, -v76, v71, v80
	v_div_scale_f32 v72, s0, v114, v10, v114
	v_div_fmas_f32 v67, v70, v75, v67
	v_div_scale_f32 v70, null, v10, v10, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v65, v78
	v_fma_f32 v66, -v66, v82, v79
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v74, v70
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v75, null, v10, v10, v110
	v_div_fmas_f32 v66, v66, v69, v82
	v_fma_f32 v69, -v76, v71, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v65, v72, v81
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v79, v75
	v_div_fixup_f32 v68, v68, v10, v118
	v_div_fmas_f32 v69, v69, v78, v71
	v_fma_f32 v73, -v77, v65, v72
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v67, v67, v10, v115
	v_div_fixup_f32 v66, v66, v10, v117
	v_div_fixup_f32 v69, v69, v10, v116
	v_fmac_f32_e32 v65, v73, v81
	v_fma_f32 v73, -v70, v74, 1.0
	v_fma_f32 v85, -v75, v79, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v67, v67
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v71, -v77, v65, v72
	v_div_scale_f32 v72, null, v10, v10, v112
	v_fmac_f32_e32 v74, v73, v74
	v_div_scale_f32 v73, null, v10, v10, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v65, v71, v81, v65
	v_rcp_f32_e32 v71, v72
	v_div_scale_f32 v76, vcc_lo, v113, v10, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v77, v73
	v_div_scale_f32 v81, null, v10, v10, v109
	v_mul_f32_e32 v80, v76, v74
	v_div_fixup_f32 v65, v65, v10, v114
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v78, -v72, v71, 1.0
	v_fma_f32 v84, -v70, v80, v76
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v82, -v73, v77, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v65, v65
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v71, v78, v71 :: v_dual_fmac_f32 v80, v84, v74
	v_div_scale_f32 v78, s0, v112, v10, v112
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v81, v83, 1.0
	v_fma_f32 v70, -v70, v80, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v86, v78, v71
	v_div_fmas_f32 v70, v70, v74, v80
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v84, -v72, v86, v78
	v_fmac_f32_e32 v77, v82, v77
	v_div_scale_f32 v82, s1, v111, v10, v111
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v86, v84, v71
	s_mov_b32 s0, 0xc1000000
	v_mul_f32_e32 v88, v82, v77
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v73, v88, v82
	v_fmac_f32_e32 v79, v85, v79
	v_div_scale_f32 v85, s2, v110, v10, v110
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s3, v109, v10, v109
	v_fmac_f32_e32 v88, v76, v77
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v89, v85, v79
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v90, v87, v83
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v72, -v72, v86, v78
	v_fma_f32 v84, -v75, v89, v85
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v74, -v81, v90, v87
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v71, v72, v71, v86
	v_fmac_f32_e32 v89, v84, v79
	v_fma_f32 v72, -v73, v88, v82
	v_fmac_f32_e32 v90, v74, v83
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v70, v70, v10, v113
	v_fma_f32 v73, -v75, v89, v85
	v_div_fmas_f32 v72, v72, v77, v88
	v_fma_f32 v74, -v81, v90, v87
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v71, v71, v10, v112
	v_div_fmas_f32 v73, v73, v79, v89
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v72, v72, v10, v111
	v_div_fmas_f32 v74, v74, v83, v90
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v73, v73, v10, v110
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v10, v74, v10, v109
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v74, v40
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v75, v21
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v76, v60
	v_cvt_i32_f32_e32 v78, v10
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
	v_and_b32_e32 v20, 15, v22
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v24, 15, v26
	v_and_b32_e32 v26, 15, v28
	v_and_b32_e32 v28, 15, v30
	v_and_b32_e32 v30, 15, v32
	v_and_b32_e32 v32, 15, v34
	v_and_b32_e32 v34, 15, v36
	v_and_b32_e32 v36, 15, v38
	v_and_b32_e32 v38, 15, v41
	v_and_b32_e32 v41, 15, v74
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v74, 10, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v70, v70
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_and_b32_e32 v21, 15, v23
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	v_and_b32_e32 v33, 15, v35
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v37, 15, v39
	v_and_b32_e32 v39, 15, v42
	v_and_b32_e32 v40, 15, v43
	v_and_b32_e32 v42, 15, v44
	v_and_b32_e32 v43, 15, v45
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v45, 15, v47
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v48, 15, v50
	v_and_b32_e32 v49, 15, v51
	v_and_b32_e32 v50, 15, v52
	v_and_b32_e32 v51, 15, v55
	v_and_b32_e32 v52, 15, v53
	v_and_b32_e32 v53, 15, v54
	v_and_b32_e32 v54, 15, v56
	v_and_b32_e32 v55, 15, v57
	v_and_b32_e32 v56, 15, v58
	v_and_b32_e32 v57, 15, v75
	v_and_b32_e32 v58, 15, v59
	v_and_b32_e32 v59, 15, v62
	v_and_b32_e32 v62, 15, v76
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v74, 0x1800, v74
	v_lshlrev_b32_e32 v75, 6, v3
	v_lshlrev_b32_e32 v76, 6, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v74, 0, v74, v75
	v_and_or_b32 v4, 0x1b00, v76, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v77, v65
	v_cvt_i32_f32_e32 v70, v70
	v_and_b32_e32 v60, 15, v63
	v_and_b32_e32 v61, 15, v61
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v7, v74, v8, v7
	v_xad_u32 v4, v4, v107, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v63, 15, v64
	v_and_b32_e32 v64, 15, v68
	v_and_b32_e32 v65, 15, v67
	v_and_b32_e32 v66, 15, v66
	v_and_b32_e32 v67, 15, v69
	v_and_b32_e32 v68, 15, v77
	v_and_b32_e32 v69, 15, v70
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v7, v[10:13]
	ds_store_b128 v7, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[18:21], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[26:29]
	ds_store_b128 v7, v[34:37] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v4
	ds_load_b128 v[34:37], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[42:45]
	ds_store_b128 v7, v[50:53] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v4
	ds_load_b128 v[50:53], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[58:61]
	ds_store_b128 v7, v[66:69] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v4
	ds_load_b128 v[66:69], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[14:17]
	ds_store_b128 v7, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v4
	ds_load_b128 v[22:25], v4 offset:1024
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v73, v73
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[30:33]
	ds_store_b128 v7, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v4
	ds_load_b128 v[38:41], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v70, 15, v71
	v_and_b32_e32 v71, 15, v72
	v_and_b32_e32 v72, 15, v73
	v_and_b32_e32 v73, 15, v78
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v7, v[46:49]
	ds_store_b128 v7, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v4
	ds_load_b128 v[54:57], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[62:65]
	ds_store_b128 v7, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v4
	ds_load_b128 v[70:73], v4 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v18, 4, v10
	v_lshl_or_b32 v4, v19, 4, v11
	v_lshl_or_b32 v8, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v12, v23, 4, v15
	v_lshl_or_b32 v13, v24, 4, v16
	v_lshl_or_b32 v14, v25, 4, v17
	v_lshl_or_b32 v18, v37, 4, v29
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v37, 3, v106
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v9, s0, v9
	s_mul_i32 s2, s30, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v16, v35, 4, v27
	v_lshl_or_b32 v17, v36, 4, v28
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	v_lshl_or_b32 v21, v40, 4, v32
	v_lshl_or_b32 v22, v41, 4, v33
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v39, s2, s1, v37
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v10.l
	v_and_b16 v2.l, 0xff, v8.l
	v_lshlrev_b16 v4.l, 8, v4.l
	v_and_b16 v4.h, 0xff, v7.l
	v_lshlrev_b16 v5.l, 8, v14.l
	v_and_b16 v6.l, 0xff, v13.l
	v_lshlrev_b16 v7.l, 8, v12.l
	v_and_b16 v7.h, 0xff, v11.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v23, v50, 4, v42
	v_lshl_or_b32 v24, v51, 4, v43
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v41, v39, v9
	v_add3_u32 v42, v9, s1, v39
	v_add3_u32 v43, v9, s2, v39
	v_add3_u32 v39, v9, s0, v39
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	v_lshlrev_b16 v4.l, 8, v16.l
	v_and_b16 v4.h, 0xff, v15.l
	v_lshlrev_b16 v5.l, 8, v22.l
	v_and_b16 v6.l, 0xff, v21.l
	v_lshlrev_b16 v7.l, 8, v20.l
	v_and_b16 v7.h, 0xff, v19.l
	s_and_b32 s1, s17, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s16
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v31, v66, 4, v58
	v_lshl_or_b32 v32, v67, 4, v59
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[8:9], v41, s[0:3], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v4.l, 8, v24.l
	v_and_b16 v4.h, 0xff, v23.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v25, v52, 4, v44
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v28, v55, 4, v47
	v_lshl_or_b32 v29, v56, 4, v48
	v_lshl_or_b32 v30, v57, 4, v49
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[8:9], v42, s[0:3], 0 offen
	v_or_b16 v8.l, v4.h, v4.l
	v_lshlrev_b16 v4.l, 8, v32.l
	v_and_b16 v4.h, 0xff, v31.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v33, v68, 4, v60
	v_lshl_or_b32 v34, v69, 4, v61
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v35, v70, 4, v62
	v_lshl_or_b32 v36, v71, 4, v63
	v_lshl_or_b32 v38, v72, 4, v64
	v_lshl_or_b32 v40, v73, 4, v65
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v26.l
	v_and_b16 v2.l, 0xff, v25.l
	v_lshlrev_b16 v5.l, 8, v30.l
	v_and_b16 v6.l, 0xff, v29.l
	v_lshlrev_b16 v7.l, 8, v28.l
	v_and_b16 v7.h, 0xff, v27.l
	v_or_b16 v10.l, v4.h, v4.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v4, 4, v0
	v_lshrrev_b32_e32 v3, 2, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v1.l, 8, v34.l
	v_and_b16 v2.l, 0xff, v33.l
	v_lshlrev_b16 v5.l, 8, v40.l
	v_and_b16 v6.l, 0xff, v38.l
	v_lshlrev_b16 v7.l, 8, v36.l
	v_and_b16 v7.h, 0xff, v35.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v3, 0, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v11.h, v6.l, v5.l
	v_or_b16 v11.l, v7.h, v7.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v7, 0, v37
	v_mov_b16_e32 v2.l, v6.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v3, v3, v4, v37
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v5, v0, 63, s30
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v43, s[0:3], 0 offen
	buffer_store_b64 v[10:11], v39, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s4, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v7, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v3
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v5, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s1, s19, 0xffff
	s_mov_b32 s0, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s28, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp73:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp74:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 31
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16060
; TotalNumSgprs: 33
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 256
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
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
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
