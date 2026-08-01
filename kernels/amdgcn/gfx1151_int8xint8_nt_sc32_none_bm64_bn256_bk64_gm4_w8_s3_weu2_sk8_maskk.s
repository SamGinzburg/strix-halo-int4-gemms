	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s24, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	v_lshlrev_b32_e32 v176, 4, v0
	v_and_b32_e32 v177, 16, v0
	v_lshlrev_b32_e32 v178, 1, v0
	v_lshlrev_b32_e32 v179, 5, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_ashr_i32 s16, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s24, 0x1ff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s17, s4, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s17, s16
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s4, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s4, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s5
	s_mov_b32 s4, 0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x1ff
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v3, 4, v0
	v_and_b32_e32 v1, 16, v0
	v_lshlrev_b32_e32 v4, 1, v0
	v_lshlrev_b32_e32 v2, 5, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow130
	s_load_b64 s[12:13], s[0:1], 0x20
	v_or_b32_e32 v174, s18, v0
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v175, 3, v0
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
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_lshl_b32 s2, s2, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v4, 3, v0
	v_bfe_i32 v6, v0, 2, 1
	v_bfe_i32 v7, v0, 4, 1
	v_bfe_i32 v8, v0, 3, 1
	s_mov_b32 s36, 0
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s14, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s20, s24, 31
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v8, 0x90, v8
	v_dual_mov_b32 v146, 0 :: v_dual_and_b32 v11, 0xe00, v176
	v_and_or_b32 v13, v0, 15, s2
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_and_b32_e32 v4, 0x778, v4
	v_and_b32_e32 v9, 0x160, v179
	v_and_b32_e32 v6, 0x90, v6
	v_and_b32_e32 v7, 0x90, v7
	v_and_b32_e32 v10, 0xf70, v176
