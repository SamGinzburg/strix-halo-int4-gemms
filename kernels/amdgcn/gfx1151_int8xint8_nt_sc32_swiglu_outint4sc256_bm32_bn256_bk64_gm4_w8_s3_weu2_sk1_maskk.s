	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	v_and_b32_e32 v139, 8, v0
	v_lshlrev_b32_e32 v140, 1, v0
	v_lshlrev_b32_e32 v141, 5, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s24, 31
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_xor_b32 s2, s4, s7
	s_mul_hi_u32 s9, s5, s9
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s10, s9, s8
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s5, s10, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s27, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s16, s5, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s24, s16, s2
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s24, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	s_mov_b32 s5, 0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s4, s4, s6
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s17, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v7, 8, v0
.Ltmp15:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v2, 1, v0
	v_lshlrev_b32_e32 v1, 5, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 15 is_stmt 0                ; generate_amdgcn.py:0:15
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow315
	s_load_b128 s[12:15], s[0:1], 0x20
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v75, 7, v0
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v74, 15, v0
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v73, 0xf0, v0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v135, 0
	v_mov_b32_e32 v128, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s26, s4, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp17:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s17, 31
.Ltmp18:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s20, s27, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s21, s20, 31
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s17, s0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s0, s21, 27
.Ltmp23:
	.loc	1 356 14 is_stmt 1              ; generate_amdgcn.py:356:14
	s_lshl_b32 s1, s24, 8
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s20, s20, s0
	s_mov_b32 s0, 0
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v4, 2, v0
.Ltmp25:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s29, s17, 6
.Ltmp26:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s30, s20, 5
	v_bfe_i32 v5, v0, 5, 1
	v_bfe_i32 v7, v0, 2, 1
	v_or_b32_e32 v144, s1, v0
	v_add3_u32 v146, s1, s25, v0
