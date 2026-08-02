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
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s33, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v74, 15, v0
	v_and_b32_e32 v141, 4, v0
	v_and_b32_e32 v142, 8, v0
	v_lshlrev_b32_e32 v143, 4, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 63
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
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s9
	s_sub_i32 s30, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s33, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s30, s7
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
	v_lshlrev_b32_e32 v3, 4, v0
	s_branch .LBB0_3
.Ltmp15:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow589
	s_load_b128 s[16:19], s[0:1], 0x20
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v75, 0xf0, v0
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v76, 4, v74
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v131, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s31, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp16:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s33, 31
.Ltmp17:
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v144, 3, v0
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s4, s1, 31
.Ltmp19:
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v145, 3, v75
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s4, s4, 27
	v_or_b32_e32 v10, s31, v74
	s_add_i32 s1, s1, s4
	s_mov_b32 s4, 0
	v_mul_lo_u32 v4, s28, v144
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_bfe_i32 v2, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
	v_or_b32_e32 v11, 16, v10
.Ltmp21:
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s5, s30, 8
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s1, s1, 5
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v2, 0x90, v2
	v_or_b32_e32 v13, 32, v10
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
.Ltmp23:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v1, 3, v0
	v_mul_lo_u32 v148, v10, s1
	v_or_b32_e32 v10, 48, v10
	v_mul_lo_u32 v149, v11, s1
	v_lshrrev_b32_e32 v11, 6, v0
	v_and_b32_e32 v5, 56, v1
	v_or_b32_e32 v153, s5, v0
	v_lshl_or_b32 v6, v74, 9, v145
	v_mul_lo_u32 v150, v13, s1
	v_dual_mov_b32 v110, 0 :: v_dual_lshlrev_b32 v13, 2, v0
	v_add3_u32 v146, v4, v5, s31
	v_mul_lo_u32 v4, s29, v145
	v_mul_lo_u32 v151, v10, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v13, 0x1c0, v13
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v100, 0
	v_xor_b32_e32 v9, 0x110, v6
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v155, 0, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v73, v4, v76, s5
	s_mov_b32 s5, s4
	v_lshlrev_b32_e32 v5, 5, v0
	v_and_b32_e32 v3, 0x110, v3
	v_and_b32_e32 v8, 0xe00, v143
	v_and_b32_e32 v10, 2, v11
	v_lshlrev_b32_e32 v11, 1, v75
	v_and_b32_e32 v7, 0x60, v5
	v_xor_b32_e32 v2, v2, v3
	v_xor_b32_e32 v3, 0x90, v6
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v5, 32, v5
	v_add_nc_u32_e32 v10, 0, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v2, v7, v8, v2
	v_or_b32_e32 v7, 0x3f0, v0
	v_or_b32_e32 v8, 0x7f0, v0
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v152, 0, v11
	v_lshlrev_b32_e32 v14, 1, v0
	v_xor_b32_e32 v12, 16, v2
	v_add3_u32 v10, v10, v13, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v11, v152, v11, v5
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v156, 0, v6
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v157, 0, v3
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v159, 0, v7
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v160, 0, v8
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v161, 0, v2
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v5, s8 :: v_dual_and_b32 v14, 28, v14
	v_mov_b32_e32 v125, 0
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s2, 31
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v147, 0, v74
	s_lshr_b32 s0, s0, 26
.Ltmp25:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_add_u32 v154, s28, 5, v146
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v158, 0, v9
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v162, 0, v12
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v4, s7
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v163, v10, v14
	v_mov_b32_e32 v138, 0
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v164, v11, v14
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v83, 0
	s_mov_b32 s23, 0x31027000
