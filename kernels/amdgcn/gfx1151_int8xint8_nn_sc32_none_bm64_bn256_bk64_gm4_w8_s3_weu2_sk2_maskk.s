	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s28, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	v_lshlrev_b32_e32 v172, 4, v0
	v_and_b32_e32 v173, 16, v0
	v_lshlrev_b32_e32 v174, 1, v0
	v_lshlrev_b32_e32 v175, 5, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s18, 63
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s5, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s5, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s5, s5, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s4, s28, 0x7f
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s4, 0x7f
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s7, s19, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v3, s7 :: v_dual_lshlrev_b32 v4, 4, v0
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v1, 16, v0
	v_lshlrev_b32_e32 v5, 1, v0
	v_lshlrev_b32_e32 v2, 5, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow185
	s_load_b64 s[16:17], s[0:1], 0x20
	v_or_b32_e32 v170, s5, v0
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v171, 3, v0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v133, 0
	v_mov_b32_e32 v145, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s2, s2, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s4, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s6, s28, 31
.Ltmp16:
	.loc	1 368 26 is_stmt 1              ; generate_amdgcn.py:368:26
	s_lshl_b32 s1, s3, 6
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 25
	v_mul_lo_u32 v2, s28, v2
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s3, s6, 31
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v176, 3, v171
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s4, s4, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s0, s3, 27
.Ltmp21:
	.loc	1 374 34 is_stmt 1              ; generate_amdgcn.py:374:34
	s_mul_i32 s7, s2, s28
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s6, s6, s0
.Ltmp23:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s4, 7
	s_mov_b32 s4, 0
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s18, s6, 5
	v_add3_u32 v178, v2, v176, s7
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
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
.Ltmp25:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_and_b32_e32 v1, 0xf0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 15, v0
	v_bfe_i32 v2, v0, 2, 1
	v_bfe_i32 v5, v0, 3, 1
	v_lshrrev_b32_e32 v15, 6, v0
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v177, 3, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v4, 4, v3
	v_bfe_i32 v7, v0, 4, 1
	v_dual_mov_b32 v146, 0 :: v_dual_lshlrev_b32 v9, 5, v171
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v8, s19, v177
	v_lshl_or_b32 v11, v3, 9, v177
	v_or_b32_e32 v3, s2, v3
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v166, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v13, 16, v3
	v_or_b32_e32 v14, 32, v3
	v_mul_lo_u32 v179, v3, s18
	v_or_b32_e32 v3, 48, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v169, v8, v4, s5
	s_mov_b32 s5, s4
	v_and_b32_e32 v2, 0x90, v2
	v_and_b32_e32 v5, 0x110, v5
	v_lshlrev_b32_e32 v6, 3, v0
	v_and_b32_e32 v10, 0xe00, v172
	v_mul_lo_u32 v180, v13, s18
	v_lshlrev_b32_e32 v13, 2, v0
	v_xor_b32_e32 v5, v2, v5
	v_mul_lo_u32 v182, v3, s18
	v_and_b32_e32 v3, 2, v15
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v6, 0x778, v6
	v_and_b32_e32 v7, 0x90, v7
	v_and_or_b32 v2, 0x160, v175, v2
	v_or3_b32 v5, v9, v10, v5
	v_mul_lo_u32 v181, v14, s18
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v13, 0x1c0, v13
	v_dual_mov_b32 v165, 0 :: v_dual_and_b32 v14, 32, v175
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v3, 0, v3
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v183, 0, v1
	v_xor_b32_e32 v6, v7, v6
	v_xor_b32_e32 v7, 0x90, v11
	v_xor_b32_e32 v9, 0x110, v11
	v_xor_b32_e32 v10, 16, v2
	v_xor_b32_e32 v12, 16, v5
	v_dual_mov_b32 v122, 0 :: v_dual_and_b32 v15, 28, v174
	v_add3_u32 v13, v3, v13, v14
	v_add3_u32 v14, v183, v1, v14
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v184, 0, v6
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v186, 0, v7
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v188, 0, v2
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v190, 0, v5
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v185, 0, v11
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v187, 0, v9
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v189, 0, v10
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v191, 0, v12
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v192, v13, v15
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v193, v14, v15
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v108, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v143, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v107, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s29, s19, 5
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
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s4, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s6, s6, s1
	v_mad_u64_u32 v[9:10], null, s6, s19, v[169:170]
	v_or_b32_e32 v10, s6, v177
	s_or_b32 s5, s6, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v11, s5, v177
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v10, s19, v9
	v_add_nc_u32_e32 v17, s29, v9
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s28, v11
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v13, v9, 0x5010400
	v_perm_b32 v19, v13, v9, 0x7030602
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v9, s19, v17
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v20, v14, v10, 0x5010400
	v_perm_b32 v21, v14, v10, 0x7030602
	v_cndmask_b32_e64 v10, 0x80000000, v17, s0
	v_perm_b32 v22, v15, v11, 0x5010400
	v_cndmask_b32_e64 v13, 0x80000000, v9, s0
	v_perm_b32 v23, v15, v11, 0x7030602
	v_perm_b32 v24, v16, v12, 0x5010400
	v_perm_b32 v25, v16, v12, 0x7030602
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 386 29 is_stmt 1              ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s6, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s18
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v17, 24, v25
	v_lshlrev_b16 v17.l, 8, v17.l
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v13, v9, 0x5010400
	v_perm_b32 v27, v13, v9, 0x7030602
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v9, s6, v176
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v28, v14, v10, 0x5010400
	v_perm_b32 v29, v14, v10, 0x7030602
	v_perm_b32 v30, v15, v11, 0x5010400
	v_perm_b32 v31, v15, v11, 0x7030602
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v9
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v9, s6, v178
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v11, 24, v19
	v_perm_b32 v32, v16, v12, 0x5010400
	v_perm_b32 v33, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v12, 24, v20
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v11.l, 8, v11.l
	v_lshrrev_b32_e32 v13, 24, v21
	v_lshrrev_b32_e32 v14, 24, v22
	v_lshlrev_b16 v12.l, 8, v12.l
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[9:10], v9, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v15, 24, v23
	v_lshlrev_b16 v13.l, 8, v13.l
	v_lshlrev_b16 v14.l, 8, v14.l
	v_lshrrev_b32_e32 v16, 24, v24
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s0, s19
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v15.l, 8, v15.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v16.l, 8, v16.l
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v184, v[9:10] offset:16384
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v9, s5, v176
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v10, 24, v18
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v9, 8, v18
	v_and_b16 v9.h, 0xff, v18.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v10.l, 8, v10.l
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
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
	ds_store_b16 v185, v9
	ds_store_b16_d16_hi v185, v9 offset:32
	ds_store_b16 v185, v10 offset:64
	ds_store_b16_d16_hi v185, v10 offset:96
	ds_store_b16 v186, v11
	ds_store_b16_d16_hi v186, v11 offset:32
	ds_store_b16 v186, v12 offset:64
	ds_store_b16_d16_hi v186, v12 offset:96
	ds_store_b16 v187, v13
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v9, s5, v178
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v13.h, 0xff, v22.h
	v_and_b16 v10.l, 0xff, v27.l
	v_and_b16 v10.h, 0xff, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v13.h, v13.h, v14.l
	v_lshrrev_b32_e32 v14, 8, v23
	v_and_b16 v14.h, 0xff, v23.l
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[11:12], v9, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v9.l, 0xff, v26.l
	v_lshlrev_b16 v14.l, 8, v14.l
	v_and_b16 v9.h, 0xff, v26.h
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v14.l, v14.h, v14.l
	v_and_b16 v14.h, 0xff, v23.h
	ds_store_b16_d16_hi v187, v13 offset:32
	v_lshrrev_b32_e32 v13, 8, v26
	v_lshlrev_b16 v13.h, 8, v18.l
	v_or_b16 v14.h, v14.h, v15.l
	v_lshrrev_b32_e32 v15, 8, v24
	v_and_b16 v15.h, 0xff, v24.l
	ds_store_b16 v187, v14 offset:64
	ds_store_b16_d16_hi v187, v14 offset:96
	v_lshlrev_b16 v15.l, 8, v15.l
	v_lshrrev_b32_e32 v14, 24, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v15.l, v15.h, v15.l
	v_and_b16 v15.h, 0xff, v24.h
	v_or_b16 v15.h, v15.h, v16.l
	v_lshrrev_b32_e32 v16, 8, v25
	v_and_b16 v16.h, 0xff, v25.l
	ds_store_b16 v185, v15 offset:384
	v_lshlrev_b16 v16.l, 8, v16.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v16.l, v16.h, v16.l
	v_and_b16 v16.h, 0xff, v25.h
	ds_store_b16_d16_hi v185, v15 offset:416
	v_lshrrev_b32_e32 v15, 8, v27
	v_or_b16 v16.h, v16.h, v17.l
	ds_store_b16 v185, v16 offset:448
	v_lshrrev_b32_e32 v17, 8, v28
	ds_store_b16_d16_hi v185, v16 offset:480
	v_lshrrev_b32_e32 v16, 24, v27
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v184, v[11:12] offset:18432
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
	ds_store_b16 v185, v9 offset:8192
	ds_store_b16_d16_hi v185, v9 offset:8224
	ds_store_b16 v185, v10 offset:8256
	ds_store_b16_d16_hi v185, v10 offset:8288
	ds_store_b16 v186, v11 offset:8192
	ds_store_b16_d16_hi v186, v11 offset:8224
	ds_store_b16 v186, v12 offset:8256
	ds_store_b16_d16_hi v186, v12 offset:8288
	ds_store_b16 v187, v13 offset:8192
	ds_store_b16_d16_hi v187, v13 offset:8224
	ds_store_b16 v187, v14 offset:8256
	ds_store_b16_d16_hi v187, v14 offset:8288
	ds_store_b16 v185, v15 offset:8576
	ds_store_b16_d16_hi v185, v15 offset:8608
	ds_store_b16 v185, v16 offset:8640
	ds_store_b16_d16_hi v185, v16 offset:8672
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[73:76], v190 offset:4096
	ds_load_b128 v[77:80], v191 offset:4096
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[17:20], v188 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[41:44], v190
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[21:24], v189 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[45:48], v191
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[81:84], v188 offset:17920
	ds_load_b128 v[85:88], v189 offset:17920
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[73:76], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[77:80], v[21:24], v[65:72] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[17:20], v188 offset:16896
	ds_load_b128 v[21:24], v189 offset:16896
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v200, v66
	v_cvt_f32_i32_e32 v199, v67
	v_cvt_f32_i32_e32 v67, v70
	v_cvt_f32_i32_e32 v66, v71
	v_cvt_f32_i32_e32 v198, v68
	v_cvt_f32_i32_e32 v68, v69
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[21:24], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[21:24], v[57:64] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[17:20], v188 offset:17408
	ds_load_b128 v[21:24], v189 offset:17408
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v71, v57
	v_cvt_f32_i32_e32 v70, v59
	v_cvt_f32_i32_e32 v59, v62
	v_cvt_f32_i32_e32 v57, v64
	v_cvt_f32_i32_e32 v69, v60
	v_cvt_f32_i32_e32 v60, v61
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[21:24], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[21:24], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v62, v49
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[85:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[81:84], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v73, v170, s6, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v74, v180, s0, 1
	v_add_lshl_u32 v75, v181, s0, 1
	v_add_lshl_u32 v76, v182, s0, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[85:88], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v64, v51
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v51, v54
	v_cvt_f32_i32_e32 v49, v56
	v_cvt_f32_i32_e32 v54, v42
	v_cvt_f32_i32_e32 v56, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v42, v47
	v_cvt_f32_i32_e32 v45, v10
	v_cvt_f32_i32_e32 v47, v12
	v_cvt_f32_i32_e32 v61, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v41
	v_cvt_f32_i32_e32 v41, v48
	v_cvt_f32_i32_e32 v48, v13
	v_cvt_f32_i32_e32 v13, v34
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v37, v40
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v192, v73 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v73, v179, s0, 1
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s5, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s18
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s5, s0, s19
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x3
	buffer_load_u16 v197, v73, s[8:11], 0 offen
	buffer_load_u16 v196, v74, s[8:11], 0 offen
	buffer_load_u16 v195, v75, s[8:11], 0 offen
	buffer_load_u16 v194, v76, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[233:236], v190 offset:12288
	ds_load_b128 v[237:240], v191 offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[81:84], v188 offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[225:228], v190 offset:8192
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[85:88], v189 offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[229:232], v191 offset:8192
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[241:244], v188 offset:19968
	ds_load_b128 v[245:248], v189 offset:19968
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	s_cmp_lg_u32 s4, s3
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[225:228], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[201:208], v[233:236], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[229:232], v[85:88], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[201:208], v[237:240], v[85:88], v[201:208] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[81:84], v188 offset:18944
	ds_load_b128 v[85:88], v189 offset:18944
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v40, v204
	v_cvt_f32_i32_e32 v204, v208
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[225:228], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[233:236], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[229:232], v[85:88], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[237:240], v[85:88], v[209:216] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[81:84], v188 offset:19456
	ds_load_b128 v[85:88], v189 offset:19456
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v208, v212
	v_cvt_f32_i32_e32 v212, v216
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[225:228], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[233:236], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[229:232], v[85:88], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[237:240], v[85:88], v[217:224] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[225:228], v[241:244], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v89, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[229:232], v[245:248], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[225:232], v[233:236], v[241:244], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v233, v65
	v_cvt_f32_i32_e32 v65, v72
	v_cvt_f32_i32_e32 v72, v58
	v_wmma_i32_16x16x16_iu8 v[225:232], v[237:240], v[245:248], v[225:232] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v58, v63
	v_cvt_f32_i32_e32 v63, v50
	v_cvt_f32_i32_e32 v50, v55
	v_cvt_f32_i32_e32 v55, v43
	v_cvt_f32_i32_e32 v43, v46
	v_cvt_f32_i32_e32 v46, v11
	v_cvt_f32_i32_e32 v236, v16
	v_cvt_f32_i32_e32 v16, v33
	v_cvt_f32_i32_e32 v33, v201
	v_cvt_f32_i32_e32 v201, v205
	v_cvt_f32_i32_e32 v205, v209
	v_cvt_f32_i32_e32 v209, v213
	v_cvt_f32_i32_e32 v213, v217
	v_cvt_f32_i32_e32 v217, v221
	v_cvt_f32_i32_e32 v221, v225
	v_cvt_f32_i32_e32 v225, v229
	v_cvt_f32_i32_e32 v234, v14
	v_cvt_f32_i32_e32 v14, v35
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v38, v202
	v_cvt_f32_i32_e32 v202, v206
	v_cvt_f32_i32_e32 v206, v210
	v_cvt_f32_i32_e32 v210, v214
	v_cvt_f32_i32_e32 v214, v218
	v_cvt_f32_i32_e32 v218, v222
	v_cvt_f32_i32_e32 v222, v226
	v_cvt_f32_i32_e32 v226, v230
	v_cvt_f32_i32_e32 v235, v15
	v_cvt_f32_i32_e32 v15, v36
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v39, v203
	v_cvt_f32_i32_e32 v203, v207
	v_cvt_f32_i32_e32 v207, v211
	v_cvt_f32_i32_e32 v211, v215
	v_cvt_f32_i32_e32 v216, v220
	v_cvt_f32_i32_e32 v215, v219
	v_cvt_f32_i32_e32 v219, v223
	v_cvt_f32_i32_e32 v223, v227
	v_cvt_f32_i32_e32 v227, v231
	v_cvt_f32_i32_e32 v220, v224
	v_cvt_f32_i32_e32 v224, v228
	v_cvt_f32_i32_e32 v228, v232
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v197, 16, v197
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v196, 16, v196
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v195, 16, v195
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v229, v9, v197
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[9:12], v183 offset:20480
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v16, v16, v196
	v_mul_f32_e32 v13, v196, v13
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v230, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v146, v16, v230
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v16, v25, v195 :: v_dual_lshlrev_b32 v25, 16, v194
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v147, v16, v230 :: v_dual_mul_f32 v16, v17, v25
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v17, 16, v10
	v_and_b32_e32 v10, 0xffff0000, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v148, v16, v230
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v16, v197, v45
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v134, v13, v17 :: v_dual_mul_f32 v13, v195, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v133, v16, v17 :: v_dual_lshlrev_b32 v16, 16, v11
	v_fmac_f32_e32 v135, v13, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v25, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v136, v13, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v197, v46
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v17, v170, s5, 1
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v165, v13, v16
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v13, v196, v14 :: v_dual_lshlrev_b32 v14, 16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v145, v229, v230 :: v_dual_and_b32 v12, 0xffff0000, v12
	v_dual_fmac_f32 v166, v13, v16 :: v_dual_mul_f32 v13, v195, v27
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v11, 0xffff0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v167, v13, v16
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v25, v19
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v168, v13, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v197, v47
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v16, v182, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v129, v13, v14
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v196, v15
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v15, v181, s0, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v130, v13, v14 :: v_dual_mul_f32 v13, v195, v28
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v131, v13, v14
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v25, v20
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v132, v13, v14
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v13, v179, s0, 1
	v_add_lshl_u32 v14, v180, s0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x3
	buffer_load_u16 v18, v13, s[8:11], 0 offen
	buffer_load_u16 v26, v14, s[8:11], 0 offen
	buffer_load_u16 v27, v15, s[8:11], 0 offen
	buffer_load_u16 v28, v16, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[13:16], v183 offset:20496
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v45, 16, v18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v46, v73, v45
	ds_store_b32 v193, v17 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v183 offset:20480
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v145, v46, v17 :: v_dual_mul_f32 v46, v45, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v133, v46, v18 :: v_dual_mul_f32 v46, v45, v75
	v_dual_fmac_f32 v165, v46, v19 :: v_dual_mul_f32 v46, v45, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v129, v46, v20 :: v_dual_mul_f32 v46, v97, v26
	v_fmac_f32_e32 v146, v46, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v46, v26, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v134, v46, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v46, v26, v99
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v166, v46, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v46, v26, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v130, v46, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v46, v89, v27
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v147, v46, v17 :: v_dual_mul_f32 v46, v27, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v135, v46, v18 :: v_dual_mul_f32 v46, v27, v91
	v_dual_fmac_f32 v167, v46, v19 :: v_dual_mul_f32 v46, v27, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v131, v46, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v46, v81, v28
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v148, v46, v17 :: v_dual_mul_f32 v17, v28, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v136, v17, v18 :: v_dual_and_b32 v9, 0xffff0000, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v28, v83 :: v_dual_lshlrev_b32 v18, 16, v13
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v168, v17, v19 :: v_dual_mul_f32 v17, v28, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v197, v48
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v161, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v196, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v162, v17, v18 :: v_dual_mul_f32 v17, v195, v29
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v34, v27, v216 :: v_dual_mul_f32 v29, v26, v210
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v163, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v25, v21
	v_mul_f32_e32 v21, v45, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v164, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v197, v234
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v18, 16, v14
	v_and_b32_e32 v14, 0xffff0000, v14
	v_and_b32_e32 v13, 0xffff0000, v13
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v125, v17, v18
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v196, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, v27, v217 :: v_dual_fmac_f32 v126, v17, v18
	v_dual_mul_f32 v17, v195, v30 :: v_dual_mul_f32 v30, v26, v211
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v127, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v25, v22
	v_mul_f32_e32 v22, v26, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v128, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v197, v235
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v18, 16, v15
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v157, v17, v18
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v196, v36 :: v_dual_mul_f32 v36, v27, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v158, v17, v18 :: v_dual_mul_f32 v17, v195, v31
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v31, v27, v213
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v159, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v25, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v23, v26, v207 :: v_dual_fmac_f32 v160, v17, v18
	v_mul_f32_e32 v17, v197, v236
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v18, 16, v16
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v121, v17, v18 :: v_dual_and_b32 v16, 0xffff0000, v16
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v196, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v37, v27, v219 :: v_dual_fmac_f32 v122, v17, v18
	v_mul_f32_e32 v17, v195, v32
	v_mul_f32_e32 v32, v27, v214
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v123, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v25, v24
	v_mul_f32_e32 v24, v26, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v124, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[17:20], v183 offset:20496
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v161, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v45, v78
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v125, v21, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v45, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v157, v21, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v45, v80
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v121, v21, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v26, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v162, v21, v17 :: v_dual_mul_f32 v21, v26, v102
	v_dual_fmac_f32 v126, v21, v18 :: v_dual_mul_f32 v21, v26, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v158, v21, v19 :: v_dual_mul_f32 v21, v26, v104
	v_dual_fmac_f32 v122, v21, v20 :: v_dual_mul_f32 v21, v27, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v163, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v27, v94
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v127, v21, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v27, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v159, v21, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v27, v96
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v123, v21, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v28, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v164, v21, v17 :: v_dual_mul_f32 v17, v28, v86
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v21, v26, v205 :: v_dual_fmac_f32 v128, v17, v18
	v_dual_mul_f32 v17, v28, v87 :: v_dual_mul_f32 v18, v45, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v160, v17, v19 :: v_dual_mul_f32 v17, v28, v88
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v19, v45, v203
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v124, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v197, v233
	v_mul_f32_e32 v20, v45, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v153, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v196, v71
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v154, v17, v9 :: v_dual_mul_f32 v17, v195, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v155, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v25, v53
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v156, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v197, v200
	v_mul_f32_e32 v17, v45, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v117, v9, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v196, v72
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v118, v9, v10 :: v_dual_mul_f32 v9, v195, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v119, v9, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v25, v54
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v120, v9, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v197, v199 :: v_dual_mul_f32 v10, v196, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v149, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v196, v70 :: v_dual_fmac_f32 v106, v10, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v150, v9, v11 :: v_dual_mul_f32 v9, v195, v64
	v_fmac_f32_e32 v151, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v25, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v152, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v197, v198
	v_mul_f32_e32 v11, v195, v49
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v113, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v196, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v107, v11, v16
	v_dual_fmac_f32 v114, v9, v12 :: v_dual_mul_f32 v9, v195, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v115, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v25, v56
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v116, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v197, v68
	v_dual_mul_f32 v12, v25, v41 :: v_dual_mul_f32 v41, v28, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v141, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v196, v60
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v108, v12, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v142, v9, v13 :: v_dual_mul_f32 v9, v195, v52
	v_fmac_f32_e32 v143, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v25, v44
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v15, 0xffff0000, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v44, v28, v227
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v144, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v197, v67
	v_mul_f32_e32 v13, v45, v33
	v_mul_f32_e32 v33, v27, v215
	v_mul_f32_e32 v27, v27, v220
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v109, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v196, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v110, v9, v14 :: v_dual_mul_f32 v9, v195, v51
	v_fmac_f32_e32 v111, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v25, v43
	v_mul_f32_e32 v43, v28, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v112, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v197, v66
	v_mul_f32_e32 v14, v45, v38
	v_dual_mul_f32 v38, v28, v221 :: v_dual_fmac_f32 v137, v9, v15
	v_mul_f32_e32 v9, v196, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v138, v9, v15 :: v_dual_mul_f32 v9, v195, v50
	v_fmac_f32_e32 v139, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v25, v42
	v_mul_f32_e32 v25, v26, v209
	v_mul_f32_e32 v26, v26, v212
	v_mul_f32_e32 v42, v28, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v140, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v197, v65
	v_mul_f32_e32 v15, v45, v39
	v_mul_f32_e32 v39, v28, v222
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v105, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v183 offset:20992
	v_mul_f32_e32 v16, v45, v40
	v_mul_f32_e32 v40, v28, v223
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v28, v28, v228 :: v_dual_fmac_f32 v153, v13, v9
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v117, v14, v10
	v_fmac_f32_e32 v149, v15, v11
	v_fmac_f32_e32 v113, v16, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[13:16], v183 offset:21008
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v154, v21, v9
	v_fmac_f32_e32 v118, v22, v10
	v_fmac_f32_e32 v150, v23, v11
	v_fmac_f32_e32 v114, v24, v12
	v_fmac_f32_e32 v119, v32, v10
	v_fmac_f32_e32 v151, v33, v11
	v_fmac_f32_e32 v115, v34, v12
	v_fmac_f32_e32 v156, v38, v9
	v_fmac_f32_e32 v120, v39, v10
	v_fmac_f32_e32 v152, v40, v11
	v_fmac_f32_e32 v116, v41, v12
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v141, v17, v13
	v_fmac_f32_e32 v109, v18, v14
	v_fmac_f32_e32 v137, v19, v15
	v_dual_fmac_f32 v105, v20, v16 :: v_dual_fmac_f32 v142, v25, v13
	v_fmac_f32_e32 v110, v29, v14
	v_fmac_f32_e32 v138, v30, v15
	v_dual_fmac_f32 v106, v26, v16 :: v_dual_fmac_f32 v143, v35, v13
	v_fmac_f32_e32 v111, v36, v14
	v_fmac_f32_e32 v139, v37, v15
	v_dual_fmac_f32 v107, v27, v16 :: v_dual_fmac_f32 v144, v42, v13
	v_fmac_f32_e32 v112, v43, v14
	v_fmac_f32_e32 v140, v44, v15
	v_dual_fmac_f32 v108, v28, v16 :: v_dual_fmac_f32 v155, v31, v9
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, s29 :: v_dual_mov_b32 v4, v172
	v_dual_mov_b32 v1, v173 :: v_dual_mov_b32 v2, v175
	v_mov_b32_e32 v5, v174
.LBB0_7:                                ; %._crit_edge
	.loc	1 450 23 is_stmt 1              ; generate_amdgcn.py:450:23
	s_mul_i32 s35, s2, s19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v2, 0x1c00, v2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_add_nc_u32_e32 v64, s35, v3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v3, 0xcf0, v4
	v_and_or_b32 v4, v5, 64, v1
	v_lshlrev_b32_e32 v5, 13, v0
	v_lshlrev_b32_e32 v0, 6, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v3, v4, v3
	v_lshlrev_b32_e32 v1, 2, v1
	v_and_or_b32 v0, 0x300, v0, v2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s19, 3
	s_add_i32 s67, s35, s19
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_or_b32 v3, 0xe000, v5, v3
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl1_add_u32 s66, s19, s35
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v65, s35, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s18, s19, 22
	s_add_i32 s65, s35, s0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v4, 0, v3
	v_xad_u32 v3, v3, 32, 0
	v_add_lshl_u32 v66, s67, v170, 2
	ds_store_b128 v4, v[145:148]
	ds_store_b128 v4, v[165:168] offset:256
	ds_store_b128 v4, v[161:164] offset:512
	ds_store_b128 v4, v[157:160] offset:768
	ds_store_b128 v4, v[153:156] offset:4096
	ds_store_b128 v4, v[149:152] offset:4352
	ds_store_b128 v4, v[141:144] offset:4608
	ds_store_b128 v4, v[137:140] offset:4864
	v_lshlrev_b32_e32 v4, 4, v171
	ds_store_b128 v3, v[133:136]
	ds_store_b128 v3, v[129:132] offset:256
	ds_store_b128 v3, v[125:128] offset:512
	ds_store_b128 v3, v[121:124] offset:768
	ds_store_b128 v3, v[117:120] offset:4096
	ds_store_b128 v3, v[113:116] offset:4352
	ds_store_b128 v3, v[109:112] offset:4608
	ds_store_b128 v3, v[105:108] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or3_b32 v40, v0, v4, v1
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s19, 5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v67, s66, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s2, s19, 6
	s_mul_i32 s3, s19, 7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v4, 0, v40
	v_xad_u32 v12, 0x2010, v40, 0
	v_xad_u32 v28, 0x6030, v40, 0
	v_xad_u32 v20, 0x4020, v40, 0
	v_xad_u32 v44, 0xa050, v40, 0
	ds_load_b128 v[0:3], v4
	ds_load_b128 v[4:7], v4 offset:128
	ds_load_b128 v[8:11], v12
	ds_load_b128 v[12:15], v12 offset:128
	ds_load_b128 v[16:19], v20
	ds_load_b128 v[20:23], v20 offset:128
	v_xad_u32 v36, 0x8040, v40, 0
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
	s_mul_i32 s4, s19, 9
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_load_b128 v[60:63], v60 offset:128
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s5, s19, 10
	s_mul_i32 s6, s19, 11
	s_mul_i32 s7, s19, 12
	s_mul_i32 s8, s19, 13
	s_mul_i32 s9, s19, 14
	s_mul_i32 s10, s19, 15
	s_mul_i32 s11, s19, 17
	s_mul_i32 s12, s19, 18
	s_mul_i32 s13, s19, 19
	s_mul_i32 s14, s19, 20
	s_mul_i32 s15, s19, 21
	s_mul_i32 s20, s19, 23
	s_mul_i32 s21, s19, 24
	s_mul_i32 s22, s19, 25
	s_mul_i32 s23, s19, 26
	s_mul_i32 s24, s19, 27
	s_mul_i32 s25, s19, 28
	s_mul_i32 s26, s19, 29
	s_mul_i32 s27, s19, 30
	s_mul_i32 s28, s19, 31
	s_mul_i32 s29, s19, 33
	s_mul_i32 s30, s19, 34
	s_mul_i32 s31, s19, 35
	s_mul_i32 s68, s19, 36
	s_mul_i32 s69, s19, 37
	s_mul_i32 s70, s19, 38
	s_mul_i32 s71, s19, 39
	s_mul_i32 s72, s19, 40
	s_mul_i32 s73, s19, 41
	s_mul_i32 s74, s19, 42
	s_mul_i32 s75, s19, 43
	s_mul_i32 s76, s19, 44
	s_mul_i32 s77, s19, 45
	s_mul_i32 s78, s19, 46
	s_mul_i32 s79, s19, 47
	s_mul_i32 s80, s19, 48
	s_mul_i32 s81, s19, 49
	s_mul_i32 s82, s19, 50
	s_mul_i32 s83, s19, 51
	s_mul_i32 s84, s19, 52
	s_mul_i32 s85, s19, 53
	s_mul_i32 s86, s19, 54
	s_mul_i32 s87, s19, 55
	s_mul_i32 s88, s19, 56
	s_mul_i32 s89, s19, 57
	s_mul_i32 s90, s19, 58
	s_mul_i32 s91, s19, 59
	s_mul_i32 s92, s19, 60
	s_mul_i32 s93, s19, 61
	s_mul_i32 s94, s19, 62
	s_mul_i32 s95, s19, 63
	s_lshl2_add_u32 s64, s19, s35
	s_lshl3_add_u32 s60, s19, s35
	s_lshl4_add_u32 s52, s19, s35
	s_add_i32 s46, s35, s18
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_add_lshl_u32 v68, s65, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s63, s35, s1
	s_add_i32 s62, s35, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v65, s[16:19], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v66, s[16:19], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v67, s[16:19], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v68, s[16:19], 0 offen
	v_add_lshl_u32 v0, s64, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s61, s35, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s63, v170, 2
	v_add_lshl_u32 v16, s62, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s59, s35, s4
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v24, s61, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s58, s35, s5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v65, s60, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s57, s35, s6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v32, v0, s[16:19], 0 offen
	buffer_atomic_add_f32 v40, v8, s[16:19], 0 offen
	buffer_atomic_add_f32 v48, v16, s[16:19], 0 offen
	buffer_atomic_add_f32 v56, v24, s[16:19], 0 offen
	buffer_atomic_add_f32 v4, v65, s[16:19], 0 offen
	v_add_lshl_u32 v0, s59, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s56, s35, s7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s58, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s55, s35, s8
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s57, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s54, s35, s9
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v16, s56, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s53, s35, s10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v24, s55, v170, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[16:19], 0 offen
	buffer_atomic_add_f32 v20, v4, s[16:19], 0 offen
	buffer_atomic_add_f32 v28, v8, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v36, v16, s[16:19], 0 offen
	buffer_atomic_add_f32 v44, v24, s[16:19], 0 offen
	v_add_lshl_u32 v0, s54, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s51, s35, s11
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s53, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s50, s35, s12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s52, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s49, s35, s13
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v12, s51, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s48, s35, s14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v16, s50, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s47, s35, s15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	buffer_atomic_add_f32 v52, v0, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[16:19], 0 offen
	buffer_atomic_add_f32 v1, v8, s[16:19], 0 offen
	buffer_atomic_add_f32 v9, v12, s[16:19], 0 offen
	buffer_atomic_add_f32 v17, v16, s[16:19], 0 offen
	v_add_lshl_u32 v0, s49, v170, 2
	v_add_lshl_u32 v1, s48, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s45, s35, s20
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s47, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s44, s35, s21
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s46, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s43, s35, s22
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v9, s45, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s42, s35, s23
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[16:19], 0 offen
	buffer_atomic_add_f32 v33, v1, s[16:19], 0 offen
	buffer_atomic_add_f32 v41, v4, s[16:19], 0 offen
	buffer_atomic_add_f32 v49, v8, s[16:19], 0 offen
	buffer_atomic_add_f32 v57, v9, s[16:19], 0 offen
	v_add_lshl_u32 v0, s44, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s41, s35, s24
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s43, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s40, s35, s25
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s42, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s39, s35, s26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s41, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s38, s35, s27
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v9, s40, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s37, s35, s28
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[16:19], 0 offen
	buffer_atomic_add_f32 v13, v1, s[16:19], 0 offen
	buffer_atomic_add_f32 v21, v4, s[16:19], 0 offen
	buffer_atomic_add_f32 v29, v8, s[16:19], 0 offen
	buffer_atomic_add_f32 v37, v9, s[16:19], 0 offen
	v_add_lshl_u32 v0, s39, v170, 2
	v_add_lshl_u32 v1, s38, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s36, s35, s29
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s37, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s34, s35, s30
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, v64, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s33, s35, s31
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s36, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s31, s35, s68
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[16:19], 0 offen
	buffer_atomic_add_f32 v53, v1, s[16:19], 0 offen
	buffer_atomic_add_f32 v61, v4, s[16:19], 0 offen
	buffer_atomic_add_f32 v2, v5, s[16:19], 0 offen
	buffer_atomic_add_f32 v10, v8, s[16:19], 0 offen
	v_add_lshl_u32 v0, s34, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s30, s35, s69
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s33, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s29, s35, s70
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s31, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s28, s35, s71
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s30, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s27, s35, s72
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s29, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s25, s35, s73
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[16:19], 0 offen
	buffer_atomic_add_f32 v26, v1, s[16:19], 0 offen
	buffer_atomic_add_f32 v34, v2, s[16:19], 0 offen
	buffer_atomic_add_f32 v42, v4, s[16:19], 0 offen
	buffer_atomic_add_f32 v50, v5, s[16:19], 0 offen
	v_add_lshl_u32 v0, s28, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s23, s35, s74
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s27, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s21, s35, s75
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s25, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s13, s35, s76
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s23, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s10, s35, s77
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s21, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s9, s35, s78
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[16:19], 0 offen
	buffer_atomic_add_f32 v6, v1, s[16:19], 0 offen
	buffer_atomic_add_f32 v14, v2, s[16:19], 0 offen
	buffer_atomic_add_f32 v22, v4, s[16:19], 0 offen
	buffer_atomic_add_f32 v30, v5, s[16:19], 0 offen
	v_add_lshl_u32 v0, s13, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s8, s35, s79
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s10, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s7, s35, s80
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s9, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s1, s35, s81
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s8, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s0, s35, s82
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s7, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s26, s35, s83
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[16:19], 0 offen
	buffer_atomic_add_f32 v46, v1, s[16:19], 0 offen
	buffer_atomic_add_f32 v54, v2, s[16:19], 0 offen
	buffer_atomic_add_f32 v62, v4, s[16:19], 0 offen
	buffer_atomic_add_f32 v3, v5, s[16:19], 0 offen
	v_add_lshl_u32 v0, s1, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s24, s35, s84
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s0, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s22, s35, s85
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s26, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s20, s35, s86
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v3, s24, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s15, s35, s87
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s22, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s14, s35, s88
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[16:19], 0 offen
	buffer_atomic_add_f32 v19, v1, s[16:19], 0 offen
	buffer_atomic_add_f32 v27, v2, s[16:19], 0 offen
	buffer_atomic_add_f32 v35, v3, s[16:19], 0 offen
	buffer_atomic_add_f32 v43, v4, s[16:19], 0 offen
	v_add_lshl_u32 v0, s20, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s11, s35, s89
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s15, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s12, s35, s90
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s14, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s6, s35, s91
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v3, s11, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s5, s35, s92
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s12, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s3, s35, s93
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[16:19], 0 offen
	buffer_atomic_add_f32 v59, v1, s[16:19], 0 offen
	buffer_atomic_add_f32 v7, v2, s[16:19], 0 offen
	buffer_atomic_add_f32 v15, v3, s[16:19], 0 offen
	buffer_atomic_add_f32 v23, v4, s[16:19], 0 offen
	v_add_lshl_u32 v0, s6, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s4, s35, s94
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s5, v170, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s2, s35, s95
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s3, v170, 2
	v_add_lshl_u32 v3, s4, v170, 2
	v_add_lshl_u32 v4, s2, v170, 2
	s_clause 0x4
	buffer_atomic_add_f32 v31, v0, s[16:19], 0 offen
	buffer_atomic_add_f32 v39, v1, s[16:19], 0 offen
	buffer_atomic_add_f32 v47, v2, s[16:19], 0 offen
	buffer_atomic_add_f32 v55, v3, s[16:19], 0 offen
	buffer_atomic_add_f32 v63, v4, s[16:19], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
		.amdhsa_next_free_vgpr 249
		.amdhsa_next_free_sgpr 96
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 249
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 96
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8292
; TotalNumSgprs: 98
; NumVgprs: 249
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 98
; NumVGPRsForWavesPerEU: 249
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     98
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     249
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
