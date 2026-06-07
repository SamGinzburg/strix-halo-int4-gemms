	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s23, s[0:1], 0x38
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s7, 0xff
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s6, 63
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s9, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s10
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp10:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s8, s5
	s_sub_i32 s11, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s11, s11, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s8, s11
	s_abs_i32 s11, s2
	s_add_i32 s8, s8, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s8, s11, s8
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s12, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s11, s11, s12
	s_add_i32 s12, s8, 1
	s_sub_i32 s13, s11, s5
	s_cmp_ge_u32 s11, s5
	s_cselect_b32 s8, s12, s8
	s_cselect_b32 s11, s13, s11
	s_add_i32 s12, s8, 1
	s_cmp_ge_u32 s11, s5
	s_cselect_b32 s5, s12, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s8, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s9, s9, s8
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s9, s9, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s11, s10
	s_sub_i32 s12, 0, s10
	v_rcp_iflag_f32_e32 v1, s11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s11, v1
	s_mul_f32 s11, s11, 0x4f7ffffe
	s_cvt_u32_f32 s11, s11
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s12, s11
	s_mul_hi_u32 s4, s11, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s11, s11, s4
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
	s_sub_i32 s4, s4, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s9
	s_sub_i32 s5, s2, s5
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s23, 63
.Ltmp12:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s5, s5, s8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s2, 63
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s22, s7, 4
	s_lshl_b32 s35, s7, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s8, -1
                                        ; implicit-def: $sgpr22
                                        ; implicit-def: $sgpr35
.LBB0_3:                                ; %Flow473
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v171, 15, v0
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v172, 0xf0, v0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v197, 0
	s_lshl_b32 s34, s5, 6
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_lshl_b32 s33, s4, 8
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v204, 4, v172
	v_lshrrev_b32_e32 v203, 3, v0
	s_mov_b32 s8, 0
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s2, 31
	s_mov_b32 s9, s8
	v_mul_lo_u32 v2, s7, v204
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	v_mul_lo_u32 v3, s6, v203
.Ltmp14:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s23, 31
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s4, s1, 31
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s2, s0
	v_lshl_add_u32 v206, v171, 4, v2
	v_lshrrev_b32_e32 v2, 1, v0
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s4, 27
	v_dual_mov_b32 v199, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	s_add_i32 s1, s1, s0
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
.Ltmp19:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v1, 3, v0
	v_and_or_b32 v2, 0x70, v2, v171
	v_mov_b32_e32 v197, 0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s37, s1, 5
	v_or_b32_e32 v5, 0x7f0, v0
