	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x20
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v81, 15, v0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v57, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v71, 0
	s_mul_i32 s9, s9, s6
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v73, 0
	s_mul_hi_u32 s9, s6, s9
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v63, 0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v59, 0
	s_cselect_b32 s5, s10, s6
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v55, 0
	s_xor_b32 s5, s5, s9
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v51, 0
	s_sub_i32 s5, s5, s9
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v47, 0
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
	s_load_b32 s5, s[0:1], 0x38
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s8, s7
	v_dual_mov_b32 v48, 0 :: v_dual_lshlrev_b32 v77, 4, v81
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v82, 0xf0, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v80, 4, v0
	v_mov_b32_e32 v44, 0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s10
	s_abs_i32 s10, s2
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s10, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s4, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s30, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s30, s7
	s_sub_i32 s4, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s5, 63
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s31, s4, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s2, 64
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s5, s5, 31
.Ltmp15:
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v1, 3, v0
	s_load_b256 s[12:19], s[0:1], 0x0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s1, s2, 31
.Ltmp17:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s6, s5, 31
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v2, 3, v0
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s1, 26
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s6, s6, 27
	v_mul_lo_u32 v1, s28, v1
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s2, s1
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s5, s5, s6
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s1, s2, 6
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s2, s5, 5
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
.Ltmp24:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 56, v2
	v_lshlrev_b32_e32 v8, 1, v0
	v_mov_b32_e32 v160, 0
	v_mad_u64_u32 v[78:79], null, s29, v80, v[77:78]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v92, v1, v3, s31
	v_lshrrev_b32_e32 v1, 1, v0
	v_or_b32_e32 v3, s31, v81
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v99, 0, v2
	v_or_b32_e32 v4, 0x3f0, v0
	v_and_or_b32 v1, 0x70, v1, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v6, 16, v3
	v_or_b32_e32 v7, 32, v3
	v_mul_lo_u32 v112, v3, s2
	v_or_b32_e32 v5, 0x7f0, v0
	v_add_nc_u32_e32 v109, 0, v1
	v_or_b32_e32 v1, 48, v3
	v_lshrrev_b32_e32 v3, 6, v0
	v_mul_lo_u32 v113, v6, s2
	v_mul_lo_u32 v114, v7, s2
	v_lshlrev_b32_e32 v6, 5, v0
	v_mul_lo_u32 v125, v1, s2
	v_lshlrev_b32_e32 v1, 2, v0
	v_and_b32_e32 v3, 2, v3
	v_lshlrev_b32_e32 v7, 1, v82
	v_and_b32_e32 v6, 32, v6
	v_dual_mov_b32 v148, 0 :: v_dual_and_b32 v9, 28, v8
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v1, 0x1c0, v1
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v3, 0, v3
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v131, 0, v7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s0, s30, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v3, v1, v6
	v_add_nc_u32_e32 v104, 0, v81
	v_add3_u32 v11, v131, v7, v6
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v144, v99, v2
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v146, 0, v4
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v152, 0, v5
	v_mov_b32_e32 v1, s4
	v_lshl_add_u32 v93, s29, 4, v78
	v_or_b32_e32 v133, s0, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_add_u32 v138, s28, 5, v92
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v153, v10, v9
	v_mov_b32_e32 v142, 0
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v154, v11, v9
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v79, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_lshl_b32 s33, s29, 5
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s8, s14
	s_mov_b32 s9, s15
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	s_mov_b32 s12, s16
	s_mov_b32 s13, s17
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s5, s5, 6
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s6, s5, s28
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s7, s5, s29
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v9, s6, v92
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s7, s7, s0
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v13, s7, v93
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[17:18], v9, s[24:27], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v9, s7, v78
	s_add_i32 s7, s7, s33
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s2
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	buffer_load_b128 v[13:16], v13, s[8:11], 0 offen
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v99, v[17:18] offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v144, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v144, v[13:16] offset:4096
	v_add_nc_u32_e32 v9, s6, v138
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v13, s7, v93
	.loc	1 390 40 is_stmt 1              ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s5, s29
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[17:18], v9, s[24:27], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v9, s7, v78
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	buffer_load_b128 v[13:16], v13, s[8:11], 0 offen
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v99, v[17:18] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v144, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v144, v[13:16] offset:12288
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v17, v104 offset:18240
	ds_load_u8 v18, v104 offset:18176
	ds_load_u8 v9, v104 offset:17216
	ds_load_u8 v10, v104 offset:17152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:18368
	ds_load_u8 v19, v104 offset:18304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:17344
	ds_load_u8 v11, v104 offset:17280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v104 offset:17984
	ds_load_u8 v18, v104 offset:17920
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v104 offset:16960
	ds_load_u8 v10, v104 offset:16896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:18112
	ds_load_u8 v19, v104 offset:18048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:17088
	ds_load_u8 v11, v104 offset:17024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v104 offset:17728
	ds_load_u8 v18, v104 offset:17664
	v_lshl_or_b32 v27, v10, 16, v9
	ds_load_u8 v9, v104 offset:16704
	ds_load_u8 v10, v104 offset:16640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:17856
	ds_load_u8 v19, v104 offset:17792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:16832
	ds_load_u8 v11, v104 offset:16768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v104 offset:17472
	ds_load_u8 v18, v104 offset:17408
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v104 offset:16448
	ds_load_u8 v10, v104 offset:16384
	ds_load_u8 v33, v104 offset:16400
	ds_load_u8 v49, v104 offset:16416
	ds_load_u8 v167, v104 offset:16432
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:17600
	ds_load_u8 v19, v104 offset:17536
	ds_load_u8 v10, v104 offset:16576
	ds_load_u8 v11, v104 offset:16512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v109 offset:7424
	ds_load_u8 v18, v109 offset:7168
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v109 offset:3328
	ds_load_u8 v10, v109 offset:3072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:7936
	ds_load_u8 v19, v109 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:3840
	ds_load_u8 v11, v109 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v72, v18, 16, v17
	ds_load_u8 v17, v109 offset:6400
	ds_load_u8 v18, v109 offset:6144
	v_lshl_or_b32 v68, v10, 16, v9
	ds_load_u8 v9, v109 offset:2304
	ds_load_u8 v10, v109 offset:2048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:6912
	ds_load_u8 v19, v109 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:2816
	ds_load_u8 v11, v109 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v71, v18, 16, v17
	ds_load_u8 v17, v109 offset:5376
	ds_load_u8 v18, v109 offset:5120
	v_lshl_or_b32 v67, v10, 16, v9
	ds_load_u8 v9, v109 offset:1280
	ds_load_u8 v10, v109 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:5888
	ds_load_u8 v19, v109 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:1792
	ds_load_u8 v11, v109 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v70, v18, 16, v17
	ds_load_u8 v17, v109 offset:4352
	ds_load_u8 v18, v109 offset:4096
	v_lshl_or_b32 v66, v10, 16, v9
	ds_load_u8 v9, v109 offset:256
	ds_load_u8 v10, v109
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:4864
	ds_load_u8 v19, v109 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:768
	ds_load_u8 v11, v109 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v18, 16, v17
	ds_load_u8 v17, v109 offset:3456
	ds_load_u8 v18, v109 offset:3200
	v_lshl_or_b32 v65, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:3968
	ds_load_u8 v19, v109 offset:3712
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v18, 16, v17
	ds_load_u8 v17, v109 offset:2432
	ds_load_u8 v18, v109 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:2944
	ds_load_u8 v19, v109 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v18, 16, v17
	ds_load_u8 v17, v109 offset:1408
	ds_load_u8 v18, v109 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:1920
	ds_load_u8 v19, v109 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v18, 16, v17
	ds_load_u8 v17, v109 offset:384
	ds_load_u8 v18, v109 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:896
	ds_load_u8 v19, v109 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v109 offset:7552
	ds_load_u8 v26, v109 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v109 offset:8064
	ds_load_u8 v27, v109 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v26, 16, v25
	ds_load_u8 v25, v109 offset:6528
	ds_load_u8 v26, v109 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v109 offset:7040
	ds_load_u8 v27, v109 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v26, 16, v25
	ds_load_u8 v25, v109 offset:5504
	ds_load_u8 v26, v109 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v109 offset:6016
	ds_load_u8 v27, v109 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v26, 16, v25
	ds_load_u8 v25, v109 offset:4480
	ds_load_u8 v26, v109 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v109 offset:4992
	ds_load_u8 v27, v109 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v163, v26, 16, v25
	ds_load_u8 v25, v104 offset:17232
	ds_load_u8 v26, v104 offset:17168
	v_wmma_i32_16x16x16_iu8 v[17:24], v[163:166], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v104 offset:17360
	ds_load_u8 v27, v104 offset:17296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v104 offset:16976
	ds_load_u8 v26, v104 offset:16912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v104 offset:17104
	ds_load_u8 v27, v104 offset:17040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v104 offset:16720
	ds_load_u8 v26, v104 offset:16656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v104 offset:16848
	ds_load_u8 v27, v104 offset:16784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v104 offset:16464
	ds_load_u8 v26, v104 offset:16592
	ds_load_u8 v27, v104 offset:16528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v104 offset:18256
	ds_load_u8 v34, v104 offset:18192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:18384
	ds_load_u8 v35, v104 offset:18320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v104 offset:18000
	ds_load_u8 v34, v104 offset:17936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:18128
	ds_load_u8 v35, v104 offset:18064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v104 offset:17744
	ds_load_u8 v34, v104 offset:17680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:17872
	ds_load_u8 v35, v104 offset:17808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v104 offset:17488
	ds_load_u8 v34, v104 offset:17424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:17616
	ds_load_u8 v35, v104 offset:17552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v104 offset:17248
	ds_load_u8 v42, v104 offset:17184
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[45:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[163:166], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v104 offset:17376
	ds_load_u8 v43, v104 offset:17312
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v104 offset:16992
	ds_load_u8 v42, v104 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v104 offset:17120
	ds_load_u8 v43, v104 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v42, 16, v41
	ds_load_u8 v41, v104 offset:16736
	ds_load_u8 v42, v104 offset:16672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v104 offset:16864
	ds_load_u8 v43, v104 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v104 offset:16480
	ds_load_u8 v42, v104 offset:16608
	ds_load_u8 v43, v104 offset:16544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v49, v41, 0xc0c0004
	ds_load_u8 v49, v104 offset:18272
	ds_load_u8 v50, v104 offset:18208
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v104 offset:18400
	ds_load_u8 v51, v104 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v50, 16, v49
	ds_load_u8 v49, v104 offset:18016
	ds_load_u8 v50, v104 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v104 offset:18144
	ds_load_u8 v51, v104 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v50, 16, v49
	ds_load_u8 v49, v104 offset:17760
	ds_load_u8 v50, v104 offset:17696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v104 offset:17888
	ds_load_u8 v51, v104 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v50, 16, v49
	ds_load_u8 v49, v104 offset:17504
	ds_load_u8 v50, v104 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v104 offset:17632
	ds_load_u8 v51, v104 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[57:60], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v104 offset:17008
	ds_load_u8 v58, v104 offset:16944
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[61:64], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[163:166], v[61:64], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v104 offset:17136
	ds_load_u8 v59, v104 offset:17072
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v58, 16, v57
	ds_load_u8 v57, v104 offset:16752
	ds_load_u8 v58, v104 offset:16688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v104 offset:16880
	ds_load_u8 v59, v104 offset:16816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v58, 16, v57
	ds_load_u8 v57, v104 offset:16496
	ds_load_u8 v58, v104 offset:16624
	ds_load_u8 v59, v104 offset:16560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v167, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v58, 16, v57
	ds_load_u8 v57, v104 offset:17264
	ds_load_u8 v58, v104 offset:17200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v146 offset:16384
	ds_load_u8 v59, v104 offset:17328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[167:170], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v65, v104 offset:18032
	ds_load_u8 v66, v104 offset:17968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v104 offset:18160
	ds_load_u8 v67, v104 offset:18096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v66, 16, v65
	ds_load_u8 v65, v104 offset:17776
	ds_load_u8 v66, v104 offset:17712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v104 offset:17904
	ds_load_u8 v67, v104 offset:17840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v66, 16, v65
	ds_load_u8 v65, v104 offset:17520
	ds_load_u8 v66, v104 offset:17456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v104 offset:17648
	ds_load_u8 v67, v104 offset:17584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v66, 16, v65
	ds_load_u8 v65, v104 offset:18288
	ds_load_u8 v66, v104 offset:18224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v152 offset:16384
	ds_load_u8 v67, v104 offset:18352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v66, 16, v65
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[171:174], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[73:76], v[167:170], v[1:8] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v73, v112, s5, 1
	v_add_lshl_u32 v74, v113, s5, 1
	v_add_lshl_u32 v75, v114, s5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[65:72], v[163:166], v[171:174], v[65:72] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	buffer_load_u16 v74, v74, s[12:15], 0 offen
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v163, v75, s[12:15], 0 offen
	v_add_lshl_u32 v75, v125, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v164, v75, s[12:15], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_or_b32 s5, s5, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v76, 16, v73
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v20, v20, v76 :: v_dual_lshlrev_b32 v75, 16, v74
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v9, v9, v76 :: v_dual_lshlrev_b32 v74, 16, v163
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v163, v133, s6, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v17, v17, v76 :: v_dual_mul_f32 v36, v36, v75
	v_dual_mul_f32 v18, v18, v76 :: v_dual_mul_f32 v31, v31, v75
	v_dual_mul_f32 v50, v50, v74 :: v_dual_cndmask_b32 v163, 0x80000000, v163
	v_dual_mul_f32 v35, v35, v75 :: v_dual_mul_f32 v54, v54, v74
	v_dual_mul_f32 v19, v19, v76 :: v_dual_mul_f32 v38, v38, v75
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v163, v163, s[16:19], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v28, v28, v75 :: v_dual_lshlrev_b32 v73, 16, v164
	v_dual_mul_f32 v33, v33, v75 :: v_dual_mul_f32 v52, v52, v74
	v_dual_mul_f32 v10, v10, v76 :: v_dual_mul_f32 v41, v41, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v60, v60, v73
	v_mul_f32_e32 v14, v14, v76
	v_mul_f32_e32 v26, v26, v75
	v_mul_f32_e32 v12, v12, v76
	v_mul_f32_e32 v16, v16, v76
	v_dual_mul_f32 v21, v21, v76 :: v_dual_mul_f32 v40, v40, v75
	v_dual_mul_f32 v39, v39, v75 :: v_dual_mul_f32 v58, v58, v73
	v_dual_mul_f32 v43, v43, v74 :: v_dual_mul_f32 v62, v62, v73
	v_dual_mul_f32 v45, v45, v74 :: v_dual_mul_f32 v64, v64, v73
	v_dual_mul_f32 v47, v47, v74 :: v_dual_mul_f32 v66, v66, v73
	v_dual_mul_f32 v49, v49, v74 :: v_dual_mul_f32 v68, v68, v73
	v_dual_mul_f32 v51, v51, v74 :: v_dual_mul_f32 v70, v70, v73
	v_dual_mul_f32 v53, v53, v74 :: v_dual_mul_f32 v72, v72, v73
	v_dual_mul_f32 v23, v23, v76 :: v_dual_mul_f32 v48, v48, v74
	v_dual_mul_f32 v37, v37, v75 :: v_dual_mul_f32 v56, v56, v74
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v27, v27, v75
	v_mul_f32_e32 v30, v30, v75
	v_mul_f32_e32 v32, v32, v75
	v_mul_f32_e32 v44, v44, v74
	v_mul_f32_e32 v22, v22, v76
	v_mul_f32_e32 v11, v11, v76
	v_mul_f32_e32 v13, v13, v76
	v_mul_f32_e32 v25, v25, v75
	v_dual_mul_f32 v29, v29, v75 :: v_dual_mul_f32 v42, v42, v74
	v_mul_f32_e32 v24, v24, v76
	v_mul_f32_e32 v46, v46, v74
	v_dual_mul_f32 v34, v34, v75 :: v_dual_mul_f32 v15, v15, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v153, v163 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[163:166], v131 offset:20480
	ds_load_b128 v[167:170], v131 offset:20496
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v171, 16, v163
	v_lshlrev_b32_e32 v172, 16, v164
	v_and_b32_e32 v163, 0xffff0000, v163
	v_and_b32_e32 v164, 0xffff0000, v164
	v_lshlrev_b32_e32 v173, 16, v165
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v177, 16, v169
	v_and_b32_e32 v165, 0xffff0000, v165
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v155, v17, v163
	v_fmac_f32_e32 v151, v18, v164
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v17, v104 offset:20288
	ds_load_u8 v18, v104 offset:20224
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v139, v9, v171 :: v_dual_fmac_f32 v150, v19, v165
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v65, v65, v73 :: v_dual_lshlrev_b32 v178, 16, v170
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v134, v31, v177
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v176, 16, v168
	v_lshlrev_b32_e32 v174, 16, v166
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v132, v32, v178
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v166, 0xffff0000, v166
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v55, v55, v74 :: v_dual_fmac_f32 v162, v10, v172
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v135, v30, v176
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v104 offset:19264
	ds_load_u8 v10, v104 offset:19200
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v175, 16, v167
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v71, v71, v73 :: v_dual_and_b32 v168, 0xffff0000, v168
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v161, v11, v173 :: v_dual_fmac_f32 v130, v33, v163
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v136, v29, v175
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:20416
	ds_load_u8 v19, v104 offset:20352
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v137, v28, v174 :: v_dual_fmac_f32 v108, v50, v164
	v_dual_fmac_f32 v121, v41, v171 :: v_dual_fmac_f32 v96, v60, v174
	v_dual_fmac_f32 v159, v13, v175 :: v_dual_fmac_f32 v140, v27, v173
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v59, v59, v73 :: v_dual_fmac_f32 v158, v14, v176
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v167, 0xffff0000, v167
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v57, v57, v73 :: v_dual_fmac_f32 v160, v12, v174
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:19392
	ds_load_u8 v11, v104 offset:19328
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v97, v59, v173
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v61, v61, v73 :: v_dual_fmac_f32 v156, v16, v178
	v_dual_mul_f32 v63, v63, v73 :: v_dual_fmac_f32 v148, v21, v167
	v_dual_mul_f32 v67, v67, v73 :: v_dual_fmac_f32 v142, v25, v171
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v69, v69, v73 :: v_dual_fmac_f32 v124, v38, v168
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v141, v26, v172 :: v_dual_fmac_f32 v110, v49, v163
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v104 offset:20032
	ds_load_u8 v18, v104 offset:19968
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v98, v58, v172 :: v_dual_and_b32 v169, 0xffff0000, v169
	v_dual_fmac_f32 v127, v36, v166 :: v_dual_fmac_f32 v100, v57, v171
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v170, 0xffff0000, v170
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v123, v39, v169
	v_dual_fmac_f32 v117, v45, v175 :: v_dual_fmac_f32 v90, v64, v178
	v_fmac_f32_e32 v79, v72, v170
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v104 offset:19008
	ds_load_u8 v10, v104 offset:18944
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v83, v71, v169
	v_fmac_f32_e32 v91, v63, v177
	v_dual_fmac_f32 v111, v48, v178 :: v_dual_fmac_f32 v84, v70, v168
	v_dual_fmac_f32 v119, v43, v173 :: v_dual_fmac_f32 v94, v62, v176
	v_fmac_f32_e32 v85, v69, v167
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:20160
	ds_load_u8 v19, v104 offset:20096
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v157, v15, v177 :: v_dual_fmac_f32 v126, v37, v167
	v_dual_fmac_f32 v149, v20, v166 :: v_dual_fmac_f32 v120, v42, v172
	v_dual_fmac_f32 v147, v22, v168 :: v_dual_fmac_f32 v122, v40, v170
	v_dual_fmac_f32 v145, v23, v169 :: v_dual_fmac_f32 v118, v44, v174
	v_dual_fmac_f32 v143, v24, v170 :: v_dual_fmac_f32 v116, v46, v176
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:19136
	ds_load_u8 v11, v104 offset:19072
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v107, v51, v165 :: v_dual_fmac_f32 v86, v68, v166
	v_fmac_f32_e32 v87, v67, v165
	v_dual_fmac_f32 v115, v47, v177 :: v_dual_fmac_f32 v88, v66, v164
	v_dual_fmac_f32 v129, v34, v164 :: v_dual_fmac_f32 v102, v55, v169
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v128, v35, v165
	v_fmac_f32_e32 v106, v52, v166
	v_fmac_f32_e32 v101, v56, v170
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v74, v104 offset:19056
	ds_load_u8 v75, v104 offset:18992
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v104 offset:19776
	ds_load_u8 v18, v104 offset:19712
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v103, v54, v168
	v_fmac_f32_e32 v105, v53, v167
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v10, 16, v9
	ds_load_u8 v9, v104 offset:18752
	ds_load_u8 v10, v104 offset:18688
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v104 offset:19184
	ds_load_u8 v76, v104 offset:19120
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:19904
	ds_load_u8 v19, v104 offset:19840
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:18880
	ds_load_u8 v11, v104 offset:18816
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v104 offset:18800
	ds_load_u8 v76, v104 offset:18736
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v104 offset:19520
	ds_load_u8 v18, v104 offset:19456
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v104 offset:18496
	ds_load_u8 v10, v104 offset:18432
	ds_load_u8 v33, v104 offset:18448
	ds_load_u8 v41, v104 offset:18464
	ds_load_u8 v73, v104 offset:18480
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v74, v76, v74, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v104 offset:19648
	ds_load_u8 v19, v104 offset:19584
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v104 offset:18624
	ds_load_u8 v11, v104 offset:18560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v109 offset:15616
	ds_load_u8 v18, v109 offset:15360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v109 offset:11520
	ds_load_u8 v10, v109 offset:11264
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:16128
	ds_load_u8 v19, v109 offset:15872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:12032
	ds_load_u8 v11, v109 offset:11776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v18, 16, v17
	ds_load_u8 v17, v109 offset:14592
	ds_load_u8 v18, v109 offset:14336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v72, v10, 16, v9
	ds_load_u8 v9, v109 offset:10496
	ds_load_u8 v10, v109 offset:10240
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:15104
	ds_load_u8 v19, v109 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:11008
	ds_load_u8 v11, v109 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v18, 16, v17
	ds_load_u8 v17, v109 offset:13568
	ds_load_u8 v18, v109 offset:13312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v71, v10, 16, v9
	ds_load_u8 v9, v109 offset:9472
	ds_load_u8 v10, v109 offset:9216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:14080
	ds_load_u8 v19, v109 offset:13824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:9984
	ds_load_u8 v11, v109 offset:9728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v18, 16, v17
	ds_load_u8 v17, v109 offset:12544
	ds_load_u8 v18, v109 offset:12288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v70, v10, 16, v9
	ds_load_u8 v9, v109 offset:8448
	ds_load_u8 v10, v109 offset:8192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:13056
	ds_load_u8 v19, v109 offset:12800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:8960
	ds_load_u8 v11, v109 offset:8704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v18, 16, v17
	ds_load_u8 v17, v109 offset:11648
	ds_load_u8 v18, v109 offset:11392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v69, v10, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[57:60], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:12160
	ds_load_u8 v19, v109 offset:11904
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v95, v61, v175
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v89, v65, v163
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v18, 16, v17
	ds_load_u8 v17, v109 offset:10624
	ds_load_u8 v18, v109 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:11136
	ds_load_u8 v19, v109 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v18, 16, v17
	ds_load_u8 v17, v109 offset:9600
	ds_load_u8 v18, v109 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:10112
	ds_load_u8 v19, v109 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v18, 16, v17
	ds_load_u8 v17, v109 offset:8576
	ds_load_u8 v18, v109 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v109 offset:9088
	ds_load_u8 v19, v109 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v109 offset:15744
	ds_load_u8 v26, v109 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v109 offset:16256
	ds_load_u8 v27, v109 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v26, 16, v25
	ds_load_u8 v25, v109 offset:14720
	ds_load_u8 v26, v109 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v109 offset:15232
	ds_load_u8 v27, v109 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v26, 16, v25
	ds_load_u8 v25, v109 offset:13696
	ds_load_u8 v26, v109 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v109 offset:14208
	ds_load_u8 v27, v109 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v26, 16, v25
	ds_load_u8 v25, v109 offset:12672
	ds_load_u8 v26, v109 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v109 offset:13184
	ds_load_u8 v27, v109 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v26, 16, v25
	ds_load_u8 v25, v104 offset:19280
	ds_load_u8 v26, v104 offset:19216
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v104 offset:19408
	ds_load_u8 v27, v104 offset:19344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	ds_load_u8 v25, v104 offset:19024
	ds_load_u8 v26, v104 offset:18960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v104 offset:19152
	ds_load_u8 v27, v104 offset:19088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v104 offset:18768
	ds_load_u8 v26, v104 offset:18704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v104 offset:18896
	ds_load_u8 v27, v104 offset:18832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v104 offset:18512
	ds_load_u8 v26, v104 offset:18640
	ds_load_u8 v27, v104 offset:18576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v104 offset:20304
	ds_load_u8 v34, v104 offset:20240
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[42:45], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:20432
	ds_load_u8 v35, v104 offset:20368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v104 offset:20048
	ds_load_u8 v34, v104 offset:19984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:20176
	ds_load_u8 v35, v104 offset:20112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v104 offset:19792
	ds_load_u8 v34, v104 offset:19728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:19920
	ds_load_u8 v35, v104 offset:19856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v104 offset:19536
	ds_load_u8 v34, v104 offset:19472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v104 offset:19664
	ds_load_u8 v35, v104 offset:19600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[42:45], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v42, v104 offset:19296
	ds_load_u8 v43, v104 offset:19232
	v_wmma_i32_16x16x16_iu8 v[25:32], v[57:60], v[46:49], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[46:49], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v104 offset:20320
	ds_load_u8 v50, v104 offset:20256
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v33, v33
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v104 offset:19424
	ds_load_u8 v44, v104 offset:19360
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v104 offset:20448
	ds_load_u8 v51, v104 offset:20384
	v_cvt_f32_i32_e32 v39, v39
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v166, v43, 16, v42
	ds_load_u8 v42, v104 offset:19040
	ds_load_u8 v43, v104 offset:18976
	v_lshl_or_b32 v170, v50, 16, v49
	ds_load_u8 v49, v104 offset:20064
	ds_load_u8 v50, v104 offset:20000
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v104 offset:19168
	ds_load_u8 v44, v104 offset:19104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v104 offset:20192
	ds_load_u8 v51, v104 offset:20128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v165, v43, 16, v42
	ds_load_u8 v42, v104 offset:18784
	ds_load_u8 v43, v104 offset:18720
	v_lshl_or_b32 v169, v50, 16, v49
	ds_load_u8 v49, v104 offset:19808
	ds_load_u8 v50, v104 offset:19744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v104 offset:18912
	ds_load_u8 v44, v104 offset:18848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v104 offset:19936
	ds_load_u8 v51, v104 offset:19872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v164, v43, 16, v42
	ds_load_u8 v42, v104 offset:18528
	v_lshl_or_b32 v168, v50, 16, v49
	ds_load_u8 v49, v104 offset:19552
	ds_load_u8 v50, v104 offset:19488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v104 offset:18656
	ds_load_u8 v43, v104 offset:18592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v104 offset:19680
	ds_load_u8 v51, v104 offset:19616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v163, v42, 16, v41
	v_lshl_or_b32 v167, v50, 16, v49
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[163:166], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[61:64], v[163:166], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v76, v104 offset:18928
	ds_load_u8 v163, v104 offset:18864
	v_wmma_i32_16x16x16_iu8 v[41:48], v[57:60], v[167:170], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[167:170], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v163, v76, 0xc0c0004
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v74, v76, 16, v74
	ds_load_u8 v76, v104 offset:18544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v76, 0xc0c0004
	ds_load_u8 v76, v104 offset:18672
	ds_load_u8 v163, v104 offset:18608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v163, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v76, 16, v73
	ds_load_u8 v76, v104 offset:19312
	ds_load_u8 v163, v104 offset:19248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v163, v76, 0xc0c0004
	ds_load_u8 v163, v146 offset:18432
	ds_load_u8 v164, v104 offset:19376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v163, 16, v76
	v_wmma_i32_16x16x16_iu8 v[163:170], v[69:72], v[73:76], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v69, v104 offset:20080
	ds_load_u8 v70, v104 offset:20016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v104 offset:20208
	ds_load_u8 v71, v104 offset:20144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v70, 16, v69
	ds_load_u8 v69, v104 offset:19824
	ds_load_u8 v70, v104 offset:19760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v104 offset:19952
	ds_load_u8 v72, v104 offset:19888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v72, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v104 offset:19568
	ds_load_u8 v72, v104 offset:19504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v72, v69, 0xc0c0004
	ds_load_u8 v72, v104 offset:19696
	ds_load_u8 v171, v104 offset:19632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v171, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v72, 16, v69
	ds_load_u8 v72, v104 offset:20336
	ds_load_u8 v171, v104 offset:20272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v171, v72, 0xc0c0004
	ds_load_u8 v171, v152 offset:18432
	ds_load_u8 v172, v104 offset:20400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v171, 16, v72
	v_wmma_i32_16x16x16_iu8 v[171:178], v[61:64], v[73:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v73, v112, s5, 1
	v_add_lshl_u32 v74, v113, s5, 1
	v_add_lshl_u32 v75, v114, s5, 1
	v_add_lshl_u32 v76, v125, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[163:170], v[57:60], v[69:72], v[163:170] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s5, s5, s29
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x3
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	buffer_load_u16 v74, v74, s[12:15], 0 offen
	buffer_load_u16 v75, v75, s[12:15], 0 offen
	buffer_load_u16 v76, v76, s[12:15], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v57, v163
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v163, v133, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[171:178], v[65:68], v[69:72], v[171:178] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v58, v164
	v_cvt_f32_i32_e32 v59, v165
	v_cvt_f32_i32_e32 v60, v166
	v_cvt_f32_i32_e32 v61, v167
	v_cvt_f32_i32_e32 v70, v176
	v_cvt_f32_i32_e32 v62, v168
	v_cvt_f32_i32_e32 v63, v169
	v_cvt_f32_i32_e32 v64, v170
	v_cvt_f32_i32_e32 v65, v171
	v_cvt_f32_i32_e32 v66, v172
	v_cvt_f32_i32_e32 v67, v173
	v_cvt_f32_i32_e32 v68, v174
	v_cvt_f32_i32_e32 v69, v175
	v_cvt_f32_i32_e32 v71, v177
	v_cvt_f32_i32_e32 v72, v178
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v74, 16, v74
	v_lshlrev_b32_e32 v73, 16, v73
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v34, v34, v74 :: v_dual_cndmask_b32 v163, 0x80000000, v163
	v_dual_mul_f32 v176, v21, v73 :: v_dual_lshlrev_b32 v75, 16, v75
	v_mul_f32_e32 v172, v17, v73
	v_mul_f32_e32 v164, v9, v73
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v163, v163, s[16:19], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v165, v10, v73 :: v_dual_mul_f32 v36, v36, v74
	v_mul_f32_e32 v166, v11, v73
	v_dual_mul_f32 v167, v12, v73 :: v_dual_mul_f32 v38, v38, v74
	v_mul_f32_e32 v168, v13, v73
	v_dual_mul_f32 v169, v14, v73 :: v_dual_mul_f32 v40, v40, v74
	v_mul_f32_e32 v170, v15, v73
	v_dual_mul_f32 v171, v16, v73 :: v_dual_mul_f32 v42, v42, v75
	v_dual_mul_f32 v173, v18, v73 :: v_dual_mul_f32 v44, v44, v75
	v_mul_f32_e32 v174, v19, v73
	v_dual_mul_f32 v175, v20, v73 :: v_dual_mul_f32 v46, v46, v75
	v_dual_mul_f32 v177, v22, v73 :: v_dual_mul_f32 v48, v48, v75
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mul_f32 v25, v25, v74 :: v_dual_mul_f32 v52, v52, v75
	v_mul_f32_e32 v26, v26, v74
	v_dual_mul_f32 v27, v27, v74 :: v_dual_mul_f32 v54, v54, v75
	v_mul_f32_e32 v28, v28, v74
	v_dual_mul_f32 v29, v29, v74 :: v_dual_mul_f32 v56, v56, v75
	v_mul_f32_e32 v30, v30, v74
	v_dual_mul_f32 v31, v31, v74 :: v_dual_mul_f32 v58, v58, v76
	v_mul_f32_e32 v32, v32, v74
	v_dual_mul_f32 v33, v33, v74 :: v_dual_mul_f32 v60, v60, v76
	v_dual_mul_f32 v35, v35, v74 :: v_dual_mul_f32 v62, v62, v76
	v_dual_mul_f32 v37, v37, v74 :: v_dual_mul_f32 v64, v64, v76
	v_dual_mul_f32 v39, v39, v74 :: v_dual_mul_f32 v66, v66, v76
	v_dual_mul_f32 v41, v41, v75 :: v_dual_mul_f32 v68, v68, v76
	v_dual_mul_f32 v43, v43, v75 :: v_dual_mul_f32 v70, v70, v76
	v_dual_mul_f32 v45, v45, v75 :: v_dual_mul_f32 v72, v72, v76
	v_mul_f32_e32 v178, v23, v73
	v_dual_mul_f32 v73, v24, v73 :: v_dual_mul_f32 v50, v50, v75
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v163, 16, v163
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v154, v163 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v131 offset:20480
	ds_load_b128 v[13:16], v131 offset:20496
	ds_load_b128 v[17:20], v131 offset:20992
	ds_load_b128 v[21:24], v131 offset:21008
	v_mul_f32_e32 v47, v47, v75
	v_mul_f32_e32 v49, v49, v75
	v_mul_f32_e32 v51, v51, v75
	v_mul_f32_e32 v53, v53, v75
	v_mul_f32_e32 v55, v55, v75
	v_mul_f32_e32 v57, v57, v76
	v_mul_f32_e32 v59, v59, v76
	v_mul_f32_e32 v61, v61, v76
	v_mul_f32_e32 v63, v63, v76
	v_mul_f32_e32 v65, v65, v76
	v_mul_f32_e32 v67, v67, v76
	v_mul_f32_e32 v69, v69, v76
	v_mul_f32_e32 v71, v71, v76
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v139, v164, v9 :: v_dual_fmac_f32 v162, v165, v10
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v161, v166, v11 :: v_dual_fmac_f32 v132, v32, v16
	v_dual_fmac_f32 v160, v167, v12 :: v_dual_fmac_f32 v159, v168, v13
	v_fmac_f32_e32 v120, v42, v10
	v_dual_fmac_f32 v158, v169, v14 :: v_dual_fmac_f32 v157, v170, v15
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v122, v40, v24
	v_dual_fmac_f32 v156, v171, v16 :: v_dual_fmac_f32 v155, v172, v17
	v_fmac_f32_e32 v116, v46, v14
	v_dual_fmac_f32 v151, v173, v18 :: v_dual_fmac_f32 v118, v44, v12
	v_dual_fmac_f32 v150, v174, v19 :: v_dual_fmac_f32 v149, v175, v20
	v_fmac_f32_e32 v110, v49, v17
	v_dual_fmac_f32 v148, v176, v21 :: v_dual_fmac_f32 v147, v177, v22
	v_dual_fmac_f32 v106, v52, v20 :: v_dual_fmac_f32 v145, v178, v23
	v_fmac_f32_e32 v100, v57, v9
	v_dual_fmac_f32 v143, v73, v24 :: v_dual_fmac_f32 v108, v50, v18
	v_dual_fmac_f32 v142, v25, v9 :: v_dual_fmac_f32 v141, v26, v10
	v_fmac_f32_e32 v102, v55, v23
	v_dual_fmac_f32 v140, v27, v11 :: v_dual_fmac_f32 v137, v28, v12
	v_fmac_f32_e32 v98, v58, v10
	v_dual_fmac_f32 v136, v29, v13 :: v_dual_fmac_f32 v135, v30, v14
	v_fmac_f32_e32 v96, v60, v12
	v_fmac_f32_e32 v134, v31, v15
	v_dual_fmac_f32 v130, v33, v17 :: v_dual_fmac_f32 v129, v34, v18
	v_fmac_f32_e32 v90, v64, v16
	v_dual_fmac_f32 v128, v35, v19 :: v_dual_fmac_f32 v127, v36, v20
	v_fmac_f32_e32 v94, v62, v14
	v_fmac_f32_e32 v126, v37, v21
	v_dual_fmac_f32 v124, v38, v22 :: v_dual_fmac_f32 v123, v39, v23
	v_dual_fmac_f32 v88, v66, v18 :: v_dual_fmac_f32 v121, v41, v9
	v_dual_fmac_f32 v86, v68, v20 :: v_dual_fmac_f32 v119, v43, v11
	v_dual_fmac_f32 v84, v70, v22 :: v_dual_fmac_f32 v117, v45, v13
	v_fmac_f32_e32 v115, v47, v15
	v_fmac_f32_e32 v111, v48, v16
	v_fmac_f32_e32 v107, v51, v19
	v_fmac_f32_e32 v105, v53, v21
	v_fmac_f32_e32 v103, v54, v22
	v_fmac_f32_e32 v101, v56, v24
	v_fmac_f32_e32 v97, v59, v11
	v_fmac_f32_e32 v95, v61, v13
	v_fmac_f32_e32 v91, v63, v15
	v_fmac_f32_e32 v89, v65, v17
	v_fmac_f32_e32 v87, v67, v19
	v_fmac_f32_e32 v85, v69, v21
	v_fmac_f32_e32 v83, v71, v23
	v_fmac_f32_e32 v79, v72, v24
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v35, v119, v119 :: v_dual_max_f32 v36, v118, v118
	v_dual_max_f32 v37, v117, v117 :: v_dual_max_f32 v38, v116, v116
	v_max_f32_e32 v39, v115, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v36, 0, v36
	v_max_f32_e32 v41, 0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v61, 0, v38 :: v_dual_max_f32 v40, v107, v107
	v_max_f32_e32 v74, 0, v39
	v_dual_max_f32 v37, v111, v111 :: v_dual_max_f32 v42, v106, v106
	v_dual_max_f32 v38, v110, v110 :: v_dual_max_f32 v39, v108, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v92, 0, v40
	v_dual_max_f32 v40, v101, v101 :: v_dual_max_f32 v93, 0, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v76, 0, v38 :: v_dual_max_f32 v75, 0, v37
	v_dual_max_f32 v78, 0, v39 :: v_dual_max_f32 v37, v105, v105
	v_dual_max_f32 v38, v103, v103 :: v_dual_max_f32 v39, v102, v102
	v_dual_max_f32 v42, v100, v100 :: v_dual_max_f32 v5, v159, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v6, v158, v158 :: v_dual_max_f32 v99, 0, v37
	v_dual_max_f32 v100, 0, v38 :: v_dual_max_f32 v101, 0, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_max_f32 v102, 0, v40 :: v_dual_max_f32 v103, 0, v42
	v_dual_max_f32 v37, v98, v98 :: v_dual_max_f32 v38, v97, v97
	v_dual_max_f32 v39, v96, v96 :: v_dual_max_f32 v40, v95, v95
	v_max_f32_e32 v42, v94, v94
	v_dual_max_f32 v94, 0, v37 :: v_dual_max_f32 v95, 0, v38
	v_max_f32_e32 v37, v91, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v97, 0, v40 :: v_dual_max_f32 v98, 0, v42
	v_dual_max_f32 v7, v157, v157 :: v_dual_max_f32 v8, v156, v156
	v_dual_max_f32 v9, v155, v155 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v17, v142, v142 :: v_dual_max_f32 v18, v141, v141
	v_max_f32_e32 v19, v140, v140
	v_dual_max_f32 v27, v128, v128 :: v_dual_max_f32 v28, v127, v127
	v_dual_max_f32 v29, v126, v126 :: v_dual_max_f32 v96, 0, v39
	v_dual_max_f32 v39, v89, v89 :: v_dual_max_f32 v38, v90, v90
	v_max_f32_e32 v40, v88, v88
	v_dual_max_f32 v42, v87, v87 :: v_dual_max_f32 v87, 0, v37
	v_max_f32_e32 v37, v86, v86
	v_dual_max_f32 v1, v139, v139 :: v_dual_max_f32 v2, v162, v162
	v_dual_max_f32 v3, v161, v161 :: v_dual_max_f32 v4, v160, v160
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v12, v149, v149
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, v151, v151
	v_dual_max_f32 v11, v150, v150 :: v_dual_max_f32 v14, v147, v147
	v_max_f32_e32 v13, v148, v148
	v_dual_max_f32 v15, v145, v145 :: v_dual_max_f32 v16, v143, v143
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v22, v135, v135
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v20, v137, v137 :: v_dual_max_f32 v21, v136, v136
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v22, 0, v22
	v_dual_max_f32 v23, v134, v134 :: v_dual_max_f32 v24, v132, v132
	v_dual_max_f32 v25, v130, v130 :: v_dual_max_f32 v26, v129, v129
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v30, v124, v124
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v32, v122, v122 :: v_dual_max_f32 v31, v123, v123
	v_dual_max_f32 v34, v120, v120 :: v_dual_max_f32 v33, v121, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v30, 0, v30
	v_dual_max_f32 v88, 0, v38 :: v_dual_max_f32 v89, 0, v39
	v_dual_max_f32 v90, 0, v40 :: v_dual_max_f32 v91, 0, v42
	v_dual_max_f32 v39, v84, v84 :: v_dual_max_f32 v40, v83, v83
	v_dual_max_f32 v42, v79, v79 :: v_dual_max_f32 v79, 0, v37
	v_max_f32_e32 v38, v85, v85
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_max_f32_e32 v16, 0, v16
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v34, 0, v34
	v_dual_max_f32 v84, 0, v39 :: v_dual_mul_f32 v43, v1, v1
	v_max_f32_e32 v85, 0, v40
	v_max_f32_e32 v83, 0, v38
	v_dual_max_f32 v86, 0, v42 :: v_dual_mul_f32 v47, v3, v3
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v44, v2, v2 :: v_dual_mul_f32 v51, v5, v5
	v_dual_mul_f32 v48, v4, v4 :: v_dual_mul_f32 v55, v7, v7
	v_dual_mul_f32 v52, v6, v6 :: v_dual_mul_f32 v59, v9, v9
	v_dual_mul_f32 v56, v8, v8 :: v_dual_mul_f32 v63, v11, v11
	v_dual_mul_f32 v60, v10, v10 :: v_dual_mul_f32 v65, v12, v12
	v_dual_mul_f32 v68, v13, v13 :: v_dual_mul_f32 v69, v14, v14
	v_dual_mul_f32 v72, v15, v15 :: v_dual_mul_f32 v73, v16, v16
	v_dual_mul_f32 v71, v17, v17 :: v_dual_mul_f32 v70, v18, v18
	v_dual_mul_f32 v67, v19, v19 :: v_dual_mul_f32 v66, v20, v20
	v_dual_mul_f32 v64, v21, v21 :: v_dual_mul_f32 v57, v24, v24
	v_dual_mul_f32 v62, v22, v22 :: v_dual_mul_f32 v49, v28, v28
	v_dual_mul_f32 v58, v23, v23 :: v_dual_mul_f32 v53, v26, v26
	v_dual_mul_f32 v54, v25, v25 :: v_dual_mul_f32 v45, v30, v30
	v_dual_mul_f32 v50, v27, v27 :: v_dual_mul_f32 v39, v33, v33
	v_dual_mul_f32 v46, v29, v29 :: v_dual_mul_f32 v37, v35, v35
	v_dual_mul_f32 v42, v31, v31 :: v_dual_mul_f32 v35, v41, v41
	v_dual_mul_f32 v40, v32, v32 :: v_dual_mul_f32 v33, v74, v74
	v_dual_mul_f32 v38, v34, v34 :: v_dual_mul_f32 v31, v76, v76
	v_dual_mul_f32 v36, v36, v36 :: v_dual_mul_f32 v27, v99, v99
	v_dual_mul_f32 v34, v61, v61 :: v_dual_mul_f32 v29, v92, v92
	v_dual_mul_f32 v32, v75, v75 :: v_dual_mul_f32 v25, v101, v101
	v_dual_mul_f32 v30, v78, v78 :: v_dual_mul_f32 v23, v103, v103
	v_dual_mul_f32 v28, v93, v93 :: v_dual_mul_f32 v21, v95, v95
	v_dual_mul_f32 v26, v100, v100 :: v_dual_mul_f32 v19, v97, v97
	v_dual_mul_f32 v24, v102, v102 :: v_dual_mul_f32 v17, v87, v87
	v_dual_mul_f32 v22, v94, v94 :: v_dual_mul_f32 v15, v89, v89
	v_dual_mul_f32 v20, v96, v96 :: v_dual_mul_f32 v7, v79, v79
	v_dual_mul_f32 v18, v98, v98 :: v_dual_mul_f32 v5, v84, v84
	v_dual_mul_f32 v16, v88, v88 :: v_dual_mul_f32 v3, v86, v86
	v_mul_f32_e32 v14, v90, v90
	v_mul_f32_e32 v10, v91, v91
	v_mul_f32_e32 v6, v83, v83
	v_mul_f32_e32 v4, v85, v85
.LBB0_4:                                ; %._crit_edge
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v44, v44 :: v_dual_max_f32 v2, v43, v43
	v_max3_f32 v8, v48, v51, v52
	v_max3_f32 v9, v60, v63, v65
	v_max3_f32 v11, v68, v69, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v12, v71, v71 :: v_dual_max_f32 v1, v2, v1
	v_max_f32_e32 v2, v70, v70
	v_max3_f32 v13, v55, v56, v59
	v_max3_f32 v9, v9, v11, v73
	v_max_f32_e32 v11, v39, v39
	v_max3_f32 v1, v1, v47, v8
	v_max_f32_e32 v8, v38, v38
	v_max_f32_e32 v2, v12, v2
	v_max3_f32 v12, v66, v64, v62
	v_max3_f32 v61, v53, v50, v49
	v_max3_f32 v74, v46, v45, v42
	v_max_f32_e32 v8, v11, v8
	v_max3_f32 v11, v36, v35, v34
	v_max3_f32 v75, v30, v29, v28
	v_max3_f32 v76, v27, v26, v25
	v_max3_f32 v1, v1, v13, v9
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v8, v8, v37, v11
	v_max3_f32 v41, v58, v57, v54
	v_max3_f32 v11, v75, v76, v24
	v_max_f32_e32 v75, v23, v23
	v_max3_f32 v2, v2, v67, v12
	v_max3_f32 v12, v61, v74, v40
	v_max3_f32 v61, v33, v32, v31
	v_max_f32_e32 v74, v22, v22
	v_max3_f32 v13, v14, v10, v7
.Ltmp26:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s4, s29, 31
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v2, v41, v12
	v_max3_f32 v8, v8, v61, v11
	v_max_f32_e32 v9, v75, v74
	v_max3_f32 v11, v20, v19, v18
	v_max3_f32 v41, v6, v5, v4
	v_max3_f32 v12, v17, v16, v15
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v61, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s4, s4, 24
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v9, v9, v21, v11
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v11, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v13, v13, v41, v3
	v_max_f32_e32 v41, v61, v61
.Ltmp33:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s4, s29, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v11, v11, v11
	v_max3_f32 v9, v9, v12, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v83, v1, v11 :: v_dual_lshlrev_b32 v12, 4, v0
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v74, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v9, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v61, v74, v74 :: v_dual_and_b32 v74, 3, v0
	v_max_f32_e32 v84, v2, v41
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v2, 4, v0
	v_and_b32_e32 v41, 0x80, v0
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v85, v8, v61
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v11, 5, v74
	v_lshl_add_u32 v8, v74, 9, 0
	v_and_b32_e32 v61, 8, v0
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v13, 0x60, v0
	v_and_or_b32 v75, 0x680, v12, v11
	v_lshl_add_u32 v8, v2, 2, v8
	v_lshlrev_b32_e32 v12, 1, v41
	v_lshrrev_b32_e32 v78, 3, v41
	v_lshl_add_u32 v79, v2, 6, 0
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v86, v9, v1
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v76, v11, v13
	v_lshl_add_u32 v8, v61, 4, v8
	v_xor_b32_e32 v75, v75, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v8, v12, v76
	v_add3_u32 v8, v79, v78, v75
	ds_store_b128 v1, v[83:86]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[83:86], v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v8, v84
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v76, v84, v84 :: v_dual_mov_b32 v1, v83
	v_max_f32_e32 v78, v86, v86
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v86, v86 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v9, v85
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v61, 3, v61
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v8, v8, v8 :: v_dual_add_nc_u32 v41, 0, v41
	v_max_f32_e32 v75, v83, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v1, v1
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v8, v76, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v76, v86, v86 :: v_dual_max_f32 v1, v75, v1
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v83, v8
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v83, v83, v83
	v_dual_max_f32 v75, v85, v85 :: v_dual_max_f32 v8, v8, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v83, v8
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v84, v83, v83
	v_max_f32_e32 v9, v75, v9
	v_max_f32_e32 v75, v78, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v84, v8, v84
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v76, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v79, v1 :: v_dual_max_f32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v9, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v76, v9
	v_mov_b32_e32 v78, v75
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v75, v78
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v78, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v79, v79, v79 :: v_dual_max_f32 v8, v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v79 :: v_dual_max_f32 v86, v75, v8
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v79, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v79, v79, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v83, v1, v79
	v_max_f32_e32 v1, v76, v76
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v76, 1, v13
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v85, v9, v1
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v1, 5, v2
	v_lshl_add_u32 v2, v74, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v8, v41, v76, v61
	v_add3_u32 v1, v2, v1, v61
	ds_store_b128 v8, v[83:86]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[83:86], v1
.Ltmp64:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v1, v83, v83 :: v_dual_max_f32 v2, v85, v85
	v_dual_max_f32 v8, v84, v84 :: v_dual_max_f32 v9, v86, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, 0x2b8cbccc, v1 :: v_dual_max_f32 v2, 0x2b8cbccc, v2
	v_dual_max_f32 v8, 0x2b8cbccc, v8 :: v_dual_max_f32 v9, 0x2b8cbccc, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v41, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v61, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v76, null, 0x40e00000, 0x40e00000, v8
	v_rcp_f32_e32 v74, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v75, v61
	v_div_scale_f32 v78, null, 0x40e00000, 0x40e00000, v9
	v_rcp_f32_e32 v79, v76
	v_div_scale_f32 v86, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v83, v78
	v_div_scale_f32 v87, s0, v2, 0x40e00000, v2
	v_fma_f32 v84, -v41, v74, 1.0
	v_fma_f32 v85, -v61, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v74, v84, v74 :: v_dual_fmac_f32 v75, v85, v75
	v_fma_f32 v84, -v76, v79, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v78, v83, 1.0
	v_dual_mul_f32 v88, v86, v74 :: v_dual_mul_f32 v89, v87, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v84, v79
	v_div_scale_f32 v84, s1, v8, 0x40e00000, v8
	v_fma_f32 v90, -v41, v88, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v61, v89, v87
	v_fmac_f32_e32 v83, v85, v83
	v_mul_f32_e32 v92, v84, v79
	v_div_scale_f32 v85, s2, v9, 0x40e00000, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v90, v74 :: v_dual_fmac_f32 v89, v91, v75
	v_fma_f32 v90, -v76, v92, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v93, v85, v83
	v_fma_f32 v41, -v41, v88, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v61, v89, v87
	v_fmac_f32_e32 v92, v90, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v78, v93, v85
	v_div_fmas_f32 v41, v41, v74, v88
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v74.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v61, v61, v75, v89
	v_fma_f32 v75, -v76, v92, v84
	v_div_fixup_f32 v1, v41, 0x40e00000, v1
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v93, v91, v83
	v_div_fixup_f32 v2, v61, 0x40e00000, v2
	v_div_fmas_f32 v41, v75, v79, v92
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v75.l, v1.h
	v_mov_b16_e32 v75.h, v74.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v78, v93, v85
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v41, v41, 0x40e00000, v8
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v74.l, v2.h
	v_and_b32_e32 v8, 1, v75
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v61, v76, v83, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v75.l, v41.h
	v_add3_u32 v8, v1, v8, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v61, v61, 0x40e00000, v9
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v9, 1, v74
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v76, 0xffff0000, v8
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v74.l, v61.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v2, v9, 0x7fff
	v_add3_u32 v9, v41, v75, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v75, null, v76, v76, v43
	v_div_scale_f32 v78, null, v76, v76, v44
	v_div_scale_f32 v83, vcc_lo, v43, v76, v43
	v_rcp_f32_e32 v79, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v84, v78
	v_div_scale_f32 v87, null, v76, v76, v48
	v_div_scale_f32 v86, null, v76, v76, v47
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v74, 1, v74
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v91, v87
	v_div_scale_f32 v85, s0, v44, v76, v44
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v75, v79, 1.0
	v_fma_f32 v90, -v78, v84, 1.0
	v_rcp_f32_e32 v89, v86
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v61, v74, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v92, null, v76, v76, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v79, v41, v79 :: v_dual_fmac_f32 v84, v90, v84
	v_fma_f32 v97, -v87, v91, 1.0
	v_div_scale_f32 v88, s1, v47, v76, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v90, v83, v79
	v_fma_f32 v94, -v86, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v97, v91
	v_div_scale_f32 v93, null, v76, v76, v52
	v_fma_f32 v96, -v75, v90, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v94, v89
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v74, 0xffff0000, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v90, v96, v79
	v_rcp_f32_e32 v96, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v97, v88, v89
	v_fma_f32 v75, -v75, v90, v83
	v_div_scale_f32 v83, s2, v48, v76, v48
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v61, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v75, v75, v79, v90
	v_dual_mul_f32 v90, v83, v91 :: v_dual_mul_f32 v95, v85, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v92, v96, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v43, v75, v76, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v78, v95, v85
	v_fmac_f32_e32 v96, v79, v96
	v_div_scale_f32 v79, s0, v51, v76, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v94, v84
	v_rcp_f32_e32 v94, v93
	v_fma_f32 v78, -v78, v95, v85
	v_fma_f32 v85, -v86, v97, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v75, v78, v84, v95
	v_fmac_f32_e32 v97, v85, v89
	v_fma_f32 v78, -v87, v90, v83
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v93, v94, 1.0
	v_div_scale_f32 v85, null, v76, v76, v55
	v_div_fixup_f32 v44, v75, v76, v44
	v_fma_f32 v75, -v86, v97, v88
	v_fmac_f32_e32 v90, v78, v91
	v_mul_f32_e32 v78, v79, v96
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v94, v84, v94
	v_div_scale_f32 v84, s3, v52, v76, v52
	v_div_fmas_f32 v75, v75, v89, v97
	v_fma_f32 v83, -v87, v90, v83
	v_fma_f32 v86, -v92, v78, v79
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v89, null, v76, v76, v56
	v_mul_f32_e32 v88, v84, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v86, v96
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v86, v89
	v_div_fmas_f32 v83, v83, v91, v90
	v_fma_f32 v90, -v93, v88, v84
	v_div_fixup_f32 v47, v75, v76, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v85, v87, 1.0
	v_fma_f32 v75, -v92, v78, v79
	v_div_fixup_f32 v48, v83, v76, v48
	v_fmac_f32_e32 v88, v90, v94
	v_div_scale_f32 v79, s1, v55, v76, v55
	v_fmac_f32_e32 v87, v91, v87
	v_fma_f32 v83, -v89, v86, 1.0
	v_div_scale_f32 v90, null, v76, v76, v59
	s_mov_b32 vcc_lo, s0
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v41, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v75, v75, v96, v78
	v_fma_f32 v78, -v93, v88, v84
	v_mul_f32_e32 v84, v79, v87
	v_fmac_f32_e32 v86, v83, v86
	v_rcp_f32_e32 v83, v90
	v_div_scale_f32 v91, s0, v56, v76, v56
	v_div_scale_f32 v92, null, v76, v76, v60
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v93, v91, v86
	v_div_fmas_f32 v78, v78, v94, v88
	v_fma_f32 v88, -v85, v84, v79
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v90, v83, 1.0
	v_div_fixup_f32 v51, v75, v76, v51
	v_fma_f32 v75, -v89, v93, v91
	v_fmac_f32_e32 v84, v88, v87
	v_div_scale_f32 v88, null, v76, v76, v63
	v_div_fixup_f32 v52, v78, v76, v52
	v_fmac_f32_e32 v83, v94, v83
	v_div_scale_f32 v78, s2, v59, v76, v59
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v79, -v85, v84, v79
	v_fmac_f32_e32 v93, v75, v86
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v75, v78, v83
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s3, v60, v76, v60
	v_div_fmas_f32 v79, v79, v87, v84
	v_fma_f32 v84, -v89, v93, v91
	v_div_scale_f32 v96, null, v76, v76, v65
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v87, -v90, v75, v78
	v_mul_f32_e32 v89, v94, v95
	v_fma_f32 v91, -v88, v85, 1.0
	v_div_fmas_f32 v84, v84, v86, v93
	v_rcp_f32_e32 v86, v96
	v_fmac_f32_e32 v75, v87, v83
	v_fma_f32 v87, -v92, v89, v94
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, s0, v63, v76, v63
	v_div_fixup_f32 v55, v79, v76, v55
	v_div_fixup_f32 v56, v84, v76, v56
	v_fma_f32 v78, -v90, v75, v78
	v_fmac_f32_e32 v89, v87, v95
	v_mul_f32_e32 v79, v91, v85
	v_fma_f32 v84, -v96, v86, 1.0
	v_div_scale_f32 v87, null, v76, v76, v68
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v90, s1, v65, v76, v65
	v_div_fmas_f32 v75, v78, v83, v75
	v_fma_f32 v78, -v92, v89, v94
	v_fma_f32 v83, -v88, v79, v91
	v_fmac_f32_e32 v86, v84, v86
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v92, null, v76, v76, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v83, v85
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v59, v75, v76, v59
	v_rcp_f32_e32 v83, v92
	v_div_fmas_f32 v78, v78, v95, v89
	v_mul_f32_e32 v89, v90, v86
	v_fma_f32 v75, -v88, v79, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v87, v84, 1.0
	v_div_scale_f32 v88, s2, v68, v76, v68
	v_div_fixup_f32 v60, v78, v76, v60
	v_fma_f32 v78, -v96, v89, v90
	v_fmac_f32_e32 v84, v93, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v92, v83, 1.0
	v_div_scale_f32 v93, null, v76, v76, v72
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v89, v78, v86
	v_div_fmas_f32 v75, v75, v85, v79
	v_dual_mul_f32 v78, v88, v84 :: v_dual_fmac_f32 v83, v91, v83
	v_rcp_f32_e32 v79, v93
	v_div_scale_f32 v85, s0, v69, v76, v69
	v_div_scale_f32 v91, null, v76, v76, v73
	v_div_fixup_f32 v63, v75, v76, v63
	v_fma_f32 v75, -v96, v89, v90
	v_fma_f32 v90, -v87, v78, v88
	v_mul_f32_e32 v94, v85, v83
	v_rcp_f32_e32 v95, v91
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v93, v79, 1.0
	v_div_fmas_f32 v75, v75, v86, v89
	v_fmac_f32_e32 v78, v90, v84
	v_fma_f32 v86, -v92, v94, v85
	v_div_scale_f32 v89, s1, v72, v76, v72
	v_fmac_f32_e32 v79, v96, v79
	v_div_fixup_f32 v65, v75, v76, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v91, v95, 1.0
	v_fma_f32 v75, -v87, v78, v88
	v_fmac_f32_e32 v94, v86, v83
	v_div_scale_f32 v88, null, v74, v74, v71
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v86, v89, v79
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v87, s3, v73, v76, v73
	v_div_fmas_f32 v75, v75, v84, v78
	v_fma_f32 v78, -v92, v94, v85
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v92, null, v74, v74, v70
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v84, -v93, v86, v89
	v_mul_f32_e32 v90, v87, v95
	v_div_fmas_f32 v78, v78, v83, v94
	v_rcp_f32_e32 v83, v92
	v_div_fixup_f32 v68, v75, v76, v68
	v_fmac_f32_e32 v86, v84, v79
	v_fma_f32 v84, -v91, v90, v87
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_fixup_f32 v69, v78, v76, v69
	v_div_scale_f32 v78, s0, v71, v74, v71
	v_fma_f32 v75, -v93, v86, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v90, v84, v95 :: v_dual_fmac_f32 v85, v94, v85
	v_fma_f32 v84, -v92, v83, 1.0
	v_div_scale_f32 v89, null, v74, v74, v67
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v75, v75, v79, v86
	v_fma_f32 v79, -v91, v90, v87
	v_dual_mul_f32 v86, v78, v85 :: v_dual_fmac_f32 v83, v84, v83
	v_rcp_f32_e32 v84, v89
	v_div_scale_f32 v87, s1, v70, v74, v70
	v_div_scale_f32 v91, null, v74, v74, v66
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v93, v87, v83
	v_div_fmas_f32 v79, v79, v95, v90
	v_fma_f32 v90, -v88, v86, v78
	v_rcp_f32_e32 v95, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v84, 1.0
	v_div_fixup_f32 v72, v75, v76, v72
	v_div_fixup_f32 v73, v79, v76, v73
	v_fmac_f32_e32 v86, v90, v85
	v_fma_f32 v75, -v92, v93, v87
	v_div_scale_f32 v79, null, v74, v74, v64
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v76, s2, v67, v74, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v91, v95, 1.0
	v_fma_f32 v78, -v88, v86, v78
	v_fmac_f32_e32 v93, v75, v83
	v_rcp_f32_e32 v88, v79
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v75, v76, v84
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v90, s3, v66, v74, v66
	v_div_fmas_f32 v78, v78, v85, v86
	v_fma_f32 v85, -v92, v93, v87
	v_div_scale_f32 v94, null, v74, v74, v62
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v86, -v89, v75, v76
	v_mul_f32_e32 v87, v90, v95
	v_fma_f32 v92, -v79, v88, 1.0
	v_div_fmas_f32 v83, v85, v83, v93
	v_rcp_f32_e32 v85, v94
	v_fmac_f32_e32 v75, v86, v84
	v_fma_f32 v86, -v91, v87, v90
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s0, v64, v74, v64
	v_div_fixup_f32 v71, v78, v74, v71
	v_div_fixup_f32 v70, v83, v74, v70
	v_fma_f32 v76, -v89, v75, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v87, v86, v95 :: v_dual_mul_f32 v78, v92, v88
	v_fma_f32 v83, -v94, v85, 1.0
	v_div_scale_f32 v86, null, v74, v74, v58
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v89, s1, v62, v74, v62
	v_div_fmas_f32 v75, v76, v84, v75
	v_fma_f32 v76, -v91, v87, v90
	v_fma_f32 v84, -v79, v78, v92
	v_fmac_f32_e32 v85, v83, v85
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v90, null, v74, v74, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v84, v88
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v67, v75, v74, v67
	v_rcp_f32_e32 v84, v90
	v_div_fmas_f32 v76, v76, v95, v87
	v_mul_f32_e32 v87, v89, v85
	v_fma_f32 v75, -v79, v78, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v83, 1.0
	v_div_scale_f32 v92, null, v74, v74, v54
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v66, v76, v74, v66
	v_fma_f32 v76, -v94, v87, v89
	v_fmac_f32_e32 v83, v91, v83
	v_div_scale_f32 v79, s2, v58, v74, v58
	v_fma_f32 v91, -v90, v84, 1.0
	v_div_fmas_f32 v75, v75, v88, v78
	v_rcp_f32_e32 v78, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v76, v85 :: v_dual_mul_f32 v76, v79, v83
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v88, s0, v57, v74, v57
	v_div_scale_f32 v91, null, v74, v74, v53
	v_div_fixup_f32 v64, v75, v74, v64
	v_fma_f32 v75, -v94, v87, v89
	v_fma_f32 v89, -v86, v76, v79
	v_mul_f32_e32 v93, v88, v84
	v_rcp_f32_e32 v94, v91
	v_fma_f32 v95, -v92, v78, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v76, v89, v83
	v_div_fmas_f32 v75, v75, v85, v87
	v_fma_f32 v85, -v90, v93, v88
	v_fmac_f32_e32 v78, v95, v78
	v_div_scale_f32 v87, s1, v54, v74, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v62, v75, v74, v62
	v_fma_f32 v89, -v91, v94, 1.0
	v_fma_f32 v75, -v86, v76, v79
	v_fmac_f32_e32 v93, v85, v84
	v_mul_f32_e32 v79, v87, v78
	v_div_scale_f32 v86, null, v74, v74, v50
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v94, v89, v94
	v_div_scale_f32 v85, s3, v53, v74, v53
	v_div_fmas_f32 v75, v75, v83, v76
	v_fma_f32 v76, -v90, v93, v88
	v_fma_f32 v83, -v92, v79, v87
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v90, null, v74, v74, v49
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v83, v78
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v76, v76, v84, v93
	v_fma_f32 v84, -v91, v89, v85
	v_div_fixup_f32 v58, v75, v74, v58
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v88, 1.0
	v_fma_f32 v75, -v92, v79, v87
	v_div_fixup_f32 v57, v76, v74, v57
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v76, s0, v50, v74, v50
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v84, -v90, v83, 1.0
	v_div_scale_f32 v87, null, v74, v74, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v95, null, v74, v74, v40
	v_div_fmas_f32 v75, v75, v78, v79
	v_fma_f32 v78, -v91, v89, v85
	v_mul_f32_e32 v79, v76, v88
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v85, s1, v49, v74, v49
	v_div_scale_f32 v91, null, v74, v74, v45
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v92, v85, v83
	v_div_fmas_f32 v78, v78, v94, v89
	v_fma_f32 v89, -v86, v79, v76
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v84, 1.0
	v_div_fixup_f32 v54, v75, v74, v54
	v_fma_f32 v75, -v90, v92, v85
	v_fmac_f32_e32 v79, v89, v88
	v_div_fixup_f32 v53, v78, v74, v53
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v78, s2, v46, v74, v46
	v_div_scale_f32 v89, null, v74, v74, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v76, -v86, v79, v76
	v_fmac_f32_e32 v92, v75, v83
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v75, v78, v84
	v_rcp_f32_e32 v86, v89
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s3, v45, v74, v45
	v_div_fmas_f32 v76, v76, v88, v79
	v_fma_f32 v79, -v90, v92, v85
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v85, -v87, v75, v78
	v_mul_f32_e32 v88, v93, v94
	v_div_fixup_f32 v50, v76, v74, v50
	v_div_fmas_f32 v79, v79, v83, v92
	v_rcp_f32_e32 v83, v95
	v_fma_f32 v90, -v89, v86, 1.0
	v_fmac_f32_e32 v75, v85, v84
	v_fma_f32 v85, -v91, v88, v93
	v_div_fixup_f32 v49, v79, v74, v49
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s0, v42, v74, v42
	v_fmac_f32_e32 v88, v85, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v61, v61, v39
	v_fma_f32 v76, -v87, v75, v78
	v_dual_mul_f32 v78, v90, v86 :: v_dual_fmac_f32 v83, v79, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v79, v85
	v_div_scale_f32 v87, s1, v40, v74, v40
	v_div_fmas_f32 v75, v76, v84, v75
	v_fma_f32 v76, -v91, v88, v93
	v_fma_f32 v84, -v89, v78, v90
	v_div_scale_f32 v91, null, v61, v61, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v46, v75, v74, v46
	v_fmac_f32_e32 v78, v84, v86
	v_rcp_f32_e32 v84, v91
	v_fma_f32 v92, -v85, v79, 1.0
	v_div_fmas_f32 v76, v76, v94, v88
	v_mul_f32_e32 v88, v87, v83
	v_fma_f32 v75, -v89, v78, v90
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v79, v92, v79
	v_div_scale_f32 v92, null, v61, v61, v37
	v_div_fixup_f32 v45, v76, v74, v45
	v_fma_f32 v76, -v95, v88, v87
	v_div_scale_f32 v89, s2, v39, v61, v39
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_fmas_f32 v75, v75, v86, v78
	v_rcp_f32_e32 v78, v92
	v_fmac_f32_e32 v88, v76, v83
	v_mul_f32_e32 v76, v89, v79
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v86, s0, v38, v61, v38
	v_div_scale_f32 v90, null, v61, v61, v36
	v_div_fixup_f32 v42, v75, v74, v42
	v_fma_f32 v75, -v95, v88, v87
	v_fma_f32 v87, -v85, v76, v89
	v_mul_f32_e32 v93, v86, v84
	v_rcp_f32_e32 v94, v90
	v_fma_f32 v95, -v92, v78, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v76, v87, v79
	v_div_fmas_f32 v75, v75, v83, v88
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v78, v95, v78
	v_div_scale_f32 v87, s1, v37, v61, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v40, v75, v74, v40
	v_fma_f32 v88, -v90, v94, 1.0
	v_fma_f32 v74, -v85, v76, v89
	v_fmac_f32_e32 v93, v83, v84
	v_mul_f32_e32 v75, v87, v78
	v_div_scale_f32 v85, null, v61, v61, v35
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v94, v88, v94
	v_div_scale_f32 v83, s3, v36, v61, v36
	v_div_fmas_f32 v74, v74, v79, v76
	v_fma_f32 v76, -v91, v93, v86
	v_fma_f32 v79, -v92, v75, v87
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v89, null, v61, v61, v34
	v_mul_f32_e32 v88, v83, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v79, v78
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v79, v89
	v_div_fmas_f32 v76, v76, v84, v93
	v_fma_f32 v84, -v90, v88, v83
	v_div_fixup_f32 v39, v74, v61, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v85, v86, 1.0
	v_fma_f32 v74, -v92, v75, v87
	v_div_fixup_f32 v38, v76, v61, v38
	v_fmac_f32_e32 v88, v84, v94
	v_div_scale_f32 v76, s0, v35, v61, v35
	v_fmac_f32_e32 v86, v91, v86
	v_fma_f32 v84, -v89, v79, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v87, null, v61, v61, v33
	v_div_fmas_f32 v74, v74, v78, v75
	v_fma_f32 v75, -v90, v88, v83
	v_mul_f32_e32 v78, v76, v86
	v_fmac_f32_e32 v79, v84, v79
	v_div_scale_f32 v84, s1, v34, v61, v34
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v37, v74, v61, v37
	v_div_fmas_f32 v75, v75, v94, v88
	v_fma_f32 v88, -v85, v78, v76
	v_mul_f32_e32 v91, v84, v79
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v83, v87
	v_div_scale_f32 v90, null, v61, v61, v32
	v_fmac_f32_e32 v78, v88, v86
	v_fma_f32 v74, -v89, v91, v84
	v_div_scale_f32 v94, null, v61, v61, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v76, -v85, v78, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v91, v74, v79
	v_fma_f32 v92, -v87, v83, 1.0
	v_div_scale_f32 v88, null, v61, v61, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v76, v86, v78
	v_fma_f32 v78, -v89, v91, v84
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v36, v75, v61, v36
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v75, s2, v33, v61, v33
	v_div_fmas_f32 v78, v78, v79, v91
	v_rcp_f32_e32 v79, v94
	v_fma_f32 v92, -v90, v93, 1.0
	v_rcp_f32_e32 v85, v88
	v_mul_f32_e32 v74, v75, v83
	v_div_fixup_f32 v34, v78, v61, v34
	v_div_fixup_f32 v35, v76, v61, v35
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v67, v67
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v84, -v87, v74, v75
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v78, -v94, v79, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v58, v58
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v89, -v88, v85, 1.0
	v_fmac_f32_e32 v74, v84, v83
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v79, v78, v79
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s3, v32, v61, v32
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s0, v31, v61, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v92, v93
	v_fma_f32 v75, -v87, v74, v75
	v_div_scale_f32 v87, s1, v30, v61, v30
	v_mul_f32_e32 v76, v89, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v90, v86, v92
	v_div_fmas_f32 v74, v75, v83, v74
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v83, -v88, v76, v89
	v_fmac_f32_e32 v86, v84, v93
	v_div_scale_f32 v84, null, v61, v61, v29
	v_div_fixup_f32 v33, v74, v61, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v83, v85
	v_fma_f32 v75, -v90, v86, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v84
	v_div_scale_f32 v90, null, v61, v61, v28
	v_fma_f32 v74, -v88, v76, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v75, v75, v93, v86
	v_mul_f32_e32 v86, v87, v79
	v_rcp_f32_e32 v83, v90
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v88, s2, v29, v61, v29
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v78, 1.0
	v_div_fixup_f32 v32, v75, v61, v32
	v_fma_f32 v75, -v94, v86, v87
	v_div_fmas_f32 v74, v74, v85, v76
	v_div_scale_f32 v85, s0, v28, v61, v28
	v_fmac_f32_e32 v78, v91, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v90, v83, 1.0
	v_div_scale_f32 v91, null, v61, v61, v27
	v_dual_fmac_f32 v86, v75, v79 :: v_dual_mul_f32 v75, v88, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v89, v83
	v_rcp_f32_e32 v76, v91
	v_div_scale_f32 v89, null, v61, v61, v26
	v_div_fixup_f32 v31, v74, v61, v31
	v_fma_f32 v74, -v94, v86, v87
	v_fma_f32 v87, -v84, v75, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v89
	v_mul_f32_e32 v92, v85, v83
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v94, -v91, v76, 1.0
	v_div_fmas_f32 v74, v74, v79, v86
	v_fmac_f32_e32 v75, v87, v78
	v_fma_f32 v79, -v90, v92, v85
	v_div_scale_f32 v86, s1, v27, v61, v27
	v_fmac_f32_e32 v76, v94, v76
	v_fma_f32 v87, -v89, v93, 1.0
	v_div_fixup_f32 v30, v74, v61, v30
	v_fma_f32 v74, -v84, v75, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v92, v79, v83 :: v_dual_mul_f32 v79, v86, v76
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v87, null, v61, v61, v25
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v84, s3, v26, v61, v26
	v_div_fmas_f32 v74, v74, v78, v75
	v_fma_f32 v75, -v90, v92, v85
	v_fma_f32 v78, -v91, v79, v86
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v90, null, v61, v61, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v88, v84, v93 :: v_dual_fmac_f32 v79, v78, v76
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v78, v90
	v_div_fmas_f32 v75, v75, v83, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v83, -v89, v88, v84
	v_div_fixup_f32 v29, v74, v61, v29
	v_fma_f32 v92, -v87, v85, 1.0
	v_fma_f32 v74, -v91, v79, v86
	v_div_fixup_f32 v28, v75, v61, v28
	v_fmac_f32_e32 v88, v83, v93
	v_div_scale_f32 v75, s0, v25, v61, v25
	v_fmac_f32_e32 v85, v92, v85
	v_fma_f32 v83, -v90, v78, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v91, null, v41, v41, v22
	v_div_fmas_f32 v74, v74, v76, v79
	v_fma_f32 v76, -v89, v88, v84
	v_mul_f32_e32 v79, v75, v85
	v_fmac_f32_e32 v78, v83, v78
	v_div_scale_f32 v83, null, v41, v41, v23
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v84, s1, v24, v61, v24
	v_div_fmas_f32 v76, v76, v93, v88
	v_rcp_f32_e32 v86, v83
	v_fma_f32 v88, -v87, v79, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v84, v78
	v_div_fixup_f32 v27, v74, v61, v27
	v_div_fixup_f32 v26, v76, v61, v26
	v_rcp_f32_e32 v76, v91
	v_fmac_f32_e32 v79, v88, v85
	v_fma_f32 v74, -v90, v89, v84
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v93, null, v41, v41, v20
	v_fma_f32 v88, -v83, v86, 1.0
	v_fma_f32 v75, -v87, v79, v75
	v_div_scale_f32 v87, null, v41, v41, v21
	v_fmac_f32_e32 v89, v74, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v74, s2, v23, v41, v23
	v_rcp_f32_e32 v88, v87
	v_fma_f32 v92, -v91, v76, 1.0
	v_div_fmas_f32 v75, v75, v85, v79
	v_fma_f32 v79, -v90, v89, v84
	v_mul_f32_e32 v84, v74, v86
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v76, v92, v76
	v_div_scale_f32 v85, s0, v22, v41, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v83, v84, v74
	v_fma_f32 v90, -v87, v88, 1.0
	v_rcp_f32_e32 v95, v93
	v_div_fmas_f32 v78, v79, v78, v89
	v_mul_f32_e32 v94, v85, v76
	v_fmac_f32_e32 v84, v92, v86
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s3, v21, v41, v21
	v_div_fixup_f32 v25, v75, v61, v25
	v_div_fixup_f32 v24, v78, v61, v24
	v_fma_f32 v61, -v83, v84, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v90, v88
	v_div_scale_f32 v78, null, v41, v41, v19
	v_fma_f32 v79, -v91, v94, v85
	v_fma_f32 v75, -v93, v95, 1.0
	v_fma_f32 v74, -v87, v89, v90
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v94, v79, v76
	v_fmac_f32_e32 v95, v75, v95
	v_fmac_f32_e32 v89, v74, v88
	v_rcp_f32_e32 v74, v78
	v_div_scale_f32 v75, s1, v20, v41, v20
	v_div_fmas_f32 v61, v61, v86, v84
	v_fma_f32 v79, -v91, v94, v85
	v_div_scale_f32 v84, null, v41, v41, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v75, v95
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v23, v61, v41, v23
	v_fma_f32 v85, -v78, v74, 1.0
	v_div_fmas_f32 v76, v79, v76, v94
	v_fma_f32 v79, -v87, v89, v90
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v93, v83, v75
	v_fmac_f32_e32 v74, v85, v74
	v_div_scale_f32 v85, s0, v19, v41, v19
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v83, v87, v95
	v_div_fmas_f32 v79, v79, v88, v89
	v_mul_f32_e32 v61, v85, v74
	v_div_fixup_f32 v22, v76, v41, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v76, -v84, v86, 1.0
	v_fma_f32 v75, -v93, v83, v75
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v87, -v78, v61, v85
	v_div_fixup_f32 v21, v79, v41, v21
	v_div_scale_f32 v79, null, v41, v41, v17
	v_fmac_f32_e32 v86, v76, v86
	v_div_scale_f32 v76, s2, v18, v41, v18
	v_div_fmas_f32 v75, v75, v95, v83
	v_fmac_f32_e32 v61, v87, v74
	v_rcp_f32_e32 v88, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v83, v76, v86
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v20, v75, v41, v20
	v_fma_f32 v75, -v78, v61, v85
	v_div_scale_f32 v87, null, v41, v41, v16
	v_fma_f32 v78, -v84, v83, v76
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v61, v75, v74, v61
	v_div_scale_f32 v74, null, v41, v41, v15
	v_fma_f32 v85, -v79, v88, 1.0
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v83, v78, v86
	v_rcp_f32_e32 v78, v74
	v_div_scale_f32 v75, s0, v17, v41, v17
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, null, v41, v41, v14
	v_div_fixup_f32 v19, v61, v41, v19
	v_fma_f32 v76, -v84, v83, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v87, v89, 1.0
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v74, v78, 1.0
	v_mul_f32_e32 v84, v75, v88
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v89, v61, v89
	v_div_scale_f32 v61, s1, v16, v41, v16
	v_fmac_f32_e32 v78, v90, v78
	v_div_scale_f32 v90, null, v41, v41, v10
	v_div_fmas_f32 v76, v76, v86, v83
	v_fma_f32 v83, -v79, v84, v75
	v_mul_f32_e32 v86, v61, v89
	v_div_scale_f32 v92, s2, v15, v41, v15
	v_fma_f32 v93, -v85, v91, 1.0
	v_rcp_f32_e32 v94, v90
	v_fmac_f32_e32 v84, v83, v88
	v_fma_f32 v83, -v87, v86, v61
	v_mul_f32_e32 v95, v92, v78
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s3, v14, v41, v14
	v_div_fixup_f32 v18, v76, v41, v18
	v_fma_f32 v75, -v79, v84, v75
	v_fmac_f32_e32 v86, v83, v89
	v_fma_f32 v76, -v74, v95, v92
	v_mul_f32_e32 v79, v93, v91
	v_fma_f32 v83, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v61, -v87, v86, v61
	v_fmac_f32_e32 v95, v76, v78
	v_fma_f32 v76, -v85, v79, v93
	v_fmac_f32_e32 v94, v83, v94
	v_div_scale_f32 v83, s0, v10, v41, v10
	v_div_fmas_f32 v75, v75, v88, v84
	v_fma_f32 v74, -v74, v95, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v79, v76, v91 :: v_dual_mul_f32 v76, v83, v94
	v_div_scale_f32 v84, null, v41, v41, v7
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v17, v75, v41, v17
	v_div_fmas_f32 v61, v61, v89, v86
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v86, v84
	v_div_fmas_f32 v74, v74, v78, v95
	v_fma_f32 v78, -v85, v79, v93
	v_fma_f32 v85, -v90, v76, v83
	v_div_fixup_f32 v16, v61, v41, v16
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v74, v41, v15
	v_div_scale_f32 v74, null, v41, v41, v6
	v_fmac_f32_e32 v76, v85, v94
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v75, -v84, v86, 1.0
	v_div_fmas_f32 v78, v78, v91, v79
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v88, null, v41, v41, v3
	v_fma_f32 v61, -v90, v76, v83
	v_fmac_f32_e32 v86, v75, v86
	v_div_scale_f32 v75, null, v41, v41, v5
	v_div_fixup_f32 v14, v78, v41, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v61, v61, v94, v76
	v_div_scale_f32 v79, vcc_lo, v7, v41, v7
	v_rcp_f32_e32 v76, v74
	v_rcp_f32_e32 v83, v75
	v_div_fixup_f32 v10, v61, v41, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v79, v86
	v_div_scale_f32 v78, null, v41, v41, v4
	v_rcp_f32_e32 v90, v88
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v71
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v91, -v84, v87, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v85, v78
	v_fma_f32 v61, -v74, v76, 1.0
	v_fma_f32 v89, -v75, v83, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v70, v70
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v87, v91, v86
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v76, v61, v76
	v_div_scale_f32 v61, s0, v6, v41, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v84, v87, v79
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, s1, v5, v41, v5
	v_mul_f32_e32 v93, v61, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v79, v79, v86, v87
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v92, -v78, v85, 1.0
	v_fma_f32 v91, -v74, v93, v61
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v94, -v88, v90, 1.0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v93, v91, v76
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v95, v89, v83
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v86, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v85, v92, v85
	v_fma_f32 v61, -v74, v93, v61
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v30, 15, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v84, -v75, v95, v89
	v_div_scale_f32 v92, s2, v4, v41, v4
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s3, v3, v41, v3
	v_div_fmas_f32 v61, v61, v76, v93
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v95, v84, v83
	v_mul_f32_e32 v96, v92, v85
	v_div_fixup_f32 v6, v61, v41, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v61, v65
	v_rndne_f32_e32 v65, v69
	v_rndne_f32_e32 v69, v73
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v73, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v97, v94, v90
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v84, v32
	v_and_b32_e32 v32, 15, v58
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v75, -v75, v95, v89
	v_fma_f32 v91, -v78, v96, v92
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v74, -v88, v97, v94
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v37, v37, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v75, v75, v83, v95
	v_fmac_f32_e32 v96, v91, v85
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v7, v79, v41, v7
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v5, v75, v41, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v75, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v97, v74, v90
	v_fma_f32 v74, -v78, v96, v92
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v88, v97, v94
	v_div_fmas_f32 v74, v74, v85, v96
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v71, v71, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v76, v76, v90, v97
	v_div_fixup_f32 v4, v74, v41, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v3, v76, v41, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v41, v43
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v47
	v_rndne_f32_e32 v47, v48
	v_rndne_f32_e32 v48, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v63
	v_rndne_f32_e32 v63, v68
	v_rndne_f32_e32 v68, v72
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_cvt_i32_f32_e32 v74, v38
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v66, v66
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v42, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v68, v68
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v92, v24
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v105, v4
	v_and_b32_e32 v4, 15, v43
	v_and_b32_e32 v24, 15, v68
	v_and_b32_e32 v43, 15, v74
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v68, 10, v0
	v_and_b32_e32 v74, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v89, v27
	v_cvt_i32_f32_e32 v90, v26
	v_cvt_i32_f32_e32 v7, v7
	v_and_b32_e32 v26, 15, v71
	v_and_b32_e32 v27, 15, v70
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v70, 0x1800, v68
	v_lshlrev_b32_e32 v71, 6, v74
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v68, 15, v10
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v10, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v18, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v76, v36
	v_cvt_i32_f32_e32 v91, v25
	v_cvt_i32_f32_e32 v93, v23
	v_cvt_i32_f32_e32 v94, v22
	v_cvt_i32_f32_e32 v95, v21
	v_cvt_i32_f32_e32 v96, v20
	v_and_b32_e32 v25, 15, v69
	v_and_b32_e32 v69, 15, v7
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v77, v13
	v_add3_u32 v13, 0, v70, v71
	v_and_or_b32 v10, 0x1b00, v10, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v85, v31
	v_cvt_i32_f32_e32 v87, v29
	v_cvt_i32_f32_e32 v88, v28
	v_cvt_i32_f32_e32 v101, v15
	v_cvt_i32_f32_e32 v102, v14
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v72, v40
	v_cvt_i32_f32_e32 v97, v19
	v_cvt_i32_f32_e32 v99, v17
	v_cvt_i32_f32_e32 v100, v16
	v_cvt_i32_f32_e32 v103, v6
	v_cvt_i32_f32_e32 v104, v5
	v_cvt_i32_f32_e32 v106, v3
	v_and_b32_e32 v3, 15, v41
	v_and_b32_e32 v5, 15, v44
	v_and_b32_e32 v6, 15, v47
	v_and_b32_e32 v14, 15, v48
	v_and_b32_e32 v15, 15, v51
	v_and_b32_e32 v16, 15, v52
	v_and_b32_e32 v17, 15, v55
	v_and_b32_e32 v19, 15, v59
	v_and_b32_e32 v20, 15, v60
	v_and_b32_e32 v21, 15, v61
	v_and_b32_e32 v28, 15, v67
	v_and_b32_e32 v29, 15, v66
	v_and_b32_e32 v39, 15, v45
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v42, 15, v73
	v_and_b32_e32 v44, 15, v75
	v_and_b32_e32 v45, 15, v76
	v_and_b32_e32 v58, 15, v93
	v_and_b32_e32 v59, 15, v94
	v_and_b32_e32 v60, 15, v95
	v_and_b32_e32 v61, 15, v96
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v7, v13, v7, v12
	v_xad_u32 v75, v10, v82, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v78, v35
	v_cvt_i32_f32_e32 v79, v34
	v_cvt_i32_f32_e32 v98, v18
	v_and_b32_e32 v18, 15, v56
	v_and_b32_e32 v22, 15, v63
	v_and_b32_e32 v23, 15, v65
	v_and_b32_e32 v34, 15, v54
	v_and_b32_e32 v35, 15, v53
	v_and_b32_e32 v36, 15, v50
	v_and_b32_e32 v37, 15, v49
	v_and_b32_e32 v50, 15, v85
	v_and_b32_e32 v51, 15, v86
	v_and_b32_e32 v52, 15, v87
	v_and_b32_e32 v53, 15, v88
	v_and_b32_e32 v66, 15, v101
	v_and_b32_e32 v67, 15, v102
	v_cvt_i32_f32_e32 v83, v33
	v_and_b32_e32 v31, 15, v62
	v_and_b32_e32 v33, 15, v57
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v7, v[3:6]
	ds_store_b128 v7, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v75
	ds_load_b128 v[10:13], v75 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[26:29]
	ds_store_b128 v7, v[34:37] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v75
	ds_load_b128 v[26:29], v75 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[42:45]
	ds_store_b128 v7, v[50:53] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v75
	ds_load_b128 v[42:45], v75 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[58:61]
	ds_store_b128 v7, v[66:69] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v75
	ds_load_b128 v[58:61], v75 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[14:17]
	ds_store_b128 v7, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v75
	ds_load_b128 v[22:25], v75 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v38, 15, v46
	v_and_b32_e32 v41, 15, v72
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[30:33]
	ds_store_b128 v7, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v75
	ds_load_b128 v[38:41], v75 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v46, 15, v78
	v_and_b32_e32 v47, 15, v79
	v_and_b32_e32 v48, 15, v83
	v_and_b32_e32 v49, 15, v84
	v_and_b32_e32 v54, 15, v89
	v_and_b32_e32 v55, 15, v90
	v_and_b32_e32 v56, 15, v91
	v_and_b32_e32 v57, 15, v92
	v_and_b32_e32 v62, 15, v97
	v_and_b32_e32 v63, 15, v98
	v_and_b32_e32 v64, 15, v99
	v_and_b32_e32 v65, 15, v100
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[46:49]
	ds_store_b128 v7, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v75
	ds_load_b128 v[54:57], v75 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v70, 15, v103
	v_and_b32_e32 v71, 15, v104
	v_and_b32_e32 v72, 15, v105
	v_and_b32_e32 v73, 15, v106
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_barrier
	ds_store_b128 v7, v[62:65]
	ds_store_b128 v7, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v75
	ds_load_b128 v[66:69], v75 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v10, 4, v3
	v_lshl_or_b32 v3, v11, 4, v4
	v_lshl_or_b32 v4, v12, 4, v5
	v_lshl_or_b32 v5, v13, 4, v6
	v_lshl_or_b32 v6, v22, 4, v14
	v_lshl_or_b32 v10, v23, 4, v15
	v_lshl_or_b32 v11, v24, 4, v16
	v_lshl_or_b32 v12, v25, 4, v17
	v_lshl_or_b32 v22, v43, 4, v35
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v35, 3, v81
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v23, v44, 4, v36
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v36, s0, v80
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s30, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s31, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v26, 4, v18
	v_lshl_or_b32 v14, v27, 4, v19
	v_lshl_or_b32 v15, v28, 4, v20
	v_lshl_or_b32 v16, v29, 4, v21
	v_lshl_or_b32 v17, v38, 4, v30
	v_lshl_or_b32 v18, v39, 4, v31
	v_lshl_or_b32 v19, v40, 4, v32
	v_lshl_or_b32 v20, v41, 4, v33
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v35
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v3.l, 8, v3.l
	v_and_b16 v3.h, 0xff, v7.l
	v_lshlrev_b16 v4.l, 8, v12.l
	v_and_b16 v4.h, 0xff, v11.l
	v_lshlrev_b16 v5.l, 8, v10.l
	v_and_b16 v5.h, 0xff, v6.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v21, v42, 4, v34
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v40, v38, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v6.h, v2.l, v1.l
	v_or_b16 v6.l, v3.h, v3.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v2.l, 0xff, v15.l
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v3.h, 0xff, v13.l
	v_lshlrev_b16 v4.l, 8, v20.l
	v_and_b16 v4.h, 0xff, v19.l
	v_lshlrev_b16 v5.l, 8, v18.l
	v_and_b16 v5.h, 0xff, v17.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	v_add3_u32 v41, v36, s1, v38
	v_add3_u32 v42, v36, s2, v38
	v_add3_u32 v36, v36, s0, v38
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s1, s21, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s20
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v25, v54, 4, v46
	v_lshl_or_b32 v26, v55, 4, v47
	v_lshl_or_b32 v29, v58, 4, v50
	v_lshl_or_b32 v30, v59, 4, v51
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[6:7], v40, s[0:3], 0 offen
	v_or_b16 v6.h, v2.l, v1.l
	v_or_b16 v6.l, v3.h, v3.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v3.h, 0xff, v21.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v24, v45, 4, v37
	v_lshl_or_b32 v27, v56, 4, v48
	v_lshl_or_b32 v28, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v33, v66, 4, v62
	v_lshl_or_b32 v34, v67, 4, v63
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v5.l, 8, v26.l
	v_and_b16 v5.h, 0xff, v25.l
	buffer_store_b64 v[6:7], v41, s[0:3], 0 offen
	v_or_b16 v6.l, v3.h, v3.l
	v_lshlrev_b16 v3.l, 8, v30.l
	v_and_b16 v3.h, 0xff, v29.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v31, v60, 4, v52
	v_lshl_or_b32 v32, v61, 4, v53
	v_lshl_or_b32 v37, v68, 4, v64
	v_lshl_or_b32 v39, v69, 4, v65
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	v_or_b16 v10.l, v3.h, v3.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v3, 2, v74
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v6.h, v2.l, v1.l
	v_or_b16 v7.h, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v4.l, 8, v39.l
	v_and_b16 v4.h, 0xff, v37.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 2, v80
	v_add_nc_u32_e32 v3, 0, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v4, 0, v35
	v_mov_b16_e32 v2.l, v9.h
	v_mov_b16_e32 v1.l, v8.h
	v_add3_u32 v3, v3, v5, v35
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[6:7], v42, s[0:3], 0 offen
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v6, v0, 63, s31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[10:11], v36, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s4, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v3
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v6, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s1, s23, 0xffff
	s_mov_b32 s0, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s30, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp65:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp66:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 241
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 179
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21680
; TotalNumSgprs: 36
; NumVgprs: 179
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 241
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x9b DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x75 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x75:0x2f DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp25                         ; DW_AT_low_pc
	.long	.Ltmp65-.Ltmp25                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x8a:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x96:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
.Ldebug_ranges4:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     179
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
