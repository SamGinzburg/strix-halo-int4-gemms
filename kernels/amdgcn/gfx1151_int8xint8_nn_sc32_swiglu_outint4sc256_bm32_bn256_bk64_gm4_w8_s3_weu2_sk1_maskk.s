	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v69, 15, v0
	v_and_b32_e32 v135, 8, v0
	v_lshlrev_b32_e32 v136, 1, v0
	v_lshlrev_b32_e32 v2, 5, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
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
	s_sub_i32 s28, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s4, s31, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s28, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s5
	s_mov_b32 s5, 0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s4, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v6, 8, v0
.Ltmp15:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v67, 0x60, v2
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 15 is_stmt 0                ; generate_amdgcn.py:0:15
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr67
.LBB0_3:                                ; %Flow423
	s_load_b128 s[16:19], s[0:1], 0x20
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v70, 7, v0
	v_dual_mov_b32 v83, 0 :: v_dual_and_b32 v68, 0xf0, v0
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v65, 4, v69
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v131, 0
	v_mov_b32_e32 v124, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s30, s2, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp17:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s4, 31
.Ltmp18:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 3, v0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp20:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s31, 31
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s4, s4, s0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s6, s1, 31
	v_mul_lo_u32 v1, s31, v1
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s34, s4, 6
	s_mov_b32 s4, 0
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s0, s6, 27
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
.Ltmp25:
	.loc	1 374 34 is_stmt 1              ; generate_amdgcn.py:374:34
	s_mul_i32 s5, s30, s31
	v_bfe_i32 v5, v0, 5, 1
	v_bfe_i32 v3, v0, 2, 1
	v_bfe_i32 v4, v0, 3, 1
	v_mov_b32_e32 v134, 0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v138, 3, v68
	v_and_b32_e32 v5, 0x90, v5
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
	v_lshlrev_b32_e32 v137, 2, v70
	v_lshrrev_b32_e32 v12, 6, v0
.Ltmp26:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s1, s0
.Ltmp27:
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s33, s29, 1
.Ltmp28:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s35, s1, 5
	v_add3_u32 v139, v1, v137, s5
	s_mov_b32 s5, s4
	v_lshlrev_b32_e32 v1, 2, v0
	v_and_b32_e32 v3, 0x90, v3
	v_lshlrev_b32_e32 v7, 4, v0
	v_and_b32_e32 v4, 0x110, v4
	v_mad_u64_u32 v[66:67], null, s33, v138, v[65:66]
	v_and_b32_e32 v6, 0x37c, v1
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v67, 0x60, v2
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v7, 0xe00, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v5, v5, v6
	v_or_b32_e32 v6, s30, v69
	v_xor_b32_e32 v4, v3, v4
	v_lshl_or_b32 v8, v69, 9, v138
	v_and_or_b32 v3, 0x160, v2, v3
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v1, 0x1c0, v1
	v_or_b32_e32 v10, 16, v6
	v_mul_lo_u32 v141, v6, s35
	v_and_b32_e32 v6, 2, v12
	v_or3_b32 v4, v7, v4, v67
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v2, 32, v2
	v_mul_lo_u32 v142, v10, s35
	v_lshlrev_b32_e32 v10, 1, v68
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v6, 0, v6
	v_xor_b32_e32 v7, 0x110, v8
	v_xor_b32_e32 v9, 0x90, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v144, 0, v10
	v_xor_b32_e32 v11, 16, v3
	v_xor_b32_e32 v13, 16, v4
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v12, 28, v136
	v_add3_u32 v14, v6, v1, v2
	v_add3_u32 v10, v144, v10, v2
