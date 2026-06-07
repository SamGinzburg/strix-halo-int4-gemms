	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0xff
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s18, 63
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s8, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s5, s5, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s9
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp10:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s7, s10
	s_abs_i32 s10, s2
	s_add_i32 s7, s7, s9
	s_xor_b32 s9, s2, s5
	s_mul_hi_u32 s7, s10, s7
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s10, s6
	s_cmp_ge_u32 s10, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s10, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s9
	s_sub_i32 s6, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s7, s6, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s6, s6, s5
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s8, s8, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s6
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s8, s8, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s2
	s_abs_i32 s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s9
	s_sub_i32 s11, 0, s9
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s5, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s5
	s_mul_hi_u32 s5, s6, s10
	s_xor_b32 s10, s2, s8
	s_mul_i32 s11, s5, s9
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s5, 1
	s_sub_i32 s12, s6, s9
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s5, s11, s5
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s5, 1
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s5, s11, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s6, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s6, s8
	s_mov_b32 s8, 0
	s_sub_i32 s2, s2, s5
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s4, 63
.Ltmp12:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s7, s2, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s2, s19, 4
	s_lshl_b32 s30, s19, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s8, -1
                                        ; implicit-def: $sgpr2
                                        ; implicit-def: $sgpr30
.LBB0_3:                                ; %Flow
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v78, 15, v0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v77, 0xf0, v0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	s_lshl_b32 s29, s7, 6
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_lshl_b32 s28, s6, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp13:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s4, 31
.Ltmp14:
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v1, 4, v77
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s5, 31
.Ltmp16:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s4, s1, 31
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s4, s4, 27
.Ltmp19:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v2, 3, v0
	v_mul_lo_u32 v1, s19, v1
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s5, s0
.Ltmp21:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s4
	s_mov_b32 s4, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_mul_lo_u32 v2, s18, v2
	v_lshl_add_u32 v86, v78, 4, v1
	v_lshrrev_b32_e32 v1, 1, v0
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s1, s1, 5
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
.Ltmp24:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v3, 3, v0
	v_and_or_b32 v1, 0x70, v1, v78
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	v_or_b32_e32 v5, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 56, v3
	v_add_nc_u32_e32 v107, 0, v1
	v_add_nc_u32_e32 v97, 0, v3
	v_dual_mov_b32 v150, 0 :: v_dual_and_b32 v9, 28, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v89, v2, v4, s29
	v_or_b32_e32 v2, s29, v78
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v156, 0
	v_or_b32_e32 v4, 0x3f0, v0
	s_lshl_b32 s2, s19, 4
	v_or_b32_e32 v6, 16, v2
	v_or_b32_e32 v7, 32, v2
	v_or_b32_e32 v1, 48, v2
	v_mul_lo_u32 v110, v2, s1
	v_lshrrev_b32_e32 v2, 6, v0
	v_mul_lo_u32 v111, v6, s1
	v_mul_lo_u32 v112, v7, s1
	v_mul_lo_u32 v123, v1, s1
	v_lshlrev_b32_e32 v1, 2, v0
	v_lshlrev_b32_e32 v6, 5, v0
	v_and_b32_e32 v2, 2, v2
	v_lshlrev_b32_e32 v7, 1, v77
	v_mov_b32_e32 v157, 0
	v_dual_mov_b32 v154, 0 :: v_dual_and_b32 v1, 0x1c0, v1
	v_and_b32_e32 v6, 32, v6
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v2, 0, v2
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v129, 0, v7
	v_add_nc_u32_e32 v102, 0, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v2, v1, v6
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v143, v97, v3
	v_add3_u32 v11, v129, v7, v6
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v144, 0, v4
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v151, 0, v5
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v4, s7 :: v_dual_add_nc_u32 v91, s2, v86
	v_or_b32_e32 v131, s28, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_add_u32 v136, s18, 5, v89
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v159, v10, v9
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v160, v11, v9
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v80, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s30, s19, 5
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
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s5, s5, 6
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s6, s5, s18
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s7, s5, s19
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add_nc_u32_e32 v9, s6, v89
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s7, s7, s28
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s5, s5, 5
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v13, s7, v91
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[17:18], v9, s[20:23], 0 offen
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v9, s7, v86
	s_add_i32 s7, s7, s30
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v97, v[17:18] offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v143, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v143, v[13:16] offset:4096
	v_add_nc_u32_e32 v9, s6, v136
	.loc	1 322 34 is_stmt 0              ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v13, s7, v91
	.loc	1 334 40 is_stmt 1              ; generate_amdgcn.py:334:40
	s_mul_i32 s6, s5, s19
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[17:18], v9, s[20:23], 0 offen
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v9, s7, v86
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 316 26 is_stmt 1              ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v97, v[17:18] offset:18432
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v143, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v143, v[13:16] offset:12288
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v17, v102 offset:18240
	ds_load_u8 v18, v102 offset:18176
	ds_load_u8 v9, v102 offset:17216
	ds_load_u8 v10, v102 offset:17152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:18368
	ds_load_u8 v19, v102 offset:18304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:17344
	ds_load_u8 v11, v102 offset:17280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v102 offset:17984
	ds_load_u8 v18, v102 offset:17920
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v102 offset:16960
	ds_load_u8 v10, v102 offset:16896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:18112
	ds_load_u8 v19, v102 offset:18048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:17088
	ds_load_u8 v11, v102 offset:17024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v102 offset:17728
	ds_load_u8 v18, v102 offset:17664
	v_lshl_or_b32 v27, v10, 16, v9
	ds_load_u8 v9, v102 offset:16704
	ds_load_u8 v10, v102 offset:16640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:17856
	ds_load_u8 v19, v102 offset:17792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:16832
	ds_load_u8 v11, v102 offset:16768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v102 offset:17472
	ds_load_u8 v18, v102 offset:17408
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v102 offset:16448
	ds_load_u8 v10, v102 offset:16384
	ds_load_u8 v33, v102 offset:16400
	ds_load_u8 v49, v102 offset:16416
	ds_load_u8 v165, v102 offset:16432
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:17600
	ds_load_u8 v19, v102 offset:17536
	ds_load_u8 v10, v102 offset:16576
	ds_load_u8 v11, v102 offset:16512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v107 offset:7424
	ds_load_u8 v18, v107 offset:7168
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v107 offset:3328
	ds_load_u8 v10, v107 offset:3072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:7936
	ds_load_u8 v19, v107 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v107 offset:3840
	ds_load_u8 v11, v107 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v72, v18, 16, v17
	ds_load_u8 v17, v107 offset:6400
	ds_load_u8 v18, v107 offset:6144
	v_lshl_or_b32 v68, v10, 16, v9
	ds_load_u8 v9, v107 offset:2304
	ds_load_u8 v10, v107 offset:2048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:6912
	ds_load_u8 v19, v107 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v107 offset:2816
	ds_load_u8 v11, v107 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v71, v18, 16, v17
	ds_load_u8 v17, v107 offset:5376
	ds_load_u8 v18, v107 offset:5120
	v_lshl_or_b32 v67, v10, 16, v9
	ds_load_u8 v9, v107 offset:1280
	ds_load_u8 v10, v107 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:5888
	ds_load_u8 v19, v107 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v107 offset:1792
	ds_load_u8 v11, v107 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v70, v18, 16, v17
	ds_load_u8 v17, v107 offset:4352
	ds_load_u8 v18, v107 offset:4096
	v_lshl_or_b32 v66, v10, 16, v9
	ds_load_u8 v9, v107 offset:256
	ds_load_u8 v10, v107
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:4864
	ds_load_u8 v19, v107 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v107 offset:768
	ds_load_u8 v11, v107 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v18, 16, v17
	ds_load_u8 v17, v107 offset:3456
	ds_load_u8 v18, v107 offset:3200
	v_lshl_or_b32 v65, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:3968
	ds_load_u8 v19, v107 offset:3712
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v18, 16, v17
	ds_load_u8 v17, v107 offset:2432
	ds_load_u8 v18, v107 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:2944
	ds_load_u8 v19, v107 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v18, 16, v17
	ds_load_u8 v17, v107 offset:1408
	ds_load_u8 v18, v107 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:1920
	ds_load_u8 v19, v107 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v18, 16, v17
	ds_load_u8 v17, v107 offset:384
	ds_load_u8 v18, v107 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:896
	ds_load_u8 v19, v107 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v107 offset:7552
	ds_load_u8 v26, v107 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v107 offset:8064
	ds_load_u8 v27, v107 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v26, 16, v25
	ds_load_u8 v25, v107 offset:6528
	ds_load_u8 v26, v107 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v107 offset:7040
	ds_load_u8 v27, v107 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v26, 16, v25
	ds_load_u8 v25, v107 offset:5504
	ds_load_u8 v26, v107 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v107 offset:6016
	ds_load_u8 v27, v107 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v26, 16, v25
	ds_load_u8 v25, v107 offset:4480
	ds_load_u8 v26, v107 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v107 offset:4992
	ds_load_u8 v27, v107 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v161, v26, 16, v25
	ds_load_u8 v25, v102 offset:17232
	ds_load_u8 v26, v102 offset:17168
	v_wmma_i32_16x16x16_iu8 v[17:24], v[161:164], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v102 offset:17360
	ds_load_u8 v27, v102 offset:17296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v102 offset:16976
	ds_load_u8 v26, v102 offset:16912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v102 offset:17104
	ds_load_u8 v27, v102 offset:17040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v102 offset:16720
	ds_load_u8 v26, v102 offset:16656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v102 offset:16848
	ds_load_u8 v27, v102 offset:16784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v102 offset:16464
	ds_load_u8 v26, v102 offset:16592
	ds_load_u8 v27, v102 offset:16528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v102 offset:18256
	ds_load_u8 v34, v102 offset:18192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v102 offset:18384
	ds_load_u8 v35, v102 offset:18320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v102 offset:18000
	ds_load_u8 v34, v102 offset:17936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v102 offset:18128
	ds_load_u8 v35, v102 offset:18064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v102 offset:17744
	ds_load_u8 v34, v102 offset:17680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v102 offset:17872
	ds_load_u8 v35, v102 offset:17808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v102 offset:17488
	ds_load_u8 v34, v102 offset:17424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v102 offset:17616
	ds_load_u8 v35, v102 offset:17552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v102 offset:17248
	ds_load_u8 v42, v102 offset:17184
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[45:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[161:164], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v102 offset:17376
	ds_load_u8 v43, v102 offset:17312
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v102 offset:16992
	ds_load_u8 v42, v102 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v102 offset:17120
	ds_load_u8 v43, v102 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v42, 16, v41
	ds_load_u8 v41, v102 offset:16736
	ds_load_u8 v42, v102 offset:16672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v102 offset:16864
	ds_load_u8 v43, v102 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v102 offset:16480
	ds_load_u8 v42, v102 offset:16608
	ds_load_u8 v43, v102 offset:16544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v49, v41, 0xc0c0004
	ds_load_u8 v49, v102 offset:18272
	ds_load_u8 v50, v102 offset:18208
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v102 offset:18400
	ds_load_u8 v51, v102 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v50, 16, v49
	ds_load_u8 v49, v102 offset:18016
	ds_load_u8 v50, v102 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v102 offset:18144
	ds_load_u8 v51, v102 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v50, 16, v49
	ds_load_u8 v49, v102 offset:17760
	ds_load_u8 v50, v102 offset:17696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v102 offset:17888
	ds_load_u8 v51, v102 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v50, 16, v49
	ds_load_u8 v49, v102 offset:17504
	ds_load_u8 v50, v102 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v102 offset:17632
	ds_load_u8 v51, v102 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[57:60], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v102 offset:17008
	ds_load_u8 v58, v102 offset:16944
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[61:64], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[161:164], v[61:64], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v102 offset:17136
	ds_load_u8 v59, v102 offset:17072
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v58, 16, v57
	ds_load_u8 v57, v102 offset:16752
	ds_load_u8 v58, v102 offset:16688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v102 offset:16880
	ds_load_u8 v59, v102 offset:16816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v58, 16, v57
	ds_load_u8 v57, v102 offset:16496
	ds_load_u8 v58, v102 offset:16624
	ds_load_u8 v59, v102 offset:16560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v165, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v58, 16, v57
	ds_load_u8 v57, v102 offset:17264
	ds_load_u8 v58, v102 offset:17200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v144 offset:16384
	ds_load_u8 v59, v102 offset:17328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v168, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[165:168], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v65, v102 offset:18032
	ds_load_u8 v66, v102 offset:17968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v102 offset:18160
	ds_load_u8 v67, v102 offset:18096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v66, 16, v65
	ds_load_u8 v65, v102 offset:17776
	ds_load_u8 v66, v102 offset:17712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v102 offset:17904
	ds_load_u8 v67, v102 offset:17840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v66, 16, v65
	ds_load_u8 v65, v102 offset:17520
	ds_load_u8 v66, v102 offset:17456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v102 offset:17648
	ds_load_u8 v67, v102 offset:17584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v66, 16, v65
	ds_load_u8 v65, v102 offset:18288
	ds_load_u8 v66, v102 offset:18224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v151 offset:16384
	ds_load_u8 v67, v102 offset:18352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v172, v66, 16, v65
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[169:172], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[73:76], v[165:168], v[1:8] neg_lo:[1,1,0]
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v73, v110, s5, 1
	v_add_lshl_u32 v74, v111, s5, 1
	v_add_lshl_u32 v75, v112, s5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[65:72], v[161:164], v[169:172], v[65:72] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	buffer_load_u16 v74, v74, s[8:11], 0 offen
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v161, v75, s[8:11], 0 offen
	v_add_lshl_u32 v75, v123, s5, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v162, v75, s[8:11], 0 offen
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_or_b32 s5, s5, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s5, s1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v76, 16, v73
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v20, v20, v76 :: v_dual_lshlrev_b32 v75, 16, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v17, v17, v76 :: v_dual_mul_f32 v36, v36, v75
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v74, 16, v161
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v161, v131, s6, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v18, v18, v76
	v_dual_mul_f32 v19, v19, v76 :: v_dual_mul_f32 v38, v38, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v22, v22, v76 :: v_dual_cndmask_b32 v161, 0x80000000, v161
	v_mul_f32_e32 v10, v10, v76
	v_mul_f32_e32 v14, v14, v76
	v_dual_mul_f32 v23, v23, v76 :: v_dual_mul_f32 v50, v50, v74
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v161, v161, s[12:15], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v73, 16, v162
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v41, v41, v74
	v_mul_f32_e32 v51, v51, v74
	v_mul_f32_e32 v39, v39, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v47, v47, v74 :: v_dual_mul_f32 v66, v66, v73
	v_mul_f32_e32 v60, v60, v73
	v_mul_f32_e32 v70, v70, v73
	v_mul_f32_e32 v58, v58, v73
	v_mul_f32_e32 v26, v26, v75
	v_dual_mul_f32 v33, v33, v75 :: v_dual_mul_f32 v52, v52, v74
	v_mul_f32_e32 v16, v16, v76
	v_dual_mul_f32 v21, v21, v76 :: v_dual_mul_f32 v40, v40, v75
	v_dual_mul_f32 v37, v37, v75 :: v_dual_mul_f32 v56, v56, v74
	v_dual_mul_f32 v43, v43, v74 :: v_dual_mul_f32 v62, v62, v73
	v_dual_mul_f32 v45, v45, v74 :: v_dual_mul_f32 v64, v64, v73
	v_dual_mul_f32 v49, v49, v74 :: v_dual_mul_f32 v68, v68, v73
	v_dual_mul_f32 v53, v53, v74 :: v_dual_mul_f32 v72, v72, v73
	v_dual_mul_f32 v35, v35, v75 :: v_dual_mul_f32 v54, v54, v74
	v_mul_f32_e32 v12, v12, v76
	v_dual_mul_f32 v15, v15, v76 :: v_dual_mul_f32 v34, v34, v75
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v11, v11, v76
	v_dual_mul_f32 v24, v24, v76 :: v_dual_mul_f32 v25, v25, v75
	v_mul_f32_e32 v30, v30, v75
	v_mul_f32_e32 v42, v42, v74
	v_mul_f32_e32 v46, v46, v74
	v_mul_f32_e32 v32, v32, v75
	v_mul_f32_e32 v27, v27, v75
	v_mul_f32_e32 v13, v13, v76
	v_mul_f32_e32 v31, v31, v75
	v_mul_f32_e32 v28, v28, v75
	v_dual_mul_f32 v44, v44, v74 :: v_dual_mul_f32 v9, v9, v76
	v_dual_mul_f32 v29, v29, v75 :: v_dual_mul_f32 v48, v48, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s4, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v159, v161 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[161:164], v129 offset:20480
	ds_load_b128 v[165:168], v129 offset:20496
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v169, 16, v161
	v_lshlrev_b32_e32 v170, 16, v162
	v_lshlrev_b32_e32 v171, 16, v163
	v_and_b32_e32 v161, 0xffff0000, v161
	v_and_b32_e32 v162, 0xffff0000, v162
	v_lshlrev_b32_e32 v172, 16, v164
	v_and_b32_e32 v163, 0xffff0000, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v157, v11, v171 :: v_dual_fmac_f32 v150, v17, v161
	v_dual_fmac_f32 v149, v18, v162 :: v_dual_fmac_f32 v140, v25, v169
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v17, v102 offset:20288
	ds_load_u8 v18, v102 offset:20224
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v65, v65, v73 :: v_dual_fmac_f32 v148, v19, v163
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v173, 16, v165
	v_lshlrev_b32_e32 v176, 16, v168
	v_and_b32_e32 v165, 0xffff0000, v165
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v63, v63, v73 :: v_dual_lshlrev_b32 v174, 16, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v130, v32, v176 :: v_dual_lshlrev_b32 v175, 16, v167
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_and_b32_e32 v166, 0xffff0000, v166
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v155, v13, v173 :: v_dual_and_b32 v168, 0xffff0000, v168
	v_dual_fmac_f32 v132, v31, v175 :: v_dual_fmac_f32 v133, v30, v174
	v_fmac_f32_e32 v116, v44, v172
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v164, 0xffff0000, v164
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v134, v29, v173
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v57, v57, v73 :: v_dual_fmac_f32 v158, v10, v170
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:20416
	ds_load_u8 v19, v102 offset:20352
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v147, v20, v164
	v_dual_fmac_f32 v137, v9, v169 :: v_dual_fmac_f32 v138, v27, v171
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v102 offset:19264
	ds_load_u8 v10, v102 offset:19200
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v105, v51, v163 :: v_dual_fmac_f32 v94, v60, v172
	v_dual_fmac_f32 v135, v28, v172 :: v_dual_fmac_f32 v118, v42, v170
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v167, 0xffff0000, v167
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v59, v59, v73 :: v_dual_fmac_f32 v154, v14, v174
	v_mul_f32_e32 v69, v69, v73
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v113, v47, v175 :: v_dual_fmac_f32 v96, v58, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v142, v23, v167
	v_dual_fmac_f32 v95, v59, v171 :: v_dual_fmac_f32 v82, v69, v165
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v61, v61, v73 :: v_dual_fmac_f32 v152, v16, v176
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v67, v67, v73 :: v_dual_fmac_f32 v122, v38, v166
	v_dual_mul_f32 v71, v71, v73 :: v_dual_fmac_f32 v120, v40, v168
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v102 offset:20032
	ds_load_u8 v18, v102 offset:19968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:19392
	ds_load_u8 v11, v102 offset:19328
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v145, v22, v166 :: v_dual_fmac_f32 v128, v33, v161
	v_dual_fmac_f32 v139, v26, v170 :: v_dual_fmac_f32 v124, v37, v165
	v_dual_fmac_f32 v119, v41, v169 :: v_dual_fmac_f32 v104, v52, v164
	v_dual_fmac_f32 v117, v43, v171 :: v_dual_fmac_f32 v98, v57, v169
	v_dual_fmac_f32 v101, v54, v166 :: v_dual_fmac_f32 v88, v64, v176
	v_fmac_f32_e32 v79, v72, v168
	v_dual_fmac_f32 v103, v53, v165 :: v_dual_fmac_f32 v90, v63, v175
	v_dual_fmac_f32 v93, v61, v173 :: v_dual_fmac_f32 v80, v71, v167
	v_dual_fmac_f32 v109, v48, v176 :: v_dual_fmac_f32 v92, v62, v174
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:20160
	ds_load_u8 v19, v102 offset:20096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v81, v70, v166
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v55, v55, v74 :: v_dual_fmac_f32 v156, v12, v172
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v153, v15, v175 :: v_dual_fmac_f32 v146, v21, v165
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v102 offset:19008
	ds_load_u8 v10, v102 offset:18944
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v141, v24, v168 :: v_dual_fmac_f32 v126, v35, v163
	v_fmac_f32_e32 v83, v68, v164
	v_dual_fmac_f32 v99, v56, v168 :: v_dual_fmac_f32 v84, v67, v163
	v_fmac_f32_e32 v85, v66, v162
	v_fmac_f32_e32 v87, v65, v161
	v_dual_fmac_f32 v115, v45, v173 :: v_dual_fmac_f32 v100, v55, v167
	v_dual_fmac_f32 v127, v34, v162 :: v_dual_fmac_f32 v108, v49, v161
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v125, v36, v164 :: v_dual_fmac_f32 v114, v46, v174
	v_dual_fmac_f32 v121, v39, v167 :: v_dual_fmac_f32 v106, v50, v162
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v102 offset:19776
	ds_load_u8 v18, v102 offset:19712
	ds_load_u8 v74, v102 offset:19056
	ds_load_u8 v75, v102 offset:18992
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:19136
	ds_load_u8 v11, v102 offset:19072
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:19904
	ds_load_u8 v19, v102 offset:19840
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v75, v102 offset:19184
	ds_load_u8 v76, v102 offset:19120
	v_lshl_or_b32 v27, v10, 16, v9
	ds_load_u8 v9, v102 offset:18752
	ds_load_u8 v10, v102 offset:18688
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v102 offset:19520
	ds_load_u8 v18, v102 offset:19456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:18880
	ds_load_u8 v11, v102 offset:18816
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v102 offset:18800
	ds_load_u8 v76, v102 offset:18736
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v102 offset:19648
	ds_load_u8 v19, v102 offset:19584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v76, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v102 offset:18496
	ds_load_u8 v10, v102 offset:18432
	ds_load_u8 v33, v102 offset:18448
	ds_load_u8 v41, v102 offset:18464
	ds_load_u8 v73, v102 offset:18480
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v107 offset:15616
	ds_load_u8 v18, v107 offset:15360
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v102 offset:18624
	ds_load_u8 v11, v102 offset:18560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:16128
	ds_load_u8 v19, v107 offset:15872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v107 offset:11520
	ds_load_u8 v10, v107 offset:11264
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v60, v18, 16, v17
	ds_load_u8 v17, v107 offset:14592
	ds_load_u8 v18, v107 offset:14336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v107 offset:12032
	ds_load_u8 v11, v107 offset:11776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:15104
	ds_load_u8 v19, v107 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v72, v10, 16, v9
	ds_load_u8 v9, v107 offset:10496
	ds_load_u8 v10, v107 offset:10240
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v59, v18, 16, v17
	ds_load_u8 v17, v107 offset:13568
	ds_load_u8 v18, v107 offset:13312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v107 offset:11008
	ds_load_u8 v11, v107 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:14080
	ds_load_u8 v19, v107 offset:13824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v10, 16, v9
	ds_load_u8 v9, v107 offset:9472
	ds_load_u8 v10, v107 offset:9216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v58, v18, 16, v17
	ds_load_u8 v17, v107 offset:12544
	ds_load_u8 v18, v107 offset:12288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v107 offset:9984
	ds_load_u8 v11, v107 offset:9728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:13056
	ds_load_u8 v19, v107 offset:12800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v70, v10, 16, v9
	ds_load_u8 v9, v107 offset:8448
	ds_load_u8 v10, v107 offset:8192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v57, v18, 16, v17
	ds_load_u8 v17, v107 offset:11648
	ds_load_u8 v18, v107 offset:11392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v107 offset:8960
	ds_load_u8 v11, v107 offset:8704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:12160
	ds_load_u8 v19, v107 offset:11904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[57:60], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_lshl_or_b32 v64, v18, 16, v17
	ds_load_u8 v17, v107 offset:10624
	ds_load_u8 v18, v107 offset:10368
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:11136
	ds_load_u8 v19, v107 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v18, 16, v17
	ds_load_u8 v17, v107 offset:9600
	ds_load_u8 v18, v107 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:10112
	ds_load_u8 v19, v107 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v18, 16, v17
	ds_load_u8 v17, v107 offset:8576
	ds_load_u8 v18, v107 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:9088
	ds_load_u8 v19, v107 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v107 offset:15744
	ds_load_u8 v26, v107 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v107 offset:16256
	ds_load_u8 v27, v107 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v26, 16, v25
	ds_load_u8 v25, v107 offset:14720
	ds_load_u8 v26, v107 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v107 offset:15232
	ds_load_u8 v27, v107 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v26, 16, v25
	ds_load_u8 v25, v107 offset:13696
	ds_load_u8 v26, v107 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v107 offset:14208
	ds_load_u8 v27, v107 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v26, 16, v25
	ds_load_u8 v25, v107 offset:12672
	ds_load_u8 v26, v107 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v107 offset:13184
	ds_load_u8 v27, v107 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v26, 16, v25
	ds_load_u8 v25, v102 offset:19280
	ds_load_u8 v26, v102 offset:19216
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v102 offset:19408
	ds_load_u8 v27, v102 offset:19344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	ds_load_u8 v25, v102 offset:19024
	ds_load_u8 v26, v102 offset:18960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v102 offset:19152
	ds_load_u8 v27, v102 offset:19088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v102 offset:18768
	ds_load_u8 v26, v102 offset:18704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v102 offset:18896
	ds_load_u8 v27, v102 offset:18832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v102 offset:18512
	ds_load_u8 v26, v102 offset:18640
	ds_load_u8 v27, v102 offset:18576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v102 offset:20304
	ds_load_u8 v34, v102 offset:20240
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[42:45], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v102 offset:20432
	ds_load_u8 v35, v102 offset:20368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v102 offset:20048
	ds_load_u8 v34, v102 offset:19984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v102 offset:20176
	ds_load_u8 v35, v102 offset:20112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v102 offset:19792
	ds_load_u8 v34, v102 offset:19728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v102 offset:19920
	ds_load_u8 v35, v102 offset:19856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v102 offset:19536
	ds_load_u8 v34, v102 offset:19472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v102 offset:19664
	ds_load_u8 v35, v102 offset:19600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[42:45], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v42, v102 offset:19296
	ds_load_u8 v43, v102 offset:19232
	v_wmma_i32_16x16x16_iu8 v[25:32], v[57:60], v[46:49], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[46:49], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v102 offset:20320
	ds_load_u8 v50, v102 offset:20256
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v102 offset:19424
	ds_load_u8 v44, v102 offset:19360
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v102 offset:20448
	ds_load_u8 v51, v102 offset:20384
	v_cvt_f32_i32_e32 v39, v39
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v164, v43, 16, v42
	ds_load_u8 v42, v102 offset:19040
	ds_load_u8 v43, v102 offset:18976
	v_lshl_or_b32 v168, v50, 16, v49
	ds_load_u8 v49, v102 offset:20064
	ds_load_u8 v50, v102 offset:20000
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v102 offset:19168
	ds_load_u8 v44, v102 offset:19104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v102 offset:20192
	ds_load_u8 v51, v102 offset:20128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v163, v43, 16, v42
	ds_load_u8 v42, v102 offset:18784
	ds_load_u8 v43, v102 offset:18720
	v_lshl_or_b32 v167, v50, 16, v49
	ds_load_u8 v49, v102 offset:19808
	ds_load_u8 v50, v102 offset:19744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v102 offset:18912
	ds_load_u8 v44, v102 offset:18848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v102 offset:19936
	ds_load_u8 v51, v102 offset:19872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v162, v43, 16, v42
	ds_load_u8 v42, v102 offset:18528
	v_lshl_or_b32 v166, v50, 16, v49
	ds_load_u8 v49, v102 offset:19552
	ds_load_u8 v50, v102 offset:19488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v102 offset:18656
	ds_load_u8 v43, v102 offset:18592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v102 offset:19680
	ds_load_u8 v51, v102 offset:19616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v161, v42, 16, v41
	v_lshl_or_b32 v165, v50, 16, v49
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[161:164], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[61:64], v[161:164], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v76, v102 offset:18928
	ds_load_u8 v161, v102 offset:18864
	v_wmma_i32_16x16x16_iu8 v[41:48], v[57:60], v[165:168], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[165:168], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v161, v76, 0xc0c0004
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v74, v76, 16, v74
	ds_load_u8 v76, v102 offset:18544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v76, 0xc0c0004
	ds_load_u8 v76, v102 offset:18672
	ds_load_u8 v161, v102 offset:18608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v161, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v76, 16, v73
	ds_load_u8 v76, v102 offset:19312
	ds_load_u8 v161, v102 offset:19248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v161, v76, 0xc0c0004
	ds_load_u8 v161, v144 offset:18432
	ds_load_u8 v162, v102 offset:19376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v161, 16, v76
	v_wmma_i32_16x16x16_iu8 v[161:168], v[69:72], v[73:76], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v69, v102 offset:20080
	ds_load_u8 v70, v102 offset:20016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v102 offset:20208
	ds_load_u8 v71, v102 offset:20144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v70, 16, v69
	ds_load_u8 v69, v102 offset:19824
	ds_load_u8 v70, v102 offset:19760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v102 offset:19952
	ds_load_u8 v72, v102 offset:19888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v72, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v102 offset:19568
	ds_load_u8 v72, v102 offset:19504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v72, v69, 0xc0c0004
	ds_load_u8 v72, v102 offset:19696
	ds_load_u8 v169, v102 offset:19632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v169, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v72, 16, v69
	ds_load_u8 v72, v102 offset:20336
	ds_load_u8 v169, v102 offset:20272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v169, v72, 0xc0c0004
	ds_load_u8 v169, v151 offset:18432
	ds_load_u8 v170, v102 offset:20400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v72, v169, 16, v72
	v_wmma_i32_16x16x16_iu8 v[169:176], v[61:64], v[73:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v73, v110, s5, 1
	v_add_lshl_u32 v74, v111, s5, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[161:168], v[57:60], v[69:72], v[161:168] neg_lo:[1,1,0]
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v75, v112, s5, 1
	v_add_lshl_u32 v76, v123, s5, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s5, s5, s19
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v57, v161
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	s_clause 0x1
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	buffer_load_u16 v74, v74, s[8:11], 0 offen
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v161, v131, s5, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v75, v75, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[169:176], v[65:68], v[69:72], v[169:176] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v58, v162
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v76, v76, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v59, v163
	v_cvt_f32_i32_e32 v60, v164
	v_cvt_f32_i32_e32 v61, v165
	v_cvt_f32_i32_e32 v62, v166
	v_cvt_f32_i32_e32 v63, v167
	v_cvt_f32_i32_e32 v64, v168
	v_cvt_f32_i32_e32 v65, v169
	v_cvt_f32_i32_e32 v66, v170
	v_cvt_f32_i32_e32 v67, v171
	v_cvt_f32_i32_e32 v68, v172
	v_cvt_f32_i32_e32 v69, v173
	v_cvt_f32_i32_e32 v70, v174
	v_cvt_f32_i32_e32 v71, v175
	v_cvt_f32_i32_e32 v72, v176
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v161, 0x80000000, v161 :: v_dual_lshlrev_b32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v28, v28, v74 :: v_dual_lshlrev_b32 v73, 16, v73
	v_mul_f32_e32 v30, v30, v74
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v161, v161, s[12:15], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v166, v13, v73 :: v_dual_lshlrev_b32 v75, 16, v75
	v_mul_f32_e32 v162, v9, v73
	v_dual_mul_f32 v163, v10, v73 :: v_dual_mul_f32 v36, v36, v74
	v_mul_f32_e32 v164, v11, v73
	v_dual_mul_f32 v165, v12, v73 :: v_dual_mul_f32 v34, v34, v74
	v_dual_mul_f32 v167, v14, v73 :: v_dual_mul_f32 v40, v40, v74
	v_dual_mul_f32 v168, v15, v73 :: v_dual_mul_f32 v25, v25, v74
	v_dual_mul_f32 v169, v16, v73 :: v_dual_mul_f32 v38, v38, v74
	v_dual_mul_f32 v170, v17, v73 :: v_dual_mul_f32 v27, v27, v74
	v_dual_mul_f32 v171, v18, v73 :: v_dual_mul_f32 v44, v44, v75
	v_dual_mul_f32 v172, v19, v73 :: v_dual_mul_f32 v29, v29, v74
	v_dual_mul_f32 v173, v20, v73 :: v_dual_mul_f32 v42, v42, v75
	v_dual_mul_f32 v174, v21, v73 :: v_dual_mul_f32 v31, v31, v74
	v_dual_mul_f32 v175, v22, v73 :: v_dual_mul_f32 v48, v48, v75
	v_dual_mul_f32 v176, v23, v73 :: v_dual_mul_f32 v33, v33, v74
	v_dual_mul_f32 v73, v24, v73 :: v_dual_mul_f32 v46, v46, v75
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v26, v74
	v_dual_mul_f32 v35, v35, v74 :: v_dual_mul_f32 v50, v50, v75
	v_dual_mul_f32 v37, v37, v74 :: v_dual_mul_f32 v52, v52, v75
	v_dual_mul_f32 v39, v39, v74 :: v_dual_mul_f32 v54, v54, v75
	v_dual_mul_f32 v41, v41, v75 :: v_dual_mul_f32 v58, v58, v76
	v_dual_mul_f32 v43, v43, v75 :: v_dual_mul_f32 v60, v60, v76
	v_dual_mul_f32 v45, v45, v75 :: v_dual_mul_f32 v62, v62, v76
	v_dual_mul_f32 v47, v47, v75 :: v_dual_mul_f32 v64, v64, v76
	v_dual_mul_f32 v49, v49, v75 :: v_dual_mul_f32 v66, v66, v76
	v_dual_mul_f32 v51, v51, v75 :: v_dual_mul_f32 v68, v68, v76
	v_dual_mul_f32 v53, v53, v75 :: v_dual_mul_f32 v70, v70, v76
	v_dual_mul_f32 v55, v55, v75 :: v_dual_mul_f32 v72, v72, v76
	v_dual_mul_f32 v56, v56, v75 :: v_dual_mul_f32 v57, v57, v76
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v32, v32, v74 :: v_dual_lshlrev_b32 v161, 16, v161
	ds_store_b32 v160, v161 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v129 offset:20480
	ds_load_b128 v[13:16], v129 offset:20496
	ds_load_b128 v[17:20], v129 offset:20992
	ds_load_b128 v[21:24], v129 offset:21008
	v_mul_f32_e32 v59, v59, v76
	v_mul_f32_e32 v61, v61, v76
	v_mul_f32_e32 v63, v63, v76
	v_mul_f32_e32 v65, v65, v76
	v_mul_f32_e32 v67, v67, v76
	v_mul_f32_e32 v69, v69, v76
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v71, v71, v76 :: v_dual_fmac_f32 v140, v25, v9
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v137, v162, v9 :: v_dual_fmac_f32 v156, v165, v12
	v_dual_fmac_f32 v158, v163, v10 :: v_dual_fmac_f32 v157, v164, v11
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v152, v169, v16 :: v_dual_fmac_f32 v155, v166, v13
	v_fmac_f32_e32 v138, v27, v11
	v_dual_fmac_f32 v154, v167, v14 :: v_dual_fmac_f32 v153, v168, v15
	v_fmac_f32_e32 v134, v29, v13
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v150, v170, v17 :: v_dual_fmac_f32 v149, v171, v18
	v_fmac_f32_e32 v130, v32, v16
	v_dual_fmac_f32 v148, v172, v19 :: v_dual_fmac_f32 v147, v173, v20
	v_fmac_f32_e32 v132, v31, v15
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v146, v174, v21 :: v_dual_fmac_f32 v145, v175, v22
	v_fmac_f32_e32 v128, v33, v17
	v_dual_fmac_f32 v142, v176, v23 :: v_dual_fmac_f32 v141, v73, v24
	v_dual_fmac_f32 v126, v35, v19 :: v_dual_fmac_f32 v139, v26, v10
	v_dual_fmac_f32 v124, v37, v21 :: v_dual_fmac_f32 v135, v28, v12
	v_fmac_f32_e32 v122, v38, v22
	v_dual_fmac_f32 v133, v30, v14 :: v_dual_fmac_f32 v120, v40, v24
	v_dual_fmac_f32 v127, v34, v18 :: v_dual_fmac_f32 v116, v44, v12
	v_dual_fmac_f32 v125, v36, v20 :: v_dual_fmac_f32 v118, v42, v10
	v_dual_fmac_f32 v121, v39, v23 :: v_dual_fmac_f32 v114, v46, v14
	v_dual_fmac_f32 v119, v41, v9 :: v_dual_fmac_f32 v106, v50, v18
	v_dual_fmac_f32 v117, v43, v11 :: v_dual_fmac_f32 v108, v49, v17
	v_dual_fmac_f32 v115, v45, v13 :: v_dual_fmac_f32 v104, v52, v20
	v_dual_fmac_f32 v113, v47, v15 :: v_dual_fmac_f32 v98, v57, v9
	v_dual_fmac_f32 v109, v48, v16 :: v_dual_fmac_f32 v100, v55, v23
	v_dual_fmac_f32 v105, v51, v19 :: v_dual_fmac_f32 v96, v58, v10
	v_dual_fmac_f32 v103, v53, v21 :: v_dual_fmac_f32 v94, v60, v12
	v_dual_fmac_f32 v101, v54, v22 :: v_dual_fmac_f32 v90, v63, v15
	v_dual_fmac_f32 v99, v56, v24 :: v_dual_fmac_f32 v92, v62, v14
	v_dual_fmac_f32 v95, v59, v11 :: v_dual_fmac_f32 v88, v64, v16
	v_dual_fmac_f32 v93, v61, v13 :: v_dual_fmac_f32 v84, v67, v19
	v_dual_fmac_f32 v87, v65, v17 :: v_dual_fmac_f32 v80, v71, v23
	v_dual_fmac_f32 v85, v66, v18 :: v_dual_fmac_f32 v82, v69, v21
	v_fmac_f32_e32 v83, v68, v20
	v_fmac_f32_e32 v81, v70, v22
	v_fmac_f32_e32 v79, v72, v24
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v35, v117, v117 :: v_dual_max_f32 v36, v116, v116
	v_dual_max_f32 v37, v115, v115 :: v_dual_max_f32 v38, v114, v114
	v_max_f32_e32 v39, v113, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v72, 0, v37 :: v_dual_max_f32 v73, 0, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_max_f32 v74, 0, v39 :: v_dual_max_f32 v37, v109, v109
	v_dual_max_f32 v38, v108, v108 :: v_dual_max_f32 v39, v106, v106
	v_dual_max_f32 v40, v105, v105 :: v_dual_max_f32 v41, v104, v104
	v_dual_max_f32 v75, 0, v37 :: v_dual_max_f32 v76, 0, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v86, 0, v39 :: v_dual_max_f32 v89, 0, v40
	v_max_f32_e32 v38, v101, v101
	v_dual_max_f32 v91, 0, v41 :: v_dual_max_f32 v40, v99, v99
	v_max_f32_e32 v39, v100, v100
	v_max_f32_e32 v37, v103, v103
	v_max_f32_e32 v41, v98, v98
	v_max_f32_e32 v98, 0, v38
	v_max_f32_e32 v100, 0, v40
	v_max_f32_e32 v38, v95, v95
	v_dual_max_f32 v99, 0, v39 :: v_dual_max_f32 v40, v93, v93
	v_max_f32_e32 v101, 0, v41
	v_max_f32_e32 v39, v94, v94
	v_max_f32_e32 v97, 0, v37
	v_max_f32_e32 v41, v92, v92
	v_dual_max_f32 v95, 0, v40 :: v_dual_max_f32 v40, v85, v85
	v_max_f32_e32 v37, v96, v96
	v_dual_max_f32 v1, v137, v137 :: v_dual_max_f32 v2, v158, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v96, 0, v41
	v_dual_max_f32 v3, v157, v157 :: v_dual_max_f32 v4, v156, v156
	v_dual_max_f32 v92, 0, v37 :: v_dual_max_f32 v37, v90, v90
	v_dual_max_f32 v93, 0, v38 :: v_dual_max_f32 v38, v88, v88
	v_dual_max_f32 v5, v155, v155 :: v_dual_max_f32 v6, v154, v154
	v_dual_max_f32 v7, v153, v153 :: v_dual_max_f32 v8, v152, v152
	v_max_f32_e32 v9, v150, v150
	v_dual_max_f32 v15, v142, v142 :: v_dual_max_f32 v16, v141, v141
	v_dual_max_f32 v17, v140, v140 :: v_dual_max_f32 v18, v139, v139
	v_max_f32_e32 v19, v138, v138
	v_dual_max_f32 v25, v128, v128 :: v_dual_max_f32 v26, v127, v127
	v_dual_max_f32 v27, v126, v126 :: v_dual_max_f32 v28, v125, v125
	v_dual_max_f32 v29, v124, v124 :: v_dual_max_f32 v94, 0, v39
	v_max_f32_e32 v39, v87, v87
	v_max_f32_e32 v85, 0, v38
	v_dual_max_f32 v38, v82, v82 :: v_dual_max_f32 v41, v84, v84
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, v149, v149
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v12, v147, v147 :: v_dual_max_f32 v11, v148, v148
	v_dual_max_f32 v14, v145, v145 :: v_dual_max_f32 v13, v146, v146
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_max_f32_e32 v20, v135, v135
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v22, v133, v133
	v_max_f32_e32 v21, v134, v134
	v_dual_max_f32 v23, v132, v132 :: v_dual_max_f32 v24, v130, v130
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v30, v122, v122 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v32, v120, v120 :: v_dual_max_f32 v31, v121, v121
	v_dual_max_f32 v34, v118, v118 :: v_dual_max_f32 v33, v119, v119
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v30, 0, v30
	v_max_f32_e32 v88, 0, v40
	v_dual_max_f32 v84, 0, v37 :: v_dual_max_f32 v37, v83, v83
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v70, v2, v2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v40, v80, v80 :: v_dual_max_f32 v87, 0, v39
	v_dual_max_f32 v39, v81, v81 :: v_dual_mul_f32 v68, v4, v4
	v_max_f32_e32 v80, 0, v38
	v_dual_max_f32 v90, 0, v41 :: v_dual_max_f32 v41, v79, v79
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v66, v6, v6
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_max_f32_e32 v18, 0, v18
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v79, 0, v37
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v64, v8, v8 :: v_dual_max_f32 v81, 0, v39
	v_mul_f32_e32 v62, v10, v10
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v82, 0, v40 :: v_dual_max_f32 v83, 0, v41
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v60, v12, v12 :: v_dual_mul_f32 v71, v1, v1
	v_dual_mul_f32 v58, v14, v14 :: v_dual_mul_f32 v69, v3, v3
	v_dual_mul_f32 v56, v16, v16 :: v_dual_mul_f32 v67, v5, v5
	v_dual_mul_f32 v54, v18, v18 :: v_dual_mul_f32 v65, v7, v7
	v_dual_mul_f32 v52, v20, v20 :: v_dual_mul_f32 v63, v9, v9
	v_dual_mul_f32 v50, v22, v22 :: v_dual_mul_f32 v61, v11, v11
	v_dual_mul_f32 v48, v24, v24 :: v_dual_mul_f32 v59, v13, v13
	v_dual_mul_f32 v46, v26, v26 :: v_dual_mul_f32 v57, v15, v15
	v_dual_mul_f32 v44, v28, v28 :: v_dual_mul_f32 v55, v17, v17
	v_dual_mul_f32 v42, v30, v30 :: v_dual_mul_f32 v53, v19, v19
	v_dual_mul_f32 v40, v32, v32 :: v_dual_mul_f32 v51, v21, v21
	v_dual_mul_f32 v38, v34, v34 :: v_dual_mul_f32 v49, v23, v23
	v_dual_mul_f32 v36, v36, v36 :: v_dual_mul_f32 v47, v25, v25
	v_dual_mul_f32 v34, v72, v72 :: v_dual_mul_f32 v45, v27, v27
	v_dual_mul_f32 v32, v74, v74 :: v_dual_mul_f32 v43, v29, v29
	v_dual_mul_f32 v30, v76, v76 :: v_dual_mul_f32 v41, v31, v31
	v_mul_f32_e32 v28, v89, v89
	v_dual_mul_f32 v39, v33, v33 :: v_dual_mul_f32 v24, v99, v99
	v_dual_mul_f32 v37, v35, v35 :: v_dual_mul_f32 v26, v97, v97
	v_dual_mul_f32 v33, v73, v73 :: v_dual_mul_f32 v18, v95, v95
	v_dual_mul_f32 v31, v75, v75 :: v_dual_mul_f32 v22, v101, v101
	v_dual_mul_f32 v29, v86, v86 :: v_dual_mul_f32 v20, v93, v93
	v_dual_mul_f32 v27, v91, v91 :: v_dual_mul_f32 v12, v85, v85
	v_dual_mul_f32 v25, v98, v98 :: v_dual_mul_f32 v10, v88, v88
	v_dual_mul_f32 v23, v100, v100 :: v_dual_mul_f32 v8, v79, v79
	v_dual_mul_f32 v21, v92, v92 :: v_dual_mul_f32 v6, v81, v81
	v_dual_mul_f32 v19, v94, v94 :: v_dual_mul_f32 v4, v83, v83
	v_mul_f32_e32 v17, v96, v96
	v_mul_f32_e32 v15, v84, v84
	v_mul_f32_e32 v11, v87, v87
	v_mul_f32_e32 v9, v90, v90
	v_mul_f32_e32 v7, v80, v80
	v_mul_f32_e32 v5, v82, v82
.LBB0_7:                                ; %._crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, 0
	v_mov_b16_e32 v35.l, v70.h
	v_mov_b16_e32 v72.l, v71.h
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v74.l, v69.h
	v_mov_b16_e32 v72.h, v35.h
	v_mov_b16_e32 v74.h, v35.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v3, s19, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v73, 1, v35
	v_and_b32_e32 v72, 1, v72
	v_mov_b16_e32 v35.l, v68.h
	s_mov_b32 s0, 0x76543210
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v14, 1, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v70, v73, 0x7fff
	v_add3_u32 v71, v71, v72, 0x7fff
	v_and_b32_e32 v72, 1, v35
	v_and_b32_e32 v73, 1, v74
	v_mov_b16_e32 v35.l, v66.h
	v_mov_b16_e32 v74.l, v67.h
	v_mov_b16_e32 v70.l, v71.h
	v_add3_u32 v68, v68, v72, 0x7fff
	v_add3_u32 v69, v69, v73, 0x7fff
	v_and_b32_e32 v71, 1, v35
	v_and_b32_e32 v72, 1, v74
	v_mov_b16_e32 v35.l, v64.h
	v_mov_b16_e32 v73.l, v65.h
	v_mov_b16_e32 v73.h, v35.h
	v_mov_b16_e32 v68.l, v69.h
	v_add3_u32 v67, v67, v72, 0x7fff
	v_add3_u32 v66, v66, v71, 0x7fff
	v_and_b32_e32 v69, 1, v35
	v_and_b32_e32 v71, 1, v73
	v_mov_b16_e32 v35.l, v62.h
	v_mov_b16_e32 v72.l, v63.h
	v_mov_b16_e32 v72.h, v35.h
	v_mov_b16_e32 v66.l, v67.h
	v_add3_u32 v65, v65, v71, 0x7fff
	v_add3_u32 v64, v64, v69, 0x7fff
	v_and_b32_e32 v67, 1, v35
	v_and_b32_e32 v69, 1, v72
	v_mov_b16_e32 v35.l, v60.h
	v_mov_b16_e32 v71.l, v61.h
	v_mov_b16_e32 v71.h, v35.h
	v_mov_b16_e32 v64.l, v65.h
	v_add3_u32 v63, v63, v69, 0x7fff
	v_add3_u32 v62, v62, v67, 0x7fff
	v_and_b32_e32 v65, 1, v35
	v_and_b32_e32 v67, 1, v71
	v_mov_b16_e32 v35.l, v58.h
	v_mov_b16_e32 v69.l, v59.h
	v_mov_b16_e32 v69.h, v35.h
	v_mov_b16_e32 v62.l, v63.h
	v_add3_u32 v61, v61, v67, 0x7fff
	v_add3_u32 v60, v60, v65, 0x7fff
	v_and_b32_e32 v63, 1, v35
	v_and_b32_e32 v65, 1, v69
	v_mov_b16_e32 v35.l, v56.h
	v_mov_b16_e32 v67.l, v57.h
	v_mov_b16_e32 v67.h, v35.h
	v_mov_b16_e32 v60.l, v61.h
	v_add3_u32 v59, v59, v65, 0x7fff
	v_add3_u32 v58, v58, v63, 0x7fff
	v_and_b32_e32 v61, 1, v35
	v_and_b32_e32 v63, 1, v67
	v_mov_b16_e32 v35.l, v54.h
	v_mov_b16_e32 v65.l, v55.h
	v_mov_b16_e32 v65.h, v35.h
	v_mov_b16_e32 v58.l, v59.h
	v_add3_u32 v57, v57, v63, 0x7fff
	v_add3_u32 v56, v56, v61, 0x7fff
	v_and_b32_e32 v59, 1, v35
	v_and_b32_e32 v61, 1, v65
	v_mov_b16_e32 v35.l, v52.h
	v_mov_b16_e32 v63.l, v53.h
	v_mov_b16_e32 v63.h, v35.h
	v_mov_b16_e32 v56.l, v57.h
	v_add3_u32 v55, v55, v61, 0x7fff
	v_add3_u32 v54, v54, v59, 0x7fff
	v_and_b32_e32 v57, 1, v35
	v_and_b32_e32 v59, 1, v63
	v_mov_b16_e32 v35.l, v50.h
	v_mov_b16_e32 v61.l, v51.h
	v_mov_b16_e32 v61.h, v35.h
	v_mov_b16_e32 v54.l, v55.h
	v_add3_u32 v53, v53, v59, 0x7fff
	v_add3_u32 v52, v52, v57, 0x7fff
	v_and_b32_e32 v55, 1, v35
	v_and_b32_e32 v57, 1, v61
	v_mov_b16_e32 v35.l, v48.h
	v_mov_b16_e32 v59.l, v49.h
	v_mov_b16_e32 v59.h, v35.h
	v_mov_b16_e32 v52.l, v53.h
	v_add3_u32 v51, v51, v57, 0x7fff
	v_add3_u32 v50, v50, v55, 0x7fff
	v_and_b32_e32 v53, 1, v35
	v_and_b32_e32 v55, 1, v59
	v_mov_b16_e32 v35.l, v46.h
	v_mov_b16_e32 v57.l, v47.h
	v_mov_b16_e32 v57.h, v35.h
	v_mov_b16_e32 v50.l, v51.h
	v_add3_u32 v49, v49, v55, 0x7fff
	v_add3_u32 v48, v48, v53, 0x7fff
	v_and_b32_e32 v51, 1, v35
	v_and_b32_e32 v53, 1, v57
	v_mov_b16_e32 v35.l, v44.h
	v_mov_b16_e32 v55.l, v45.h
	v_mov_b16_e32 v55.h, v35.h
	v_mov_b16_e32 v48.l, v49.h
	v_add3_u32 v47, v47, v53, 0x7fff
	v_add3_u32 v46, v46, v51, 0x7fff
	v_and_b32_e32 v49, 1, v35
	v_and_b32_e32 v51, 1, v55
	v_mov_b16_e32 v35.l, v42.h
	v_mov_b16_e32 v53.l, v43.h
	v_mov_b16_e32 v53.h, v35.h
	v_mov_b16_e32 v46.l, v47.h
	v_add3_u32 v45, v45, v51, 0x7fff
	v_add3_u32 v44, v44, v49, 0x7fff
	v_and_b32_e32 v47, 1, v35
	v_and_b32_e32 v49, 1, v53
	v_mov_b16_e32 v35.l, v40.h
	v_mov_b16_e32 v51.l, v41.h
	v_mov_b16_e32 v51.h, v35.h
	v_mov_b16_e32 v44.l, v45.h
	v_add3_u32 v43, v43, v49, 0x7fff
	v_add3_u32 v42, v42, v47, 0x7fff
	v_and_b32_e32 v45, 1, v35
	v_and_b32_e32 v47, 1, v51
	v_mov_b16_e32 v35.l, v38.h
	v_mov_b16_e32 v49.l, v39.h
	v_mov_b16_e32 v49.h, v35.h
	v_mov_b16_e32 v42.l, v43.h
	v_add3_u32 v41, v41, v47, 0x7fff
	v_add3_u32 v40, v40, v45, 0x7fff
	v_and_b32_e32 v43, 1, v35
	v_and_b32_e32 v45, 1, v49
	v_mov_b16_e32 v35.l, v36.h
	v_mov_b16_e32 v47.l, v37.h
	v_mov_b16_e32 v47.h, v35.h
	v_mov_b16_e32 v40.l, v41.h
	v_add3_u32 v39, v39, v45, 0x7fff
	v_add3_u32 v38, v38, v43, 0x7fff
	v_and_b32_e32 v41, 1, v35
	v_and_b32_e32 v43, 1, v47
	v_mov_b16_e32 v35.l, v33.h
	v_mov_b16_e32 v45.l, v34.h
	v_mov_b16_e32 v45.h, v35.h
	v_mov_b16_e32 v38.l, v39.h
	v_add3_u32 v37, v37, v43, 0x7fff
	v_add3_u32 v36, v36, v41, 0x7fff
	v_and_b32_e32 v39, 1, v35
	v_and_b32_e32 v41, 1, v45
	v_mov_b16_e32 v35.l, v31.h
	v_mov_b16_e32 v43.l, v32.h
	v_mov_b16_e32 v43.h, v35.h
	v_mov_b16_e32 v36.l, v37.h
	v_add3_u32 v34, v34, v41, 0x7fff
	v_add3_u32 v33, v33, v39, 0x7fff
	v_and_b32_e32 v37, 1, v35
	v_and_b32_e32 v39, 1, v43
	v_mov_b16_e32 v35.l, v29.h
	v_mov_b16_e32 v41.l, v30.h
	v_mov_b16_e32 v41.h, v35.h
	v_mov_b16_e32 v33.l, v34.h
	v_add3_u32 v32, v32, v39, 0x7fff
	v_add3_u32 v31, v31, v37, 0x7fff
	v_and_b32_e32 v34, 1, v35
	v_and_b32_e32 v37, 1, v41
	v_mov_b16_e32 v35.l, v27.h
	v_mov_b16_e32 v39.l, v28.h
	v_mov_b16_e32 v39.h, v35.h
	v_mov_b16_e32 v31.l, v32.h
	v_add3_u32 v30, v30, v37, 0x7fff
	v_add3_u32 v29, v29, v34, 0x7fff
	v_and_b32_e32 v32, 1, v35
	v_and_b32_e32 v34, 1, v39
	v_mov_b16_e32 v35.l, v25.h
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v35.h
	v_mov_b16_e32 v29.l, v30.h
	v_add3_u32 v27, v27, v32, 0x7fff
	v_and_b32_e32 v30, 1, v35
	v_mov_b16_e32 v35.l, v23.h
	v_and_b32_e32 v32, 1, v37
	v_cndmask_b32_e32 v37, v33, v38, vcc_lo
	v_cndmask_b32_e32 v33, v38, v33, vcc_lo
	v_add3_u32 v28, v28, v34, 0x7fff
	v_mov_b16_e32 v34.l, v24.h
	v_mov_b16_e32 v34.h, v35.h
	v_add3_u32 v25, v25, v30, 0x7fff
	v_cndmask_b32_e32 v38, v31, v36, vcc_lo
	v_mov_b16_e32 v27.l, v28.h
	v_and_b32_e32 v28, 1, v35
	v_cndmask_b32_e32 v31, v36, v31, vcc_lo
	v_add3_u32 v26, v26, v32, 0x7fff
	v_mov_b16_e32 v32.l, v22.h
	v_mov_b16_e32 v32.h, v35.h
	v_add3_u32 v23, v23, v28, 0x7fff
	v_and_b32_e32 v30, 1, v34
	v_mov_b16_e32 v35.l, v21.h
	v_mov_b16_e32 v25.l, v26.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v13, s30, v3
	v_mad_u64_u32 v[1:2], null, s19, 48, v[3:4]
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v24, v30, 0x7fff
	v_and_b32_e32 v26, 1, v35
	v_mov_b16_e32 v35.l, v19.h
	v_mov_b16_e32 v30.l, v20.h
	v_mov_b16_e32 v30.h, v35.h
	v_mov_b16_e32 v23.l, v24.h
	v_and_b32_e32 v28, 1, v32
	v_add3_u32 v21, v21, v26, 0x7fff
	v_and_b32_e32 v24, 1, v35
	v_mov_b16_e32 v35.l, v17.h
	v_cndmask_b32_e32 v39, v23, v27, vcc_lo
	v_cndmask_b32_e32 v23, v27, v23, vcc_lo
	v_add3_u32 v22, v22, v28, 0x7fff
	v_mov_b16_e32 v28.l, v18.h
	v_mov_b16_e32 v28.h, v35.h
	v_add3_u32 v19, v19, v24, 0x7fff
	v_and_b32_e32 v24, 1, v35
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e32 v35.l, v12.h
	v_and_b32_e32 v22, 1, v28
	v_cndmask_b32_e32 v32, v46, v42, vcc_lo
	v_add3_u32 v17, v17, v24, 0x7fff
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s29, s29, s19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v24, v54, v50, vcc_lo
	v_add3_u32 v18, v18, v22, 0x7fff
	v_mov_b16_e32 v22.l, v11.h
	v_mov_b16_e32 v22.h, v35.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v2, s29, s28, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v28, v52, v48, vcc_lo
	v_mov_b16_e32 v17.l, v18.h
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v35.l, v10.h
	v_cndmask_b32_e32 v34, v40, v44, vcc_lo
	v_cndmask_b32_e32 v36, v25, v29, vcc_lo
	v_cndmask_b32_e32 v25, v29, v25, vcc_lo
	v_add3_u32 v12, v12, v18, 0x7fff
	v_and_b32_e32 v26, 1, v30
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v35.l, v8.h
	v_cndmask_b32_e32 v30, v42, v46, vcc_lo
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v16, s2, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v20, v26, 0x7fff
	v_mov_b16_e32 v26.l, v15.h
	v_mov_b16_e32 v26.h, v35.h
	v_add3_u32 v10, v10, v18, 0x7fff
	v_mov_b16_e32 v18.l, v5.h
	v_mov_b16_e32 v19.l, v20.h
	v_mov_b16_e32 v18.h, v35.h
	v_and_b32_e32 v20, 1, v26
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v14, 0x80, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v26, v48, v52, vcc_lo
	v_permlanex16_b32 v29, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v15, v15, v20, 0x7fff
	v_and_b32_e32 v20, 1, v22
	v_mov_b16_e32 v22.l, v9.h
	v_mov_b16_e32 v15.l, v7.h
	v_add3_u32 v5, v5, v18, 0x7fff
	v_mov_b16_e32 v12.l, v15.h
	v_add3_u32 v11, v11, v20, 0x7fff
	v_mov_b16_e32 v15.h, v35.h
	v_and_b32_e32 v20, 1, v22
	v_cndmask_b32_e32 v18, v56, v60, vcc_lo
	v_cndmask_b32_e32 v41, v12, v19, vcc_lo
	v_mov_b16_e32 v10.l, v11.h
	v_and_b32_e32 v11, 1, v35
	v_mov_b16_e32 v35.l, v6.h
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v9, v9, v20, 0x7fff
	v_cndmask_b32_e32 v12, v19, v12, vcc_lo
	v_add3_u32 v8, v8, v11, 0x7fff
	v_and_b32_e32 v11, 1, v35
	v_mov_b16_e32 v35.l, v4.h
	v_add3_u32 v7, v7, v15, 0x7fff
	v_mov_b16_e32 v8.l, v9.h
	v_mov_b32_e32 v19, 0x7632
	v_add3_u32 v6, v6, v11, 0x7fff
	v_and_b32_e32 v9, 1, v35
	v_mov_b16_e32 v6.l, v7.h
	v_dual_cndmask_b32 v15, v62, v58 :: v_dual_cndmask_b32 v20, v60, v56
	v_cndmask_b32_e32 v35, v44, v40, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v4, v9, 0x7fff
	v_mov_b16_e32 v0.l, v5.h
	v_cndmask_b32_e32 v4, v70, v66, vcc_lo
	v_cndmask_b32_e32 v42, v6, v10, vcc_lo
	v_cndmask_b32_e32 v6, v10, v6, vcc_lo
	v_dual_mov_b32 v10, 0x5410 :: v_dual_cndmask_b32 v43, v0, v8
	v_cndmask_b32_e32 v0, v8, v0, vcc_lo
	v_permlanex16_b32 v8, v4, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v9, v68, v64 :: v_dual_cndmask_b32 v4, 0x1054, v10
	v_cndmask_b32_e32 v10, 0x3276, v19, vcc_lo
	v_cndmask_b32_e32 v40, v17, v21, vcc_lo
	v_cndmask_b32_e32 v17, v21, v17, vcc_lo
	v_cndmask_b32_e32 v5, v66, v70, vcc_lo
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v7, v64, v68, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v11, v58, v62 :: v_dual_and_b32 v4, 0x540054, v4
	v_and_b32_e32 v10, 0x760076, v10
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v22, v50, v54, vcc_lo
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v10, v10, 4, v10
	v_permlanex16_b32 v20, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v44, 0x5040504, v4
	v_and_b32_e32 v45, 0x7060706, v10
	v_permlanex16_b32 v27, v35, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v8, v5, v44
	v_perm_b32 v5, v8, v5, v45
	v_perm_b32 v6, v9, v7, v44
	v_perm_b32 v7, v9, v7, v45
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v3, v2, v3, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v8, v15, v11, v44
	v_perm_b32 v9, v15, v11, v45
	v_perm_b32 v10, v19, v18, v44
	v_perm_b32 v11, v19, v18, v45
	v_perm_b32 v17, v20, v22, v44
	v_perm_b32 v18, v20, v22, v45
	v_perm_b32 v19, v21, v26, v44
	v_perm_b32 v20, v21, v26, v45
	v_perm_b32 v21, v24, v30, v44
	v_perm_b32 v22, v24, v30, v45
	v_perm_b32 v23, v27, v34, v44
	v_perm_b32 v24, v27, v34, v45
	v_perm_b32 v25, v28, v37, v44
	v_perm_b32 v26, v28, v37, v45
	v_perm_b32 v27, v29, v38, v44
	v_perm_b32 v28, v29, v38, v45
	v_perm_b32 v29, v31, v36, v44
	v_perm_b32 v30, v31, v36, v45
	v_perm_b32 v33, v35, v40, v44
	v_perm_b32 v34, v35, v40, v45
	v_perm_b32 v35, v12, v41, v44
	v_perm_b32 v36, v12, v41, v45
	v_add_lshl_u32 v12, v2, v16, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_perm_b32 v31, v32, v39, v44
	v_perm_b32 v32, v32, v39, v45
	v_perm_b32 v39, v0, v43, v44
	v_perm_b32 v40, v0, v43, v45
	v_add_lshl_u32 v0, v14, v16, 1
	s_clause 0x2
	buffer_store_b128 v[4:7], v3, s[16:19], 0 offen
	buffer_store_b128 v[8:11], v3, s[16:19], 0 offen offset:256
	buffer_store_b128 v[17:20], v12, s[16:19], 0 offen
	v_add_lshl_u32 v3, v2, v13, 1
	v_add_lshl_u32 v4, v14, v13, 1
	v_add_lshl_u32 v2, v2, v1, 1
	v_perm_b32 v37, v46, v42, v44
	v_perm_b32 v38, v46, v42, v45
	v_add_lshl_u32 v1, v14, v1, 1
	s_clause 0x4
	buffer_store_b128 v[21:24], v0, s[16:19], 0 offen
	buffer_store_b128 v[25:28], v3, s[16:19], 0 offen
	buffer_store_b128 v[29:32], v4, s[16:19], 0 offen
	buffer_store_b128 v[33:36], v2, s[16:19], 0 offen
	buffer_store_b128 v[37:40], v1, s[16:19], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 177
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14540
; TotalNumSgprs: 33
; NumVgprs: 177
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 33
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     177
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