.Ltmp26:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s2, s0
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
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
.Ltmp27:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s5, 6
	v_mad_u64_u32 v[9:10], null, s6, s29, v[73:74]
	v_or_b32_e32 v10, s6, v145
	s_or_b32 s5, s6, 32
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s7, s6, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s33, v10
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v10, s29, v9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_dual_cndmask_b32 v11, 0x80000000, v9 :: v_dual_cndmask_b32 v14, 0x80000000, v10
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v9, s2, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[10:13], v11, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v14, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v14, v10, 0x5010400
	v_perm_b32 v19, v14, v10, 0x7030602
	.loc	1 368 21 is_stmt 1              ; generate_amdgcn.py:368:21
	v_or_b32_e32 v10, s5, v145
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v24, v17, v13, 0x5010400
	v_perm_b32 v17, v17, v13, 0x7030602
	v_perm_b32 v20, v15, v11, 0x5010400
	v_perm_b32 v21, v15, v11, 0x7030602
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s33, v10
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v10, s29, v9
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_perm_b32 v22, v16, v12, 0x5010400
	v_perm_b32 v23, v16, v12, 0x7030602
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v13, v9, 0x5010400
	v_perm_b32 v26, v13, v9, 0x7030602
	.loc	1 368 21 is_stmt 1              ; generate_amdgcn.py:368:21
	v_or_b32_e32 v9, s6, v144
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v27, v14, v10, 0x5010400
	v_perm_b32 v28, v14, v10, 0x7030602
	v_perm_b32 v29, v15, v11, 0x5010400
	v_perm_b32 v30, v15, v11, 0x7030602
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s33, v9
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v9, s7, v146
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v11, 24, v19
	v_perm_b32 v31, v16, v12, 0x5010400
	v_perm_b32 v32, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v12, 24, v20
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v11.l, 8, v11.l
	v_lshrrev_b32_e32 v13, 24, v21
	v_lshrrev_b32_e32 v14, 24, v22
	v_lshlrev_b16 v12.l, 8, v12.l
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[9:10], v9, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v15, 24, v23
	v_lshlrev_b16 v13.l, 8, v13.l
	v_lshlrev_b16 v14.l, 8, v14.l
	v_lshrrev_b32_e32 v16, 24, v24
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s6, s6, 5
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v15.l, 8, v15.l
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s6, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v16.l, 8, v16.l
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v155, v[9:10] offset:16384
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v9, s5, v144
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v10, 24, v18
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s33, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v9, 8, v18
	v_and_b16 v9.h, 0xff, v18.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v10.l, 8, v10.l
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v18.h
	v_lshrrev_b32_e32 v18, 24, v17
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v13.l, v13.h, v13.l
	v_and_b16 v13.h, 0xff, v22.h
	v_or_b16 v13.h, v13.h, v14.l
	v_lshrrev_b32_e32 v14, 8, v23
	v_and_b16 v14.h, 0xff, v23.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v14.l, 8, v14.l
	v_or_b16 v14.l, v14.h, v14.l
	ds_store_b16 v156, v9
	ds_store_b16_d16_hi v156, v9 offset:32
	ds_store_b16 v156, v10 offset:64
	ds_store_b16_d16_hi v156, v10 offset:96
	ds_store_b16 v157, v11
	ds_store_b16_d16_hi v157, v11 offset:32
	ds_store_b16 v157, v12 offset:64
	ds_store_b16_d16_hi v157, v12 offset:96
	ds_store_b16 v158, v13
	ds_store_b16_d16_hi v158, v13 offset:32
	ds_store_b16 v158, v14 offset:64
	v_add_nc_u32_e32 v9, s7, v154
	v_and_b16 v14.h, 0xff, v23.h
	v_lshrrev_b32_e32 v13, 8, v25
	v_and_b16 v10.l, 0xff, v26.l
	v_and_b16 v10.h, 0xff, v26.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v14.h, v14.h, v15.l
	v_lshrrev_b32_e32 v15, 8, v24
	v_and_b16 v15.h, 0xff, v24.l
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s7, s6, s29
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[11:12], v9, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v158, v14 offset:96
	v_lshlrev_b16 v15.l, 8, v15.l
	v_lshrrev_b32_e32 v14, 24, v25
	v_and_b16 v9.l, 0xff, v25.l
	v_and_b16 v9.h, 0xff, v25.h
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v15.l, v15.h, v15.l
	v_and_b16 v15.h, 0xff, v24.h
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v15.h, v15.h, v16.l
	v_lshrrev_b32_e32 v16, 8, v17
	v_and_b16 v16.h, 0xff, v17.l
	v_lshlrev_b16 v17.l, 8, v18.l
	ds_store_b16 v156, v15 offset:384
	v_lshlrev_b16 v16.l, 8, v16.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v16.l, v16.h, v16.l
	v_and_b16 v16.h, 0xff, v17.h
	ds_store_b16_d16_hi v156, v15 offset:416
	v_lshrrev_b32_e32 v15, 24, v26
	v_or_b16 v16.h, v16.h, v17.l
	ds_store_b16 v156, v16 offset:448
	v_lshrrev_b32_e32 v17, 24, v32
	ds_store_b16_d16_hi v156, v16 offset:480
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v16, 24, v31
	v_lshlrev_b16 v17.l, 8, v17.l
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b16 v16.l, 8, v16.l
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v155, v[11:12] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v12, 8, v26
	v_lshlrev_b16 v11.l, 8, v13.l
	v_lshlrev_b16 v11.h, 8, v14.l
	v_lshrrev_b32_e32 v13, 8, v27
	v_lshrrev_b32_e32 v14, 24, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v9.l, v9.l, v11.l
	v_and_b16 v11.l, 0xff, v27.l
	v_or_b16 v9.h, v9.h, v11.h
	v_lshlrev_b16 v11.h, 8, v12.l
	v_lshlrev_b16 v12.l, 8, v15.l
	v_lshlrev_b16 v12.h, 8, v13.l
	v_lshrrev_b32_e32 v13, 8, v28
	v_lshrrev_b32_e32 v15, 8, v29
	v_or_b16 v10.l, v10.l, v11.h
	v_and_b16 v11.h, 0xff, v27.h
	v_or_b16 v10.h, v10.h, v12.l
	v_and_b16 v12.l, 0xff, v28.l
	v_or_b16 v11.l, v11.l, v12.h
	v_lshlrev_b16 v12.h, 8, v14.l
	v_lshrrev_b32_e32 v14, 24, v28
	v_lshlrev_b16 v13.l, 8, v13.l
	v_lshlrev_b16 v13.h, 8, v15.l
	v_lshrrev_b32_e32 v15, 24, v30
	v_or_b16 v11.h, v11.h, v12.h
	v_and_b16 v12.h, 0xff, v28.h
	v_or_b16 v12.l, v12.l, v13.l
	v_lshlrev_b16 v13.l, 8, v14.l
	v_lshrrev_b32_e32 v14, 24, v29
	v_lshlrev_b16 v15.l, 8, v15.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v12.h, v12.h, v13.l
	v_and_b16 v13.l, 0xff, v29.l
	v_lshlrev_b16 v14.l, 8, v14.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v13.l, v13.l, v13.h
	v_and_b16 v13.h, 0xff, v29.h
	v_or_b16 v13.h, v13.h, v14.l
	v_lshrrev_b32_e32 v14, 8, v30
	v_and_b16 v14.h, 0xff, v30.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v14.l, 8, v14.l
	v_or_b16 v14.l, v14.h, v14.l
	v_and_b16 v14.h, 0xff, v30.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v14.h, v14.h, v15.l
	v_lshrrev_b32_e32 v15, 8, v31
	v_and_b16 v15.h, 0xff, v31.l
	v_lshlrev_b16 v15.l, 8, v15.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v15.l, v15.h, v15.l
	v_and_b16 v15.h, 0xff, v31.h
	v_or_b16 v15.h, v15.h, v16.l
	v_lshrrev_b32_e32 v16, 8, v32
	v_and_b16 v16.h, 0xff, v32.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v16.l, 8, v16.l
	v_or_b16 v16.l, v16.h, v16.l
	v_and_b16 v16.h, 0xff, v32.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v16.h, v16.h, v17.l
	ds_store_b16 v156, v9 offset:8192
	ds_store_b16_d16_hi v156, v9 offset:8224
	ds_store_b16 v156, v10 offset:8256
	ds_store_b16_d16_hi v156, v10 offset:8288
	ds_store_b16 v157, v11 offset:8192
	ds_store_b16_d16_hi v157, v11 offset:8224
	ds_store_b16 v157, v12 offset:8256
	ds_store_b16_d16_hi v157, v12 offset:8288
	ds_store_b16 v158, v13 offset:8192
	ds_store_b16_d16_hi v158, v13 offset:8224
	ds_store_b16 v158, v14 offset:8256
	ds_store_b16_d16_hi v158, v14 offset:8288
	ds_store_b16 v156, v15 offset:8576
	ds_store_b16_d16_hi v156, v15 offset:8608
	ds_store_b16 v156, v16 offset:8640
	ds_store_b16_d16_hi v156, v16 offset:8672
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v147 offset:16960
	ds_load_u8 v10, v147 offset:17216
	ds_load_u8 v11, v147 offset:17152
	ds_load_u8 v12, v147 offset:17344
	ds_load_u8 v13, v147 offset:17280
	ds_load_u8 v14, v147 offset:16896
	ds_load_u8 v15, v147 offset:17088
	ds_load_u8 v16, v147 offset:17024
	ds_load_u8 v17, v147 offset:16704
	ds_load_u8 v18, v147 offset:16640
	ds_load_u8 v19, v147 offset:16832
	ds_load_u8 v20, v147 offset:16768
	ds_load_u8 v21, v147 offset:16448
	ds_load_u8 v22, v147 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[165:168], v161 offset:4096
	ds_load_b128 v[169:172], v162 offset:4096
	ds_load_b128 v[69:72], v162
	ds_load_b128 v[65:68], v161
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v147 offset:16576
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	ds_load_u8 v16, v147 offset:18240
	v_lshl_or_b32 v28, v12, 16, v10
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v12, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	v_lshl_or_b32 v27, v14, 16, v9
	ds_load_u8 v9, v147 offset:18368
	ds_load_u8 v10, v147 offset:17984
	ds_load_u8 v14, v147 offset:18176
	ds_load_u8 v18, v147 offset:17920
	v_lshl_or_b32 v26, v15, 16, v12
	ds_load_u8 v12, v147 offset:18048
	ds_load_u8 v15, v147 offset:18304
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v15, v9, 0xc0c0004
	ds_load_u8 v15, v147 offset:17792
	v_perm_b32 v14, v14, v16, 0xc0c0004
	ds_load_u8 v16, v147 offset:17728
	v_perm_b32 v10, v18, v10, 0xc0c0004
	ds_load_u8 v18, v147 offset:17664
	v_lshl_or_b32 v32, v9, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v18, v16, 0xc0c0004
	ds_load_u8 v18, v147 offset:17408
	ds_load_u8 v13, v147 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v147 offset:18112
	v_lshl_or_b32 v25, v11, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	ds_load_u8 v13, v147 offset:17856
	v_lshl_or_b32 v31, v12, 16, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	ds_load_u8 v15, v147 offset:17472
	v_lshl_or_b32 v30, v13, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v18, v15, 0xc0c0004
	ds_load_u8 v18, v147 offset:17536
	ds_load_u8 v19, v147 offset:17600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v15
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[165:168], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v147 offset:17232
	ds_load_u8 v26, v147 offset:17168
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[169:172], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v147 offset:17360
	ds_load_u8 v27, v147 offset:17296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v147 offset:16976
	ds_load_u8 v28, v147 offset:16912
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v147 offset:16720
	ds_load_u8 v26, v147 offset:16656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v147 offset:17104
	ds_load_u8 v29, v147 offset:17040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v147 offset:16848
	ds_load_u8 v27, v147 offset:16784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v147 offset:16400
	ds_load_u8 v26, v147 offset:16464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v147 offset:16592
	ds_load_u8 v27, v147 offset:16528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v147 offset:18256
	ds_load_u8 v26, v147 offset:18192
	v_wmma_i32_16x16x16_iu8 v[33:40], v[165:168], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v147 offset:18384
	ds_load_u8 v27, v147 offset:18320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v147 offset:18000
	ds_load_u8 v28, v147 offset:17936
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v147 offset:17744
	ds_load_u8 v26, v147 offset:17680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v147 offset:18128
	ds_load_u8 v29, v147 offset:18064
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v147 offset:17872
	ds_load_u8 v27, v147 offset:17808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v147 offset:17488
	ds_load_u8 v26, v147 offset:17424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v147 offset:17616
	ds_load_u8 v27, v147 offset:17552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v147 offset:17248
	ds_load_u8 v42, v147 offset:17184
	v_wmma_i32_16x16x16_iu8 v[33:40], v[169:172], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v147 offset:17376
	ds_load_u8 v43, v147 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v147 offset:16992
	ds_load_u8 v44, v147 offset:16928
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v147 offset:16736
	ds_load_u8 v42, v147 offset:16672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v147 offset:17120
	ds_load_u8 v45, v147 offset:17056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v44, 16, v43
	ds_load_u8 v42, v147 offset:16864
	ds_load_u8 v43, v147 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v147 offset:16416
	ds_load_u8 v42, v147 offset:16480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v147 offset:16608
	ds_load_u8 v43, v147 offset:16544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	ds_load_u8 v41, v147 offset:18272
	ds_load_u8 v42, v147 offset:18208
	v_wmma_i32_16x16x16_iu8 v[49:56], v[165:168], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v147 offset:18400
	ds_load_u8 v43, v147 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v147 offset:18016
	ds_load_u8 v44, v147 offset:17952
	v_lshl_or_b32 v64, v42, 16, v41
	ds_load_u8 v41, v147 offset:17760
	ds_load_u8 v42, v147 offset:17696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v147 offset:18144
	ds_load_u8 v45, v147 offset:18080
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v44, 16, v43
	ds_load_u8 v42, v147 offset:17888
	ds_load_u8 v43, v147 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v62, v42, 16, v41
	ds_load_u8 v41, v147 offset:17504
	ds_load_u8 v42, v147 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v147 offset:17632
	ds_load_u8 v43, v147 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[57:60], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v147 offset:17008
	ds_load_u8 v58, v147 offset:16944
	v_wmma_i32_16x16x16_iu8 v[49:56], v[169:172], v[61:64], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[61:64], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v147 offset:17136
	ds_load_u8 v59, v147 offset:17072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v147 offset:16752
	ds_load_u8 v60, v147 offset:16688
	v_lshl_or_b32 v175, v58, 16, v57
	ds_load_u8 v57, v147 offset:16496
	ds_load_u8 v58, v147 offset:16432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v147 offset:16880
	ds_load_u8 v61, v147 offset:16816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v60, 16, v59
	ds_load_u8 v58, v147 offset:16624
	ds_load_u8 v59, v147 offset:16560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v173, v58, 16, v57
	ds_load_u8 v57, v147 offset:17264
	ds_load_u8 v58, v147 offset:17200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v147 offset:17328
	ds_load_u8 v59, v159 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v58, 16, v57
	ds_load_u8 v57, v147 offset:18032
	ds_load_u8 v58, v147 offset:17968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v147 offset:18160
	ds_load_u8 v59, v147 offset:18096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v147 offset:17776
	ds_load_u8 v60, v147 offset:17712
	v_lshl_or_b32 v179, v58, 16, v57
	ds_load_u8 v57, v147 offset:17520
	ds_load_u8 v58, v147 offset:17456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v147 offset:17904
	ds_load_u8 v61, v147 offset:17840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v60, 16, v59
	ds_load_u8 v58, v147 offset:17648
	ds_load_u8 v59, v147 offset:17584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v177, v58, 16, v57
	ds_load_u8 v57, v147 offset:18288
	ds_load_u8 v58, v147 offset:18224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v160 offset:16384
	ds_load_u8 v59, v147 offset:18352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v180, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[173:176], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[177:180], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[165:168], v[173:176], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v165, v153, s7, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v167, v150, s6, 1
	v_add_lshl_u32 v166, v149, s6, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[65:72], v[169:172], v[177:180], v[65:72] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v165, 0x80000000, v165, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v169, 0x80000000, v167, vcc_lo
	v_add_lshl_u32 v167, v151, s6, 1
	v_cndmask_b32_e32 v166, 0x80000000, v166, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v165, v165, s[12:15], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v170, 0x80000000, v167, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v163, v165 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v165, v148, s6, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s5, s29
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v165, 0x80000000, v165, vcc_lo
	s_clause 0x3
	buffer_load_u16 v168, v165, s[8:11], 0 offen
	buffer_load_u16 v167, v166, s[8:11], 0 offen
	buffer_load_u16 v166, v169, s[8:11], 0 offen
	buffer_load_u16 v165, v170, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v169, v147 offset:19264
	ds_load_u8 v170, v147 offset:19200
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[225:228], v161 offset:8192
	ds_load_b128 v[229:232], v162 offset:8192
	ds_load_b128 v[233:236], v161 offset:12288
	ds_load_b128 v[237:240], v162 offset:12288
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s4, s0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v147 offset:19392
	ds_load_u8 v171, v147 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v147 offset:19008
	ds_load_u8 v172, v147 offset:18944
	v_lshl_or_b32 v188, v170, 16, v169
	ds_load_u8 v169, v147 offset:18752
	ds_load_u8 v170, v147 offset:18688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v147 offset:19136
	ds_load_u8 v173, v147 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v187, v172, 16, v171
	ds_load_u8 v170, v147 offset:18880
	ds_load_u8 v171, v147 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	v_lshl_or_b32 v186, v170, 16, v169
	ds_load_u8 v169, v147 offset:18496
	ds_load_u8 v170, v147 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v147 offset:18624
	ds_load_u8 v171, v147 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v170, 16, v169
	ds_load_u8 v169, v147 offset:20288
	ds_load_u8 v170, v147 offset:20224
	v_wmma_i32_16x16x16_iu8 v[177:184], v[233:236], v[185:188], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v147 offset:20352
	ds_load_u8 v171, v147 offset:20416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v170, v171, 0xc0c0004
	ds_load_u8 v171, v147 offset:20032
	ds_load_u8 v172, v147 offset:19968
	v_lshl_or_b32 v192, v170, 16, v169
	ds_load_u8 v169, v147 offset:19712
	ds_load_u8 v170, v147 offset:19776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v147 offset:20096
	ds_load_u8 v173, v147 offset:20160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v169, v170, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v191, v172, 16, v171
	ds_load_u8 v170, v147 offset:19840
	ds_load_u8 v171, v147 offset:19904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v170, v171, 0xc0c0004
	v_lshl_or_b32 v190, v170, 16, v169
	ds_load_u8 v169, v147 offset:19456
	ds_load_u8 v170, v147 offset:19520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v170, 0xc0c0004
	ds_load_u8 v170, v147 offset:19648
	ds_load_u8 v171, v147 offset:19584
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v167, 16, v167
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v166, 16, v166
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v170, 16, v169
	v_wmma_i32_16x16x16_iu8 v[169:176], v[225:228], v[185:188], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v185, v147 offset:19280
	ds_load_u8 v186, v147 offset:19216
	v_wmma_i32_16x16x16_iu8 v[177:184], v[237:240], v[189:192], v[177:184] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[169:176], v[229:232], v[189:192], v[169:176] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v169, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v177, v177
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	ds_load_u8 v186, v147 offset:19408
	ds_load_u8 v187, v147 offset:19344
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v184, v184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v147 offset:19024
	ds_load_u8 v188, v147 offset:18960
	v_lshl_or_b32 v204, v186, 16, v185
	ds_load_u8 v185, v147 offset:18768
	ds_load_u8 v186, v147 offset:18704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v147 offset:19152
	ds_load_u8 v189, v147 offset:19088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v203, v188, 16, v187
	ds_load_u8 v186, v147 offset:18896
	ds_load_u8 v187, v147 offset:18832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	v_lshl_or_b32 v202, v186, 16, v185
	ds_load_u8 v185, v147 offset:18448
	ds_load_u8 v186, v147 offset:18512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v185, v186, 0xc0c0004
	ds_load_u8 v186, v147 offset:18640
	ds_load_u8 v187, v147 offset:18576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v201, v186, 16, v185
	ds_load_u8 v185, v147 offset:20304
	ds_load_u8 v186, v147 offset:20240
	v_wmma_i32_16x16x16_iu8 v[193:200], v[233:236], v[201:204], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	ds_load_u8 v186, v147 offset:20432
	ds_load_u8 v187, v147 offset:20368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v147 offset:20048
	ds_load_u8 v188, v147 offset:19984
	v_lshl_or_b32 v208, v186, 16, v185
	ds_load_u8 v185, v147 offset:19792
	ds_load_u8 v186, v147 offset:19728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v147 offset:20176
	ds_load_u8 v189, v147 offset:20112
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v207, v188, 16, v187
	ds_load_u8 v186, v147 offset:19920
	ds_load_u8 v187, v147 offset:19856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	v_lshl_or_b32 v206, v186, 16, v185
	ds_load_u8 v185, v147 offset:19536
	ds_load_u8 v186, v147 offset:19472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	ds_load_u8 v186, v147 offset:19664
	ds_load_u8 v187, v147 offset:19600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v205, v186, 16, v185
	v_wmma_i32_16x16x16_iu8 v[185:192], v[225:228], v[201:204], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v201, v147 offset:19296
	ds_load_u8 v202, v147 offset:19232
	v_wmma_i32_16x16x16_iu8 v[193:200], v[237:240], v[205:208], v[193:200] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[185:192], v[229:232], v[205:208], v[185:192] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v195, v195
	v_cvt_f32_i32_e32 v185, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v192, v192
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v194, v194
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	ds_load_u8 v202, v147 offset:19424
	ds_load_u8 v203, v147 offset:19360
	v_cvt_f32_i32_e32 v197, v197
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v199, v199
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v147 offset:19040
	ds_load_u8 v204, v147 offset:18976
	v_lshl_or_b32 v220, v202, 16, v201
	ds_load_u8 v201, v147 offset:18784
	ds_load_u8 v202, v147 offset:18720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	ds_load_u8 v204, v147 offset:19168
	ds_load_u8 v205, v147 offset:19104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v204, v205, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v219, v204, 16, v203
	ds_load_u8 v202, v147 offset:18912
	ds_load_u8 v203, v147 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	v_lshl_or_b32 v218, v202, 16, v201
	ds_load_u8 v201, v147 offset:18464
	ds_load_u8 v202, v147 offset:18528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v201, v201, v202, 0xc0c0004
	ds_load_u8 v202, v147 offset:18656
	ds_load_u8 v203, v147 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v217, v202, 16, v201
	ds_load_u8 v201, v147 offset:20320
	ds_load_u8 v202, v147 offset:20256
	v_wmma_i32_16x16x16_iu8 v[209:216], v[233:236], v[217:220], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	ds_load_u8 v202, v147 offset:20448
	ds_load_u8 v203, v147 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v147 offset:20064
	ds_load_u8 v204, v147 offset:20000
	v_lshl_or_b32 v224, v202, 16, v201
	ds_load_u8 v201, v147 offset:19808
	ds_load_u8 v202, v147 offset:19744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	ds_load_u8 v204, v147 offset:20192
	ds_load_u8 v205, v147 offset:20128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v204, v205, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v223, v204, 16, v203
	ds_load_u8 v202, v147 offset:19936
	ds_load_u8 v203, v147 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	v_lshl_or_b32 v222, v202, 16, v201
	ds_load_u8 v201, v147 offset:19552
	ds_load_u8 v202, v147 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	ds_load_u8 v202, v147 offset:19680
	ds_load_u8 v203, v147 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v221, v202, 16, v201
	v_wmma_i32_16x16x16_iu8 v[201:208], v[225:228], v[217:220], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v217, v147 offset:19056
	ds_load_u8 v218, v147 offset:18992
	v_wmma_i32_16x16x16_iu8 v[209:216], v[237:240], v[221:224], v[209:216] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[201:208], v[229:232], v[221:224], v[201:208] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v216, v216
	v_cvt_f32_i32_e32 v202, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v212, v212
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v215, v215
	v_cvt_f32_i32_e32 v209, v209
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	ds_load_u8 v218, v147 offset:19184
	ds_load_u8 v219, v147 offset:19120
	v_cvt_f32_i32_e32 v214, v214
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v213, v213
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	ds_load_u8 v219, v147 offset:18800
	ds_load_u8 v220, v147 offset:18736
	v_lshl_or_b32 v243, v218, 16, v217
	ds_load_u8 v217, v147 offset:18544
	ds_load_u8 v218, v147 offset:18480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v219, v220, v219, 0xc0c0004
	ds_load_u8 v220, v147 offset:18928
	ds_load_u8 v221, v147 offset:18864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v220, v221, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v242, v220, 16, v219
	ds_load_u8 v218, v147 offset:18672
	ds_load_u8 v219, v147 offset:18608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	v_lshl_or_b32 v241, v218, 16, v217
	ds_load_u8 v217, v147 offset:19312
	ds_load_u8 v218, v147 offset:19248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	ds_load_u8 v218, v147 offset:19376
	ds_load_u8 v219, v159 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v218, v219, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v244, v218, 16, v217
	ds_load_u8 v217, v147 offset:20080
	ds_load_u8 v218, v147 offset:20016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	ds_load_u8 v218, v147 offset:20208
	ds_load_u8 v219, v147 offset:20144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	ds_load_u8 v219, v147 offset:19824
	ds_load_u8 v220, v147 offset:19760
	v_lshl_or_b32 v247, v218, 16, v217
	ds_load_u8 v217, v147 offset:19568
	ds_load_u8 v218, v147 offset:19504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v219, v220, v219, 0xc0c0004
	ds_load_u8 v220, v147 offset:19952
	ds_load_u8 v221, v147 offset:19888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v220, v221, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v246, v220, 16, v219
	ds_load_u8 v218, v147 offset:19696
	ds_load_u8 v219, v147 offset:19632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	v_lshl_or_b32 v245, v218, 16, v217
	ds_load_u8 v217, v147 offset:20336
	ds_load_u8 v218, v147 offset:20272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	ds_load_u8 v218, v147 offset:20400
	ds_load_u8 v219, v160 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v218, v219, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v248, v218, 16, v217
	v_wmma_i32_16x16x16_iu8 v[217:224], v[225:228], v[241:244], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[217:224], v[229:232], v[245:248], v[217:224] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[225:232], v[233:236], v[241:244], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v234, v20
	v_cvt_f32_i32_e32 v20, v59
	v_cvt_f32_i32_e32 v59, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[225:232], v[237:240], v[245:248], v[225:232] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v62, v9
	v_cvt_f32_i32_e32 v9, v12
	v_cvt_f32_i32_e32 v233, v17
	v_cvt_f32_i32_e32 v235, v19
	v_cvt_f32_i32_e32 v17, v58
	v_cvt_f32_i32_e32 v19, v60
	v_cvt_f32_i32_e32 v58, v63
	v_cvt_f32_i32_e32 v60, v61
	v_cvt_f32_i32_e32 v61, v10
	v_cvt_f32_i32_e32 v63, v11
	v_cvt_f32_i32_e32 v239, v13
	v_cvt_f32_i32_e32 v13, v26
	v_cvt_f32_i32_e32 v26, v31
	v_cvt_f32_i32_e32 v31, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v225
	v_cvt_f32_i32_e32 v225, v226
	v_cvt_f32_i32_e32 v226, v227
	v_cvt_f32_i32_e32 v227, v228
	v_cvt_f32_i32_e32 v228, v229
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v229, v9, v168
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[9:12], v152 offset:20480
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v237, v15
	v_cvt_f32_i32_e32 v238, v14
	v_cvt_f32_i32_e32 v14, v25
	v_cvt_f32_i32_e32 v15, v28
	v_cvt_f32_i32_e32 v25, v32
	v_cvt_f32_i32_e32 v32, v43
	v_cvt_f32_i32_e32 v43, v46
	v_cvt_f32_i32_e32 v46, v230
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_mov_b16_e64 v230.l, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v29, v42
	v_cvt_f32_i32_e32 v42, v47
	v_cvt_f32_i32_e32 v47, v231
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v231.l, v230.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v15, v167
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v236, v18
	v_cvt_f32_i32_e32 v18, v57
	v_cvt_f32_i32_e32 v57, v64
	v_cvt_f32_i32_e32 v64, v16
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v231.h, v12.l
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v16, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v13, v167
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v27, v30
	v_cvt_f32_i32_e32 v30, v41
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v121, v15, v231
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v31, v166
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v165
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v217, v217
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v137, v229, v231
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v218, v218
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v105, v15, v231
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v19, v31
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v19.l, v230.l
	v_mov_b16_e32 v19.h, v11.l
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v219, v219
	v_cvt_f32_i32_e32 v220, v220
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v89, v15, v231
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v63, v168
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v41, v48
	v_cvt_f32_i32_e32 v221, v221
	v_cvt_f32_i32_e32 v222, v222
	v_cvt_f32_i32_e32 v223, v223
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v138, v15, v19
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v15, v16, v167 :: v_dual_lshlrev_b32 v16, 16, v10
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v224, v224
	v_cvt_f32_i32_e32 v48, v232
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v10, 0xffff0000, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v122, v15, v19 :: v_dual_mul_f32 v15, v32, v166
	v_fmac_f32_e32 v123, v13, v16
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v13, v29, v166 :: v_dual_and_b32 v12, 0xffff0000, v12
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v106, v15, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v15, v20, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v107, v13, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v17, v31
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v17, v153, s6, 1
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v90, v15, v19 :: v_dual_mul_f32 v15, v61, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v13, v16
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v62, v168
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v139, v15, v16
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v15, 16, v9
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v16, v151, s5, 1
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v140, v13, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_mul_f32 v13, v14, v167
	v_add_lshl_u32 v14, v149, s5, 1
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v124, v13, v15 :: v_dual_mul_f32 v13, v30, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v108, v13, v15
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v18, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v92, v13, v15
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v13, v148, s5, 1
	v_add_lshl_u32 v15, v150, s5, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x3
	buffer_load_u16 v18, v13, s[8:11], 0 offen
	buffer_load_u16 v29, v14, s[8:11], 0 offen
	buffer_load_u16 v30, v15, s[8:11], 0 offen
	buffer_load_u16 v32, v16, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[13:16], v152 offset:20496
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v230.h, v13.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v61, 16, v18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v164, v17 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v152 offset:20480
	v_mul_f32_e32 v62, v169, v61
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v62, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v62, v170, v61
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v139, v62, v18 :: v_dual_mul_f32 v62, v171, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v62, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v62, v172, v61
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v137, v62, v20 :: v_dual_mul_f32 v62, v185, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v124, v62, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v62, v186, v29
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v123, v62, v18 :: v_dual_mul_f32 v62, v187, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v122, v62, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v62, v188, v29
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v121, v62, v20 :: v_dual_mul_f32 v62, v201, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v62, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v62, v202, v30
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v107, v62, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v62, v203, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v106, v62, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v62, v204, v30
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v105, v62, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v62, v217, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v92, v62, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v218, v32
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v91, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v219, v32
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v18, 16, v16
	v_and_b32_e32 v16, 0xffff0000, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v90, v17, v19 :: v_dual_mul_f32 v17, v220, v32
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v13, 0xffff0000, v13
	v_and_b32_e32 v11, 0xffff0000, v11
	v_and_b32_e32 v9, 0xffff0000, v9
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v89, v17, v20
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v64, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v133, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v25, v167
	v_mul_f32_e32 v25, v173, v61
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v117, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v41, v166
	v_mul_f32_e32 v41, v32, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v101, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v57, v31
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v83, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v237, v168 :: v_dual_lshlrev_b32 v18, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v134, v17, v18 :: v_dual_and_b32 v15, 0xffff0000, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v26, v167
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v118, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v42, v166 :: v_dual_mul_f32 v42, v32, v228
	v_mul_f32_e32 v26, v29, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v102, v17, v18 :: v_dual_mul_f32 v17, v58, v31
	v_dual_fmac_f32 v86, v17, v18 :: v_dual_mul_f32 v17, v238, v168
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v18, 16, v14
	v_and_b32_e32 v14, 0xffff0000, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v135, v17, v18
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v27, v167
	v_mul_f32_e32 v27, v29, v195
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v119, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v43, v166
	v_mul_f32_e32 v43, v32, v227
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v103, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v59, v31
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v87, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v239, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v136, v17, v230 :: v_dual_mul_f32 v17, v28, v167
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v28, v29, v194
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v120, v17, v230
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v44, v166
	v_mul_f32_e32 v44, v32, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v104, v17, v230 :: v_dual_mul_f32 v17, v60, v31
	v_fmac_f32_e32 v88, v17, v230
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[17:20], v152 offset:20496
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v136, v25, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v174, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v135, v25, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v175, v61
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v134, v25, v19 :: v_dual_mul_f32 v25, v176, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v133, v25, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v189, v29
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v120, v25, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v190, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v119, v25, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v191, v29
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v118, v25, v19 :: v_dual_mul_f32 v25, v192, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v25, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v205, v30
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v104, v25, v17 :: v_dual_mul_f32 v25, v206, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v103, v25, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v207, v30
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v102, v25, v19 :: v_dual_mul_f32 v25, v208, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v25, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v221, v32
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v88, v25, v17 :: v_dual_mul_f32 v17, v222, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v29, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v87, v17, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v223, v32 :: v_dual_mul_f32 v18, v61, v183
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v86, v17, v19 :: v_dual_mul_f32 v17, v224, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v19, v61, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v83, v17, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v168, v233
	v_mul_f32_e32 v20, v61, v181
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v131, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v167, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v33, v30, v215 :: v_dual_fmac_f32 v116, v17, v9
	v_mul_f32_e32 v17, v166, v49
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v100, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v31, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v85, v17, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v168, v22
	v_mul_f32_e32 v22, v29, v198
	v_mul_f32_e32 v17, v61, v182
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v127, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v167, v38 :: v_dual_mul_f32 v38, v32, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v111, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v166, v54
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v95, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v31, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v79, v9, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v168, v23
	v_mul_f32_e32 v23, v29, v199
	v_mul_f32_e32 v14, v61, v180
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v126, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v167, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v39, v32, v46 :: v_dual_fmac_f32 v110, v9, v15
	v_mul_f32_e32 v9, v166, v55
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v94, v9, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v31, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v78, v9, v15 :: v_dual_mul_f32 v9, v168, v24
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v24, v29, v200
	v_mul_f32_e32 v15, v61, v179
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v125, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v167, v40 :: v_dual_mul_f32 v40, v32, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v32, v32, v225 :: v_dual_fmac_f32 v109, v9, v16
	v_mul_f32_e32 v9, v166, v56
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v93, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v31, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v77, v9, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v168, v21 :: v_dual_mul_f32 v16, v61, v178
	v_mul_f32_e32 v21, v29, v193
	v_mul_f32_e32 v29, v30, v209
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v128, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v167, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v37, v30, v211 :: v_dual_fmac_f32 v112, v9, v13
	v_mul_f32_e32 v9, v166, v53
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v96, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v31, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v80, v9, v13 :: v_dual_mul_f32 v9, v168, v234
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v13, v31, v66
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v129, v9, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v167, v36 :: v_dual_fmac_f32 v84, v13, v10
	v_dual_mul_f32 v13, v61, v177 :: v_dual_mul_f32 v36, v30, v212
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v113, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v166, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v97, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v31, v68
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v81, v9, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v168, v235 :: v_dual_mul_f32 v12, v166, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v130, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v167, v35
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v99, v12, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v35, v30, v213 :: v_dual_fmac_f32 v114, v9, v11
	v_mul_f32_e32 v9, v166, v51
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v98, v9, v11
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v31, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v31, v30, v214 :: v_dual_fmac_f32 v82, v9, v11
	v_mul_f32_e32 v9, v168, v236
	v_dual_mul_f32 v11, v167, v34 :: v_dual_mul_f32 v34, v30, v216
	v_mul_f32_e32 v30, v30, v210
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v132, v9, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v115, v11, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v152 offset:20992
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v131, v13, v9 :: v_dual_fmac_f32 v132, v16, v10
	v_dual_fmac_f32 v130, v15, v11 :: v_dual_fmac_f32 v129, v14, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[13:16], v152 offset:21008
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v116, v21, v9 :: v_dual_fmac_f32 v115, v28, v10
	v_dual_fmac_f32 v114, v27, v11 :: v_dual_fmac_f32 v113, v26, v12
	v_dual_fmac_f32 v100, v29, v9 :: v_dual_fmac_f32 v99, v30, v10
	v_dual_fmac_f32 v98, v37, v11 :: v_dual_fmac_f32 v97, v36, v12
	v_dual_fmac_f32 v85, v38, v9 :: v_dual_fmac_f32 v84, v32, v10
	v_dual_fmac_f32 v82, v44, v11 :: v_dual_fmac_f32 v81, v43, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v128, v20, v13 :: v_dual_fmac_f32 v127, v17, v14
	v_dual_fmac_f32 v126, v18, v15 :: v_dual_fmac_f32 v125, v19, v16
	v_dual_fmac_f32 v112, v25, v13 :: v_dual_fmac_f32 v111, v22, v14
	v_dual_fmac_f32 v110, v23, v15 :: v_dual_fmac_f32 v109, v24, v16
	v_fmac_f32_e32 v96, v35, v13
	v_dual_fmac_f32 v95, v31, v14 :: v_dual_fmac_f32 v94, v33, v15
	v_fmac_f32_e32 v93, v34, v16
	v_dual_fmac_f32 v80, v42, v13 :: v_dual_fmac_f32 v79, v39, v14
	v_dual_fmac_f32 v78, v40, v15 :: v_dual_fmac_f32 v77, v41, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v141 :: v_dual_mov_b32 v2, v142
	v_mov_b32_e32 v3, v143
