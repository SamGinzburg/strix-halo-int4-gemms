	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s27, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	v_and_b32_e32 v144, 4, v0
	v_and_b32_e32 v145, 8, v0
	v_lshlrev_b32_e32 v146, 4, v0
	v_and_b32_e32 v147, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s24, 63
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
	s_sub_i32 s4, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s4
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
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s16, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s17, s2, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s27, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s24, s17, s16
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s24, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	s_mov_b32 s5, 0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s4, s4, s6
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s2, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v1, 4, v0
	v_and_b32_e32 v2, 8, v0
	v_lshlrev_b32_e32 v4, 4, v0
.Ltmp15:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v3, 16, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 15 is_stmt 0                ; generate_amdgcn.py:0:15
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow307
	s_load_b128 s[12:15], s[0:1], 0x20
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v78, 15, v0
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v79, 0xf0, v0
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v143, 3, v0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_mov_b32_e32 v133, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s26, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	v_bfe_i32 v8, v0, 4, 1
	v_bfe_i32 v9, v0, 3, 1
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_lshlrev_b32_e32 v5, 3, v0
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp17:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s1, s2, 31
.Ltmp18:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s20, s27, 31
	v_and_b32_e32 v8, 0x90, v8
	v_and_b32_e32 v5, 0x778, v5
	v_and_b32_e32 v10, 0xf70, v146
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v9, 0x90, v9
	v_or_b32_e32 v13, s26, v78
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s1, 26
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s21, s20, 31
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s2, s1
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s1, s21, 27
	v_lshlrev_b32_e32 v6, 5, v0
	v_bfe_i32 v7, v0, 2, 1
	v_xor_b32_e32 v5, v8, v5
	v_xor_b32_e32 v8, v9, v10
	v_or_b32_e32 v10, 32, v13
	s_add_i32 s20, s20, s1
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s1, s2, 6
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s2, s20, 5
.Ltmp25:
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 1, v0
	v_and_b32_e32 v6, 0x160, v6
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v7, 0x90, v7
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v11, 0xe00, v146
	v_or_b32_e32 v9, 16, v13
	v_mul_lo_u32 v150, v10, s2
	v_lshrrev_b32_e32 v10, 6, v0
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_and_b32_e32 v1, 1, v0
	v_mul_lo_u32 v4, s27, v2
	v_or_b32_e32 v12, v7, v6
	v_or3_b32 v6, v6, v11, v7
	v_or_b32_e32 v11, 48, v13
	v_mul_lo_u32 v148, v13, s2
	v_mul_lo_u32 v149, v9, s2
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v9, 2, v0
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v10, 2, v10
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v13, 1, v79
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_or_b32 v2, s17, 8, v2
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s0, s24, 8
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v74, 4, v1
	.loc	1 376 34                        ; generate_amdgcn.py:376:34
	s_mul_i32 s22, s0, s27
	v_or_b32_e32 v152, s0, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_lshl_b32 s0, s16, 8
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v9, 0x1c0, v9
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v1, 5, v1
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v10, 0, v10
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v153, 0, v13
	v_subrev_nc_u32_e32 v2, s0, v2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 2, v0
	v_mul_lo_u32 v151, v11, s2
	v_dual_mov_b32 v80, 0 :: v_dual_lshlrev_b32 v11, 1, v0
	v_add3_u32 v9, v10, v9, v1
	v_add3_u32 v10, v153, v13, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_or_b32_e32 v1, 0x80, v2
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v73, 3, v143
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v2, s26, v3
	v_xor_b32_e32 v7, 16, v12
	v_xor_b32_e32 v14, 16, v6
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v11, 28, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_mad_u64_u32 v[75:76], null, s27, v1, v[74:75]
	v_mad_u64_u32 v[76:77], null, s27, v2, v[73:74]
	v_add3_u32 v154, v4, v74, s22
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v155, 0, v5
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v156, 0, v8
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v158, 0, v7
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v159, 0, v6
	v_mov_b32_e32 v1, s36
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v157, 0, v12
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v160, 0, v14
	v_dual_mov_b32 v2, s37 :: v_dual_mov_b32 v3, s38
	v_dual_mov_b32 v4, s39 :: v_dual_mov_b32 v5, s40
	v_dual_mov_b32 v6, s41 :: v_dual_mov_b32 v7, s42
	v_dual_mov_b32 v8, s43 :: v_dual_add_nc_u32 v161, v9, v11
	v_mov_b32_e32 v116, 0
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v162, v10, v11
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v85, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s3, s3, 6
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
	v_add_nc_u32_e32 v10, s3, v74
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_add_nc_u32_e32 v9, s3, v73
	.loc	1 376 34                        ; generate_amdgcn.py:376:34
	v_add_nc_u32_e32 v12, s3, v154
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v11, s3, v76
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_add_nc_u32_e32 v13, s3, v75
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s27, v10
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s27, v9
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
	v_cmp_gt_i32_e32 vcc_lo, s27, v10
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e64 s0, s27, v9
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	buffer_load_b128 v[9:12], v12, s[4:7], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[17:18], v16, s[16:19], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s28, s3, 5
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_cndmask_b32_e32 v23, 0x80000000, v15, vcc_lo
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v20, 0x80000000, v14, s0
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	buffer_load_b128 v[13:16], v13, s[4:7], 0 offen
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s29, s28, s25
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s0, s3, 32
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[21:22], v20, s[16:19], 0 offen
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s28, s2
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s2
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v156, v[9:12]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v155, v[17:18] offset:16384
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v23, s[4:7], 0 offen
	buffer_load_b128 v[17:20], v19, s[4:7], 0 offen
	s_waitcnt vmcnt(3)
	ds_store_b128 v156, v[13:16] offset:4096
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v155, v[21:22] offset:18432
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v156, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v156, v[17:20] offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[163:166], v159 offset:4096
	ds_load_b128 v[167:170], v160 offset:4096
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[17:20], v157 offset:16384
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[65:68], v159
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[21:24], v158 offset:16384
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[69:72], v160
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[33:36], v157 offset:17408
	ds_load_b128 v[37:40], v158 offset:17408
	ds_load_b128 v[171:174], v157 offset:17920
	ds_load_b128 v[175:178], v158 offset:17920
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[163:166], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[163:166], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[167:170], v[21:24], v[57:64] neg_lo:[1,1,0]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[17:20], v157 offset:16896
	ds_load_b128 v[21:24], v158 offset:16896
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[167:170], v[37:40], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v43, v43
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[163:166], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[21:24], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[167:170], v[21:24], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v54, v54
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[37:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[171:174], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[175:178], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[163:166], v[171:174], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v163, v152, s29, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v164, v149, s28, 1
	v_add_lshl_u32 v165, v150, s28, 1
	v_add_lshl_u32 v166, v151, s28, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[65:72], v[167:170], v[175:178], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v163, 0x80000000, v163 :: v_dual_cndmask_b32 v164, 0x80000000, v164
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v165, 0x80000000, v165 :: v_dual_cndmask_b32 v166, 0x80000000, v166
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v163, v163, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v34, v34
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
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v161, v163 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v163, v148, s28, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s28, s0, s25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v163, 0x80000000, v163, vcc_lo
	s_clause 0x3
	buffer_load_u16 v245, v163, s[20:23], 0 offen
	buffer_load_u16 v246, v164, s[20:23], 0 offen
	buffer_load_u16 v247, v165, s[20:23], 0 offen
	buffer_load_u16 v164, v166, s[20:23], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[229:232], v159 offset:12288
	ds_load_b128 v[233:236], v160 offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[181:184], v157 offset:18432
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[221:224], v159 offset:8192
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[185:188], v158 offset:18432
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[225:228], v160 offset:8192
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[197:200], v157 offset:18944
	ds_load_b128 v[201:204], v158 offset:18944
	ds_load_b128 v[213:216], v157 offset:19456
	ds_load_b128 v[217:220], v158 offset:19456
	ds_load_b128 v[237:240], v157 offset:19968
	ds_load_b128 v[241:244], v158 offset:19968
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v163, v70
	v_cvt_f32_i32_e32 v70, v72
	v_cvt_f32_i32_e32 v72, v62
	v_cvt_f32_i32_e32 v62, v64
	v_cvt_f32_i32_e32 v64, v9
	v_cvt_f32_i32_e32 v9, v12
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s1, -1
	s_add_i32 s3, s3, 64
	s_cmp_lg_u32 s1, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[165:172], v[221:224], v[181:184], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[173:180], v[229:232], v[181:184], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[189:196], v[229:232], v[197:200], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[165:172], v[225:228], v[185:188], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[173:180], v[233:236], v[185:188], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[181:188], v[221:224], v[197:200], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[189:196], v[233:236], v[201:204], v[189:196] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[205:212], v[229:232], v[213:216], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[181:188], v[225:228], v[201:204], v[181:188] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[221:224], v[213:216], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[205:212], v[233:236], v[217:220], v[205:212] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_wmma_i32_16x16x16_iu8 v[197:204], v[225:228], v[217:220], v[197:204] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[213:220], v[221:224], v[237:240], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v167, v167
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[213:220], v[225:228], v[241:244], v[213:220] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[221:228], v[229:232], v[237:240], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v232, v15
	v_cvt_f32_i32_e32 v15, v28
	v_cvt_f32_i32_e32 v28, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[221:228], v[233:236], v[241:244], v[221:228] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v229, v65
	v_cvt_f32_i32_e32 v65, v66
	v_cvt_f32_i32_e32 v66, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v29, v221
	v_cvt_f32_i32_e32 v221, v222
	v_cvt_f32_i32_e32 v222, v223
	v_cvt_f32_i32_e32 v223, v224
	v_cvt_f32_i32_e32 v224, v225
	v_cvt_f32_i32_e32 v58, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v41
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v10
	v_cvt_f32_i32_e32 v230, v11
	v_cvt_f32_i32_e32 v231, v16
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v27, v30
	v_cvt_f32_i32_e32 v30, v226
	v_cvt_f32_i32_e32 v234, v13
	v_cvt_f32_i32_e32 v13, v26
	v_cvt_f32_i32_e32 v26, v31
	v_cvt_f32_i32_e32 v31, v227
	v_mov_b16_e64 v227.l, 0
	v_cvt_f32_i32_e32 v233, v14
	v_cvt_f32_i32_e32 v14, v25
	v_cvt_f32_i32_e32 v25, v32
	v_cvt_f32_i32_e32 v32, v228
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v228.l, v227.l
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v197, v197
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v199, v199
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v213, v213
	v_cvt_f32_i32_e32 v214, v214
	v_cvt_f32_i32_e32 v215, v215
	v_cvt_f32_i32_e32 v216, v216
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v212, v212
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v195, v195
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v209, v209
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v217, v217
	v_cvt_f32_i32_e32 v218, v218
	v_cvt_f32_i32_e32 v219, v219
	v_cvt_f32_i32_e32 v220, v220
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v194, v194
	v_cvt_f32_i32_e32 v192, v192
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v207, v207
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v225, 16, v245
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v235, 16, v247
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v226, v9, v225
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[9:12], v153 offset:20480
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v228.h, v12.l
	v_and_b32_e32 v12, 0xffff0000, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v139, v226, v228 :: v_dual_lshlrev_b32 v226, 16, v246
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v15, v226
	v_mul_f32_e32 v13, v13, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v123, v15, v228
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v20, v235
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v20.l, v227.l
	v_mov_b16_e32 v20.h, v11.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v107, v15, v228
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v36, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v91, v15, v228
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v230, v225
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v140, v15, v20 :: v_dual_mul_f32 v15, v16, v226
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v16, 16, v10
	v_and_b32_e32 v10, 0xffff0000, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v124, v15, v20
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v19, v235
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v125, v13, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v13, v18, v235 :: v_dual_fmac_f32 v108, v15, v20
	v_mul_f32_e32 v15, v35, v164
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v109, v13, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v34, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v92, v15, v20 :: v_dual_mul_f32 v15, v42, v225
	v_fmac_f32_e32 v93, v13, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v64, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v141, v15, v16
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v15, 16, v9
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v16, v151, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v9, 0xffff0000, v9
	v_and_b32_e32 v11, 0xffff0000, v11
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v142, v13, v15 :: v_dual_mul_f32 v13, v14, v226
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v14, v149, s0, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v126, v13, v15
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v14, 0x80000000, v14 :: v_dual_mul_f32 v13, v17, v235
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v17, v152, s28, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v110, v13, v15
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v33, v164
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_fmac_f32 v94, v13, v15
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v13, v148, s0, 1
	v_add_lshl_u32 v15, v150, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x3
	buffer_load_u16 v18, v13, s[20:23], 0 offen
	buffer_load_u16 v33, v14, s[20:23], 0 offen
	buffer_load_u16 v34, v15, s[20:23], 0 offen
	buffer_load_u16 v35, v16, s[20:23], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[13:16], v153 offset:20496
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v227.h, v13.l
	v_and_b32_e32 v13, 0xffff0000, v13
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v36, 16, v18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v42, v165, v36 :: v_dual_lshlrev_b32 v17, 16, v17
	ds_store_b32 v162, v17 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v153 offset:20480
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_dual_fmac_f32 v142, v42, v17 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v42, v166, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v141, v42, v18 :: v_dual_mul_f32 v42, v167, v36
	v_fmac_f32_e32 v140, v42, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v42, v168, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v139, v42, v20 :: v_dual_mul_f32 v42, v181, v33
	v_fmac_f32_e32 v126, v42, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v42, v182, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v125, v42, v18 :: v_dual_mul_f32 v42, v183, v33
	v_fmac_f32_e32 v124, v42, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v42, v184, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v123, v42, v20 :: v_dual_mul_f32 v42, v197, v34
	v_fmac_f32_e32 v110, v42, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v42, v198, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v109, v42, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v42, v199, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v108, v42, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v42, v200, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v107, v42, v20 :: v_dual_mul_f32 v42, v213, v35
	v_fmac_f32_e32 v94, v42, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v214, v35
	v_mul_f32_e32 v31, v35, v31
	v_mul_f32_e32 v29, v35, v29
	v_mul_f32_e32 v32, v35, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v42, v35, v224 :: v_dual_fmac_f32 v93, v17, v18
	v_dual_mul_f32 v17, v215, v35 :: v_dual_lshlrev_b32 v18, 16, v16
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v16, 0xffff0000, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v30, v35, v30
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v92, v17, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v216, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v91, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v231, v225
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v135, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v25, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v119, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v24, v235
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v103, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v40, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v40, v34, v208 :: v_dual_fmac_f32 v85, v17, v18
	v_dual_mul_f32 v17, v232, v225 :: v_dual_lshlrev_b32 v18, 16, v15
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v136, v17, v18 :: v_dual_and_b32 v15, 0xffff0000, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v26, v226
	v_mul_f32_e32 v25, v33, v193
	v_mul_f32_e32 v24, v33, v196
	v_mul_f32_e32 v26, v33, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v120, v17, v18 :: v_dual_mul_f32 v17, v23, v235
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v23, v33, v195
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v104, v17, v18 :: v_dual_mul_f32 v17, v39, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v39, v34, v209 :: v_dual_fmac_f32 v88, v17, v18
	v_dual_mul_f32 v17, v233, v225 :: v_dual_lshlrev_b32 v18, 16, v14
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v14, 0xffff0000, v14
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v137, v17, v18
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v27, v226
	v_mul_f32_e32 v27, v33, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v121, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v22, v235 :: v_dual_mul_f32 v22, v33, v194
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v105, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v38, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v38, v34, v212 :: v_dual_fmac_f32 v89, v17, v18
	v_mul_f32_e32 v17, v234, v225
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v138, v17, v227 :: v_dual_mul_f32 v17, v28, v226
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v28, v33, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v122, v17, v227
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v21, v235
	v_mul_f32_e32 v21, v169, v36
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v106, v17, v227
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v37, v164
	v_mul_f32_e32 v37, v34, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v90, v17, v227
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[17:20], v153 offset:20496
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v138, v21, v17 :: v_dual_mul_f32 v21, v170, v36
	v_fmac_f32_e32 v137, v21, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v171, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v136, v21, v19 :: v_dual_mul_f32 v21, v172, v36
	v_fmac_f32_e32 v135, v21, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v185, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v122, v21, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v186, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v121, v21, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v187, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v120, v21, v19 :: v_dual_mul_f32 v21, v188, v33
	v_fmac_f32_e32 v119, v21, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v201, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v106, v21, v17 :: v_dual_mul_f32 v21, v202, v34
	v_fmac_f32_e32 v105, v21, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v203, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v104, v21, v19 :: v_dual_mul_f32 v21, v204, v34
	v_fmac_f32_e32 v103, v21, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v217, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v90, v21, v17 :: v_dual_mul_f32 v17, v218, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v33, v189
	v_mul_f32_e32 v33, v34, v205
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v89, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v219, v35
	v_mul_f32_e32 v18, v36, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v88, v17, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v220, v35
	v_mul_f32_e32 v19, v36, v180
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v85, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v225, v66 :: v_dual_mul_f32 v20, v36, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v133, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v226, v58
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v118, v17, v9 :: v_dual_mul_f32 v17, v235, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v164, v229
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v87, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v225, v72
	v_mul_f32_e32 v17, v36, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v129, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v226, v54
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v113, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v235, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v97, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v164, v163
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v81, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v225, v63 :: v_dual_mul_f32 v14, v36, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v128, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v226, v55
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v112, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v235, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v96, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v164, v71
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v80, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v225, v62
	v_mul_f32_e32 v15, v36, v175
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v127, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v226, v56
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v111, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v235, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v95, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v164, v70
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v77, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v225, v61 :: v_dual_mul_f32 v16, v36, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v130, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v226, v53
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v114, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v235, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v98, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v164, v69
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v82, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v225, v60
	v_mul_f32_e32 v13, v164, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v131, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v226, v52 :: v_dual_fmac_f32 v86, v13, v10
	v_dual_mul_f32 v13, v36, v173 :: v_dual_mul_f32 v36, v34, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v115, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v235, v44
	v_dual_mul_f32 v44, v35, v222 :: v_dual_fmac_f32 v99, v9, v12
	v_mul_f32_e32 v9, v164, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v83, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v225, v59 :: v_dual_mul_f32 v12, v235, v41
	v_mul_f32_e32 v41, v34, v207
	v_mul_f32_e32 v34, v34, v206
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v132, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v226, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v101, v12, v10 :: v_dual_fmac_f32 v116, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v235, v43
	v_mul_f32_e32 v43, v35, v223
	v_dual_mul_f32 v35, v35, v221 :: v_dual_fmac_f32 v100, v9, v11
	v_mul_f32_e32 v9, v164, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v84, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v225, v57
	v_dual_mul_f32 v11, v226, v49 :: v_dual_fmac_f32 v134, v9, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v117, v11, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v153 offset:20992
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v133, v13, v9 :: v_dual_fmac_f32 v134, v16, v10
	v_dual_fmac_f32 v132, v15, v11 :: v_dual_fmac_f32 v131, v14, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[13:16], v153 offset:21008
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v118, v21, v9 :: v_dual_fmac_f32 v117, v28, v10
	v_dual_fmac_f32 v116, v27, v11 :: v_dual_fmac_f32 v115, v26, v12
	v_dual_fmac_f32 v102, v33, v9 :: v_dual_fmac_f32 v101, v34, v10
	v_dual_fmac_f32 v100, v41, v11 :: v_dual_fmac_f32 v99, v40, v12
	v_dual_fmac_f32 v87, v29, v9 :: v_dual_fmac_f32 v86, v35, v10
	v_dual_fmac_f32 v84, v44, v11 :: v_dual_fmac_f32 v83, v43, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v130, v20, v13 :: v_dual_fmac_f32 v129, v17, v14
	v_dual_fmac_f32 v128, v18, v15 :: v_dual_fmac_f32 v127, v19, v16
	v_dual_fmac_f32 v114, v25, v13 :: v_dual_fmac_f32 v113, v22, v14
	v_dual_fmac_f32 v112, v23, v15 :: v_dual_fmac_f32 v111, v24, v16
	v_dual_fmac_f32 v98, v39, v13 :: v_dual_fmac_f32 v97, v36, v14
	v_dual_fmac_f32 v96, v37, v15 :: v_dual_fmac_f32 v95, v38, v16
	v_fmac_f32_e32 v82, v42, v13
	v_dual_fmac_f32 v81, v30, v14 :: v_dual_fmac_f32 v80, v31, v15
	v_fmac_f32_e32 v77, v32, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v144 :: v_dual_mov_b32 v2, v145
	v_dual_mov_b32 v4, v146 :: v_dual_mov_b32 v3, v147
.LBB0_7:                                ; %._crit_edge
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v5, |v141|, |v141|
	v_max_f32_e64 v6, |v142|, |v142|
	v_max3_f32 v7, |v139|, |v138|, |v137|
	v_max3_f32 v8, |v134|, |v132|, |v131|
	v_max3_f32 v9, |v130|, |v129|, |v128|
	v_max_f32_e64 v10, |v126|, |v126|
	v_max_f32_e32 v5, v6, v5
	v_max_f32_e64 v6, |v125|, |v125|
	v_max3_f32 v13, |v117|, |v116|, |v115|
	v_max3_f32 v8, v8, v9, |v127|
	v_max_f32_e64 v9, |v110|, |v110|
	v_max3_f32 v5, v5, |v140|, v7
	v_max_f32_e64 v7, |v109|, |v109|
	v_max_f32_e32 v6, v10, v6
	v_max3_f32 v10, |v123|, |v122|, |v121|
	v_max3_f32 v14, |v114|, |v113|, |v112|
	v_max3_f32 v15, |v101|, |v100|, |v99|
	v_max_f32_e32 v7, v9, v7
	v_max3_f32 v9, |v107|, |v106|, |v105|
	v_max3_f32 v16, |v98|, |v97|, |v96|
	v_max3_f32 v11, |v136|, |v135|, |v133|
	v_max3_f32 v12, |v120|, |v119|, |v118|
	v_max3_f32 v6, v6, |v124|, v10
	v_max3_f32 v10, v13, v14, |v111|
	v_max3_f32 v13, |v104|, |v103|, |v102|
	v_max3_f32 v7, v7, |v108|, v9
	v_max3_f32 v9, v15, v16, |v95|
	v_max_f32_e64 v14, |v93|, |v93|
	v_max_f32_e64 v15, |v94|, |v94|
	v_max3_f32 v5, v5, v11, v8
	v_max3_f32 v6, v6, v12, v10
	v_max3_f32 v7, v7, v13, v9
	s_mov_b32 s0, 0x76543210
	v_max_f32_e32 v8, v15, v14
	v_max3_f32 v9, |v91|, |v90|, |v89|
	v_max3_f32 v11, |v86|, |v84|, |v83|
	v_max3_f32 v12, |v82|, |v81|, |v80|
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v13, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v7, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v10, |v88|, |v85|, |v87|
	v_max3_f32 v8, v8, |v92|, v9
	v_max3_f32 v9, v11, v12, |v77|
	v_dual_max_f32 v11, v13, v13 :: v_dual_max_f32 v12, v14, v14
	v_max_f32_e32 v13, v15, v15
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v17, v1, 6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v14, v8, v10, v9
	v_dual_max_f32 v9, v5, v11 :: v_dual_and_b32 v8, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v10, v6, v12 :: v_dual_max_f32 v11, v7, v13
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v6, 5, v143
	v_lshl_add_u32 v5, v143, 9, 0
	v_permlanex16_b32 v7, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 0x80, v0
.Ltmp32:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s4, s25, 31
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_or_b32 v4, 0x680, v4, v6
	v_lshl_add_u32 v5, v1, 2, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v12, v7, v7 :: v_dual_lshlrev_b32 v7, 1, v13
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v15, v6, v8
	v_lshrrev_b32_e32 v16, 3, v13
	v_lshl_add_u32 v5, v2, 4, v5
	v_xor_b32_e32 v4, v4, v8
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v12, v14, v12 :: v_dual_lshlrev_b32 v1, 5, v1
.Ltmp37:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v5, v5, v7, v15
	v_add3_u32 v4, v17, v16, v4
.Ltmp39:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s4, s25, s4
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v13, 0, v13
	ds_store_b128 v5, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v4, v9 :: v_dual_mov_b32 v5, v10
	v_dual_mov_b32 v14, v11 :: v_dual_max_f32 v9, v9, v9
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v15, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v4, v9, v4 :: v_dual_max_f32 v5, v10, v5
	v_dual_max_f32 v9, v11, v11 :: v_dual_max_f32 v10, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v11, v12, v12
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v12, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v14, v5
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v9, v9, v10 :: v_dual_max_f32 v10, v15, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v11, v9
	v_dual_mov_b32 v15, v10 :: v_dual_max_f32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v4, v4, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v5, v5, v14 :: v_dual_max_f32 v12, v15, v15
	v_dual_max_f32 v11, v9, v11 :: v_dual_mov_b32 v14, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v15, v5
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v14, v14
	v_max_f32_e32 v12, v10, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v10, v15, v15
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v14, 1, v8
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v9, v4, v9 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v17, v12 :: v_dual_max_f32 v10, v5, v10
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v4, v16, v16 :: v_dual_max_f32 v5, v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v11, v11, v4 :: v_dual_lshlrev_b32 v2, 3, v2
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v4, v143, 4, 0
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v12, v12, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v5, v13, v14, v2
	v_add3_u32 v1, v4, v1, v2
	ds_store_b128 v5, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v1
.Ltmp59:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v1, v9, v9 :: v_dual_max_f32 v4, v11, v11
	v_dual_max_f32 v2, v10, v10 :: v_dual_max_f32 v5, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, 0x2b8cbccc, v1 :: v_dual_max_f32 v4, 0x2b8cbccc, v4
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v11, null, 0x40e00000, 0x40e00000, v2
	v_rcp_f32_e32 v12, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v14, v10
	v_div_scale_f32 v17, vcc_lo, v1, 0x40e00000, v1
	v_rcp_f32_e32 v15, v11
	v_div_scale_f32 v21, s0, v4, 0x40e00000, v4
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v18, -v9, v12, 1.0
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	v_fma_f32 v19, -v10, v14, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v20, -v11, v15, 1.0
	v_fmac_f32_e32 v12, v18, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v5
	v_dual_fmac_f32 v14, v19, v14 :: v_dual_fmac_f32 v15, v20, v15
	v_div_scale_f32 v18, s1, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v16, v13
	v_mul_f32_e32 v20, v17, v12
	v_div_scale_f32 v19, s2, v5, 0x40e00000, v5
	v_mul_f32_e32 v23, v18, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v9, v20, v17
	v_fma_f32 v27, -v11, v23, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v13, v16, 1.0
	v_fmac_f32_e32 v20, v25, v12
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v25.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v23, v27, v15 :: v_dual_fmac_f32 v16, v22, v16
	v_mul_f32_e32 v22, v21, v14
	v_fma_f32 v9, -v9, v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v11, v23, v18
	v_mul_f32_e32 v24, v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v10, v22, v21
	v_div_fmas_f32 v9, v9, v12, v20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v13, v24, v19
	v_fmac_f32_e32 v22, v26, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v1, v9, 0x40e00000, v1
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v9.h, v25.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v24, v28, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v10, -v10, v22, v21
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v9.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v13, -v13, v24, v19
	v_div_fmas_f32 v10, v10, v14, v22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v11, v11, v15, v23
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v10, 0x40e00000, v4
	v_div_fmas_f32 v4, v13, v16, v24
	v_div_fixup_f32 v2, v11, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v25.l, v10.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v11, v4, 0x40e00000, v5
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v4, 1, v9
	v_mov_b16_e32 v5.h, v25.h
	v_mov_b16_e32 v5.l, v2.h
	v_and_b32_e32 v12, 1, v25
	v_mov_b16_e32 v25.l, v11.h
	v_add3_u32 v4, v1, v4, 0x7fff
.Ltmp60:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v9, 4, v79
.Ltmp61:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v1, v10, v12, 0x7fff
	v_and_b32_e32 v13, 1, v25
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v27, 0xffff0000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, v2, v5, 0x7fff
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v23, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v11, v13, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v11, null, v27, v27, v142
	v_div_scale_f32 v12, null, v27, v27, v141
	v_div_scale_f32 v13, null, v27, v27, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v14, v11
	v_rcp_f32_e32 v15, v12
	v_div_scale_f32 v17, vcc_lo, v142, v27, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v16, v13
	v_div_scale_f32 v21, null, v27, v27, v139
	v_div_scale_f32 v18, s0, v141, v27, v141
	v_div_scale_f32 v26, null, v27, v27, v138
	v_fma_f32 v10, -v11, v14, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v20, -v12, v15, 1.0
	v_rcp_f32_e32 v24, v21
	v_fma_f32 v22, -v13, v16, 1.0
	v_div_scale_f32 v33, null, v27, v27, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v14, v10, v14 :: v_dual_fmac_f32 v15, v20, v15
	v_fmac_f32_e32 v16, v22, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v20, s2, v139, v27, v139
	v_dual_mul_f32 v22, v17, v14 :: v_dual_mul_f32 v25, v18, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v21, v24, 1.0
	v_div_scale_f32 v19, s1, v140, v27, v140
	v_fma_f32 v29, -v11, v22, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v12, v25, v18
	v_fmac_f32_e32 v24, v31, v24
	v_div_scale_f32 v31, null, v27, v27, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v29, v14
	v_rcp_f32_e32 v29, v26
	v_fmac_f32_e32 v25, v30, v15
	v_div_scale_f32 v30, null, v27, v27, v136
	v_fma_f32 v11, -v11, v22, v17
	v_div_scale_f32 v17, null, v27, v27, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v12, -v12, v25, v18
	v_mul_f32_e32 v18, v20, v24
	v_div_fmas_f32 v11, v11, v14, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v14, -v26, v29, 1.0
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v22, v17
	v_div_fmas_f32 v12, v12, v15, v25
	v_fma_f32 v15, -v21, v18, v20
	v_fmac_f32_e32 v29, v14, v29
	v_div_scale_f32 v25, s0, v138, v27, v138
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v18, v15, v24
	v_div_scale_f32 v38, null, v27, v27, v127
	v_dual_mul_f32 v15, v25, v29 :: v_dual_mul_f32 v28, v19, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v17, v22, 1.0
	v_rcp_f32_e32 v39, v38
	v_div_scale_f32 v37, null, v27, v27, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v13, v28, v19
	v_fmac_f32_e32 v22, v14, v22
	v_fma_f32 v14, -v21, v18, v20
	v_rcp_f32_e32 v20, v30
	v_div_fixup_f32 v11, v11, v27, v142
	v_fmac_f32_e32 v28, v32, v16
	v_rcp_f32_e32 v32, v31
	v_div_fixup_f32 v12, v12, v27, v141
	v_div_scale_f32 v56, null, v23, v23, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v13, v28, v19
	v_div_scale_f32 v19, s3, v137, v27, v137
	v_div_scale_f32 v57, null, v23, v23, v108
	v_div_fmas_f32 v13, v13, v16, v28
	v_fma_f32 v16, -v26, v15, v25
	v_div_scale_f32 v28, null, v27, v27, v135
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v21, v19, v22
	v_div_fmas_f32 v14, v14, v24, v18
	v_fmac_f32_e32 v15, v16, v29
	v_rcp_f32_e32 v18, v28
	v_fma_f32 v24, -v30, v20, 1.0
	v_fma_f32 v16, -v17, v21, v19
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v25, -v26, v15, v25
	v_div_scale_f32 v26, null, v27, v27, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v21, v16, v22 :: v_dual_and_b32 v40, 0xffff0000, v5
	v_fmac_f32_e32 v20, v24, v20
	v_div_scale_f32 v24, s1, v136, v27, v136
	v_fma_f32 v16, -v28, v18, 1.0
	v_div_fmas_f32 v15, v25, v29, v15
	v_rcp_f32_e32 v25, v26
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v10, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v17, -v17, v21, v19
	v_mul_f32_e32 v19, v24, v20
	v_fmac_f32_e32 v18, v16, v18
	v_div_scale_f32 v29, s0, v135, v27, v135
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v31, v32, 1.0
	v_div_fmas_f32 v16, v17, v22, v21
	v_fma_f32 v17, -v30, v19, v24
	v_mul_f32_e32 v21, v29, v18
	v_fma_f32 v22, -v26, v25, 1.0
	v_fmac_f32_e32 v32, v34, v32
	v_div_scale_f32 v34, s3, v134, v27, v134
	v_fmac_f32_e32 v19, v17, v20
	v_fma_f32 v17, -v28, v21, v29
	v_fmac_f32_e32 v25, v22, v25
	v_div_scale_f32 v22, s2, v133, v27, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v30, v19, v24
	v_fmac_f32_e32 v21, v17, v18
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v30, v22, v25
	v_div_scale_f32 v42, null, v40, v40, v123
	v_div_fmas_f32 v17, v24, v20, v19
	v_fma_f32 v19, -v28, v21, v29
	v_fma_f32 v20, -v26, v30, v22
	v_mul_f32_e32 v24, v34, v32
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v28, -v33, v35, 1.0
	v_div_scale_f32 v29, null, v27, v27, v131
	v_div_fmas_f32 v18, v19, v18, v21
	v_fmac_f32_e32 v30, v20, v25
	v_fma_f32 v19, -v31, v24, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v36, v29
	v_fmac_f32_e32 v35, v28, v35
	v_div_scale_f32 v21, s0, v132, v27, v132
	v_fma_f32 v20, -v26, v30, v22
	v_fmac_f32_e32 v24, v19, v32
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v22, v21, v35
	v_div_scale_f32 v26, null, v27, v27, v130
	v_div_fmas_f32 v20, v20, v25, v30
	v_fma_f32 v25, -v31, v24, v34
	v_div_scale_f32 v34, null, v27, v27, v129
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v19, -v29, v36, 1.0
	v_fma_f32 v28, -v33, v22, v21
	v_rcp_f32_e32 v30, v26
	v_div_fmas_f32 v24, v25, v32, v24
	v_rcp_f32_e32 v25, v34
	v_fmac_f32_e32 v36, v19, v36
	v_div_scale_f32 v31, s1, v131, v27, v131
	v_fmac_f32_e32 v22, v28, v35
	v_div_fixup_f32 v19, v20, v27, v133
	v_div_fixup_f32 v20, v24, v27, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v28, v31, v36
	v_fma_f32 v32, -v26, v30, 1.0
	v_fma_f32 v21, -v33, v22, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v33, -v34, v25, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v24, -v29, v28, v31
	v_fmac_f32_e32 v30, v32, v30
	v_div_scale_f32 v32, s2, v130, v27, v130
	v_fmac_f32_e32 v25, v33, v25
	v_rcp_f32_e32 v33, v37
	v_div_fmas_f32 v21, v21, v35, v22
	v_fmac_f32_e32 v28, v24, v36
	v_mul_f32_e32 v24, v32, v30
	v_div_scale_f32 v35, s0, v129, v27, v129
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v22, -v29, v28, v31
	v_fma_f32 v29, -v26, v24, v32
	v_mul_f32_e32 v31, v35, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v33, 1.0
	v_rcp_f32_e32 v44, v42
	v_div_fmas_f32 v22, v22, v36, v28
	v_fmac_f32_e32 v24, v29, v30
	v_fma_f32 v28, -v34, v31, v35
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v29, s1, v128, v27, v128
	v_fma_f32 v36, -v38, v39, 1.0
	v_fma_f32 v26, -v26, v24, v32
	v_fmac_f32_e32 v31, v28, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v28, v29, v33
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, null, v40, v40, v126
	v_div_fmas_f32 v24, v26, v30, v24
	v_fma_f32 v30, -v37, v28, v29
	v_div_scale_f32 v32, s3, v127, v27, v127
	v_fma_f32 v26, -v34, v31, v35
	v_rcp_f32_e32 v34, v36
	v_div_scale_f32 v41, null, v40, v40, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v28, v30, v33 :: v_dual_mul_f32 v35, v32, v39
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v30, v41
	v_div_fmas_f32 v25, v26, v25, v31
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v29, -v37, v28, v29
	v_div_scale_f32 v37, null, v40, v40, v124
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v26, -v38, v35, v32
	v_fma_f32 v31, -v36, v34, 1.0
	v_div_fmas_f32 v28, v29, v33, v28
	v_rcp_f32_e32 v33, v37
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v26, v39 :: v_dual_fmac_f32 v34, v31, v34
	v_div_scale_f32 v31, s0, v126, v40, v126
	v_fma_f32 v26, -v41, v30, 1.0
	v_fma_f32 v29, -v38, v35, v32
	v_div_scale_f32 v38, s1, v125, v40, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v32, v31, v34
	v_fmac_f32_e32 v30, v26, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v37, v33, 1.0
	v_div_fmas_f32 v29, v29, v39, v35
	v_div_fixup_f32 v13, v13, v27, v140
	v_fma_f32 v35, -v36, v32, v31
	v_mul_f32_e32 v39, v38, v30
	v_fmac_f32_e32 v33, v43, v33
	v_div_scale_f32 v43, null, v40, v40, v122
	v_div_fixup_f32 v14, v14, v27, v139
	v_div_fixup_f32 v15, v15, v27, v138
	v_div_fixup_f32 v16, v16, v27, v137
	v_div_fixup_f32 v17, v17, v27, v136
	v_div_fixup_f32 v18, v18, v27, v135
	v_div_fixup_f32 v21, v21, v27, v132
	v_div_fixup_f32 v22, v22, v27, v131
	v_div_fixup_f32 v24, v24, v27, v130
	v_div_fixup_f32 v25, v25, v27, v129
	v_div_fixup_f32 v26, v28, v27, v128
	v_div_fixup_f32 v27, v29, v27, v127
	v_fmac_f32_e32 v32, v35, v34
	v_fma_f32 v28, -v41, v39, v38
	v_div_scale_f32 v35, s2, v124, v40, v124
	v_fma_f32 v29, -v42, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fma_f32 v31, -v36, v32, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v39, v28, v30 :: v_dual_mul_f32 v36, v35, v33
	v_fmac_f32_e32 v44, v29, v44
	v_div_scale_f32 v46, s3, v123, v40, v123
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v29, -v41, v39, v38
	v_div_fmas_f32 v28, v31, v34, v32
	v_fma_f32 v31, -v37, v36, v35
	v_mul_f32_e32 v32, v46, v44
	v_fma_f32 v34, -v43, v45, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v38, null, v40, v40, v121
	v_div_fmas_f32 v29, v29, v30, v39
	v_fmac_f32_e32 v36, v31, v33
	v_fma_f32 v30, -v42, v32, v46
	v_fmac_f32_e32 v45, v34, v45
	v_div_scale_f32 v34, s0, v122, v40, v122
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v31, -v37, v36, v35
	v_fmac_f32_e32 v32, v30, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v35, v34, v45
	v_div_scale_f32 v37, null, v40, v40, v120
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v47, null, v40, v40, v118
	v_div_fmas_f32 v31, v31, v33, v36
	v_fma_f32 v33, -v42, v32, v46
	v_fma_f32 v36, -v43, v35, v34
	v_rcp_f32_e32 v41, v37
	v_div_scale_f32 v46, null, v40, v40, v119
	v_fma_f32 v30, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v36, v45
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v36, v46
	v_div_scale_f32 v42, s1, v121, v40, v121
	v_fmac_f32_e32 v39, v30, v39
	v_div_fmas_f32 v32, v33, v44, v32
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v44, -v37, v41, 1.0
	v_div_fixup_f32 v30, v31, v40, v124
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v33, v42, v39
	v_div_fixup_f32 v31, v32, v40, v123
	v_fma_f32 v32, -v43, v35, v34
	v_fmac_f32_e32 v41, v44, v41
	v_fma_f32 v44, -v46, v36, 1.0
	v_fma_f32 v34, -v38, v33, v42
	v_div_scale_f32 v43, s2, v120, v40, v120
	v_div_fmas_f32 v32, v32, v45, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v44, v36
	v_rcp_f32_e32 v44, v47
	v_div_scale_f32 v45, null, v40, v40, v117
	v_dual_fmac_f32 v33, v34, v39 :: v_dual_mul_f32 v34, v43, v41
	v_div_scale_f32 v35, s0, v119, v40, v119
	v_rcp_f32_e32 v49, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v38, v33, v42
	v_fma_f32 v42, -v37, v34, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v48, v35, v36
	v_fma_f32 v50, -v47, v44, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, null, v40, v40, v114
	v_div_fmas_f32 v33, v38, v39, v33
	v_fmac_f32_e32 v34, v42, v41
	v_fma_f32 v38, -v46, v48, v35
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v39, s1, v118, v40, v118
	v_fma_f32 v42, -v45, v49, 1.0
	v_fma_f32 v37, -v37, v34, v43
	v_fmac_f32_e32 v48, v38, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v39, v44
	v_div_scale_f32 v43, null, v40, v40, v116
	v_fmac_f32_e32 v49, v42, v49
	v_div_scale_f32 v42, s3, v117, v40, v117
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v35, -v46, v48, v35
	v_div_fmas_f32 v34, v37, v41, v34
	v_fma_f32 v37, -v47, v38, v39
	v_rcp_f32_e32 v41, v43
	v_mul_f32_e32 v46, v42, v49
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v50, null, v40, v40, v115
	v_div_fmas_f32 v35, v35, v36, v48
	v_fmac_f32_e32 v38, v37, v44
	v_fma_f32 v36, -v45, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v50
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v43, v41, 1.0
	v_fma_f32 v39, -v47, v38, v39
	v_fmac_f32_e32 v46, v36, v49
	v_div_scale_f32 v47, s0, v116, v40, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v37, v41
	v_div_fmas_f32 v37, v39, v44, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v45, v46, v42
	v_rcp_f32_e32 v42, v51
	v_fma_f32 v36, -v50, v48, 1.0
	v_div_scale_f32 v45, null, v40, v40, v113
	v_mul_f32_e32 v39, v47, v41
	v_div_scale_f32 v44, s1, v115, v40, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v36, v48
	v_rcp_f32_e32 v53, v45
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v52, -v51, v42, 1.0
	v_div_fmas_f32 v38, v38, v49, v46
	v_fma_f32 v46, -v43, v39, v47
	v_mul_f32_e32 v49, v44, v48
	v_div_fixup_f32 v36, v37, v40, v118
	v_fmac_f32_e32 v42, v52, v42
	v_div_scale_f32 v52, null, v40, v40, v112
	v_div_fixup_f32 v37, v38, v40, v117
	v_fmac_f32_e32 v39, v46, v41
	v_fma_f32 v38, -v50, v49, v44
	v_div_scale_f32 v46, s2, v114, v40, v114
	v_fma_f32 v54, -v45, v53, 1.0
	v_rcp_f32_e32 v55, v52
	v_fma_f32 v43, -v43, v39, v47
	v_fmac_f32_e32 v49, v38, v48
	v_mul_f32_e32 v47, v46, v42
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, s3, v113, v40, v113
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v28, v28, v40, v126
	v_div_fmas_f32 v38, v43, v41, v39
	v_fma_f32 v39, -v50, v49, v44
	v_fma_f32 v41, -v51, v47, v46
	v_mul_f32_e32 v43, v54, v53
	v_fma_f32 v44, -v52, v55, 1.0
	v_div_scale_f32 v50, null, v40, v40, v111
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v47, v41, v42
	v_div_fmas_f32 v39, v39, v48, v49
	v_rcp_f32_e32 v48, v50
	v_fma_f32 v41, -v45, v43, v54
	v_fmac_f32_e32 v55, v44, v55
	v_div_scale_f32 v44, s0, v112, v40, v112
	v_fma_f32 v46, -v51, v47, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v41, v53
	v_div_scale_f32 v51, null, v23, v23, v110
	v_mul_f32_e32 v49, v44, v55
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v50, v48, 1.0
	v_div_fmas_f32 v42, v46, v42, v47
	v_fma_f32 v45, -v45, v43, v54
	v_fma_f32 v46, -v52, v49, v44
	v_rcp_f32_e32 v47, v51
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v54, s1, v111, v40, v111
	v_div_fmas_f32 v43, v45, v53, v43
	v_fmac_f32_e32 v49, v46, v55
	v_rcp_f32_e32 v45, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v46, v54, v48
	v_div_fixup_f32 v41, v42, v40, v114
	v_fma_f32 v53, -v51, v47, 1.0
	v_div_fixup_f32 v42, v43, v40, v113
	v_fma_f32 v43, -v52, v49, v44
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v44, -v50, v46, v54
	v_fmac_f32_e32 v47, v53, v47
	v_div_scale_f32 v52, s2, v110, v23, v110
	v_fma_f32 v53, -v56, v45, 1.0
	v_div_fmas_f32 v43, v43, v55, v49
	v_rcp_f32_e32 v49, v57
	v_fmac_f32_e32 v46, v44, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v44, v52, v47 :: v_dual_fmac_f32 v45, v53, v45
	v_div_scale_f32 v53, s0, v109, v23, v109
	v_div_scale_f32 v55, null, v23, v23, v107
	v_fma_f32 v50, -v50, v46, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v51, v44, v52
	v_mul_f32_e32 v58, v53, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v59, v55
	v_fma_f32 v60, -v57, v49, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v44, v54, v47
	v_div_fmas_f32 v46, v50, v48, v46
	v_fma_f32 v48, -v56, v58, v53
	v_fmac_f32_e32 v49, v60, v49
	v_div_scale_f32 v50, s1, v108, v23, v108
	v_div_fixup_f32 v29, v29, v40, v125
	v_div_fixup_f32 v32, v32, v40, v122
	v_div_fixup_f32 v33, v33, v40, v121
	v_div_fixup_f32 v34, v34, v40, v120
	v_div_fixup_f32 v35, v35, v40, v119
	v_div_fixup_f32 v38, v38, v40, v116
	v_div_fixup_f32 v39, v39, v40, v115
	v_div_fixup_f32 v43, v43, v40, v112
	v_fma_f32 v54, -v55, v59, 1.0
	v_div_fixup_f32 v40, v46, v40, v111
	v_fma_f32 v46, -v51, v44, v52
	v_fmac_f32_e32 v58, v48, v45
	v_mul_f32_e32 v48, v50, v49
	v_div_scale_f32 v52, null, v23, v23, v106
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v59, v54, v59
	v_div_scale_f32 v51, s3, v107, v23, v107
	v_div_fmas_f32 v44, v46, v47, v44
	v_fma_f32 v46, -v56, v58, v53
	v_fma_f32 v47, -v57, v48, v50
	v_rcp_f32_e32 v53, v52
	v_mul_f32_e32 v54, v51, v59
	v_div_scale_f32 v56, null, v23, v23, v105
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, v47, v49
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v60, null, v23, v23, v104
	v_div_fmas_f32 v45, v46, v45, v58
	v_rcp_f32_e32 v58, v56
	v_fma_f32 v46, -v55, v54, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v52, v53, 1.0
	v_fma_f32 v50, -v57, v48, v50
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v57, s0, v106, v23, v106
	v_dual_fmac_f32 v54, v46, v59 :: v_dual_fmac_f32 v53, v47, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v47, v50, v49, v48
	v_rcp_f32_e32 v50, v60
	v_fma_f32 v46, -v56, v58, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v55, v54, v51
	v_div_scale_f32 v55, null, v23, v23, v103
	v_dual_mul_f32 v49, v57, v53 :: v_dual_fmac_f32 v58, v46, v58
	v_div_scale_f32 v51, s1, v105, v23, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v62, v55
	v_fma_f32 v61, -v60, v50, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v46, v47, v23, v108
	v_div_fmas_f32 v48, v48, v59, v54
	v_fma_f32 v54, -v52, v49, v57
	v_mul_f32_e32 v59, v51, v58
	v_fmac_f32_e32 v50, v61, v50
	v_div_scale_f32 v61, null, v23, v23, v102
	v_div_fixup_f32 v47, v48, v23, v107
	v_fmac_f32_e32 v49, v54, v53
	v_fma_f32 v48, -v56, v59, v51
	v_div_scale_f32 v54, s2, v104, v23, v104
	v_fma_f32 v63, -v55, v62, 1.0
	v_rcp_f32_e32 v64, v61
	v_fma_f32 v52, -v52, v49, v57
	v_fmac_f32_e32 v59, v48, v58
	v_mul_f32_e32 v57, v54, v50
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, s3, v103, v23, v103
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v65, null, v23, v23, v99
	v_div_fmas_f32 v48, v52, v53, v49
	v_fma_f32 v49, -v56, v59, v51
	v_fma_f32 v51, -v60, v57, v54
	v_mul_f32_e32 v52, v63, v62
	v_fma_f32 v53, -v61, v64, 1.0
	v_div_scale_f32 v56, null, v23, v23, v101
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v57, v51, v50
	v_div_fmas_f32 v49, v49, v58, v59
	v_rcp_f32_e32 v58, v56
	v_fma_f32 v51, -v55, v52, v63
	v_fmac_f32_e32 v64, v53, v64
	v_div_scale_f32 v53, s0, v102, v23, v102
	v_fma_f32 v54, -v60, v57, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v51, v62
	v_div_scale_f32 v60, null, v23, v23, v100
	v_mul_f32_e32 v59, v53, v64
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v56, v58, 1.0
	v_div_fmas_f32 v50, v54, v50, v57
	v_fma_f32 v54, -v55, v52, v63
	v_fma_f32 v55, -v61, v59, v53
	v_rcp_f32_e32 v57, v60
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v58, v51, v58
	v_div_scale_f32 v63, s1, v101, v23, v101
	v_div_fmas_f32 v51, v54, v62, v52
	v_fmac_f32_e32 v59, v55, v64
	v_rcp_f32_e32 v52, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v54, v63, v58
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v55, -v60, v57, 1.0
	v_fma_f32 v53, -v61, v59, v53
	v_div_scale_f32 v66, null, v23, v23, v98
	v_fma_f32 v61, -v56, v54, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v57, v55, v57
	v_div_scale_f32 v55, s2, v100, v23, v100
	v_fma_f32 v62, -v65, v52, 1.0
	v_div_fmas_f32 v53, v53, v64, v59
	v_div_scale_f32 v64, null, v23, v23, v97
	v_div_scale_f32 v73, null, v10, v10, v91
	v_dual_fmac_f32 v54, v61, v58 :: v_dual_mul_f32 v59, v55, v57
	v_rcp_f32_e32 v61, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v68, v64
	v_rcp_f32_e32 v75, v73
	v_fmac_f32_e32 v52, v62, v52
	v_div_scale_f32 v62, s0, v99, v23, v99
	v_fma_f32 v56, -v56, v54, v63
	v_fma_f32 v63, -v60, v59, v55
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v67, v62, v52
	v_fma_f32 v69, -v66, v61, 1.0
	v_div_fmas_f32 v54, v56, v58, v54
	v_fmac_f32_e32 v59, v63, v57
	v_fma_f32 v63, -v64, v68, 1.0
	v_fma_f32 v56, -v65, v67, v62
	v_fmac_f32_e32 v61, v69, v61
	v_div_scale_f32 v58, s1, v98, v23, v98
	v_fma_f32 v55, -v60, v59, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v67, v56, v52
	v_fmac_f32_e32 v68, v63, v68
	v_div_scale_f32 v63, null, v23, v23, v96
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v56, v58, v61
	v_div_scale_f32 v60, s3, v97, v23, v97
	v_div_fmas_f32 v55, v55, v57, v59
	v_fma_f32 v57, -v65, v67, v62
	v_rcp_f32_e32 v62, v63
	v_fma_f32 v59, -v66, v56, v58
	v_mul_f32_e32 v65, v60, v68
	v_div_scale_f32 v69, null, v23, v23, v95
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v56, v59, v61
	v_div_fmas_f32 v52, v57, v52, v67
	v_rcp_f32_e32 v57, v69
	v_fma_f32 v59, -v64, v65, v60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v67, -v63, v62, 1.0
	v_fma_f32 v58, -v66, v56, v58
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v44, v44, v23, v110
	v_fmac_f32_e32 v65, v59, v68
	v_fmac_f32_e32 v62, v67, v62
	v_div_scale_f32 v59, s0, v96, v23, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v69, v57, 1.0
	v_div_fmas_f32 v56, v58, v61, v56
	v_fma_f32 v58, -v64, v65, v60
	v_mul_f32_e32 v60, v59, v62
	v_div_scale_f32 v61, null, v10, v10, v94
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v57, v66, v57
	v_div_scale_f32 v64, s1, v95, v23, v95
	v_div_fmas_f32 v58, v58, v68, v65
	v_rcp_f32_e32 v65, v61
	v_fma_f32 v66, -v63, v60, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v67, v64, v57
	v_div_scale_f32 v68, null, v10, v10, v93
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v60, v66, v62
	v_fma_f32 v66, -v69, v67, v64
	v_rcp_f32_e32 v70, v68
	v_div_fixup_f32 v45, v45, v23, v109
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v61, v65, 1.0
	v_fma_f32 v59, -v63, v60, v59
	v_div_scale_f32 v63, null, v10, v10, v92
	v_fmac_f32_e32 v67, v66, v57
	v_fmac_f32_e32 v65, v71, v65
	v_div_scale_f32 v66, s2, v94, v10, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v71, v63
	v_fma_f32 v72, -v68, v70, 1.0
	v_div_fmas_f32 v59, v59, v62, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v62, v66, v65
	v_fma_f32 v60, -v69, v67, v64
	v_div_scale_f32 v64, s0, v93, v10, v93
	v_fmac_f32_e32 v70, v72, v70
	v_fma_f32 v72, -v61, v62, v66
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v69, -v63, v71, 1.0
	v_div_fmas_f32 v57, v60, v57, v67
	v_mul_f32_e32 v74, v64, v70
	v_fmac_f32_e32 v62, v72, v65
	v_div_fixup_f32 v48, v48, v23, v106
	v_fmac_f32_e32 v71, v69, v71
	v_div_scale_f32 v69, s3, v92, v10, v92
	v_div_fixup_f32 v49, v49, v23, v105
	v_div_fixup_f32 v50, v50, v23, v104
	v_div_fixup_f32 v51, v51, v23, v103
	v_div_fixup_f32 v53, v53, v23, v102
	v_div_fixup_f32 v54, v54, v23, v101
	v_div_fixup_f32 v55, v55, v23, v100
	v_div_fixup_f32 v52, v52, v23, v99
	v_div_fixup_f32 v56, v56, v23, v98
	v_div_fixup_f32 v58, v58, v23, v97
	v_fma_f32 v60, -v68, v74, v64
	v_mul_f32_e32 v67, v69, v71
	v_div_fixup_f32 v59, v59, v23, v96
	v_div_fixup_f32 v23, v57, v23, v95
	v_fma_f32 v57, -v61, v62, v66
	v_fma_f32 v61, -v73, v75, 1.0
	v_fmac_f32_e32 v74, v60, v70
	v_fma_f32 v60, -v63, v67, v69
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v66, null, v10, v10, v90
	v_fmac_f32_e32 v75, v61, v75
	v_div_scale_f32 v61, s1, v91, v10, v91
	v_div_fmas_f32 v57, v57, v65, v62
	v_fma_f32 v62, -v68, v74, v64
	v_fmac_f32_e32 v67, v60, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v64, v61, v75
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v76, null, v10, v10, v86
	v_fma_f32 v63, -v63, v67, v69
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v69, -v73, v64, v61
	v_div_fmas_f32 v62, v62, v70, v74
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v60, v66
	v_div_fmas_f32 v63, v63, v71, v67
	v_fmac_f32_e32 v64, v69, v75
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v62, v62, v10, v93
	v_div_scale_f32 v65, null, v10, v10, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v61, -v73, v64, v61
	v_div_scale_f32 v71, null, v10, v10, v88
	v_fma_f32 v68, -v66, v60, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v67, v65
	v_div_fmas_f32 v61, v61, v75, v64
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v73, v71
	v_div_fixup_f32 v57, v57, v10, v94
	v_div_fixup_f32 v63, v63, v10, v92
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v61, v61, v10, v91
	v_rcp_f32_e32 v91, v76
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v70, -v65, v67, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v74, -v71, v73, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, s2, v89, v10, v89
	v_fma_f32 v93, -v76, v91, 1.0
	v_fmac_f32_e32 v73, v74, v73
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v64, v70, v67
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v91, v93, v91 :: v_dual_fmac_f32 v60, v68, v60
	v_div_scale_f32 v68, s0, v90, v10, v90
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v93, s3, v86, v10, v86
	v_mul_f32_e32 v69, v68, v60
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v72, -v66, v69, v68
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v69, v72, v60
	v_div_scale_f32 v72, null, v10, v10, v85
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v66, -v66, v69, v68
	v_rcp_f32_e32 v75, v72
	v_fma_f32 v68, -v65, v64, v70
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v38, v38
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v60, v66, v60, v69
	v_div_scale_f32 v66, null, v10, v10, v87
	v_fmac_f32_e32 v64, v68, v67
	v_div_scale_f32 v68, s0, v88, v10, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v69, v66
	v_div_fixup_f32 v60, v60, v10, v90
	v_fma_f32 v74, -v72, v75, 1.0
	v_fma_f32 v65, -v65, v64, v70
	v_mul_f32_e32 v70, v68, v73
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v92, s2, v87, v10, v87
	v_fmac_f32_e32 v75, v74, v75
	v_div_scale_f32 v74, s1, v85, v10, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v66, v69, 1.0
	v_div_fmas_f32 v64, v65, v67, v64
	v_fma_f32 v65, -v71, v70, v68
	v_mul_f32_e32 v67, v74, v75
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v69, v90, v69
	v_div_scale_f32 v90, null, v10, v10, v84
	v_fmac_f32_e32 v70, v65, v73
	v_fma_f32 v65, -v72, v67, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v95, v92, v69
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v64, v64, v10, v89
	v_fma_f32 v68, -v71, v70, v68
	v_fmac_f32_e32 v67, v65, v75
	v_fma_f32 v65, -v66, v95, v92
	v_mul_f32_e32 v71, v93, v91
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v41, v41
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v68, v68, v73, v70
	v_fma_f32 v70, -v72, v67, v74
	v_fmac_f32_e32 v95, v65, v69
	v_fma_f32 v89, -v90, v94, 1.0
	v_fma_f32 v65, -v76, v71, v93
	v_div_scale_f32 v72, s0, v84, v10, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v66, v95, v92
	v_fmac_f32_e32 v94, v89, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v71, v65, v91
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v68, v68, v10, v88
	v_div_fmas_f32 v67, v70, v75, v67
	v_mul_f32_e32 v65, v72, v94
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v70, null, v10, v10, v83
	v_div_fmas_f32 v66, v66, v69, v95
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v73, -v90, v65, v72
	v_fma_f32 v69, -v76, v71, v93
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v74, v70
	v_div_fixup_f32 v67, v67, v10, v85
	v_fmac_f32_e32 v65, v73, v94
	v_div_fmas_f32 v69, v69, v91, v71
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v75, null, v10, v10, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v71, -v90, v65, v72
	v_div_scale_f32 v72, null, v10, v10, v82
	v_fma_f32 v73, -v70, v74, 1.0
	v_div_fixup_f32 v66, v66, v10, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v65, v71, v94, v65
	v_rcp_f32_e32 v71, v72
	v_div_scale_f32 v76, vcc_lo, v83, v10, v83
	v_div_fixup_f32 v69, v69, v10, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v65, v65, v10, v84
	v_rcp_f32_e32 v86, v75
	v_div_scale_f32 v88, null, v10, v10, v77
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v63, v63
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v84, -v72, v71, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v88
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v71, v84, v71
	v_div_scale_f32 v84, s0, v82, v10, v82
	v_fma_f32 v92, -v75, v86, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v93, v84, v71 :: v_dual_fmac_f32 v74, v73, v74
	v_div_scale_f32 v73, null, v10, v10, v81
	v_fma_f32 v94, -v88, v90, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v87, v76, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v73
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v37, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v91, -v70, v87, v76
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v46, v46
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v87, v91, v74
	v_fma_f32 v89, -v73, v85, 1.0
	v_fma_f32 v91, -v72, v93, v84
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v50, v50
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v70, -v70, v87, v76
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s1, v81, v10, v81
	v_dual_fmac_f32 v86, v92, v86 :: v_dual_fmac_f32 v93, v91, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v70, v70, v74, v87
	v_mul_f32_e32 v95, v89, v85
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_div_scale_f32 v92, s2, v80, v10, v80
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v73, v95, v89
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s3, v77, v10, v77
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v96, v92, v86
	v_fmac_f32_e32 v95, v76, v85
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v97, v94, v90
	v_fma_f32 v91, -v75, v96, v92
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v72, -v72, v93, v84
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v74, -v88, v97, v94
	v_fmac_f32_e32 v96, v91, v86
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v71, v72, v71, v93
	v_fma_f32 v72, -v73, v95, v89
	v_fmac_f32_e32 v97, v74, v90
	v_fma_f32 v73, -v75, v96, v92
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v70, v70, v10, v83
	v_div_fmas_f32 v72, v72, v85, v95
	v_fma_f32 v74, -v88, v97, v94
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v71, v71, v10, v82
	v_div_fmas_f32 v73, v73, v86, v96
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v72, v72, v10, v81
	v_div_fmas_f32 v74, v74, v90, v97
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v53
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v73, v73, v10, v80
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v10, v74, v10, v77
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v60, v60
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v57
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
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
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v68, v68
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v61, v61
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v75, v52
	v_cvt_i32_f32_e32 v76, v23
	v_cvt_i32_f32_e32 v80, v60
	v_cvt_i32_f32_e32 v82, v10
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
	v_and_b32_e32 v21, 15, v22
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
	v_and_b32_e32 v60, 15, v63
	v_and_b32_e32 v63, 15, v64
	v_and_b32_e32 v64, 15, v68
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v68, 10, v0
	v_lshlrev_b32_e32 v74, 4, v78
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v70, v70
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_cvt_i32_f32_e32 v77, v57
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	v_and_b32_e32 v33, 15, v35
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v37, 15, v39
	v_and_b32_e32 v39, 15, v42
	v_and_b32_e32 v42, 15, v44
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v48, 15, v50
	v_and_b32_e32 v50, 15, v53
	v_and_b32_e32 v53, 15, v75
	v_and_b32_e32 v57, 15, v76
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v75, 0x1800, v68
	v_lshlrev_b32_e32 v76, 6, v3
	v_xor_b32_e32 v8, v74, v8
	v_lshlrev_b32_e32 v74, 6, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v75, 0, v75, v76
	v_and_or_b32 v6, 0x1b00, v74, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v81, v65
	v_cvt_i32_f32_e32 v70, v70
	v_and_b32_e32 v40, 15, v43
	v_and_b32_e32 v43, 15, v45
	v_and_b32_e32 v45, 15, v47
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v49, 15, v51
	v_and_b32_e32 v51, 15, v54
	v_and_b32_e32 v52, 15, v55
	v_and_b32_e32 v54, 15, v56
	v_and_b32_e32 v55, 15, v58
	v_and_b32_e32 v56, 15, v59
	v_and_b32_e32 v58, 15, v77
	v_and_b32_e32 v59, 15, v62
	v_and_b32_e32 v61, 15, v61
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v7, v75, v8, v7
	v_xad_u32 v6, v6, v79, 0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v73, v73
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v65, 15, v67
	v_and_b32_e32 v66, 15, v66
	v_and_b32_e32 v67, 15, v69
	v_and_b32_e32 v68, 15, v81
	v_and_b32_e32 v69, 15, v70
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v7, v[10:13]
	ds_store_b128 v7, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v6
	ds_load_b128 v[18:21], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[26:29]
	ds_store_b128 v7, v[34:37] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v6
	ds_load_b128 v[34:37], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[42:45]
	ds_store_b128 v7, v[50:53] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v6
	ds_load_b128 v[50:53], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[58:61]
	ds_store_b128 v7, v[66:69] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v6
	ds_load_b128 v[66:69], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[14:17]
	ds_store_b128 v7, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v6
	ds_load_b128 v[22:25], v6 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[30:33]
	ds_store_b128 v7, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v6
	ds_load_b128 v[38:41], v6 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_and_b32_e32 v62, 15, v80
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[46:49]
	ds_store_b128 v7, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v6
	ds_load_b128 v[54:57], v6 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v70, 15, v71
	v_and_b32_e32 v71, 15, v72
	v_and_b32_e32 v72, 15, v73
	v_and_b32_e32 v73, 15, v82
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[62:65]
	ds_store_b128 v7, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v6
	ds_load_b128 v[70:73], v6 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s25, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v6, v18, 4, v10
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v19, 4, v11
	v_lshl_or_b32 v8, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v12, v23, 4, v15
	v_lshl_or_b32 v13, v24, 4, v16
	v_lshl_or_b32 v14, v25, 4, v17
	v_lshl_or_b32 v18, v37, 4, v29
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v37, 3, v78
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s24, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v9, s0, v9
	s_mul_i32 s2, s26, s0
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
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v5.l, 0xff, v6.l
	v_lshlrev_b16 v6.l, 8, v14.l
	v_and_b16 v6.h, 0xff, v13.l
	v_lshlrev_b16 v7.l, 8, v12.l
	v_and_b16 v7.h, 0xff, v11.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v23, v50, 4, v42
	v_lshl_or_b32 v24, v51, 4, v43
	v_lshl_or_b32 v29, v56, 4, v48
	v_lshl_or_b32 v30, v57, 4, v49
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v41, v39, v9
	v_add3_u32 v42, v9, s1, v39
	v_add3_u32 v43, v9, s2, v39
	v_add3_u32 v39, v9, s0, v39
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.l, v4.l
	v_or_b16 v9.h, v6.h, v6.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	v_lshlrev_b16 v4.l, 8, v16.l
	v_and_b16 v5.l, 0xff, v15.l
	v_lshlrev_b16 v6.l, 8, v22.l
	v_and_b16 v6.h, 0xff, v21.l
	v_lshlrev_b16 v7.l, 8, v20.l
	v_and_b16 v7.h, 0xff, v19.l
	s_and_b32 s1, s13, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s12
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v38, v72, 4, v64
	v_lshl_or_b32 v40, v73, 4, v65
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[8:9], v41, s[0:3], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.l, v4.l
	v_or_b16 v9.h, v6.h, v6.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v6.l, 8, v30.l
	v_and_b16 v6.h, 0xff, v29.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v25, v52, 4, v44
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v28, v55, 4, v47
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[8:9], v42, s[0:3], 0 offen
	v_or_b16 v9.h, v6.h, v6.l
	v_lshlrev_b16 v6.l, 8, v40.l
	v_and_b16 v6.h, 0xff, v38.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v31, v66, 4, v58
	v_lshl_or_b32 v32, v67, 4, v59
	v_lshl_or_b32 v33, v68, 4, v60
	v_lshl_or_b32 v34, v69, 4, v61
	v_lshl_or_b32 v35, v70, 4, v62
	v_lshl_or_b32 v36, v71, 4, v63
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v26.l
	v_and_b16 v2.l, 0xff, v25.l
	v_lshlrev_b16 v4.l, 8, v24.l
	v_and_b16 v5.l, 0xff, v23.l
	v_lshlrev_b16 v7.l, 8, v28.l
	v_and_b16 v7.h, 0xff, v27.l
	v_or_b16 v11.h, v6.h, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v3, 2, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v5.l, v4.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v1.l, 8, v34.l
	v_and_b16 v2.l, 0xff, v33.l
	v_lshlrev_b16 v4.l, 8, v32.l
	v_and_b16 v5.l, 0xff, v31.l
	v_lshlrev_b16 v7.l, 8, v36.l
	v_and_b16 v7.h, 0xff, v35.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v3, 0, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v10.l, v5.l, v4.l
	v_or_b16 v11.l, v7.h, v7.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v7, 0, v37
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v1.l, v4.h
	v_add3_u32 v3, v3, v6, v37
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, v0, 63, s26
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
	v_mul_lo_u32 v2, v4, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s1, s15, 0xffff
	s_mov_b32 s0, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s24, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp62:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp63:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 248
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14424
; TotalNumSgprs: 46
; NumVgprs: 248
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 46
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