.Ltmp21:
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 56, v1
	v_add_nc_u32_e32 v211, 0, v2
	v_add_nc_u32_e32 v209, 0, v1
	v_dual_mov_b32 v198, 0 :: v_dual_and_b32 v9, 28, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v207, v3, v4, s34
	v_or_b32_e32 v3, s34, v171
	v_mov_b32_e32 v202, 0
	v_or_b32_e32 v4, 0x3f0, v0
	s_lshl_b32 s22, s7, 4
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v219, v209, v1
	v_or_b32_e32 v6, 16, v3
	v_or_b32_e32 v7, 32, v3
	v_or_b32_e32 v2, 48, v3
	v_mul_lo_u32 v212, v3, s37
	v_lshrrev_b32_e32 v3, 6, v0
	v_mul_lo_u32 v213, v6, s37
	v_mul_lo_u32 v214, v7, s37
	v_mul_lo_u32 v215, v2, s37
	v_lshlrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v6, 5, v0
	v_and_b32_e32 v3, 2, v3
	v_lshlrev_b32_e32 v7, 1, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v201, 0 :: v_dual_and_b32 v2, 0x1c0, v2
	v_dual_mov_b32 v195, 0 :: v_dual_and_b32 v6, 32, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v3, 0, v3
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v216, 0, v7
	v_add_nc_u32_e32 v208, s22, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v3, v2, v6
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v220, 0, v4
	v_add3_u32 v11, v216, v7, v6
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v221, 0, v5
	v_mov_b32_e32 v1, s8
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_or_b32_e32 v205, 16, v204
	v_dual_mov_b32 v3, s10 :: v_dual_add_nc_u32 v210, 0, v171
	v_or_b32_e32 v217, s33, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_add_u32 v218, s6, 5, v207
	v_mov_b32_e32 v2, s9
	v_dual_mov_b32 v4, s11 :: v_dual_mov_b32 v5, s12
	v_dual_mov_b32 v6, s13 :: v_dual_mov_b32 v7, s14
	v_mov_b32_e32 v8, s15
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v222, v10, v9
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v223, v11, v9
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v137, 0
	v_mov_b32_e32 v138, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s36, s2, 6
	s_lshl_b32 s35, s7, 5
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
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s0, s8, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s10, s0, 6
	v_or_b32_e32 v10, s10, v204
	v_or_b32_e32 v9, s10, v203
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s1, s10, s7
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_or_b32 s9, s10, 32
	v_or_b32_e32 v11, s10, v205
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s0, s10, s6
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s1, s1, s33
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v13, s9, v203
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add_nc_u32_e32 v12, s0, v207
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v14, s9, v204
	v_or_b32_e32 v15, s9, v205
	v_add_nc_u32_e32 v16, s0, v218
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v17, s1, v206
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s23, v10
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s2, s1, s35
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s23, v9
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v18, s1, v208
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s1, s23, v11
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v9, s2, v206
	v_add_nc_u32_e32 v10, s2, v208
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s2, s23, v13
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s4, s23, v14
	v_cmp_gt_i32_e64 s5, s23, v15
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v11, 0x80000000, v17, s0
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e32 v13, 0x80000000, v12, vcc_lo
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v14, 0x80000000, v18, s1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e64 v17, 0x80000000, v16, s2
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v18, 0x80000000, v9, s4
	v_cndmask_b32_e64 v19, 0x80000000, v10, s5
	buffer_load_b128 v[9:12], v11, s[28:31], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[21:22], v13, s[24:27], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[13:16], v14, s[28:31], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[23:24], v17, s[24:27], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s10, 5
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v209, v[21:22] offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v219, v[13:16] offset:4096
	ds_store_b128 v219, v[9:12]
	s_clause 0x1
	buffer_load_b128 v[9:12], v18, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v19, s[28:31], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s7
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s37
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v209, v[23:24] offset:18432
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v219, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v219, v[17:20] offset:12288
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v210 offset:17216
	ds_load_u8 v10, v210 offset:17152
	ds_load_u8 v11, v210 offset:17344
	ds_load_u8 v12, v210 offset:17280
	ds_load_u8 v13, v210 offset:16960
	ds_load_u8 v14, v210 offset:16896
	ds_load_u8 v15, v210 offset:17088
	ds_load_u8 v16, v210 offset:17024
	ds_load_u8 v17, v210 offset:16704
	ds_load_u8 v18, v210 offset:16640
	ds_load_u8 v19, v210 offset:16832
	ds_load_u8 v20, v210 offset:16768
	ds_load_u8 v21, v210 offset:16448
	ds_load_u8 v22, v210 offset:16384
	ds_load_u8 v23, v210 offset:16576
	ds_load_u8 v24, v210 offset:16512
	ds_load_u8 v25, v211 offset:3328
	ds_load_u8 v26, v211 offset:3072
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	ds_load_u8 v14, v211 offset:2304
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v13, v16, v15, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v10, v18, v17, 0xc0c0004
	ds_load_u8 v16, v211 offset:2048
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	ds_load_u8 v19, v211 offset:1280
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v18, v22, v21, 0xc0c0004
	v_lshl_or_b32 v11, v13, 16, v11
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v24, v23, 0xc0c0004
	v_lshl_or_b32 v10, v15, 16, v10
	ds_load_u8 v15, v211 offset:2816
	ds_load_u8 v17, v211 offset:2560
	ds_load_u8 v23, v211 offset:1792
	ds_load_u8 v24, v211 offset:1536
	ds_load_u8 v21, v211 offset:1024
	ds_load_u8 v9, v211 offset:3840
	ds_load_u8 v13, v211 offset:3584
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v211 offset:256
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v17, v15, 0xc0c0004
	ds_load_u8 v17, v211
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v13, v9, 0xc0c0004
	v_lshl_or_b32 v43, v15, 16, v14
	v_perm_b32 v15, v21, v19, 0xc0c0004
	v_perm_b32 v19, v24, v23, 0xc0c0004
	v_lshl_or_b32 v9, v20, 16, v18
	ds_load_u8 v18, v210 offset:18240
	ds_load_u8 v20, v210 offset:18176
	v_lshl_or_b32 v42, v19, 16, v15
	ds_load_u8 v15, v210 offset:18368
	ds_load_u8 v19, v210 offset:18304
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v210 offset:17984
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v15, v19, v15, 0xc0c0004
	ds_load_u8 v19, v210 offset:18048
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v210 offset:18112
	v_perm_b32 v22, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v13, 16, v22
	ds_load_u8 v13, v211 offset:768
	ds_load_u8 v14, v211 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v210 offset:17920
	v_lshl_or_b32 v41, v13, 16, v16
	v_lshl_or_b32 v16, v15, 16, v18
	ds_load_u8 v18, v210 offset:17472
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v14, v17, 0xc0c0004
	ds_load_u8 v17, v210 offset:17728
	v_perm_b32 v19, v19, v20, 0xc0c0004
	ds_load_u8 v20, v210 offset:17664
	v_lshl_or_b32 v15, v19, 16, v14
	ds_load_u8 v13, v210 offset:17856
	ds_load_u8 v14, v210 offset:17792
	ds_load_u8 v19, v210 offset:17408
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v211 offset:7424
	v_lshl_or_b32 v14, v13, 16, v17
	ds_load_u8 v13, v210 offset:17600
	ds_load_u8 v17, v210 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v17, v13, 0xc0c0004
	ds_load_u8 v17, v211 offset:7168
	v_lshl_or_b32 v13, v13, 16, v18
	ds_load_u8 v18, v211 offset:7936
	ds_load_u8 v20, v211 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v17, v19, 0xc0c0004
	ds_load_u8 v19, v211 offset:6400
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v211 offset:6144
	v_lshl_or_b32 v48, v18, 16, v17
	ds_load_u8 v17, v211 offset:5376
	ds_load_u8 v18, v211 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v211 offset:6912
	ds_load_u8 v21, v211 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v20, 16, v19
	ds_load_u8 v18, v211 offset:5888
	ds_load_u8 v19, v211 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v46, v18, 16, v17
	ds_load_u8 v17, v211 offset:4352
	ds_load_u8 v18, v211 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v211 offset:4864
	ds_load_u8 v19, v211 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v18, 16, v17
	ds_load_u8 v17, v211 offset:3456
	ds_load_u8 v18, v211 offset:3200
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[13:16], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v211 offset:3968
	ds_load_u8 v19, v211 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v211 offset:2432
	ds_load_u8 v20, v211 offset:2176
	v_lshl_or_b32 v52, v18, 16, v17
	ds_load_u8 v17, v211 offset:1408
	ds_load_u8 v18, v211 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v211 offset:2944
	ds_load_u8 v21, v211 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v20, 16, v19
	ds_load_u8 v18, v211 offset:1920
	ds_load_u8 v19, v211 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v50, v18, 16, v17
	ds_load_u8 v17, v211 offset:384
	ds_load_u8 v18, v211 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v211 offset:896
	ds_load_u8 v19, v211 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v18, 16, v17
	ds_load_u8 v17, v211 offset:7552
	ds_load_u8 v18, v211 offset:7296
	v_wmma_i32_16x16x16_iu8 v[105:112], v[49:52], v[9:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v210 offset:17232
	ds_load_u8 v10, v210 offset:17168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v211 offset:8064
	ds_load_u8 v19, v211 offset:7808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v210 offset:17360
	ds_load_u8 v11, v210 offset:17296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v211 offset:6528
	ds_load_u8 v20, v211 offset:6272
	v_lshl_or_b32 v56, v18, 16, v17
	ds_load_u8 v17, v211 offset:5504
	ds_load_u8 v18, v211 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v210 offset:16976
	ds_load_u8 v12, v210 offset:16912
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v211 offset:7040
	ds_load_u8 v21, v211 offset:6784
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v20, 16, v19
	ds_load_u8 v18, v211 offset:6016
	ds_load_u8 v19, v211 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v54, v18, 16, v17
	ds_load_u8 v17, v211 offset:4480
	ds_load_u8 v18, v211 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v211 offset:4992
	ds_load_u8 v19, v211 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[105:112], v[53:56], v[13:16], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v12, v210 offset:17104
	ds_load_u8 v13, v210 offset:17040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v210 offset:16720
	ds_load_u8 v10, v210 offset:16656
	v_lshl_or_b32 v11, v13, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v210 offset:16848
	ds_load_u8 v13, v210 offset:16784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v210 offset:16400
	ds_load_u8 v13, v210 offset:16464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v13, 0xc0c0004
	ds_load_u8 v13, v210 offset:16592
	ds_load_u8 v14, v210 offset:16528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v13, 16, v9
	ds_load_u8 v13, v210 offset:18256
	ds_load_u8 v14, v210 offset:18192
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[49:52], v[9:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v210 offset:17248
	ds_load_u8 v10, v210 offset:17184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v210 offset:18384
	ds_load_u8 v15, v210 offset:18320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v210 offset:17376
	ds_load_u8 v11, v210 offset:17312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v210 offset:18000
	ds_load_u8 v16, v210 offset:17936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v210 offset:16992
	ds_load_u8 v12, v210 offset:16928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v210 offset:18128
	ds_load_u8 v17, v210 offset:18064
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	ds_load_u8 v13, v210 offset:17744
	ds_load_u8 v14, v210 offset:17680
	v_lshl_or_b32 v15, v17, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v210 offset:17872
	ds_load_u8 v17, v210 offset:17808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v13, v210 offset:17488
	ds_load_u8 v17, v210 offset:17424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v17, v13, 0xc0c0004
	ds_load_u8 v17, v210 offset:17616
	ds_load_u8 v18, v210 offset:17552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v17, 16, v13
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[13:16], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[53:56], v[13:16], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v12, v210 offset:17120
	ds_load_u8 v13, v210 offset:17056
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v233, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v210 offset:16736
	ds_load_u8 v10, v210 offset:16672
	v_lshl_or_b32 v11, v13, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v210 offset:16864
	ds_load_u8 v13, v210 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v210 offset:16416
	ds_load_u8 v13, v210 offset:16480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v13, 0xc0c0004
	ds_load_u8 v13, v210 offset:16608
	ds_load_u8 v14, v210 offset:16544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v13, 16, v9
	ds_load_u8 v13, v210 offset:18272
	ds_load_u8 v14, v210 offset:18208
	v_wmma_i32_16x16x16_iu8 v[121:128], v[49:52], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v210 offset:18400
	ds_load_u8 v15, v210 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v210 offset:18016
	ds_load_u8 v16, v210 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v210 offset:18144
	ds_load_u8 v17, v210 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	ds_load_u8 v13, v210 offset:17760
	ds_load_u8 v14, v210 offset:17696
	v_lshl_or_b32 v15, v17, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v210 offset:17888
	ds_load_u8 v17, v210 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v13, v210 offset:17504
	ds_load_u8 v17, v210 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v17, v13, 0xc0c0004
	ds_load_u8 v17, v210 offset:17632
	ds_load_u8 v18, v210 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v17, 16, v13
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[9:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v210 offset:17008
	ds_load_u8 v10, v210 offset:16944
	v_wmma_i32_16x16x16_iu8 v[121:128], v[53:56], v[13:16], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[13:16], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v232, v122
	v_cvt_f32_i32_e32 v122, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v234, v121
	v_cvt_f32_i32_e32 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v210 offset:17136
	ds_load_u8 v11, v210 offset:17072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v210 offset:16752
	ds_load_u8 v12, v210 offset:16688
	v_lshl_or_b32 v59, v10, 16, v9
	ds_load_u8 v9, v210 offset:16432
	ds_load_u8 v10, v210 offset:16496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v210 offset:16880
	ds_load_u8 v13, v210 offset:16816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v12, 16, v11
	ds_load_u8 v10, v210 offset:16624
	ds_load_u8 v11, v210 offset:16560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v57, v10, 16, v9
	ds_load_u8 v9, v210 offset:17264
	ds_load_u8 v10, v210 offset:17200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v220 offset:16384
	ds_load_u8 v11, v210 offset:17328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v10, 16, v9
	ds_load_u8 v9, v210 offset:18032
	ds_load_u8 v10, v210 offset:17968
	v_wmma_i32_16x16x16_iu8 v[129:136], v[49:52], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v210 offset:18160
	ds_load_u8 v11, v210 offset:18096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v210 offset:17776
	ds_load_u8 v12, v210 offset:17712
	v_lshl_or_b32 v63, v10, 16, v9
	ds_load_u8 v9, v210 offset:17520
	ds_load_u8 v10, v210 offset:17456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v210 offset:17904
	ds_load_u8 v13, v210 offset:17840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v12, 16, v11
	ds_load_u8 v10, v210 offset:17648
	ds_load_u8 v11, v210 offset:17584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v61, v10, 16, v9
	ds_load_u8 v9, v210 offset:18288
	ds_load_u8 v10, v210 offset:18224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v221 offset:16384
	ds_load_u8 v11, v210 offset:18352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[57:60], v[1:8] neg_lo:[1,1,0]
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v41, v217, s1, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v44, v215, s0, 1
	v_add_lshl_u32 v42, v213, s0, 1
	v_add_lshl_u32 v43, v214, s0, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[61:64], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v43, 0x80000000, v43
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[129:136], v[53:56], v[61:64], v[129:136] neg_lo:[1,1,0]
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v41, v41, s[16:19], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v113, v136
	v_cvt_f32_i32_e32 v136, v10
	v_cvt_f32_i32_e32 v123, v131
	v_cvt_f32_i32_e32 v131, v20
	v_cvt_f32_i32_e32 v20, v22
	v_cvt_f32_i32_e32 v121, v132
	v_cvt_f32_i32_e32 v132, v19
	v_cvt_f32_i32_e32 v19, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v222, v41 offset:20480
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v41, v212, s0, 1
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s9, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s37
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s7
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x3
	buffer_load_u16 v238, v41, s[12:15], 0 offen
	buffer_load_u16 v237, v42, s[12:15], 0 offen
	buffer_load_u16 v236, v43, s[12:15], 0 offen
	buffer_load_u16 v235, v44, s[12:15], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v41, v210 offset:19264
	ds_load_u8 v42, v210 offset:19200
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s8, s36
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v210 offset:19392
	ds_load_u8 v43, v210 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v210 offset:19008
	ds_load_u8 v44, v210 offset:18944
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v210 offset:18752
	ds_load_u8 v42, v210 offset:18688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v210 offset:19136
	ds_load_u8 v45, v210 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v44, 16, v43
	ds_load_u8 v42, v210 offset:18880
	ds_load_u8 v43, v210 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v210 offset:18496
	ds_load_u8 v42, v210 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v210 offset:18624
	ds_load_u8 v43, v210 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	ds_load_u8 v41, v211 offset:11520
	ds_load_u8 v42, v211 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v211 offset:12032
	ds_load_u8 v43, v211 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v211 offset:10496
	ds_load_u8 v44, v211 offset:10240
	v_lshl_or_b32 v100, v42, 16, v41
	ds_load_u8 v41, v211 offset:9472
	ds_load_u8 v42, v211 offset:9216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v211 offset:11008
	ds_load_u8 v45, v211 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v44, 16, v43
	ds_load_u8 v42, v211 offset:9984
	ds_load_u8 v43, v211 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v98, v42, 16, v41
	ds_load_u8 v41, v211 offset:8448
	ds_load_u8 v42, v211 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v211 offset:8960
	ds_load_u8 v43, v211 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v42, 16, v41
	ds_load_u8 v41, v210 offset:20288
	ds_load_u8 v42, v210 offset:20224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v210 offset:20416
	ds_load_u8 v43, v210 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v210 offset:20032
	ds_load_u8 v44, v210 offset:19968
	v_lshl_or_b32 v64, v42, 16, v41
	ds_load_u8 v41, v210 offset:19776
	ds_load_u8 v42, v210 offset:19712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v210 offset:20160
	ds_load_u8 v45, v210 offset:20096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v44, 16, v43
	ds_load_u8 v42, v210 offset:19904
	ds_load_u8 v43, v210 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v62, v42, 16, v41
	ds_load_u8 v41, v210 offset:19520
	ds_load_u8 v42, v210 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v210 offset:19648
	ds_load_u8 v43, v210 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	ds_load_u8 v41, v211 offset:15616
	ds_load_u8 v42, v211 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v211 offset:16128
	ds_load_u8 v43, v211 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v211 offset:14592
	ds_load_u8 v44, v211 offset:14336
	v_lshl_or_b32 v104, v42, 16, v41
	ds_load_u8 v41, v211 offset:13568
	ds_load_u8 v42, v211 offset:13312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v211 offset:15104
	ds_load_u8 v45, v211 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v103, v44, 16, v43
	ds_load_u8 v42, v211 offset:14080
	ds_load_u8 v43, v211 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v102, v42, 16, v41
	ds_load_u8 v41, v211 offset:12544
	ds_load_u8 v42, v211 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v211 offset:13056
	ds_load_u8 v43, v211 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v42, 16, v41
	ds_load_u8 v41, v211 offset:11648
	ds_load_u8 v42, v211 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v211 offset:12160
	ds_load_u8 v43, v211 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v211 offset:10624
	ds_load_u8 v44, v211 offset:10368
	v_lshl_or_b32 v227, v42, 16, v41
	ds_load_u8 v41, v211 offset:9600
	ds_load_u8 v42, v211 offset:9344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v211 offset:11136
	ds_load_u8 v45, v211 offset:10880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v226, v44, 16, v43
	ds_load_u8 v42, v211 offset:10112
	ds_load_u8 v43, v211 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v225, v42, 16, v41
	ds_load_u8 v41, v211 offset:8576
	ds_load_u8 v42, v211 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v211 offset:9088
	ds_load_u8 v43, v211 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v224, v42, 16, v41
	ds_load_u8 v41, v211 offset:15744
	ds_load_u8 v42, v211 offset:15488
	v_wmma_i32_16x16x16_iu8 v[49:56], v[224:227], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v211 offset:16256
	ds_load_u8 v43, v211 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v211 offset:14720
	ds_load_u8 v44, v211 offset:14464
	v_lshl_or_b32 v231, v42, 16, v41
	ds_load_u8 v41, v211 offset:13696
	ds_load_u8 v42, v211 offset:13440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v211 offset:15232
	ds_load_u8 v45, v211 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v230, v44, 16, v43
	ds_load_u8 v42, v211 offset:14208
	ds_load_u8 v43, v211 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v229, v42, 16, v41
	ds_load_u8 v41, v211 offset:12672
	ds_load_u8 v42, v211 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v211 offset:13184
	ds_load_u8 v43, v211 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v228, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[97:100], v[57:60], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v210 offset:19280
	ds_load_u8 v58, v210 offset:19216
	v_wmma_i32_16x16x16_iu8 v[49:56], v[228:231], v[61:64], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[101:104], v[61:64], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v22, v52
	v_cvt_f32_i32_e32 v23, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v210 offset:19408
	ds_load_u8 v59, v210 offset:19344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v210 offset:19024
	ds_load_u8 v60, v210 offset:18960
	v_lshl_or_b32 v76, v58, 16, v57
	ds_load_u8 v57, v210 offset:18768
	ds_load_u8 v58, v210 offset:18704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v210 offset:19152
	ds_load_u8 v61, v210 offset:19088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v60, 16, v59
	ds_load_u8 v58, v210 offset:18896
	ds_load_u8 v59, v210 offset:18832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v74, v58, 16, v57
	ds_load_u8 v57, v210 offset:18448
	ds_load_u8 v58, v210 offset:18512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v210 offset:18640
	ds_load_u8 v59, v210 offset:18576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v58, 16, v57
	ds_load_u8 v57, v210 offset:20304
	ds_load_u8 v58, v210 offset:20240
	v_wmma_i32_16x16x16_iu8 v[65:72], v[224:227], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v210 offset:20432
	ds_load_u8 v59, v210 offset:20368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v210 offset:20048
	ds_load_u8 v60, v210 offset:19984
	v_lshl_or_b32 v80, v58, 16, v57
	ds_load_u8 v57, v210 offset:19792
	ds_load_u8 v58, v210 offset:19728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v210 offset:20176
	ds_load_u8 v61, v210 offset:20112
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v60, 16, v59
	ds_load_u8 v58, v210 offset:19920
	ds_load_u8 v59, v210 offset:19856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v78, v58, 16, v57
	ds_load_u8 v57, v210 offset:19536
	ds_load_u8 v58, v210 offset:19472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v210 offset:19664
	ds_load_u8 v59, v210 offset:19600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[97:100], v[73:76], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v73, v210 offset:19296
	ds_load_u8 v74, v210 offset:19232
	v_wmma_i32_16x16x16_iu8 v[65:72], v[228:231], v[77:80], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[77:80], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v52, v71
	v_cvt_f32_i32_e32 v53, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v210 offset:19424
	ds_load_u8 v75, v210 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v210 offset:19040
	ds_load_u8 v76, v210 offset:18976
	v_lshl_or_b32 v92, v74, 16, v73
	ds_load_u8 v73, v210 offset:18784
	ds_load_u8 v74, v210 offset:18720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v210 offset:19168
	ds_load_u8 v77, v210 offset:19104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v76, 16, v75
	ds_load_u8 v74, v210 offset:18912
	ds_load_u8 v75, v210 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v90, v74, 16, v73
	ds_load_u8 v73, v210 offset:18464
	ds_load_u8 v74, v210 offset:18528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v74, 0xc0c0004
	ds_load_u8 v74, v210 offset:18656
	ds_load_u8 v75, v210 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v74, 16, v73
	ds_load_u8 v73, v210 offset:20320
	ds_load_u8 v74, v210 offset:20256
	v_wmma_i32_16x16x16_iu8 v[81:88], v[224:227], v[89:92], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v210 offset:20448
	ds_load_u8 v75, v210 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v210 offset:20064
	ds_load_u8 v76, v210 offset:20000
	v_lshl_or_b32 v96, v74, 16, v73
	ds_load_u8 v73, v210 offset:19808
	ds_load_u8 v74, v210 offset:19744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v210 offset:20192
	ds_load_u8 v77, v210 offset:20128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v76, 16, v75
	ds_load_u8 v74, v210 offset:19936
	ds_load_u8 v75, v210 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v94, v74, 16, v73
	ds_load_u8 v73, v210 offset:19552
	ds_load_u8 v74, v210 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v210 offset:19680
	ds_load_u8 v75, v210 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v74, 16, v73
	v_wmma_i32_16x16x16_iu8 v[73:80], v[97:100], v[89:92], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v89, v210 offset:19056
	ds_load_u8 v90, v210 offset:18992
	v_wmma_i32_16x16x16_iu8 v[81:88], v[228:231], v[93:96], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[101:104], v[93:96], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_cvt_f32_i32_e32 v247, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v210 offset:19184
	ds_load_u8 v91, v210 offset:19120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v210 offset:18800
	ds_load_u8 v92, v210 offset:18736
	v_lshl_or_b32 v241, v90, 16, v89
	ds_load_u8 v89, v210 offset:18480
	ds_load_u8 v90, v210 offset:18544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v210 offset:18928
	ds_load_u8 v93, v210 offset:18864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v89, v90, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v240, v92, 16, v91
	ds_load_u8 v90, v210 offset:18672
	ds_load_u8 v91, v210 offset:18608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_lshl_or_b32 v239, v90, 16, v89
	ds_load_u8 v89, v210 offset:19312
	ds_load_u8 v90, v210 offset:19248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v220 offset:18432
	ds_load_u8 v91, v210 offset:19376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v242, v90, 16, v89
	ds_load_u8 v89, v210 offset:20080
	ds_load_u8 v90, v210 offset:20016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v210 offset:20208
	ds_load_u8 v91, v210 offset:20144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v210 offset:19824
	ds_load_u8 v92, v210 offset:19760
	v_lshl_or_b32 v245, v90, 16, v89
	ds_load_u8 v89, v210 offset:19568
	ds_load_u8 v90, v210 offset:19504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v210 offset:19952
	ds_load_u8 v93, v210 offset:19888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v244, v92, 16, v91
	ds_load_u8 v90, v210 offset:19696
	ds_load_u8 v91, v210 offset:19632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_lshl_or_b32 v243, v90, 16, v89
	ds_load_u8 v89, v210 offset:20336
	ds_load_u8 v90, v210 offset:20272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v221 offset:18432
	ds_load_u8 v91, v210 offset:20400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v246, v90, 16, v89
	v_wmma_i32_16x16x16_iu8 v[89:96], v[97:100], v[239:242], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[101:104], v[243:246], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[224:227], v[239:242], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v226, v116
	v_cvt_f32_i32_e32 v116, v117
	v_cvt_f32_i32_e32 v117, v134
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[228:231], v[243:246], v[97:104] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v230, v114
	v_cvt_f32_i32_e32 v114, v135
	v_cvt_f32_i32_e32 v135, v11
	v_cvt_f32_i32_e32 v134, v12
	v_cvt_f32_i32_e32 v242, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[9:12], v216 offset:20480
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v239, v33
	v_cvt_f32_i32_e32 v240, v25
	v_cvt_f32_i32_e32 v25, v55
	v_cvt_f32_i32_e32 v55, v82
	v_cvt_f32_i32_e32 v82, v101
	v_cvt_f32_i32_e32 v101, v41
	v_cvt_f32_i32_e32 v71, v98
	v_cvt_f32_i32_e32 v98, v42
	v_cvt_f32_i32_e32 v72, v99
	v_cvt_f32_i32_e32 v99, v43
	v_cvt_f32_i32_e32 v241, v17
	v_cvt_f32_i32_e32 v229, v106
	v_cvt_f32_i32_e32 v225, v108
	v_cvt_f32_i32_e32 v106, v111
	v_cvt_f32_i32_e32 v108, v119
	v_cvt_f32_i32_e32 v111, v127
	v_cvt_f32_i32_e32 v119, v133
	v_cvt_f32_i32_e32 v127, v35
	v_cvt_f32_i32_e32 v35, v39
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v9
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v41, 16, v238
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v39, v26
	v_cvt_f32_i32_e32 v133, v18
	v_cvt_f32_i32_e32 v18, v24
	v_cvt_f32_i32_e32 v24, v54
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v42, v239, v41
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v54, v81
	v_cvt_f32_i32_e32 v81, v100
	v_cvt_f32_i32_e32 v100, v44
	v_cvt_f32_i32_e32 v224, v109
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v197, v42, v73
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v42, 16, v237
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v128
	v_cvt_f32_i32_e32 v128, v34
	v_cvt_f32_i32_e32 v244, v74
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v43, v240, v42
	v_mul_f32_e32 v39, v42, v39
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v228, v115
	v_cvt_f32_i32_e32 v115, v126
	v_cvt_f32_i32_e32 v126, v36
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v186, v43, v73 :: v_dual_lshlrev_b32 v43, 16, v236
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v38, v27
	v_cvt_f32_i32_e32 v33, v28
	v_cvt_f32_i32_e32 v231, v105
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v44, v241, v43
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v105, v112
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v38, v42, v38
	v_mul_f32_e32 v33, v42, v33
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v112, v118
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v168, v44, v73
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v235
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v118, v125
	v_cvt_f32_i32_e32 v125, v129
	v_cvt_f32_i32_e32 v28, v30
	v_cvt_f32_i32_e32 v129, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v74, v242, v44
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v49
	v_cvt_f32_i32_e32 v30, v56
	v_cvt_f32_i32_e32 v49, v68
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v152, v74, v73 :: v_dual_mul_f32 v73, v41, v128
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v74, 16, v10
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v56, v83
	v_cvt_f32_i32_e32 v68, v87
	v_cvt_f32_i32_e32 v83, v102
	v_cvt_f32_i32_e32 v87, v46
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v185, v39, v74
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v39, v43, v133 :: v_dual_fmac_f32 v202, v73, v74
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v73, 16, v11
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v102, v58
	v_cvt_f32_i32_e32 v58, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v167, v39, v74
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v39, v44, v136 :: v_dual_fmac_f32 v184, v38, v73
	v_mul_f32_e32 v38, v43, v132
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v46, v64
	v_cvt_f32_i32_e32 v63, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v151, v39, v74
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v74, v217, s1, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v166, v38, v73
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v38, v44, v135
	v_mul_f32_e32 v39, v41, v127
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v64, v93
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v243, v57
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v150, v38, v73
	v_dual_fmac_f32 v201, v39, v73 :: v_dual_mul_f32 v38, v41, v126
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v39, 16, v12
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v73, v215, s0, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v227, v107
	v_cvt_f32_i32_e32 v107, v120
	v_cvt_f32_i32_e32 v120, v124
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v200, v38, v39
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v38, v213, s0, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v183, v33, v39
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v33, v43, v131
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v124, v130
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v34, v40
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v165, v33, v39
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v33, v44, v134
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v130, v13
	v_cvt_f32_i32_e32 v13, v16
	v_cvt_f32_i32_e32 v16, v50
	v_cvt_f32_i32_e32 v40, v67
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v149, v33, v39
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v33, v212, s0, 1
	v_add_lshl_u32 v39, v214, s0, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v50, v69
	v_cvt_f32_i32_e32 v67, v86
	v_cvt_f32_i32_e32 v69, v88
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v77, v74, s[16:19], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v33, v33, s[12:15], 0 offen
	buffer_load_u16 v38, v38, s[12:15], 0 offen
	buffer_load_u16 v39, v39, s[12:15], 0 offen
	buffer_load_u16 v93, v73, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v86, v47
	v_cvt_f32_i32_e32 v88, v61
	v_cvt_f32_i32_e32 v245, v75
	v_cvt_f32_i32_e32 v246, v76
	v_cvt_f32_i32_e32 v61, v78
	v_cvt_f32_i32_e32 v57, v79
	v_cvt_f32_i32_e32 v47, v80
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[73:76], v216 offset:20496
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v26, v32
	v_cvt_f32_i32_e32 v32, v66
	v_cvt_f32_i32_e32 v66, v85
	v_cvt_f32_i32_e32 v85, v104
	v_cvt_f32_i32_e32 v104, v60
	v_cvt_f32_i32_e32 v60, v62
	v_cvt_f32_i32_e32 v62, v94
	v_cvt_f32_i32_e32 v27, v31
	v_cvt_f32_i32_e32 v31, v65
	v_cvt_f32_i32_e32 v65, v84
	v_cvt_f32_i32_e32 v84, v103
	v_cvt_f32_i32_e32 v103, v59
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v21, v43, v21 :: v_dual_mul_f32 v14, v44, v14
	v_mul_f32_e32 v29, v42, v29
	v_dual_mul_f32 v13, v44, v13 :: v_dual_and_b32 v10, 0xffff0000, v10
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v17, v51
	v_cvt_f32_i32_e32 v51, v70
	v_cvt_f32_i32_e32 v70, v97
	v_cvt_f32_i32_e32 v97, v45
	v_cvt_f32_i32_e32 v45, v48
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v11, 0xffff0000, v11
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v59, v95
	v_cvt_f32_i32_e32 v48, v96
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v37, v41, v37 :: v_dual_mul_f32 v20, v43, v20
	v_dual_mul_f32 v19, v43, v19 :: v_dual_and_b32 v12, 0xffff0000, v12
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v38, 16, v38
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v77, 16, v77
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v94, v101, v33
	ds_store_b32 v223, v77 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v216 offset:20480
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v39, 16, v39
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v93, 16, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v89, v89, v93
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v197, v94, v77 :: v_dual_mul_f32 v94, v33, v98
	v_fmac_f32_e32 v152, v89, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v202, v94, v78
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v94, v33, v99
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v201, v94, v79 :: v_dual_mul_f32 v94, v33, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v200, v94, v80
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v94, v243, v38 :: v_dual_and_b32 v9, 0xffff0000, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v186, v94, v77
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v94, v38, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v185, v94, v78
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v94, v38, v103
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v184, v94, v79
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v94, v38, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v183, v94, v80 :: v_dual_mul_f32 v94, v247, v39
	v_fmac_f32_e32 v168, v94, v77
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v94, v39, v244 :: v_dual_mul_f32 v77, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v167, v94, v78
	v_fmac_f32_e32 v151, v77, v78
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v77, v93, v91 :: v_dual_mul_f32 v94, v39, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v150, v77, v79
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v77, v93, v92 :: v_dual_fmac_f32 v166, v94, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v94, v39, v246 :: v_dual_fmac_f32 v149, v77, v80
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v77, 16, v73
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v165, v94, v80 :: v_dual_fmac_f32 v182, v29, v77
	v_dual_fmac_f32 v164, v21, v77 :: v_dual_mul_f32 v21, v44, v130
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v29, 16, v74
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v199, v37, v77
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v93, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v148, v21, v77
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v41, v36
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v163, v20, v29
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v44, v129
	v_mul_f32_e32 v36, v39, v69
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v198, v21, v29 :: v_dual_mul_f32 v21, v42, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v147, v20, v29 :: v_dual_mul_f32 v20, v41, v35
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v35, v39, v68 :: v_dual_mul_f32 v28, v38, v53
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v181, v21, v29
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v21, 16, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v29, v39, v54 :: v_dual_fmac_f32 v196, v20, v21
	v_mul_f32_e32 v20, v42, v27
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v146, v14, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v14, v41, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v162, v19, v21 :: v_dual_lshlrev_b32 v19, 16, v76
	v_dual_fmac_f32 v180, v20, v21 :: v_dual_mul_f32 v27, v38, v52
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v34, v39, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v195, v14, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v14, v42, v26 :: v_dual_fmac_f32 v145, v13, v19
	v_dual_mul_f32 v13, v33, v97 :: v_dual_mul_f32 v26, v38, v51
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v179, v14, v19 :: v_dual_mul_f32 v14, v43, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v161, v14, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[18:21], v216 offset:20496
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_and_b32_e32 v14, 0xffff0000, v74
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v199, v13, v18
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v33, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v198, v13, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v33, v86
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v196, v13, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v33, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v195, v13, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v38, v88
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v182, v13, v18 :: v_dual_mul_f32 v13, v38, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v181, v13, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v38, v58
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v180, v13, v20 :: v_dual_mul_f32 v13, v38, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v179, v13, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v39, v63
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v164, v13, v18 :: v_dual_mul_f32 v13, v39, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v163, v13, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v39, v57
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v162, v13, v20 :: v_dual_mul_f32 v13, v39, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v161, v13, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v93, v64
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v148, v13, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v13, v93, v62 :: v_dual_and_b32 v18, 0xffff0000, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v147, v13, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v93, v59
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v146, v13, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v41, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v13, v93, v48 :: v_dual_fmac_f32 v194, v20, v9
	v_mul_f32_e32 v20, v42, v233
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v178, v20, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v43, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v160, v20, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v44, v125
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v144, v20, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v41, v229
	v_mul_f32_e32 v20, v33, v30
	v_dual_mul_f32 v30, v39, v55 :: v_dual_fmac_f32 v145, v13, v21
	v_mul_f32_e32 v21, v38, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v193, v9, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v42, v230
	v_mul_f32_e32 v31, v39, v56
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_and_b32_e32 v13, 0xffff0000, v73
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v177, v9, v10
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v43, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v159, v9, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v44, v124
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v143, v9, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v41, v227
	v_mul_f32_e32 v10, v42, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v192, v9, v11 :: v_dual_mul_f32 v9, v42, v228
	v_dual_fmac_f32 v176, v9, v11 :: v_dual_and_b32 v19, 0xffff0000, v76
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v43, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v169, v10, v19
	v_fmac_f32_e32 v158, v9, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v44, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v142, v9, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v41, v225
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v191, v9, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v42, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v175, v9, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v43, v120
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v157, v9, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v44, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v141, v9, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v9, v41, v224 :: v_dual_mul_f32 v12, v44, v113
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v190, v9, v13 :: v_dual_mul_f32 v9, v42, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v137, v12, v19 :: v_dual_fmac_f32 v174, v9, v13
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v43, v118
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v156, v9, v13 :: v_dual_mul_f32 v9, v44, v119
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v140, v9, v13
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v41, v109
	v_mul_f32_e32 v13, v33, v15
	v_mul_f32_e32 v15, v33, v17
	v_mul_f32_e32 v17, v33, v23
	v_mul_f32_e32 v11, v43, v110
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v189, v9, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v42, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v153, v11, v19
	v_fmac_f32_e32 v173, v9, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v43, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v155, v9, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v44, v117
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v139, v9, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v41, v106
	v_mul_f32_e32 v14, v33, v16
	v_mul_f32_e32 v16, v33, v22
	v_mul_f32_e32 v22, v38, v32
	v_mul_f32_e32 v32, v39, v65
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v188, v9, v18 :: v_dual_mul_f32 v9, v42, v108
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v42, v93, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v170, v9, v18 :: v_dual_mul_f32 v9, v43, v111
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v43, v93, v84
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v154, v9, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v9, v44, v114 :: v_dual_mul_f32 v44, v93, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v138, v9, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v41, v105
	v_mul_f32_e32 v18, v33, v24
	v_dual_mul_f32 v24, v38, v49 :: v_dual_mul_f32 v41, v93, v82
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v187, v9, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[9:12], v216 offset:20992
	v_mul_f32_e32 v19, v33, v25
	v_mul_f32_e32 v25, v38, v50
	v_mul_f32_e32 v33, v39, v66
	v_mul_f32_e32 v39, v93, v72
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v194, v13, v9 :: v_dual_fmac_f32 v193, v14, v10
	v_dual_fmac_f32 v192, v15, v11 :: v_dual_fmac_f32 v191, v16, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[13:16], v216 offset:21008
	v_dual_mul_f32 v23, v38, v40 :: v_dual_mul_f32 v38, v93, v71
	v_mul_f32_e32 v40, v93, v81
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v160, v29, v9
	v_fmac_f32_e32 v178, v21, v9
	v_fmac_f32_e32 v158, v31, v11
	v_fmac_f32_e32 v144, v37, v9
	v_dual_fmac_f32 v142, v39, v11 :: v_dual_fmac_f32 v175, v24, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v141, v40, v12 :: v_dual_fmac_f32 v190, v17, v13
	v_dual_fmac_f32 v189, v18, v14 :: v_dual_fmac_f32 v188, v19, v15
	v_fmac_f32_e32 v187, v20, v16
	v_dual_fmac_f32 v177, v22, v10 :: v_dual_fmac_f32 v174, v25, v13
	v_fmac_f32_e32 v173, v26, v14
	v_dual_fmac_f32 v169, v28, v16 :: v_dual_fmac_f32 v156, v33, v13
	v_dual_fmac_f32 v176, v23, v11 :: v_dual_fmac_f32 v159, v30, v10
	v_dual_fmac_f32 v155, v34, v14 :: v_dual_fmac_f32 v154, v35, v15
	v_dual_fmac_f32 v153, v36, v16 :: v_dual_fmac_f32 v140, v41, v13
	v_dual_fmac_f32 v170, v27, v15 :: v_dual_fmac_f32 v143, v38, v10
	v_dual_fmac_f32 v139, v42, v14 :: v_dual_fmac_f32 v138, v43, v15
	v_fmac_f32_e32 v157, v32, v12
	v_fmac_f32_e32 v137, v44, v16
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v7, v197, 16, 1
	v_bfe_u32 v8, v202, 16, 1
	v_bfe_u32 v9, v201, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	v_cmp_o_f32_e64 s0, v202, v202
	v_add3_u32 v7, v197, v7, 0x7fff
	v_add3_u32 v8, v202, v8, 0x7fff
	v_bfe_u32 v10, v200, 16, 1
	v_add3_u32 v9, v201, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v201, v201
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s0
	v_bfe_u32 v8, v199, 16, 1
	v_bfe_u32 v11, v198, 16, 1
	v_add3_u32 v10, v200, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_add3_u32 v8, v199, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v199, v199
	v_add3_u32 v11, v198, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v198, v198
	v_cndmask_b16 v9.h, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v196, 16, 1
	v_bfe_u32 v12, v195, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s1
	v_bfe_u32 v11, v194, 16, 1
	v_add3_u32 v10, v196, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	v_add3_u32 v12, v195, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v195, v195
	v_bfe_u32 v13, v193, 16, 1
	v_add3_u32 v11, v194, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v194, v194
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s0
	v_bfe_u32 v12, v192, 16, 1
	v_bfe_u32 v14, v191, 16, 1
	v_add3_u32 v13, v193, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v193, v193
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_add3_u32 v12, v192, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v192, v192
	v_add3_u32 v14, v191, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v191, v191
	v_cndmask_b16 v11.h, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v13, v190, 16, 1
	v_bfe_u32 v15, v189, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s0
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v188, 16, 1
	v_add3_u32 v13, v190, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	v_add3_u32 v15, v189, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v189, v189
	v_bfe_u32 v16, v187, 16, 1
	v_add3_u32 v14, v188, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v188, v188
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s0
	v_bfe_u32 v15, v186, 16, 1
	v_bfe_u32 v17, v185, 16, 1
	v_add3_u32 v16, v187, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_add3_u32 v15, v186, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v186, v186
	v_add3_u32 v17, v185, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v185, v185
	v_cndmask_b16 v14.h, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v184, 16, 1
	v_bfe_u32 v18, v183, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s0
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s1
	v_bfe_u32 v17, v182, 16, 1
	v_add3_u32 v16, v184, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	v_add3_u32 v18, v183, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v183, v183
	v_bfe_u32 v19, v181, 16, 1
	v_add3_u32 v17, v182, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v182, v182
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s0
	v_bfe_u32 v18, v180, 16, 1
	v_bfe_u32 v20, v179, 16, 1
	v_add3_u32 v19, v181, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s1
	v_add3_u32 v18, v180, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v180, v180
	v_add3_u32 v20, v179, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v179, v179
	v_cndmask_b16 v17.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v178, 16, 1
	v_bfe_u32 v21, v177, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s0
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s1
	v_bfe_u32 v20, v176, 16, 1
	v_add3_u32 v19, v178, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_add3_u32 v21, v177, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v177, v177
	v_bfe_u32 v22, v175, 16, 1
	v_add3_u32 v20, v176, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v176, v176
	v_cndmask_b16 v19.l, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s0
	v_bfe_u32 v21, v174, 16, 1
	v_bfe_u32 v23, v173, 16, 1
	v_add3_u32 v22, v175, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s1
	v_add3_u32 v21, v174, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v174, v174
	v_add3_u32 v23, v173, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v173, v173
	v_cndmask_b16 v20.h, 0x7fff, v22.h, vcc_lo
	v_bfe_u32 v22, v170, 16, 1
	v_bfe_u32 v24, v169, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s0
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s1
	v_bfe_u32 v23, v168, 16, 1
	v_add3_u32 v22, v170, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	v_add3_u32 v24, v169, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v169, v169
	v_bfe_u32 v25, v167, 16, 1
	v_add3_u32 v23, v168, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v168, v168
	v_cndmask_b16 v22.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s0
	v_bfe_u32 v24, v166, 16, 1
	v_bfe_u32 v26, v165, 16, 1
	v_add3_u32 v25, v167, v25, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s1
	v_add3_u32 v24, v166, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v166, v166
	v_add3_u32 v26, v165, v26, 0x7fff
	v_cmp_o_f32_e64 s1, v165, v165
	v_cndmask_b16 v23.h, 0x7fff, v25.h, vcc_lo
	v_bfe_u32 v25, v164, 16, 1
	v_bfe_u32 v27, v163, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s0
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s1
	v_bfe_u32 v26, v162, 16, 1
	v_add3_u32 v25, v164, v25, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	v_add3_u32 v27, v163, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v163, v163
	v_bfe_u32 v28, v161, 16, 1
	v_add3_u32 v26, v162, v26, 0x7fff
	v_cmp_o_f32_e64 s1, v162, v162
	v_cndmask_b16 v25.l, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s0
	v_bfe_u32 v27, v160, 16, 1
	v_bfe_u32 v29, v159, 16, 1
	v_add3_u32 v28, v161, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s1
	v_add3_u32 v27, v160, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v160, v160
	v_add3_u32 v29, v159, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v159, v159
	v_cndmask_b16 v26.h, 0x7fff, v28.h, vcc_lo
	v_bfe_u32 v28, v158, 16, 1
	v_bfe_u32 v30, v157, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s0
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s1
	v_bfe_u32 v29, v156, 16, 1
	v_add3_u32 v28, v158, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_add3_u32 v30, v157, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v157, v157
	v_bfe_u32 v31, v155, 16, 1
	v_add3_u32 v29, v156, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v156, v156
	v_cndmask_b16 v28.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s0
	v_bfe_u32 v30, v154, 16, 1
	v_bfe_u32 v32, v153, 16, 1
	v_add3_u32 v31, v155, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s1
	v_add3_u32 v30, v154, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v154, v154
	v_add3_u32 v32, v153, v32, 0x7fff
	v_cmp_o_f32_e64 s1, v153, v153
	v_cndmask_b16 v29.h, 0x7fff, v31.h, vcc_lo
	v_bfe_u32 v31, v152, 16, 1
	v_bfe_u32 v33, v151, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s0
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s1
	v_bfe_u32 v32, v150, 16, 1
	v_add3_u32 v31, v152, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v152, v152
	v_add3_u32 v33, v151, v33, 0x7fff
	v_cmp_o_f32_e64 s0, v151, v151
	v_bfe_u32 v34, v149, 16, 1
	v_add3_u32 v32, v150, v32, 0x7fff
	v_cmp_o_f32_e64 s1, v150, v150
	v_cndmask_b16 v31.l, 0x7fff, v31.h, vcc_lo
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s0
	v_bfe_u32 v33, v148, 16, 1
	v_bfe_u32 v35, v147, 16, 1
	v_add3_u32 v34, v149, v34, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v149, v149
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s1
	v_add3_u32 v33, v148, v33, 0x7fff
	v_cmp_o_f32_e64 s0, v148, v148
	v_add3_u32 v35, v147, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v147, v147
	v_cndmask_b16 v32.h, 0x7fff, v34.h, vcc_lo
	v_bfe_u32 v34, v146, 16, 1
	v_bfe_u32 v36, v145, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s0
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v144, 16, 1
	v_add3_u32 v34, v146, v34, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v146, v146
	v_add3_u32 v36, v145, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v145, v145
	v_bfe_u32 v37, v143, 16, 1
	v_add3_u32 v35, v144, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v144, v144
	v_cndmask_b16 v34.l, 0x7fff, v34.h, vcc_lo
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v142, 16, 1
	v_bfe_u32 v38, v141, 16, 1
	v_add3_u32 v37, v143, v37, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s1
	v_add3_u32 v36, v142, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v142, v142
	v_add3_u32 v38, v141, v38, 0x7fff
	v_cmp_o_f32_e64 s1, v141, v141
	v_bfe_u32 v39, v140, 16, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v172
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v37.h, vcc_lo
	v_bfe_u32 v37, v139, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s0
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s1
	v_add3_u32 v38, v140, v39, 0x7fff
	v_bfe_u32 v39, v138, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_bfe_u32 v40, v137, 16, 1
	v_and_b32_e32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v3, s7, v171
	s_mul_i32 s34, s34, s7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v139, v37, 0x7fff
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v4, s34, s33, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v139, v139
	v_add3_u32 v39, v138, v39, 0x7fff
	v_cmp_o_f32_e64 s1, v138, v138
	v_add3_u32 v40, v137, v40, 0x7fff
	v_cmp_o_f32_e64 s2, v137, v137
	v_cndmask_b16 v37.l, 0x7fff, v38.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[1:2], null, s7, 48, v[3:4]
	v_add_nc_u32_e32 v6, s22, v3
	v_add_nc_u32_e32 v5, s35, v3
	v_add_nc_u32_e32 v2, 0x80, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v39.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s2
	v_dual_cndmask_b32 v38, v8, v7 :: v_dual_cndmask_b32 v41, v14, v12
	v_cndmask_b32_e32 v7, v7, v8, vcc_lo
	v_dual_cndmask_b32 v39, v10, v9 :: v_dual_cndmask_b32 v8, v9, v10
	v_dual_cndmask_b32 v40, v13, v11 :: v_dual_cndmask_b32 v9, v11, v13
	v_dual_cndmask_b32 v10, v12, v14 :: v_dual_cndmask_b32 v43, v18, v16
	v_dual_cndmask_b32 v42, v17, v15 :: v_dual_cndmask_b32 v13, v19, v21
	v_dual_cndmask_b32 v11, v15, v17 :: v_dual_cndmask_b32 v12, v16, v18
	v_dual_cndmask_b32 v45, v22, v20 :: v_dual_cndmask_b32 v44, v21, v19
	v_dual_cndmask_b32 v15, v23, v25 :: v_dual_cndmask_b32 v14, v20, v22
	v_dual_cndmask_b32 v47, v26, v24 :: v_dual_cndmask_b32 v46, v25, v23
	v_dual_cndmask_b32 v17, v27, v29 :: v_dual_cndmask_b32 v20, v32, v34
	v_mov_b32_e32 v23, 0x7632
	v_mov_b32_e32 v22, 0x5410
	s_mov_b32 s0, 0x76543210
	v_dual_cndmask_b32 v16, v24, v26 :: v_dual_cndmask_b32 v49, v30, v28
	v_dual_cndmask_b32 v52, v37, v35 :: v_dual_cndmask_b32 v53, v0, v36
	v_cndmask_b32_e32 v0, v36, v0, vcc_lo
	v_permlanex16_b32 v24, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v22, vcc_lo
	v_cndmask_b32_e32 v22, 0x3276, v23, vcc_lo
	v_permlanex16_b32 v23, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v48, v29, v27 :: v_dual_cndmask_b32 v19, v31, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_dual_cndmask_b32 v18, v28, v30 :: v_dual_cndmask_b32 v51, v34, v32
	v_dual_cndmask_b32 v50, v33, v31 :: v_dual_cndmask_b32 v21, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_permlanex16_b32 v25, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_permlanex16_b32 v27, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v7
	v_and_b32_e32 v54, 0x7060706, v8
	v_permlanex16_b32 v30, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v24, v38, v37
	v_perm_b32 v8, v24, v38, v54
	v_perm_b32 v9, v23, v39, v37
	v_perm_b32 v10, v23, v39, v54
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v3, v4, v3, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v11, v25, v40, v37
	v_perm_b32 v12, v25, v40, v54
	v_perm_b32 v13, v26, v41, v37
	v_perm_b32 v14, v26, v41, v54
	v_perm_b32 v15, v22, v42, v37
	v_perm_b32 v16, v22, v42, v54
	v_perm_b32 v17, v27, v43, v37
	v_perm_b32 v18, v27, v43, v54
	v_add_lshl_u32 v39, v4, v6, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_perm_b32 v19, v28, v44, v37
	v_perm_b32 v20, v28, v44, v54
	v_perm_b32 v21, v29, v45, v37
	v_perm_b32 v22, v29, v45, v54
	v_perm_b32 v23, v30, v46, v37
	v_perm_b32 v24, v30, v46, v54
	v_perm_b32 v25, v31, v47, v37
	v_perm_b32 v26, v31, v47, v54
	v_perm_b32 v27, v32, v48, v37
	v_perm_b32 v28, v32, v48, v54
	v_perm_b32 v29, v33, v49, v37
	v_perm_b32 v30, v33, v49, v54
	v_perm_b32 v31, v34, v50, v37
	v_perm_b32 v32, v34, v50, v54
	v_perm_b32 v33, v35, v51, v37
	v_perm_b32 v34, v35, v51, v54
	v_perm_b32 v35, v36, v52, v37
	v_perm_b32 v37, v0, v53, v37
	v_perm_b32 v38, v0, v53, v54
	v_add_lshl_u32 v0, v2, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v3, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v3, s[20:23], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[20:23], 0 offen
	v_add_lshl_u32 v3, v4, v5, 1
	v_add_lshl_u32 v5, v2, v5, 1
	v_add_lshl_u32 v4, v4, v1, 1
	v_perm_b32 v36, v36, v52, v54
	v_add_lshl_u32 v1, v2, v1, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v5, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v4, s[20:23], 0 offen
	buffer_store_b128 v[35:38], v1, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 248
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14752
; TotalNumSgprs: 40
; NumVgprs: 248
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 40
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
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