.LBB0_7:                                ; %._crit_edge
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v4, |v139|, |v139|
	v_max_f32_e64 v5, |v140|, |v140|
	v_max3_f32 v6, |v137|, |v136|, |v135|
	v_max3_f32 v7, |v132|, |v130|, |v129|
	v_max3_f32 v8, |v128|, |v127|, |v126|
	v_max_f32_e64 v9, |v124|, |v124|
	v_max_f32_e32 v4, v5, v4
	v_max_f32_e64 v5, |v123|, |v123|
	v_max3_f32 v12, |v115|, |v114|, |v113|
	v_max3_f32 v7, v7, v8, |v125|
	v_max_f32_e64 v8, |v108|, |v108|
	v_max3_f32 v4, v4, |v138|, v6
	v_max_f32_e64 v6, |v107|, |v107|
	v_max_f32_e32 v5, v9, v5
	v_max3_f32 v9, |v121|, |v120|, |v119|
	v_max3_f32 v13, |v112|, |v111|, |v110|
	v_max3_f32 v14, |v99|, |v98|, |v97|
	v_max_f32_e32 v6, v8, v6
	v_max3_f32 v8, |v105|, |v104|, |v103|
	v_max3_f32 v15, |v96|, |v95|, |v94|
	v_max3_f32 v10, |v134|, |v133|, |v131|
	v_max3_f32 v11, |v118|, |v117|, |v116|
	v_max3_f32 v5, v5, |v122|, v9
	v_max3_f32 v9, v12, v13, |v109|
	v_max3_f32 v12, |v102|, |v101|, |v100|
	v_max3_f32 v6, v6, |v106|, v8
	v_max3_f32 v8, v14, v15, |v93|
	v_max_f32_e64 v13, |v91|, |v91|
	v_max_f32_e64 v14, |v92|, |v92|
	v_max3_f32 v4, v4, v10, v7
	v_max3_f32 v5, v5, v11, v9
	v_max3_f32 v6, v6, v12, v8
	s_mov_b32 s0, 0x76543210
	v_max_f32_e32 v7, v14, v13
	v_max3_f32 v8, |v89|, |v88|, |v87|
	v_max3_f32 v10, |v84|, |v82|, |v81|
	v_max3_f32 v11, |v80|, |v79|, |v78|
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v12, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v6, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v9, |v86|, |v83|, |v85|
	v_max3_f32 v7, v7, |v90|, v8
	v_max3_f32 v8, v10, v11, |v77|
	v_dual_max_f32 v10, v12, v12 :: v_dual_max_f32 v11, v13, v13
	v_dual_max_f32 v12, v14, v14 :: v_dual_and_b32 v13, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v14, v7, v9, v8
	v_dual_max_f32 v8, v4, v10 :: v_dual_max_f32 v9, v5, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v10, v6, v12 :: v_dual_lshlrev_b32 v5, 5, v13
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v4, v13, 9, 0
	v_permlanex16_b32 v6, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x80, v0
	v_and_b32_e32 v7, 0x60, v0
	v_and_or_b32 v3, 0x680, v3, v5
	v_lshl_add_u32 v4, v1, 2, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v11, v6, v6 :: v_dual_lshlrev_b32 v6, 1, v12
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v15, v5, v7
	v_lshrrev_b32_e32 v16, 3, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v4, v2, 4, v4
	v_xor_b32_e32 v3, v3, v7
	v_lshl_add_u32 v17, v1, 6, 0
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v11, v14, v11 :: v_dual_add_nc_u32 v12, 0, v12
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v4, v4, v6, v15
.Ltmp36:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s4, s29, 31
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v3, v17, v16, v3
.Ltmp38:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s4, s4, 24
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v1, 5, v1
	ds_store_b128 v4, v[8:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v3
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp40:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s4, s29, s4
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v3, v8 :: v_dual_mov_b32 v14, v10
	v_mov_b32_e32 v4, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v8, v8, v8
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	v_max_f32_e32 v15, v11, v11
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v3, v8, v3 :: v_dual_max_f32 v8, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, v9, v4 :: v_dual_max_f32 v9, v14, v14
	v_max_f32_e32 v10, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v11, v3 :: v_dual_mov_b32 v14, v4
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v8, v8, v9 :: v_dual_max_f32 v9, v15, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v10, v8 :: v_dual_mov_b32 v15, v9
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v3, v3, v11 :: v_dual_max_f32 v4, v4, v14
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v14, v3 :: v_dual_mov_b32 v15, v4
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v10, v8, v10 :: v_dual_max_f32 v11, v9, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v16, v10 :: v_dual_mov_b32 v17, v11
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v8, v14, v14
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v14, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v15, v15
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v8, v3, v8
.Ltmp63:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v76, v7
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v4, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v3, v16, v16 :: v_dual_max_f32 v4, v17, v17
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v2
.Ltmp66:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v76, 6, v0
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v10, v10, v3
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v3, v13, 4, 0
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v11, v11, v4
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v4, v12, v14, v2
.Ltmp71:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v5, 0x1b00, v76, v5
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v3, v1, v2
	ds_store_b128 v4, v[8:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v1
.Ltmp73:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v5, v5, v75, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v1, v1, v1
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v2, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v8, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v3
	v_rcp_f32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v14, v10
	v_div_scale_f32 v15, vcc_lo, v1, 0x40e00000, v1
	v_rcp_f32_e32 v12, v9
	v_div_scale_f32 v19, s0, v3, 0x40e00000, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v17, -v8, v11, 1.0
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	v_fma_f32 v20, -v10, v14, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v18, -v9, v12, 1.0
	v_fmac_f32_e32 v11, v17, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v4
	v_fmac_f32_e32 v14, v20, v14
	v_div_scale_f32 v22, s2, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v16, v13
	v_mul_f32_e32 v20, v15, v11
	v_div_scale_f32 v17, s1, v2, 0x40e00000, v2
	v_fma_f32 v23, -v8, v20, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v20, v23, v11
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v23.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v12, v18, v12
	v_fma_f32 v18, -v13, v16, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, v19, v12
	v_fmac_f32_e32 v16, v18, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v9, v21, v19
	v_dual_mul_f32 v25, v22, v16 :: v_dual_mul_f32 v18, v17, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v21, v24, v12
	v_fma_f32 v24, -v13, v25, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v10, v18, v17
	v_fma_f32 v9, -v9, v21, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v24, v16
	v_fma_f32 v8, -v8, v20, v15
	v_fmac_f32_e32 v18, v26, v14
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v15.h, v23.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v8, v8, v11, v20
	v_fma_f32 v10, -v10, v18, v17
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v11, -v13, v25, v22
	v_div_fmas_f32 v9, v9, v12, v21
	v_div_fixup_f32 v1, v8, 0x40e00000, v1
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v8, v10, v14, v18
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v15.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v9, v9, 0x40e00000, v3
	v_div_fmas_f32 v3, v11, v16, v25
	v_div_fixup_f32 v2, v8, 0x40e00000, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v8.h, v23.h
	v_and_b32_e32 v10, 1, v15
	v_mov_b16_e32 v23.l, v9.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v11, v3, 0x40e00000, v4
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v8.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v1, v10, 0x7fff
	v_and_b32_e32 v1, 1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v23.l, v11.h
	v_and_b32_e32 v4, 1, v8
.Ltmp74:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v8, 4, v75
.Ltmp75:
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 0xffff0000, v3
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v9, v1, 0x7fff
	v_and_b32_e32 v9, 1, v23
	v_add3_u32 v4, v2, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v10, null, v26, v26, v140
	v_div_scale_f32 v12, null, v26, v26, v139
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v11, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v11, v10
	v_div_scale_f32 v15, null, v26, v26, v138
	v_rcp_f32_e32 v13, v12
	v_div_scale_f32 v14, vcc_lo, v140, v26, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v18, v15
	v_div_scale_f32 v16, s0, v139, v26, v139
	v_div_scale_f32 v17, null, v26, v26, v137
	v_fma_f32 v9, -v10, v11, 1.0
	v_div_scale_f32 v20, s1, v138, v26, v138
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v12, v13, 1.0
	v_rcp_f32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v11, v9, v11
	v_fma_f32 v9, -v15, v18, 1.0
	v_div_scale_f32 v25, null, v26, v26, v136
	v_fmac_f32_e32 v13, v19, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v23, v14, v11 :: v_dual_fmac_f32 v18, v9, v18
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v39, 0xffff0000, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v19, s2, v137, v26, v137
	v_mul_f32_e32 v24, v16, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v27, -v10, v23, v14
	v_mul_f32_e32 v30, v20, v18
	v_fma_f32 v29, -v17, v22, 1.0
	v_div_scale_f32 v41, null, v39, v39, v121
	v_fma_f32 v28, -v12, v24, v16
	v_fmac_f32_e32 v23, v27, v11
	v_rcp_f32_e32 v27, v25
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v9, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v43, v41
	v_fmac_f32_e32 v24, v28, v13
	v_fma_f32 v10, -v10, v23, v14
	v_fma_f32 v28, -v15, v30, v20
	v_div_scale_f32 v45, null, v39, v39, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v12, -v12, v24, v16
	v_div_scale_f32 v16, null, v26, v26, v135
	v_div_fmas_f32 v10, v10, v11, v23
	v_fma_f32 v11, -v25, v27, 1.0
	v_fmac_f32_e32 v22, v29, v22
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v23, v16
	v_div_fmas_f32 v12, v12, v13, v24
	v_dual_fmac_f32 v27, v11, v27 :: v_dual_fmac_f32 v30, v28, v18
	v_div_scale_f32 v24, s0, v136, v26, v136
	v_mul_f32_e32 v14, v19, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v12, v26, v139
	v_fma_f32 v12, -v15, v30, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v15, v24, v27
	v_fma_f32 v28, -v16, v23, 1.0
	v_fma_f32 v13, -v17, v14, v19
	v_div_scale_f32 v20, s3, v135, v26, v135
	v_div_scale_f32 v29, null, v26, v26, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v14, v13, v22 :: v_dual_fmac_f32 v23, v28, v23
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, null, v39, v39, v116
	v_fma_f32 v13, -v17, v14, v19
	v_fma_f32 v17, -v25, v15, v24
	v_mul_f32_e32 v19, v20, v23
	v_div_scale_f32 v52, null, v39, v39, v110
	v_div_scale_f32 v54, null, v39, v39, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v15, v17, v27
	v_rcp_f32_e32 v17, v29
	v_div_fmas_f32 v12, v12, v18, v30
	s_mov_b32 vcc_lo, s2
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v21, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v13, v13, v22, v14
	v_fma_f32 v14, -v16, v19, v20
	v_fma_f32 v24, -v25, v15, v24
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v55, null, v21, v21, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, v14, v23
	v_fma_f32 v14, -v29, v17, 1.0
	v_div_fmas_f32 v15, v24, v27, v15
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v56, null, v21, v21, v106
	v_fmac_f32_e32 v17, v14, v17
	v_div_scale_f32 v28, null, v26, v26, v134
	v_div_scale_f32 v25, null, v26, v26, v131
	v_div_scale_f32 v27, s0, v133, v26, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v18, v28
	v_rcp_f32_e32 v24, v25
	v_div_fixup_f32 v14, v15, v26, v136
	v_div_scale_f32 v30, null, v26, v26, v132
	v_div_scale_f32 v35, null, v26, v26, v127
	v_div_scale_f32 v36, null, v26, v26, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v32, v30
	v_fma_f32 v22, -v28, v18, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v25, v24, 1.0
	v_div_scale_f32 v37, null, v26, v26, v125
	v_div_fixup_f32 v10, v10, v26, v140
	v_fmac_f32_e32 v18, v22, v18
	v_div_scale_f32 v22, s1, v134, v26, v134
	v_fmac_f32_e32 v24, v31, v24
	v_fma_f32 v16, -v16, v19, v20
	v_div_scale_f32 v31, null, v26, v26, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v20, v22, v18
	v_fma_f32 v33, -v30, v32, 1.0
	v_div_fmas_f32 v16, v16, v23, v19
	v_mul_f32_e32 v23, v27, v17
	v_rcp_f32_e32 v34, v31
	v_fma_f32 v19, -v28, v20, v22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v15, v16, v26, v135
	v_fma_f32 v16, -v29, v23, v27
	v_rcp_f32_e32 v38, v37
	v_fmac_f32_e32 v20, v19, v18
	v_div_scale_f32 v19, s2, v131, v26, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v16, v17
	v_div_fixup_f32 v12, v12, v26, v138
	v_fma_f32 v22, -v28, v20, v22
	v_div_fixup_f32 v13, v13, v26, v137
	v_div_scale_f32 v57, null, v21, v21, v105
	v_div_scale_f32 v61, null, v21, v21, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v16, v22, v18, v20
	v_fma_f32 v18, -v29, v23, v27
	v_fma_f32 v27, -v31, v34, 1.0
	v_div_scale_f32 v29, null, v26, v26, v129
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v16, v16, v26, v134
	v_fmac_f32_e32 v34, v27, v34
	v_mul_f32_e32 v28, v19, v24
	v_div_fmas_f32 v17, v18, v17, v23
	v_rcp_f32_e32 v23, v29
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, s3, v132, v26, v132
	v_fma_f32 v20, -v25, v28, v19
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v27, null, v26, v26, v128
	v_div_fixup_f32 v17, v17, v26, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v20, v24
	v_div_scale_f32 v20, s0, v130, v26, v130
	v_rcp_f32_e32 v58, v57
	v_div_scale_f32 v63, null, v21, v21, v99
	v_fma_f32 v19, -v25, v28, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v25, v20, v34
	v_div_scale_f32 v65, null, v21, v21, v96
	v_div_scale_f32 v72, null, v9, v9, v89
	v_div_fmas_f32 v19, v19, v24, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v28, -v31, v25, v20
	v_mul_f32_e32 v22, v33, v32
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v25, v28, v34
	v_fma_f32 v18, -v30, v22, v33
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v20, -v31, v25, v20
	v_fmac_f32_e32 v22, v18, v32
	v_fma_f32 v18, -v29, v23, 1.0
	v_div_scale_f32 v31, s2, v128, v26, v128
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v24, -v30, v22, v33
	v_rcp_f32_e32 v30, v27
	v_fmac_f32_e32 v23, v18, v23
	v_div_scale_f32 v33, s1, v129, v26, v129
	v_div_fmas_f32 v22, v24, v32, v22
	v_rcp_f32_e32 v24, v35
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v18, v19, v26, v131
	v_div_fmas_f32 v20, v20, v34, v25
	v_div_scale_f32 v34, s0, v127, v26, v127
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v32, -v27, v30, 1.0
	v_div_fixup_f32 v19, v22, v26, v132
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v20, v26, v130
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v30, v32, v30
	v_fma_f32 v32, -v35, v24, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v24, v32, v24
	v_rcp_f32_e32 v32, v36
	v_mul_f32_e32 v28, v33, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v22, -v29, v28, v33
	v_fma_f32 v40, -v36, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v40, v32
	v_fmac_f32_e32 v28, v22, v23
	v_div_scale_f32 v40, null, v39, v39, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v29, v28, v33
	v_mul_f32_e32 v33, v34, v24
	v_div_fmas_f32 v22, v22, v23, v28
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v23, -v35, v33, v34
	v_div_scale_f32 v28, s1, v126, v26, v126
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v22, v22, v26, v129
	v_fmac_f32_e32 v33, v23, v24
	v_mul_f32_e32 v25, v31, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v29, -v27, v25, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v29, v30
	v_fma_f32 v29, -v37, v38, 1.0
	v_fma_f32 v27, -v27, v25, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v31, v28, v32 :: v_dual_fmac_f32 v38, v29, v38
	v_div_scale_f32 v29, s3, v125, v26, v125
	v_div_fmas_f32 v23, v27, v30, v25
	v_fma_f32 v25, -v35, v33, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v36, v31, v28
	v_div_scale_f32 v35, null, v39, v39, v123
	v_mul_f32_e32 v34, v29, v38
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v31, v27, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v27, v35
	v_div_fmas_f32 v24, v25, v24, v33
	v_fma_f32 v25, -v37, v34, v29
	v_rcp_f32_e32 v30, v40
	v_fma_f32 v28, -v36, v31, v28
	v_div_scale_f32 v36, null, v39, v39, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v34, v25, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v23, v26, v128
	v_fma_f32 v25, -v35, v27, 1.0
	v_div_fixup_f32 v24, v24, v26, v127
	v_fma_f32 v29, -v37, v34, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v33, -v40, v30, 1.0
	v_div_scale_f32 v37, s1, v123, v39, v123
	v_fmac_f32_e32 v27, v25, v27
	v_div_fmas_f32 v28, v28, v32, v31
	v_rcp_f32_e32 v32, v36
	v_fmac_f32_e32 v30, v33, v30
	v_div_scale_f32 v33, s0, v124, v39, v124
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v28, v26, v126
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v31, v33, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v42, -v36, v32, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v32, v42, v32
	v_fma_f32 v42, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v42, v43
	v_div_fmas_f32 v29, v29, v38, v34
	v_fma_f32 v34, -v40, v31, v33
	v_mul_f32_e32 v38, v37, v27
	v_div_scale_f32 v42, s3, v121, v39, v121
	v_div_fixup_f32 v26, v29, v26, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v34, v30
	v_fma_f32 v28, -v35, v38, v37
	v_div_scale_f32 v29, s2, v122, v39, v122
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v33, -v40, v31, v33
	v_fmac_f32_e32 v38, v28, v27
	v_mul_f32_e32 v40, v29, v32
	v_div_scale_f32 v34, null, v39, v39, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v33, v30, v31
	v_fma_f32 v30, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v31, -v36, v40, v29
	v_mul_f32_e32 v33, v42, v43
	v_div_scale_f32 v37, null, v39, v39, v119
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v40, v31, v32
	v_div_fmas_f32 v30, v30, v27, v38
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v31, -v41, v33, v42
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v29, -v36, v40, v29
	v_div_fixup_f32 v27, v28, v39, v124
	v_div_fixup_f32 v28, v30, v39, v123
	v_fmac_f32_e32 v33, v31, v43
	v_rcp_f32_e32 v44, v34
	v_div_fmas_f32 v29, v29, v32, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v30, -v37, v38, 1.0
	v_fma_f32 v32, -v41, v33, v42
	v_div_scale_f32 v42, s1, v119, v39, v119
	v_div_scale_f32 v36, null, v39, v39, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v30, v38
	v_div_fmas_f32 v30, v32, v43, v33
	v_rcp_f32_e32 v33, v45
	v_fma_f32 v35, -v34, v44, 1.0
	v_rcp_f32_e32 v41, v36
	v_div_fixup_f32 v29, v29, v39, v122
	v_div_fixup_f32 v30, v30, v39, v121
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v43, -v45, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v33, v43, v33
	v_fmac_f32_e32 v44, v35, v44
	v_div_scale_f32 v35, s0, v120, v39, v120
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v43, s0, v117, v39, v117
	v_mul_f32_e32 v31, v35, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v47, v43, v33
	v_fma_f32 v40, -v34, v31, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v31, v40, v44 :: v_dual_mul_f32 v32, v42, v38
	v_fma_f32 v40, -v36, v41, 1.0
	v_fma_f32 v34, -v34, v31, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v37, v32, v42
	v_fmac_f32_e32 v41, v40, v41
	v_div_scale_f32 v40, s2, v118, v39, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v31, v34, v44, v31
	v_fmac_f32_e32 v32, v35, v38
	v_rcp_f32_e32 v35, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v39, v39, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v37, v32, v42
	v_div_fixup_f32 v31, v31, v39, v120
	v_rcp_f32_e32 v48, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v32, v37, v38, v32
	v_fma_f32 v49, -v46, v35, 1.0
	v_fma_f32 v37, -v45, v47, v43
	v_div_scale_f32 v38, s1, v116, v39, v116
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v47, v37, v33
	v_div_scale_f32 v49, null, v39, v39, v113
	v_div_fixup_f32 v32, v32, v39, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v37, v38, v35 :: v_dual_mul_f32 v34, v40, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v42, -v36, v34, v40
	v_fmac_f32_e32 v34, v42, v41
	v_fma_f32 v42, -v44, v48, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v36, v34, v40
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v40, s3, v115, v39, v115
	v_div_scale_f32 v42, null, v39, v39, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v36, v41, v34
	v_fma_f32 v41, -v46, v37, v38
	v_fma_f32 v36, -v45, v47, v43
	v_rcp_f32_e32 v43, v42
	v_mul_f32_e32 v45, v40, v48
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v37, v41, v35
	v_rcp_f32_e32 v41, v49
	v_div_fmas_f32 v36, v36, v33, v47
	v_fma_f32 v47, -v44, v45, v40
	v_div_fixup_f32 v33, v34, v39, v118
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v50, -v42, v43, 1.0
	v_div_fixup_f32 v34, v36, v39, v117
	v_fma_f32 v36, -v46, v37, v38
	v_fmac_f32_e32 v45, v47, v48
	v_fma_f32 v46, -v49, v41, 1.0
	v_div_scale_f32 v38, s0, v114, v39, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v36, v35, v37
	v_fma_f32 v36, -v44, v45, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v44, s1, v113, v39, v113
	v_fmac_f32_e32 v43, v50, v43
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v47, null, v39, v39, v112
	v_div_fmas_f32 v36, v36, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v48, v44, v41 :: v_dual_mul_f32 v37, v38, v43
	v_rcp_f32_e32 v40, v47
	v_div_scale_f32 v46, null, v39, v39, v111
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v45, -v42, v37, v38
	v_div_fixup_f32 v35, v35, v39, v116
	v_rcp_f32_e32 v51, v46
	v_div_fixup_f32 v36, v36, v39, v115
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v37, v45, v43
	v_fma_f32 v45, -v49, v48, v44
	v_fma_f32 v50, -v47, v40, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v38, -v42, v37, v38
	v_fmac_f32_e32 v48, v45, v41
	v_rcp_f32_e32 v45, v52
	v_fma_f32 v53, -v46, v51, 1.0
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, s2, v112, v39, v112
	v_div_fmas_f32 v37, v38, v43, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s3, v111, v39, v111
	v_fma_f32 v38, -v49, v48, v44
	v_fma_f32 v49, -v52, v45, 1.0
	v_mul_f32_e32 v42, v50, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v44, v53, v51
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v37, v37, v39, v114
	v_fmac_f32_e32 v45, v49, v45
	v_fma_f32 v43, -v47, v42, v50
	v_div_fmas_f32 v38, v38, v41, v48
	v_fma_f32 v41, -v46, v44, v53
	v_div_scale_f32 v48, s0, v110, v39, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v43, v40
	v_rcp_f32_e32 v43, v54
	s_mov_b32 vcc_lo, s2
	v_dual_mul_f32 v49, v48, v45 :: v_dual_fmac_f32 v44, v41, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v47, v42, v50
	v_div_scale_f32 v50, null, v21, v21, v108
	v_div_fixup_f32 v38, v38, v39, v113
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v47, v40, v42
	v_fma_f32 v42, -v46, v44, v53
	v_fma_f32 v46, -v52, v49, v48
	v_fma_f32 v41, -v54, v43, 1.0
	v_rcp_f32_e32 v47, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v53, s1, v109, v39, v109
	v_fmac_f32_e32 v49, v46, v45
	v_fmac_f32_e32 v43, v41, v43
	v_div_fmas_f32 v41, v42, v51, v44
	v_rcp_f32_e32 v44, v55
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v48, -v52, v49, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v50, v47, 1.0
	v_div_scale_f32 v52, s2, v108, v21, v108
	v_div_fixup_f32 v40, v40, v39, v112
	v_div_fmas_f32 v45, v48, v45, v49
	v_rcp_f32_e32 v49, v56
	v_fmac_f32_e32 v47, v42, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v42, -v55, v44, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v41, v41, v39, v111
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v36, v36
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v44, v42, v44
	v_div_fixup_f32 v42, v45, v39, v110
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v38
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v59, -v56, v49, 1.0
	v_mul_f32_e32 v46, v53, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v49, v59, v49
	v_fma_f32 v51, -v54, v46, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v46, v51, v43
	v_div_scale_f32 v51, s0, v107, v21, v107
	v_fma_f32 v45, -v54, v46, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v54, v51, v44
	v_div_fmas_f32 v43, v45, v43, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v55, v54, v51
	v_div_scale_f32 v46, s1, v106, v21, v106
	v_mul_f32_e32 v48, v52, v47
	v_div_fixup_f32 v39, v43, v39, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v54, v45, v44 :: v_dual_mul_f32 v45, v46, v49
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v53, -v50, v48, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v48, v53, v47
	v_fma_f32 v53, -v57, v58, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v50, v48, v52
	v_div_scale_f32 v52, null, v21, v21, v104
	v_div_scale_f32 v50, s3, v105, v21, v105
	v_div_fmas_f32 v43, v43, v47, v48
	v_fma_f32 v48, -v56, v45, v46
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v43, v43, v21, v108
	v_fmac_f32_e32 v45, v48, v49
	v_fma_f32 v47, -v55, v54, v51
	v_rcp_f32_e32 v51, v52
	v_div_scale_f32 v55, null, v21, v21, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v56, v45, v46
	v_div_fmas_f32 v44, v47, v44, v54
	v_div_scale_f32 v56, null, v21, v21, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v55
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v44, v44, v21, v107
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v54, -v52, v51, 1.0
	v_fmac_f32_e32 v58, v53, v58
	v_div_fmas_f32 v45, v46, v49, v45
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v43, v43
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v51, v54, v51
	v_mul_f32_e32 v53, v50, v58
	v_fma_f32 v54, -v55, v47, 1.0
	v_div_fixup_f32 v45, v45, v21, v106
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v48, -v57, v53, v50
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s1, v103, v21, v103
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v53, v48, v58
	v_div_scale_f32 v48, s0, v104, v21, v104
	v_fma_f32 v46, -v57, v53, v50
	v_rcp_f32_e32 v50, v56
	v_div_scale_f32 v57, null, v21, v21, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v46, v46, v58, v53
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v60, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v46, v46, v21, v105
	v_fma_f32 v59, -v56, v50, 1.0
	v_mul_f32_e32 v49, v48, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v46
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v50, v59, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v53, -v52, v49, v48
	v_div_scale_f32 v59, s2, v102, v21, v102
	v_fma_f32 v62, -v57, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v49, v53, v51 :: v_dual_fmac_f32 v60, v62, v60
	v_div_scale_f32 v62, s3, v101, v21, v101
	v_fma_f32 v48, -v52, v49, v48
	v_mul_f32_e32 v52, v59, v50
	v_mul_f32_e32 v58, v54, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v48, v48, v51, v49
	v_fma_f32 v51, -v56, v52, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v53, -v55, v58, v54
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v52, v51, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v53, v47
	v_rcp_f32_e32 v53, v61
	v_rcp_f32_e32 v51, v63
	v_fma_f32 v49, -v55, v58, v54
	v_mul_f32_e32 v54, v62, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v49, v49, v47, v58
	v_fma_f32 v55, -v61, v53, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v58, -v57, v54, v62
	v_div_fixup_f32 v47, v48, v21, v104
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v48, v49, v21, v103
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v55, s0, v100, v21, v100
	v_fmac_f32_e32 v54, v58, v60
	v_fma_f32 v58, -v63, v51, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v51, v58, v51
	v_fma_f32 v49, -v56, v52, v59
	v_mul_f32_e32 v56, v55, v53
	v_div_scale_f32 v59, null, v21, v21, v98
	v_div_scale_f32 v58, s1, v99, v21, v99
	v_div_fmas_f32 v49, v49, v50, v52
	v_fma_f32 v50, -v57, v54, v62
	v_fma_f32 v52, -v61, v56, v55
	v_div_scale_f32 v62, null, v21, v21, v97
	v_rcp_f32_e32 v57, v59
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v56, v52, v53
	v_rcp_f32_e32 v52, v62
	v_div_fmas_f32 v50, v50, v60, v54
	v_mul_f32_e32 v54, v58, v51
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v55, -v61, v56, v55
	v_div_fixup_f32 v49, v49, v21, v102
	v_div_fixup_f32 v50, v50, v21, v101
	v_fma_f32 v60, -v59, v57, 1.0
	v_fma_f32 v61, -v63, v54, v58
	v_div_fmas_f32 v53, v55, v53, v56
	v_fma_f32 v64, -v62, v52, 1.0
	v_rcp_f32_e32 v56, v65
	v_fmac_f32_e32 v57, v60, v57
	v_div_scale_f32 v60, s2, v98, v21, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v64, v52
	v_div_scale_f32 v64, null, v21, v21, v95
	v_dual_fmac_f32 v54, v61, v51 :: v_dual_mul_f32 v55, v60, v57
	v_div_scale_f32 v61, s0, v97, v21, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v67, v64
	v_fma_f32 v58, -v63, v54, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v59, v55, v60
	v_mul_f32_e32 v66, v61, v52
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v68, -v65, v56, 1.0
	v_div_fmas_f32 v51, v58, v51, v54
	v_fmac_f32_e32 v55, v63, v57
	v_fma_f32 v54, -v62, v66, v61
	v_div_scale_f32 v58, s1, v96, v21, v96
	v_fma_f32 v63, -v64, v67, 1.0
	v_fmac_f32_e32 v56, v68, v56
	v_fma_f32 v59, -v59, v55, v60
	v_fmac_f32_e32 v66, v54, v52
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v67, v63, v67
	v_div_scale_f32 v63, null, v21, v21, v94
	v_mul_f32_e32 v54, v58, v56
	v_div_scale_f32 v60, s3, v95, v21, v95
	v_div_fmas_f32 v55, v59, v57, v55
	v_fma_f32 v57, -v62, v66, v61
	v_rcp_f32_e32 v61, v63
	v_fma_f32 v59, -v65, v54, v58
	v_mul_f32_e32 v62, v60, v67
	v_div_scale_f32 v68, null, v21, v21, v93
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v54, v59, v56
	v_div_fmas_f32 v52, v57, v52, v66
	v_rcp_f32_e32 v57, v68
	v_fma_f32 v59, -v64, v62, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v63, v61, 1.0
	v_fma_f32 v58, -v65, v54, v58
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v53, v53, v21, v100
	v_dual_fmac_f32 v62, v59, v67 :: v_dual_fmac_f32 v61, v66, v61
	v_div_scale_f32 v59, s0, v94, v21, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v68, v57, 1.0
	v_div_fmas_f32 v54, v58, v56, v54
	v_fma_f32 v56, -v64, v62, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v58, v59, v61
	v_div_scale_f32 v60, null, v9, v9, v92
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v57, v65, v57
	v_div_fmas_f32 v56, v56, v67, v62
	v_rcp_f32_e32 v62, v60
	v_fma_f32 v65, -v63, v58, v59
	v_div_scale_f32 v64, s1, v93, v21, v93
	v_div_scale_f32 v67, null, v9, v9, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v65, v61
	v_mul_f32_e32 v66, v64, v57
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v69, v67
	v_fma_f32 v70, -v60, v62, 1.0
	v_fma_f32 v59, -v63, v58, v59
	v_div_scale_f32 v63, null, v9, v9, v90
	v_fma_f32 v65, -v68, v66, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v62, v70, v62
	v_div_fmas_f32 v58, v59, v61, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v70, v63
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v66, v65, v57
	v_div_scale_f32 v65, s2, v92, v9, v92
	v_fma_f32 v71, -v67, v69, 1.0
	v_div_fixup_f32 v56, v56, v21, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v68, v66, v64
	v_mul_f32_e32 v61, v65, v62
	v_div_scale_f32 v64, s0, v91, v9, v91
	v_fmac_f32_e32 v69, v71, v69
	v_fma_f32 v68, -v63, v70, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v71, -v60, v61, v65
	v_rcp_f32_e32 v95, v72
	v_div_fmas_f32 v57, v59, v57, v66
	v_mul_f32_e32 v73, v64, v69
	v_fmac_f32_e32 v70, v68, v70
	v_div_scale_f32 v68, s3, v90, v9, v90
	v_fmac_f32_e32 v61, v71, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v67, v73, v64
	v_div_fixup_f32 v51, v51, v21, v99
	v_mul_f32_e32 v66, v68, v70
	v_div_fixup_f32 v55, v55, v21, v98
	v_div_fixup_f32 v52, v52, v21, v97
	v_div_fixup_f32 v54, v54, v21, v96
	v_div_fixup_f32 v58, v58, v21, v94
	v_div_fixup_f32 v21, v57, v21, v93
	v_fma_f32 v57, -v60, v61, v65
	v_fmac_f32_e32 v73, v59, v69
	v_fma_f32 v59, -v63, v66, v68
	v_div_scale_f32 v65, null, v9, v9, v88
	v_fma_f32 v60, -v72, v95, 1.0
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v59, v70
	v_rcp_f32_e32 v59, v65
	v_div_fmas_f32 v57, v57, v62, v61
	v_fmac_f32_e32 v95, v60, v95
	v_div_scale_f32 v60, s1, v89, v9, v89
	v_fma_f32 v61, -v67, v73, v64
	v_fma_f32 v62, -v63, v66, v68
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v63, v60, v95
	v_div_scale_f32 v64, null, v9, v9, v87
	v_fma_f32 v67, -v65, v59, 1.0
	v_div_fmas_f32 v61, v61, v69, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v68, -v72, v63, v60
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v57, v57, v9, v92
	v_fmac_f32_e32 v59, v67, v59
	v_div_scale_f32 v67, s0, v88, v9, v88
	v_fmac_f32_e32 v63, v68, v95
	v_div_fmas_f32 v62, v62, v70, v66
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v68, v67, v59
	v_rcp_f32_e32 v66, v64
	v_fma_f32 v60, -v72, v63, v60
	v_div_fixup_f32 v62, v62, v9, v90
	v_div_scale_f32 v70, null, v9, v9, v86
	v_fma_f32 v71, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v60, v60, v95, v63
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v72, v70
	v_div_fixup_f32 v61, v61, v9, v91
	v_fmac_f32_e32 v68, v71, v59
	v_fma_f32 v69, -v64, v66, 1.0
	v_div_scale_f32 v71, null, v9, v9, v83
	v_div_fixup_f32 v60, v60, v9, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v65, v68, v67
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v62, v62
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v89, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v70, v72, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v49, v49
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v59, v65, v59, v68
	v_div_scale_f32 v65, null, v9, v9, v85
	v_fmac_f32_e32 v72, v73, v72
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v59, v59, v9, v88
	v_rcp_f32_e32 v68, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v71, v89, 1.0
	v_div_scale_f32 v88, null, v9, v9, v84
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v51, v51
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v89, v73, v89
	v_div_scale_f32 v73, s1, v83, v9, v83
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v65, v68, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v58, v58
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v68, v90, v68
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, s2, v87, v9, v87
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v90, null, v9, v9, v82
	v_mul_f32_e32 v63, v69, v66
	v_div_scale_f32 v92, s2, v85, v9, v85
	v_fma_f32 v93, -v88, v91, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v90
	v_fma_f32 v67, -v64, v63, v69
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v95, v92, v68
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s3, v84, v9, v84
	v_fmac_f32_e32 v63, v67, v66
	v_div_scale_f32 v67, s0, v86, v9, v86
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v64, -v64, v63, v69
	v_mul_f32_e32 v69, v67, v72
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v52, v52
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v63, v64, v66, v63
	v_fma_f32 v64, -v70, v69, v67
	v_mul_f32_e32 v66, v73, v89
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v63, v63, v9, v87
	v_fmac_f32_e32 v69, v64, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v71, v66, v73
	v_fma_f32 v87, -v90, v94, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v67, -v70, v69, v67
	v_fmac_f32_e32 v66, v64, v89
	v_fma_f32 v64, -v65, v95, v92
	v_mul_f32_e32 v70, v93, v91
	v_fmac_f32_e32 v94, v87, v94
	v_div_fmas_f32 v67, v67, v72, v69
	v_fma_f32 v69, -v71, v66, v73
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v95, v64, v68
	v_fma_f32 v64, -v88, v70, v93
	v_div_scale_f32 v71, s0, v82, v9, v82
	v_div_fmas_f32 v66, v69, v89, v66
	v_div_scale_f32 v69, null, v9, v9, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v64, v91
	v_mul_f32_e32 v64, v71, v94
	v_fma_f32 v65, -v65, v95, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v73, v69
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v66, v66, v9, v83
	v_fma_f32 v72, -v90, v64, v71
	v_div_fmas_f32 v65, v65, v68, v95
	v_fma_f32 v68, -v88, v70, v93
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v83, null, v9, v9, v78
	v_fmac_f32_e32 v64, v72, v94
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v69, v73, 1.0
	v_div_fixup_f32 v65, v65, v9, v85
	v_div_fmas_f32 v68, v68, v91, v70
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v70, -v90, v64, v71
	v_fmac_f32_e32 v73, v72, v73
	v_div_scale_f32 v72, null, v9, v9, v79
	v_div_fixup_f32 v68, v68, v9, v84
	v_div_scale_f32 v71, null, v9, v9, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v72
	v_div_scale_f32 v88, null, v9, v9, v77
	v_div_fixup_f32 v67, v67, v9, v86
	v_rcp_f32_e32 v86, v83
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v66, v66
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v90, v88
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v89, -v72, v85, 1.0
	v_fma_f32 v92, -v83, v86, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s1, v79, v9, v79
	v_mul_f32_e32 v95, v89, v85
	v_div_fmas_f32 v64, v70, v94, v64
	v_div_scale_f32 v84, vcc_lo, v81, v9, v81
	v_rcp_f32_e32 v70, v71
	v_fma_f32 v94, -v88, v90, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v64, v64, v9, v82
	v_mul_f32_e32 v87, v84, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v91, -v69, v87, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v71, v70, 1.0
	v_dual_fmac_f32 v87, v91, v73 :: v_dual_fmac_f32 v70, v82, v70
	v_div_scale_f32 v82, s0, v80, v9, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v69, -v69, v87, v84
	v_fma_f32 v84, -v72, v95, v89
	v_mul_f32_e32 v93, v82, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v73, v87
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v91, -v71, v93, v82
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v93, v91, v70
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s2, v78, v9, v78
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s3, v77, v9, v77
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v96, v92, v86
	v_fma_f32 v71, -v71, v93, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v97, v94, v90
	v_fmac_f32_e32 v95, v84, v85
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v91, -v83, v96, v92
	v_div_fmas_f32 v70, v71, v70, v93
	v_fma_f32 v73, -v88, v97, v94
	v_fma_f32 v71, -v72, v95, v89
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v96, v91, v86
	v_div_fixup_f32 v69, v69, v9, v81
	v_fmac_f32_e32 v97, v73, v90
	v_div_fmas_f32 v71, v71, v85, v95
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v72, -v83, v96, v92
	v_div_fixup_f32 v70, v70, v9, v80
	v_fma_f32 v73, -v88, v97, v94
	v_div_fixup_f32 v71, v71, v9, v79
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v72, v72, v86, v96
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v73, v73, v90, v97
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v72, v72, v9, v78
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v9, v73, v9, v77
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
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
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v73, v39
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v67, v67
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
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
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v77, v21
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v78, v59
	v_and_b32_e32 v21, 15, v23
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	v_and_b32_e32 v33, 15, v35
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v37, 15, v40
	v_and_b32_e32 v40, 15, v73
	v_and_b32_e32 v59, 15, v62
	v_and_b32_e32 v62, 15, v63
	v_and_b32_e32 v63, 15, v67
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v67, 10, v0
	v_and_b32_e32 v73, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v69, v69
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_cvt_i32_f32_e32 v80, v9
	v_and_b32_e32 v9, 15, v10
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
	v_and_b32_e32 v39, 15, v42
	v_and_b32_e32 v41, 15, v43
	v_and_b32_e32 v42, 15, v44
	v_and_b32_e32 v43, 15, v45
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v45, 15, v47
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v48, 15, v50
	v_and_b32_e32 v49, 15, v53
	v_and_b32_e32 v50, 15, v51
	v_and_b32_e32 v51, 15, v55
	v_and_b32_e32 v53, 15, v54
	v_and_b32_e32 v54, 15, v56
	v_and_b32_e32 v55, 15, v58
	v_and_b32_e32 v56, 15, v77
	v_and_b32_e32 v58, 15, v61
	v_and_b32_e32 v61, 15, v78
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v77, 0x1800, v67
	v_lshlrev_b32_e32 v78, 6, v73
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v77, 0, v77, v78
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v79, v64
	v_cvt_i32_f32_e32 v69, v69
	v_and_b32_e32 v57, 15, v57
	v_and_b32_e32 v60, 15, v60
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v6, v77, v7, v6
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v72, v72
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v52, 15, v52
	v_and_b32_e32 v64, 15, v66
	v_and_b32_e32 v65, 15, v65
	v_and_b32_e32 v66, 15, v68
	v_and_b32_e32 v67, 15, v79
	v_and_b32_e32 v68, 15, v69
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v6, v[9:12]
	ds_store_b128 v6, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v5
	ds_load_b128 v[17:20], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[25:28]
	ds_store_b128 v6, v[33:36] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v5
	ds_load_b128 v[33:36], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[41:44]
	ds_store_b128 v6, v[49:52] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v5
	ds_load_b128 v[49:52], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[57:60]
	ds_store_b128 v6, v[65:68] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v5
	ds_load_b128 v[65:68], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[13:16]
	ds_store_b128 v6, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v5
	ds_load_b128 v[21:24], v5 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[29:32]
	ds_store_b128 v6, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v5
	ds_load_b128 v[37:40], v5 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[45:48]
	ds_store_b128 v6, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v5
	ds_load_b128 v[53:56], v5 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v69, 15, v70
	v_and_b32_e32 v70, 15, v71
	v_and_b32_e32 v71, 15, v72
	v_and_b32_e32 v72, 15, v80
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[61:64]
	ds_store_b128 v6, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v5
	ds_load_b128 v[69:72], v5 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v17, 4, v9
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v6, v18, 4, v10
	v_lshl_or_b32 v7, v19, 4, v11
	v_lshl_or_b32 v9, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v12, v23, 4, v15
	v_lshl_or_b32 v13, v24, 4, v16
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v36, 3, v74
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s30, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v8, s0, v8
	s_mul_i32 s2, s31, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v16, v35, 4, v27
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	v_lshl_or_b32 v21, v40, 4, v32
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v9.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v13.l
	v_and_b16 v5.h, 0xff, v12.l
	v_lshlrev_b16 v6.l, 8, v11.l
	v_and_b16 v6.h, 0xff, v10.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v22, v49, 4, v41
	v_lshl_or_b32 v23, v50, 4, v42
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v28, v55, 4, v47
	v_lshl_or_b32 v29, v56, 4, v48
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v40, v38, v8
	v_add3_u32 v41, v8, s1, v38
	v_add3_u32 v42, v8, s2, v38
	v_add3_u32 v38, v8, s0, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v2.l, 0xff, v16.l
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v4.l, 0xff, v14.l
	v_lshlrev_b16 v5.l, 8, v21.l
	v_and_b16 v5.h, 0xff, v20.l
	v_lshlrev_b16 v6.l, 8, v19.l
	v_and_b16 v6.h, 0xff, v18.l
	s_and_b32 s1, s17, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s16
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v34, v69, 4, v61
	v_lshl_or_b32 v35, v70, 4, v62
	v_lshl_or_b32 v37, v71, 4, v63
	v_lshl_or_b32 v39, v72, 4, v64
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v40, s[0:3], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v29.l
	v_and_b16 v5.h, 0xff, v28.l
	v_lshlrev_b16 v6.l, 8, v27.l
	v_and_b16 v6.h, 0xff, v26.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v24, v51, 4, v43
	v_lshl_or_b32 v25, v52, 4, v44
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v41, s[0:3], 0 offen
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v39.l
	v_and_b16 v5.h, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v35.l
	v_and_b16 v6.h, 0xff, v34.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v30, v65, 4, v57
	v_lshl_or_b32 v31, v66, 4, v58
	v_lshl_or_b32 v32, v67, 4, v59
	v_lshl_or_b32 v33, v68, 4, v60
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v25.l
	v_and_b16 v2.l, 0xff, v24.l
	v_lshlrev_b16 v3.l, 8, v23.l
	v_and_b16 v4.l, 0xff, v22.l
	v_or_b16 v10.h, v5.h, v5.l
	v_or_b16 v10.l, v6.h, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v5, 4, v0
	v_lshrrev_b32_e32 v6, 2, v73
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_lshlrev_b16 v1.l, 8, v33.l
	v_and_b16 v2.l, 0xff, v32.l
	v_lshlrev_b16 v3.l, 8, v31.l
	v_and_b16 v4.l, 0xff, v30.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 2, v5
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.l, v1.l
	buffer_store_b64 v[7:8], v42, s[0:3], 0 offen
	v_or_b16 v9.l, v4.l, v3.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v7, 0, v36
	v_mov_b16_e32 v2.l, v4.h
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v4, v6, v5, v36
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v0, 63, s31
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[9:10], v38, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s4, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v7, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s1, s19, 0xffff
	s_mov_b32 s0, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s30, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp76:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp77:
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
		.amdhsa_next_free_vgpr 249
		.amdhsa_next_free_sgpr 34
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
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 249
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20656
; TotalNumSgprs: 36
; NumVgprs: 249
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 36
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
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
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
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
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