.Ltmp16:
	.loc	1 368 26 is_stmt 1              ; generate_amdgcn.py:368:26
	s_lshl_b32 s1, s3, 6
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 23
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s3, s20, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s14, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s0, s3, 27
	v_or_b32_e32 v12, v6, v9
	v_xor_b32_e32 v4, v7, v4
	v_xor_b32_e32 v7, v8, v10
	v_or3_b32 v6, v9, v11, v6
	v_or_b32_e32 v10, 32, v13
	v_or_b32_e32 v11, 48, v13
	s_add_i32 s20, s20, s0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s14, 9
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s14, s20, 5
.Ltmp23:
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 1, v0
	v_or_b32_e32 v9, 16, v13
	v_mul_lo_u32 v182, v10, s14
	v_mul_lo_u32 v183, v11, s14
	v_lshrrev_b32_e32 v10, 6, v0
	v_dual_mov_b32 v166, 0 :: v_dual_and_b32 v11, 0xf0, v0
	v_mul_lo_u32 v5, s24, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_or_b32 v2, s17, 8, v2
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_and_b32_e32 v1, 1, v0
	v_mul_lo_u32 v181, v9, s14
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v9, 2, v0
	v_dual_mov_b32 v165, 0 :: v_dual_and_b32 v10, 2, v10
	v_dual_mov_b32 v162, 0 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_lshl_b32 s0, s16, 8
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_subrev_nc_u32_e32 v2, s0, v2
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v170, 4, v1
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v9, 0x1c0, v9
	v_dual_mov_b32 v126, 0 :: v_dual_lshlrev_b32 v1, 5, v1
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v10, 0, v10
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v184, 0, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_or_b32_e32 v2, 0x80, v2
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v169, 3, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v9, v10, v9, v1
	v_add3_u32 v10, v184, v11, v1
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v1, s2, v3
	v_xor_b32_e32 v8, 16, v12
	v_xor_b32_e32 v14, 16, v6
	v_mul_lo_u32 v180, v13, s14
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v13, 28, v178
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_mad_u64_u32 v[171:172], null, s24, v2, v[170:171]
	.loc	1 376 34                        ; generate_amdgcn.py:376:34
	s_mul_i32 s21, s18, s24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_mad_u64_u32 v[172:173], null, s24, v1, v[169:170]
	v_add3_u32 v185, v5, v170, s21
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v173, 0, v4
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v186, 0, v7
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v188, 0, v8
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v189, 0, v6
	v_mov_b32_e32 v1, s36
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v187, 0, v12
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v190, 0, v14
	v_dual_mov_b32 v2, s37 :: v_dual_mov_b32 v3, s38
	v_dual_mov_b32 v4, s39 :: v_dual_mov_b32 v5, s40
	v_dual_mov_b32 v6, s41 :: v_dual_mov_b32 v7, s42
	v_dual_mov_b32 v8, s43 :: v_dual_add_nc_u32 v191, v9, v13
	v_mov_b32_e32 v114, 0
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v192, v10, v13
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v108, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v107, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_add_nc_u32_e32 v10, s1, v170
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_add_nc_u32_e32 v9, s1, v169
	.loc	1 376 34                        ; generate_amdgcn.py:376:34
	v_add_nc_u32_e32 v12, s1, v185
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v11, s1, v172
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_add_nc_u32_e32 v13, s1, v171
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s24, v10
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v9
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_add_nc_u32_e32 v9, 32, v9
	.loc	1 376 34                        ; generate_amdgcn.py:376:34
	v_add_nc_u32_e32 v15, 32, v12
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_add_nc_u32_e32 v10, 32, v10
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v16, 0x80000000, v11, vcc_lo
	v_add_nc_u32_e32 v14, 32, v11
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_add_nc_u32_e32 v19, 32, v13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s24, v10
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e64 s0, s24, v9
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	buffer_load_b128 v[9:12], v12, s[4:7], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[17:18], v16, s[16:19], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s25, s1, 5
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_cndmask_b32_e32 v23, 0x80000000, v15, vcc_lo
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v20, 0x80000000, v14, s0
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	buffer_load_b128 v[13:16], v13, s[4:7], 0 offen
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s26, s25, s15
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s0, s1, 32
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[21:22], v20, s[16:19], 0 offen
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s25, s14
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s14
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v186, v[9:12]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v173, v[17:18] offset:16384
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v23, s[4:7], 0 offen
	buffer_load_b128 v[17:20], v19, s[4:7], 0 offen
	s_waitcnt vmcnt(3)
	ds_store_b128 v186, v[13:16] offset:4096
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v173, v[21:22] offset:18432
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v186, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v186, v[17:20] offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[73:76], v189 offset:4096
	ds_load_b128 v[77:80], v190 offset:4096
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[17:20], v187 offset:16384
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[41:44], v189
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[21:24], v188 offset:16384
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[45:48], v190
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[81:84], v187 offset:17920
	ds_load_b128 v[85:88], v188 offset:17920
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[73:76], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[77:80], v[21:24], v[65:72] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[17:20], v187 offset:16896
	ds_load_b128 v[21:24], v188 offset:16896
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v199, v66
	v_cvt_f32_i32_e32 v198, v67
	v_cvt_f32_i32_e32 v67, v70
	v_cvt_f32_i32_e32 v66, v71
	v_cvt_f32_i32_e32 v197, v68
	v_cvt_f32_i32_e32 v68, v69
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[21:24], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[21:24], v[57:64] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[17:20], v187 offset:17408
	ds_load_b128 v[21:24], v188 offset:17408
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
	v_add_lshl_u32 v73, v174, s26, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v74, v181, s25, 1
	v_add_lshl_u32 v75, v182, s25, 1
	v_add_lshl_u32 v76, v183, s25, 1
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
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v51, v54
	v_cvt_f32_i32_e32 v49, v56
	v_cvt_f32_i32_e32 v54, v42
	v_cvt_f32_i32_e32 v56, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v42, v47
	v_cvt_f32_i32_e32 v45, v10
	v_cvt_f32_i32_e32 v47, v12
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v61, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v41
	v_cvt_f32_i32_e32 v41, v48
	v_cvt_f32_i32_e32 v48, v13
	v_cvt_f32_i32_e32 v13, v34
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
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v37, v40
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v191, v73 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v73, v180, s25, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s25, s0, s15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x3
	buffer_load_u16 v196, v73, s[20:23], 0 offen
	buffer_load_u16 v195, v74, s[20:23], 0 offen
	buffer_load_u16 v194, v75, s[20:23], 0 offen
	buffer_load_u16 v193, v76, s[20:23], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[232:235], v189 offset:12288
	ds_load_b128 v[236:239], v190 offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[81:84], v187 offset:18432
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[224:227], v189 offset:8192
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[85:88], v188 offset:18432
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[228:231], v190 offset:8192
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[240:243], v187 offset:19968
	ds_load_b128 v[244:247], v188 offset:19968
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s3, s3, -1
	s_addk_i32 s1, 0x200
	s_cmp_lg_u32 s3, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[224:227], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[232:235], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[228:231], v[85:88], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[236:239], v[85:88], v[200:207] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[81:84], v187 offset:18944
	ds_load_b128 v[85:88], v188 offset:18944
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v40, v203
	v_cvt_f32_i32_e32 v203, v207
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[224:227], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[208:215], v[232:235], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[228:231], v[85:88], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[208:215], v[236:239], v[85:88], v[208:215] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[81:84], v187 offset:19456
	ds_load_b128 v[85:88], v188 offset:19456
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v207, v211
	v_cvt_f32_i32_e32 v211, v215
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[224:227], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[216:223], v[232:235], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[228:231], v[85:88], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[216:223], v[236:239], v[85:88], v[216:223] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[224:227], v[240:243], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v90, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[228:231], v[244:247], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[232:235], v[240:243], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v232, v65
	v_cvt_f32_i32_e32 v65, v72
	v_cvt_f32_i32_e32 v72, v58
	v_wmma_i32_16x16x16_iu8 v[224:231], v[236:239], v[244:247], v[224:231] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v58, v63
	v_cvt_f32_i32_e32 v63, v50
	v_cvt_f32_i32_e32 v50, v55
	v_cvt_f32_i32_e32 v55, v43
	v_cvt_f32_i32_e32 v43, v46
	v_cvt_f32_i32_e32 v46, v11
	v_cvt_f32_i32_e32 v235, v16
	v_cvt_f32_i32_e32 v16, v33
	v_cvt_f32_i32_e32 v33, v200
	v_cvt_f32_i32_e32 v200, v204
	v_cvt_f32_i32_e32 v204, v208
	v_cvt_f32_i32_e32 v208, v212
	v_cvt_f32_i32_e32 v212, v216
	v_cvt_f32_i32_e32 v216, v220
	v_cvt_f32_i32_e32 v220, v224
	v_cvt_f32_i32_e32 v224, v228
	v_cvt_f32_i32_e32 v233, v14
	v_cvt_f32_i32_e32 v14, v35
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v38, v201
	v_cvt_f32_i32_e32 v201, v205
	v_cvt_f32_i32_e32 v205, v209
	v_cvt_f32_i32_e32 v209, v213
	v_cvt_f32_i32_e32 v213, v217
	v_cvt_f32_i32_e32 v217, v221
	v_cvt_f32_i32_e32 v221, v225
	v_cvt_f32_i32_e32 v225, v229
	v_cvt_f32_i32_e32 v234, v15
	v_cvt_f32_i32_e32 v15, v36
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v39, v202
	v_cvt_f32_i32_e32 v202, v206
	v_cvt_f32_i32_e32 v206, v210
	v_cvt_f32_i32_e32 v210, v214
	v_cvt_f32_i32_e32 v215, v219
	v_cvt_f32_i32_e32 v214, v218
	v_cvt_f32_i32_e32 v218, v222
	v_cvt_f32_i32_e32 v222, v226
	v_cvt_f32_i32_e32 v226, v230
	v_cvt_f32_i32_e32 v219, v223
	v_cvt_f32_i32_e32 v223, v227
	v_cvt_f32_i32_e32 v227, v231
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
	v_lshlrev_b32_e32 v196, 16, v196
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v195, 16, v195
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v194, 16, v194
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v228, v9, v196
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[9:12], v184 offset:20480
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v16, v16, v195 :: v_dual_lshlrev_b32 v229, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v146, v16, v229
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v16, v25, v194 :: v_dual_lshlrev_b32 v25, 16, v193
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v147, v16, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v16, v17, v25 :: v_dual_lshlrev_b32 v17, 16, v10
	v_dual_mul_f32 v13, v195, v13 :: v_dual_and_b32 v10, 0xffff0000, v10
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v148, v16, v229
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v16, v196, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v134, v13, v17 :: v_dual_mul_f32 v13, v194, v26
	v_fmac_f32_e32 v135, v13, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v25, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v133, v16, v17 :: v_dual_lshlrev_b32 v16, 16, v11
	v_dual_fmac_f32 v136, v13, v17 :: v_dual_mul_f32 v13, v196, v46
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v17, v174, s25, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v165, v13, v16
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v13, v195, v14 :: v_dual_lshlrev_b32 v14, 16, v12
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	v_and_b32_e32 v12, 0xffff0000, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v166, v13, v16 :: v_dual_and_b32 v11, 0xffff0000, v11
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v194, v27
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v145, v228, v229
	v_fmac_f32_e32 v167, v13, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v25, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v168, v13, v16 :: v_dual_mul_f32 v13, v196, v47
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v16, v183, s0, 1
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v129, v13, v14
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v195, v15
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v15, v182, s0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v130, v13, v14 :: v_dual_mul_f32 v13, v194, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v131, v13, v14
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v25, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v132, v13, v14
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v13, v180, s0, 1
	v_add_lshl_u32 v14, v181, s0, 1
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x3
	buffer_load_u16 v18, v13, s[20:23], 0 offen
	buffer_load_u16 v26, v14, s[20:23], 0 offen
	buffer_load_u16 v27, v15, s[20:23], 0 offen
	buffer_load_u16 v28, v16, s[20:23], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[13:16], v184 offset:20496
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v45, 16, v18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v46, v73, v45 :: v_dual_lshlrev_b32 v27, 16, v27
	ds_store_b32 v192, v17 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v184 offset:20480
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
	v_dual_mul_f32 v46, v89, v27 :: v_dual_and_b32 v9, 0xffff0000, v9
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v136, v17, v18 :: v_dual_mul_f32 v17, v28, v83
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v18, 16, v13
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v168, v17, v19 :: v_dual_mul_f32 v17, v28, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v17, v20
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v196, v48
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v161, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v195, v34
	v_mul_f32_e32 v34, v27, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v162, v17, v18 :: v_dual_mul_f32 v17, v194, v29
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v29, v26, v209
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v163, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v25, v21
	v_mul_f32_e32 v21, v45, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v164, v17, v18 :: v_dual_mul_f32 v17, v196, v233
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v18, 16, v14
	v_and_b32_e32 v14, 0xffff0000, v14
	v_and_b32_e32 v13, 0xffff0000, v13
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v125, v17, v18
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v195, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v35, v27, v216 :: v_dual_fmac_f32 v126, v17, v18
	v_mul_f32_e32 v17, v194, v30
	v_mul_f32_e32 v30, v26, v210
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v127, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v25, v22 :: v_dual_mul_f32 v22, v26, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v128, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v196, v234 :: v_dual_lshlrev_b32 v18, 16, v15
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v157, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v195, v36
	v_mul_f32_e32 v36, v27, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v158, v17, v18 :: v_dual_mul_f32 v17, v194, v31
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v31, v27, v212
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v159, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v25, v23
	v_mul_f32_e32 v23, v26, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v160, v17, v18 :: v_dual_mul_f32 v17, v196, v235
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v18, 16, v16
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v121, v17, v18 :: v_dual_and_b32 v16, 0xffff0000, v16
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v195, v37
	v_mul_f32_e32 v37, v27, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v122, v17, v18 :: v_dual_mul_f32 v17, v194, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v32, v27, v213 :: v_dual_fmac_f32 v123, v17, v18
	v_dual_mul_f32 v17, v25, v24 :: v_dual_mul_f32 v24, v26, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v124, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[17:20], v184 offset:20496
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
	v_dual_mul_f32 v21, v26, v204 :: v_dual_fmac_f32 v128, v17, v18
	v_dual_mul_f32 v17, v28, v87 :: v_dual_mul_f32 v18, v45, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v160, v17, v19 :: v_dual_mul_f32 v17, v28, v88
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v19, v45, v202
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v124, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v196, v232 :: v_dual_mul_f32 v20, v45, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v153, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v195, v71
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v154, v17, v9 :: v_dual_mul_f32 v17, v194, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v155, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v25, v53
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v156, v17, v9 :: v_dual_mul_f32 v9, v196, v199
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v45, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v117, v9, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v195, v72
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v118, v9, v10 :: v_dual_mul_f32 v9, v194, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v119, v9, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v25, v54
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v120, v9, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v196, v198 :: v_dual_mul_f32 v10, v195, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v149, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v195, v70 :: v_dual_fmac_f32 v106, v10, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v150, v9, v11 :: v_dual_mul_f32 v9, v194, v64
	v_fmac_f32_e32 v151, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v25, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v152, v9, v11 :: v_dual_mul_f32 v9, v196, v197
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v11, v194, v49
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v113, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v195, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v107, v11, v16
	v_dual_fmac_f32 v114, v9, v12 :: v_dual_mul_f32 v9, v194, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v115, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v25, v56
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v116, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v196, v68 :: v_dual_mul_f32 v12, v25, v41
	v_mul_f32_e32 v41, v28, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v141, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v195, v60
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v108, v12, v16 :: v_dual_and_b32 v15, 0xffff0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v142, v9, v13 :: v_dual_mul_f32 v9, v194, v52
	v_fmac_f32_e32 v143, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v25, v44 :: v_dual_mul_f32 v44, v28, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v144, v9, v13 :: v_dual_mul_f32 v9, v196, v67
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v45, v33
	v_mul_f32_e32 v33, v27, v214
	v_mul_f32_e32 v27, v27, v219
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v109, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v195, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v110, v9, v14 :: v_dual_mul_f32 v9, v194, v51
	v_fmac_f32_e32 v111, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v25, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v43, v28, v225 :: v_dual_fmac_f32 v112, v9, v14
	v_mul_f32_e32 v9, v196, v66
	v_mul_f32_e32 v14, v45, v38
	v_dual_mul_f32 v38, v28, v220 :: v_dual_fmac_f32 v137, v9, v15
	v_mul_f32_e32 v9, v195, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v138, v9, v15 :: v_dual_mul_f32 v9, v194, v50
	v_fmac_f32_e32 v139, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v25, v42
	v_mul_f32_e32 v25, v26, v208
	v_mul_f32_e32 v26, v26, v211
	v_mul_f32_e32 v42, v28, v224
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v140, v9, v15 :: v_dual_mul_f32 v9, v196, v65
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v45, v39
	v_mul_f32_e32 v39, v28, v221
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v105, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v184 offset:20992
	v_mul_f32_e32 v16, v45, v40
	v_mul_f32_e32 v40, v28, v222
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v28, v28, v227 :: v_dual_fmac_f32 v153, v13, v9
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v149, v15, v11
	v_dual_fmac_f32 v113, v16, v12 :: v_dual_fmac_f32 v156, v38, v9
	v_fmac_f32_e32 v117, v14, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[13:16], v184 offset:21008
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v154, v21, v9
	v_fmac_f32_e32 v118, v22, v10
	v_fmac_f32_e32 v150, v23, v11
	v_fmac_f32_e32 v114, v24, v12
	v_dual_fmac_f32 v115, v34, v12 :: v_dual_fmac_f32 v120, v39, v10
	v_dual_fmac_f32 v155, v31, v9 :: v_dual_fmac_f32 v152, v40, v11
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
	v_fmac_f32_e32 v119, v32, v10
	v_fmac_f32_e32 v112, v43, v14
	v_fmac_f32_e32 v140, v44, v15
	v_dual_fmac_f32 v108, v28, v16 :: v_dual_fmac_f32 v151, v33, v11
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, v176 :: v_dual_mov_b32 v4, v178
	v_dual_mov_b32 v1, v177 :: v_dual_mov_b32 v2, v179
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v3, 0xcf0, v3
	v_and_or_b32 v4, v4, 64, v1
	v_lshlrev_b32_e32 v5, 13, v0
	v_lshlrev_b32_e32 v0, 6, v0
	v_and_b32_e32 v2, 0x1c00, v2
	s_waitcnt lgkmcnt(0)
	v_xor_b32_e32 v3, v4, v3
	s_barrier
	v_lshlrev_b32_e32 v1, 2, v1
	v_and_or_b32 v0, 0x300, v0, v2
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s35, s2, s15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_or_b32 v3, 0xe000, v5, v3
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s15, 3
	s_add_i32 s68, s35, s15
	s_lshl1_add_u32 s67, s15, s35
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v64, s35, v174, 2
	v_add_nc_u32_e32 v4, 0, v3
	v_xad_u32 v3, v3, 32, 0
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s14, s15, 18
	s_add_i32 s66, s35, s0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b128 v4, v[145:148]
	ds_store_b128 v4, v[165:168] offset:256
	ds_store_b128 v4, v[161:164] offset:512
	ds_store_b128 v4, v[157:160] offset:768
	ds_store_b128 v4, v[153:156] offset:4096
	ds_store_b128 v4, v[149:152] offset:4352
	ds_store_b128 v4, v[141:144] offset:4608
	ds_store_b128 v4, v[137:140] offset:4864
	v_lshlrev_b32_e32 v4, 4, v175
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
	v_add_lshl_u32 v65, s68, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s15, 5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v66, s67, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s2, s15, 6
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
	s_mul_i32 s3, s15, 7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_load_b128 v[60:63], v60 offset:128
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
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
	s_lshl_b32 s29, s15, 5
	s_mul_i32 s30, s15, 33
	s_mul_i32 s31, s15, 34
	s_mul_i32 s33, s15, 35
	s_mul_i32 s69, s15, 36
	s_mul_i32 s70, s15, 37
	s_mul_i32 s71, s15, 38
	s_mul_i32 s72, s15, 39
	s_mul_i32 s73, s15, 40
	s_mul_i32 s74, s15, 41
	s_mul_i32 s75, s15, 42
	s_mul_i32 s76, s15, 43
	s_mul_i32 s77, s15, 44
	s_mul_i32 s78, s15, 45
	s_mul_i32 s79, s15, 46
	s_mul_i32 s80, s15, 47
	s_mul_i32 s81, s15, 48
	s_mul_i32 s82, s15, 49
	s_mul_i32 s83, s15, 50
	s_mul_i32 s84, s15, 51
	s_mul_i32 s85, s15, 52
	s_mul_i32 s86, s15, 53
	s_mul_i32 s87, s15, 54
	s_mul_i32 s88, s15, 55
	s_mul_i32 s89, s15, 56
	s_mul_i32 s90, s15, 57
	s_mul_i32 s91, s15, 58
	s_mul_i32 s92, s15, 59
	s_mul_i32 s93, s15, 60
	s_mul_i32 s94, s15, 61
	s_mul_i32 s95, s15, 62
	s_mul_i32 s96, s15, 63
	s_lshl2_add_u32 s65, s15, s35
	s_lshl3_add_u32 s61, s15, s35
	s_lshl4_add_u32 s53, s15, s35
	s_add_i32 s51, s35, s14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_add_lshl_u32 v67, s66, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s64, s35, s1
	s_add_i32 s63, s35, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v64, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v65, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v67, s[12:15], 0 offen
	v_add_lshl_u32 v0, s65, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s62, s35, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s64, v174, 2
	v_add_lshl_u32 v16, s63, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s60, s35, s4
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v24, s62, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s59, s35, s5
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v64, s61, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s58, s35, s6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v32, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v40, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v48, v16, s[12:15], 0 offen
	buffer_atomic_add_f32 v56, v24, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v64, s[12:15], 0 offen
	v_add_lshl_u32 v0, s60, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s57, s35, s7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s59, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s56, s35, s8
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s58, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s55, s35, s9
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v16, s57, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s54, s35, s10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v24, s56, v174, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v8, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v36, v16, s[12:15], 0 offen
	buffer_atomic_add_f32 v44, v24, s[12:15], 0 offen
	v_add_lshl_u32 v0, s55, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s52, s35, s11
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s54, v174, 2
	v_add_lshl_u32 v8, s53, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s50, s35, s16
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v12, s52, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s49, s35, s17
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v16, s51, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s48, s35, s18
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	buffer_atomic_add_f32 v52, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v12, s[12:15], 0 offen
	buffer_atomic_add_f32 v17, v16, s[12:15], 0 offen
	v_add_lshl_u32 v0, s50, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s47, s35, s19
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s49, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s46, s35, s20
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s48, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s45, s35, s21
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s47, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s44, s35, s22
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v9, s46, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s43, s35, s23
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v33, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v41, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v49, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v57, v9, s[12:15], 0 offen
	v_add_lshl_u32 v0, s45, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s42, s35, s24
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s44, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s41, s35, s25
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s43, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s40, s35, s26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s42, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s39, s35, s27
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v9, s41, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s38, s35, s28
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v21, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v29, v8, s[12:15], 0 offen
	buffer_atomic_add_f32 v37, v9, s[12:15], 0 offen
	v_add_lshl_u32 v0, s40, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s37, s35, s29
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s39, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s36, s35, s30
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s38, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s34, s35, s31
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s37, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s33, s35, s33
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, s36, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s31, s35, s69
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v53, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v61, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v5, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v8, s[12:15], 0 offen
	v_add_lshl_u32 v0, s34, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s30, s35, s70
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s33, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s29, s35, s71
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s31, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s28, s35, s72
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s30, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s27, s35, s73
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s29, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s25, s35, s74
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v34, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v42, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v50, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s28, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s23, s35, s75
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s27, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s21, s35, s76
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s25, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s17, s35, s77
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s23, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s10, s35, s78
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s21, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s9, s35, s79
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s17, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s8, s35, s80
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s10, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s7, s35, s81
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s9, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s1, s35, s82
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s8, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s0, s35, s83
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, s7, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s26, s35, s84
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v46, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v54, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v62, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s1, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s24, s35, s85
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s0, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s22, s35, s86
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s26, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s20, s35, s87
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v3, s24, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s19, s35, s88
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s22, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s18, s35, s89
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v27, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v35, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v43, v4, s[12:15], 0 offen
	v_add_lshl_u32 v0, s20, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s11, s35, s90
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s19, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s16, s35, s91
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s18, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s6, s35, s92
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v3, s11, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s5, s35, s93
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, s16, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s3, s35, s94
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v59, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v4, s[12:15], 0 offen
	v_add_lshl_u32 v0, s6, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s4, s35, s95
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, s5, v174, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s2, s35, s96
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, s3, v174, 2
	v_add_lshl_u32 v3, s4, v174, 2
	v_add_lshl_u32 v4, s2, v174, 2
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
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 97
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 248
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 97
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6740
; TotalNumSgprs: 99
; NumVgprs: 248
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 99
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     99
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
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