.Ltmp29:
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s2, s28, 8
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v147, 0, v5
	s_add_i32 s36, s2, s29
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v148, 0, v8
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v150, 0, v7
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v151, 0, v3
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v153, 0, v4
	v_dual_mov_b32 v1, s4 :: v_dual_add_nc_u32 v140, s33, v66
	v_mov_b32_e32 v133, 0
	v_or_b32_e32 v143, s2, v0
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v145, s36, v0
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v146, s2, v66
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v149, 0, v9
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v152, 0, v11
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v154, 0, v13
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v155, v14, v12
	v_mov_b32_e32 v100, 0
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v156, v10, v12
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_mov_b32_e32 v84, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s37, s29, 6
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
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s0, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s0, s0, 6
	v_or_b32_e32 v9, s0, v137
	s_or_b32 s5, s0, 32
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s1, s0, s33
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v10, s0, v138
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v11, s0, v139
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v13, s5, v137
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s6, s0, 5
	v_add_nc_u32_e32 v12, s1, v146
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v14, s5, v138
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s0, s1, s37
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s7, s6, s33
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v15, s5, v139
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s1, s0, s2
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	s_add_i32 s38, s0, s36
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v17, v143, s7, 1
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s31, v10
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v9, 0x80000000, v11, vcc_lo
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v13
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v22, s29, v12
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v10, s1, v66
	v_add_nc_u32_e32 v18, s1, v140
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s1, s31, v14
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v21, s33, v12
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s6, s35
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v11, 0x80000000, v12, s0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v13, 0x80000000, v15, vcc_lo
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v19, s38, v66
	v_add_nc_u32_e32 v33, s33, v22
	v_add_nc_u32_e32 v20, s38, v140
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v16, v141, s6, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v14, 0x80000000, v10, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v158, 0x80000000, v17, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v17, 0x80000000, v21, s0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_clause 0x1
	buffer_load_b32 v159, v9, s[20:23], 0 offen
	buffer_load_b32 v160, v13, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	buffer_load_b128 v[9:12], v11, s[24:27], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v34, 0x80000000, v22, s0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v21, 0x80000000, v18, s1
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v25, 0x80000000, v19, s1
	v_cndmask_b32_e64 v37, 0x80000000, v33, s0
	v_cndmask_b32_e64 v29, 0x80000000, v20, s1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v157, 0x80000000, v16, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x6
	buffer_load_b128 v[13:16], v14, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v34, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v37, s[24:27], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s5, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s35
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s0, s33
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(9)
	ds_store_b32 v147, v159 offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(5)
	v_perm_b32 v41, v17, v9, 0x5010400
	v_perm_b32 v44, v20, v12, 0x5010400
	v_perm_b32 v17, v17, v9, 0x7030602
	v_perm_b32 v20, v20, v12, 0x7030602
	v_perm_b32 v42, v18, v10, 0x5010400
	v_perm_b32 v18, v18, v10, 0x7030602
	v_perm_b32 v43, v19, v11, 0x5010400
	v_perm_b32 v19, v19, v11, 0x7030602
	s_waitcnt vmcnt(4)
	v_perm_b32 v45, v21, v13, 0x5010400
	v_lshrrev_b32_e32 v55, 8, v41
	v_lshrrev_b32_e32 v161, 24, v44
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(0)
	v_perm_b32 v163, v37, v33, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v21, v21, v13, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v50, v29, v25, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v9.l, 0xff, v41.l
	v_lshrrev_b32_e32 v56, 24, v41
	v_and_b16 v9.h, 0xff, v41.h
	v_lshrrev_b32_e32 v41, 8, v17
	v_lshrrev_b32_e32 v162, 24, v20
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v164, v37, v33, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v46, v22, v14, 0x5010400
	v_perm_b32 v22, v22, v14, 0x7030602
	v_perm_b32 v47, v23, v15, 0x5010400
	v_perm_b32 v23, v23, v15, 0x7030602
	v_perm_b32 v48, v24, v16, 0x5010400
	v_perm_b32 v49, v24, v16, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v29, v29, v25, 0x7030602
	v_perm_b32 v51, v30, v26, 0x5010400
	v_perm_b32 v30, v30, v26, 0x7030602
	v_perm_b32 v52, v31, v27, 0x5010400
	v_perm_b32 v31, v31, v27, 0x7030602
	v_perm_b32 v53, v32, v28, 0x5010400
	v_perm_b32 v54, v32, v28, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v57, 24, v17
	v_and_b16 v11.l, 0xff, v42.l
	v_lshrrev_b32_e32 v58, 8, v42
	v_lshrrev_b32_e32 v59, 24, v42
	v_and_b16 v11.h, 0xff, v42.h
	v_lshrrev_b32_e32 v42, 8, v18
	v_lshrrev_b32_e32 v60, 24, v18
	v_and_b16 v13.l, 0xff, v43.l
	v_lshrrev_b32_e32 v61, 8, v43
	v_lshrrev_b32_e32 v62, 24, v43
	v_and_b16 v13.h, 0xff, v43.h
	v_lshrrev_b32_e32 v43, 8, v19
	v_lshrrev_b32_e32 v63, 24, v19
	v_and_b16 v15.l, 0xff, v44.l
	v_lshrrev_b32_e32 v64, 8, v44
	v_and_b16 v15.h, 0xff, v44.h
	v_lshrrev_b32_e32 v44, 8, v20
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v165, v38, v34, 0x5010400
	v_perm_b32 v166, v38, v34, 0x7030602
	v_perm_b32 v167, v39, v35, 0x5010400
	v_perm_b32 v168, v39, v35, 0x7030602
	v_perm_b32 v169, v40, v36, 0x5010400
	v_perm_b32 v170, v40, v36, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v171, 8, v45
	v_lshlrev_b16 v33.l, 8, v55.l
	v_lshlrev_b16 v39.h, 8, v161.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v161, 8, v163
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v172, 24, v45
	v_lshrrev_b32_e32 v173, 8, v21
	v_lshrrev_b32_e32 v174, 24, v21
	v_and_b16 v10.l, 0xff, v17.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v187, 8, v50
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v33.h, 8, v56.l
	v_lshlrev_b16 v34.l, 8, v41.l
	v_lshlrev_b16 v40.h, 8, v162.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v41.l, 0xff, v163.l
	v_lshrrev_b32_e32 v162, 24, v163
	v_and_b16 v41.h, 0xff, v163.h
	v_lshrrev_b32_e32 v163, 8, v164
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v10.h, 0xff, v17.h
	v_and_b16 v12.l, 0xff, v18.l
	v_and_b16 v12.h, 0xff, v18.h
	v_and_b16 v14.l, 0xff, v19.l
	v_and_b16 v14.h, 0xff, v19.h
	v_and_b16 v16.l, 0xff, v20.l
	v_and_b16 v16.h, 0xff, v20.h
	v_and_b16 v17.l, 0xff, v45.l
	v_and_b16 v17.h, 0xff, v45.h
	v_and_b16 v18.l, 0xff, v21.l
	v_and_b16 v18.h, 0xff, v21.h
	v_and_b16 v19.l, 0xff, v46.l
	v_lshrrev_b32_e32 v175, 8, v46
	v_lshrrev_b32_e32 v176, 24, v46
	v_and_b16 v19.h, 0xff, v46.h
	v_lshrrev_b32_e32 v177, 8, v22
	v_lshrrev_b32_e32 v178, 24, v22
	v_and_b16 v21.l, 0xff, v47.l
	v_lshrrev_b32_e32 v179, 8, v47
	v_lshrrev_b32_e32 v180, 24, v47
	v_and_b16 v21.h, 0xff, v47.h
	v_lshrrev_b32_e32 v181, 8, v23
	v_lshrrev_b32_e32 v182, 24, v23
	v_lshrrev_b32_e32 v183, 8, v48
	v_lshrrev_b32_e32 v184, 24, v48
	v_and_b16 v24.l, 0xff, v49.l
	v_lshrrev_b32_e32 v185, 8, v49
	v_lshrrev_b32_e32 v186, 24, v49
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v188, 24, v50
	v_lshrrev_b32_e32 v189, 8, v29
	v_lshrrev_b32_e32 v190, 24, v29
	v_lshrrev_b32_e32 v191, 8, v51
	v_lshrrev_b32_e32 v192, 24, v51
	v_lshrrev_b32_e32 v193, 8, v30
	v_lshrrev_b32_e32 v194, 24, v30
	v_lshrrev_b32_e32 v195, 8, v52
	v_lshrrev_b32_e32 v196, 24, v52
	v_lshrrev_b32_e32 v197, 8, v31
	v_lshrrev_b32_e32 v198, 24, v31
	v_lshrrev_b32_e32 v199, 8, v53
	v_lshrrev_b32_e32 v200, 24, v53
	v_lshrrev_b32_e32 v201, 8, v54
	v_lshrrev_b32_e32 v202, 24, v54
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v34.h, 8, v57.l
	v_lshlrev_b16 v35.l, 8, v58.l
	v_lshlrev_b16 v35.h, 8, v59.l
	v_lshlrev_b16 v36.l, 8, v42.l
	v_lshlrev_b16 v36.h, 8, v60.l
	v_lshlrev_b16 v37.l, 8, v61.l
	v_lshlrev_b16 v37.h, 8, v62.l
	v_lshlrev_b16 v38.l, 8, v43.l
	v_lshlrev_b16 v38.h, 8, v63.l
	v_lshlrev_b16 v39.l, 8, v64.l
	v_lshlrev_b16 v40.l, 8, v44.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v42.l, 0xff, v164.l
	v_lshrrev_b32_e32 v203, 24, v164
	v_and_b16 v42.h, 0xff, v164.h
	v_and_b16 v43.l, 0xff, v165.l
	v_lshrrev_b32_e32 v164, 8, v165
	v_lshrrev_b32_e32 v204, 24, v165
	v_and_b16 v43.h, 0xff, v165.h
	v_and_b16 v44.l, 0xff, v166.l
	v_lshrrev_b32_e32 v165, 8, v166
	v_lshrrev_b32_e32 v205, 24, v166
	v_and_b16 v44.h, 0xff, v166.h
	v_and_b16 v45.l, 0xff, v167.l
	v_lshrrev_b32_e32 v166, 8, v167
	v_lshrrev_b32_e32 v206, 24, v167
	v_and_b16 v45.h, 0xff, v167.h
	v_and_b16 v46.l, 0xff, v168.l
	v_lshrrev_b32_e32 v167, 8, v168
	v_lshrrev_b32_e32 v207, 24, v168
	v_and_b16 v46.h, 0xff, v168.h
	v_and_b16 v47.l, 0xff, v169.l
	v_lshrrev_b32_e32 v168, 8, v169
	v_lshrrev_b32_e32 v208, 24, v169
	v_and_b16 v47.h, 0xff, v169.h
	v_lshrrev_b32_e32 v169, 8, v170
	v_lshrrev_b32_e32 v209, 24, v170
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v49.l, 8, v171.l
	v_or_b16 v9.l, v9.l, v33.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v33.l, 8, v161.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v24.h, 0xff, v49.h
	v_lshlrev_b16 v49.h, 8, v172.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v25.l, 0xff, v50.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v50.l, 8, v173.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v25.h, 0xff, v50.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v50.h, 8, v174.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v57.l, 8, v187.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v9.h, v9.h, v33.h
	v_or_b16 v10.l, v10.l, v34.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v33.h, 8, v162.l
	v_lshlrev_b16 v34.l, 8, v163.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v20.l, 0xff, v22.l
	v_and_b16 v20.h, 0xff, v22.h
	v_and_b16 v22.l, 0xff, v23.l
	v_and_b16 v22.h, 0xff, v23.h
	v_and_b16 v23.l, 0xff, v48.l
	v_and_b16 v23.h, 0xff, v48.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v26.l, 0xff, v29.l
	v_and_b16 v26.h, 0xff, v29.h
	v_and_b16 v27.l, 0xff, v51.l
	v_and_b16 v27.h, 0xff, v51.h
	v_and_b16 v28.l, 0xff, v30.l
	v_and_b16 v28.h, 0xff, v30.h
	v_and_b16 v29.l, 0xff, v52.l
	v_and_b16 v29.h, 0xff, v52.h
	v_and_b16 v30.l, 0xff, v31.l
	v_and_b16 v30.h, 0xff, v31.h
	v_and_b16 v31.l, 0xff, v53.l
	v_and_b16 v31.h, 0xff, v53.h
	v_and_b16 v32.l, 0xff, v54.l
	v_and_b16 v32.h, 0xff, v54.h
	v_and_b16 v48.l, 0xff, v170.l
	v_and_b16 v48.h, 0xff, v170.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v51.l, 8, v175.l
	v_lshlrev_b16 v51.h, 8, v176.l
	v_lshlrev_b16 v52.l, 8, v177.l
	v_lshlrev_b16 v52.h, 8, v178.l
	v_lshlrev_b16 v53.l, 8, v179.l
	v_lshlrev_b16 v53.h, 8, v180.l
	v_lshlrev_b16 v54.l, 8, v181.l
	v_lshlrev_b16 v54.h, 8, v182.l
	v_lshlrev_b16 v55.l, 8, v183.l
	v_lshlrev_b16 v55.h, 8, v184.l
	v_lshlrev_b16 v56.l, 8, v185.l
	v_lshlrev_b16 v56.h, 8, v186.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v57.h, 8, v188.l
	v_lshlrev_b16 v58.l, 8, v189.l
	v_lshlrev_b16 v58.h, 8, v190.l
	v_lshlrev_b16 v59.l, 8, v191.l
	v_lshlrev_b16 v59.h, 8, v192.l
	v_lshlrev_b16 v60.l, 8, v193.l
	v_lshlrev_b16 v60.h, 8, v194.l
	v_lshlrev_b16 v61.l, 8, v195.l
	v_lshlrev_b16 v61.h, 8, v196.l
	v_lshlrev_b16 v62.l, 8, v197.l
	v_lshlrev_b16 v62.h, 8, v198.l
	v_lshlrev_b16 v63.l, 8, v199.l
	v_lshlrev_b16 v63.h, 8, v200.l
	v_lshlrev_b16 v64.l, 8, v201.l
	v_lshlrev_b16 v64.h, 8, v202.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v10.h, v10.h, v34.h
	v_or_b16 v11.l, v11.l, v35.l
	v_or_b16 v11.h, v11.h, v35.h
	v_or_b16 v12.l, v12.l, v36.l
	v_or_b16 v12.h, v12.h, v36.h
	v_or_b16 v13.l, v13.l, v37.l
	v_or_b16 v13.h, v13.h, v37.h
	v_or_b16 v14.l, v14.l, v38.l
	v_or_b16 v14.h, v14.h, v38.h
	v_or_b16 v15.l, v15.l, v39.l
	v_or_b16 v15.h, v15.h, v39.h
	v_or_b16 v16.l, v16.l, v40.l
	v_or_b16 v16.h, v16.h, v40.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v34.h, 8, v203.l
	v_lshlrev_b16 v35.l, 8, v164.l
	v_lshlrev_b16 v35.h, 8, v204.l
	v_lshlrev_b16 v36.l, 8, v165.l
	v_lshlrev_b16 v36.h, 8, v205.l
	v_lshlrev_b16 v37.l, 8, v166.l
	v_lshlrev_b16 v37.h, 8, v206.l
	v_lshlrev_b16 v38.l, 8, v167.l
	v_lshlrev_b16 v38.h, 8, v207.l
	v_lshlrev_b16 v39.l, 8, v168.l
	v_lshlrev_b16 v39.h, 8, v208.l
	v_lshlrev_b16 v40.l, 8, v169.l
	v_lshlrev_b16 v40.h, 8, v209.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v17.l, v17.l, v49.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v33.l, v41.l, v33.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v17.h, v17.h, v49.h
	v_or_b16 v18.l, v18.l, v50.l
	v_or_b16 v18.h, v18.h, v50.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v25.l, v25.l, v57.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v148, v9
	ds_store_b16_d16_hi v148, v9 offset:32
	ds_store_b16 v148, v10 offset:64
	ds_store_b16_d16_hi v148, v10 offset:96
	ds_store_b16_d16_hi v149, v11 offset:32
	ds_store_b16 v149, v12 offset:64
	ds_store_b16_d16_hi v149, v12 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v9.l, v41.h, v33.h
	v_or_b16 v9.h, v42.l, v34.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v19.l, v19.l, v51.l
	v_or_b16 v19.h, v19.h, v51.h
	v_or_b16 v20.l, v20.l, v52.l
	v_or_b16 v20.h, v20.h, v52.h
	v_or_b16 v21.l, v21.l, v53.l
	v_or_b16 v21.h, v21.h, v53.h
	v_or_b16 v22.l, v22.l, v54.l
	v_or_b16 v22.h, v22.h, v54.h
	v_or_b16 v23.l, v23.l, v55.l
	v_or_b16 v23.h, v23.h, v55.h
	v_or_b16 v24.l, v24.l, v56.l
	v_or_b16 v24.h, v24.h, v56.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v25.h, v25.h, v57.h
	v_or_b16 v26.l, v26.l, v58.l
	v_or_b16 v26.h, v26.h, v58.h
	v_or_b16 v27.l, v27.l, v59.l
	v_or_b16 v27.h, v27.h, v59.h
	v_or_b16 v28.l, v28.l, v60.l
	v_or_b16 v28.h, v28.h, v60.h
	v_or_b16 v29.l, v29.l, v61.l
	v_or_b16 v29.h, v29.h, v61.h
	v_or_b16 v30.l, v30.l, v62.l
	v_or_b16 v30.h, v30.h, v62.h
	v_or_b16 v31.l, v31.l, v63.l
	v_or_b16 v31.h, v31.h, v63.h
	v_or_b16 v32.l, v32.l, v64.l
	v_or_b16 v32.h, v32.h, v64.h
	v_or_b16 v10.l, v42.h, v34.h
	v_or_b16 v10.h, v43.l, v35.l
	v_or_b16 v11.h, v43.h, v35.h
	v_or_b16 v12.l, v44.l, v36.l
	v_or_b16 v12.h, v44.h, v36.h
	v_or_b16 v33.h, v45.l, v37.l
	v_or_b16 v34.l, v45.h, v37.h
	v_or_b16 v34.h, v46.l, v38.l
	v_or_b16 v35.l, v46.h, v38.h
	v_or_b16 v35.h, v47.l, v39.l
	v_or_b16 v36.l, v47.h, v39.h
	v_or_b16 v36.h, v48.l, v40.l
	v_or_b16 v37.l, v48.h, v40.h
	ds_store_b16 v148, v33 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v149, v11
	ds_store_b16 v150, v13
	ds_store_b16_d16_hi v150, v13 offset:32
	ds_store_b16 v150, v14 offset:64
	ds_store_b16_d16_hi v150, v14 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v148, v9 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v148, v15 offset:384
	ds_store_b16_d16_hi v148, v15 offset:416
	ds_store_b16 v148, v16 offset:448
	ds_store_b16_d16_hi v148, v16 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v148, v9 offset:16416
	ds_store_b16 v148, v10 offset:16480
	ds_store_b16_d16_hi v149, v10 offset:16384
	ds_store_b16_d16_hi v149, v11 offset:16416
	ds_store_b16 v149, v12 offset:16448
	ds_store_b16_d16_hi v149, v12 offset:16480
	ds_store_b16_d16_hi v150, v33 offset:16384
	ds_store_b16 v150, v34 offset:16416
	ds_store_b16_d16_hi v150, v34 offset:16448
	ds_store_b16 v150, v35 offset:16480
	ds_store_b16_d16_hi v148, v35 offset:16768
	ds_store_b16 v148, v36 offset:16800
	ds_store_b16_d16_hi v148, v36 offset:16832
	ds_store_b16 v148, v37 offset:16864
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v148, v17 offset:8192
	ds_store_b16_d16_hi v148, v17 offset:8224
	ds_store_b16 v148, v18 offset:8256
	ds_store_b16_d16_hi v148, v18 offset:8288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v148, v25 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v149, v19 offset:8192
	ds_store_b16_d16_hi v149, v19 offset:8224
	ds_store_b16 v149, v20 offset:8256
	ds_store_b16_d16_hi v149, v20 offset:8288
	ds_store_b16 v150, v21 offset:8192
	ds_store_b16_d16_hi v150, v21 offset:8224
	ds_store_b16 v150, v22 offset:8256
	ds_store_b16_d16_hi v150, v22 offset:8288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_store_b32 v147, v160 offset:33792
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v148, v26 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v148, v23 offset:8576
	ds_store_b16_d16_hi v148, v23 offset:8608
	ds_store_b16 v148, v24 offset:8640
	ds_store_b16_d16_hi v148, v24 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v148, v25 offset:24608
	ds_store_b16_d16_hi v148, v26 offset:24672
	ds_store_b16 v149, v27 offset:24576
	ds_store_b16_d16_hi v149, v27 offset:24608
	ds_store_b16 v149, v28 offset:24640
	ds_store_b16_d16_hi v149, v28 offset:24672
	ds_store_b16 v150, v29 offset:24576
	ds_store_b16_d16_hi v150, v29 offset:24608
	ds_store_b16 v150, v30 offset:24640
	ds_store_b16_d16_hi v150, v30 offset:24672
	ds_store_b16 v148, v31 offset:24960
	ds_store_b16_d16_hi v148, v31 offset:24992
	ds_store_b16 v148, v32 offset:25024
	ds_store_b16_d16_hi v148, v32 offset:25056
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v9, v158, s[12:15], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v11, v145, s7, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v10, v142, s6, 1
	v_add_lshl_u32 v172, v142, s0, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[29:32], v151 offset:32768
	ds_load_b128 v[25:28], v151 offset:33280
	ds_load_b128 v[21:24], v152 offset:32768
	ds_load_b128 v[17:20], v152 offset:33280
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[49:52], v153
	ds_load_b128 v[53:56], v153 offset:4096
	ds_load_b128 v[33:36], v154
	ds_load_b128 v[37:40], v154 offset:4096
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[57:60], v153 offset:16384
	ds_load_b128 v[61:64], v153 offset:20480
	ds_load_b128 v[41:44], v154 offset:16384
	ds_load_b128 v[45:48], v154 offset:20480
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v173, v145, s1, 1
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v158, v157, s[8:11], 0 offen
	buffer_load_u16 v159, v10, s[8:11], 0 offen
	v_cndmask_b32_e32 v228, 0x80000000, v172, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v10, v143, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s4, s34
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[188:195], v[49:52], v[25:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v160, 0x80000000, v10, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[53:56], v[29:32], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[204:211], v[61:64], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[220:227], v[61:64], v[25:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[196:203], v[53:56], v[25:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[212:219], v[57:60], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[204:211], v[45:48], v[21:24], v[204:211] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[220:227], v[45:48], v[17:20], v[220:227] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[180:187], v[37:40], v[21:24], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[188:195], v[33:36], v[17:20], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[37:40], v[17:20], v[196:203] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[212:219], v[41:44], v[17:20], v[212:219] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v28, v209
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v18, v180
	v_cvt_f32_i32_e32 v19, v185
	v_cvt_f32_i32_e32 v20, v186
	v_cvt_f32_i32_e32 v25, v202
	v_cvt_f32_i32_e32 v26, v203
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v27, v204
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v38, v190
	v_cvt_f32_i32_e32 v39, v195
	v_cvt_f32_i32_e32 v40, v194
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v45, v217
	v_cvt_f32_i32_e32 v46, v216
	v_cvt_f32_i32_e32 v47, v215
	v_cvt_f32_i32_e32 v48, v214
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v180, v184
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v181, v181
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v184, v208
	v_cvt_f32_i32_e32 v185, v207
	v_cvt_f32_i32_e32 v186, v206
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v37, v191
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	ds_store_b16 v155, v9 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v157, v11, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v9, v141, s0, 1
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v161, 0x80000000, v9 :: v_dual_lshlrev_b32 v158, 16, v158
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[9:12], v144 offset:34816
	ds_load_b128 v[13:16], v144 offset:34832
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e32 v229, 0x80000000, v173, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[172:179], v[49:52], v[29:32], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[49:56], v[57:60], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v31, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[172:179], v[33:36], v[21:24], v[172:179] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v32, v225
	v_wmma_i32_16x16x16_iu8 v[49:56], v[41:44], v[21:24], v[49:56] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v21, v187
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v29, v210
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v60, v174
	v_cvt_f32_i32_e32 v62, v178
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v178, v222
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v17, v173
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v30, v211
	v_cvt_f32_i32_e32 v33, v226
	v_cvt_f32_i32_e32 v34, v227
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v35, v172
	v_cvt_f32_i32_e32 v36, v188
	v_cvt_f32_i32_e32 v41, v193
	v_cvt_f32_i32_e32 v42, v192
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v43, v219
	v_cvt_f32_i32_e32 v44, v218
	v_cvt_f32_i32_e32 v57, v213
	v_cvt_f32_i32_e32 v58, v212
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v59, v175
	v_cvt_f32_i32_e32 v61, v179
	v_cvt_f32_i32_e32 v63, v177
	v_cvt_f32_i32_e32 v64, v176
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v172, v200
	v_cvt_f32_i32_e32 v173, v199
	v_cvt_f32_i32_e32 v174, v198
	v_cvt_f32_i32_e32 v175, v197
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v176, v224
	v_cvt_f32_i32_e32 v177, v223
	v_cvt_f32_i32_e32 v179, v221
	v_cvt_f32_i32_e32 v187, v205
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v220, v158, v28
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v28, v60, v158 :: v_dual_mul_f32 v223, v159, v31
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v224, v159, v32 :: v_dual_mul_f32 v17, v17, v158
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v32, v62, v158
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v22, v189
	v_cvt_f32_i32_e32 v23, v196
	v_cvt_f32_i32_e32 v24, v201
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v18, v158, v18
	v_mul_f32_e32 v19, v158, v19
	v_mul_f32_e32 v20, v158, v20
	v_dual_mul_f32 v21, v158, v21 :: v_dual_mul_f32 v218, v35, v158
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v219, v158, v27
	v_mul_f32_e32 v221, v158, v29
	v_dual_mul_f32 v222, v158, v30 :: v_dual_mul_f32 v25, v159, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v30, v64, v158
	v_dual_mul_f32 v26, v159, v26 :: v_dual_mul_f32 v27, v36, v159
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v225, v159, v33 :: v_dual_mul_f32 v230, v158, v50
	v_dual_mul_f32 v226, v159, v34 :: v_dual_mul_f32 v227, v158, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v29, v59, v158 :: v_dual_mul_f32 v232, v158, v52
	v_dual_mul_f32 v31, v63, v158 :: v_dual_mul_f32 v236, v158, v56
	v_dual_mul_f32 v61, v61, v158 :: v_dual_mul_f32 v22, v22, v159
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v231, v158, v51 :: v_dual_mul_f32 v238, v159, v57
	v_dual_mul_f32 v233, v158, v53 :: v_dual_mul_f32 v50, v41, v159
	v_dual_mul_f32 v234, v158, v54 :: v_dual_mul_f32 v37, v37, v159
	v_dual_mul_f32 v235, v158, v55 :: v_dual_mul_f32 v242, v159, v45
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v38, v38, v159 :: v_dual_mul_f32 v237, v159, v58
	v_dual_mul_f32 v49, v42, v159 :: v_dual_mul_f32 v52, v159, v174
	v_dual_mul_f32 v40, v40, v159 :: v_dual_mul_f32 v239, v159, v48
	v_mul_f32_e32 v39, v39, v159
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v240, v159, v47 :: v_dual_mul_f32 v45, v158, v181
	v_dual_mul_f32 v241, v159, v46 :: v_dual_mul_f32 v48, v158, v180
	v_dual_mul_f32 v243, v159, v44 :: v_dual_mul_f32 v246, v158, v186
	v_dual_mul_f32 v244, v159, v43 :: v_dual_mul_f32 v247, v158, v185
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v46, v158, v182
	v_dual_mul_f32 v47, v158, v183 :: v_dual_mul_f32 v54, v159, v172
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v245, v158, v187 :: v_dual_mul_f32 v250, v159, v177
	v_dual_mul_f32 v158, v158, v184 :: v_dual_mul_f32 v51, v159, v175
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v53, v159, v173 :: v_dual_lshlrev_b32 v56, 16, v10
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v248, v159, v179 :: v_dual_lshlrev_b32 v55, 16, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v23, v159, v23
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v63, 0xffff0000, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v24, v159, v24 :: v_dual_and_b32 v9, 0xffff0000, v9
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v170.h, v11.l
	v_mov_b16_e64 v171.h, v12.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v124, v20, v63
	v_dual_fmac_f32 v131, v18, v9 :: v_dual_and_b32 v64, 0xffff0000, v16
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v10, 0xffff0000, v10
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v122, v23, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v120, v25, v63 :: v_dual_fmac_f32 v119, v26, v64
	v_fmac_f32_e32 v80, v22, v56
	v_fmac_f32_e32 v123, v21, v64
	v_fmac_f32_e32 v104, v17, v56
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	ds_store_b16 v155, v157 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v160, v160, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v161, v161, s[8:11], 0 offen
	buffer_load_u16 v228, v228, s[8:11], 0 offen
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v249, v159, v178
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	ds_load_b128 v[178:181], v144 offset:34816
	ds_load_b128 v[182:185], v144 offset:34832
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[57:60], v151 offset:33792
	ds_load_b128 v[186:189], v151 offset:34304
	ds_load_b128 v[190:193], v152 offset:33792
	ds_load_b128 v[194:197], v152 offset:34304
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[33:36], v153 offset:8192
	ds_load_b128 v[41:44], v153 offset:12288
	ds_load_b128 v[198:201], v154 offset:8192
	ds_load_b128 v[202:205], v154 offset:12288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[172:175], v153 offset:24576
	ds_load_b128 v[206:209], v153 offset:28672
	ds_load_b128 v[210:213], v154 offset:24576
	ds_load_b128 v[214:217], v154 offset:28672
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_mov_b16_e64 v157.l, 0
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v159, v159, v176
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v157.h, v13.l
	v_lshlrev_b32_e32 v15, 16, v15
	v_and_b32_e32 v13, 0xffff0000, v13
	v_mov_b16_e64 v170.l, v157.l
	v_mov_b16_e64 v171.l, v157.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v106, v30, v157 :: v_dual_and_b32 v11, 0xffff0000, v11
	v_fmac_f32_e32 v108, v32, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v110, v28, v170 :: v_dual_fmac_f32 v105, v29, v171
	v_fmac_f32_e32 v86, v38, v170
	v_dual_fmac_f32 v103, v218, v55 :: v_dual_fmac_f32 v82, v49, v157
	v_fmac_f32_e32 v84, v40, v15
	v_fmac_f32_e32 v81, v37, v171
	v_dual_fmac_f32 v75, v27, v55 :: v_dual_fmac_f32 v74, v54, v13
	v_fmac_f32_e32 v98, v48, v13
	v_dual_fmac_f32 v96, v46, v11 :: v_dual_fmac_f32 v95, v45, v10
	v_dual_fmac_f32 v72, v52, v11 :: v_dual_fmac_f32 v71, v51, v10
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_and_b32_e32 v218, 0xffff0000, v183
	v_mov_b16_e64 v162.l, v157.l
	v_mov_b16_e64 v163.l, v157.l
	v_mov_b16_e64 v164.l, v157.l
	v_mov_b16_e64 v165.l, v157.l
	v_mov_b16_e64 v166.l, v157.l
	v_mov_b16_e64 v167.l, v157.l
	v_mov_b16_e64 v168.l, v157.l
	v_mov_b16_e64 v169.l, v157.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v128, v224, v218 :: v_dual_and_b32 v251, 0xffff0000, v185
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v162.h, v178.l
	v_mov_b16_e64 v163.h, v179.l
	v_mov_b16_e64 v164.h, v180.l
	v_mov_b16_e64 v165.h, v181.l
	v_mov_b16_e64 v168.h, v184.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v134, v220, v218
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v166.h, v182.l
	v_mov_b16_e64 v167.h, v183.l
	v_mov_b16_e64 v169.h, v185.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v126, v226, v251
	v_dual_fmac_f32 v130, v222, v251 :: v_dual_fmac_f32 v113, v235, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v114, v234, v167
	v_dual_fmac_f32 v112, v236, v169 :: v_dual_fmac_f32 v115, v233, v166
	v_dual_fmac_f32 v116, v232, v165 :: v_dual_fmac_f32 v111, v231, v164
	v_dual_fmac_f32 v117, v230, v163 :: v_dual_fmac_f32 v88, v244, v169
	v_fmac_f32_e32 v118, v227, v162
	v_dual_fmac_f32 v89, v243, v168 :: v_dual_fmac_f32 v92, v240, v165
	v_dual_fmac_f32 v90, v242, v167 :: v_dual_fmac_f32 v87, v239, v164
	v_fmac_f32_e32 v94, v237, v162
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v62, 16, v160
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v156, v62 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v160, v229, s[12:15], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v62, 0xffff0000, v14
	v_lshlrev_b32_e32 v14, 16, v14
	v_lshlrev_b32_e32 v16, 16, v16
	v_and_b32_e32 v12, 0xffff0000, v12
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_and_b32_e32 v229, 0xffff0000, v184
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v125, v19, v62
	v_fmac_f32_e32 v121, v24, v62
	v_fmac_f32_e32 v109, v61, v16
	v_fmac_f32_e32 v107, v31, v14
	v_fmac_f32_e32 v85, v39, v16
	v_fmac_f32_e32 v83, v50, v14
	v_fmac_f32_e32 v97, v47, v12
	v_fmac_f32_e32 v73, v53, v12
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[33:36], v[186:189], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[186:189], v[1:8] neg_lo:[1,1,0]
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v132, v221, v229 :: v_dual_and_b32 v157, 0xffff0000, v178
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[41:48], v[172:175], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[206:209], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[172:175], v[186:189], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[170:177], v[206:209], v[186:189], v[1:8] neg_lo:[1,1,0]
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_and_b32_e32 v178, 0xffff0000, v179
	v_and_b32_e32 v179, 0xffff0000, v180
	v_and_b32_e32 v180, 0xffff0000, v181
	v_and_b32_e32 v181, 0xffff0000, v182
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[17:24], v[202:205], v[190:193], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[202:205], v[194:197], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[198:201], v[190:193], v[9:16] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[170:177], v[214:217], v[194:197], v[170:177] neg_lo:[1,1,0]
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v99, v158, v181 :: v_dual_fmac_f32 v76, v248, v178
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v158, v17
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v183, 16, v228
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v133, v219, v157
	v_fmac_f32_e32 v129, v223, v157
	v_fmac_f32_e32 v127, v225, v229
	v_dual_fmac_f32 v91, v241, v166 :: v_dual_fmac_f32 v100, v247, v180
	v_dual_fmac_f32 v93, v238, v163 :: v_dual_fmac_f32 v102, v245, v178
	v_dual_fmac_f32 v79, v159, v181 :: v_dual_fmac_f32 v78, v250, v180
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v157, v10
	v_cvt_f32_i32_e32 v159, v22
	v_cvt_f32_i32_e32 v162, v23
	v_cvt_f32_i32_e32 v163, v24
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v164, v170
	v_cvt_f32_i32_e32 v165, v175
	v_cvt_f32_i32_e32 v166, v176
	v_cvt_f32_i32_e32 v167, v177
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v168, v9
	v_cvt_f32_i32_e32 v169, v11
	v_cvt_f32_i32_e32 v170, v12
	v_cvt_f32_i32_e32 v175, v13
	v_cvt_f32_i32_e32 v176, v14
	v_cvt_f32_i32_e32 v177, v15
	v_cvt_f32_i32_e32 v178, v16
	v_cvt_f32_i32_e32 v180, v19
	v_cvt_f32_i32_e32 v181, v20
	v_cvt_f32_i32_e32 v182, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v40, v183, v40 :: v_dual_fmac_f32 v101, v246, v179
	v_mul_f32_e32 v168, v168, v161
	v_mul_f32_e32 v158, v161, v158
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v77, v249, v179 :: v_dual_mul_f32 v38, v183, v38
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v179, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v144 offset:34816
	ds_load_b128 v[13:16], v144 offset:34832
	ds_load_b128 v[17:20], v144 offset:35328
	ds_load_b128 v[21:24], v144 offset:35344
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[25:32], v[198:201], v[194:197], v[25:32] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[41:48], v[210:213], v[190:193], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[214:217], v[190:193], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[210:213], v[194:197], v[57:64] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v162, v161, v162 :: v_dual_mul_f32 v33, v183, v33
	v_dual_mul_f32 v25, v25, v183 :: v_dual_mul_f32 v178, v178, v161
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v159, v161, v159 :: v_dual_mul_f32 v164, v183, v164
	v_dual_mul_f32 v163, v161, v163 :: v_dual_mul_f32 v166, v183, v166
	v_dual_mul_f32 v39, v183, v39 :: v_dual_mul_f32 v54, v161, v54
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v49, v161, v49 :: v_dual_mul_f32 v32, v32, v183
	v_dual_mul_f32 v55, v161, v55 :: v_dual_mul_f32 v176, v176, v161
	v_dual_mul_f32 v167, v183, v167 :: v_dual_mul_f32 v170, v170, v161
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v177, v177, v161 :: v_dual_mul_f32 v30, v30, v183
	v_dual_mul_f32 v175, v175, v161 :: v_dual_mul_f32 v48, v161, v48
	v_dual_mul_f32 v169, v169, v161 :: v_dual_mul_f32 v28, v28, v183
	v_dual_mul_f32 v157, v157, v161 :: v_dual_mul_f32 v26, v26, v183
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v46, v161, v46 :: v_dual_mul_f32 v31, v31, v183
	v_dual_mul_f32 v45, v161, v45 :: v_dual_mul_f32 v62, v183, v62
	v_dual_mul_f32 v44, v161, v44 :: v_dual_mul_f32 v27, v27, v183
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v29, v29, v183 :: v_dual_mul_f32 v36, v183, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v61, v183, v61 :: v_dual_mul_f32 v182, v161, v182
	v_dual_mul_f32 v59, v183, v59 :: v_dual_mul_f32 v180, v161, v180
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v181, v161, v181 :: v_dual_mul_f32 v34, v183, v34
	v_dual_mul_f32 v179, v161, v179 :: v_dual_mul_f32 v172, v183, v172
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v50, v161, v50 :: v_dual_mul_f32 v37, v183, v37
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v35, v183, v35 :: v_dual_fmac_f32 v122, v33, v17
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v103, v168, v9
	v_fmac_f32_e32 v75, v25, v9
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v56, v161, v56 :: v_dual_mul_f32 v165, v183, v165
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v47, v161, v47 :: v_dual_mul_f32 v64, v183, v64
	v_dual_mul_f32 v43, v161, v43 :: v_dual_mul_f32 v60, v183, v60
	v_dual_mul_f32 v42, v161, v42 :: v_dual_mul_f32 v63, v183, v63
	v_dual_mul_f32 v41, v161, v41 :: v_dual_mul_f32 v58, v183, v58
	v_dual_mul_f32 v57, v183, v57 :: v_dual_mul_f32 v52, v161, v52
	v_dual_mul_f32 v53, v161, v53 :: v_dual_fmac_f32 v124, v162, v23
	v_dual_mul_f32 v51, v161, v51 :: v_dual_fmac_f32 v106, v175, v13
	v_dual_mul_f32 v161, v183, v174 :: v_dual_fmac_f32 v110, v169, v11
	v_dual_mul_f32 v173, v183, v173 :: v_dual_fmac_f32 v104, v157, v10
	v_dual_mul_f32 v171, v183, v171 :: v_dual_fmac_f32 v80, v26, v10
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v131, v158, v17 :: v_dual_fmac_f32 v120, v39, v23
	v_dual_fmac_f32 v125, v159, v22 :: v_dual_fmac_f32 v108, v177, v15
	v_dual_fmac_f32 v123, v163, v24 :: v_dual_fmac_f32 v82, v29, v13
	v_dual_fmac_f32 v121, v38, v22 :: v_dual_fmac_f32 v86, v27, v11
	v_dual_fmac_f32 v119, v40, v24 :: v_dual_fmac_f32 v84, v31, v15
	v_dual_fmac_f32 v105, v170, v12 :: v_dual_fmac_f32 v96, v180, v19
	v_dual_fmac_f32 v107, v176, v14 :: v_dual_fmac_f32 v98, v182, v21
	v_dual_fmac_f32 v109, v178, v16 :: v_dual_fmac_f32 v74, v37, v21
	v_fmac_f32_e32 v81, v28, v12
	v_fmac_f32_e32 v83, v30, v14
	v_fmac_f32_e32 v85, v32, v16
	v_fmac_f32_e32 v95, v179, v18
	v_fmac_f32_e32 v97, v181, v20
	v_dual_fmac_f32 v71, v34, v18 :: v_dual_fmac_f32 v72, v35, v19
	v_fmac_f32_e32 v73, v36, v20
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v160
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v156, v9 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v144 offset:34816
	ds_load_b128 v[13:16], v144 offset:34832
	ds_load_b128 v[17:20], v144 offset:35328
	ds_load_b128 v[21:24], v144 offset:35344
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v118, v41, v9 :: v_dual_fmac_f32 v117, v42, v10
	v_dual_fmac_f32 v111, v43, v11 :: v_dual_fmac_f32 v94, v57, v9
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v116, v44, v12 :: v_dual_fmac_f32 v115, v45, v13
	v_fmac_f32_e32 v92, v60, v12
	v_dual_fmac_f32 v114, v46, v14 :: v_dual_fmac_f32 v113, v47, v15
	v_fmac_f32_e32 v88, v64, v16
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v112, v48, v16 :: v_dual_fmac_f32 v133, v49, v17
	v_fmac_f32_e32 v76, v171, v18
	v_dual_fmac_f32 v102, v50, v18 :: v_dual_fmac_f32 v101, v51, v19
	v_fmac_f32_e32 v78, v173, v20
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v100, v52, v20 :: v_dual_fmac_f32 v99, v53, v21
	v_fmac_f32_e32 v126, v167, v24
	v_fmac_f32_e32 v134, v54, v22
	v_fmac_f32_e32 v132, v55, v23
	v_dual_fmac_f32 v130, v56, v24 :: v_dual_fmac_f32 v93, v58, v10
	v_dual_fmac_f32 v87, v59, v11 :: v_dual_fmac_f32 v128, v165, v22
	v_dual_fmac_f32 v91, v61, v13 :: v_dual_fmac_f32 v90, v62, v14
	v_fmac_f32_e32 v89, v63, v15
	v_fmac_f32_e32 v129, v164, v17
	v_fmac_f32_e32 v77, v172, v19
	v_fmac_f32_e32 v79, v161, v21
	v_fmac_f32_e32 v127, v166, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v6, v135 :: v_dual_mov_b32 v1, v136
.LBB0_7:                                ; %._crit_edge
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v2, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v111
	v_mul_f32_e32 v10, 0xbfb8aa3b, v130
	v_dual_mul_f32 v14, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v30, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v116
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v10
	v_dual_mul_f32 v2, 0xbfb8aa3b, v115 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v117
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v4, 0xbfb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_mul_f32_e32 v8, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v133
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v130
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_exp_f32_e32 v7, v7
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_exp_f32_e32 v13, v13
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v134 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s0
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v5, v7, v5
	v_exp_f32_e32 v11, v11
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v102
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v28, 0xbfb8aa3b, v112 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v113
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v17, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v101
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v4, v8, v4
	v_ldexp_f32 v7, v11, v10
	v_ldexp_f32 v8, v13, v12
	v_exp_f32_e32 v10, v14
	v_dual_mul_f32 v14, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v128
	v_mul_f32_e32 v12, 0xbfb8aa3b, v78
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v5, v5, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_mul_f32_e32 v13, 0xbfb8aa3b, v127
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v4, v4, v134
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v10, v10, v16
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_mul_f32_e32 v13, 0xbfb8aa3b, v126
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v35, v33
	v_rcp_f32_e32 v40, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v128
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, s0, v134, v4, v134
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v41, v16
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v127
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v13, -v33, v35, 1.0
	v_fma_f32 v16, -v37, v40, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v126
	v_exp_f32_e32 v36, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v35, v13, v35
	v_div_scale_f32 v43, vcc_lo, v133, v5, v133
	v_fmac_f32_e32 v40, v16, v40
	v_div_scale_f32 v42, null, v7, v7, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v16, 0xbfb8aa3b, v76 :: v_dual_mul_f32 v45, v43, v35
	v_exp_f32_e32 v39, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v34, v36, v34
	v_dual_mul_f32 v13, 0xbfb8aa3b, v77 :: v_dual_add_f32 v8, 1.0, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v33, v45, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v32, v41, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v41, v46, v40 :: v_dual_add_f32 v34, 1.0, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v20, 0xbfb8aa3b, v88 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v94
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v42, v44, 1.0
	v_fmac_f32_e32 v45, v36, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v39, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v37, v41, v46
	v_div_scale_f32 v39, s1, v132, v7, v132
	v_fmac_f32_e32 v44, v47, v44
	v_fma_f32 v33, -v33, v45, v43
	v_div_scale_f32 v43, null, v8, v8, v130
	v_fmac_f32_e32 v41, v36, v40
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v33, v33, v35, v45
	v_rcp_f32_e32 v45, v43
	v_mul_f32_e32 v36, v39, v44
	v_fma_f32 v35, -v37, v41, v46
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v5, v33, v5, v133
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v24, 0xbfb8aa3b, v93 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v79
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v42, v36, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v26, 0xbfb8aa3b, v89 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v92
	v_dual_mul_f32 v18, 0xbfb8aa3b, v87 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v36, v37, v44 :: v_dual_add_f32 v37, 1.0, v38
	v_fma_f32 v38, -v43, v45, 1.0
	s_mov_b32 s4, 0x76543210
.Ltmp30:
	.loc	1 82 15 is_stmt 1               ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v1, 0x100, v1
.Ltmp31:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v42, v36, v39
	v_div_scale_f32 v39, null, v34, v34, v127
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v32, v32, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v46, null, v37, v37, v126
.Ltmp32:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s5, s29, 31
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s5, s5, 24
.Ltmp33:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v48, v46
.Ltmp34:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s5, s29, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	s_ashr_i32 s5, s5, 8
.Ltmp35:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v42, v50, v42
	v_div_fmas_f32 v35, v35, v40, v41
	v_rcp_f32_e32 v41, v38
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v52, -v46, v48, 1.0
	v_div_scale_f32 v50, s2, v127, v34, v127
	v_div_fixup_f32 v4, v35, v4, v134
	v_div_scale_f32 v35, null, v10, v10, v129
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v38, v41, 1.0
	v_fmac_f32_e32 v41, v47, v41
	v_div_fmas_f32 v33, v33, v44, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v36, v35
	v_div_scale_f32 v40, vcc_lo, v130, v8, v130
	v_div_scale_f32 v47, s1, v128, v32, v128
	v_div_fixup_f32 v7, v33, v7, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v53, v47, v41 :: v_dual_fmac_f32 v48, v52, v48
	v_fma_f32 v33, -v35, v36, 1.0
	v_div_scale_f32 v52, s3, v126, v37, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s0, v129, v10, v129
	v_mul_f32_e32 v44, v40, v45
	v_mul_f32_e32 v55, v52, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v33, v36
	v_fma_f32 v49, -v43, v44, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v49, v45
	v_fma_f32 v49, -v35, v51, v33
	v_mul_f32_e32 v54, v50, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v43, v44, v40
	v_fmac_f32_e32 v51, v49, v36
	v_fma_f32 v43, -v38, v53, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v39, v54, v50
	v_div_fmas_f32 v40, v40, v45, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v35, v51, v33
	v_fma_f32 v35, -v46, v55, v52
	v_dual_fmac_f32 v53, v43, v41 :: v_dual_fmac_f32 v54, v49, v42
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v55, v35, v48
	v_div_fmas_f32 v33, v33, v36, v51
	v_fma_f32 v36, -v38, v53, v47
	v_fma_f32 v35, -v39, v54, v50
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v46, v55, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v36, v41, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v33, v33, v10, v129
	v_div_fmas_f32 v35, v35, v42, v54
	s_mov_b32 vcc_lo, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v10, v131, v5 :: v_dual_mul_f32 v9, v125, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v38, v48, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v35, v34, v127
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v40, v8, v130
	v_div_fixup_f32 v35, v38, v37, v126
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v117 :: v_dual_mul_f32 v8, v123, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v36, v32, v128
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v3, 0xbfb8aa3b, v118 :: v_dual_fmac_f32 v38, 0xbfb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v40, v5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v122, v33 :: v_dual_mul_f32 v4, v119, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v33, v38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v7, v124, v7 :: v_dual_mul_f32 v2, v121, v32
	v_mul_f32_e32 v3, v120, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v31, v39, v31
	v_ldexp_f32 v35, v40, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_ldexp_f32 v30, v33, v37
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_add_f32 v30, 1.0, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v31, v31, v118
	v_div_scale_f32 v46, s1, v116, v30, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v112
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v25, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v34, v34
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v30, v30, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v111
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v38, v25, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v28, v41, v28
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v32, v34, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v25, v42, v25 :: v_dual_add_f32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v43, null, v35, v35, v117
	v_div_scale_f32 v45, vcc_lo, v118, v31, v118
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v29, v33, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v40, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v34, v44
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v43, v42, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v44, v34, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v33, 1.0, v33 :: v_dual_fmac_f32 v42, v40, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v40, s0, v117, v35, v117
	v_div_scale_f32 v41, null, v32, v32, v115
	v_mul_f32_e32 v48, v46, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v47, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v39, v45, v25 :: v_dual_add_f32 v36, 1.0, v36
	v_fma_f32 v37, -v38, v39, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v37, v25
	v_fma_f32 v38, -v38, v39, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v38, v25, v39
	v_fma_f32 v39, -v44, v48, v46
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v31, v25, v31, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v39, v34
	v_div_scale_f32 v49, null, v29, v29, v114
	v_div_scale_f32 v39, s2, v115, v32, v115
	v_mul_f32_e32 v37, v40, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v38, v49
	v_fma_f32 v45, -v43, v37, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v45, v42
	v_fma_f32 v45, -v41, v47, 1.0
	v_fma_f32 v25, -v43, v37, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v49, v38, 1.0
	v_div_scale_f32 v43, null, v36, v36, v113
	v_div_fmas_f32 v25, v25, v42, v37
	v_fma_f32 v37, -v44, v48, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v40, v38
	v_rcp_f32_e32 v40, v43
	v_div_scale_f32 v44, s0, v114, v29, v114
	v_fmac_f32_e32 v47, v45, v47
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v35, v25, v35, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v46, v44, v38
	v_div_fmas_f32 v34, v37, v34, v48
	v_mul_f32_e32 v42, v39, v47
	v_div_scale_f32 v45, null, v28, v28, v112
	v_fma_f32 v48, -v43, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v34, v30, v116
	v_fma_f32 v37, -v41, v42, v39
	v_fma_f32 v25, -v49, v46, v44
	v_div_scale_f32 v34, s1, v113, v36, v113
	v_fmac_f32_e32 v40, v48, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v37, v47
	v_div_scale_f32 v37, null, v33, v33, v111
	v_dual_fmac_f32 v46, v25, v38 :: v_dual_mul_f32 v25, v34, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v41, v42, v39
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v50, v45
	v_rcp_f32_e32 v41, v37
	v_div_fmas_f32 v39, v39, v47, v42
	v_fma_f32 v42, -v49, v46, v44
	v_fma_f32 v44, -v43, v25, v34
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v32, v39, v32, v115
	v_fmac_f32_e32 v25, v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v50, 1.0
	v_fma_f32 v49, -v37, v41, 1.0
	v_div_fmas_f32 v38, v42, v38, v46
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v43, v25, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v50, v48, v50 :: v_dual_fmac_f32 v41, v49, v41
	v_div_scale_f32 v44, s0, v111, v33, v111
	v_div_fmas_f32 v25, v34, v40, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, s3, v112, v28, v112
	v_div_fixup_f32 v29, v38, v29, v114
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v38, v44, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v25, v36, v113
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v102
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v37, v38, v44
	v_mul_f32_e32 v47, v48, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v39, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v38, v22, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v45, v47, v48
	v_fmac_f32_e32 v47, v42, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v34, v39, v34
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v45, v47, v48
	v_div_fmas_f32 v23, v23, v50, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v28, v23, v28, v112
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v15, -v37, v38, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v42
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v99
	v_exp_f32_e32 v22, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v15, v15, v41, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v36, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v15, v15, v33, v111
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v37, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v17, v22, v17
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v110, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v34, v34, v102
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v36, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v17
	v_dual_add_f32 v38, 1.0, v33 :: v_dual_mul_f32 v15, v109, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v28, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v39, v39, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v40, null, v38, v38, v101
	v_div_scale_f32 v44, null, v42, v42, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v36
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v108, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v37, v28, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v107, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, vcc_lo, v102, v34, v102
	v_fmac_f32_e32 v28, v25, v28
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v106, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v36, v43, 1.0
	v_div_scale_f32 v48, s0, v101, v38, v101
	v_fma_f32 v29, -v40, v41, 1.0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v103, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v43, v32, v43
	v_fma_f32 v32, -v44, v46, 1.0
	v_div_scale_f32 v49, s1, v100, v39, v100
	v_fmac_f32_e32 v41, v29, v41
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v105, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v46, v32, v46 :: v_dual_mul_f32 v47, v45, v28
	v_div_scale_f32 v52, s2, v99, v42, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v48, v41
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v104, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v37, v47, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v30, v28
	v_fma_f32 v30, -v40, v50, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v37, v47, v45
	v_dual_fmac_f32 v50, v30, v41 :: v_dual_mul_f32 v51, v49, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v28, v31, v28, v47
	v_fma_f32 v31, -v40, v50, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v36, v51, v49
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v28, v28, v34, v102
	v_mul_f32_e32 v53, v52, v46
	v_fmac_f32_e32 v51, v35, v43
	v_div_fmas_f32 v31, v31, v41, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v44, v53, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v31, v38, v101
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v30, v46
	v_fma_f32 v30, -v36, v51, v49
	v_fma_f32 v35, -v44, v53, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v43, v51
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v35, v35, v46, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v27, v30, v39, v100
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v30, v35, v42, v99
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v98, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v94
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v93
	v_exp_f32_e32 v30, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v19, v97, v27 :: v_dual_mul_f32 v24, v95, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v21
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v27, v30, v34
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v90
	v_exp_f32_e32 v37, v37
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v28, v40, v35
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v34, v42
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v27, v27, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v30, v37, v36
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v89
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v18, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v34, v34, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v28, v28, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v41
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v35, v18, 1.0
	v_div_scale_f32 v49, null, v34, v34, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v20, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v18, v40, v18 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v41, v42, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v88
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v51, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v43, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, s0, v93, v28, v93
	v_div_scale_f32 v52, null, v20, v20, v89
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v53, -v49, v51, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v26, v37, v36
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v96, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v39, v38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, vcc_lo, v94, v27, v94
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v30, v30, v92
	v_mul_f32_e32 v36, v40, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v45, null, v31, v31, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v37
	v_dual_fmac_f32 v51, v53, v51 :: v_dual_add_f32 v26, 1.0, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v39, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v35, v36, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v37, v44, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v36, v39, v18
	v_rcp_f32_e32 v39, v45
	v_fma_f32 v35, -v35, v36, v40
	v_mul_f32_e32 v40, v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v35, v18, v36
	v_fma_f32 v48, -v41, v40, v43
	v_rcp_f32_e32 v36, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v45, v39, 1.0
	v_fmac_f32_e32 v44, v46, v44
	v_div_scale_f32 v46, s1, v92, v30, v92
	v_dual_fmac_f32 v40, v48, v42 :: v_dual_fmac_f32 v39, v47, v39
	v_div_scale_f32 v47, s2, v91, v31, v91
	v_div_fixup_f32 v18, v18, v27, v94
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v27, -v41, v40, v43
	v_div_scale_f32 v41, s3, v90, v34, v90
	v_mul_f32_e32 v50, v46, v44
	v_fma_f32 v43, -v52, v36, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v27, v27, v42, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v37, v50, v46
	v_fmac_f32_e32 v36, v43, v36
	v_div_scale_f32 v40, s0, v89, v20, v89
	v_mul_f32_e32 v48, v47, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v35, v44
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v42, null, v26, v26, v88
	v_fma_f32 v35, -v45, v48, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v37, v50, v46
	v_rcp_f32_e32 v46, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v35, v39
	v_mul_f32_e32 v35, v41, v51
	v_div_fmas_f32 v37, v37, v44, v50
	s_mov_b32 vcc_lo, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v45, v48, v47
	v_mul_f32_e32 v45, v40, v36
	v_fma_f32 v44, -v49, v35, v41
	v_div_fixup_f32 v30, v37, v30, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v39, v43, v39, v48
	v_fma_f32 v43, -v52, v45, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v35, v44, v51
	v_div_fixup_f32 v44, v27, v28, v93
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v37, v39, v31, v91
	v_fmac_f32_e32 v45, v43, v36
	v_fma_f32 v27, -v49, v35, v41
	v_fma_f32 v28, -v42, v46, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v52, v45, v40
	v_div_fmas_f32 v27, v27, v51, v35
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v35, null, v38, v38, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v16, v31, v36, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v27, v34, v90
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v36, v35
	v_div_fixup_f32 v16, v16, v20, v89
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v28, v46
	v_div_scale_f32 v28, s1, v88, v26, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v31, v28, v46
	v_fma_f32 v12, -v35, v36, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v13, -v42, v31, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v31, v13, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v13, v40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_exp_f32_e32 v11, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v28, -v42, v31, v28
	v_div_scale_f32 v42, s0, v87, v38, v87
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v36, v12, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v13, v13, v39
	v_exp_f32_e32 v39, v41
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v79
	v_ldexp_f32 v11, v11, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v28, v28, v46, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v20, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v31, v42, v36
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v39, v39, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v26, v28, v26, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v27, -v35, v31, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v12, v20, v12
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v31, v27, v36
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v13, v13, v76
	v_fma_f32 v27, -v35, v31, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v52, s2, v79, v12, v79
	v_rcp_f32_e32 v40, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v27, v36, v31
	v_div_scale_f32 v45, vcc_lo, v76, v13, v76
	v_div_scale_f32 v31, null, v12, v12, v79
	v_div_fixup_f32 v27, v27, v38, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v46, v31
	v_fma_f32 v28, -v41, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_fmac_f32 v40, v28, v40
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v11, v11, v77
	v_div_scale_f32 v47, s0, v77, v11, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v38, v45, v40
	v_div_scale_f32 v43, null, v39, v39, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v20
	v_div_scale_f32 v48, s1, v78, v39, v78
	v_rcp_f32_e32 v42, v43
	v_fma_f32 v49, -v41, v38, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v38, v49, v40
	v_fma_f32 v28, -v20, v35, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v43, v42, 1.0
	v_fmac_f32_e32 v35, v28, v35
	v_fma_f32 v28, -v31, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v36, v42
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v86, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v50, v47, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v28, v46
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v27, v85, v26 :: v_dual_mul_f32 v28, v84, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v51, v48, v42
	v_fma_f32 v26, -v20, v50, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v52, v46
	v_fma_f32 v16, -v41, v38, v45
	v_fma_f32 v49, -v43, v51, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v26, v35
	v_fma_f32 v26, -v31, v53, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v16, v16, v40, v38
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v51, v49, v42
	v_fma_f32 v20, -v20, v50, v47
	v_dual_fmac_f32 v53, v26, v46 :: v_dual_mul_f32 v38, v80, v44
	v_div_fixup_f32 v13, v16, v13, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v43, v51, v48
	v_div_fmas_f32 v20, v20, v35, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v31, -v31, v53, v52
	s_mov_b32 vcc_lo, s1
.Ltmp36:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v16, |v24|, |v21|, |v19|
.Ltmp37:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v26, v26, v42, v51
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v11, v20, v11, v77
	v_div_fmas_f32 v40, v31, v46, v53
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v35, v81, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v26, v26, v39, v78
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v39, v75, v18
	v_mul_f32_e32 v30, v71, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v12, v40, v12, v79
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v31, v83, v34 :: v_dual_mul_f32 v34, v82, v37
	v_mul_f32_e32 v20, v73, v26
	v_mul_f32_e32 v26, v72, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v18, v74, v12
.Ltmp38:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v11, |v33|, |v32|
	v_max3_f32 v12, |v29|, |v25|, |v22|
	v_max3_f32 v37, |v14|, |v9|, |v7|
	v_max_f32_e64 v40, |v39|, |v38|
	v_max3_f32 v41, |v35|, |v34|, |v31|
	v_max3_f32 v42, |v30|, |v26|, |v20|
	v_max3_f32 v43, |v18|, |v2|, |v3|
	v_max3_f32 v13, |v17|, |v15|, |v10|
	v_max3_f32 v11, v11, |v23|, v12
	v_max3_f32 v12, v16, v37, |v8|
	v_max3_f32 v16, |v28|, |v27|, |v5|
	v_max3_f32 v37, v40, |v36|, v41
	v_max3_f32 v40, v42, v43, |v4|
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v43, v70, 7, 0
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v12, v11, v13, v12
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v11, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v13, v37, v16, v40
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v16, v12, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshrrev_b32_e32 v41, 1, v11
	v_permlanex16_b32 v37, v13, s4, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v40, 4, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v37, v37, v37
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_or_b32 v42, v11, 2, v40
	v_xor_b32_e32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v12, v12, v16 :: v_dual_max_f32 v13, v13, v37
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v16, v42, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v37, v43, v40, v6
	v_lshrrev_b32_e32 v40, 2, v11
	v_lshlrev_b32_e32 v41, 3, v6
	v_add3_u32 v16, 0, v6, v16
	ds_store_b64 v37, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v6, 3, v69
	ds_load_b64 v[12:13], v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v37, v13 :: v_dual_mov_b32 v16, v12
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v37, v37, v37
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v13, v13, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v12, v12, v16 :: v_dual_mov_b32 v37, v13
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v16, v12 :: v_dual_max_f32 v37, v37, v37
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v13, v13, v37 :: v_dual_max_f32 v16, v16, v16
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v37, v13 :: v_dual_max_f32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v16, v12 :: v_dual_max_f32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v13, v13, v37 :: v_dual_max_f32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v12, v12, v16 :: v_dual_add_nc_u32 v37, 0, v6
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v16, 0, v41, v40
	ds_store_b64 v16, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[12:13], v37
.Ltmp56:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v12, 0x2b8cbccc, v12 :: v_dual_max_f32 v13, 0x2b8cbccc, v13
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v16
	v_fma_f32 v40, -v16, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v40, v37
	v_div_scale_f32 v40, vcc_lo, v12, 0x40e00000, v12
	v_mul_f32_e32 v41, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v16, v41, v40
	v_fmac_f32_e32 v41, v42, v37
	v_div_scale_f32 v42, null, 0x40e00000, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v16, v41, v40
	v_rcp_f32_e32 v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v16, v16, v37, v41
	v_div_fixup_f32 v12, v16, 0x40e00000, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v42, v40, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v37, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v40, v16, v40
	v_div_scale_f32 v16, vcc_lo, v13, 0x40e00000, v13
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v37, v12, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v12, v16, v40 :: v_dual_and_b32 v41, 0xffff0000, v37
	v_fma_f32 v43, -v42, v12, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v44, null, v41, v41, v33
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v12, v43, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v43, v44
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v16, -v42, v12, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v12, v16, v40, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v40, vcc_lo, v33, v41, v33
	v_fma_f32 v16, -v44, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v13, v12, 0x40e00000, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v43, v16, v43
.Ltmp57:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v16, 4, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v47, v13, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v48, v40, v43
	v_div_scale_f32 v45, null, v41, v41, v32
	v_div_scale_f32 v46, null, v41, v41, v23
	v_div_scale_f32 v50, null, v41, v41, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v45
	v_rcp_f32_e32 v49, v46
	v_div_scale_f32 v51, s0, v32, v41, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v53, v50
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v47, v13, v47, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v52, -v44, v48, v40
	v_div_scale_f32 v57, null, v41, v41, v24
	v_fma_f32 v12, -v45, v42, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v55, -v46, v49, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v13.l, v47.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v56, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v12, v42 :: v_dual_fmac_f32 v49, v55, v49
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v12.l, v37.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v55, s1, v23, v41, v23
	v_dual_mul_f32 v54, v51, v42 :: v_dual_and_b32 v37, 0xffff0000, v47
	v_fmac_f32_e32 v53, v56, v53
	v_div_scale_f32 v47, s2, v29, v41, v29
	v_fmac_f32_e32 v48, v52, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v45, v54, v51
	v_div_scale_f32 v56, null, v41, v41, v22
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v12.h, 0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v40, -v44, v48, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v52, v42
	v_mul_f32_e32 v44, v55, v49
	v_div_scale_f32 v52, null, v41, v41, v25
	v_div_fmas_f32 v40, v40, v43, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v45, v54, v51
	v_fma_f32 v45, -v46, v44, v55
	v_mul_f32_e32 v51, v47, v53
	v_rcp_f32_e32 v48, v52
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v33, v40, v41, v33
	v_fmac_f32_e32 v44, v45, v49
	v_fma_f32 v45, -v50, v51, v47
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v13.h, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v40, -v46, v44, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v45, v53
	v_div_fmas_f32 v42, v43, v42, v54
	v_rcp_f32_e32 v43, v56
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v54, -v52, v48, 1.0
	v_div_fmas_f32 v40, v40, v49, v44
	v_fma_f32 v44, -v50, v51, v47
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v32, v42, v41, v32
	v_fmac_f32_e32 v48, v54, v48
	v_div_scale_f32 v42, s0, v25, v41, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v56, v43, 1.0
	v_div_scale_f32 v46, null, v41, v41, v17
	v_div_fmas_f32 v44, v44, v53, v51
	v_mul_f32_e32 v47, v42, v48
	v_div_scale_f32 v49, s1, v22, v41, v22
	v_div_fixup_f32 v23, v40, v41, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v29, v44, v41, v29
	v_div_scale_f32 v44, s2, v17, v41, v17
	v_fmac_f32_e32 v43, v45, v43
	v_rcp_f32_e32 v45, v46
	v_fma_f32 v51, -v52, v47, v42
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v50, null, v41, v41, v15
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v47, v51, v48
	v_div_scale_f32 v51, null, v41, v41, v10
	v_rcp_f32_e32 v55, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v46, v45, 1.0
	v_fma_f32 v42, -v52, v47, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v52, v51
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v45, v54, v45
	v_mul_f32_e32 v53, v49, v43
	v_div_fmas_f32 v42, v42, v48, v47
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v54, -v50, v55, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v56, v53, v49
	v_div_fixup_f32 v25, v42, v41, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v53, v40, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v47, -v56, v53, v49
	v_fma_f32 v56, -v51, v52, 1.0
	v_fmac_f32_e32 v52, v56, v52
	v_mul_f32_e32 v40, v44, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v43, v47, v43, v53
	v_div_scale_f32 v53, s0, v10, v41, v10
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v48, -v46, v40, v44
	v_div_fixup_f32 v22, v43, v41, v22
	v_mul_f32_e32 v43, v53, v52
	v_rcp_f32_e32 v47, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v48, v45
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v42, -v46, v40, v44
	v_div_scale_f32 v46, null, v41, v41, v21
	v_fma_f32 v44, -v57, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v42, v45, v40
	v_fma_f32 v45, -v51, v43, v53
	v_div_fixup_f32 v17, v40, v41, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v45, v52
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v40, -v51, v43, v53
	v_div_scale_f32 v51, s2, v21, v41, v21
	v_fmac_f32_e32 v55, v54, v55
	v_div_scale_f32 v54, s3, v15, v41, v15
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v49, v54, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v50, v49, v54
	v_fmac_f32_e32 v49, v48, v55
	v_div_scale_f32 v48, s1, v24, v41, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v50, v49, v54
	v_div_scale_f32 v50, null, v41, v41, v19
	v_div_fmas_f32 v42, v42, v55, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v50
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v40, v40, v52, v43
	v_div_fixup_f32 v15, v42, v41, v15
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v52, s0, v19, v41, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v40, v41, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v53, -v50, v45, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v45, v53, v45
	v_div_scale_f32 v53, null, v41, v41, v9
	v_rcp_f32_e32 v56, v53
	v_fmac_f32_e32 v47, v44, v47
	v_rcp_f32_e32 v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v42, -v57, v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v46, v44, 1.0
	v_fmac_f32_e32 v49, v42, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v54, v44
	v_div_scale_f32 v54, null, v41, v41, v14
	v_fma_f32 v40, -v57, v49, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v51, v44
	v_rcp_f32_e32 v43, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v40, v47, v49
	v_fma_f32 v48, -v46, v42, v51
	v_fma_f32 v49, -v53, v56, 1.0
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v40, v41, v24
	v_fmac_f32_e32 v42, v48, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v54, v43, 1.0
	v_div_scale_f32 v48, s1, v14, v41, v14
	v_fmac_f32_e32 v56, v49, v56
	v_fma_f32 v40, -v46, v42, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v57, v43
	v_div_scale_f32 v49, null, v41, v41, v7
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v40, v44, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v46, v48, v43
	v_mul_f32_e32 v55, v52, v45
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v21, v40, v41, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v54, v46, v48
	v_fma_f32 v47, -v50, v55, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v46, v44, v43 :: v_dual_fmac_f32 v55, v47, v45
	v_div_scale_f32 v47, s3, v9, v41, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v54, v46, v48
	v_fma_f32 v42, -v50, v55, v52
	v_rcp_f32_e32 v50, v49
	v_div_scale_f32 v52, null, v41, v41, v8
	v_mul_f32_e32 v51, v47, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v45, v55
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v44, v52
	v_div_fmas_f32 v40, v40, v43, v46
	v_fma_f32 v45, -v53, v51, v47
	v_div_fixup_f32 v19, v42, v41, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v49, v50, 1.0
	v_div_scale_f32 v42, s0, v7, v41, v7
	v_fmac_f32_e32 v51, v45, v56
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v50, v55, v50
	v_fma_f32 v45, -v52, v44, 1.0
	v_div_scale_f32 v54, null, v37, v37, v38
	v_fma_f32 v43, -v53, v51, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v42, v50
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, null, v37, v37, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v56, v51
	v_fma_f32 v51, -v49, v46, v42
	v_div_scale_f32 v47, s1, v8, v41, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v45
	v_div_fixup_f32 v14, v40, v41, v14
	v_fmac_f32_e32 v46, v51, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v53, v47, v44
	v_div_fixup_f32 v9, v43, v41, v9
	v_rcp_f32_e32 v43, v54
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v42, -v49, v46, v42
	v_div_scale_f32 v49, null, v37, v37, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v45, v48, 1.0
	v_fma_f32 v40, -v52, v53, v47
	v_div_fmas_f32 v42, v42, v50, v46
	v_div_scale_f32 v56, null, v37, v37, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v48, v51, v48
	v_rcp_f32_e32 v51, v49
	v_fmac_f32_e32 v53, v40, v44
	v_div_scale_f32 v40, s2, v39, v37, v39
	v_fma_f32 v55, -v54, v43, 1.0
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v52, v53, v47
	v_mul_f32_e32 v47, v40, v48
	v_div_scale_f32 v50, s0, v38, v37, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v52, -v49, v51, 1.0
	v_fmac_f32_e32 v43, v55, v43
	v_rcp_f32_e32 v58, v56
	v_div_fmas_f32 v44, v46, v44, v53
	v_fma_f32 v55, -v45, v47, v40
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, s3, v36, v37, v36
	v_mul_f32_e32 v57, v50, v43
	v_div_fixup_f32 v7, v42, v41, v7
	v_div_fixup_f32 v8, v44, v41, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v52, v51
	v_div_scale_f32 v44, null, v37, v37, v34
	v_fmac_f32_e32 v47, v55, v48
	v_fma_f32 v46, -v54, v57, v50
	v_fma_f32 v41, -v49, v53, v52
	v_fma_f32 v42, -v56, v58, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v40, -v45, v47, v40
	v_fmac_f32_e32 v57, v46, v43
	v_fmac_f32_e32 v53, v41, v51
	v_rcp_f32_e32 v41, v44
	v_fmac_f32_e32 v58, v42, v58
	v_div_scale_f32 v42, s1, v35, v37, v35
	v_div_fmas_f32 v40, v40, v48, v47
	v_fma_f32 v45, -v54, v57, v50
	v_div_scale_f32 v47, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v46, v42, v58
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v48, -v44, v41, 1.0
	v_div_fmas_f32 v43, v45, v43, v57
	v_fma_f32 v45, -v49, v53, v52
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v50, -v56, v46, v42
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s0, v34, v37, v34
	v_div_fixup_f32 v39, v40, v37, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v50, v58
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v48, v41
	v_div_fmas_f32 v45, v45, v51, v53
	v_div_fixup_f32 v38, v43, v37, v38
	v_fma_f32 v43, -v47, v49, 1.0
	v_fma_f32 v42, -v56, v46, v42
	v_fma_f32 v50, -v44, v40, v48
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v36, v45, v37, v36
	v_div_scale_f32 v45, null, v37, v37, v28
	v_fmac_f32_e32 v49, v43, v49
	v_div_scale_f32 v43, s2, v31, v37, v31
	v_div_fmas_f32 v42, v42, v58, v46
	v_fmac_f32_e32 v40, v50, v41
	v_rcp_f32_e32 v51, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v46, v43, v49
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v35, v42, v37, v35
	v_fma_f32 v42, -v44, v40, v48
	v_div_scale_f32 v50, null, v37, v37, v27
	v_fma_f32 v44, -v47, v46, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v42, v41, v40
	v_div_scale_f32 v41, null, v37, v37, v5
	v_fma_f32 v48, -v45, v51, 1.0
	v_rcp_f32_e32 v52, v50
	v_fmac_f32_e32 v46, v44, v49
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v42, s0, v28, v37, v28
	v_fmac_f32_e32 v51, v48, v51
	v_div_scale_f32 v48, null, v37, v37, v30
	v_div_fixup_f32 v34, v40, v37, v34
	v_fma_f32 v43, -v47, v46, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v50, v52, 1.0
	v_rcp_f32_e32 v54, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v53, -v41, v44, 1.0
	v_mul_f32_e32 v47, v42, v51
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v52, v40, v52
	v_div_scale_f32 v40, s1, v27, v37, v27
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v53, null, v37, v37, v26
	v_div_fmas_f32 v43, v43, v49, v46
	v_fma_f32 v46, -v45, v47, v42
	v_mul_f32_e32 v49, v40, v52
	v_div_scale_f32 v55, s2, v5, v37, v5
	v_fma_f32 v56, -v48, v54, 1.0
	v_rcp_f32_e32 v57, v53
	v_fmac_f32_e32 v47, v46, v51
	v_fma_f32 v46, -v50, v49, v40
	v_mul_f32_e32 v58, v55, v44
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, s3, v30, v37, v30
	v_div_fixup_f32 v31, v43, v37, v31
	v_fma_f32 v42, -v45, v47, v42
	v_fmac_f32_e32 v49, v46, v52
	v_fma_f32 v43, -v41, v58, v55
	v_mul_f32_e32 v45, v56, v54
	v_fma_f32 v46, -v53, v57, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v40, -v50, v49, v40
	v_fmac_f32_e32 v58, v43, v44
	v_fma_f32 v43, -v48, v45, v56
	v_fmac_f32_e32 v57, v46, v57
	v_div_scale_f32 v46, s0, v26, v37, v26
	v_div_fmas_f32 v42, v42, v51, v47
	v_div_scale_f32 v47, null, v37, v37, v20
	v_fma_f32 v41, -v41, v58, v55
	v_fmac_f32_e32 v45, v43, v54
	v_mul_f32_e32 v43, v46, v57
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v42, v37, v28
	v_div_fmas_f32 v40, v40, v52, v49
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v49, v47
	v_div_fmas_f32 v41, v41, v44, v58
	v_fma_f32 v44, -v48, v45, v56
	v_fma_f32 v48, -v53, v43, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v40, v37, v27
	v_div_fixup_f32 v5, v41, v37, v5
	v_div_fmas_f32 v44, v44, v54, v45
	v_fmac_f32_e32 v43, v48, v57
	v_div_scale_f32 v41, null, v37, v37, v18
	v_fma_f32 v42, -v47, v49, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v40, -v53, v43, v46
	v_div_fixup_f32 v30, v44, v37, v30
	v_div_scale_f32 v44, null, v37, v37, v3
	v_fmac_f32_e32 v49, v42, v49
	v_div_scale_f32 v42, null, v37, v37, v2
	v_div_fmas_f32 v40, v40, v57, v43
	v_rcp_f32_e32 v43, v41
	v_div_scale_f32 v45, vcc_lo, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_rcp_f32_e32 v48, v44
	v_div_scale_f32 v51, null, v37, v37, v4
	v_mul_f32_e32 v50, v45, v49
	v_div_fixup_f32 v26, v40, v37, v26
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v40, -v41, v43, 1.0
	v_rcp_f32_e32 v53, v51
	v_fma_f32 v54, -v47, v50, v45
	v_fma_f32 v52, -v42, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v44, v48, 1.0
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, s0, v18, v37, v18
	v_fmac_f32_e32 v46, v52, v46
	v_div_scale_f32 v52, s1, v2, v37, v2
	v_fmac_f32_e32 v50, v54, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v56, v40, v43
	v_fmac_f32_e32 v48, v55, v48
	v_div_scale_f32 v55, s2, v3, v37, v3
	v_fma_f32 v57, -v51, v53, 1.0
	v_mul_f32_e32 v58, v52, v46
	v_fma_f32 v45, -v47, v50, v45
	v_fma_f32 v54, -v41, v56, v40
	v_mul_f32_e32 v59, v55, v48
	v_fmac_f32_e32 v53, v57, v53
	v_div_scale_f32 v57, s3, v4, v37, v4
	v_fma_f32 v47, -v42, v58, v52
	v_div_fmas_f32 v45, v45, v49, v50
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v56, v54, v43
	v_fma_f32 v54, -v44, v59, v55
	v_mul_f32_e32 v60, v57, v53
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v58, v47, v46
	v_fma_f32 v40, -v41, v56, v40
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v41, -v51, v60, v57
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v38, v38
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v59, v54, v48
	v_fma_f32 v42, -v42, v58, v52
	v_div_fmas_f32 v40, v40, v43, v56
	v_fmac_f32_e32 v60, v41, v53
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v41, -v44, v59, v55
	v_div_fmas_f32 v42, v42, v46, v58
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v43, -v51, v60, v57
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v41, v41, v48, v59
	v_div_fixup_f32 v2, v42, v37, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v3, v41, v37, v3
	v_div_fmas_f32 v43, v43, v53, v60
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v2, v2
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v20, v45, v37, v20
	v_div_fixup_f32 v18, v40, v37, v18
	v_div_fixup_f32 v4, v43, v37, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v39
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v2, v2, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v39, v10
	v_cvt_i32_f32_e32 v40, v19
	v_and_b32_e32 v10, 15, v15
	v_and_b32_e32 v19, 15, v21
	v_and_b32_e32 v21, 15, v14
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v14, 10, v0
	v_lshlrev_b32_e32 v15, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v51, v2
	v_cvt_i32_f32_e32 v52, v3
	v_and_b32_e32 v2, 15, v33
	v_and_b32_e32 v3, 15, v32
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v14, 0x1800, v14
	v_and_b32_e32 v32, 0x60, v0
	v_and_b32_e32 v33, 0x400, v15
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v46, v5
	v_and_b32_e32 v5, 15, v29
	v_and_b32_e32 v29, 15, v34
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v34, v65, v32
	v_add3_u32 v14, 0, v14, v33
	v_and_or_b32 v15, 0x1b00, v15, v67
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v24, v24
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v41, v9
	v_cvt_i32_f32_e32 v42, v7
	v_cvt_i32_f32_e32 v43, v8
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v47, v30
	v_cvt_i32_f32_e32 v48, v26
	v_cvt_i32_f32_e32 v49, v20
	v_cvt_i32_f32_e32 v53, v4
	v_and_b32_e32 v4, 15, v23
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v14, v14, v1, v34
	v_xad_u32 v15, v15, v68, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v50, v18
	v_and_b32_e32 v9, 15, v17
	v_and_b32_e32 v17, 15, v39
	v_and_b32_e32 v18, 15, v24
	v_and_b32_e32 v20, 15, v40
	v_cvt_i32_f32_e32 v44, v28
	v_cvt_i32_f32_e32 v45, v27
	v_and_b32_e32 v7, 15, v25
	v_and_b32_e32 v8, 15, v22
	v_and_b32_e32 v25, 15, v37
	v_and_b32_e32 v26, 15, v38
	v_and_b32_e32 v27, 15, v36
	v_and_b32_e32 v28, 15, v35
	v_and_b32_e32 v22, 15, v41
	v_and_b32_e32 v23, 15, v42
	v_and_b32_e32 v24, 15, v43
	v_and_b32_e32 v30, 15, v31
	v_and_b32_e32 v31, 15, v46
	v_and_b32_e32 v32, 15, v47
	v_and_b32_e32 v33, 15, v48
	v_and_b32_e32 v34, 15, v49
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v14, v[2:5]
	ds_store_b128 v14, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v15
	ds_load_b128 v[17:20], v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v14, v[25:28]
	ds_store_b128 v14, v[31:34] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v15
	ds_load_b128 v[33:36], v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v14, v[7:10]
	ds_store_b128 v14, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v15
	ds_load_b128 v[21:24], v15 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v31, 15, v44
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v32, 15, v45
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 15, v50
	v_and_b32_e32 v38, 15, v51
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v17, 4, v1
	v_lshl_or_b32 v2, v18, 4, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v39, 15, v52
	v_and_b32_e32 v40, 15, v53
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v1, v20, 4, v4
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v14, v[29:32]
	ds_store_b128 v14, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v15
	ds_load_b128 v[37:40], v15 offset:1024
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v2.l, 8, v2.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v22, 4, v8
	v_lshl_or_b32 v8, v23, 4, v9
	v_lshl_or_b32 v9, v24, 4, v10
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v10, s0, v16
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v2.h, 0xff, v5.l
	.loc	1 85 21 is_stmt 1               ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s30, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v21, 4, v7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s2, s2, s1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v3, v19, 4, v3
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v10, s2, v6, v10
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v6.l, v2.h, v2.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v2, 16, v0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v4.l, 8, v4.l
	v_and_b16 v4.h, 0xff, v7.l
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v9.l
	v_and_b16 v3.h, 0xff, v8.l
	v_lshlrev_b16 v5.l, 8, v17.l
	v_and_b16 v5.h, 0xff, v16.l
	v_or_b16 v7.l, v4.h, v4.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, v0, 31, s30
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v2, v12, v13, vcc_lo
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v20, v39, 4, v31
	v_lshl_or_b32 v21, v40, 4, v32
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v1.l
	v_or_b16 v7.h, v3.h, v3.l
	v_or_b16 v3.h, v5.h, v5.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v5, v4, s5
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_bfe_i32 v4, v2, 0, 16
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v6.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v15.l
	v_and_b16 v0.l, 0xff, v14.l
	v_lshlrev_b16 v0.h, 8, v21.l
	v_and_b16 v1.h, 0xff, v20.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_permlanex16_b32 v8, v4, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v2.l, 8, v19.l
	v_and_b16 v2.h, 0xff, v18.l
	v_or_b16 v3.l, v0.l, v1.l
	v_or_b16 v4.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_lshl_u32 v0, v5, s28, 1
	v_cndmask_b32_e32 v1, v8, v12, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v22, s0, 4, v10
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v4.l, v2.h, v2.l
	s_and_b32 s1, s17, 0xffff
	s_mov_b32 s3, 0x31027000
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_mov_b32 s2, 0x7ffffffe
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 s0, s16
	s_clause 0x1
	buffer_store_b64 v[6:7], v10, s[0:3], 0 offen
	buffer_store_b64 v[3:4], v22, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s1, s19, 0xffff
	s_mov_b32 s0, s18
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp59:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp60:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 252
		.amdhsa_next_free_sgpr 39
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 252
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17888
; TotalNumSgprs: 41
; NumVgprs: 252
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 252
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
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     252
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