.Ltmp27:
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_lshl_b32 s31, s3, 6
	s_mov_b32 s1, s0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s21, s7
	s_mov_b32 s3, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
	v_lshlrev_b32_e32 v8, 4, v0
	v_and_b32_e32 v6, 0x37c, v4
	v_and_b32_e32 v5, 0x90, v5
	v_and_b32_e32 v10, 0x160, v141
	v_and_b32_e32 v7, 0x90, v7
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v11, 0xf70, v8
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v8, 0xe00, v8
	v_or_b32_e32 v12, s26, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b32_e32 v13, v7, v10
	v_xor_b32_e32 v5, v5, v6
	v_or3_b32 v6, v10, v8, v7
	v_lshrrev_b32_e32 v10, 6, v0
	v_or_b32_e32 v8, 16, v12
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 1, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 1, v0
	v_mul_lo_u32 v142, v12, s30
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v4, 0x1c0, v4
	v_mul_lo_u32 v143, v8, s30
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v8, 2, v10
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v66, 4, v1
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v1, 5, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v8, 0, v8
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v12, 1, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_lshl_b32 s16, s16, 8
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 3, v0
	v_add3_u32 v14, v8, v4, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v4, s25, s16, v2
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v145, 0, v12
	v_or_b32_e32 v2, s16, v2
	s_lshl_b32 s2, s2, 8
	s_mov_b32 s16, s4
	v_subrev_nc_u32_e32 v4, s2, v4
	v_add3_u32 v12, v145, v12, v1
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v1, s26, v3
	v_subrev_nc_u32_e32 v2, s2, v2
	s_mov_b32 s2, s0
	s_mov_b32 s4, s0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v65, 2, v75
	v_bfe_i32 v9, v0, 3, 1
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v3, 0x80, v4
	v_mov_b32_e32 v136, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_mad_u64_u32 v[67:68], null, s27, v1, v[65:66]
	v_and_b32_e32 v9, 0x90, v9
	v_or_b32_e32 v1, 0x80, v2
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v10, 28, v140
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v147, 0, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v7, v9, v11
	v_mad_u64_u32 v[68:69], null, s27, v3, v[66:67]
	v_xor_b32_e32 v9, 16, v13
	v_xor_b32_e32 v11, 16, v6
	v_mad_u64_u32 v[69:70], null, s27, v4, v[66:67]
	v_mad_u64_u32 v[70:71], null, s27, v1, v[66:67]
	v_mad_u64_u32 v[71:72], null, s27, v2, v[66:67]
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v148, 0, v7
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v151, 0, v6
	v_dual_mov_b32 v8, s7 :: v_dual_add_nc_u32 v149, 0, v13
	v_mov_b32_e32 v124, 0
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v150, 0, v9
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v152, 0, v11
	v_dual_mov_b32 v7, s6 :: v_dual_mov_b32 v6, s5
	v_dual_mov_b32 v5, s4 :: v_dual_mov_b32 v4, s3
	v_dual_mov_b32 v3, s2 :: v_dual_mov_b32 v2, s1
	v_mov_b32_e32 v1, s0
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v153, v14, v10
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v154, v12, v10
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v88, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s28, s25, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s0, s8
	s_mov_b32 s1, s9
	s_mov_b32 s2, s18
	s_mov_b32 s3, s19
	s_mov_b32 s4, s10
	s_mov_b32 s5, s11
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_add_nc_u32_e32 v9, s31, v65
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_add_nc_u32_e32 v10, s31, v66
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v11, s31, v67
	.loc	1 376 34                        ; generate_amdgcn.py:376:34
	v_add_nc_u32_e32 v12, s31, v71
	.loc	1 376 26 is_stmt 0              ; generate_amdgcn.py:376:26
	v_add_nc_u32_e32 v13, s31, v70
	.loc	1 369 27 is_stmt 1              ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s27, v9
	.loc	1 382 43                        ; generate_amdgcn.py:382:43
	v_add_nc_u32_e32 v14, s31, v69
	.loc	1 382 35 is_stmt 0              ; generate_amdgcn.py:382:35
	v_add_nc_u32_e32 v15, s31, v68
	.loc	1 386 29 is_stmt 1              ; generate_amdgcn.py:386:29
	s_ashr_i32 s8, s31, 5
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_dual_cndmask_b32 v16, 0x80000000, v11 :: v_dual_add_nc_u32 v25, 32, v13
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s27, v10
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_add_nc_u32_e32 v9, 32, v9
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_add_nc_u32_e32 v10, 32, v10
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v11, 32, v11
	.loc	1 382 35                        ; generate_amdgcn.py:382:35
	v_add_nc_u32_e32 v27, 32, v15
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_cndmask_b32_e32 v17, 0x80000000, v12, vcc_lo
	.loc	1 382 35                        ; generate_amdgcn.py:382:35
	v_dual_cndmask_b32 v21, 0x80000000, v15 :: v_dual_add_nc_u32 v12, 32, v12
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v18, 0x80000000, v14
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s27, v9
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b32 v41, v16, s[16:19], 0 offen
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s9, s31, 32
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v43, v142, s8, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s8, s30
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v28, 0x80000000, v11, vcc_lo
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s27, v10
	.loc	1 382 43                        ; generate_amdgcn.py:382:43
	v_add_nc_u32_e32 v26, 32, v14
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s10, s8, s28
	v_mov_b16_e64 v167.l, 0
	.loc	1 390 22 is_stmt 0              ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v44, v144, s10, 1
	.loc	1 376 26 is_stmt 1              ; generate_amdgcn.py:376:26
	v_cndmask_b32_e32 v29, 0x80000000, v12, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[9:12], v17, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v18, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v21, s[20:23], 0 offen
	v_dual_cndmask_b32 v30, 0x80000000, v25 :: v_dual_cndmask_b32 v33, 0x80000000, v26
	.loc	1 382 35                        ; generate_amdgcn.py:382:35
	v_cndmask_b32_e32 v37, 0x80000000, v27, vcc_lo
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b32 v42, v28, s[16:19], 0 offen
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_clause 0x3
	buffer_load_b128 v[25:28], v29, s[20:23], 0 offen
	buffer_load_b128 v[29:32], v30, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v33, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v37, s[20:23], 0 offen
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v168.l, v167.l
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v155, 0x80000000, v43, vcc_lo
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v162.l, v167.l
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v169.l, v167.l
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v160.l, v167.l
	v_mov_b16_e64 v161.l, v167.l
	v_mov_b16_e64 v163.l, v167.l
	v_mov_b16_e64 v164.l, v167.l
	v_mov_b16_e64 v165.l, v167.l
	v_mov_b16_e64 v166.l, v167.l
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(9)
	ds_store_b32 v147, v41 offset:32768
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_waitcnt vmcnt(8)
	ds_store_b128 v148, v[9:12]
	s_waitcnt vmcnt(7)
	ds_store_b128 v148, v[13:16] offset:4096
	.loc	1 382 35                        ; generate_amdgcn.py:382:35
	s_waitcnt vmcnt(6)
	ds_store_b128 v148, v[17:20] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v148, v[21:24] offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v10, v143, s8, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v147, v42 offset:33792
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v148, v[25:28] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v148, v[29:32] offset:12288
	.loc	1 382 35                        ; generate_amdgcn.py:382:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v148, v[33:36] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v148, v[37:40] offset:28672
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_barrier
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v155, v155, s[0:3], 0 offen
	buffer_load_u16 v156, v10, s[0:3], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s8, s9, 5
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v11, v146, s10, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s9, s8, s28
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v170, v143, s8, 1
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v171, v146, s9, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s8, s30
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v10, v144, s9, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v43, 0x80000000, v44, vcc_lo
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s29, s29, -1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v226, 0x80000000, v170, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v9, v43, s[4:7], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[29:32], v149 offset:32768
	ds_load_b128 v[25:28], v149 offset:33280
	ds_load_b128 v[21:24], v150 offset:32768
	ds_load_b128 v[17:20], v150 offset:33280
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[49:52], v151
	ds_load_b128 v[53:56], v151 offset:4096
	ds_load_b128 v[33:36], v152
	ds_load_b128 v[37:40], v152 offset:4096
	.loc	1 382 35                        ; generate_amdgcn.py:382:35
	ds_load_b128 v[57:60], v151 offset:16384
	ds_load_b128 v[61:64], v151 offset:20480
	ds_load_b128 v[41:44], v152 offset:16384
	ds_load_b128 v[45:48], v152 offset:20480
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v227, 0x80000000, v171, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s31, s31, 64
	s_cmp_lg_u32 s29, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[49:52], v[29:32], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[194:201], v[53:56], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[53:56], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[49:52], v[25:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[57:60], v[29:32], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[202:209], v[61:64], v[29:32], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[194:201], v[37:40], v[17:20], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[170:177], v[33:36], v[21:24], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[37:40], v[21:24], v[178:185] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[41:44], v[21:24], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[202:209], v[45:48], v[21:24], v[202:209] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v24, v199
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[218:225], v[61:64], v[25:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v62, v176
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[210:217], v[57:60], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v24, v156, v24
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[218:225], v[45:48], v[17:20], v[218:225] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[186:193], v[33:36], v[17:20], v[186:193] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[210:217], v[41:44], v[17:20], v[210:217] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v25, v200
	v_cvt_f32_i32_e32 v17, v171
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v31, v218
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v159, 0x80000000, v10, vcc_lo
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v176, v220
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v22, v187
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v32, v223
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v220, v156, v31
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v43, v217
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v22, v22, v156 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v18, v178
	v_cvt_f32_i32_e32 v19, v183
	v_cvt_f32_i32_e32 v20, v184
	v_cvt_f32_i32_e32 v21, v185
	v_cvt_f32_i32_e32 v23, v194
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v27, v202
	v_cvt_f32_i32_e32 v28, v207
	v_cvt_f32_i32_e32 v29, v208
	v_cvt_f32_i32_e32 v30, v209
	v_cvt_f32_i32_e32 v33, v224
	v_cvt_f32_i32_e32 v34, v225
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v35, v170
	v_cvt_f32_i32_e32 v36, v186
	v_cvt_f32_i32_e32 v37, v189
	v_cvt_f32_i32_e32 v41, v191
	v_cvt_f32_i32_e32 v42, v190
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v44, v216
	v_cvt_f32_i32_e32 v45, v215
	v_cvt_f32_i32_e32 v46, v214
	v_cvt_f32_i32_e32 v47, v213
	v_cvt_f32_i32_e32 v48, v212
	v_cvt_f32_i32_e32 v57, v211
	v_cvt_f32_i32_e32 v58, v210
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v59, v173
	v_cvt_f32_i32_e32 v60, v172
	v_cvt_f32_i32_e32 v61, v177
	v_cvt_f32_i32_e32 v63, v175
	v_cvt_f32_i32_e32 v64, v174
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
	v_cvt_f32_i32_e32 v170, v198
	v_cvt_f32_i32_e32 v171, v197
	v_cvt_f32_i32_e32 v172, v196
	v_cvt_f32_i32_e32 v173, v195
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v175, v221
	v_cvt_f32_i32_e32 v177, v219
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v178, v182
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v179, v179
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v182, v206
	v_cvt_f32_i32_e32 v183, v205
	v_cvt_f32_i32_e32 v184, v204
	v_cvt_f32_i32_e32 v185, v203
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v156, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v221, v156, v32 :: v_dual_mul_f32 v230, v155, v53
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v32, v62, v155
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v26, v201
	v_cvt_f32_i32_e32 v38, v188
	v_cvt_f32_i32_e32 v39, v193
	v_cvt_f32_i32_e32 v40, v192
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v174, v222
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v18, v155, v18
	v_mul_f32_e32 v19, v155, v19
	v_mul_f32_e32 v20, v155, v20
	v_mul_f32_e32 v21, v155, v21
	v_mul_f32_e32 v215, v35, v155
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v216, v155, v27
	v_dual_mul_f32 v217, v155, v28 :: v_dual_mul_f32 v28, v60, v155
	v_mul_f32_e32 v218, v155, v29
	v_dual_mul_f32 v219, v155, v30 :: v_dual_mul_f32 v30, v64, v155
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v23, v156, v23 :: v_dual_mul_f32 v224, v155, v49
	v_dual_mul_f32 v27, v36, v156 :: v_dual_mul_f32 v228, v155, v51
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v222, v156, v33
	v_dual_mul_f32 v223, v156, v34 :: v_dual_mul_f32 v232, v155, v55
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v17, v155 :: v_dual_mul_f32 v38, v38, v156
	v_mul_f32_e32 v29, v59, v155
	v_dual_mul_f32 v31, v63, v155 :: v_dual_mul_f32 v40, v40, v156
	v_dual_mul_f32 v61, v61, v155 :: v_dual_mul_f32 v234, v156, v58
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v225, v155, v50 :: v_dual_mul_f32 v236, v156, v48
	v_dual_mul_f32 v229, v155, v52 :: v_dual_mul_f32 v238, v156, v46
	v_dual_mul_f32 v231, v155, v54 :: v_dual_mul_f32 v240, v156, v44
	v_dual_mul_f32 v233, v155, v56 :: v_dual_mul_f32 v54, v156, v170
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v37, v37, v156 :: v_dual_mul_f32 v48, v155, v178
	v_dual_mul_f32 v49, v42, v156 :: v_dual_mul_f32 v242, v155, v185
	v_dual_mul_f32 v50, v41, v156 :: v_dual_mul_f32 v235, v156, v57
	v_dual_mul_f32 v46, v155, v180 :: v_dual_mul_f32 v239, v156, v45
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v244, v155, v183
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v45, v155, v179 :: v_dual_mul_f32 v52, v156, v172
	v_dual_mul_f32 v26, v156, v26 :: v_dual_mul_f32 v39, v39, v156
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v246, v156, v176
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v153, v9 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v157, v11, s[4:7], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v9, v142, s8, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v158, 0x80000000, v9, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[9:12], v145 offset:34816
	ds_load_b128 v[13:16], v145 offset:34832
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v237, v156, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v155, v181
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v243, v155, v184
	v_mul_f32_e32 v155, v155, v182
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v51, v156, v173
	v_mul_f32_e32 v53, v156, v171
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v245, v156, v177
	v_mul_f32_e32 v247, v156, v175
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v168.h, v11.l
	v_lshlrev_b32_e32 v56, 16, v10
	v_and_b32_e32 v63, 0xffff0000, v15
	v_lshlrev_b32_e32 v55, 16, v9
	v_and_b32_e32 v9, 0xffff0000, v9
	v_and_b32_e32 v64, 0xffff0000, v16
	v_mov_b16_e64 v167.h, v13.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v114, v28, v168 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v16, 16, v16
	v_mov_b16_e64 v169.h, v12.l
	v_and_b32_e32 v10, 0xffff0000, v10
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v108, v17, v56 :: v_dual_and_b32 v11, 0xffff0000, v11
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v12, 0xffff0000, v12
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v112, v32, v15 :: v_dual_and_b32 v13, 0xffff0000, v13
	v_fmac_f32_e32 v124, v25, v63
	v_fmac_f32_e32 v126, v23, v9
	v_dual_fmac_f32 v128, v20, v63 :: v_dual_fmac_f32 v123, v26, v64
	v_dual_fmac_f32 v76, v52, v11 :: v_dual_fmac_f32 v109, v29, v169
	v_dual_fmac_f32 v84, v22, v56 :: v_dual_fmac_f32 v107, v215, v55
	v_fmac_f32_e32 v78, v54, v13
	v_dual_fmac_f32 v135, v18, v9 :: v_dual_fmac_f32 v88, v40, v15
	v_dual_fmac_f32 v127, v21, v64 :: v_dual_fmac_f32 v102, v48, v13
	v_dual_fmac_f32 v113, v61, v16 :: v_dual_fmac_f32 v100, v46, v11
	v_fmac_f32_e32 v86, v49, v167
	v_fmac_f32_e32 v110, v30, v167
	v_fmac_f32_e32 v90, v38, v168
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	ds_store_b16 v153, v157 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v157, v159, s[4:7], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v158, v158, s[0:3], 0 offen
	buffer_load_u16 v226, v226, s[0:3], 0 offen
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v241, v156, v43
	ds_load_b128 v[175:178], v145 offset:34816
	ds_load_b128 v[179:182], v145 offset:34832
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[57:60], v149 offset:33792
	ds_load_b128 v[183:186], v149 offset:34304
	ds_load_b128 v[187:190], v150 offset:33792
	ds_load_b128 v[191:194], v150 offset:34304
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[33:36], v151 offset:8192
	ds_load_b128 v[41:44], v151 offset:12288
	ds_load_b128 v[195:198], v152 offset:8192
	ds_load_b128 v[199:202], v152 offset:12288
	.loc	1 382 35                        ; generate_amdgcn.py:382:35
	ds_load_b128 v[170:173], v151 offset:24576
	ds_load_b128 v[203:206], v151 offset:28672
	ds_load_b128 v[207:210], v152 offset:24576
	ds_load_b128 v[211:214], v152 offset:28672
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v156, v156, v174 :: v_dual_fmac_f32 v89, v39, v16
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v159.l, v167.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v101, v47, v12
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v162.h, v178.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v79, v27, v55 :: v_dual_and_b32 v248, 0xffff0000, v181
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v161.h, v177.l
	v_mov_b16_e64 v159.h, v175.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v120, v229, v162
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v160.h, v176.l
	v_mov_b16_e64 v163.h, v179.l
	v_mov_b16_e64 v164.h, v180.l
	v_mov_b16_e64 v165.h, v181.l
	v_mov_b16_e64 v166.h, v182.l
	v_and_b32_e32 v215, 0xffff0000, v175
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v91, v236, v161
	v_dual_fmac_f32 v131, v222, v248 :: v_dual_fmac_f32 v122, v224, v159
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v116, v233, v166 :: v_dual_fmac_f32 v133, v220, v215
	v_dual_fmac_f32 v94, v239, v164 :: v_dual_fmac_f32 v117, v232, v165
	v_fmac_f32_e32 v96, v237, v162
	v_dual_fmac_f32 v118, v231, v164 :: v_dual_fmac_f32 v115, v228, v161
	v_fmac_f32_e32 v98, v234, v159
	v_fmac_f32_e32 v136, v218, v248
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v62, 16, v157
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v137, v216, v215 :: v_dual_lshlrev_b32 v158, 16, v158
	v_fmac_f32_e32 v92, v241, v166
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v154, v62 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v157, v227, s[4:7], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v62, 0xffff0000, v14
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_and_b32_e32 v227, 0xffff0000, v180
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v85, v37, v169 :: v_dual_fmac_f32 v72, v51, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v125, v24, v62
	v_fmac_f32_e32 v87, v50, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v138, v217, v227 :: v_dual_and_b32 v249, 0xffff0000, v182
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v77, v53, v12
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[49:56], v[203:206], v[57:60], v[1:8] neg_lo:[1,1,0]
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v129, v19, v62
	v_fmac_f32_e32 v111, v31, v14
	v_dual_fmac_f32 v99, v45, v10 :: v_dual_fmac_f32 v134, v219, v249
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[33:36], v[183:186], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[183:186], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[41:48], v[170:173], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[170:173], v[183:186], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[167:174], v[203:206], v[183:186], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[211:214], v[187:190], v[49:56] neg_lo:[1,1,0]
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v132, v221, v227 :: v_dual_and_b32 v175, 0xffff0000, v176
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_and_b32_e32 v176, 0xffff0000, v177
	v_and_b32_e32 v177, 0xffff0000, v178
	v_and_b32_e32 v178, 0xffff0000, v179
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[195:198], v[187:190], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[199:202], v[187:190], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[199:202], v[191:194], v[33:40] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[167:174], v[211:214], v[191:194], v[167:174] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v119, v230, v163 :: v_dual_fmac_f32 v104, v244, v177
	v_dual_fmac_f32 v121, v225, v160 :: v_dual_fmac_f32 v106, v242, v175
	v_dual_fmac_f32 v93, v240, v165 :: v_dual_fmac_f32 v80, v245, v175
	v_dual_fmac_f32 v95, v238, v163 :: v_dual_fmac_f32 v82, v247, v177
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v159, v22
	v_cvt_f32_i32_e32 v161, v24
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v162, v167
	v_cvt_f32_i32_e32 v163, v172
	v_cvt_f32_i32_e32 v164, v173
	v_cvt_f32_i32_e32 v165, v174
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v166, v9
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v97, v235, v160
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v160, v23
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v83, v156, v178
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v156, v17
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v103, v155, v178
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v155, v10
	v_cvt_f32_i32_e32 v167, v11
	v_cvt_f32_i32_e32 v172, v12
	v_cvt_f32_i32_e32 v173, v13
	v_cvt_f32_i32_e32 v174, v14
	v_cvt_f32_i32_e32 v175, v15
	v_cvt_f32_i32_e32 v177, v18
	v_cvt_f32_i32_e32 v178, v19
	v_cvt_f32_i32_e32 v179, v20
	v_cvt_f32_i32_e32 v180, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v56, v158, v56 :: v_dual_lshlrev_b32 v181, 16, v226
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v105, v243, v176
	v_fmac_f32_e32 v81, v246, v176
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v176, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v145 offset:34816
	ds_load_b128 v[13:16], v145 offset:34832
	ds_load_b128 v[17:20], v145 offset:35328
	ds_load_b128 v[21:24], v145 offset:35344
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[25:32], v[195:198], v[191:194], v[25:32] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[41:48], v[207:210], v[187:190], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[207:210], v[191:194], v[57:64] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v166, v166, v158 :: v_dual_mul_f32 v25, v25, v181
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v54, v158, v54
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v156, v158, v156
	v_dual_mul_f32 v159, v158, v159 :: v_dual_mul_f32 v40, v181, v40
	v_mul_f32_e32 v160, v158, v160
	v_dual_mul_f32 v161, v158, v161 :: v_dual_mul_f32 v164, v181, v164
	v_dual_mul_f32 v33, v181, v33 :: v_dual_mul_f32 v176, v176, v158
	v_mul_f32_e32 v38, v181, v38
	v_dual_mul_f32 v39, v181, v39 :: v_dual_mul_f32 v174, v174, v158
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v49, v158, v49 :: v_dual_mul_f32 v172, v172, v158
	v_dual_mul_f32 v55, v158, v55 :: v_dual_mul_f32 v32, v32, v181
	v_dual_mul_f32 v163, v181, v163 :: v_dual_mul_f32 v48, v158, v48
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v175, v175, v158 :: v_dual_mul_f32 v44, v158, v44
	v_dual_mul_f32 v173, v173, v158 :: v_dual_mul_f32 v30, v30, v181
	v_dual_mul_f32 v167, v167, v158 :: v_dual_mul_f32 v28, v28, v181
	v_dual_mul_f32 v155, v155, v158 :: v_dual_mul_f32 v26, v26, v181
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v42, v158, v42 :: v_dual_mul_f32 v31, v31, v181
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v29, v29, v181 :: v_dual_mul_f32 v180, v158, v180
	v_dual_mul_f32 v27, v27, v181 :: v_dual_mul_f32 v178, v158, v178
	v_dual_mul_f32 v179, v158, v179 :: v_dual_mul_f32 v36, v181, v36
	v_dual_mul_f32 v177, v158, v177 :: v_dual_mul_f32 v34, v181, v34
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v37, v181, v37 :: v_dual_fmac_f32 v124, v39, v23
	v_dual_mul_f32 v35, v181, v35 :: v_dual_fmac_f32 v84, v26, v10
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v107, v166, v9 :: v_dual_fmac_f32 v88, v31, v15
	v_dual_fmac_f32 v79, v25, v9 :: v_dual_fmac_f32 v72, v34, v18
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v130, v223, v249
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v165, v181, v165 :: v_dual_mul_f32 v46, v158, v46
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mul_f32 v41, v158, v41 :: v_dual_mul_f32 v58, v181, v58
	v_dual_mul_f32 v61, v181, v61 :: v_dual_mul_f32 v50, v158, v50
	v_dual_mul_f32 v59, v181, v59 :: v_dual_fmac_f32 v108, v155, v10
	v_dual_mul_f32 v57, v181, v57 :: v_dual_fmac_f32 v128, v160, v23
	v_dual_mul_f32 v169, v181, v169 :: v_dual_fmac_f32 v114, v167, v11
	v_dual_mul_f32 v168, v181, v168 :: v_dual_fmac_f32 v135, v156, v17
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v129, v159, v22 :: v_dual_fmac_f32 v126, v33, v17
	v_dual_fmac_f32 v127, v161, v24 :: v_dual_fmac_f32 v112, v175, v15
	v_dual_fmac_f32 v125, v38, v22 :: v_dual_fmac_f32 v110, v173, v13
	v_dual_fmac_f32 v123, v40, v24 :: v_dual_fmac_f32 v90, v27, v11
	v_dual_fmac_f32 v109, v172, v12 :: v_dual_fmac_f32 v86, v29, v13
	v_dual_fmac_f32 v111, v174, v14 :: v_dual_fmac_f32 v102, v180, v21
	v_dual_fmac_f32 v113, v176, v16 :: v_dual_fmac_f32 v100, v178, v19
	v_dual_fmac_f32 v85, v28, v12 :: v_dual_fmac_f32 v76, v35, v19
	v_dual_fmac_f32 v87, v30, v14 :: v_dual_fmac_f32 v78, v37, v21
	v_fmac_f32_e32 v89, v32, v16
	v_fmac_f32_e32 v99, v177, v18
	v_fmac_f32_e32 v101, v179, v20
	v_fmac_f32_e32 v77, v36, v20
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v162, v181, v162 :: v_dual_mul_f32 v47, v158, v47
	v_dual_mul_f32 v64, v181, v64 :: v_dual_mul_f32 v45, v158, v45
	v_dual_mul_f32 v62, v181, v62 :: v_dual_mul_f32 v43, v158, v43
	v_mul_f32_e32 v60, v181, v60
	v_dual_mul_f32 v63, v181, v63 :: v_dual_mul_f32 v52, v158, v52
	v_mul_f32_e32 v53, v158, v53
	v_dual_mul_f32 v51, v158, v51 :: v_dual_mul_f32 v170, v181, v170
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v158, v181, v171 :: v_dual_lshlrev_b32 v9, 16, v157
	ds_store_b32 v154, v9 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v145 offset:34816
	ds_load_b128 v[13:16], v145 offset:34832
	ds_load_b128 v[17:20], v145 offset:35328
	ds_load_b128 v[21:24], v145 offset:35344
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v122, v41, v9 :: v_dual_fmac_f32 v121, v42, v10
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v104, v52, v20 :: v_dual_fmac_f32 v115, v43, v11
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v138, v54, v22
	v_dual_fmac_f32 v120, v44, v12 :: v_dual_fmac_f32 v119, v45, v13
	v_fmac_f32_e32 v136, v55, v23
	v_dual_fmac_f32 v118, v46, v14 :: v_dual_fmac_f32 v117, v47, v15
	v_fmac_f32_e32 v134, v56, v24
	v_dual_fmac_f32 v116, v48, v16 :: v_dual_fmac_f32 v137, v49, v17
	v_fmac_f32_e32 v96, v60, v12
	v_dual_fmac_f32 v106, v50, v18 :: v_dual_fmac_f32 v105, v51, v19
	v_fmac_f32_e32 v98, v57, v9
	v_dual_fmac_f32 v103, v53, v21 :: v_dual_fmac_f32 v94, v62, v14
	v_dual_fmac_f32 v97, v58, v10 :: v_dual_fmac_f32 v92, v64, v16
	v_dual_fmac_f32 v91, v59, v11 :: v_dual_fmac_f32 v80, v168, v18
	v_dual_fmac_f32 v95, v61, v13 :: v_dual_fmac_f32 v82, v170, v20
	v_dual_fmac_f32 v93, v63, v15 :: v_dual_fmac_f32 v130, v165, v24
	v_dual_fmac_f32 v133, v162, v17 :: v_dual_fmac_f32 v132, v163, v22
	v_fmac_f32_e32 v81, v169, v19
	v_fmac_f32_e32 v83, v158, v21
	v_fmac_f32_e32 v131, v164, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v7, v139 :: v_dual_mov_b32 v2, v140
	v_mov_b32_e32 v1, v141
.LBB0_7:                                ; %._crit_edge
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v3, 0xbfb8aa3b, v137 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v115
	v_mul_f32_e32 v11, 0xbfb8aa3b, v134
	v_dual_mul_f32 v15, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_mul_f32_e32 v27, 0xbfb8aa3b, v93
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	v_mul_f32_e32 v25, 0xbfb8aa3b, v97
	v_dual_mul_f32 v31, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v120
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v5, 0xbfb8aa3b, v138
	v_cndmask_b32_e64 v14, 0, 0x42800000, s1
	v_mul_f32_e32 v9, 0xbfb8aa3b, v136
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v137
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v134
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s1
	v_exp_f32_e32 v8, v8
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_exp_f32_e32 v14, v14
	v_dual_fmac_f32 v9, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v136
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	v_exp_f32_e32 v9, v9
	v_ldexp_f32 v6, v8, v6
	v_exp_f32_e32 v12, v12
	v_dual_fmac_f32 v15, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v3, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v121
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v6, 1.0, v6 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v30, 0xbfb8aa3b, v117
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v5, v9, v5
	v_ldexp_f32 v8, v12, v11
	v_ldexp_f32 v9, v14, v13
	v_exp_f32_e32 v11, v15
	v_dual_mul_f32 v14, 0xbfb8aa3b, v132 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v6, v6, v137
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_mul_f32_e32 v14, 0xbfb8aa3b, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v36, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v23, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v11, v11, v16
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_mul_f32_e32 v14, 0xbfb8aa3b, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v5, v5, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v13, 0xbfb8aa3b, v82 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v38
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v8, 1.0, v8 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v34, v36, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v42, v16
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v8, v8, v136
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v37, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v36, v14, v36 :: v_dual_add_f32 v9, 1.0, v9
	v_div_scale_f32 v44, vcc_lo, v137, v6, v137
	v_fma_f32 v16, -v38, v41, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v47, s0, v138, v5, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v16, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v33, v42, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v46, v44, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v35, v37, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v42, v47, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v14, 0xbfb8aa3b, v81 :: v_dual_add_f32 v11, 1.0, v11
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v43, v45, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v34, v46, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v80
	v_ldexp_f32 v39, v40, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v45, v48, v45
	v_div_scale_f32 v40, s1, v136, v8, v136
	v_dual_fmac_f32 v46, v37, v36 :: v_dual_add_f32 v35, 1.0, v35
	v_fma_f32 v37, -v38, v42, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v17, 0xbfb8aa3b, v103 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v106
	v_dual_mul_f32 v19, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v37, v41
	v_mul_f32_e32 v37, v40, v45
	v_fma_f32 v34, -v34, v46, v44
	v_div_scale_f32 v44, null, v9, v9, v134
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v21, 0xbfb8aa3b, v92 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v34, v34, v36, v46
	v_fma_f32 v36, -v38, v42, v47
	v_fma_f32 v38, -v43, v37, v40
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v6, v34, v6, v137
	s_mov_b32 s4, 0x76543210
	v_dual_fmac_f32 v37, v38, v45 :: v_dual_add_f32 v38, 1.0, v39
.Ltmp28:
	.loc	1 82 15 is_stmt 1               ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v2, 0x100, v2
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s5, s25, 31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v1, 0x60, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp29:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v43, v37, v40
	v_div_scale_f32 v40, null, v35, v35, v131
	v_fma_f32 v39, -v44, v46, 1.0
	v_div_scale_f32 v47, null, v38, v38, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v43, v40
.Ltmp30:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s5, s5, 24
.Ltmp31:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v47
.Ltmp32:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s5, s25, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	s_ashr_i32 s5, s5, 8
.Ltmp33:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v40, v43, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v53, -v47, v49, 1.0
	v_fmac_f32_e32 v43, v51, v43
	v_div_fmas_f32 v36, v36, v41, v42
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s2, v131, v35, v131
	v_div_fmas_f32 v34, v34, v45, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v5, v36, v5, v138
	v_div_scale_f32 v36, null, v11, v11, v133
	v_div_scale_f32 v41, vcc_lo, v134, v9, v134
	v_div_fixup_f32 v8, v34, v8, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v37, v36
	v_mul_f32_e32 v55, v51, v43
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s3, v130, v38, v130
	v_mul_f32_e32 v56, v53, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v36, v37, 1.0
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, null, v33, v33, v132
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s0, v133, v11, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v42, v39
	v_dual_mul_f32 v45, v41, v46 :: v_dual_mul_f32 v52, v34, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v50, -v44, v45, v41
	v_fma_f32 v48, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v50, v46
	v_fma_f32 v50, -v36, v52, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s1, v132, v33, v132
	v_fmac_f32_e32 v52, v50, v37
	v_fma_f32 v41, -v44, v45, v41
	v_fma_f32 v50, -v40, v55, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v48, v42
	v_fma_f32 v34, -v36, v52, v34
	v_fma_f32 v36, -v47, v56, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v50, v43
	v_fma_f32 v44, -v39, v54, v48
	v_div_fmas_f32 v41, v41, v46, v45
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v56, v36, v49
	v_div_fmas_f32 v34, v34, v37, v52
	v_fmac_f32_e32 v54, v44, v42
	v_fma_f32 v36, -v40, v55, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v10
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v39, v54, v48
	v_fma_f32 v39, -v47, v56, v53
	v_div_fixup_f32 v9, v41, v9, v134
	v_div_fixup_f32 v34, v34, v11, v133
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v135, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v37, v42, v54
	s_mov_b32 vcc_lo, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v36, v43, v55
	s_mov_b32 vcc_lo, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v127, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v36, v35, v131
	v_div_fixup_f32 v33, v37, v33, v132
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v39, v38, v130
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v122
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v30
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v10, v129, v5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v123, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v124, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v121
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v8, v128, v8 :: v_dual_mul_f32 v3, v125, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v119
	v_exp_f32_e32 v41, v6
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v126, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v34, v39
	v_ldexp_f32 v32, v40, v32
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_exp_f32_e32 v35, v35
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v36, v41, v37
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s0
	v_ldexp_f32 v31, v34, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v35, v33
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0x42800000, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v32, v32, v122
	v_div_scale_f32 v45, null, v31, v31, v120
	v_div_scale_f32 v47, s1, v120, v31, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v35, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v26, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v42, v42
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v36, 1.0, v36 :: v_dual_add_f32 v33, 1.0, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, vcc_lo, v122, v32, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v44, null, v36, v36, v121
	v_fma_f32 v43, -v39, v26, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v29, v42, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v45, v35, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v117 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v115
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v35, v42, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v41, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v33, v33, v119
	v_mul_f32_e32 v49, v47, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v48, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v37, v38, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v26, v43, v26
	v_rcp_f32_e32 v43, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v118 :: v_dual_add_f32 v37, 1.0, v37
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v30, v34, v30
	v_ldexp_f32 v34, v41, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v40, v46, v26
	v_fma_f32 v41, -v44, v43, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v39, v40, v46
	v_fmac_f32_e32 v43, v41, v43
	v_div_scale_f32 v41, s0, v121, v36, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v38, v26
	v_fma_f32 v39, -v39, v40, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v39, v26, v40
	v_fma_f32 v40, -v45, v49, v47
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v32, v26, v32, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v40, v35
	v_div_scale_f32 v40, s2, v119, v33, v119
	v_mul_f32_e32 v38, v41, v43
	v_fma_f32 v46, -v44, v38, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v38, v46, v43
	v_fma_f32 v46, -v42, v48, 1.0
	v_fma_f32 v26, -v44, v38, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v46, v48
	v_div_scale_f32 v44, null, v37, v37, v117
	v_div_scale_f32 v46, null, v29, v29, v116
	v_div_fmas_f32 v26, v26, v43, v38
	v_fma_f32 v38, -v45, v49, v47
	v_mul_f32_e32 v43, v40, v48
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v51, v46
	v_div_fixup_f32 v36, v26, v36, v121
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v42, v43, v40
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v35, v31, v120
	v_fmac_f32_e32 v43, v38, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v50, null, v30, v30, v118
	v_div_scale_f32 v45, s0, v118, v30, v118
	v_div_scale_f32 v38, null, v34, v34, v115
	v_rcp_f32_e32 v39, v50
	v_div_scale_f32 v35, s1, v117, v37, v117
	v_fma_f32 v40, -v42, v43, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v41, -v50, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v41, v39
	v_rcp_f32_e32 v41, v44
	v_mul_f32_e32 v47, v45, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v26, -v50, v47, v45
	v_fma_f32 v49, -v44, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v49, v41
	v_fma_f32 v49, -v46, v51, 1.0
	v_dual_fmac_f32 v47, v26, v39 :: v_dual_mul_f32 v26, v35, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v49, v51
	v_div_fmas_f32 v40, v40, v48, v43
	v_fma_f32 v43, -v50, v47, v45
	v_fma_f32 v50, -v38, v42, 1.0
	v_fma_f32 v45, -v44, v26, v35
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v49, s3, v116, v29, v116
	v_div_fmas_f32 v39, v43, v39, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v26, v45, v41
	v_fmac_f32_e32 v42, v50, v42
	v_div_scale_f32 v45, s0, v115, v34, v115
	v_div_fixup_f32 v30, v39, v30, v118
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v39, v45, v42
	v_fma_f32 v35, -v44, v26, v35
	v_div_fixup_f32 v33, v40, v33, v119
	v_fma_f32 v23, -v38, v39, v45
	v_mul_f32_e32 v48, v49, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v26, v35, v41, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v39, v23, v42
	v_fma_f32 v43, -v46, v48, v49
	v_div_fixup_f32 v26, v26, v37, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v48, v43, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v106
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v24, -v46, v48, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v105
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v24, v24, v51, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v29, v24, v29, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v17, -v38, v39, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v43
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v35, v40, v35
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v104
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v23, v23
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v103
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v17, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v46, vcc_lo, v106, v35, v106
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v17, v34, v115
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v34, v38, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v35, v35, v106
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v23, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v39, 1.0, v34 :: v_dual_mul_f32 v34, v107, v32
	v_add_f32_e32 v40, 1.0, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v37, v43
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v24, v114, v17
	v_mul_f32_e32 v17, v113, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v29, v38
	v_div_scale_f32 v37, null, v40, v40, v104
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v39, v39, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v37
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v112, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v43, v43, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v26, -v38, v29, 1.0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v111, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v47, v45
	v_div_scale_f32 v49, s0, v105, v39, v105
	v_fmac_f32_e32 v29, v26, v29
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v110, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v37, v44, 1.0
	v_div_scale_f32 v50, s1, v104, v40, v104
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v41, v42, 1.0
	v_div_scale_f32 v53, s2, v103, v43, v103
	v_fmac_f32_e32 v44, v33, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v45, v47, 1.0
	v_fmac_f32_e32 v42, v30, v42
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v109, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v47, v33, v47 :: v_dual_mul_f32 v48, v46, v29
	v_mul_f32_e32 v51, v49, v42
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v108, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v38, v48, v46
	v_fmac_f32_e32 v48, v31, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v41, v51, v49
	v_fma_f32 v32, -v38, v48, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v51, v31, v42 :: v_dual_mul_f32 v52, v50, v44
	v_div_fmas_f32 v29, v32, v29, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v41, v51, v49
	v_fma_f32 v36, -v37, v52, v50
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v29, v29, v35, v106
	v_mul_f32_e32 v54, v53, v47
	v_fmac_f32_e32 v52, v36, v44
	v_div_fmas_f32 v32, v32, v42, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v45, v54, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v32, v32, v39, v105
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v54, v31, v47
	v_fma_f32 v31, -v37, v52, v50
	v_fma_f32 v36, -v45, v54, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v31, v44, v52
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v36, v36, v47, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v28, v31, v40, v104
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v31, v36, v43, v103
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v15, v102, v31
	v_exp_f32_e32 v31, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_exp_f32_e32 v41, v22
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v100, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v94
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v99, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v93
	v_ldexp_f32 v29, v41, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v21, v21
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v21, v21, v27
	v_dual_fmac_f32 v40, 0xbfb8aa3b, v95 :: v_dual_add_f32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v40, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, null, v21, v21, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v32, v40, v39
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v39, v40, v39
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v101, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v28, v31, v35
	v_ldexp_f32 v31, v38, v37
	v_cndmask_b32_e64 v38, 0, 0x42800000, s0
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s0
	v_exp_f32_e32 v35, v43
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_fmac_f32 v38, 0xbfb8aa3b, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v29, v29, v97
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v27, v38, v37
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v31, v31, v96
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v28, v28, v98
	v_fma_f32 v44, -v42, v43, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v45, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v19, v36
	v_fmac_f32_e32 v43, v44, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v46, null, v32, v32, v95
	v_div_scale_f32 v44, s0, v97, v29, v97
	v_fma_f32 v47, -v38, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v36, v19, 1.0
	v_fmac_f32_e32 v45, v47, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v19, v41, v19
	v_div_scale_f32 v41, vcc_lo, v98, v28, v98
	v_div_scale_f32 v47, s1, v96, v31, v96
	v_mul_f32_e32 v37, v41, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v36, v37, v41
	v_fmac_f32_e32 v37, v40, v19
	v_rcp_f32_e32 v40, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v36, v37, v41
	v_div_fmas_f32 v19, v36, v19, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v46, v40, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v37, v53
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v19, v19, v28, v98
	v_fmac_f32_e32 v40, v48, v40
	v_div_scale_f32 v50, null, v35, v35, v94
	v_div_scale_f32 v48, s2, v95, v32, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v50
	v_fma_f32 v54, -v50, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v41, v44, v43 :: v_dual_fmac_f32 v52, v54, v52
	v_fma_f32 v49, -v42, v41, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v49, v43
	v_fma_f32 v28, -v42, v41, v44
	v_div_scale_f32 v42, s3, v94, v35, v94
	v_mul_f32_e32 v51, v47, v45
	v_fma_f32 v44, -v53, v37, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v43, v41
	v_div_scale_f32 v41, s0, v93, v21, v93
	v_fma_f32 v36, -v38, v51, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v44, v37
	v_mul_f32_e32 v49, v48, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v43, null, v27, v27, v92
	v_fmac_f32_e32 v51, v36, v45
	v_fma_f32 v36, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v38, v51, v47
	v_fmac_f32_e32 v49, v36, v40
	v_mul_f32_e32 v36, v42, v52
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v45, v51
	v_fma_f32 v44, -v46, v49, v48
	v_mul_f32_e32 v46, v41, v37
	v_fma_f32 v45, -v50, v36, v42
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v31, v38, v31, v96
	v_div_fmas_f32 v40, v44, v40, v49
	v_fma_f32 v44, -v53, v46, v41
	v_fmac_f32_e32 v36, v45, v52
	v_div_fixup_f32 v45, v28, v29, v97
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v38, v40, v32, v95
	v_fmac_f32_e32 v46, v44, v37
	v_fma_f32 v28, -v50, v36, v42
	v_fma_f32 v29, -v43, v47, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v53, v46, v41
	v_div_fmas_f32 v28, v28, v52, v36
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v36, null, v39, v39, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v16, v32, v37, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v28, v35, v94
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v37, v36
	v_div_fixup_f32 v16, v16, v21, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v47, v29, v47
	v_div_scale_f32 v29, s1, v92, v27, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v32, v29, v47
	v_fma_f32 v13, -v36, v37, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v80
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v43, v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v82
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v32, v14, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v14, v41
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_exp_f32_e32 v12, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v43, v32, v29
	v_div_scale_f32 v43, s0, v91, v39, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v37, v13, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v14, v14, v40
	v_exp_f32_e32 v40, v42
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v83
	v_ldexp_f32 v12, v12, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v29, v29, v47, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v32, v43, v37
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v40, v40, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v27, v29, v27, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v28, -v36, v32, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v13, v21, v13
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v32, v28, v37
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v14, v14, v80
	v_fma_f32 v28, -v36, v32, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v53, s2, v83, v13, v83
	v_rcp_f32_e32 v41, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v28, v28, v37, v32
	v_div_scale_f32 v46, vcc_lo, v80, v14, v80
	v_div_scale_f32 v32, null, v13, v13, v83
	v_div_fixup_f32 v28, v28, v39, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v47, v32
	v_fma_f32 v29, -v42, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_fmac_f32 v41, v29, v41
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v12, v12, v81
	v_div_scale_f32 v48, s0, v81, v12, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v46, v41
	v_div_scale_f32 v44, null, v40, v40, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v21
	v_div_scale_f32 v49, s1, v82, v40, v82
	v_rcp_f32_e32 v43, v44
	v_fma_f32 v50, -v42, v39, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v50, v41
	v_fma_f32 v29, -v21, v36, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v44, v43, 1.0
	v_fmac_f32_e32 v36, v29, v36
	v_fma_f32 v29, -v32, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v37, v43
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v90, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v51, v48, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v29, v47
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v28, v89, v27 :: v_dual_mul_f32 v29, v88, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v52, v49, v43
	v_fma_f32 v27, -v21, v51, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v53, v47
	v_fma_f32 v16, -v42, v39, v46
	v_fma_f32 v50, -v44, v52, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v27, v36
	v_fma_f32 v27, -v32, v54, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v16, v16, v41, v39
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v39, v84, v45 :: v_dual_fmac_f32 v52, v50, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v21, v51, v48
	v_fmac_f32_e32 v54, v27, v47
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v14, v16, v14, v80
	v_fma_f32 v27, -v44, v52, v49
	v_div_fmas_f32 v21, v21, v36, v51
	v_fma_f32 v32, -v32, v54, v53
	s_mov_b32 vcc_lo, s1
.Ltmp34:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v16, |v25|, |v22|, |v20|
.Ltmp35:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v27, v43, v52
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v21, v12, v81
	v_div_fmas_f32 v41, v32, v47, v54
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v85, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v27, v27, v40, v82
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v40, v79, v19 :: v_dual_mul_f32 v31, v72, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v13, v41, v13, v83
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v32, v87, v35 :: v_dual_mul_f32 v35, v86, v38
	v_mul_f32_e32 v21, v77, v27
	v_mul_f32_e32 v27, v76, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v19, v78, v13
.Ltmp36:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v12, |v34|, |v33|
	v_max3_f32 v13, |v30|, |v26|, |v23|
	v_max3_f32 v38, |v15|, |v10|, |v8|
	v_max_f32_e64 v41, |v40|, |v39|
	v_max3_f32 v42, |v36|, |v35|, |v32|
	v_max3_f32 v43, |v31|, |v27|, |v21|
	v_max3_f32 v44, |v19|, |v3|, |v4|
	v_max3_f32 v14, |v18|, |v17|, |v11|
	v_max3_f32 v12, v12, |v24|, v13
	v_max3_f32 v13, v16, v38, |v9|
	v_max3_f32 v16, |v29|, |v28|, |v6|
	v_max3_f32 v38, v41, |v37|, v42
	v_max3_f32 v41, v43, v44, |v5|
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v44, v75, 7, 0
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v13, v12, v14, v13
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v12, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v14, v38, v16, v41
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v16, v13, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshrrev_b32_e32 v42, 1, v12
	v_permlanex16_b32 v38, v14, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v16, v16, v16 :: v_dual_lshlrev_b32 v41, 4, v75
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_or_b32 v43, v12, 2, v41
	v_xor_b32_e32 v41, v41, v42
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v13, v13, v16 :: v_dual_max_f32 v14, v14, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v16, v43, v42
	v_add3_u32 v38, v44, v41, v7
	v_lshlrev_b32_e32 v42, 3, v7
	v_lshrrev_b32_e32 v41, 2, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v16, 0, v7, v16
	ds_store_b64 v38, v[13:14]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v7, 3, v74
	ds_load_b64 v[13:14], v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v16, v13
	v_dual_mov_b32 v38, v14 :: v_dual_max_f32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v13, v13, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v16, v13
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v13, v13, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v16, v13
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	v_dual_max_f32 v14, v14, v38 :: v_dual_max_f32 v13, v13, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v38, v14
	v_add3_u32 v16, 0, v42, v41
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v14, v14, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v38, v14
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v14, v14, v38
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v38, 0, v7
	ds_store_b64 v16, v[13:14]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[13:14], v38
.Ltmp56:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v13, 0x2b8cbccc, v13 :: v_dual_max_f32 v14, 0x2b8cbccc, v14
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v16
	v_fma_f32 v41, -v16, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, vcc_lo, v13, 0x40e00000, v13
	v_mul_f32_e32 v42, v41, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v16, v42, v41
	v_fmac_f32_e32 v42, v43, v38
	v_div_scale_f32 v43, null, 0x40e00000, 0x40e00000, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v16, v42, v41
	v_rcp_f32_e32 v41, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v16, v16, v38, v42
	v_div_fixup_f32 v13, v16, 0x40e00000, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v43, v41, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v38, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v41, v16, v41
	v_div_scale_f32 v16, vcc_lo, v14, 0x40e00000, v14
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, v13, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v13, v16, v41 :: v_dual_and_b32 v42, 0xffff0000, v38
	v_fma_f32 v44, -v43, v13, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v45, null, v42, v42, v34
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v13, v44, v41
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v46, null, v42, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v45
	v_div_scale_f32 v47, null, v42, v42, v24
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v16, -v43, v13, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v43, v46
	v_div_scale_f32 v51, null, v42, v42, v30
	v_rcp_f32_e32 v50, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v13, v16, v41, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v41, vcc_lo, v34, v42, v34
	v_fma_f32 v16, -v45, v44, 1.0
	v_div_scale_f32 v52, s0, v33, v42, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v14, v13, 0x40e00000, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v13, -v46, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v44, v16, v44
	v_rcp_f32_e32 v54, v51
	v_fma_f32 v56, -v47, v50, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v48, v14, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v43, v13, v43
	v_mul_f32_e32 v49, v41, v44
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v13.l, v38.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v50, v56, v50
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v48, v14, v48, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v55, v52, v43
	v_fma_f32 v53, -v45, v49, v41
	v_div_scale_f32 v56, s1, v24, v42, v24
	v_fma_f32 v57, -v51, v54, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v14.l, v48.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v49, v53, v44
	v_fma_f32 v53, -v46, v55, v52
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v38, 0xffff0000, v48
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v54, v57, v54
	v_div_scale_f32 v48, s2, v30, v42, v30
	v_fma_f32 v41, -v45, v49, v41
	v_fmac_f32_e32 v55, v53, v43
	v_div_scale_f32 v53, null, v42, v42, v26
	v_mul_f32_e32 v45, v56, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v41, v41, v44, v49
	v_fma_f32 v44, -v46, v55, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v53
	v_div_scale_f32 v57, null, v42, v42, v23
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v46, -v47, v45, v56
	v_mul_f32_e32 v52, v48, v54
	v_div_fmas_f32 v43, v44, v43, v55
	v_rcp_f32_e32 v44, v57
	v_div_fixup_f32 v34, v41, v42, v34
	v_fmac_f32_e32 v45, v46, v50
	v_fma_f32 v46, -v51, v52, v48
	v_fma_f32 v55, -v53, v49, 1.0
	v_div_fixup_f32 v33, v43, v42, v33
	v_div_scale_f32 v43, s0, v26, v42, v26
	v_fma_f32 v41, -v47, v45, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v52, v46, v54 :: v_dual_fmac_f32 v49, v55, v49
	v_fma_f32 v46, -v57, v44, 1.0
	v_div_scale_f32 v47, null, v42, v42, v18
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v58, null, v42, v42, v25
	v_div_fmas_f32 v41, v41, v50, v45
	v_fma_f32 v45, -v51, v52, v48
	v_mul_f32_e32 v48, v43, v49
	v_fmac_f32_e32 v44, v46, v44
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v51, null, v42, v42, v17
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v50, s1, v23, v42, v23
	v_div_fmas_f32 v45, v45, v54, v52
	v_fma_f32 v52, -v53, v48, v43
	v_rcp_f32_e32 v56, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v54, v50, v44
	v_fma_f32 v55, -v47, v46, 1.0
	v_div_fixup_f32 v24, v41, v42, v24
	v_fmac_f32_e32 v48, v52, v49
	v_div_scale_f32 v52, null, v42, v42, v11
	v_div_fixup_f32 v30, v45, v42, v30
	v_fma_f32 v41, -v57, v54, v50
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v45, s2, v18, v42, v18
	v_fma_f32 v55, -v51, v56, 1.0
	v_fma_f32 v43, -v53, v48, v43
	v_rcp_f32_e32 v53, v52
	v_fmac_f32_e32 v54, v41, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v41, v45, v46 :: v_dual_fmac_f32 v56, v55, v56
	v_div_scale_f32 v55, s3, v17, v42, v17
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v43, v43, v49, v48
	v_fma_f32 v48, -v57, v54, v50
	v_fma_f32 v49, -v47, v41, v45
	v_mul_f32_e32 v50, v55, v56
	v_fma_f32 v57, -v52, v53, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v26, v43, v42, v26
	v_div_fmas_f32 v44, v48, v44, v54
	v_fmac_f32_e32 v41, v49, v46
	v_fma_f32 v49, -v51, v50, v55
	v_fmac_f32_e32 v53, v57, v53
	v_div_scale_f32 v54, s0, v11, v42, v11
	v_rcp_f32_e32 v48, v58
	v_div_fixup_f32 v23, v44, v42, v23
	v_fma_f32 v43, -v47, v41, v45
	v_fmac_f32_e32 v50, v49, v56
	v_mul_f32_e32 v44, v54, v53
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v49, s1, v25, v42, v25
	v_div_fmas_f32 v41, v43, v46, v41
	v_fma_f32 v43, -v51, v50, v55
	v_fma_f32 v46, -v52, v44, v54
	v_div_scale_f32 v51, null, v42, v42, v20
	v_fma_f32 v45, -v58, v48, 1.0
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v46, v53
	v_rcp_f32_e32 v46, v51
	v_div_fmas_f32 v43, v43, v56, v50
	v_fmac_f32_e32 v48, v45, v48
	v_div_fixup_f32 v18, v41, v42, v18
	v_fma_f32 v41, -v52, v44, v54
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v17, v43, v42, v17
	v_mul_f32_e32 v50, v49, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v41, v41, v53, v44
	v_fma_f32 v54, -v51, v46, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v43, -v58, v50, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v11, v41, v42, v11
	v_fmac_f32_e32 v46, v54, v46
	v_div_scale_f32 v54, null, v42, v42, v10
	v_fmac_f32_e32 v50, v43, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v57, v54
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v41, -v58, v50, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v23, v23
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v13.h, 0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v41, v41, v48, v50
.Ltmp57:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v16, 4, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v50, -v54, v57, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v14.h, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v57, v50, v57
	v_div_scale_f32 v47, null, v42, v42, v22
	v_div_scale_f32 v52, s2, v22, v42, v22
	v_div_scale_f32 v53, s0, v20, v42, v20
	v_rcp_f32_e32 v45, v47
	v_div_fixup_f32 v25, v41, v42, v25
	v_div_scale_f32 v50, null, v42, v42, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v56, v53, v46
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v48, -v51, v56, v53
	v_fma_f32 v55, -v47, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v56, v48, v46 :: v_dual_fmac_f32 v45, v55, v45
	v_div_scale_f32 v55, null, v42, v42, v15
	v_div_scale_f32 v48, s3, v10, v42, v10
	v_mul_f32_e32 v43, v52, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v44, v55
	v_fma_f32 v49, -v47, v43, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v43, v49, v45
	v_fma_f32 v58, -v55, v44, 1.0
	v_div_scale_f32 v49, s1, v15, v42, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v47, v43, v52
	v_fmac_f32_e32 v44, v58, v44
	v_mul_f32_e32 v52, v48, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v41, v41, v45, v43
	v_mul_f32_e32 v47, v49, v44
	v_fma_f32 v43, -v51, v56, v53
	v_rcp_f32_e32 v51, v50
	v_div_scale_f32 v53, null, v42, v42, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v45, -v55, v47, v49
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v22, v41, v42, v22
	v_div_fmas_f32 v43, v43, v46, v56
	v_fma_f32 v46, -v54, v52, v48
	v_fmac_f32_e32 v47, v45, v44
	v_rcp_f32_e32 v45, v53
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v56, -v50, v51, 1.0
	v_div_fixup_f32 v20, v43, v42, v20
	v_fmac_f32_e32 v52, v46, v57
	v_fma_f32 v41, -v55, v47, v49
	v_div_scale_f32 v43, s0, v8, v42, v8
	v_fmac_f32_e32 v51, v56, v51
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v55, null, v38, v38, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v53, v45, 1.0
	v_div_fmas_f32 v41, v41, v44, v47
	v_fma_f32 v44, -v54, v52, v48
	v_mul_f32_e32 v47, v43, v51
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, null, v38, v38, v40
	v_div_fmas_f32 v44, v44, v57, v52
	v_fma_f32 v52, -v50, v47, v43
	v_div_scale_f32 v48, s1, v9, v42, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v46
	v_div_fixup_f32 v15, v41, v42, v15
	v_fmac_f32_e32 v47, v52, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v54, v48, v45
	v_div_fixup_f32 v10, v44, v42, v10
	v_rcp_f32_e32 v44, v55
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v43, -v50, v47, v43
	v_div_scale_f32 v50, null, v38, v38, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v46, v49, 1.0
	v_fma_f32 v41, -v53, v54, v48
	v_div_fmas_f32 v43, v43, v51, v47
	v_div_scale_f32 v57, null, v38, v38, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v49, v52, v49
	v_rcp_f32_e32 v52, v50
	v_fmac_f32_e32 v54, v41, v45
	v_div_scale_f32 v41, s2, v40, v38, v40
	v_fma_f32 v56, -v55, v44, 1.0
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v53, v54, v48
	v_mul_f32_e32 v48, v41, v49
	v_div_scale_f32 v51, s0, v39, v38, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v53, -v50, v52, 1.0
	v_fmac_f32_e32 v44, v56, v44
	v_rcp_f32_e32 v59, v57
	v_div_fmas_f32 v45, v47, v45, v54
	v_fma_f32 v56, -v46, v48, v41
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, s3, v37, v38, v37
	v_mul_f32_e32 v58, v51, v44
	v_div_fixup_f32 v8, v43, v42, v8
	v_div_fixup_f32 v9, v45, v42, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v53, v52
	v_div_scale_f32 v45, null, v38, v38, v35
	v_fmac_f32_e32 v48, v56, v49
	v_fma_f32 v47, -v55, v58, v51
	v_fma_f32 v42, -v50, v54, v53
	v_fma_f32 v43, -v57, v59, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v41, -v46, v48, v41
	v_fmac_f32_e32 v58, v47, v44
	v_fmac_f32_e32 v54, v42, v52
	v_rcp_f32_e32 v42, v45
	v_fmac_f32_e32 v59, v43, v59
	v_div_scale_f32 v43, s1, v36, v38, v36
	v_div_fmas_f32 v41, v41, v49, v48
	v_fma_f32 v46, -v55, v58, v51
	v_div_scale_f32 v48, null, v38, v38, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v47, v43, v59
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v49, -v45, v42, 1.0
	v_div_fmas_f32 v44, v46, v44, v58
	v_fma_f32 v46, -v50, v54, v53
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v51, -v57, v47, v43
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s0, v35, v38, v35
	v_div_fixup_f32 v40, v41, v38, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v51, v59
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v41, v49, v42
	v_div_fmas_f32 v46, v46, v52, v54
	v_div_fixup_f32 v39, v44, v38, v39
	v_fma_f32 v44, -v48, v50, 1.0
	v_fma_f32 v43, -v57, v47, v43
	v_fma_f32 v51, -v45, v41, v49
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v37, v46, v38, v37
	v_div_scale_f32 v46, null, v38, v38, v29
	v_fmac_f32_e32 v50, v44, v50
	v_div_scale_f32 v44, s2, v32, v38, v32
	v_div_fmas_f32 v43, v43, v59, v47
	v_fmac_f32_e32 v41, v51, v42
	v_rcp_f32_e32 v52, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v44, v50
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v36, v43, v38, v36
	v_fma_f32 v43, -v45, v41, v49
	v_div_scale_f32 v51, null, v38, v38, v28
	v_fma_f32 v45, -v48, v47, v44
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v41, v43, v42, v41
	v_div_scale_f32 v42, null, v38, v38, v6
	v_fma_f32 v49, -v46, v52, 1.0
	v_rcp_f32_e32 v53, v51
	v_fmac_f32_e32 v47, v45, v50
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v43, s0, v29, v38, v29
	v_fmac_f32_e32 v52, v49, v52
	v_div_scale_f32 v49, null, v38, v38, v31
	v_div_fixup_f32 v35, v41, v38, v35
	v_fma_f32 v44, -v48, v47, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v51, v53, 1.0
	v_rcp_f32_e32 v55, v49
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v54, -v42, v45, 1.0
	v_mul_f32_e32 v48, v43, v52
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v53, v41, v53
	v_div_scale_f32 v41, s1, v28, v38, v28
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v54, null, v38, v38, v27
	v_div_fmas_f32 v44, v44, v50, v47
	v_fma_f32 v47, -v46, v48, v43
	v_mul_f32_e32 v50, v41, v53
	v_div_scale_f32 v56, s2, v6, v38, v6
	v_fma_f32 v57, -v49, v55, 1.0
	v_rcp_f32_e32 v58, v54
	v_fmac_f32_e32 v48, v47, v52
	v_fma_f32 v47, -v51, v50, v41
	v_mul_f32_e32 v59, v56, v45
	v_fmac_f32_e32 v55, v57, v55
	v_div_scale_f32 v57, s3, v31, v38, v31
	v_div_fixup_f32 v32, v44, v38, v32
	v_fma_f32 v43, -v46, v48, v43
	v_fmac_f32_e32 v50, v47, v53
	v_fma_f32 v44, -v42, v59, v56
	v_mul_f32_e32 v46, v57, v55
	v_fma_f32 v47, -v54, v58, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v41, -v51, v50, v41
	v_fmac_f32_e32 v59, v44, v45
	v_fma_f32 v44, -v49, v46, v57
	v_fmac_f32_e32 v58, v47, v58
	v_div_scale_f32 v47, s0, v27, v38, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v42, v59, v56
	v_fmac_f32_e32 v46, v44, v55
	v_div_fmas_f32 v43, v43, v52, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v44, v47, v58
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v38, v38, v21
	v_div_fmas_f32 v41, v41, v53, v50
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v29, v43, v38, v29
	v_div_fmas_f32 v42, v42, v45, v59
	v_fma_f32 v45, -v49, v46, v57
	v_fma_f32 v49, -v54, v44, v47
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v28, v41, v38, v28
	v_div_fixup_f32 v6, v42, v38, v6
	v_div_scale_f32 v42, null, v38, v38, v19
	v_fmac_f32_e32 v44, v49, v58
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v52, null, v38, v38, v5
	v_div_fmas_f32 v45, v45, v55, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v54, v44, v47
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v43, -v48, v50, 1.0
	v_rcp_f32_e32 v54, v52
	v_div_fixup_f32 v31, v45, v38, v31
	v_div_fmas_f32 v41, v41, v58, v44
	v_rcp_f32_e32 v44, v42
	v_fmac_f32_e32 v50, v43, v50
	v_div_scale_f32 v46, vcc_lo, v21, v38, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v41, v38, v27
	v_div_scale_f32 v43, null, v38, v38, v3
	v_mul_f32_e32 v51, v46, v50
	v_div_scale_f32 v45, null, v38, v38, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v42, v44, 1.0
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v48, v51, v46
	v_rcp_f32_e32 v49, v45
	v_fma_f32 v58, -v52, v54, 1.0
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, s0, v19, v38, v19
	v_fmac_f32_e32 v51, v55, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v54, v58, v54 :: v_dual_mul_f32 v57, v41, v44
	v_fma_f32 v53, -v43, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v46, -v48, v51, v46
	v_fma_f32 v56, -v45, v49, 1.0
	v_div_scale_f32 v58, s3, v5, v38, v5
	v_fma_f32 v55, -v42, v57, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v46, v46, v50, v51
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v47, v53, v47
	v_div_scale_f32 v53, s1, v3, v38, v3
	v_fmac_f32_e32 v57, v55, v44
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v49, v56, v49
	v_div_scale_f32 v56, s2, v4, v38, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v42, v57, v41
	v_mul_f32_e32 v59, v53, v47
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v61, v58, v54
	v_div_fmas_f32 v41, v41, v44, v57
	v_fma_f32 v48, -v43, v59, v53
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v37, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v42, -v52, v61, v58
	v_div_fixup_f32 v19, v41, v38, v19
	v_fmac_f32_e32 v59, v48, v47
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v48, v27
	v_and_b32_e32 v27, 15, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v61, v42, v54
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v43, -v43, v59, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v21, v46, v38, v21
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v43, v43, v47, v59
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_cvt_i32_f32_e32 v50, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v60, v56, v49
	v_div_fixup_f32 v3, v43, v38, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v39, v39, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v44, -v52, v61, v58
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 15, v50
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v55, -v45, v60, v56
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v60, v55, v49
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v39, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v42, -v45, v60, v56
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v31, v31
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v42, v42, v49, v60
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v4, v42, v38, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v42, v8
	v_and_b32_e32 v8, 15, v26
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 15, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v28, v28
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v52, v4
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v49, v21
	v_cvt_i32_f32_e32 v51, v3
	v_and_b32_e32 v3, 15, v34
	v_and_b32_e32 v39, 15, v52
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v44, v44, v54, v61
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v21, 15, v15
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v15, 10, v0
	v_lshlrev_b32_e32 v34, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v5, v44, v38, v5
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v40
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v44, v29
	v_cvt_i32_f32_e32 v47, v31
	v_and_b32_e32 v4, 15, v33
	v_and_b32_e32 v29, 15, v35
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v31, 4, v74
	v_and_b32_e32 v33, 0x60, v0
	v_and_b32_e32 v15, 0x1800, v15
	v_and_b32_e32 v35, 0x400, v34
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v32, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v41, v10
	v_cvt_i32_f32_e32 v45, v28
	v_and_b32_e32 v28, 15, v36
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v36, v31, v33
	v_add3_u32 v15, 0, v15, v35
	v_and_or_b32 v1, 0x1b00, v34, v1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v40, v11
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v46, v6
	v_cvt_i32_f32_e32 v53, v5
	v_and_b32_e32 v5, 15, v24
	v_and_b32_e32 v6, 15, v30
	v_and_b32_e32 v19, 15, v22
	v_and_b32_e32 v22, 15, v41
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v15, v15, v2, v36
	v_xad_u32 v41, v1, v73, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v43, v9
	v_cvt_i32_f32_e32 v32, v32
	v_and_b32_e32 v10, 15, v18
	v_and_b32_e32 v11, 15, v17
	v_and_b32_e32 v17, 15, v40
	v_and_b32_e32 v18, 15, v25
	v_and_b32_e32 v20, 15, v20
	v_and_b32_e32 v9, 15, v23
	v_and_b32_e32 v25, 15, v38
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v15, v[3:6]
	ds_store_b128 v15, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v41
	ds_load_b128 v[17:20], v41 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v23, 15, v42
	v_and_b32_e32 v24, 15, v43
	v_and_b32_e32 v30, 15, v32
	v_and_b32_e32 v31, 15, v46
	v_and_b32_e32 v32, 15, v47
	v_and_b32_e32 v33, 15, v48
	v_and_b32_e32 v34, 15, v49
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v15, v[25:28]
	ds_store_b128 v15, v[31:34] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v41
	ds_load_b128 v[33:36], v41 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v15, v[8:11]
	ds_store_b128 v15, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v41
	ds_load_b128 v[21:24], v41 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v31, 15, v44
	v_and_b32_e32 v32, 15, v45
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v17, 4, v1
	v_lshl_or_b32 v2, v18, 4, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v38, 15, v51
	v_and_b32_e32 v40, 15, v53
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v15, v[29:32]
	ds_store_b128 v15, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v41
	ds_load_b128 v[37:40], v41 offset:1024
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v2.l, 8, v2.l
	v_and_b16 v2.h, 0xff, v5.l
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s25, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v1, v20, 4, v4
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v3, v19, 4, v3
	v_lshl_or_b32 v6, v21, 4, v8
	v_lshl_or_b32 v4, v22, 4, v9
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v8, v23, 4, v10
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v10, s0, v16
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v4.h, 0xff, v6.l
	v_or_b16 v6.l, v2.h, v2.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v2, 16, v0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v9, v24, 4, v11
	v_lshl_or_b32 v16, v35, 4, v27
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v4.l, 8, v4.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s24, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s26, s0
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s2, s2, s1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v9.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v10, s2, v7, v10
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v3.h, 0xff, v8.l
	v_lshlrev_b16 v5.l, 8, v17.l
	v_and_b16 v5.h, 0xff, v16.l
	v_or_b16 v7.l, v4.h, v4.l
	.loc	1 87 14 is_stmt 1               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, v0, 31, s26
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v2, v13, v14, vcc_lo
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v11, v33, 4, v25
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
	v_and_b16 v0.l, 0xff, v11.l
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
	v_add_lshl_u32 v0, v5, s24, 1
	v_cndmask_b32_e32 v1, v8, v13, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v12
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v22, s0, 4, v10
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v4.l, v2.h, v2.l
	s_and_b32 s1, s13, 0xffff
	s_mov_b32 s3, 0x31027000
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_mov_b32 s2, 0x7ffffffe
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 s0, s12
	s_clause 0x1
	buffer_store_b64 v[6:7], v10, s[0:3], 0 offen
	buffer_store_b64 v[3:4], v22, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s1, s15, 0xffff
	s_mov_b32 s0, s14
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp59:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp60:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 250
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 250
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14932
; TotalNumSgprs: 34
; NumVgprs: 250
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 250
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     250
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
