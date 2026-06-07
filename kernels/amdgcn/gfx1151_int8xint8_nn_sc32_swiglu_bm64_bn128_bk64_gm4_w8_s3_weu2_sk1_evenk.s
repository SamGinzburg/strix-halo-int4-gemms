	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x20
	s_load_b32 s5, s[0:1], 0x38
	v_mov_b32_e32 v176, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 3, v0
	v_dual_mov_b32 v186, 0 :: v_dual_and_b32 v3, 16, v0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s18, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s4
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v157, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v165, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v173, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v175, 0
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s7, s6, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s6, s6, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s8, s9, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s6
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s8, s8, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s4
	s_abs_i32 s9, s8
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v183, 0
	s_cvt_f32_u32 s10, s9
	s_sub_i32 s11, 0, s9
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s10
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	v_readfirstlane_b32 s10, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v46, v2, 16, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v47, 32, v46
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s10, s11
	s_add_i32 s10, s10, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s6, s10
	s_xor_b32 s10, s4, s8
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
	s_sub_i32 s9, s2, s10
	v_cmp_eq_u32_e64 s2, 0, v3
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s6, s9, s8
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s18, s9, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s5, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s4, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s6, 64
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s7, s5, 31
.Ltmp15:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s6, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s20, s7, 31
.Ltmp17:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v15, 2, v0
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s1, s1, 26
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s20, s20, 27
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s6, s1
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s7, s7, s20
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s1, s6, 6
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s29, s7, 5
.Ltmp24:
	.loc	1 318 34 is_stmt 1              ; generate_amdgcn.py:318:34
	s_mul_i32 s6, s28, s5
	v_mul_lo_u32 v15, s5, v15
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 4, v3
	scratch_store_b32 off, v4, off offset:52 ; 4-byte Folded Spill
	v_dual_mov_b32 v185, 0 :: v_dual_and_b32 v4, 48, v4
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s0, s19, 1
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
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v5, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v3, v3, v4
	v_mul_lo_u32 v2, s0, v2
	v_mov_b32_e32 v186, 0
	v_mov_b32_e32 v184, 0
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v6, 24, v5
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v23, 2, v3
	v_mov_b32_e32 v183, 0
	v_or_b32_e32 v22, 4, v3
	v_or_b32_e32 v21, 6, v3
	v_add3_u32 v6, v15, v6, s6
	s_mov_b32 s6, s4
	v_lshlrev_b32_e32 v20, 4, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_or_b32_e32 v19, 8, v3
	v_or_b32_e32 v18, 10, v3
	v_or_b32_e32 v7, 0x4e, v3
	v_and_b32_e32 v24, 0x70, v20
	v_dual_mov_b32 v175, 0 :: v_dual_and_b32 v0, 0x210, v0
	v_or_b32_e32 v8, 0x4c, v3
	v_or_b32_e32 v9, 0x4a, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v2, v24, s18
	v_lshl_or_b32 v0, v1, 5, v0
	v_or_b32_e32 v1, v4, v1
	v_or_b32_e32 v4, s28, v46
	scratch_store_b32 off, v6, off          ; 4-byte Folded Spill
	v_or_b32_e32 v6, s28, v47
	v_or_b32_e32 v10, 0x48, v3
	v_add_nc_u32_e32 v189, 0, v1
	v_mul_lo_u32 v1, v4, s29
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[2:3], off offset:4
	scratch_store_b32 off, v46, off offset:44
	v_and_b32_e32 v2, 0x778, v5
	v_cndmask_b32_e64 v5, 0x90, 0, s2
	v_or_b32_e32 v11, 0x46, v3
	v_or_b32_e32 v12, 0x44, v3
	v_or_b32_e32 v13, 0x42, v3
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v6, s29
	scratch_store_b32 off, v47, off offset:48 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, v5, v2
	v_xor_b32_e32 v5, 16, v0
	v_or_b32_e32 v14, 64, v3
	v_or_b32_e32 v16, 14, v3
	v_or_b32_e32 v17, 12, v3
	v_or_b32_e32 v207, s18, v7
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v1, s18, v3
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v208, s19, v3
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v223, s19, v7
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v1, s18, v23
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v224, 0, v2
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v226, 0, v0
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v1, s18, v22
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v227, 0, v5
	v_or_b32_e32 v253, s18, v17
	v_or_b32_e32 v254, s18, v16
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v1, s18, v21
	v_or_b32_e32 v255, s18, v14
	v_or_b32_e32 v179, s18, v13
	v_or_b32_e32 v187, s18, v12
	v_or_b32_e32 v177, s18, v11
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v1, s18, v19
	v_or_b32_e32 v120, s18, v10
	v_or_b32_e32 v188, s18, v9
	v_or_b32_e32 v206, s18, v8
	v_add_nc_u32_e32 v209, s19, v23
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v1, s18, v18
	v_dual_mov_b32 v181, 0 :: v_dual_add_nc_u32 v210, s19, v22
	v_add_nc_u32_e32 v211, s19, v21
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v212, s19, v19
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, s4 :: v_dual_add_nc_u32 v213, s19, v18
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v214, s19, v17
	v_add_nc_u32_e32 v215, s19, v16
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v216, s19, v14
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v217, s19, v13
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v218, s19, v12
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v219, s19, v11
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v220, s19, v10
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v221, s19, v9
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v222, s19, v8
	v_dual_mov_b32 v1, s5 :: v_dual_mov_b32 v2, s6
	v_mov_b32_e32 v3, s7
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v225, 0, v20
	v_dual_mov_b32 v4, s8 :: v_dual_mov_b32 v5, s9
	v_dual_mov_b32 v6, s10 :: v_dual_mov_b32 v7, s11
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v122, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s30, s19, 6
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
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	scratch_load_b32 v20, off, off          ; 4-byte Folded Reload
	.loc	1 312 21 is_stmt 1              ; generate_amdgcn.py:312:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s5, 6
	s_or_b32 s5, s6, 32
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s7, s6, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s7, s29
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v8, s6, v20
	.loc	1 318 26 is_stmt 0              ; generate_amdgcn.py:318:26
	buffer_load_b64 v[16:17], v8, s[20:23], 0 offen
	.loc	1 322 34 is_stmt 1              ; generate_amdgcn.py:322:34
	scratch_load_b64 v[8:9], off, off offset:4 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[18:19], null, s6, s0, v[8:9]
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s6, s7, s0
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v8, s19, v18
	.loc	1 328 35 is_stmt 0              ; generate_amdgcn.py:328:35
	s_clause 0x1
	buffer_load_b128 v[8:11], v8, s[24:27], 0 offen
	buffer_load_b128 v[12:15], v18, s[24:27], 0 offen
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v225, v[12:15]
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v225, v[8:11] offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_store_b64 v224, v[16:17] offset:16384
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v8, s30, v18
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v9, s5, v20
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s5, s5, 5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v12, s19, v8
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[16:17], v9, s[20:23], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[8:11], v8, s[24:27], 0 offen
	buffer_load_b128 v[12:15], v12, s[24:27], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v225, v[8:11] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v225, v[12:15] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_store_b64 v224, v[16:17] offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v8, v189 offset:1664
	ds_load_u8 v9, v189 offset:1536
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[32:35], v226 offset:16384
	ds_load_b128 v[36:39], v227 offset:16384
	ds_load_b128 v[48:51], v226 offset:17408
	ds_load_b128 v[52:55], v227 offset:17408
	ds_load_b128 v[80:83], v226 offset:18432
	ds_load_b128 v[84:87], v227 offset:18432
	ds_load_b128 v[228:231], v226 offset:19456
	ds_load_b128 v[232:235], v227 offset:19456
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v189 offset:1920
	ds_load_u8 v10, v189 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v189 offset:1152
	ds_load_u8 v11, v189 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v189 offset:1408
	ds_load_u8 v12, v189 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v11, 0xc0c0004
	v_lshl_or_b32 v11, v9, 16, v8
	ds_load_u8 v8, v189 offset:640
	ds_load_u8 v9, v189 offset:512
	v_lshl_or_b32 v10, v12, 16, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v189 offset:896
	ds_load_u8 v12, v189 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v12, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v8
	ds_load_u8 v8, v189 offset:128
	ds_load_u8 v12, v189
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v12, v8, 0xc0c0004
	ds_load_u8 v12, v189 offset:384
	ds_load_u8 v13, v189 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v8, v12, 16, v8
	ds_load_u8 v12, v189 offset:3712
	ds_load_u8 v13, v189 offset:3584
	v_wmma_i32_16x16x16_iu8 v[40:47], v[8:11], v[32:35], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[8:11], v[48:51], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v8, v189 offset:1728
	ds_load_u8 v9, v189 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v189 offset:3968
	ds_load_u8 v14, v189 offset:3840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v189 offset:1984
	ds_load_u8 v10, v189 offset:1856
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v189 offset:3200
	ds_load_u8 v15, v189 offset:3072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v189 offset:1216
	ds_load_u8 v11, v189 offset:1088
	v_lshl_or_b32 v27, v9, 16, v8
	ds_load_u8 v8, v189 offset:704
	ds_load_u8 v9, v189 offset:576
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v189 offset:3456
	ds_load_u8 v16, v189 offset:3328
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v15, 0xc0c0004
	v_lshl_or_b32 v15, v13, 16, v12
	ds_load_u8 v12, v189 offset:2688
	ds_load_u8 v13, v189 offset:2560
	v_lshl_or_b32 v14, v16, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v189 offset:2944
	ds_load_u8 v16, v189 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v16, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	ds_load_u8 v12, v189 offset:2176
	ds_load_u8 v16, v189 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v16, v12, 0xc0c0004
	ds_load_u8 v16, v189 offset:2432
	ds_load_u8 v17, v189 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v16, 16, v12
	v_wmma_i32_16x16x16_iu8 v[40:47], v[12:15], v[36:39], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[12:15], v[52:55], v[64:71] neg_lo:[1,1,0]
	ds_load_u8 v11, v189 offset:1472
	ds_load_u8 v12, v189 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v11, 16, v10
	ds_load_u8 v9, v189 offset:960
	ds_load_u8 v10, v189 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v25, v9, 16, v8
	ds_load_u8 v8, v189 offset:192
	ds_load_u8 v9, v189 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v189 offset:448
	ds_load_u8 v10, v189 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v9, 16, v8
	ds_load_u8 v8, v189 offset:3776
	ds_load_u8 v9, v189 offset:3648
	v_wmma_i32_16x16x16_iu8 v[16:23], v[24:27], v[48:51], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v189 offset:4032
	ds_load_u8 v10, v189 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v189 offset:3264
	ds_load_u8 v11, v189 offset:3136
	v_lshl_or_b32 v31, v9, 16, v8
	ds_load_u8 v8, v189 offset:2752
	ds_load_u8 v9, v189 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v189 offset:3520
	ds_load_u8 v12, v189 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v11, 16, v10
	ds_load_u8 v9, v189 offset:3008
	ds_load_u8 v10, v189 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v29, v9, 16, v8
	ds_load_u8 v8, v189 offset:2240
	ds_load_u8 v9, v189 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v189 offset:2496
	ds_load_u8 v10, v189 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v9, 16, v8
	v_wmma_i32_16x16x16_iu8 v[8:15], v[24:27], v[32:35], v[0:7] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v24, v189 offset:9856
	ds_load_u8 v25, v189 offset:9728
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[16:23], v[28:31], v[52:55], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[28:31], v[36:39], v[8:15] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v189 offset:10112
	ds_load_u8 v26, v189 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v189 offset:9344
	ds_load_u8 v27, v189 offset:9216
	v_lshl_or_b32 v59, v25, 16, v24
	ds_load_u8 v24, v189 offset:8832
	ds_load_u8 v25, v189 offset:8704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v189 offset:9600
	ds_load_u8 v28, v189 offset:9472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v27, 16, v26
	ds_load_u8 v25, v189 offset:9088
	ds_load_u8 v26, v189 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_lshl_or_b32 v57, v25, 16, v24
	ds_load_u8 v24, v189 offset:8320
	ds_load_u8 v25, v189 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v189 offset:8576
	ds_load_u8 v26, v189 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v25, 16, v24
	ds_load_u8 v24, v189 offset:11904
	ds_load_u8 v25, v189 offset:11776
	v_wmma_i32_16x16x16_iu8 v[88:95], v[56:59], v[32:35], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[56:59], v[48:51], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v189 offset:12160
	ds_load_u8 v26, v189 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v189 offset:11392
	ds_load_u8 v27, v189 offset:11264
	v_lshl_or_b32 v63, v25, 16, v24
	ds_load_u8 v24, v189 offset:10880
	ds_load_u8 v25, v189 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v189 offset:11648
	ds_load_u8 v28, v189 offset:11520
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v27, 16, v26
	ds_load_u8 v25, v189 offset:11136
	ds_load_u8 v26, v189 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_lshl_or_b32 v61, v25, 16, v24
	ds_load_u8 v24, v189 offset:10368
	ds_load_u8 v25, v189 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v189 offset:10624
	ds_load_u8 v26, v189 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v25, 16, v24
	ds_load_u8 v24, v189 offset:9920
	ds_load_u8 v25, v189 offset:9792
	v_wmma_i32_16x16x16_iu8 v[88:95], v[60:63], v[36:39], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[60:63], v[52:55], v[104:111] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v244, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v189 offset:10176
	ds_load_u8 v26, v189 offset:10048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v189 offset:9408
	ds_load_u8 v27, v189 offset:9280
	v_lshl_or_b32 v75, v25, 16, v24
	ds_load_u8 v24, v189 offset:8896
	ds_load_u8 v25, v189 offset:8768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v189 offset:9664
	ds_load_u8 v28, v189 offset:9536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v27, 16, v26
	ds_load_u8 v25, v189 offset:9152
	ds_load_u8 v26, v189 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_lshl_or_b32 v73, v25, 16, v24
	ds_load_u8 v24, v189 offset:8384
	ds_load_u8 v25, v189 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v189 offset:8640
	ds_load_u8 v26, v189 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v25, 16, v24
	ds_load_u8 v24, v189 offset:11968
	ds_load_u8 v25, v189 offset:11840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v189 offset:12224
	ds_load_u8 v26, v189 offset:12096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v189 offset:11456
	ds_load_u8 v27, v189 offset:11328
	v_lshl_or_b32 v79, v25, 16, v24
	ds_load_u8 v24, v189 offset:10944
	ds_load_u8 v25, v189 offset:10816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v189 offset:11712
	ds_load_u8 v28, v189 offset:11584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v27, 16, v26
	ds_load_u8 v25, v189 offset:11200
	ds_load_u8 v26, v189 offset:11072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_lshl_or_b32 v77, v25, 16, v24
	ds_load_u8 v24, v189 offset:10432
	ds_load_u8 v25, v189 offset:10304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v189 offset:10688
	ds_load_u8 v26, v189 offset:10560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v25, 16, v24
	v_wmma_i32_16x16x16_iu8 v[24:31], v[72:75], v[32:35], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[24:31], v[76:79], v[36:39], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[32:39], v[72:75], v[48:51], v[0:7] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v48, v189 offset:5760
	ds_load_u8 v49, v189 offset:5632
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[32:39], v[76:79], v[52:55], v[32:39] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v189 offset:6016
	ds_load_u8 v50, v189 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v189 offset:5248
	ds_load_u8 v51, v189 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v189 offset:5504
	ds_load_u8 v52, v189 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v52, v51, 0xc0c0004
	v_lshl_or_b32 v51, v49, 16, v48
	ds_load_u8 v48, v189 offset:4736
	ds_load_u8 v49, v189 offset:4608
	v_lshl_or_b32 v50, v52, 16, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v189 offset:4992
	ds_load_u8 v52, v189 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v52, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v48, v189 offset:4224
	ds_load_u8 v52, v189 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v52, v48, 0xc0c0004
	ds_load_u8 v52, v189 offset:4480
	ds_load_u8 v53, v189 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v52, 16, v48
	ds_load_u8 v52, v189 offset:7808
	ds_load_u8 v53, v189 offset:7680
	v_wmma_i32_16x16x16_iu8 v[96:103], v[48:51], v[80:83], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[48:51], v[228:231], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v48, v189 offset:5824
	ds_load_u8 v49, v189 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v189 offset:8064
	ds_load_u8 v54, v189 offset:7936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v189 offset:6080
	ds_load_u8 v50, v189 offset:5952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v189 offset:7296
	ds_load_u8 v55, v189 offset:7168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v189 offset:5312
	ds_load_u8 v51, v189 offset:5184
	v_lshl_or_b32 v75, v49, 16, v48
	ds_load_u8 v48, v189 offset:4800
	ds_load_u8 v49, v189 offset:4672
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v189 offset:7552
	ds_load_u8 v56, v189 offset:7424
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v56, v55, 0xc0c0004
	v_lshl_or_b32 v55, v53, 16, v52
	ds_load_u8 v52, v189 offset:6784
	ds_load_u8 v53, v189 offset:6656
	v_lshl_or_b32 v54, v56, 16, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v189 offset:7040
	ds_load_u8 v56, v189 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v56, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v189 offset:6272
	ds_load_u8 v56, v189 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v56, v52, 0xc0c0004
	ds_load_u8 v56, v189 offset:6528
	ds_load_u8 v57, v189 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v56, 16, v52
	v_wmma_i32_16x16x16_iu8 v[96:103], v[52:55], v[84:87], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[52:55], v[232:235], v[112:119] neg_lo:[1,1,0]
	ds_load_u8 v51, v189 offset:5568
	ds_load_u8 v52, v189 offset:5440
	v_cvt_f32_i32_e32 v106, v116
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v116, v32
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v51, 16, v50
	ds_load_u8 v49, v189 offset:5056
	ds_load_u8 v50, v189 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_lshl_or_b32 v73, v49, 16, v48
	ds_load_u8 v48, v189 offset:4288
	ds_load_u8 v49, v189 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v189 offset:4544
	ds_load_u8 v50, v189 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v49, 16, v48
	ds_load_u8 v48, v189 offset:7872
	ds_load_u8 v49, v189 offset:7744
	v_wmma_i32_16x16x16_iu8 v[56:63], v[72:75], v[228:231], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v189 offset:8128
	ds_load_u8 v50, v189 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v189 offset:7360
	ds_load_u8 v51, v189 offset:7232
	v_lshl_or_b32 v79, v49, 16, v48
	ds_load_u8 v48, v189 offset:6848
	ds_load_u8 v49, v189 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v189 offset:7616
	ds_load_u8 v52, v189 offset:7488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v51, 16, v50
	ds_load_u8 v49, v189 offset:7104
	ds_load_u8 v50, v189 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_lshl_or_b32 v77, v49, 16, v48
	ds_load_u8 v48, v189 offset:6336
	ds_load_u8 v49, v189 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v189 offset:6592
	ds_load_u8 v50, v189 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v49, 16, v48
	v_wmma_i32_16x16x16_iu8 v[48:55], v[72:75], v[80:83], v[0:7] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v72, v189 offset:13952
	ds_load_u8 v73, v189 offset:13824
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[56:63], v[76:79], v[232:235], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[76:79], v[84:87], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v32, v61
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v61, v28
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v28, v51
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v189 offset:14208
	ds_load_u8 v74, v189 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v189 offset:13440
	ds_load_u8 v75, v189 offset:13312
	v_lshl_or_b32 v239, v73, 16, v72
	ds_load_u8 v72, v189 offset:12928
	ds_load_u8 v73, v189 offset:12800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v189 offset:13696
	ds_load_u8 v76, v189 offset:13568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v238, v75, 16, v74
	ds_load_u8 v73, v189 offset:13184
	ds_load_u8 v74, v189 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_lshl_or_b32 v237, v73, 16, v72
	ds_load_u8 v72, v189 offset:12416
	ds_load_u8 v73, v189 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v189 offset:12672
	ds_load_u8 v74, v189 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v236, v73, 16, v72
	ds_load_u8 v72, v189 offset:16000
	ds_load_u8 v73, v189 offset:15872
	v_wmma_i32_16x16x16_iu8 v[245:252], v[236:239], v[80:83], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[236:239], v[228:231], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v239, v109
	v_cvt_f32_i32_e32 v238, v108
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v108, v115
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v115, v35
	v_cvt_f32_i32_e32 v114, v34
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v34, v60
	v_cvt_f32_i32_e32 v35, v62
	v_cvt_f32_i32_e32 v62, v13
	v_cvt_f32_i32_e32 v60, v12
	v_cvt_f32_i32_e32 v237, v71
	v_cvt_f32_i32_e32 v236, v70
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v189 offset:16256
	ds_load_u8 v74, v189 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v189 offset:15488
	ds_load_u8 v75, v189 offset:15360
	v_lshl_or_b32 v243, v73, 16, v72
	ds_load_u8 v72, v189 offset:14976
	ds_load_u8 v73, v189 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v189 offset:15744
	ds_load_u8 v76, v189 offset:15616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v242, v75, 16, v74
	ds_load_u8 v73, v189 offset:15232
	ds_load_u8 v74, v189 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_lshl_or_b32 v241, v73, 16, v72
	ds_load_u8 v72, v189 offset:14464
	ds_load_u8 v73, v189 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v189 offset:14720
	ds_load_u8 v74, v189 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v240, v73, 16, v72
	ds_load_u8 v72, v189 offset:14016
	ds_load_u8 v73, v189 offset:13888
	v_wmma_i32_16x16x16_iu8 v[245:252], v[240:243], v[84:87], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[240:243], v[232:235], v[190:197] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v240, v95
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v95, v96
	v_cvt_f32_i32_e32 v96, v18
	v_cvt_f32_i32_e32 v243, v47
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v71, v190
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v190, v41
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v70, v191
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v191, v40
	v_cvt_f32_i32_e32 v241, v46
	v_cvt_f32_i32_e32 v242, v17
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v47, v245
	v_cvt_f32_i32_e32 v46, v246
	v_cvt_f32_i32_e32 v41, v251
	v_cvt_f32_i32_e32 v40, v252
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v189 offset:14272
	ds_load_u8 v74, v189 offset:14144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v189 offset:13504
	ds_load_u8 v75, v189 offset:13376
	v_lshl_or_b32 v201, v73, 16, v72
	ds_load_u8 v72, v189 offset:12992
	ds_load_u8 v73, v189 offset:12864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v189 offset:13760
	ds_load_u8 v76, v189 offset:13632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v200, v75, 16, v74
	ds_load_u8 v73, v189 offset:13248
	ds_load_u8 v74, v189 offset:13120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_lshl_or_b32 v199, v73, 16, v72
	ds_load_u8 v72, v189 offset:12480
	ds_load_u8 v73, v189 offset:12352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v189 offset:12736
	ds_load_u8 v74, v189 offset:12608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v198, v73, 16, v72
	ds_load_u8 v72, v189 offset:16064
	ds_load_u8 v73, v189 offset:15936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v189 offset:16320
	ds_load_u8 v74, v189 offset:16192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v189 offset:15552
	ds_load_u8 v75, v189 offset:15424
	v_lshl_or_b32 v205, v73, 16, v72
	ds_load_u8 v72, v189 offset:15040
	ds_load_u8 v73, v189 offset:14912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v189 offset:15808
	ds_load_u8 v76, v189 offset:15680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v204, v75, 16, v74
	ds_load_u8 v73, v189 offset:15296
	ds_load_u8 v74, v189 offset:15168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_lshl_or_b32 v203, v73, 16, v72
	ds_load_u8 v72, v189 offset:14528
	ds_load_u8 v73, v189 offset:14400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v189 offset:14784
	ds_load_u8 v74, v189 offset:14656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v202, v73, 16, v72
	v_wmma_i32_16x16x16_iu8 v[72:79], v[198:201], v[80:83], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[202:205], v[84:87], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[198:201], v[228:231], v[0:7] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v230, v65
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v65, v196
	v_cvt_f32_i32_e32 v196, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[202:205], v[232:235], v[80:87] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v89, v102
	v_cvt_f32_i32_e32 v102, v22
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v198, v105
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v105, v119
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v22, v81
	v_cvt_f32_i32_e32 v81, v26
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v26, v53
	scratch_load_b32 v53, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v119, v94
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v94, v97
	v_cvt_f32_i32_e32 v97, v19
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v19, v84
	v_cvt_f32_i32_e32 v84, v24
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v24, v55
	scratch_load_b32 v55, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v234, v111
	v_cvt_f32_i32_e32 v232, v110
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v111, v112
	v_cvt_f32_i32_e32 v110, v113
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v201, v91
	v_cvt_f32_i32_e32 v203, v93
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v93, v98
	v_cvt_f32_i32_e32 v91, v100
	v_cvt_f32_i32_e32 v98, v20
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v113, v37
	v_cvt_f32_i32_e32 v112, v36
	v_cvt_f32_i32_e32 v100, v38
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v38, v57
	v_cvt_f32_i32_e32 v37, v58
	v_cvt_f32_i32_e32 v36, v59
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v20, v83
	v_cvt_f32_i32_e32 v18, v85
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v59, v15
	v_cvt_f32_i32_e32 v58, v14
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v85, v25
	v_cvt_f32_i32_e32 v83, v27
	v_cvt_f32_i32_e32 v57, v31
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v31, v48
	v_cvt_f32_i32_e32 v27, v52
	v_cvt_f32_i32_e32 v25, v54
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v15, v72
	v_cvt_f32_i32_e32 v14, v73
	v_cvt_f32_i32_e32 v13, v74
	v_cvt_f32_i32_e32 v12, v75
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v73, off, off offset:32
	scratch_load_b32 v75, off, off offset:40
	scratch_load_b32 v74, off, off offset:36
	scratch_load_b32 v72, off, off offset:28
	scratch_load_b32 v54, off, off offset:20
	scratch_load_b32 v52, off, off offset:12
	v_cvt_f32_i32_e32 v202, v90
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v90, v101
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v101, v39
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v39, v56
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v56, v30
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v30, v49
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v199, v104
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v104, v117
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v117, v33
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v33, v63
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v63, v29
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v29, v50
	v_cvt_f32_i32_e32 v228, v64
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v64, v197
	v_cvt_f32_i32_e32 v197, v88
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v231, v67
	v_cvt_f32_i32_e32 v235, v69
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v69, v192
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v192, v43
	v_cvt_f32_i32_e32 v229, v66
	v_cvt_f32_i32_e32 v233, v68
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v68, v193
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v193, v42
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v200, v107
	v_cvt_f32_i32_e32 v66, v195
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v195, v44
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v204, v92
	v_cvt_f32_i32_e32 v67, v194
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v194, v45
	v_cvt_f32_i32_e32 v107, v118
	v_cvt_f32_i32_e32 v118, v16
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v16, v87
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v87, v8
	v_cvt_f32_i32_e32 v88, v103
	v_cvt_f32_i32_e32 v103, v23
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v23, v80
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v80, v10
	v_cvt_f32_i32_e32 v92, v99
	v_cvt_f32_i32_e32 v99, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v17, v86
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v86, v9
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v21, v82
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v82, v11
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v45, v247
	v_cvt_f32_i32_e32 v44, v248
	v_cvt_f32_i32_e32 v10, v77
	v_cvt_f32_i32_e32 v43, v249
	v_cvt_f32_i32_e32 v42, v250
	v_cvt_f32_i32_e32 v9, v78
	v_cvt_f32_i32_e32 v8, v79
	v_cvt_f32_i32_e32 v11, v76
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v48, v53, s7, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v49, v55, s6, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v49, v48, v230
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v150, v49, v50
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v49, v52, s7, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s7, s6, s18
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v49, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v184, v51, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v54, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v228 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v149, v51, v50
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v49, v191
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v183, v51, v50
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v209, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v48, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v152, v51, v50 :: v_dual_mul_f32 v51, v49, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v186, v51, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v208, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v51, v48, v199 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v151, v51, v50
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v49, v197
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v185, v51, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v73, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v231 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v146, v51, v50 :: v_dual_mul_f32 v51, v49, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v180, v51, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v72, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v229 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v145, v51, v50
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v49, v193
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v178, v51, v50
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v211, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v51, v48, v200 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v148, v51, v50 :: v_dual_mul_f32 v51, v49, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v182, v51, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v210, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v51, v48, v244 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v147, v51, v50
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v49, v202
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v181, v51, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v75, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v235 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v141, v51, v50
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v49, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v174, v51, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v74, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v233 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v142, v51, v50 :: v_dual_mul_f32 v51, v49, v195
	v_fmac_f32_e32 v173, v51, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v213, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v51, v48, v239 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v143, v51, v50
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v49, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v176, v51, v50
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v212, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v48, v238
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v144, v51, v50 :: v_dual_mul_f32 v51, v49, v204
	v_fmac_f32_e32 v175, v51, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v254, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v237 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v138, v51, v50 :: v_dual_mul_f32 v51, v49, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v170, v51, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v253, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v236 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v137, v51, v50
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v49, v241
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v169, v51, v50
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v215, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v48, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v140, v51, v50 :: v_dual_mul_f32 v51, v49, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v172, v51, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v214, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v51, v48, v232 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v139, v51, v50
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v49, v119
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v171, v51, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v179, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v48, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v133, v51, v50
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v49, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v166, v51, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v255, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v48, v118
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v134, v51, v50 :: v_dual_mul_f32 v51, v49, v87
	v_fmac_f32_e32 v165, v51, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v217, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v51, v48, v117 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v135, v51, v50
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v49, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v168, v51, v50
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v216, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v51, v48, v116 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v136, v51, v50 :: v_dual_mul_f32 v51, v49, v84
	v_fmac_f32_e32 v167, v51, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v177, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v97 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v129, v51, v50
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v49, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v162, v51, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v187, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v96 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v130, v51, v50 :: v_dual_mul_f32 v51, v49, v80
	v_fmac_f32_e32 v161, v51, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v219, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v51, v48, v115 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v132, v51, v50 :: v_dual_mul_f32 v51, v49, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v164, v51, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v218, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v48, v114
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v131, v51, v50
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v49, v81
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v163, v51, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v188, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v99 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v125, v51, v50
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v49, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v158, v51, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v120, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v48, v98
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v126, v51, v50 :: v_dual_mul_f32 v51, v49, v60
	v_fmac_f32_e32 v157, v51, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v221, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v51, v48, v113 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v128, v51, v50 :: v_dual_mul_f32 v51, v49, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v160, v51, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v220, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v51, v48, v112 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v127, v51, v50
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v49, v61
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v159, v51, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v207, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v103 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v121, v51, v50
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v49, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v154, v51, v50
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v50, v206, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v48, v102
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s6, s5, s0
	.loc	1 334 22 is_stmt 0              ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v122, v51, v50
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v49, v58
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v153, v51, v50
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v223, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v48, v101
	v_mul_f32_e32 v48, v48, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v123, v51, v50
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v49, v57
	v_mul_f32_e32 v49, v49, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v155, v51, v50
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v50, s7, v222, 1
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v124, v48, v50
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v48, v53, s5, 1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v156, v49, v50
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v49, v54, s6, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v50, v48, v111 :: v_dual_lshlrev_b32 v49, 16, v49
	v_mul_f32_e32 v39, v48, v39
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v149, v50, v49
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v50, v52, s5, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	buffer_load_u16 v50, v50, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v50, v95
	v_mul_f32_e32 v29, v50, v29
	v_mul_f32_e32 v24, v50, v24
	v_mul_f32_e32 v31, v50, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v30, v50, v30 :: v_dual_fmac_f32 v183, v51, v49
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v49, v55, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v48, v110 :: v_dual_mul_f32 v28, v50, v28
	v_mul_f32_e32 v27, v50, v27
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v150, v51, v49 :: v_dual_mul_f32 v51, v50, v94
	v_fmac_f32_e32 v184, v51, v49
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v49, v72, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v48, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v145, v51, v49
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v50, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v178, v51, v49
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v49, v73, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v48, v108
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v146, v51, v49 :: v_dual_mul_f32 v51, v50, v92
	v_fmac_f32_e32 v180, v51, v49
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v49, v74, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v48, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v142, v51, v49 :: v_dual_mul_f32 v51, v50, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v173, v51, v49
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v49, v75, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v48, v104
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v141, v51, v49
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v50, v90
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v174, v51, v49
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v49, v253, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v48, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v137, v51, v49
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v50, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v169, v51, v49
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v49, v254, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v51, v48, v105
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v138, v51, v49 :: v_dual_mul_f32 v51, v50, v88
	v_fmac_f32_e32 v170, v51, v49
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v49, v255, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v165, v31, v49
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v31, v179, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v134, v39, v49 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v166, v30, v31
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v30, v187, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v161, v29, v30
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v29, v177, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	buffer_load_u16 v29, v29, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v162, v28, v29
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v28, v120, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v157, v27, v28
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v27, v188, s6, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_mul_f32 v26, v50, v26
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v38, v48, v38 :: v_dual_mul_f32 v25, v50, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v12, v50, v12
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v27, v27, s[12:15], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v50, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v133, v38, v31
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v31, v48, v37
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v15, v50, v15
	v_mul_f32_e32 v13, v50, v13
	v_mul_f32_e32 v11, v50, v11
	v_mul_f32_e32 v14, v50, v14
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v130, v31, v30
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v30, v48, v36
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v10, v50, v10
	v_mul_f32_e32 v8, v50, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v129, v30, v29
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v29, v48, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v126, v29, v28
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v28, v48, v32 :: v_dual_lshlrev_b32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v158, v26, v27
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v26, v206, s6, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v125, v28, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v27, v48, v35 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v153, v25, v26
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v25, v207, s6, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s6, s6, s18
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v122, v27, v26
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v48, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s4, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v154, v24, v25
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v24, s6, v208, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v121, v26, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v25, v50, v47 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v185, v25, v24
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v48, v71
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v151, v25, v24
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v24, s6, v209, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v25, v50, v46 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v186, v25, v24 :: v_dual_mul_f32 v25, v48, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v152, v25, v24
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v24, s6, v210, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v25, v50, v45 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v181, v25, v24
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v48, v69
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v147, v25, v24
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v24, s6, v211, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v50, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v182, v25, v24
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v48, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v148, v25, v24
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v24, s6, v212, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v25, v50, v43 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v175, v25, v24
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v48, v67
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v144, v25, v24
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v24, s6, v213, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v25, v50, v42 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v176, v25, v24 :: v_dual_mul_f32 v25, v48, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v25, v24
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v24, s6, v214, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v25, v50, v41 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v171, v25, v24
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v48, v65
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v139, v25, v24
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v24, s6, v215, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v50, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v172, v25, v24
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v48, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v140, v25, v24
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v24, s6, v216, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v167, v15, v24
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v15, v48, v23
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v136, v15, v24
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v15, s6, v217, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v168, v14, v15
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v14, v48, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v135, v14, v15
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v14, s6, v218, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v163, v13, v14
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v13, v48, v21
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v131, v13, v14
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v13, s6, v219, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v164, v12, v13
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v12, v48, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v132, v12, v13
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v12, s6, v220, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v159, v11, v12
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v11, v48, v19
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v127, v11, v12
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v11, s6, v221, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v160, v10, v11
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v10, v48, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v128, v10, v11
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v10, s6, v222, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v156, v9, v10 :: v_dual_mul_f32 v9, v48, v17
	v_fmac_f32_e32 v124, v9, v10
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v10, s6, v223, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v9, v48, v16 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v155, v8, v10
	v_fmac_f32_e32 v123, v9, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v46, off, off offset:44
	scratch_load_b32 v47, off, off offset:48
	scratch_load_b32 v4, off, off offset:52
