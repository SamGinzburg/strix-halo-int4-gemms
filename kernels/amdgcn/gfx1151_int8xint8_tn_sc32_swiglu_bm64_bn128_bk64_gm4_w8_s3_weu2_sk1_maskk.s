	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
	v_dual_mov_b32 v50, v0 :: v_dual_mov_b32 v131, 0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x20
	s_load_b32 s29, s[0:1], 0x38
	v_dual_mov_b32 v190, 0 :: v_dual_and_b32 v1, 15, v50
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s18, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v147, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v155, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s6
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v161, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v165, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v173, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	s_mul_i32 s9, s9, s6
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v175, 0
	s_mul_hi_u32 s9, s6, s9
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v177, 0
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v179, 0
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v191, 0
	s_cselect_b32 s5, s10, s6
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v183, 0
	s_xor_b32 s5, s5, s9
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v185, 0
	s_sub_i32 s5, s5, s9
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v195, 0
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v193, 0
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_mov_b32_e32 v192, 0
	v_mov_b32_e32 v194, 0
	v_rcp_iflag_f32_e32 v0, s9
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	v_readfirstlane_b32 s9, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v0, 3, v50
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v46, v0, 16, v1
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v47, 32, v46
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
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
	s_sub_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s29, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s2, 6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s2, s4, 7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s5, 64
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s29, 31
.Ltmp15:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s6, s5, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s7, s1, 31
.Ltmp17:
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v0, 4, v50
	scratch_store_b32 off, v2, off offset:52 ; 4-byte Folded Spill
	v_dual_mov_b32 v193, 0 :: v_dual_and_b32 v2, 48, v2
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s6, s6, 26
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s7, s7, 27
	v_lshrrev_b32_e32 v19, 3, v50
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s5, s6
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s6, s1, s7
.Ltmp22:
	.loc	1 303 14 is_stmt 1              ; generate_amdgcn.py:303:14
	s_lshl_b32 s0, s19, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v3, v0, 1, v2
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s5, 6
.Ltmp24:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s30, s6, 5
	s_mov_b32 s5, s4
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
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_and_b32_e32 v0, 7, v50
	v_mul_lo_u32 v15, s18, v19
	v_mul_lo_u32 v19, s0, v19
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v21, 2, v3
	v_or_b32_e32 v20, 4, v3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v18, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v0, 4, v0
	v_or_b32_e32 v4, 0x4e, v3
	v_or_b32_e32 v5, 0x4c, v3
	v_or_b32_e32 v6, 0x4a, v3
	v_add3_u32 v15, v15, v18, s28
	v_add3_u32 v0, v19, v0, s2
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:8
	scratch_store_b32 off, v50, off offset:40
	v_or_b32_e32 v0, v2, v1
	v_or_b32_e32 v1, s28, v46
	v_or_b32_e32 v2, s28, v47
	v_or_b32_e32 v7, 0x48, v3
	v_or_b32_e32 v8, 0x46, v3
	v_add_nc_u32_e32 v201, 0, v0
	v_mul_lo_u32 v0, v1, s30
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v15, off offset:4
	scratch_store_b32 off, v46, off offset:44
	v_or_b32_e32 v17, 6, v3
	v_lshlrev_b32_e32 v15, 3, v50
	v_or_b32_e32 v9, 0x44, v3
	v_or_b32_e32 v10, 0x42, v3
	v_or_b32_e32 v11, 64, v3
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s30
	scratch_store_b32 off, v47, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v12, 14, v3
	v_or_b32_e32 v13, 12, v3
	v_or_b32_e32 v14, 10, v3
	v_or_b32_e32 v16, 8, v3
	v_or_b32_e32 v196, s2, v8
	v_or_b32_e32 v189, s2, v7
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v0, s2, v3
	v_or_b32_e32 v187, s2, v6
	v_or_b32_e32 v218, s2, v5
	v_or_b32_e32 v219, s2, v4
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v220, s19, v3
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v0, s2, v21
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v231, s19, v8
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v232, s19, v7
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v0, s2, v20
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v233, s19, v6
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v234, s19, v5
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v235, s19, v4
	v_mov_b32_e32 v1, s4
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v0, s2, v17
	v_dual_mov_b32 v2, s5 :: v_dual_add_nc_u32 v199, 0, v15
	v_mov_b32_e32 v4, s7
	v_dual_mov_b32 v7, s10 :: v_dual_add_nc_u32 v200, 0, v46
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v129, s2, v16
	v_or_b32_e32 v197, s2, v14
	v_or_b32_e32 v0, s2, v13
	v_or_b32_e32 v198, s2, v12
	v_or_b32_e32 v253, s2, v11
	v_or_b32_e32 v254, s2, v10
	v_or_b32_e32 v255, s2, v9
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v221, s19, v21
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v222, s19, v20
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v223, s19, v17
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v224, s19, v16
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v225, s19, v14
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v226, s19, v13
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v227, s19, v12
	v_dual_mov_b32 v181, 0 :: v_dual_add_nc_u32 v228, s19, v11
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v229, s19, v10
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v230, s19, v9
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v236, v199, v15
	v_mov_b32_e32 v3, s6
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v131, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v130, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s31, s19, 6
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
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v20, off, off
	scratch_load_b32 v21, off, off offset:4
	scratch_load_b64 v[10:11], off, off offset:8
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s5, 6
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s7, s6, s18
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_or_b32 s5, s6, 32
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v9, s6, v20
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[17:18], null, s6, s0, v[10:11]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s29, v9
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add_nc_u32_e32 v9, s7, v21
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v10, s19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_dual_cndmask_b32 v13, 0x80000000, v10 :: v_dual_cndmask_b32 v10, 0x80000000, v17
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[18:19], v9, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v236, v[9:12]
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v236, v[13:16] offset:8192
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	ds_store_b64 v199, v[18:19] offset:16384
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v9, s5, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_add_u32 v10, s18, 5, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s29, v9
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v9, s31, v17
	v_add_nc_u32_e32 v10, s7, v10
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s7, s6, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s6, s7, s0
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v11, s19, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s7, s30
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e32 v13, 0x80000000, v11, vcc_lo
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[17:18], v10, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v236, v[9:12] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v236, v[13:16] offset:12288
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	ds_store_b64 v199, v[17:18] offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v200 offset:17216
	ds_load_u8 v10, v200 offset:17152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v200 offset:17344
	ds_load_u8 v11, v200 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v200 offset:16960
	ds_load_u8 v12, v200 offset:16896
	v_lshl_or_b32 v52, v10, 16, v9
	ds_load_u8 v9, v200 offset:16704
	ds_load_u8 v10, v200 offset:16640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v200 offset:17088
	ds_load_u8 v13, v200 offset:17024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v12, 16, v11
	ds_load_u8 v10, v200 offset:16832
	ds_load_u8 v11, v200 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v50, v10, 16, v9
	ds_load_u8 v9, v200 offset:16448
	ds_load_u8 v10, v200 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v200 offset:16576
	ds_load_u8 v11, v200 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v10, 16, v9
	ds_load_u8 v9, v201 offset:1664
	ds_load_u8 v10, v201 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v201 offset:1920
	ds_load_u8 v11, v201 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v201 offset:1152
	ds_load_u8 v12, v201 offset:1024
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v201 offset:640
	ds_load_u8 v10, v201 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v201 offset:1408
	ds_load_u8 v13, v201 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v12, 16, v11
	ds_load_u8 v10, v201 offset:896
	ds_load_u8 v11, v201 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v201 offset:128
	ds_load_u8 v10, v201
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v201 offset:384
	ds_load_u8 v11, v201 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v200 offset:18240
	ds_load_u8 v10, v200 offset:18176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v200 offset:18368
	ds_load_u8 v11, v200 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v200 offset:17984
	ds_load_u8 v12, v200 offset:17920
	v_lshl_or_b32 v56, v10, 16, v9
	ds_load_u8 v9, v200 offset:17728
	ds_load_u8 v10, v200 offset:17664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v200 offset:18112
	ds_load_u8 v13, v200 offset:18048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v12, 16, v11
	ds_load_u8 v10, v200 offset:17856
	ds_load_u8 v11, v200 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v54, v10, 16, v9
	ds_load_u8 v9, v200 offset:17472
	ds_load_u8 v10, v200 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v200 offset:17600
	ds_load_u8 v11, v200 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v10, 16, v9
	ds_load_u8 v9, v201 offset:3712
	ds_load_u8 v10, v201 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v201 offset:3968
	ds_load_u8 v11, v201 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v201 offset:3200
	ds_load_u8 v12, v201 offset:3072
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v201 offset:2688
	ds_load_u8 v10, v201 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v201 offset:3456
	ds_load_u8 v13, v201 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v201 offset:2944
	ds_load_u8 v11, v201 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v201 offset:2176
	ds_load_u8 v10, v201 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v201 offset:2432
	ds_load_u8 v11, v201 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v200 offset:17248
	ds_load_u8 v10, v200 offset:17184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v200 offset:17376
	ds_load_u8 v11, v200 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v200 offset:16992
	ds_load_u8 v12, v200 offset:16928
	v_lshl_or_b32 v76, v10, 16, v9
	ds_load_u8 v9, v200 offset:16736
	ds_load_u8 v10, v200 offset:16672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v200 offset:17120
	ds_load_u8 v13, v200 offset:17056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v12, 16, v11
	ds_load_u8 v10, v200 offset:16864
	ds_load_u8 v11, v200 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v74, v10, 16, v9
	ds_load_u8 v9, v200 offset:16480
	ds_load_u8 v10, v200 offset:16416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v200 offset:16608
	ds_load_u8 v11, v200 offset:16544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v10, 16, v9
	ds_load_u8 v9, v200 offset:18272
	ds_load_u8 v10, v200 offset:18208
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v200 offset:18400
	ds_load_u8 v11, v200 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v200 offset:18016
	ds_load_u8 v12, v200 offset:17952
	v_lshl_or_b32 v80, v10, 16, v9
	ds_load_u8 v9, v200 offset:17760
	ds_load_u8 v10, v200 offset:17696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v200 offset:18144
	ds_load_u8 v13, v200 offset:18080
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v12, 16, v11
	ds_load_u8 v10, v200 offset:17888
	ds_load_u8 v11, v200 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v78, v10, 16, v9
	ds_load_u8 v9, v200 offset:17504
	ds_load_u8 v10, v200 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v200 offset:17632
	ds_load_u8 v11, v200 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[49:52], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v201 offset:1728
	ds_load_u8 v26, v201 offset:1600
	v_wmma_i32_16x16x16_iu8 v[17:24], v[29:32], v[77:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[53:56], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v201 offset:1984
	ds_load_u8 v27, v201 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v201 offset:1216
	ds_load_u8 v28, v201 offset:1088
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v201 offset:704
	ds_load_u8 v26, v201 offset:576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v201 offset:1472
	ds_load_u8 v29, v201 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v201 offset:960
	ds_load_u8 v27, v201 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v201 offset:192
	ds_load_u8 v26, v201 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v201 offset:448
	ds_load_u8 v27, v201 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v201 offset:3776
	ds_load_u8 v26, v201 offset:3648
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v201 offset:4032
	ds_load_u8 v27, v201 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v201 offset:3264
	ds_load_u8 v28, v201 offset:3136
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v201 offset:2752
	ds_load_u8 v26, v201 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v201 offset:3520
	ds_load_u8 v29, v201 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v201 offset:3008
	ds_load_u8 v27, v201 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v201 offset:2240
	ds_load_u8 v26, v201 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v201 offset:2496
	ds_load_u8 v27, v201 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[49:52], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v41, v201 offset:9856
	ds_load_u8 v42, v201 offset:9728
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[77:80], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[53:56], v[25:32] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v201 offset:10112
	ds_load_u8 v43, v201 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v201 offset:9344
	ds_load_u8 v44, v201 offset:9216
	v_lshl_or_b32 v84, v42, 16, v41
	ds_load_u8 v41, v201 offset:8832
	ds_load_u8 v42, v201 offset:8704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v201 offset:9600
	ds_load_u8 v45, v201 offset:9472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v44, 16, v43
	ds_load_u8 v42, v201 offset:9088
	ds_load_u8 v43, v201 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v82, v42, 16, v41
	ds_load_u8 v41, v201 offset:8320
	ds_load_u8 v42, v201 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v201 offset:8576
	ds_load_u8 v43, v201 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v42, 16, v41
	ds_load_u8 v41, v201 offset:11904
	ds_load_u8 v42, v201 offset:11776
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v201 offset:12160
	ds_load_u8 v43, v201 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v201 offset:11392
	ds_load_u8 v44, v201 offset:11264
	v_lshl_or_b32 v88, v42, 16, v41
	ds_load_u8 v41, v201 offset:10880
	ds_load_u8 v42, v201 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v201 offset:11648
	ds_load_u8 v45, v201 offset:11520
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v44, 16, v43
	ds_load_u8 v42, v201 offset:11136
	ds_load_u8 v43, v201 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v86, v42, 16, v41
	ds_load_u8 v41, v201 offset:10368
	ds_load_u8 v42, v201 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v201 offset:10624
	ds_load_u8 v43, v201 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v42, 16, v41
	ds_load_u8 v41, v201 offset:9920
	ds_load_u8 v42, v201 offset:9792
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[53:56], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[85:88], v[77:80], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v201 offset:10176
	ds_load_u8 v43, v201 offset:10048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v201 offset:9408
	ds_load_u8 v44, v201 offset:9280
	v_lshl_or_b32 v92, v42, 16, v41
	ds_load_u8 v41, v201 offset:8896
	ds_load_u8 v42, v201 offset:8768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v201 offset:9664
	ds_load_u8 v45, v201 offset:9536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v44, 16, v43
	ds_load_u8 v42, v201 offset:9152
	ds_load_u8 v43, v201 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v90, v42, 16, v41
	ds_load_u8 v41, v201 offset:8384
	ds_load_u8 v42, v201 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v201 offset:8640
	ds_load_u8 v43, v201 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v42, 16, v41
	ds_load_u8 v41, v201 offset:11968
	ds_load_u8 v42, v201 offset:11840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v201 offset:12224
	ds_load_u8 v43, v201 offset:12096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v201 offset:11456
	ds_load_u8 v44, v201 offset:11328
	v_lshl_or_b32 v96, v42, 16, v41
	ds_load_u8 v41, v201 offset:10944
	ds_load_u8 v42, v201 offset:10816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v201 offset:11712
	ds_load_u8 v45, v201 offset:11584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v44, 16, v43
	ds_load_u8 v42, v201 offset:11200
	ds_load_u8 v43, v201 offset:11072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v94, v42, 16, v41
	ds_load_u8 v41, v201 offset:10432
	ds_load_u8 v42, v201 offset:10304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v201 offset:10688
	ds_load_u8 v43, v201 offset:10560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[89:92], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[53:56], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[73:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v73, v200 offset:19264
	ds_load_u8 v74, v200 offset:19200
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[49:56], v[93:96], v[77:80], v[49:56] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v200 offset:19392
	ds_load_u8 v75, v200 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v200 offset:19008
	ds_load_u8 v76, v200 offset:18944
	v_lshl_or_b32 v116, v74, 16, v73
	ds_load_u8 v73, v200 offset:18752
	ds_load_u8 v74, v200 offset:18688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v200 offset:19136
	ds_load_u8 v77, v200 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v115, v76, 16, v75
	ds_load_u8 v74, v200 offset:18880
	ds_load_u8 v75, v200 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v114, v74, 16, v73
	ds_load_u8 v73, v200 offset:18496
	ds_load_u8 v74, v200 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v200 offset:18624
	ds_load_u8 v75, v200 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v74, 16, v73
	ds_load_u8 v73, v201 offset:5760
	ds_load_u8 v74, v201 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v201 offset:6016
	ds_load_u8 v75, v201 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v201 offset:5248
	ds_load_u8 v76, v201 offset:5120
	v_lshl_or_b32 v84, v74, 16, v73
	ds_load_u8 v73, v201 offset:4736
	ds_load_u8 v74, v201 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v201 offset:5504
	ds_load_u8 v77, v201 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v76, 16, v75
	ds_load_u8 v74, v201 offset:4992
	ds_load_u8 v75, v201 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v82, v74, 16, v73
	ds_load_u8 v73, v201 offset:4224
	ds_load_u8 v74, v201 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v201 offset:4480
	ds_load_u8 v75, v201 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v74, 16, v73
	ds_load_u8 v73, v200 offset:20288
	ds_load_u8 v74, v200 offset:20224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v200 offset:20416
	ds_load_u8 v75, v200 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v200 offset:20032
	ds_load_u8 v76, v200 offset:19968
	v_lshl_or_b32 v120, v74, 16, v73
	ds_load_u8 v73, v200 offset:19776
	ds_load_u8 v74, v200 offset:19712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v200 offset:20160
	ds_load_u8 v77, v200 offset:20096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v76, 16, v75
	ds_load_u8 v74, v200 offset:19904
	ds_load_u8 v75, v200 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v118, v74, 16, v73
	ds_load_u8 v73, v200 offset:19520
	ds_load_u8 v74, v200 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v200 offset:19648
	ds_load_u8 v75, v200 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v74, 16, v73
	ds_load_u8 v73, v201 offset:7808
	ds_load_u8 v74, v201 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v201 offset:8064
	ds_load_u8 v75, v201 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v201 offset:7296
	ds_load_u8 v76, v201 offset:7168
	v_lshl_or_b32 v88, v74, 16, v73
	ds_load_u8 v73, v201 offset:6784
	ds_load_u8 v74, v201 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v201 offset:7552
	ds_load_u8 v77, v201 offset:7424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v76, 16, v75
	ds_load_u8 v74, v201 offset:7040
	ds_load_u8 v75, v201 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v86, v74, 16, v73
	ds_load_u8 v73, v201 offset:6272
	ds_load_u8 v74, v201 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v201 offset:6528
	ds_load_u8 v75, v201 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v74, 16, v73
	ds_load_u8 v73, v200 offset:19296
	ds_load_u8 v74, v200 offset:19232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v200 offset:19424
	ds_load_u8 v75, v200 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v200 offset:19040
	ds_load_u8 v76, v200 offset:18976
	v_lshl_or_b32 v124, v74, 16, v73
	ds_load_u8 v73, v200 offset:18784
	ds_load_u8 v74, v200 offset:18720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v200 offset:19168
	ds_load_u8 v77, v200 offset:19104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v123, v76, 16, v75
	ds_load_u8 v74, v200 offset:18912
	ds_load_u8 v75, v200 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v122, v74, 16, v73
	ds_load_u8 v73, v200 offset:18528
	ds_load_u8 v74, v200 offset:18464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v200 offset:18656
	ds_load_u8 v75, v200 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v74, 16, v73
	ds_load_u8 v73, v200 offset:20320
	ds_load_u8 v74, v200 offset:20256
	v_wmma_i32_16x16x16_iu8 v[89:96], v[81:84], v[121:124], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v200 offset:20448
	ds_load_u8 v75, v200 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v200 offset:20064
	ds_load_u8 v76, v200 offset:20000
	v_lshl_or_b32 v128, v74, 16, v73
	ds_load_u8 v73, v200 offset:19808
	ds_load_u8 v74, v200 offset:19744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v200 offset:20192
	ds_load_u8 v77, v200 offset:20128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v76, 16, v75
	ds_load_u8 v74, v200 offset:19936
	ds_load_u8 v75, v200 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_lshl_or_b32 v126, v74, 16, v73
	ds_load_u8 v73, v200 offset:19552
	ds_load_u8 v74, v200 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v200 offset:19680
	ds_load_u8 v75, v200 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v74, 16, v73
	v_wmma_i32_16x16x16_iu8 v[73:80], v[81:84], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v81, v201 offset:5824
	ds_load_u8 v82, v201 offset:5696
	v_wmma_i32_16x16x16_iu8 v[89:96], v[85:88], v[125:128], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[85:88], v[117:120], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v201 offset:6080
	ds_load_u8 v83, v201 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v201 offset:5312
	ds_load_u8 v84, v201 offset:5184
	v_lshl_or_b32 v108, v82, 16, v81
	ds_load_u8 v81, v201 offset:4800
	ds_load_u8 v82, v201 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v201 offset:5568
	ds_load_u8 v85, v201 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v107, v84, 16, v83
	ds_load_u8 v82, v201 offset:5056
	ds_load_u8 v83, v201 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_lshl_or_b32 v106, v82, 16, v81
	ds_load_u8 v81, v201 offset:4288
	ds_load_u8 v82, v201 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v201 offset:4544
	ds_load_u8 v83, v201 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v82, 16, v81
	ds_load_u8 v81, v201 offset:7872
	ds_load_u8 v82, v201 offset:7744
	v_wmma_i32_16x16x16_iu8 v[97:104], v[105:108], v[121:124], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v201 offset:8128
	ds_load_u8 v83, v201 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v201 offset:7360
	ds_load_u8 v84, v201 offset:7232
	v_lshl_or_b32 v112, v82, 16, v81
	ds_load_u8 v81, v201 offset:6848
	ds_load_u8 v82, v201 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v201 offset:7616
	ds_load_u8 v85, v201 offset:7488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v111, v84, 16, v83
	ds_load_u8 v82, v201 offset:7104
	ds_load_u8 v83, v201 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_lshl_or_b32 v110, v82, 16, v81
	ds_load_u8 v81, v201 offset:6336
	ds_load_u8 v82, v201 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v201 offset:6592
	ds_load_u8 v83, v201 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v82, 16, v81
	v_wmma_i32_16x16x16_iu8 v[81:88], v[105:108], v[113:116], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v105, v201 offset:13952
	ds_load_u8 v106, v201 offset:13824
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[97:104], v[109:112], v[125:128], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[109:112], v[117:120], v[81:88] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v201 offset:14208
	ds_load_u8 v107, v201 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v201 offset:13440
	ds_load_u8 v108, v201 offset:13312
	v_lshl_or_b32 v205, v106, 16, v105
	ds_load_u8 v105, v201 offset:12928
	ds_load_u8 v106, v201 offset:12800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v201 offset:13696
	ds_load_u8 v109, v201 offset:13568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v204, v108, 16, v107
	ds_load_u8 v106, v201 offset:13184
	ds_load_u8 v107, v201 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_lshl_or_b32 v203, v106, 16, v105
	ds_load_u8 v105, v201 offset:12416
	ds_load_u8 v106, v201 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v201 offset:12672
	ds_load_u8 v107, v201 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v202, v106, 16, v105
	ds_load_u8 v105, v201 offset:16000
	ds_load_u8 v106, v201 offset:15872
	v_wmma_i32_16x16x16_iu8 v[237:244], v[202:205], v[113:116], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[245:252], v[202:205], v[121:124], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v203, v66
	v_cvt_f32_i32_e32 v204, v65
	v_cvt_f32_i32_e32 v205, v68
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v68, v93
	v_cvt_f32_i32_e32 v93, v14
	v_cvt_f32_i32_e32 v66, v94
	v_cvt_f32_i32_e32 v94, v13
	v_cvt_f32_i32_e32 v65, v96
	v_cvt_f32_i32_e32 v96, v15
	v_cvt_f32_i32_e32 v202, v23
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v201 offset:16256
	ds_load_u8 v107, v201 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v201 offset:15488
	ds_load_u8 v108, v201 offset:15360
	v_lshl_or_b32 v209, v106, 16, v105
	ds_load_u8 v105, v201 offset:14976
	ds_load_u8 v106, v201 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v201 offset:15744
	ds_load_u8 v109, v201 offset:15616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v208, v108, 16, v107
	ds_load_u8 v106, v201 offset:15232
	ds_load_u8 v107, v201 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_lshl_or_b32 v207, v106, 16, v105
	ds_load_u8 v105, v201 offset:14464
	ds_load_u8 v106, v201 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v201 offset:14720
	ds_load_u8 v107, v201 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v106, 16, v105
	ds_load_u8 v105, v201 offset:14016
	ds_load_u8 v106, v201 offset:13888
	v_wmma_i32_16x16x16_iu8 v[237:244], v[206:209], v[117:120], v[237:244] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[245:252], v[206:209], v[125:128], v[245:252] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v209, v72
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v72, v89
	v_cvt_f32_i32_e32 v89, v10
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v10, v243
	v_cvt_f32_i32_e32 v243, v56
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v56, v97
	v_cvt_f32_i32_e32 v97, v26
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v207, v70
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v70, v91
	v_cvt_f32_i32_e32 v91, v12
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v208, v69
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v69, v92
	v_cvt_f32_i32_e32 v92, v11
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v206, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v201 offset:14272
	ds_load_u8 v107, v201 offset:14144
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v67, v95
	v_cvt_f32_i32_e32 v95, v16
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v16, v237
	v_cvt_f32_i32_e32 v237, v50
	v_cvt_f32_i32_e32 v15, v238
	v_cvt_f32_i32_e32 v238, v49
	v_cvt_f32_i32_e32 v12, v241
	v_cvt_f32_i32_e32 v241, v54
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v54, v99
	v_cvt_f32_i32_e32 v99, v28
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v11, v242
	v_cvt_f32_i32_e32 v242, v53
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v53, v100
	v_cvt_f32_i32_e32 v100, v27
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v14, v239
	v_cvt_f32_i32_e32 v239, v52
	v_cvt_f32_i32_e32 v13, v240
	v_cvt_f32_i32_e32 v240, v51
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v52, v101
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v201 offset:13504
	ds_load_u8 v108, v201 offset:13376
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v101, v30
	v_cvt_f32_i32_e32 v50, v102
	v_cvt_f32_i32_e32 v102, v29
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v213, v106, 16, v105
	ds_load_u8 v105, v201 offset:12992
	ds_load_u8 v106, v201 offset:12864
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v51, v103
	v_cvt_f32_i32_e32 v103, v32
	v_cvt_f32_i32_e32 v49, v104
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v23, v246
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v104, v31
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v201 offset:13760
	ds_load_u8 v109, v201 offset:13632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v212, v108, 16, v107
	ds_load_u8 v106, v201 offset:13248
	ds_load_u8 v107, v201 offset:13120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_lshl_or_b32 v211, v106, 16, v105
	ds_load_u8 v105, v201 offset:12480
	ds_load_u8 v106, v201 offset:12352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v201 offset:12736
	ds_load_u8 v107, v201 offset:12608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v210, v106, 16, v105
	ds_load_u8 v105, v201 offset:16064
	ds_load_u8 v106, v201 offset:15936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v201 offset:16320
	ds_load_u8 v107, v201 offset:16192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v201 offset:15552
	ds_load_u8 v108, v201 offset:15424
	v_lshl_or_b32 v217, v106, 16, v105
	ds_load_u8 v105, v201 offset:15040
	ds_load_u8 v106, v201 offset:14912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v201 offset:15808
	ds_load_u8 v109, v201 offset:15680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v216, v108, 16, v107
	ds_load_u8 v106, v201 offset:15296
	ds_load_u8 v107, v201 offset:15168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_lshl_or_b32 v215, v106, 16, v105
	ds_load_u8 v105, v201 offset:14528
	ds_load_u8 v106, v201 offset:14400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v201 offset:14784
	ds_load_u8 v107, v201 offset:14656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v214, v106, 16, v105
	v_wmma_i32_16x16x16_iu8 v[105:112], v[210:213], v[113:116], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[214:217], v[117:120], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[210:213], v[121:124], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v213, v59
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v59, v78
	v_cvt_f32_i32_e32 v78, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[113:120], v[214:217], v[125:128], v[113:120] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v211, v57
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v57, v80
	v_cvt_f32_i32_e32 v80, v39
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v210, v58
	v_cvt_f32_i32_e32 v37, v116
	v_cvt_f32_i32_e32 v116, v43
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v43, v86
	scratch_load_b32 v86, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v39, v114
	v_cvt_f32_i32_e32 v114, v41
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v41, v88
	scratch_load_b32 v88, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v212, v60
	v_cvt_f32_i32_e32 v216, v64
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v64, v73
	v_cvt_f32_i32_e32 v60, v77
	v_cvt_f32_i32_e32 v58, v79
	v_cvt_f32_i32_e32 v73, v34
	v_cvt_f32_i32_e32 v77, v38
	v_cvt_f32_i32_e32 v79, v40
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v40, v113
	v_cvt_f32_i32_e32 v38, v115
	v_cvt_f32_i32_e32 v34, v119
	v_cvt_f32_i32_e32 v113, v42
	v_cvt_f32_i32_e32 v115, v44
	v_cvt_f32_i32_e32 v119, v48
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v48, v81
	v_cvt_f32_i32_e32 v44, v85
	v_cvt_f32_i32_e32 v42, v87
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v87, off, off offset:24
	scratch_load_b32 v85, off, off offset:16
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v217, v63
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v63, v74
	v_cvt_f32_i32_e32 v74, v33
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v33, v120
	v_cvt_f32_i32_e32 v120, v47
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v47, v82
	v_cvt_f32_i32_e32 v122, v18
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v214, v62
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v62, v75
	v_cvt_f32_i32_e32 v75, v36
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v36, v117
	v_cvt_f32_i32_e32 v117, v46
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v46, v83
	v_cvt_f32_i32_e32 v121, v17
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v215, v61
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v61, v76
	v_cvt_f32_i32_e32 v76, v35
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v35, v118
	v_cvt_f32_i32_e32 v118, v45
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v45, v84
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v127, v71
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v71, v90
	v_cvt_f32_i32_e32 v90, v9
	v_cvt_f32_i32_e32 v124, v20
	v_cvt_f32_i32_e32 v123, v19
	v_cvt_f32_i32_e32 v126, v22
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v9, v244
	v_cvt_f32_i32_e32 v244, v55
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v125, v21
	v_cvt_f32_i32_e32 v128, v24
	v_cvt_f32_i32_e32 v55, v98
	v_cvt_f32_i32_e32 v98, v25
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v21, v248
	v_cvt_f32_i32_e32 v19, v250
	v_cvt_f32_i32_e32 v17, v252
	v_cvt_f32_i32_e32 v24, v245
	v_cvt_f32_i32_e32 v22, v247
	v_cvt_f32_i32_e32 v20, v249
	v_cvt_f32_i32_e32 v18, v251
	v_cvt_f32_i32_e32 v32, v105
	v_cvt_f32_i32_e32 v31, v106
	v_cvt_f32_i32_e32 v30, v107
	v_cvt_f32_i32_e32 v29, v108
	v_cvt_f32_i32_e32 v28, v109
	v_cvt_f32_i32_e32 v27, v110
	v_cvt_f32_i32_e32 v26, v111
	v_cvt_f32_i32_e32 v25, v112
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v81, v86, s7, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v82, v88, s6, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v81, 0x80000000, v81 :: v_dual_cndmask_b32 v82, 0x80000000, v82
	buffer_load_u16 v81, v81, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v81, 16, v81
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v83, v81, v122
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v159, v83, v82
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v83, v85, s7, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s7, s6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	buffer_load_u16 v83, v83, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v84, v83, v89
	scratch_load_b32 v89, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v192, v84, v82
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v82, v87, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v84, v81, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v158, v84, v82
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v84, v83, v90
	scratch_load_b32 v90, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v194, v84, v82
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v82, s7, v221, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v81, v203
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v73, v81, v73
	v_mul_f32_e32 v74, v81, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v161, v84, v82
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v83, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v195, v84, v82
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v82, s7, v220, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v81, v204
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v160, v84, v82
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v83, v211
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v193, v84, v82 :: v_dual_mul_f32 v84, v81, v124
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v82, v90, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v155, v84, v82 :: v_dual_mul_f32 v84, v83, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v188, v84, v82
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v82, v89, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v84, v81, v123
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v154, v84, v82
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v84, v83, v92
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v186, v84, v82
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v82, s7, v223, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v81, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v157, v84, v82 :: v_dual_mul_f32 v84, v83, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v191, v84, v82
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v82, s7, v222, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v81, v206
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v156, v84, v82
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v83, v213
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v190, v84, v82
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v82, v197, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v84, v81, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v150, v84, v82
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v84, v83, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v183, v84, v82 :: v_dual_mul_f32 v84, v81, v125
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v82, v129, s6, 1
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v151, v84, v82
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v84, v83, v94
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v182, v84, v82
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v82, s7, v225, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v81, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v152, v84, v82
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v83, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v185, v84, v82 :: v_dual_mul_f32 v84, v81, v208
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v82, s7, v224, 1
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v153, v84, v82 :: v_dual_mul_f32 v84, v83, v215
	v_fmac_f32_e32 v184, v84, v82
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v82, v198, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v84, v81, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v146, v84, v82
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v84, v83, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v179, v84, v82
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v82, v0, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v84, v81, v202
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v147, v84, v82 :: v_dual_mul_f32 v84, v83, v96
	v_fmac_f32_e32 v178, v84, v82
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v82, s7, v227, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v81, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v148, v84, v82
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v83, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v181, v84, v82 :: v_dual_mul_f32 v84, v81, v127
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v82, s7, v226, 1
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v149, v84, v82 :: v_dual_mul_f32 v84, v83, v217
	v_fmac_f32_e32 v180, v84, v82
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v82, v254, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v143, v73, v82
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v73, v83, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v175, v73, v82
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v73, v253, s6, 1
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v142, v74, v73
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v74, v83, v98
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v174, v74, v73
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v73, s7, v229, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v74, v81, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v145, v74, v73
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v74, v83, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v177, v74, v73
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v73, s7, v228, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v74, v81, v238 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v144, v74, v73
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v74, v83, v114
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v176, v74, v73
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v73, v196, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v74, v81, v75
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v75, s7, v234, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x1
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	buffer_load_u16 v75, v75, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v75, 16, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v139, v74, v73 :: v_dual_mul_f32 v74, v83, v99
	v_fmac_f32_e32 v171, v74, v73
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v73, v255, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v74, v81, v76 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v138, v74, v73
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v74, v83, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v170, v74, v73
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v73, s7, v231, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v74, v81, v239 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v140, v74, v73
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v74, v83, v115
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v173, v74, v73
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v73, s7, v230, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v74, v81, v240 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v141, v74, v73 :: v_dual_mul_f32 v74, v83, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v172, v74, v73
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v73, v187, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v74, v81, v77
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v134, v74, v73
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v74, v83, v101
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v167, v74, v73
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v73, v189, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v74, v81, v78 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v135, v74, v73 :: v_dual_mul_f32 v74, v83, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v166, v74, v73
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v73, s7, v233, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v74, v81, v241
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v136, v74, v73
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v74, v83, v117
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v169, v74, v73
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v73, s7, v232, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v74, v81, v242 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v137, v74, v73 :: v_dual_mul_f32 v74, v83, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v168, v74, v73
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v73, v219, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v74, v81, v79 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v130, v74, v73
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v74, v83, v103
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v162, v74, v73
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v73, v218, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v74, v81, v80
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s6, s5, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s6, s30
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s5, s6, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v131, v74, v73 :: v_dual_mul_f32 v74, v83, v104
	v_fmac_f32_e32 v163, v74, v73
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v73, s7, v235, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v74, v81, v243 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v132, v74, v73
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v74, v83, v119
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v164, v74, v73 :: v_dual_mul_f32 v73, v81, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v74, v83, v120 :: v_dual_fmac_f32 v133, v73, v75
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v73, v86, s6, 1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v165, v74, v75
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v74, v87, s5, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v74, v74, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v72, v73, v72
	v_mul_f32_e32 v71, v73, v71
	v_dual_mul_f32 v55, v73, v55 :: v_dual_fmac_f32 v158, v72, v74
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v72, v85, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	buffer_load_u16 v72, v72, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v72, 16, v72
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v72, v64
	v_mul_f32_e32 v63, v72, v63
	v_mul_f32_e32 v62, v72, v62
	v_mul_f32_e32 v61, v72, v61
	v_mul_f32_e32 v60, v72, v60
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v194, v64, v74
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v64, v88, s5, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v59, v72, v59
	v_mul_f32_e32 v58, v72, v58
	v_mul_f32_e32 v57, v72, v57
	v_mul_f32_e32 v48, v72, v48
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_mul_f32 v47, v72, v47
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v46, v72, v46
	v_mul_f32_e32 v45, v72, v45
	v_mul_f32_e32 v44, v72, v44
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v64, v64, s[12:15], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v43, v72, v43
	v_mul_f32_e32 v42, v72, v42
	v_mul_f32_e32 v41, v72, v41
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v16, v72, v16
	v_mul_f32_e32 v15, v72, v15
	v_mul_f32_e32 v14, v72, v14
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v13, v72, v13 :: v_dual_lshlrev_b32 v64, 16, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v192, v63, v64
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v63, v89, s5, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v159, v71, v64 :: v_dual_mul_f32 v64, v73, v70
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	buffer_load_u16 v63, v63, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v63, 16, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v186, v62, v63
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v62, v90, s5, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v154, v64, v63 :: v_dual_mul_f32 v63, v73, v69
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	buffer_load_u16 v62, v62, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v62, 16, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v188, v61, v62
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v61, v129, s5, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v155, v63, v62 :: v_dual_mul_f32 v62, v73, v68
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	buffer_load_u16 v61, v61, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v61, 16, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v182, v60, v61
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v60, v197, s5, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v151, v62, v61
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v61, v73, v66 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	buffer_load_u16 v60, v60, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v60, 16, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v183, v59, v60
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v59, v0, s5, 1
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	buffer_load_u16 v59, v59, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v178, v58, v59
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v58, v198, s5, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	buffer_load_u16 v58, v58, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v179, v57, v58
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v57, v253, s5, 1
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	buffer_load_u16 v57, v57, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v57, 16, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v174, v48, v57
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v48, v254, s5, 1
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	buffer_load_u16 v48, v48, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v48, 16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v175, v47, v48
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v47, v255, s5, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v143, v55, v48 :: v_dual_mul_f32 v48, v73, v54
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	buffer_load_u16 v47, v47, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v170, v46, v47
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v46, v196, s5, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v138, v48, v47 :: v_dual_mul_f32 v47, v73, v53
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	buffer_load_u16 v46, v46, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v171, v45, v46
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v45, v189, s5, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v139, v47, v46 :: v_dual_mul_f32 v46, v73, v52
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	buffer_load_u16 v45, v45, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v166, v44, v45
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v44, v187, s5, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v135, v46, v45
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v45, v73, v50 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	buffer_load_u16 v44, v44, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v167, v43, v44
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v43, v218, s5, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v134, v45, v44
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v44, v73, v51
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	buffer_load_u16 v43, v43, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v163, v42, v43
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v42, v219, s5, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s5, s5, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v131, v44, v43
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v43, v73, v49
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s4, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	buffer_load_u16 v42, v42, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v162, v41, v42
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v41, s5, v220, 1
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	buffer_load_u16 v41, v41, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v193, v16, v41 :: v_dual_mul_f32 v16, v73, v24
	v_fmac_f32_e32 v160, v16, v41
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v16, s5, v221, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v195, v15, v16
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v15, v73, v23 :: v_dual_fmac_f32 v130, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v161, v15, v16
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v15, s5, v222, 1
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v190, v14, v15
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v14, v73, v22
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v156, v14, v15
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v14, s5, v223, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v191, v13, v14
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v13, v73, v21
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v157, v13, v14
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v13, s5, v224, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v12, v72, v12
	v_mul_f32_e32 v11, v72, v11
	v_mul_f32_e32 v10, v72, v10
	v_mul_f32_e32 v9, v72, v9
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v184, v12, v13
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v12, v73, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v153, v12, v13
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v12, s5, v225, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v185, v11, v12
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v11, v73, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v152, v11, v12
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v11, s5, v226, 1
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v180, v10, v11
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v10, v73, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v149, v10, v11
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v10, s5, v227, 1
	v_add_lshl_u32 v11, s5, v235, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_clause 0x1
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v181, v9, v10
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v73, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v148, v9, v10
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v9, s5, v228, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v10, v72, v32 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v176, v10, v9
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v10, v73, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v144, v10, v9
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v9, s5, v229, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v10, v72, v31 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v177, v10, v9 :: v_dual_mul_f32 v10, v73, v39
	v_fmac_f32_e32 v145, v10, v9
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v9, s5, v230, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v150, v61, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v10, v72, v30 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v60, v73, v67 :: v_dual_lshlrev_b32 v9, 16, v9
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v147, v60, v59
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v59, v73, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v172, v10, v9
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v10, v73, v38
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v141, v10, v9
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v9, s5, v231, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v10, v72, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v173, v10, v9
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v10, v73, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v140, v10, v9
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v9, s5, v232, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v146, v59, v58
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v10, v72, v28 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v73, v56 :: v_dual_lshlrev_b32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v142, v56, v57
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v168, v10, v9
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v10, v73, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v137, v10, v9
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v9, s5, v233, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v10, v72, v27 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v169, v10, v9 :: v_dual_mul_f32 v10, v73, v35
	v_fmac_f32_e32 v136, v10, v9
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v9, s5, v234, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v10, v72, v26 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v165, v10, v9 :: v_dual_mul_f32 v10, v73, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v133, v10, v9
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v73, v33
	v_mul_f32_e32 v10, v72, v25
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v132, v9, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v164, v10, v11
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v50, off, off offset:40
	scratch_load_b32 v46, off, off offset:44
	scratch_load_b32 v47, off, off offset:48
	scratch_load_b32 v2, off, off offset:52
.LBB0_4:                                ; %._crit_edge
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v0, 0xbfb8aa3b, v195 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v193
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, 0xbfb8aa3b, v191 :: v_dual_and_b32 v4, 56, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v190 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v180
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_dual_mul_f32 v6, 0xbfb8aa3b, v185 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v176
	v_dual_mul_f32 v14, 0xbfb8aa3b, v181 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v172
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v0, 0xbfb8aa3b, v184
	v_cndmask_b32_e64 v8, 0, 0x42800000, s0
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v15, 0xbfb8aa3b, v144
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v195
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v193
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_exp_f32_e32 v5, v5
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v2, s19, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v8, v8
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0x42800000, s0
	v_mul_f32_e32 v18, 0xbfb8aa3b, v149
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v191
	v_dual_mul_f32 v30, 0xbfb8aa3b, v177 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v148
	v_ldexp_f32 v1, v5, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v5, v8, v7
	v_mul_f32_e32 v10, 0xbfb8aa3b, v136
	v_dual_mul_f32 v8, 0xbfb8aa3b, v132 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v133
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v38, v38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v190
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	s_mul_i32 s3, s28, s19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v195
	v_div_scale_f32 v35, null, v5, v5, v193
	v_div_scale_f32 v39, vcc_lo, v195, v33, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v34
	v_rcp_f32_e32 v37, v35
	v_div_scale_f32 v41, s1, v193, v5, v193
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v38, v3
	v_exp_f32_e32 v38, v43
	v_mul_f32_e32 v16, 0xbfb8aa3b, v145
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	s_add_i32 s3, s3, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v32, 0xbfb8aa3b, v173 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v140
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v1, -v34, v36, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v137
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v35, v37, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v20, 0xbfb8aa3b, v168 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v169
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v1, v36
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, s19, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v40, v37
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v23, 0xbfb8aa3b, v165 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v164
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v40, v39, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v26, 0xbfb8aa3b, v160 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v161
	v_dual_mul_f32 v24, 0xbfb8aa3b, v156 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v34, v40, v39
	v_mul_f32_e32 v45, v41, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v21, 0xbfb8aa3b, v153 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v152
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	s_and_b32 s17, s17, 0xffff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v44, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v44, -v35, v45, v41
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_fma_f32 v34, -v34, v40, v39
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v38, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v44, v37
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v33, v34, v33, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v3, -v35, v45, v41
	v_div_scale_f32 v35, null, v39, v39, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v34, null, v36, v36, v190
	v_div_fmas_f32 v37, v3, v37, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v34
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v3, s3, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v37, v5, v193
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v4, s3, v4, 64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v0, s1, v190, v36, v190
	v_fma_f32 v40, -v35, v38, 1.0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v194, v5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.h, 0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v34, v41, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v40, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v37.h
	v_mov_b16_e32 v42.h, v5.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v192, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, s0, v191, v39, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v41, v44, v41 :: v_dual_and_b32 v42, 1, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v40, v38
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v12, 0xbfb8aa3b, v141 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v184
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v49, v0, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v35, v46, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v185
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v45, v33, v45, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v34, v49, v0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v48, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v37, v42, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v33, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v35, v46, v40
	v_fma_f32 v0, -v34, v49, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v47, v44
	v_ldexp_f32 v43, v43, v6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v6.h, 0x7fff, v45.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v35, v35, v38, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v0, v0, v41, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v35, v35, v39, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v0, v36, v190
	v_div_scale_f32 v36, null, v34, v34, v184
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v6.l, 0x7fff, v42.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v186, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.h, v5.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v35, v188, v35 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v0.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v35.h
	v_cmp_o_f32_e64 s1, v35, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v11, -v36, v40, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v33, 1.0, v43 :: v_dual_and_b32 v14, 1, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v11, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v38, null, v33, v33, v185
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v0, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v37, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v37, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v185, v33, v185
	v_mul_f32_e32 v44, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v38, v44, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v41, 0xbfb8aa3b, v181 :: v_dual_fmac_f32 v44, v47, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v11, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, s0, v184, v34, v184
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v38, v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v41, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v35, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v38, v39, v44
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v11, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v36, v48, v41
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.h, 0x7fff, v43.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v38, v33, v185
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v35, 1.0, v35 :: v_dual_fmac_f32 v48, v37, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v46, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v35, v35, v181
	v_fma_f32 v36, -v36, v48, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.h, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v42
	v_div_fmas_f32 v36, v36, v40, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v36, v34, v184
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.l, 0x7fff, v14.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v42, v39, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v182, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v37, v37, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v34, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v14, s0, v181, v35, v181
	v_rcp_f32_e32 v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v177
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v0.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, s1, v180, v37, v180
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v34
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v38, v36, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v33, v183, v33 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v176
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v0, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v36, v40, v36 :: v_dual_mul_f32 v43, v14, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v33.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v34, v30
	v_exp_f32_e32 v34, v44
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v17, v36
	v_fma_f32 v45, -v42, v43, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v33, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v45, v39
	v_fma_f32 v45, -v38, v46, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v47, 1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v42, v43, v14
	v_fmac_f32_e32 v46, v45, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v33, v47, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v33, v14, v39, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v14, -v38, v46, v17
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v34, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v30, v30, v177
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v36, v14, v36, v46
	v_rcp_f32_e32 v38, v34
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v33, v35, v181
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v36, v37, v180
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v14.h, 0x7fff, v44.h, s2
	v_mov_b16_e32 v37.h, v5.h
	v_cndmask_b16 v14.l, 0x7fff, v41.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v34, v38, 1.0
	v_div_scale_f32 v32, s0, v177, v30, v177
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v35, v38
	v_div_scale_f32 v0, null, v39, v39, v176
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v43, v32, v38
	v_rcp_f32_e32 v36, v0
	v_div_scale_f32 v31, s1, v176, v39, v176
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v34, v43, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v173
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v172 :: v_dual_fmac_f32 v43, v45, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v0, v36, 1.0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v179, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v34, v43, v32
	v_fmac_f32_e32 v36, v41, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v17.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v178, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v46, v31, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v5
	v_mov_b16_e32 v37.l, v33.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v38, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v17, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v0, v46, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v17, v42, 0x7fff
	v_and_b32_e32 v37, 1, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v30, v32, v30, v177
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v40, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v33, v37, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v175, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v30.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v45, v36
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v0, v46, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v36, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.h, 0x7fff, v42.h, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v0, v39, v176
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.l, 0x7fff, v37.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v5.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v34, 1.0, v35 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v169
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v34, v34, v173
	v_div_scale_f32 v29, s0, v173, v34, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v31
	v_fma_f32 v33, -v31, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v33, v35
	v_div_scale_f32 v32, null, v36, v36, v172
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_exp_f32_e32 v20, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v29, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v168
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v31, v42, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v38, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v20, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v43, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, s1, v172, v36, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v174, v0 :: v_dual_mul_f32 v45, v40, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v0.h
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v41, v30, v41, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v32, v45, v40
	v_fmac_f32_e32 v42, v44, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v0, v37, 0x7fff
	v_cndmask_b16 v20.h, 0x7fff, v41.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v31, v42, v29
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v29, v35, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v42, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v29, v34, v173
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v171, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v30, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v29.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v32, v45, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v43, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v39, 1, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v38, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v29, v39, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v31, v36, v172
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.l, 0x7fff, v37.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v32, v32, v168
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.h, v5.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v30, v30, v169
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v31, v36, 1.0
	v_fmac_f32_e32 v36, v23, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v23, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, s0, v168, v32, v168
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v35, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, vcc_lo, v169, v30, v169
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v23, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v40, v38, v34
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v170, v0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.h, 0x7fff, v39.h, s1
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v33, v40, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v43, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v33, v40, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v29, v29, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v33, v33, v34, v40
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v30, v33, v30, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v167, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v30.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v44, v37, v36 :: v_dual_and_b32 v43, 1, v5
	v_fma_f32 v35, -v31, v44, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v35, v36
	v_fma_f32 v31, -v31, v44, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v5.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v36, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v31, v32, v168
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v28.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, s0, v164, v29, v164
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v165
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v35, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v35, v38
	v_div_scale_f32 v33, null, v34, v34, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v32, v33
	v_fma_f32 v31, -v38, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v35, v31, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, s1, v165, v34, v165
	v_fma_f32 v36, -v33, v32, 1.0
	v_mul_f32_e32 v39, v27, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v36, v32
	v_fma_f32 v41, -v38, v39, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v42, v26, v32 :: v_dual_fmac_f32 v39, v41, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v160
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v33, v42, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v27, -v38, v39, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v31, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v41, v32
	v_div_fmas_f32 v27, v27, v35, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v40
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v33, v42, v26
	v_div_fixup_f32 v27, v27, v29, v164
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v26, v32, v42
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v27, v162, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v32, v34, v165
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v27.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v163, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v35.l, v29.h
	v_add3_u32 v38, v27, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v40, v30, v43, 0x7fff
	v_cmp_o_f32_e64 s2, v30, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v31, v36
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v28, v28, v161
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v29, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v26.h, 0x7fff, v40.h, s2
	v_cmp_o_f32_e64 s2, v27, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v31, v33, 1.0
	v_dual_fmac_f32 v33, v32, v33 :: v_dual_mul_f32 v0, v166, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v0, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b16 v26.l, 0x7fff, v37.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, s0, v161, v28, v161
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v39, v25, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v157
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v31, v39, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v36, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v39, v41, v33 :: v_dual_fmac_f32 v40, 0xbfb8aa3b, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v31, v39, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v27, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v36, v32
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_add_f32 v31, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v0, null, v30, v30, v160
	v_div_scale_f32 v24, s1, v160, v30, v160
	v_div_scale_f32 v32, null, v31, v31, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v0
	v_fma_f32 v37, -v0, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v37, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v25, v25, v33, v39
	v_mul_f32_e32 v42, v24, v34
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v25, v25, v28, v161
	v_fma_f32 v41, -v0, v42, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v25, v159, v25 :: v_dual_fmac_f32 v42, v41, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v25.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v0, v42, v24
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v27, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v27, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v0, v0, v34, v42
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v24
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_cndmask_b16 v24.h, 0x7fff, v38.h, s2
	v_add3_u32 v37, v25, v37, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v0, v30, v160
	v_div_scale_f32 v28, null, v33, v33, v156
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v35.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v32, v27, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v28
	v_div_scale_f32 v22, s0, v157, v31, v157
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v29, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v35, 0xbfb8aa3b, v152 :: v_dual_mul_f32 v38, v22, v27
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v28, v30, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v21, v35
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v36, v30
	v_div_scale_f32 v36, s1, v156, v33, v156
	v_fma_f32 v40, -v32, v38, v22
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v36, v30
	v_fmac_f32_e32 v38, v40, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v21, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v37.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v28, v41, v36
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v32, v38, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v25, v30
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v158, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v22, v22, v27, v38
	v_fma_f32 v27, -v28, v41, v36
	v_div_scale_f32 v29, null, v25, v25, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v149
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v0.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v22, v31, v157
	v_div_fmas_f32 v27, v27, v30, v41
	v_rcp_f32_e32 v30, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v39, v35
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v22, v155, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v0, v34, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v27, v33, v156
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v22.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v29, v30, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v34.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v154, v0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.h, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v31, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, vcc_lo, v152, v25, v152
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.l, v0.h
	v_add3_u32 v38, v22, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v148
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v35, v34, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v22, v22
	v_and_b32_e32 v19, 1, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v37, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v29, v35, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v19, v0, v19, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v35, v39, v30
	v_div_scale_f32 v27, null, v28, v28, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v32, v27
	v_fma_f32 v18, -v27, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v18, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, s0, v153, v28, v153
	v_mul_f32_e32 v40, v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v18, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v27, v40, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v0, 1.0, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v31, v32
	v_fma_f32 v18, -v29, v35, v34
	v_div_scale_f32 v31, null, v22, v22, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v29, null, v0, v0, v148
	v_fma_f32 v27, -v27, v40, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v30, v35
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v30, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v32, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v32.l, 0x7fff, v19.h, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v18, v25, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v19, v27, v28, v153
	v_rcp_f32_e32 v28, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v29, v30, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v151, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v145 :: v_dual_fmac_f32 v30, v27, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, vcc_lo, v148, v0, v148
	v_fma_f32 v15, -v31, v28, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v144
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v32.h, 0x7fff, v38.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v33, v27, v30 :: v_dual_mul_f32 v16, v150, v16
	v_fmac_f32_e32 v28, v15, v28
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v15, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, s0, v149, v22, v149
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v29, v33, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v16.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v38, v25, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v18.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v37, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v15, v15, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v19, -v31, v38, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v5
	v_and_b32_e32 v36, 1, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v29, v33, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_fmac_f32 v38, v19, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v19, v35, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v30, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_scale_f32 v29, null, v15, v15, v145
	v_fma_f32 v25, -v31, v38, v25
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v30, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v16, v37, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v25, v28, v38
	v_div_scale_f32 v28, null, v19, v19, v144
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v25, v22, v149
	v_rcp_f32_e32 v25, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v16, v18, v36, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v29, v30, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v147, v22
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v13, s1, v145, v15, v145
	v_fmac_f32_e32 v30, v33, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v28, v25, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v16.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v34, v13, v30 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v140
	v_div_fixup_f32 v0, v27, v0, v148
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v22, v25
	v_div_scale_f32 v22, s0, v144, v19, v144
	v_fma_f32 v36, -v29, v34, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v146, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v37, v22, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v18.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v36, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v16, -v28, v37, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v29, v34, v13
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v33, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v16, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v141
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v28, v37, v22
	v_div_fmas_f32 v12, v12, v30, v34
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v22, v22, v25, v37
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v25, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v13, v13, v140
	v_div_fixup_f32 v12, v12, v15, v145
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v0, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v15, v27
	v_div_fixup_f32 v0, v22, v19, v144
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v143, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v19, v18, v35, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v16, v25, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.h, 0x7fff, v28.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v142, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v12.h
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v27, v15, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v0.h
	v_and_b32_e32 v29, 1, v5
	v_mov_b16_e32 v18.h, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v16, v16, v141
	v_fmac_f32_e32 v15, v25, v15
	v_div_scale_f32 v25, s0, v140, v13, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v12, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v12, v25, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v19.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	v_cndmask_b16 v10.h, 0x7fff, v29.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v19, -v27, v12, v25
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v9
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v0, v18, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v28, v30, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v12, v19, v15
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v136
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v29, v30
	v_div_scale_f32 v0, s2, v141, v16, v141
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.l, 0x7fff, v18.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v34
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v27, v12, v25
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v27, v0, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v137
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v12, v25, v15, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v28, v27, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v8, v19
	v_ldexp_f32 v18, v18, v33
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v15, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v12, v13, v140
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v132
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v28, v27, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v8, v8, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v9, null, v15, v15, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v7, v7
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v8, 1.0, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v28, v9
	s_mov_b32 vcc_lo, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v133
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v0, v0, v30, v27
	v_div_scale_f32 v27, null, v8, v8, v137
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v7, v19
	v_exp_f32_e32 v25, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, vcc_lo, v136, v15, v136
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v9, v28, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, s0, v137, v8, v137
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v139, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v28, v13, v28
	v_div_scale_f32 v13, null, v7, v7, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v25, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v33, v19, v28
	v_rcp_f32_e32 v29, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v5.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v40, 1, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v9, v33, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v30, null, v18, v18, v133
	v_fmac_f32_e32 v33, v37, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v13, v29, 1.0
	v_fma_f32 v9, -v9, v33, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v35, v29
	v_div_scale_f32 v35, s1, v132, v7, v132
	v_div_fmas_f32 v9, v9, v28, v33
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v41, v35, v29
	v_div_fixup_f32 v0, v0, v16, v141
	v_rcp_f32_e32 v16, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v12, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v9, v15, v136
	v_fma_f32 v19, -v13, v41, v35
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v138, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v9, v134, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v19, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v19, v12, v40, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v27, v16, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v0.h
	v_mov_b16_e32 v5.l, v9.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v13, v41, v35
	v_fmac_f32_e32 v16, v25, v16
	v_rcp_f32_e32 v25, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v38, v34, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v15, v0, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v27, v38, v34
	v_fma_f32 v39, -v30, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v38, v37, v16 :: v_dual_fmac_f32 v25, v39, v25
	v_div_scale_f32 v39, s2, v133, v18, v133
	v_fma_f32 v27, -v27, v38, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v37, v39, v25
	v_div_fmas_f32 v16, v27, v16, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v28, -v30, v37, v39
	v_div_fmas_f32 v12, v12, v29, v41
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v8, v16, v8, v137
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.h, 0x7fff, v19.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v28, v25
	v_div_fixup_f32 v7, v12, v7, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v135, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v30, v37, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v13, v13, v25, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v130, v7
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v13, v13, v18, v133
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v8.h
	v_mov_b16_e32 v18.h, v5.h
	v_cndmask_b16 v16.l, 0x7fff, v15.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v131, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, v5.h
	v_and_b32_e32 v7, 1, v18
	v_and_b32_e32 v18, 1, v5
	v_mov_b16_e32 v5.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v15, v9, v18, 0x7fff
	v_and_b32_e32 v5, 1, v5
	v_and_b32_e32 v9, 16, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v15.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v9
	v_mov_b32_e32 v15, 0x7632
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s1
	v_dual_cndmask_b32 v18, v31, v21 :: v_dual_cndmask_b32 v19, v21, v31
	v_cndmask_b32_e32 v21, v32, v22, vcc_lo
	v_mov_b16_e32 v13.l, v12.h
	v_add3_u32 v7, v8, v7, 0x7fff
	v_cmp_o_f32_e64 s0, v8, v8
	v_cmp_o_f32_e64 s2, v12, v12
	v_cndmask_b32_e32 v15, 0x3276, v15, vcc_lo
	v_and_b32_e32 v13, 1, v13
	v_cndmask_b32_e32 v9, v11, v17, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s0
	v_cndmask_b32_e32 v7, v14, v6, vcc_lo
	v_lshl_or_b32 v15, v15, 8, v15
	v_add3_u32 v8, v12, v13, 0x7fff
	v_cndmask_b32_e32 v12, v20, v26, vcc_lo
	v_cndmask_b32_e32 v13, v24, v23, vcc_lo
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v5.l, 0x7fff, v8.h, s2
	v_cndmask_b32_e32 v6, v6, v14, vcc_lo
	v_mov_b32_e32 v14, 0x5410
	v_dual_cndmask_b32 v8, v17, v11 :: v_dual_cndmask_b32 v11, v26, v20
	v_cndmask_b32_e32 v20, v22, v32, vcc_lo
	v_cndmask_b32_e32 v22, v0, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v14, 0x1054, v14, vcc_lo
	v_cndmask_b32_e32 v0, v10, v0, vcc_lo
	v_cndmask_b32_e32 v17, v23, v24, vcc_lo
	v_cndmask_b32_e32 v23, v5, v16, vcc_lo
	v_cndmask_b32_e32 v5, v16, v5, vcc_lo
	v_lshl_or_b32 v14, v14, 8, v14
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x540054, v14
	v_and_b32_e32 v14, 0x760076, v15
	v_permlanex16_b32 v15, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v14, v14, 4, v14
	v_permlanex16_b32 v21, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v19, 0x5040504, v10
	v_and_b32_e32 v24, 0x7060706, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v5, v6, v7, v19
	v_perm_b32 v6, v6, v7, v24
	v_perm_b32 v7, v9, v8, v19
	v_perm_b32 v8, v9, v8, v24
	v_perm_b32 v9, v12, v11, v19
	v_perm_b32 v10, v12, v11, v24
	v_perm_b32 v11, v15, v13, v19
	v_perm_b32 v12, v15, v13, v24
	v_perm_b32 v13, v16, v18, v19
	v_perm_b32 v14, v16, v18, v24
	v_perm_b32 v15, v17, v20, v19
	v_perm_b32 v16, v17, v20, v24
	v_perm_b32 v17, v0, v22, v19
	v_perm_b32 v18, v0, v22, v24
	v_add_lshl_u32 v0, v3, v2, 1
	v_add_lshl_u32 v2, v4, v2, 1
	v_add_lshl_u32 v3, v3, v1, 1
	v_perm_b32 v19, v21, v23, v19
	v_perm_b32 v20, v21, v23, v24
	v_add_lshl_u32 v1, v4, v1, 1
	s_clause 0x3
	buffer_store_b128 v[5:8], v0, s[16:19], 0 offen
	buffer_store_b128 v[9:12], v2, s[16:19], 0 offen
	buffer_store_b128 v[13:16], v3, s[16:19], 0 offen
	buffer_store_b128 v[17:20], v1, s[16:19], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 60
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 60
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20520
; TotalNumSgprs: 34
; NumVgprs: 256
; ScratchSize: 60
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 60
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 14
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