.LBB0_4:                                ; %._crit_edge
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, 0xbfb8aa3b, v186 :: v_dual_and_b32 v3, 56, v4
	v_dual_mul_f32 v1, 0xbfb8aa3b, v185 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v182
	v_dual_mul_f32 v2, 0xbfb8aa3b, v181 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_dual_mul_f32 v10, 0xbfb8aa3b, v176 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v171
	v_dual_mul_f32 v29, 0xbfb8aa3b, v167 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v168
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v7, 0, 0x42800000, s0
	v_mul_f32_e32 v16, 0xbfb8aa3b, v172
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v32, 0xbfb8aa3b, v164 :: v_dual_fmac_f32 v1, 0xbfb8aa3b, v186
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v185
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v7, v7
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s3, s28, s19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0x42800000, s0
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s3, s3, s18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v31, 0xbfb8aa3b, v163 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v160
	v_dual_mul_f32 v19, 0xbfb8aa3b, v159 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v156
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v0, v1, v0
	v_ldexp_f32 v1, v7, v6
	v_dual_mul_f32 v27, 0xbfb8aa3b, v155 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v152
	v_dual_mul_f32 v25, 0xbfb8aa3b, v151 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v33, 1.0, v0 :: v_dual_add_f32 v34, 1.0, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v23, 0xbfb8aa3b, v147 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v144
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v33, v33, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v36, null, v34, v34, v185
	v_div_scale_f32 v39, vcc_lo, v186, v33, v186
	v_rcp_f32_e32 v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v21, 0xbfb8aa3b, v143 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v140
	v_dual_mul_f32 v17, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v136
	v_dual_mul_f32 v15, 0xbfb8aa3b, v135 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v132
	v_dual_mul_f32 v11, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v124
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v35, v37, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v36, v38, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v7, 0xbfb8aa3b, v123
	v_dual_mul_f32 v8, 0xbfb8aa3b, v127 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v128
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v0, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v182
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, s1, v185, v34, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v2, v39, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v1
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, s19, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v40, v38
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v0, s19, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v35, v2, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v4, v41, v4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v2, v44, v37
	v_fma_f32 v44, -v36, v45, v40
	v_fma_f32 v35, -v35, v2, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v44, v38
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v4, v35, v37, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v2, -v36, v45, v40
	v_div_scale_f32 v35, null, v39, v39, v182
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v4, v33, v186
	v_div_fmas_f32 v37, v2, v38, v45
	v_rcp_f32_e32 v38, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v10, s0, v182, v39, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v33, v37, v34, v185
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v2, s3, v3
	v_add3_u32 v3, s3, v3, 64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v35, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v181 :: v_dual_fmac_f32 v38, v40, v38
	v_exp_f32_e32 v41, v43
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v184, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v10, v38
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v37.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v176
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v35, v46, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v41, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v43
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v48, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v37, v45, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v175
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v36, v36, v181
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v5, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.h, 0x7fff, v45.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v10, -v35, v46, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v34
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_exp_f32_e32 v47, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v10, v10, v38, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v183, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v10, v39, v182
	v_fma_f32 v44, -v34, v41, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v33.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v171
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v35, v35, v176
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v44, s1, v181, v36, v181
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v38
	v_mul_f32_e32 v49, v44, v41
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v180, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v33, v42, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v46
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v34, v49, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v10.h
	v_cmp_o_f32_e64 s1, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v37, v41
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v47, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v34, v49, v44
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v10, v43, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v41, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v10.h, 0x7fff, v43.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v34, v36, v181
	v_div_scale_f32 v34, null, v37, v37, v175
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.l, 0x7fff, v42.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v4.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v36, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v176, v35, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v172
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v34, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v44, v42, v39
	v_fmac_f32_e32 v40, v13, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v13, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, s0, v175, v37, v175
	v_fma_f32 v47, -v38, v44, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v48, v41, v40
	v_fmac_f32_e32 v44, v47, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v13, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v34, v48, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v43, 1.0, v13 :: v_dual_fmac_f32 v48, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v46, v45
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v178, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v38, v44, v42
	v_div_scale_f32 v38, null, v43, v43, v172
	v_fma_f32 v34, -v34, v48, v41
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v33.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v39, v44
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v39, v38
	v_div_fmas_f32 v34, v34, v40, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v16
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_mov_b16_e32 v41.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v16, v33, v16, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v34, v37, v175
	v_fma_f32 v34, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.l, 0x7fff, v16.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v16, v173, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v13, v13, v35, v176
	v_div_scale_f32 v35, null, v36, v36, v171
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v16.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v35
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v16, v41, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v35, v37, 1.0
	v_fmac_f32_e32 v37, v40, v37
	v_fmac_f32_e32 v39, v34, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, s1, v171, v36, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v168
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v29, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v34, v34
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v167
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, s0, v172, v43, v172
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v42, v30, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v34, v33
	v_exp_f32_e32 v34, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v38, v42, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v13, v174, v13 :: v_dual_fmac_f32 v42, v45, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v35, v46, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v13, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v46, v45, v37 :: v_dual_and_b32 v47, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v13, v47, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v38, v42, v30
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v33, v13, v39, v42
	v_fma_f32 v13, -v35, v46, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v34, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v30, v30, v168
	v_div_fixup_f32 v33, v33, v43, v172
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v170, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v33.h
	v_and_b32_e32 v42, 1, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v35, v13, v37, v46
	v_rcp_f32_e32 v37, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v29, v29, v167
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v35, v35, v36, v171
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.h, 0x7fff, v44.h, s3
	v_cndmask_b16 v13.l, 0x7fff, v41.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v16
	v_div_scale_f32 v32, s0, v168, v30, v168
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v34, v37, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v36, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v164
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v16, v38, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v40, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v31, s1, v167, v29, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v163 :: v_dual_mul_f32 v43, v32, v37
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v31, v38
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v33, v42, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v34, v43, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v40, v36
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v35, v169, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v44
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v45, v37
	v_fma_f32 v45, -v16, v46, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v34, v43, v32
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v35.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v45, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v33, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v37, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v16, -v16, v46, v31
	v_div_scale_f32 v31, null, v34, v34, v164
	v_div_fixup_f32 v30, v32, v30, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v35, v39, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v16, v38, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v166, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.h, 0x7fff, v42.h, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v36, v29, v167
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, v4.h
	v_cndmask_b16 v16.l, 0x7fff, v39.h, vcc_lo
	v_mov_b16_e32 v4.l, v30.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, s0, v164, v34, v164
	v_fma_f32 v35, -v31, v37, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v35, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v28, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v30, v41, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v31, v42, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v159 :: v_dual_fmac_f32 v42, v44, v37
	v_exp_f32_e32 v19, v39
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v43
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v31, v42, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v19, v35
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v165, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.h, 0x7fff, v41.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v29.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v33, v33, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v32
	v_fma_f32 v40, -v32, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v40, v36
	v_div_scale_f32 v40, s1, v163, v33, v163
	v_mul_f32_e32 v45, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v32, v45, v40
	v_dual_fmac_f32 v45, v30, v36 :: v_dual_add_f32 v30, 1.0, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v29, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v32, v45, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v43, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v30, v30, v160
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v37, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v36, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v28, v34, v164
	v_rcp_f32_e32 v34, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v29, v31, v33, v163
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.l, 0x7fff, v38.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v32, v32, v159
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v162, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.h, v4.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v35, v34, 1.0
	v_rcp_f32_e32 v36, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v28.h
	v_cmp_o_f32_e64 s1, v28, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v33, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, vcc_lo, v160, v30, v160
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v161, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v31, v36, 1.0
	v_dual_mul_f32 v40, v38, v34 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v29.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v156
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v22, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v35, v40, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v22, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, s0, v159, v32, v159
	v_dual_fmac_f32 v40, v43, v34 :: v_dual_and_b32 v27, 1, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v44, v37, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v29, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v35, v40, v38
	v_div_fmas_f32 v34, v35, v34, v40
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v30, v34, v30, v160
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v30, v158, v30 :: v_dual_and_b32 v39, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v28, v39, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v22, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v31, v44, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v30.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v22.h, 0x7fff, v39.h, s1
	v_cmp_o_f32_e64 s3, v30, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v33, v36
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v42, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v31, v44, v37
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v36, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v156
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v29, v31, v32, v159
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v27.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v34
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v27, v157, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v28, v28, v155
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, s0, v155, v28, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v35, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v27.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v34, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v32, v36, v32
	v_fma_f32 v31, -v38, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v31, v35
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, s1, v156, v33, v156
	v_mul_f32_e32 v39, v26, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v152
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v25, v32
	v_fma_f32 v41, -v38, v39, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v151
	v_exp_f32_e32 v31, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v39, v41, v35
	v_fma_f32 v41, -v34, v42, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v27, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v38, v39, v26
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v31, v29
	v_exp_f32_e32 v31, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v30, v43, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v41, v32
	v_div_fmas_f32 v26, v26, v35, v39
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v34, v42, v25
	v_div_fixup_f32 v26, v26, v28, v155
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v31, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v29, v29, v152
	v_div_fmas_f32 v32, v25, v32, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v34, v31
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v154, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v32, v33, v156
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v25.l, 0x7fff, v37.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v30, v30, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v26.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, s0, v152, v29, v152
	v_rcp_f32_e32 v33, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v31, v34, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v25.h, 0x7fff, v40.h, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v153, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v26, v26
	v_mov_b16_e32 v35.l, v28.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v27, v33, 1.0
	v_fmac_f32_e32 v34, v32, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, s1, v151, v30, v151
	v_dual_fmac_f32 v33, v37, v33 :: v_dual_and_b32 v38, 1, v4
	v_mul_f32_e32 v39, v24, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v35, 1, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v31, v39, v24
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v148
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v26, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v28, v35, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v41, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v36, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v31, v39, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v24, v24, v34, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v36, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v23, v33
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v24, v29, v152
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v27, v42, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v150, v24
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v24.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v41, v33
	v_fma_f32 v23, -v27, v42, v23
	v_div_scale_f32 v27, null, v31, v31, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v23, v33, v42
	v_rcp_f32_e32 v33, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cndmask_b16 v23.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v32, v30, v151
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v35.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, s0, v148, v31, v148
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v149, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v27, v33, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v147
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v29, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v143
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v38, v21, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v20, v35
	v_ldexp_f32 v26, v26, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v144
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v27, v38, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v24, v37, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v40, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v20, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v26, v26, v147
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.h, 0x7fff, v37.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v27, v38, v21
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v32, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v21, v21, v33, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v21, v31, v148
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v30, v32, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v21, v146, v21 :: v_dual_fmac_f32 v32, v36, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v36, s1, v147, v26, v147
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v21.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v36, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v28.h
	v_cmp_o_f32_e64 s1, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v30, v41, v36
	v_dual_fmac_f32 v41, v24, v32 :: v_dual_and_b32 v34, 1, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v28, v34, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v30, v41, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v30, null, v24, v24, v143
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v32, v41
	v_rcp_f32_e32 v31, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v27, v26, v147
	v_div_scale_f32 v27, null, v29, v29, v144
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.l, 0x7fff, v34.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v30, v31, 1.0
	v_rcp_f32_e32 v32, v27
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v28, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, vcc_lo, v143, v24, v143
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v26, v145, v26 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v140
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v17, -v27, v32, 1.0
	v_mul_f32_e32 v35, v34, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v26.h
	v_cmp_o_f32_e64 s3, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v30, v35, v34
	v_fmac_f32_e32 v32, v17, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, s0, v144, v29, v144
	v_dual_fmac_f32 v35, v39, v31 :: v_dual_and_b32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v40, v33, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v26, v18, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v27, v40, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v37, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_fmac_f32 v40, v28, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v21, v38, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v30, v35, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v17, v17, v140
	v_fma_f32 v27, -v27, v40, v33
	v_div_fmas_f32 v21, v21, v31, v35
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v30, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v18.h, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v32, v40
	v_div_fixup_f32 v21, v21, v24, v143
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v26, v26, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v18, v27, v29, v144
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v35, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v28, v30, 1.0
	v_rcp_f32_e32 v27, v32
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v15, v142, v18 :: v_dual_mul_f32 v18, v141, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v136
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v38.h, s1
	v_mov_b16_e32 v4.l, v18.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v24, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, vcc_lo, v140, v17, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v32, v27, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v33, v29, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v18, v18
	v_mov_b16_e32 v36.l, v15.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v14, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v15, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v28, v33, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v135 :: v_dual_fmac_f32 v33, v37, v30
	v_exp_f32_e32 v14, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, s0, v139, v26, v139
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v18, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v28, v33, v29
	v_mul_f32_e32 v38, v24, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v28, v28, v30, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v14, v14, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v32, v38, v24
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.h, 0x7fff, v37.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v28, v17, v140
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v21, v27
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v138, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v32, v38, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v15, v36, 0x7fff
	v_mov_b16_e32 v4.l, v17.h
	v_mov_b16_e32 v36.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v18, v27, v38
	v_div_scale_f32 v24, null, v21, v21, v136
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v18, v26, v139
	v_rcp_f32_e32 v27, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.l, 0x7fff, v32.h, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v8
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v137, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v18.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v24, v27, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_and_b32 v15, 1, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v29, null, v14, v14, v135
	v_div_scale_f32 v12, s0, v135, v14, v135
	v_div_scale_f32 v26, s1, v136, v21, v136
	v_rcp_f32_e32 v30, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v15, v18, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v38, v26, v27
	v_fma_f32 v36, -v24, v38, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v28, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v35, v12, v30
	v_fma_f32 v37, -v29, v35, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v132 :: v_dual_fmac_f32 v35, v37, v30
	v_exp_f32_e32 v34, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v17, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v29, v35, v12
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v11, v34, v28
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v12, v12, v30, v35
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v12, v12, v14, v135
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_mul_f32 v12, v133, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v12.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v36, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v12, v12
	v_mov_b16_e32 v36.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v24, v38, v26
	v_div_scale_f32 v26, null, v11, v11, v132
	v_div_fmas_f32 v24, v24, v27, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v27, v26
	v_div_fixup_f32 v14, v24, v21, v136
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v131
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_mov_b16_e32 v24.h, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v134, v14
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v29
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v26, v27, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v15.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v14.h
	v_and_b32_e32 v15, 1, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v18, v27
	v_div_scale_f32 v18, s0, v132, v11, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v24, 1, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v28
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v18, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v12, v15, 0x7fff
	v_add3_u32 v24, v14, v24, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_fmac_f32 v32, 0xbfb8aa3b, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v26, v29, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v17, v17, v131
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v14, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v30, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v24.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v8, -v28, v30, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v15, v32, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v8, v30
	v_fmac_f32_e32 v29, v12, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v8, s3, v131, v17, v131
	v_fma_f32 v18, -v26, v29, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v7, v18, v27, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v123
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v7, v11, v132
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v129, v7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v7.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v26, v18
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v127 :: v_dual_and_b32 v41, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v6, v14, v12
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v29, null, v12, v12, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v124
	v_exp_f32_e32 v11, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v11, v11, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v24, v8, v30
	v_div_scale_f32 v14, null, v18, v18, v123
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v28, v24, v8
	v_fmac_f32_e32 v24, v27, v30
	v_rcp_f32_e32 v27, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v28, v24, v8
	v_rcp_f32_e32 v28, v14
	v_div_fmas_f32 v8, v8, v30, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v29, v27, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v11, v11, v124
	v_div_fixup_f32 v8, v8, v17, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, v24, v27
	v_div_scale_f32 v15, null, v6, v6, v127
	v_div_scale_f32 v17, vcc_lo, v128, v12, v128
	v_div_scale_f32 v34, s0, v127, v6, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v26, v15
	v_mul_f32_e32 v32, v17, v27
	v_fma_f32 v35, -v14, v28, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v29, v32, v17
	v_fmac_f32_e32 v28, v35, v28
	v_div_scale_f32 v35, s1, v123, v18, v123
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v15, v26, 1.0
	v_fmac_f32_e32 v32, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v35, v28
	v_fmac_f32_e32 v26, v24, v26
	v_rcp_f32_e32 v24, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v29, v32, v17
	v_fma_f32 v29, -v14, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v34, v26
	v_div_fmas_f32 v17, v17, v27, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v29, v28
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v37, -v15, v38, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v30, v24, 1.0
	v_fma_f32 v14, -v14, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v37, v26
	v_fmac_f32_e32 v24, v39, v24
	v_div_scale_f32 v39, s3, v124, v11, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v15, -v15, v38, v34
	v_mul_f32_e32 v37, v39, v24
	v_div_fixup_f32 v12, v17, v12, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v15, v15, v26, v38
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v27, -v30, v37, v39
	v_div_fmas_f32 v14, v14, v28, v40
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v6, v15, v6, v127
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v125, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v27, v24
	v_div_fixup_f32 v14, v14, v18, v123
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v130, v8
	v_mul_f32_e32 v6, v126, v6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v12.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v30, v37, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v4.h
	v_cmp_o_f32_e64 s0, v12, v12
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v15, v15, v24, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v7, v41, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v121, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v8.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v15, v11, v124
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v6.h
	v_mov_b16_e32 v15.h, v4.h
	v_and_b32_e32 v14, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v11, v122, v11 :: v_dual_and_b32 v26, 1, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v7.h
	v_and_b32_e32 v15, 1, v15
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v17, v8, v26, 0x7fff
	v_mov_b16_e32 v18.l, v11.h
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_add3_u32 v8, v6, v15, 0x7fff
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v14, v12, v14, 0x7fff
	v_and_b32_e32 v15, 1, v18
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v4, v7, v4, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v14.h, s0
	v_add3_u32 v6, v11, v15, 0x7fff
	v_mov_b32_e32 v14, 0x5410
	v_mov_b32_e32 v15, 0x7632
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s1
	v_cndmask_b16 v24.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b32_e64 v11, v25, v19, s2
	v_cndmask_b32_e64 v14, 0x1054, v14, s2
	v_cndmask_b32_e64 v15, 0x3276, v15, s2
	v_cndmask_b32_e64 v12, v19, v25, s2
	v_cndmask_b32_e64 v17, v33, v20, s2
	v_cndmask_b32_e64 v18, v20, v33, s2
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v15, v15, 8, v15
	v_cndmask_b32_e64 v19, v21, v31, s2
	v_cndmask_b32_e64 v20, v31, v21, s2
	v_cndmask_b32_e64 v21, v7, v9, s2
	v_cndmask_b32_e64 v7, v9, v7, s2
	v_and_b32_e32 v9, 0x540054, v14
	v_and_b32_e32 v14, 0x760076, v15
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s3
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s4
	v_cndmask_b32_e64 v6, v13, v5, s2
	v_cndmask_b32_e64 v5, v5, v13, s2
	v_cndmask_b32_e64 v8, v16, v10, s2
	v_cndmask_b32_e64 v10, v10, v16, s2
	v_cndmask_b32_e64 v16, v22, v23, s2
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v14, v14, 4, v14
	v_cndmask_b32_e64 v13, v23, v22, s2
	v_cndmask_b32_e64 v22, v4, v24, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v4, v24, v4, s2
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v9
	v_and_b32_e32 v23, 0x7060706, v14
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v5, v6, v18
	v_perm_b32 v5, v5, v6, v23
	v_perm_b32 v6, v10, v8, v18
	v_perm_b32 v7, v10, v8, v23
	v_perm_b32 v8, v12, v11, v18
	v_perm_b32 v9, v12, v11, v23
	v_perm_b32 v10, v15, v13, v18
	v_perm_b32 v11, v15, v13, v23
	v_perm_b32 v14, v20, v19, v18
	v_perm_b32 v15, v20, v19, v23
	v_add_lshl_u32 v20, v2, v1, 1
	v_add_lshl_u32 v1, v3, v1, 1
	v_perm_b32 v12, v16, v17, v18
	v_perm_b32 v13, v16, v17, v23
	v_add_lshl_u32 v2, v2, v0, 1
	v_perm_b32 v16, v24, v21, v18
	v_perm_b32 v17, v24, v21, v23
	v_perm_b32 v18, v25, v22, v18
	v_perm_b32 v19, v25, v22, v23
	v_add_lshl_u32 v0, v3, v0, 1
	s_clause 0x3
	buffer_store_b128 v[4:7], v20, s[16:19], 0 offen
	buffer_store_b128 v[8:11], v1, s[16:19], 0 offen
	buffer_store_b128 v[12:15], v2, s[16:19], 0 offen
	buffer_store_b128 v[16:19], v0, s[16:19], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 60
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18296
; TotalNumSgprs: 33
; NumVgprs: 256
; ScratchSize: 60
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 60
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
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
