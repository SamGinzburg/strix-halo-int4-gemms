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
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s8, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v58, 15, v0
	v_and_b32_e32 v61, 4, v0
	v_and_b32_e32 v62, 8, v0
	v_lshlrev_b32_e32 v63, 4, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s28, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s7, s6, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s6, s6, s5
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s8, s9, s7
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s5, s2, s6
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s8, s8, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s6, s5
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
	s_mul_hi_u32 s2, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s2
	s_mul_hi_u32 s2, s6, s10
	s_xor_b32 s10, s5, s8
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
	s_sub_i32 s30, s2, s10
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s4, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s30, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s6
	s_mov_b32 s6, 0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s5, s5, s7
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
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[16:19], s[0:1], 0x20
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v59, 0xf0, v0
	v_dual_mov_b32 v5, 0 :: v_dual_lshlrev_b32 v60, 4, v58
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s31, s5, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp16:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s4, 31
.Ltmp17:
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s4, s1, 31
.Ltmp19:
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v1, 3, v59
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s4, s4, 27
	v_or_b32_e32 v10, s31, v58
	s_add_i32 s1, s1, s4
	s_mov_b32 s4, 0
	v_mul_lo_u32 v2, s28, v2
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_bfe_i32 v4, v0, 2, 1
	v_bfe_i32 v5, v0, 3, 1
	v_or_b32_e32 v11, 16, v10
.Ltmp21:
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s5, s30, 8
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s1, s1, 5
	v_or_b32_e32 v13, 32, v10
	v_mul_lo_u32 v86, v10, s1
	v_or_b32_e32 v10, 48, v10
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
	v_lshlrev_b32_e32 v3, 3, v0
	v_mov_b32_e32 v113, 0
	v_mul_lo_u32 v89, v11, s1
	v_lshrrev_b32_e32 v11, 6, v0
	v_or_b32_e32 v109, s5, v0
	v_and_b32_e32 v6, 56, v3
	v_mul_lo_u32 v98, v13, s1
	v_mul_lo_u32 v100, v10, s1
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v10, 2, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v69, v2, v6, s31
	v_mul_lo_u32 v2, s29, v1
	v_dual_mov_b32 v144, 0 :: v_dual_lshlrev_b32 v11, 1, v59
	v_lshl_or_b32 v1, v58, 9, v1
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v14, 1, v0
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v10, 0, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v57, v2, v60, s5
	s_mov_b32 s5, s4
	v_lshlrev_b32_e32 v6, 5, v0
	v_and_b32_e32 v4, 0x90, v4
	v_and_b32_e32 v5, 0x110, v5
	v_and_b32_e32 v8, 0xe00, v63
	v_lshlrev_b32_e32 v13, 2, v0
	v_and_b32_e32 v7, 0x60, v6
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v6, 32, v6
	v_xor_b32_e32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v13, 0x1c0, v13
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v107, 0, v11
	v_or3_b32 v4, v7, v8, v4
	v_xor_b32_e32 v5, 0x90, v1
	v_or_b32_e32 v7, 0x3f0, v0
	v_or_b32_e32 v8, 0x7f0, v0
	v_xor_b32_e32 v9, 0x110, v1
	v_xor_b32_e32 v12, 16, v4
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v14, 28, v14
	v_add3_u32 v10, v10, v13, v6
	v_add3_u32 v11, v107, v11, v6
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s2, 31
	v_add_nc_u32_e32 v80, 0, v58
	s_lshr_b32 s0, s0, 26
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v122, 0, v3
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v124, 0, v1
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v126, 0, v5
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v128, 0, v7
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v129, 0, v8
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v130, 0, v4
	v_mov_b32_e32 v1, s4
.Ltmp25:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_add_u32 v112, s28, 5, v69
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v127, 0, v9
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v137, 0, v12
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v145, v10, v14
	v_mov_b32_e32 v132, 0
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v146, v11, v14
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v64, 0
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
	s_lshl_b32 s5, s5, 6
	v_mad_u64_u32 v[19:20], null, s5, s29, v[57:58]
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s6, s5, s28
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v9, s6, v69
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v13, s29, v19
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[17:18], v9, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v19, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v122, v[17:18] offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v13, v9, 0x5010400
	v_perm_b32 v18, v14, v10, 0x5010400
	v_perm_b32 v10, v14, v10, 0x7030602
	v_perm_b32 v14, v15, v11, 0x5010400
	v_perm_b32 v11, v15, v11, 0x7030602
	v_perm_b32 v15, v16, v12, 0x5010400
	v_perm_b32 v12, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v16, 8, v17
	v_perm_b32 v13, v13, v9, 0x7030602
	v_and_b16 v9.l, 0xff, v17.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v9.h, 8, v16.l
	v_lshrrev_b32_e32 v16, 8, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v124, v9
	v_lshrrev_b32_e32 v9, 24, v17
	v_and_b16 v9.h, 0xff, v17.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v16.l
	ds_store_b16 v124, v9 offset:32
	v_and_b16 v9.l, 0xff, v13.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v124, v9 offset:64
	v_lshrrev_b32_e32 v9, 24, v13
	v_and_b16 v9.h, 0xff, v13.h
	v_lshrrev_b32_e32 v13, 8, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.h, 8, v13.l
	v_lshrrev_b32_e32 v13, 8, v10
	ds_store_b16 v124, v9 offset:96
	v_and_b16 v9.l, 0xff, v18.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v126, v9
	v_lshrrev_b32_e32 v9, 24, v18
	v_and_b16 v9.h, 0xff, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v13.l
	ds_store_b16 v126, v9 offset:32
	v_and_b16 v9.l, 0xff, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v126, v9 offset:64
	v_lshrrev_b32_e32 v9, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_lshrrev_b32_e32 v10, 8, v14
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v11
	ds_store_b16 v126, v9 offset:96
	v_and_b16 v9.l, 0xff, v14.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v127, v9
	v_lshrrev_b32_e32 v9, 24, v14
	v_and_b16 v9.h, 0xff, v14.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v15
	ds_store_b16 v127, v9 offset:32
	v_and_b16 v9.l, 0xff, v11.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v127, v9 offset:64
	v_lshrrev_b32_e32 v9, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v12
	ds_store_b16 v127, v9 offset:96
	v_and_b16 v9.l, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v124, v9 offset:384
	v_lshrrev_b32_e32 v9, 24, v15
	v_and_b16 v9.h, 0xff, v15.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	ds_store_b16 v124, v9 offset:416
	v_and_b16 v9.l, 0xff, v12.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v124, v9 offset:448
	v_lshrrev_b32_e32 v9, 24, v12
	v_and_b16 v9.h, 0xff, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	ds_store_b16 v124, v9 offset:480
	v_add_nc_u32_e32 v9, s6, v112
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s5, s29
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[17:18], v9, s[20:23], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v9, s2, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v13, s29, v9
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v122, v[17:18] offset:18432
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v13, v9, 0x5010400
	v_perm_b32 v18, v14, v10, 0x5010400
	v_perm_b32 v10, v14, v10, 0x7030602
	v_perm_b32 v14, v15, v11, 0x5010400
	v_perm_b32 v11, v15, v11, 0x7030602
	v_perm_b32 v15, v16, v12, 0x5010400
	v_perm_b32 v12, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v16, 8, v17
	v_perm_b32 v13, v13, v9, 0x7030602
	v_and_b16 v9.l, 0xff, v17.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v9.h, 8, v16.l
	v_lshrrev_b32_e32 v16, 8, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v124, v9 offset:8192
	v_lshrrev_b32_e32 v9, 24, v17
	v_and_b16 v9.h, 0xff, v17.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v16.l
	ds_store_b16 v124, v9 offset:8224
	v_and_b16 v9.l, 0xff, v13.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v124, v9 offset:8256
	v_lshrrev_b32_e32 v9, 24, v13
	v_and_b16 v9.h, 0xff, v13.h
	v_lshrrev_b32_e32 v13, 8, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.h, 8, v13.l
	v_lshrrev_b32_e32 v13, 8, v10
	ds_store_b16 v124, v9 offset:8288
	v_and_b16 v9.l, 0xff, v18.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v126, v9 offset:8192
	v_lshrrev_b32_e32 v9, 24, v18
	v_and_b16 v9.h, 0xff, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v13.l
	ds_store_b16 v126, v9 offset:8224
	v_and_b16 v9.l, 0xff, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v126, v9 offset:8256
	v_lshrrev_b32_e32 v9, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_lshrrev_b32_e32 v10, 8, v14
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v11
	ds_store_b16 v126, v9 offset:8288
	v_and_b16 v9.l, 0xff, v14.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v127, v9 offset:8192
	v_lshrrev_b32_e32 v9, 24, v14
	v_and_b16 v9.h, 0xff, v14.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v15
	ds_store_b16 v127, v9 offset:8224
	v_and_b16 v9.l, 0xff, v11.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v127, v9 offset:8256
	v_lshrrev_b32_e32 v9, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v12
	ds_store_b16 v127, v9 offset:8288
	v_and_b16 v9.l, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v124, v9 offset:8576
	v_lshrrev_b32_e32 v9, 24, v15
	v_and_b16 v9.h, 0xff, v15.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	ds_store_b16 v124, v9 offset:8608
	v_and_b16 v9.l, 0xff, v12.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v124, v9 offset:8640
	v_lshrrev_b32_e32 v9, 24, v12
	v_and_b16 v9.h, 0xff, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	ds_store_b16 v124, v9 offset:8672
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[155:158], v130
	ds_load_b128 v[163:166], v130 offset:4096
	ds_load_b128 v[159:162], v137
	ds_load_b128 v[167:170], v137 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v80 offset:17216
	ds_load_u8 v10, v80 offset:17152
	ds_load_u8 v17, v80 offset:18240
	ds_load_u8 v18, v80 offset:18176
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v80 offset:17344
	ds_load_u8 v11, v80 offset:17280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v80 offset:18368
	ds_load_u8 v19, v80 offset:18304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v80 offset:16960
	ds_load_u8 v10, v80 offset:16896
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v80 offset:17984
	ds_load_u8 v18, v80 offset:17920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v80 offset:17088
	ds_load_u8 v11, v80 offset:17024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v80 offset:18112
	ds_load_u8 v19, v80 offset:18048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v27, v10, 16, v9
	ds_load_u8 v9, v80 offset:16704
	ds_load_u8 v10, v80 offset:16640
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v80 offset:17728
	ds_load_u8 v18, v80 offset:17664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v80 offset:16832
	ds_load_u8 v11, v80 offset:16768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v80 offset:17856
	ds_load_u8 v19, v80 offset:17792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v80 offset:16448
	ds_load_u8 v10, v80 offset:16384
	ds_load_u8 v33, v80 offset:16400
	ds_load_u8 v49, v80 offset:16416
	ds_load_u8 v171, v80 offset:16432
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v80 offset:17472
	ds_load_u8 v18, v80 offset:17408
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v80 offset:16576
	ds_load_u8 v11, v80 offset:16512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v80 offset:17600
	ds_load_u8 v19, v80 offset:17536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v25, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[155:158], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v29, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[163:166], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v80 offset:17232
	ds_load_u8 v26, v80 offset:17168
	v_wmma_i32_16x16x16_iu8 v[9:16], v[159:162], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[167:170], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v80 offset:17360
	ds_load_u8 v27, v80 offset:17296
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v80 offset:16976
	ds_load_u8 v26, v80 offset:16912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v80 offset:17104
	ds_load_u8 v27, v80 offset:17040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v80 offset:16720
	ds_load_u8 v26, v80 offset:16656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v80 offset:16848
	ds_load_u8 v27, v80 offset:16784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v80 offset:16464
	ds_load_u8 v26, v80 offset:16592
	ds_load_u8 v27, v80 offset:16528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v80 offset:18256
	ds_load_u8 v34, v80 offset:18192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[155:158], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v80 offset:18384
	ds_load_u8 v35, v80 offset:18320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v80 offset:18000
	ds_load_u8 v34, v80 offset:17936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v80 offset:18128
	ds_load_u8 v35, v80 offset:18064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v80 offset:17744
	ds_load_u8 v34, v80 offset:17680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v80 offset:17872
	ds_load_u8 v35, v80 offset:17808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v80 offset:17488
	ds_load_u8 v34, v80 offset:17424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v80 offset:17616
	ds_load_u8 v35, v80 offset:17552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[163:166], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v80 offset:17248
	ds_load_u8 v42, v80 offset:17184
	v_wmma_i32_16x16x16_iu8 v[25:32], v[159:162], v[45:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[167:170], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v80 offset:17376
	ds_load_u8 v43, v80 offset:17312
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v42, 16, v41
	ds_load_u8 v41, v80 offset:16992
	ds_load_u8 v42, v80 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v80 offset:17120
	ds_load_u8 v43, v80 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v42, 16, v41
	ds_load_u8 v41, v80 offset:16736
	ds_load_u8 v42, v80 offset:16672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v80 offset:16864
	ds_load_u8 v43, v80 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v42, 16, v41
	ds_load_u8 v41, v80 offset:16480
	ds_load_u8 v42, v80 offset:16608
	ds_load_u8 v43, v80 offset:16544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v49, v41, 0xc0c0004
	ds_load_u8 v49, v80 offset:18272
	ds_load_u8 v50, v80 offset:18208
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[155:158], v[147:150], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v80 offset:18400
	ds_load_u8 v51, v80 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v50, 16, v49
	ds_load_u8 v49, v80 offset:18016
	ds_load_u8 v50, v80 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v80 offset:18144
	ds_load_u8 v51, v80 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v50, 16, v49
	ds_load_u8 v49, v80 offset:17760
	ds_load_u8 v50, v80 offset:17696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v80 offset:17888
	ds_load_u8 v51, v80 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v50, 16, v49
	ds_load_u8 v49, v80 offset:17504
	ds_load_u8 v50, v80 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v80 offset:17632
	ds_load_u8 v51, v80 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[163:166], v[147:150], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v147, v80 offset:17008
	ds_load_u8 v148, v80 offset:16944
	v_wmma_i32_16x16x16_iu8 v[41:48], v[159:162], v[151:154], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[167:170], v[151:154], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v80 offset:17136
	ds_load_u8 v149, v80 offset:17072
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v148, 16, v147
	ds_load_u8 v147, v80 offset:16752
	ds_load_u8 v148, v80 offset:16688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v80 offset:16880
	ds_load_u8 v149, v80 offset:16816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v148, 16, v147
	ds_load_u8 v147, v80 offset:16496
	ds_load_u8 v148, v80 offset:16624
	ds_load_u8 v149, v80 offset:16560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v147, v171, v147, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v148, 16, v147
	ds_load_u8 v147, v80 offset:17264
	ds_load_u8 v148, v80 offset:17200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v128 offset:16384
	ds_load_u8 v149, v80 offset:17328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v148, 16, v147
	v_wmma_i32_16x16x16_iu8 v[147:154], v[155:158], v[171:174], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v155, v80 offset:18032
	ds_load_u8 v156, v80 offset:17968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v80 offset:18160
	ds_load_u8 v157, v80 offset:18096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v156, 16, v155
	ds_load_u8 v155, v80 offset:17776
	ds_load_u8 v156, v80 offset:17712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v80 offset:17904
	ds_load_u8 v157, v80 offset:17840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v156, 16, v155
	ds_load_u8 v155, v80 offset:17520
	ds_load_u8 v156, v80 offset:17456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v80 offset:17648
	ds_load_u8 v157, v80 offset:17584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v156, 16, v155
	ds_load_u8 v155, v80 offset:18288
	ds_load_u8 v156, v80 offset:18224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v129 offset:16384
	ds_load_u8 v157, v80 offset:18352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v156, 16, v155
	v_wmma_i32_16x16x16_iu8 v[147:154], v[159:162], v[175:178], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[163:166], v[171:174], v[1:8] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v163, v86, s5, 1
	v_add_lshl_u32 v164, v89, s5, 1
	v_add_lshl_u32 v165, v98, s5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[155:162], v[167:170], v[175:178], v[155:162] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v163, 0x80000000, v163 :: v_dual_cndmask_b32 v164, 0x80000000, v164
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v163, v163, s[8:11], 0 offen
	buffer_load_u16 v164, v164, s[8:11], 0 offen
	v_cndmask_b32_e32 v165, 0x80000000, v165, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v156, v156
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v167, v165, s[8:11], 0 offen
	v_add_lshl_u32 v165, v100, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v162, v162
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_or_b32 s5, s5, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v165, 0x80000000, v165, vcc_lo
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v155, v155
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v168, v165, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v166, 16, v163
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v20, v20, v166 :: v_dual_lshlrev_b32 v165, 16, v164
	v_mul_f32_e32 v10, v10, v166
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v164, 16, v167
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v167, v109, s6, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v12, v12, v166
	v_mul_f32_e32 v14, v14, v166
	v_dual_mul_f32 v22, v22, v166 :: v_dual_mul_f32 v33, v33, v165
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v50, v50, v164 :: v_dual_cndmask_b32 v167, 0x80000000, v167
	v_dual_mul_f32 v35, v35, v165 :: v_dual_mul_f32 v52, v52, v164
	v_dual_mul_f32 v37, v37, v165 :: v_dual_mul_f32 v54, v54, v164
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v167, v167, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v163, 16, v168
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v39, v39, v165 :: v_dual_mul_f32 v56, v56, v164
	v_mul_f32_e32 v41, v41, v164
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v43, v43, v164 :: v_dual_mul_f32 v150, v150, v163
	v_dual_mul_f32 v45, v45, v164 :: v_dual_mul_f32 v152, v152, v163
	v_dual_mul_f32 v47, v47, v164 :: v_dual_mul_f32 v154, v154, v163
	v_dual_mul_f32 v49, v49, v164 :: v_dual_mul_f32 v156, v156, v163
	v_dual_mul_f32 v51, v51, v164 :: v_dual_mul_f32 v158, v158, v163
	v_dual_mul_f32 v53, v53, v164 :: v_dual_mul_f32 v160, v160, v163
	v_dual_mul_f32 v55, v55, v164 :: v_dual_mul_f32 v162, v162, v163
	v_dual_mul_f32 v17, v17, v166 :: v_dual_mul_f32 v34, v34, v165
	v_mul_f32_e32 v18, v18, v166
	v_dual_mul_f32 v15, v15, v166 :: v_dual_mul_f32 v32, v32, v165
	v_mul_f32_e32 v148, v148, v163
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v19, v19, v166 :: v_dual_mul_f32 v36, v36, v165
	v_dual_mul_f32 v21, v21, v166 :: v_dual_mul_f32 v38, v38, v165
	v_mul_f32_e32 v16, v16, v166
	v_dual_mul_f32 v23, v23, v166 :: v_dual_mul_f32 v40, v40, v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v9, v166
	v_dual_mul_f32 v24, v24, v166 :: v_dual_mul_f32 v25, v25, v165
	v_mul_f32_e32 v27, v27, v165
	v_mul_f32_e32 v29, v29, v165
	v_dual_mul_f32 v31, v31, v165 :: v_dual_mul_f32 v42, v42, v164
	v_mul_f32_e32 v44, v44, v164
	v_mul_f32_e32 v46, v46, v164
	v_dual_mul_f32 v48, v48, v164 :: v_dual_mul_f32 v11, v11, v166
	v_dual_mul_f32 v13, v13, v166 :: v_dual_mul_f32 v26, v26, v165
	v_mul_f32_e32 v28, v28, v165
	v_mul_f32_e32 v30, v30, v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v145, v167 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[167:170], v107 offset:20480
	ds_load_b128 v[171:174], v107 offset:20496
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v175, 16, v167
	v_lshlrev_b32_e32 v176, 16, v168
	v_lshlrev_b32_e32 v177, 16, v169
	v_lshlrev_b32_e32 v178, 16, v170
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v179, 16, v171
	v_lshlrev_b32_e32 v180, 16, v172
	v_lshlrev_b32_e32 v181, 16, v173
	v_lshlrev_b32_e32 v182, 16, v174
	v_and_b32_e32 v167, 0xffff0000, v167
	v_and_b32_e32 v168, 0xffff0000, v168
	v_and_b32_e32 v169, 0xffff0000, v169
	v_and_b32_e32 v170, 0xffff0000, v170
	v_and_b32_e32 v171, 0xffff0000, v171
	v_and_b32_e32 v172, 0xffff0000, v172
	v_and_b32_e32 v173, 0xffff0000, v173
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v147, v147, v163 :: v_dual_and_b32 v174, 0xffff0000, v174
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v144, v10, v176 :: v_dual_mul_f32 v149, v149, v163
	v_dual_fmac_f32 v142, v12, v178 :: v_dual_mul_f32 v151, v151, v163
	v_dual_fmac_f32 v140, v14, v180 :: v_dual_fmac_f32 v113, v9, v175
	v_fmac_f32_e32 v114, v32, v182
	v_dual_fmac_f32 v123, v24, v174 :: v_dual_fmac_f32 v94, v46, v180
	v_dual_fmac_f32 v121, v25, v175 :: v_dual_fmac_f32 v96, v44, v178
	v_dual_fmac_f32 v119, v27, v177 :: v_dual_fmac_f32 v92, v48, v182
	v_dual_fmac_f32 v117, v29, v179 :: v_dual_fmac_f32 v90, v50, v168
	v_dual_fmac_f32 v115, v31, v181 :: v_dual_fmac_f32 v84, v54, v172
	v_dual_fmac_f32 v111, v33, v167 :: v_dual_fmac_f32 v88, v51, v169
	v_dual_fmac_f32 v105, v37, v171 :: v_dual_fmac_f32 v82, v56, v174
	v_dual_fmac_f32 v101, v41, v175 :: v_dual_fmac_f32 v66, v160, v172
	v_dual_fmac_f32 v99, v42, v176 :: v_dual_fmac_f32 v78, v149, v177
	v_dual_fmac_f32 v97, v43, v177 :: v_dual_fmac_f32 v64, v162, v174
	v_fmac_f32_e32 v95, v45, v179
	v_fmac_f32_e32 v93, v47, v181
	v_fmac_f32_e32 v91, v49, v167
	v_dual_fmac_f32 v87, v52, v170 :: v_dual_fmac_f32 v76, v151, v179
	v_fmac_f32_e32 v85, v53, v171
	v_fmac_f32_e32 v83, v55, v173
	.loc	1 378 26 is_stmt 1              ; generate_amdgcn.py:378:26
	ds_load_b128 v[53:56], v130 offset:8192
	ds_load_b128 v[41:44], v130 offset:12288
	ds_load_b128 v[49:52], v137 offset:8192
	ds_load_b128 v[45:48], v137 offset:12288
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v80 offset:19264
	ds_load_u8 v10, v80 offset:19200
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v143, v11, v177 :: v_dual_fmac_f32 v136, v17, v167
	v_dual_fmac_f32 v135, v18, v168 :: v_dual_fmac_f32 v108, v35, v169
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v17, v80 offset:20288
	ds_load_u8 v18, v80 offset:20224
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v157, v157, v163 :: v_dual_fmac_f32 v134, v19, v169
	v_dual_mul_f32 v159, v159, v163 :: v_dual_fmac_f32 v118, v28, v178
	v_dual_mul_f32 v155, v155, v163 :: v_dual_fmac_f32 v120, v26, v176
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v139, v15, v181 :: v_dual_fmac_f32 v132, v21, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v79, v148, v176 :: v_dual_fmac_f32 v72, v155, v167
	v_fmac_f32_e32 v67, v159, v171
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v161, v161, v163 :: v_dual_fmac_f32 v116, v30, v180
	v_dual_mul_f32 v153, v153, v163 :: v_dual_fmac_f32 v138, v16, v182
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v80 offset:19392
	ds_load_u8 v11, v80 offset:19328
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v141, v13, v179 :: v_dual_fmac_f32 v110, v34, v168
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v80 offset:20416
	ds_load_u8 v19, v80 offset:20352
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v133, v20, v170 :: v_dual_fmac_f32 v104, v38, v172
	v_dual_fmac_f32 v131, v22, v172 :: v_dual_fmac_f32 v106, v36, v170
	v_dual_fmac_f32 v125, v23, v173 :: v_dual_fmac_f32 v102, v40, v174
	v_dual_fmac_f32 v77, v150, v178 :: v_dual_fmac_f32 v70, v157, v169
	v_dual_fmac_f32 v81, v147, v175 :: v_dual_fmac_f32 v74, v153, v181
	v_dual_fmac_f32 v103, v39, v173 :: v_dual_fmac_f32 v68, v158, v170
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v80 offset:19008
	ds_load_u8 v10, v80 offset:18944
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v80 offset:20032
	ds_load_u8 v18, v80 offset:19968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v80 offset:19136
	ds_load_u8 v11, v80 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v80 offset:20160
	ds_load_u8 v19, v80 offset:20096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v27, v10, 16, v9
	ds_load_u8 v9, v80 offset:18752
	ds_load_u8 v10, v80 offset:18688
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v80 offset:19776
	ds_load_u8 v18, v80 offset:19712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v80 offset:18880
	ds_load_u8 v11, v80 offset:18816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v80 offset:19904
	ds_load_u8 v19, v80 offset:19840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v80 offset:18496
	ds_load_u8 v10, v80 offset:18432
	ds_load_u8 v33, v80 offset:18448
	ds_load_u8 v155, v80 offset:18464
	ds_load_u8 v171, v80 offset:18480
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v80 offset:19520
	ds_load_u8 v18, v80 offset:19456
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v80 offset:18624
	ds_load_u8 v11, v80 offset:18560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v80 offset:19648
	ds_load_u8 v19, v80 offset:19584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v25, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v29, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v80 offset:19280
	ds_load_u8 v26, v80 offset:19216
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v73, v154, v182
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v75, v152, v180
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v71, v156, v168
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v65, v161, v173
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v80 offset:19408
	ds_load_u8 v27, v80 offset:19344
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v26, 16, v25
	ds_load_u8 v25, v80 offset:19024
	ds_load_u8 v26, v80 offset:18960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v80 offset:19152
	ds_load_u8 v27, v80 offset:19088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v26, 16, v25
	ds_load_u8 v25, v80 offset:18768
	ds_load_u8 v26, v80 offset:18704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v80 offset:18896
	ds_load_u8 v27, v80 offset:18832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v26, 16, v25
	ds_load_u8 v25, v80 offset:18512
	ds_load_u8 v26, v80 offset:18640
	ds_load_u8 v27, v80 offset:18576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v80 offset:20304
	ds_load_u8 v34, v80 offset:20240
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[53:56], v[147:150], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v80 offset:20432
	ds_load_u8 v35, v80 offset:20368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v34, 16, v33
	ds_load_u8 v33, v80 offset:20048
	ds_load_u8 v34, v80 offset:19984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v80 offset:20176
	ds_load_u8 v35, v80 offset:20112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v34, 16, v33
	ds_load_u8 v33, v80 offset:19792
	ds_load_u8 v34, v80 offset:19728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v80 offset:19920
	ds_load_u8 v35, v80 offset:19856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v34, 16, v33
	ds_load_u8 v33, v80 offset:19536
	ds_load_u8 v34, v80 offset:19472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v80 offset:19664
	ds_load_u8 v35, v80 offset:19600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[147:150], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v147, v80 offset:19296
	ds_load_u8 v148, v80 offset:19232
	v_wmma_i32_16x16x16_iu8 v[25:32], v[49:52], v[151:154], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[151:154], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v80 offset:19424
	ds_load_u8 v149, v80 offset:19360
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v148, 16, v147
	ds_load_u8 v147, v80 offset:19040
	ds_load_u8 v148, v80 offset:18976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v80 offset:19168
	ds_load_u8 v149, v80 offset:19104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v148, 16, v147
	ds_load_u8 v147, v80 offset:18784
	ds_load_u8 v148, v80 offset:18720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v80 offset:18912
	ds_load_u8 v149, v80 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v148, 16, v147
	ds_load_u8 v147, v80 offset:18528
	ds_load_u8 v148, v80 offset:18656
	ds_load_u8 v149, v80 offset:18592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v147, v155, v147, 0xc0c0004
	ds_load_u8 v155, v80 offset:20320
	ds_load_u8 v156, v80 offset:20256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v163, v148, 16, v147
	v_wmma_i32_16x16x16_iu8 v[147:154], v[53:56], v[163:166], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v80 offset:20448
	ds_load_u8 v157, v80 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v156, 16, v155
	ds_load_u8 v155, v80 offset:20064
	ds_load_u8 v156, v80 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v80 offset:20192
	ds_load_u8 v157, v80 offset:20128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v156, 16, v155
	ds_load_u8 v155, v80 offset:19808
	ds_load_u8 v156, v80 offset:19744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v80 offset:19936
	ds_load_u8 v157, v80 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v156, 16, v155
	ds_load_u8 v155, v80 offset:19552
	ds_load_u8 v156, v80 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v80 offset:19680
	ds_load_u8 v157, v80 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v156, 16, v155
	v_wmma_i32_16x16x16_iu8 v[155:162], v[41:44], v[163:166], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v163, v80 offset:19056
	ds_load_u8 v164, v80 offset:18992
	v_wmma_i32_16x16x16_iu8 v[147:154], v[49:52], v[167:170], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[45:48], v[167:170], v[155:162] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v80 offset:19184
	ds_load_u8 v165, v80 offset:19120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v164, 16, v163
	ds_load_u8 v163, v80 offset:18800
	ds_load_u8 v164, v80 offset:18736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v80 offset:18928
	ds_load_u8 v165, v80 offset:18864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v164, 16, v163
	ds_load_u8 v163, v80 offset:18544
	ds_load_u8 v164, v80 offset:18672
	ds_load_u8 v165, v80 offset:18608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v163, v171, v163, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v164, 16, v163
	ds_load_u8 v163, v80 offset:19312
	ds_load_u8 v164, v80 offset:19248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v128 offset:18432
	ds_load_u8 v165, v80 offset:19376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v164, 16, v163
	v_wmma_i32_16x16x16_iu8 v[163:170], v[53:56], v[171:174], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v53, v80 offset:20080
	ds_load_u8 v54, v80 offset:20016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v80 offset:20208
	ds_load_u8 v55, v80 offset:20144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v54, 16, v53
	ds_load_u8 v53, v80 offset:19824
	ds_load_u8 v54, v80 offset:19760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v80 offset:19952
	ds_load_u8 v55, v80 offset:19888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v54, 16, v53
	ds_load_u8 v53, v80 offset:19568
	ds_load_u8 v54, v80 offset:19504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v80 offset:19696
	ds_load_u8 v55, v80 offset:19632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v54, 16, v53
	ds_load_u8 v53, v80 offset:20336
	ds_load_u8 v54, v80 offset:20272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v129 offset:18432
	ds_load_u8 v55, v80 offset:20400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v54, 16, v53
	v_wmma_i32_16x16x16_iu8 v[163:170], v[49:52], v[175:178], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[41:44], v[171:174], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v41, v147
	v_cvt_f32_i32_e32 v42, v148
	v_cvt_f32_i32_e32 v147, v155
	v_cvt_f32_i32_e32 v148, v156
	v_cvt_f32_i32_e32 v155, v163
	v_cvt_f32_i32_e32 v156, v164
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v163, v86, s5, 1
	v_add_lshl_u32 v164, v89, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v43, v149
	v_cvt_f32_i32_e32 v44, v150
	v_cvt_f32_i32_e32 v149, v157
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v163, 0x80000000, v163 :: v_dual_cndmask_b32 v164, 0x80000000, v164
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v150, v158
	v_cvt_f32_i32_e32 v157, v165
	v_cvt_f32_i32_e32 v158, v166
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v163, v163, s[8:11], 0 offen
	buffer_load_u16 v164, v164, s[8:11], 0 offen
	v_add_lshl_u32 v165, v98, s5, 1
	v_add_lshl_u32 v166, v100, s5, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s5, s5, s29
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[49:56], v[45:48], v[175:178], v[49:56] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v45, v151
	v_cvt_f32_i32_e32 v151, v159
	v_cvt_f32_i32_e32 v159, v167
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v165, 0x80000000, v165 :: v_dual_cndmask_b32 v166, 0x80000000, v166
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v167, v109, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v46, v152
	v_cvt_f32_i32_e32 v47, v153
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v165, v165, s[8:11], 0 offen
	buffer_load_u16 v166, v166, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v48, v154
	v_cvt_f32_i32_e32 v152, v160
	v_cvt_f32_i32_e32 v153, v161
	v_cvt_f32_i32_e32 v154, v162
	v_cvt_f32_i32_e32 v160, v168
	v_cvt_f32_i32_e32 v161, v169
	v_cvt_f32_i32_e32 v162, v170
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v167, 0x80000000, v167 :: v_dual_lshlrev_b32 v164, 16, v164
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v30, v30, v164 :: v_dual_lshlrev_b32 v163, 16, v163
	v_mul_f32_e32 v32, v32, v164
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v167, v167, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v168, v9, v163
	v_dual_mul_f32 v169, v10, v163 :: v_dual_mul_f32 v36, v36, v164
	v_mul_f32_e32 v170, v11, v163
	v_dual_mul_f32 v171, v12, v163 :: v_dual_mul_f32 v38, v38, v164
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v180, v21, v163 :: v_dual_lshlrev_b32 v165, 16, v165
	v_mul_f32_e32 v172, v13, v163
	v_dual_mul_f32 v173, v14, v163 :: v_dual_mul_f32 v40, v40, v164
	v_mul_f32_e32 v174, v15, v163
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v175, v16, v163 :: v_dual_mul_f32 v42, v42, v165
	v_mul_f32_e32 v176, v17, v163
	v_dual_mul_f32 v177, v18, v163 :: v_dual_mul_f32 v44, v44, v165
	v_mul_f32_e32 v178, v19, v163
	v_dual_mul_f32 v179, v20, v163 :: v_dual_mul_f32 v46, v46, v165
	v_dual_mul_f32 v181, v22, v163 :: v_dual_mul_f32 v48, v48, v165
	v_dual_mul_f32 v182, v23, v163 :: v_dual_mul_f32 v25, v25, v164
	v_dual_mul_f32 v163, v24, v163 :: v_dual_mul_f32 v150, v150, v165
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v166, 16, v166
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v26, v26, v164
	v_dual_mul_f32 v27, v27, v164 :: v_dual_mul_f32 v148, v148, v165
	v_mul_f32_e32 v28, v28, v164
	v_dual_mul_f32 v29, v29, v164 :: v_dual_mul_f32 v152, v152, v165
	v_dual_mul_f32 v31, v31, v164 :: v_dual_mul_f32 v154, v154, v165
	v_dual_mul_f32 v33, v33, v164 :: v_dual_mul_f32 v156, v156, v166
	v_dual_mul_f32 v35, v35, v164 :: v_dual_mul_f32 v158, v158, v166
	v_dual_mul_f32 v37, v37, v164 :: v_dual_mul_f32 v160, v160, v166
	v_dual_mul_f32 v39, v39, v164 :: v_dual_mul_f32 v162, v162, v166
	v_dual_mul_f32 v41, v41, v165 :: v_dual_mul_f32 v50, v50, v166
	v_dual_mul_f32 v43, v43, v165 :: v_dual_mul_f32 v52, v52, v166
	v_dual_mul_f32 v45, v45, v165 :: v_dual_mul_f32 v54, v54, v166
	v_dual_mul_f32 v47, v47, v165 :: v_dual_mul_f32 v56, v56, v166
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v34, v34, v164 :: v_dual_lshlrev_b32 v167, 16, v167
	ds_store_b32 v146, v167 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v107 offset:20480
	ds_load_b128 v[13:16], v107 offset:20496
	ds_load_b128 v[17:20], v107 offset:20992
	ds_load_b128 v[21:24], v107 offset:21008
	v_mul_f32_e32 v147, v147, v165
	v_mul_f32_e32 v149, v149, v165
	v_mul_f32_e32 v151, v151, v165
	v_mul_f32_e32 v153, v153, v165
	v_mul_f32_e32 v155, v155, v166
	v_mul_f32_e32 v157, v157, v166
	v_mul_f32_e32 v159, v159, v166
	v_mul_f32_e32 v161, v161, v166
	v_mul_f32_e32 v49, v49, v166
	v_mul_f32_e32 v51, v51, v166
	v_mul_f32_e32 v53, v53, v166
	v_mul_f32_e32 v55, v55, v166
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v113, v168, v9 :: v_dual_fmac_f32 v120, v26, v10
	v_dual_fmac_f32 v144, v169, v10 :: v_dual_fmac_f32 v143, v170, v11
	v_fmac_f32_e32 v96, v44, v12
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v142, v171, v12 :: v_dual_fmac_f32 v141, v172, v13
	v_fmac_f32_e32 v116, v30, v14
	v_dual_fmac_f32 v140, v173, v14 :: v_dual_fmac_f32 v139, v174, v15
	v_fmac_f32_e32 v92, v48, v16
	v_fmac_f32_e32 v138, v175, v16
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v136, v176, v17 :: v_dual_fmac_f32 v135, v177, v18
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v82, v154, v24
	v_dual_fmac_f32 v134, v178, v19 :: v_dual_fmac_f32 v133, v179, v20
	v_fmac_f32_e32 v110, v34, v18
	v_dual_fmac_f32 v132, v180, v21 :: v_dual_fmac_f32 v131, v181, v22
	v_dual_fmac_f32 v76, v159, v13 :: v_dual_fmac_f32 v125, v182, v23
	v_dual_fmac_f32 v90, v148, v18 :: v_dual_fmac_f32 v123, v163, v24
	v_dual_fmac_f32 v104, v38, v22 :: v_dual_fmac_f32 v121, v25, v9
	v_dual_fmac_f32 v94, v46, v14 :: v_dual_fmac_f32 v119, v27, v11
	v_fmac_f32_e32 v84, v152, v22
	v_fmac_f32_e32 v118, v28, v12
	v_dual_fmac_f32 v114, v32, v16 :: v_dual_fmac_f32 v115, v31, v15
	v_fmac_f32_e32 v72, v49, v17
	v_dual_fmac_f32 v111, v33, v17 :: v_dual_fmac_f32 v68, v52, v20
	v_fmac_f32_e32 v108, v35, v19
	v_dual_fmac_f32 v106, v36, v20 :: v_dual_fmac_f32 v117, v29, v13
	v_dual_fmac_f32 v70, v51, v19 :: v_dual_fmac_f32 v105, v37, v21
	v_dual_fmac_f32 v66, v54, v22 :: v_dual_fmac_f32 v103, v39, v23
	v_fmac_f32_e32 v64, v56, v24
	v_dual_fmac_f32 v102, v40, v24 :: v_dual_fmac_f32 v101, v41, v9
	v_dual_fmac_f32 v99, v42, v10 :: v_dual_fmac_f32 v88, v149, v19
	v_fmac_f32_e32 v97, v43, v11
	v_fmac_f32_e32 v95, v45, v13
	v_fmac_f32_e32 v93, v47, v15
	v_dual_fmac_f32 v91, v147, v17 :: v_dual_fmac_f32 v78, v157, v11
	v_dual_fmac_f32 v87, v150, v20 :: v_dual_fmac_f32 v74, v161, v15
	v_fmac_f32_e32 v85, v151, v21
	v_fmac_f32_e32 v83, v153, v23
	v_fmac_f32_e32 v81, v155, v9
	v_fmac_f32_e32 v79, v156, v10
	v_fmac_f32_e32 v77, v158, v12
	v_fmac_f32_e32 v75, v160, v14
	v_fmac_f32_e32 v73, v162, v16
	v_fmac_f32_e32 v71, v50, v18
	v_fmac_f32_e32 v67, v53, v21
	v_fmac_f32_e32 v65, v55, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v35, v97, v97 :: v_dual_max_f32 v36, v96, v96
	v_dual_max_f32 v37, v95, v95 :: v_dual_max_f32 v38, v94, v94
	v_max_f32_e32 v39, v93, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v35, 0, v35
	v_dual_max_f32 v42, v87, v87 :: v_dual_max_f32 v41, 0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_max_f32 v86, 0, v38 :: v_dual_max_f32 v37, v92, v92
	v_max_f32_e32 v38, v91, v91
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v89, 0, v39
	v_dual_max_f32 v40, v88, v88 :: v_dual_max_f32 v39, v90, v90
	v_dual_max_f32 v87, 0, v37 :: v_dual_max_f32 v88, 0, v38
	v_dual_max_f32 v92, 0, v42 :: v_dual_max_f32 v37, v85, v85
	v_max_f32_e32 v38, v84, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v90, 0, v39 :: v_dual_max_f32 v91, 0, v40
	v_dual_max_f32 v39, v83, v83 :: v_dual_max_f32 v40, v82, v82
	v_max_f32_e32 v42, v81, v81
	v_dual_max_f32 v81, 0, v37 :: v_dual_max_f32 v82, 0, v38
	v_dual_max_f32 v37, v79, v79 :: v_dual_max_f32 v38, v78, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v83, 0, v39 :: v_dual_max_f32 v84, 0, v40
	v_max_f32_e32 v85, 0, v42
	v_dual_max_f32 v39, v77, v77 :: v_dual_max_f32 v40, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v42, v75, v75 :: v_dual_max_f32 v93, 0, v37
	v_dual_max_f32 v94, 0, v38 :: v_dual_max_f32 v95, 0, v39
	v_dual_max_f32 v37, v74, v74 :: v_dual_max_f32 v38, v73, v73
	v_dual_max_f32 v1, v113, v113 :: v_dual_max_f32 v2, v144, v144
	v_dual_max_f32 v5, v141, v141 :: v_dual_max_f32 v6, v140, v140
	v_dual_max_f32 v7, v139, v139 :: v_dual_max_f32 v8, v138, v138
	v_max_f32_e32 v9, v136, v136
	v_dual_max_f32 v15, v125, v125 :: v_dual_max_f32 v16, v123, v123
	v_dual_max_f32 v17, v121, v121 :: v_dual_max_f32 v18, v120, v120
	v_max_f32_e32 v19, v119, v119
	v_dual_max_f32 v25, v111, v111 :: v_dual_max_f32 v26, v110, v110
	v_dual_max_f32 v27, v108, v108 :: v_dual_max_f32 v28, v106, v106
	v_max_f32_e32 v29, v105, v105
	v_dual_max_f32 v33, v101, v101 :: v_dual_max_f32 v34, v99, v99
	v_dual_max_f32 v96, 0, v40 :: v_dual_max_f32 v97, 0, v42
	v_dual_max_f32 v39, v72, v72 :: v_dual_max_f32 v40, v71, v71
	v_max_f32_e32 v42, v70, v70
	v_dual_max_f32 v98, 0, v37 :: v_dual_max_f32 v99, 0, v38
	v_max_f32_e32 v38, v67, v67
	v_dual_max_f32 v3, v143, v143 :: v_dual_max_f32 v4, v142, v142
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_max_f32_e32 v12, v133, v133
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, v135, v135
	v_dual_max_f32 v11, v134, v134 :: v_dual_max_f32 v14, v131, v131
	v_max_f32_e32 v13, v132, v132
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v20, v118, v118 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v22, v116, v116 :: v_dual_max_f32 v21, v117, v117
	v_dual_max_f32 v24, v114, v114 :: v_dual_max_f32 v23, v115, v115
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v20, 0, v20
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v30, v104, v104 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v32, v102, v102 :: v_dual_max_f32 v31, v103, v103
	v_dual_max_f32 v100, 0, v39 :: v_dual_max_f32 v37, v68, v68
	v_max_f32_e32 v101, 0, v40
	v_dual_max_f32 v39, v66, v66 :: v_dual_max_f32 v40, v65, v65
	v_max_f32_e32 v103, 0, v38
	v_max_f32_e32 v102, 0, v42
	v_dual_max_f32 v42, v64, v64 :: v_dual_mul_f32 v43, v1, v1
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v25, 0, v25
	v_max_f32_e32 v28, 0, v28
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_max_f32_e32 v34, 0, v34
	v_dual_max_f32 v66, 0, v37 :: v_dual_mul_f32 v47, v4, v4
	v_dual_max_f32 v104, 0, v39 :: v_dual_mul_f32 v51, v6, v6
	v_dual_max_f32 v105, 0, v40 :: v_dual_max_f32 v106, 0, v42
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v55, v8, v8 :: v_dual_mul_f32 v44, v2, v2
	v_dual_mul_f32 v67, v12, v12 :: v_dual_mul_f32 v46, v3, v3
	v_dual_mul_f32 v79, v10, v10 :: v_dual_mul_f32 v50, v5, v5
	v_dual_mul_f32 v71, v14, v14 :: v_dual_mul_f32 v54, v7, v7
	v_dual_mul_f32 v75, v16, v16 :: v_dual_mul_f32 v80, v9, v9
	v_mul_f32_e32 v73, v19, v19
	v_dual_mul_f32 v78, v11, v11 :: v_dual_mul_f32 v77, v17, v17
	v_dual_mul_f32 v70, v13, v13 :: v_dual_mul_f32 v65, v23, v23
	v_dual_mul_f32 v74, v15, v15 :: v_dual_mul_f32 v69, v21, v21
	v_dual_mul_f32 v76, v18, v18 :: v_dual_mul_f32 v57, v25, v25
	v_dual_mul_f32 v72, v20, v20 :: v_dual_mul_f32 v53, v27, v27
	v_dual_mul_f32 v68, v22, v22 :: v_dual_mul_f32 v49, v29, v29
	v_dual_mul_f32 v64, v24, v24 :: v_dual_mul_f32 v45, v31, v31
	v_dual_mul_f32 v56, v26, v26 :: v_dual_mul_f32 v37, v36, v36
	v_dual_mul_f32 v52, v28, v28 :: v_dual_mul_f32 v39, v34, v34
	v_mul_f32_e32 v48, v30, v30
	v_mul_f32_e32 v42, v32, v32
	v_dual_mul_f32 v40, v33, v33 :: v_dual_mul_f32 v31, v90, v90
	v_dual_mul_f32 v38, v35, v35 :: v_dual_mul_f32 v29, v92, v92
	v_dual_mul_f32 v36, v41, v41 :: v_dual_mul_f32 v27, v82, v82
	v_dual_mul_f32 v35, v86, v86 :: v_dual_mul_f32 v34, v89, v89
	v_mul_f32_e32 v25, v84, v84
	v_dual_mul_f32 v33, v87, v87 :: v_dual_mul_f32 v32, v88, v88
	v_dual_mul_f32 v23, v93, v93 :: v_dual_mul_f32 v30, v91, v91
	v_mul_f32_e32 v19, v97, v97
	v_dual_mul_f32 v28, v81, v81 :: v_dual_mul_f32 v21, v95, v95
	v_dual_mul_f32 v26, v83, v83 :: v_dual_mul_f32 v15, v101, v101
	v_dual_mul_f32 v24, v85, v85 :: v_dual_mul_f32 v17, v99, v99
	v_dual_mul_f32 v22, v94, v94 :: v_dual_mul_f32 v7, v104, v104
	v_dual_mul_f32 v20, v96, v96 :: v_dual_mul_f32 v13, v102, v102
	v_dual_mul_f32 v18, v98, v98 :: v_dual_mov_b32 v1, v61
	v_dual_mul_f32 v16, v100, v100 :: v_dual_mul_f32 v5, v106, v106
	v_dual_mul_f32 v10, v66, v66 :: v_dual_mov_b32 v3, v63
	v_mul_f32_e32 v8, v103, v103
	v_mul_f32_e32 v6, v105, v105
	v_mov_b32_e32 v2, v62
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 15 is_stmt 0                ; generate_amdgcn.py:0:15
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v4, v44, v44 :: v_dual_max_f32 v9, v43, v43
	v_max3_f32 v11, v47, v50, v51
	v_max3_f32 v12, v79, v78, v67
	v_max3_f32 v14, v70, v71, v74
	v_max_f32_e32 v41, v77, v77
	v_max_f32_e32 v4, v9, v4
	v_max_f32_e32 v9, v76, v76
	v_max3_f32 v63, v56, v53, v52
	v_max3_f32 v12, v12, v14, v75
	v_max_f32_e32 v14, v40, v40
	v_max3_f32 v4, v4, v46, v11
	v_max_f32_e32 v9, v41, v9
	v_max_f32_e32 v11, v39, v39
	v_max3_f32 v41, v72, v69, v68
	v_max3_f32 v66, v49, v48, v45
	v_max3_f32 v62, v65, v64, v57
	v_max3_f32 v81, v31, v30, v29
	v_max3_f32 v82, v28, v27, v26
	v_max3_f32 v9, v9, v73, v41
	v_max3_f32 v41, v63, v66, v42
	v_max_f32_e32 v66, v23, v23
	v_max_f32_e32 v11, v14, v11
	v_max3_f32 v14, v37, v36, v35
	v_max3_f32 v61, v54, v55, v80
	v_max3_f32 v63, v34, v33, v32
	v_max3_f32 v9, v9, v62, v41
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v11, v11, v38, v14
	v_max3_f32 v14, v81, v82, v25
	v_max_f32_e32 v81, v24, v24
	v_max3_f32 v4, v4, v61, v12
	v_max3_f32 v61, v15, v13, v10
	v_max3_f32 v62, v8, v7, v6
	v_max3_f32 v11, v11, v63, v14
	v_max_f32_e32 v12, v81, v66
	v_max3_f32 v14, v21, v20, v19
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v66, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v63, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v41, v18, v17, v16
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v85, v1, 6, 0
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v12, v12, v22, v14
	v_max3_f32 v14, v61, v62, v5
	v_dual_max_f32 v62, v66, v66 :: v_dual_max_f32 v61, v63, v63
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v66, 3, v0
.Ltmp34:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s4, s29, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v14, v12, v41, v14
	v_max_f32_e32 v82, v9, v62
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v81, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v9, 5, v66
	v_and_b32_e32 v41, 0x80, v0
	v_and_b32_e32 v12, 0x60, v0
.Ltmp37:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s4, s4, 24
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v63, v81, v81
	v_max_f32_e32 v81, v4, v61
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v4, v66, 9, 0
	v_and_or_b32 v3, 0x680, v3, v9
	v_xor_b32_e32 v62, v9, v12
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v83, v11, v63
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v11, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v4, v1, 2, v4
	v_lshrrev_b32_e32 v63, 3, v41
	v_xor_b32_e32 v3, v3, v12
	v_lshlrev_b32_e32 v1, 5, v1
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v61, v11, v11
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v11, 1, v41
	v_lshl_add_u32 v4, v2, 4, v4
	v_add3_u32 v3, v85, v63, v3
.Ltmp44:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s4, s29, s4
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v84, v14, v61
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v2
	v_add3_u32 v4, v4, v11, v62
	ds_store_b128 v4, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v4, v82
	v_mov_b32_e32 v14, v83
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v62, v82, v82 :: v_dual_add_nc_u32 v41, 0, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v3, v81 :: v_dual_max_f32 v4, v4, v4
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v63, v84, v84
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v4, v62, v4 :: v_dual_max_f32 v61, v81, v81
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v62, v84, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v82, v4 :: v_dual_max_f32 v3, v61, v3
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v61, v83, v83 :: v_dual_max_f32 v82, v82, v82
	v_max_f32_e32 v14, v61, v14
	v_max_f32_e32 v61, v63, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v4, v4, v82
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v62, v14 :: v_dual_mov_b32 v81, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v82, v4
	v_mov_b32_dpp v62, v62 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v63, v61
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v62, v62, v62 :: v_dual_max_f32 v81, v81, v81
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v63, v63 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v82, v82, v82
	v_dual_max_f32 v14, v14, v62 :: v_dual_max_f32 v3, v3, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v63, v63, v63 :: v_dual_max_f32 v82, v4, v82
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v62, v14 :: v_dual_mov_b32 v81, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v61, v61, v63
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v63, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v81, v81, v81 :: v_dual_max_f32 v4, v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v81, v3, v81
	v_max_f32_e32 v3, v62, v62
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v62, 1, v12
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v84, v61, v4 :: v_dual_max_f32 v83, v14, v3
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v3, v66, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v41, v62, v2
	v_add3_u32 v1, v3, v1, v2
	ds_store_b128 v4, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v1
.Ltmp67:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, 0x2b8cbccc, v3
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_div_scale_f32 v41, null, 0x40e00000, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v66, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v86, s0, v3, 0x40e00000, v3
	v_rcp_f32_e32 v63, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v83, v66
	v_div_scale_f32 v89, s2, v4, 0x40e00000, v4
	v_div_scale_f32 v61, null, 0x40e00000, 0x40e00000, v2
	v_rcp_f32_e32 v81, v61
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v41, v63, 1.0
	v_fmac_f32_e32 v63, v85, v63
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v85, -v66, v83, 1.0
	v_fma_f32 v87, -v61, v81, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v88, v86, v63
	v_fmac_f32_e32 v83, v85, v83
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v87, v81
	v_fma_f32 v91, -v41, v88, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v89, v83
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v82, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v91, v63
	v_rcp_f32_e32 v62, v14
	v_fma_f32 v91, -v66, v92, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v41, v88, v86
	v_fmac_f32_e32 v92, v91, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v14, v62, 1.0
	v_fmac_f32_e32 v62, v84, v62
	v_div_scale_f32 v84, s1, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v87, v82, v62
	v_mul_f32_e32 v85, v84, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v90, -v14, v87, v82
	v_fma_f32 v93, -v61, v85, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v87, v90, v62
	v_fmac_f32_e32 v85, v93, v81
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v90.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v14, -v14, v87, v82
	v_fma_f32 v61, -v61, v85, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v82.h, v90.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v14, v14, v62, v87
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v62, -v66, v92, v89
	v_div_fmas_f32 v41, v41, v63, v88
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v1, v14, 0x40e00000, v1
	v_div_fmas_f32 v14, v61, v81, v85
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v41, v41, 0x40e00000, v3
	v_div_fmas_f32 v3, v62, v83, v92
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v82.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v2, v14, 0x40e00000, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v14.h, v90.h
	v_mov_b16_e32 v90.l, v41.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v62, v3, 0x40e00000, v4
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v61, 1, v82
	v_mov_b16_e32 v14.l, v2.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v1, v61, 0x7fff
	v_and_b32_e32 v1, 1, v90
	v_mov_b16_e32 v90.l, v62.h
	v_and_b32_e32 v4, 1, v14
.Ltmp68:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v14, 4, v59
.Ltmp69:
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v82, 0xffff0000, v3
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v41, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v87, null, v82, v82, v47
	v_div_scale_f32 v61, null, v82, v82, v43
	v_div_scale_f32 v63, null, v82, v82, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_div_scale_f32 v85, null, v82, v82, v46
	v_rcp_f32_e32 v83, v63
	v_div_scale_f32 v84, vcc_lo, v43, v82, v43
	v_div_scale_f32 v86, s0, v44, v82, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v88, v85
	v_div_scale_f32 v94, null, v82, v82, v50
	v_fma_f32 v97, -v87, v91, 1.0
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v66, 0xffff0000, v1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v89, -v63, v83, 1.0
	v_fmac_f32_e32 v91, v97, v91
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v41, 1, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v90, s1, v46, v82, v46
	v_div_scale_f32 v89, s2, v47, v82, v47
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v62, v41, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v62, v61
	v_mul_f32_e32 v93, v86, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v63, v93, v86
	v_fma_f32 v41, -v61, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v93, v96, v83 :: v_dual_fmac_f32 v62, v41, v62
	v_fma_f32 v41, -v85, v88, 1.0
	v_fma_f32 v63, -v63, v93, v86
	v_div_scale_f32 v86, null, v82, v82, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v84, v62
	v_fmac_f32_e32 v88, v41, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v61, v92, v84
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v81, 0xffff0000, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v98, v90, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v92, v95, v62
	v_rcp_f32_e32 v95, v94
	v_fma_f32 v96, -v85, v98, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v61, v92, v84
	v_mul_f32_e32 v84, v89, v91
	v_fmac_f32_e32 v98, v96, v88
	v_div_scale_f32 v96, null, v82, v82, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v61, v61, v62, v92
	v_rcp_f32_e32 v92, v86
	v_fma_f32 v62, -v94, v95, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v43, v61, v82, v43
	v_fma_f32 v61, -v87, v84, v89
	v_div_fmas_f32 v63, v63, v83, v93
	v_fmac_f32_e32 v95, v62, v95
	v_div_scale_f32 v62, s0, v50, v82, v50
	v_fma_f32 v83, -v86, v92, 1.0
	v_fmac_f32_e32 v84, v61, v91
	v_div_fixup_f32 v44, v63, v82, v44
	v_fma_f32 v63, -v85, v98, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v61, v62, v95 :: v_dual_fmac_f32 v92, v83, v92
	v_div_scale_f32 v83, s3, v51, v82, v51
	v_fma_f32 v87, -v87, v84, v89
	v_div_scale_f32 v93, null, v82, v82, v55
	s_mov_b32 vcc_lo, s1
	v_dual_mul_f32 v90, v83, v92 :: v_dual_and_b32 v41, 0xffff0000, v2
	v_div_fmas_f32 v63, v63, v88, v98
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v85, null, v82, v82, v54
	v_fma_f32 v88, -v94, v61, v62
	v_div_fmas_f32 v84, v87, v91, v84
	v_rcp_f32_e32 v87, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v89, v85
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v61, v88, v95
	v_fma_f32 v88, -v86, v90, v83
	v_div_fixup_f32 v47, v84, v82, v47
	v_div_fixup_f32 v46, v63, v82, v46
	v_div_scale_f32 v63, s1, v54, v82, v54
	v_fma_f32 v62, -v94, v61, v62
	v_fmac_f32_e32 v90, v88, v92
	v_fma_f32 v84, -v93, v87, 1.0
	v_fma_f32 v91, -v85, v89, 1.0
	v_div_scale_f32 v88, null, v82, v82, v80
	v_div_fmas_f32 v61, v62, v95, v61
	v_fma_f32 v62, -v86, v90, v83
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v86, s0, v55, v82, v55
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v89, v91, v89
	v_rcp_f32_e32 v84, v88
	v_div_fmas_f32 v62, v62, v92, v90
	v_mul_f32_e32 v92, v86, v87
	v_div_scale_f32 v91, null, v82, v82, v79
	v_div_fixup_f32 v50, v61, v82, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v51, v62, v82, v51
	v_fma_f32 v61, -v93, v92, v86
	v_mul_f32_e32 v83, v63, v89
	v_rcp_f32_e32 v95, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v88, v84, 1.0
	v_div_scale_f32 v62, s2, v80, v82, v80
	v_fmac_f32_e32 v92, v61, v87
	v_fma_f32 v90, -v85, v83, v63
	v_fmac_f32_e32 v84, v94, v84
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v83, v90, v89
	v_div_scale_f32 v90, null, v82, v82, v78
	v_fma_f32 v94, -v91, v95, 1.0
	v_mul_f32_e32 v61, v62, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v85, v83, v63
	v_rcp_f32_e32 v85, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s3, v79, v82, v79
	v_div_fmas_f32 v63, v63, v89, v83
	v_fma_f32 v83, -v93, v92, v86
	v_fma_f32 v86, -v88, v61, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v89, v94, v95
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v93, -v90, v85, 1.0
	v_div_fmas_f32 v83, v83, v87, v92
	v_fmac_f32_e32 v61, v86, v84
	v_rcp_f32_e32 v86, v96
	v_fma_f32 v87, -v91, v89, v94
	v_fmac_f32_e32 v85, v93, v85
	v_div_scale_f32 v92, s0, v78, v82, v78
	v_div_fixup_f32 v54, v63, v82, v54
	v_div_fixup_f32 v55, v83, v82, v55
	v_fma_f32 v62, -v88, v61, v62
	v_fmac_f32_e32 v89, v87, v95
	v_mul_f32_e32 v63, v92, v85
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v96, v86, 1.0
	v_div_scale_f32 v87, null, v82, v82, v70
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v88, s1, v67, v82, v67
	v_div_fmas_f32 v61, v62, v84, v61
	v_fma_f32 v62, -v91, v89, v94
	v_fma_f32 v84, -v90, v63, v92
	v_fmac_f32_e32 v86, v83, v86
	v_rcp_f32_e32 v83, v87
	v_div_scale_f32 v91, null, v82, v82, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v63, v84, v85
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v61, v61, v82, v80
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v62, v62, v95, v89
	v_mul_f32_e32 v89, v88, v86
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v87, v83, 1.0
	v_div_fixup_f32 v62, v62, v82, v79
	v_fma_f32 v79, -v90, v63, v92
	v_fma_f32 v80, -v96, v89, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v83, v93, v83
	v_fma_f32 v92, -v91, v84, 1.0
	v_div_scale_f32 v93, null, v82, v82, v74
	v_div_scale_f32 v90, s2, v70, v82, v70
	v_fmac_f32_e32 v89, v80, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v92, v84
	v_rcp_f32_e32 v80, v93
	v_div_scale_f32 v92, null, v82, v82, v75
	v_div_fmas_f32 v63, v79, v85, v63
	v_mul_f32_e32 v79, v90, v83
	v_div_scale_f32 v85, s0, v71, v82, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v95, v92
	v_div_fixup_f32 v63, v63, v82, v78
	v_fma_f32 v78, -v96, v89, v88
	v_fma_f32 v88, -v87, v79, v90
	v_mul_f32_e32 v94, v85, v84
	v_fma_f32 v96, -v93, v80, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v78, v78, v86, v89
	v_fmac_f32_e32 v79, v88, v83
	v_fma_f32 v86, -v91, v94, v85
	v_fmac_f32_e32 v80, v96, v80
	v_div_scale_f32 v88, s1, v74, v82, v74
	v_fma_f32 v89, -v92, v95, 1.0
	v_div_fixup_f32 v67, v78, v82, v67
	v_fma_f32 v78, -v87, v79, v90
	v_fmac_f32_e32 v94, v86, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v86, v88, v80 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v89, null, v81, v81, v77
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v87, s3, v75, v82, v75
	v_div_fmas_f32 v78, v78, v83, v79
	v_fma_f32 v79, -v91, v94, v85
	v_fma_f32 v83, -v93, v86, v88
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v91, null, v81, v81, v76
	v_mul_f32_e32 v90, v87, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v83, v80
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v79, v79, v84, v94
	v_fma_f32 v84, -v92, v90, v87
	v_div_fixup_f32 v70, v78, v82, v70
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v85, 1.0
	v_fma_f32 v78, -v93, v86, v88
	v_div_fixup_f32 v71, v79, v82, v71
	v_fmac_f32_e32 v90, v84, v95
	v_div_scale_f32 v79, s0, v77, v81, v77
	v_fmac_f32_e32 v85, v94, v85
	v_fma_f32 v84, -v91, v83, 1.0
	v_div_scale_f32 v88, null, v81, v81, v73
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v78, v78, v80, v86
	v_fma_f32 v80, -v92, v90, v87
	v_dual_mul_f32 v86, v79, v85 :: v_dual_fmac_f32 v83, v84, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v87, s1, v76, v81, v76
	v_div_scale_f32 v92, null, v81, v81, v72
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v93, v87, v83
	v_div_fmas_f32 v80, v80, v95, v90
	v_fma_f32 v90, -v89, v86, v79
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v84, 1.0
	v_div_fixup_f32 v74, v78, v82, v74
	v_fma_f32 v78, -v91, v93, v87
	v_fmac_f32_e32 v86, v90, v85
	v_div_fixup_f32 v75, v80, v82, v75
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v80, s2, v73, v81, v73
	v_div_scale_f32 v82, null, v81, v81, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v79, -v89, v86, v79
	v_fmac_f32_e32 v93, v78, v83
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v78, v80, v84
	v_rcp_f32_e32 v89, v82
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v90, s3, v72, v81, v72
	v_div_fmas_f32 v79, v79, v85, v86
	v_fma_f32 v85, -v91, v93, v87
	v_div_scale_f32 v94, null, v81, v81, v68
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v86, -v88, v78, v80
	v_mul_f32_e32 v87, v90, v95
	v_div_fmas_f32 v83, v85, v83, v93
	v_rcp_f32_e32 v85, v94
	v_fma_f32 v91, -v82, v89, 1.0
	v_fmac_f32_e32 v78, v86, v84
	v_fma_f32 v86, -v92, v87, v90
	v_div_fixup_f32 v76, v83, v81, v76
	v_div_fixup_f32 v77, v79, v81, v77
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s0, v69, v81, v69
	v_fmac_f32_e32 v87, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v94, v85, 1.0
	v_div_scale_f32 v86, null, v81, v81, v65
	v_fma_f32 v79, -v88, v78, v80
	v_mul_f32_e32 v80, v91, v89
	v_fmac_f32_e32 v85, v83, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v88, s1, v68, v81, v68
	v_div_fmas_f32 v78, v79, v84, v78
	v_fma_f32 v79, -v92, v87, v90
	v_fma_f32 v84, -v82, v80, v91
	v_div_scale_f32 v90, null, v81, v81, v64
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v86, v83, 1.0
	v_fmac_f32_e32 v80, v84, v89
	v_rcp_f32_e32 v84, v90
	v_div_fmas_f32 v79, v79, v95, v87
	v_mul_f32_e32 v87, v88, v85
	v_div_fixup_f32 v73, v78, v81, v73
	v_fma_f32 v78, -v82, v80, v91
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v81, v81, v57
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v72, v79, v81, v72
	v_fma_f32 v79, -v94, v87, v88
	v_div_scale_f32 v82, s2, v65, v81, v65
	v_fma_f32 v91, -v90, v84, 1.0
	v_div_fmas_f32 v78, v78, v89, v80
	v_rcp_f32_e32 v80, v92
	v_fmac_f32_e32 v87, v79, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v79, v82, v83 :: v_dual_fmac_f32 v84, v91, v84
	v_div_scale_f32 v89, s0, v64, v81, v64
	v_div_scale_f32 v91, null, v81, v81, v56
	v_div_fixup_f32 v69, v78, v81, v69
	v_fma_f32 v78, -v94, v87, v88
	v_fma_f32 v88, -v86, v79, v82
	v_mul_f32_e32 v93, v89, v84
	v_rcp_f32_e32 v94, v91
	v_fma_f32 v95, -v92, v80, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v79, v88, v83
	v_div_fmas_f32 v78, v78, v85, v87
	v_fma_f32 v85, -v90, v93, v89
	v_fmac_f32_e32 v80, v95, v80
	v_div_scale_f32 v87, s1, v57, v81, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v68, v78, v81, v68
	v_fma_f32 v88, -v91, v94, 1.0
	v_fma_f32 v78, -v86, v79, v82
	v_fmac_f32_e32 v93, v85, v84
	v_mul_f32_e32 v82, v87, v80
	v_div_scale_f32 v86, null, v81, v81, v53
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v94, v88, v94
	v_div_scale_f32 v85, s3, v56, v81, v56
	v_div_fmas_f32 v78, v78, v83, v79
	v_fma_f32 v79, -v90, v93, v89
	v_fma_f32 v83, -v92, v82, v87
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v90, null, v81, v81, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v89, v85, v94 :: v_dual_fmac_f32 v82, v83, v80
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v79, v79, v84, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v91, v89, v85
	v_div_fixup_f32 v65, v78, v81, v65
	v_fma_f32 v93, -v86, v88, 1.0
	v_fma_f32 v78, -v92, v82, v87
	v_div_fixup_f32 v64, v79, v81, v64
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v79, s0, v53, v81, v53
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v84, -v90, v83, 1.0
	v_div_scale_f32 v87, null, v81, v81, v49
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v95, null, v81, v81, v42
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v91, v89, v85
	v_dual_mul_f32 v82, v79, v88 :: v_dual_fmac_f32 v83, v84, v83
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v85, s1, v52, v81, v52
	v_div_scale_f32 v91, null, v81, v81, v48
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v92, v85, v83
	v_div_fmas_f32 v80, v80, v94, v89
	v_fma_f32 v89, -v86, v82, v79
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v84, 1.0
	v_div_fixup_f32 v57, v78, v81, v57
	v_fma_f32 v78, -v90, v92, v85
	v_fmac_f32_e32 v82, v89, v88
	v_div_scale_f32 v89, null, v81, v81, v45
	v_div_fixup_f32 v56, v80, v81, v56
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v80, s2, v49, v81, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v79, -v86, v82, v79
	v_fmac_f32_e32 v92, v78, v83
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v78, v80, v84
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s3, v48, v81, v48
	v_div_fmas_f32 v79, v79, v88, v82
	v_fma_f32 v82, -v90, v92, v85
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v85, -v87, v78, v80
	v_mul_f32_e32 v88, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v78, v85, v84
	v_fma_f32 v85, -v91, v88, v93
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s0, v45, v81, v45
	v_div_fixup_f32 v53, v79, v81, v53
	v_div_fixup_f32 v52, v82, v81, v52
	v_fma_f32 v79, -v87, v78, v80
	v_fmac_f32_e32 v88, v85, v94
	v_mul_f32_e32 v80, v90, v86
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v66, v66, v40
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v87, s1, v42, v81, v42
	v_div_fmas_f32 v78, v79, v84, v78
	v_fma_f32 v79, -v91, v88, v93
	v_fma_f32 v84, -v89, v80, v90
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v91, null, v66, v66, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v84, v86
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v49, v78, v81, v49
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v79, v79, v94, v88
	v_fma_f32 v78, -v89, v80, v90
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v85, v82, 1.0
	v_div_scale_f32 v89, s2, v40, v66, v40
	v_div_fixup_f32 v48, v79, v81, v48
	v_div_fmas_f32 v78, v78, v86, v80
	v_fmac_f32_e32 v82, v92, v82
	v_mul_f32_e32 v88, v87, v83
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v92, null, v66, v66, v38
	v_div_scale_f32 v86, s0, v39, v66, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v95, v88, v87
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, null, v66, v66, v37
	v_rcp_f32_e32 v80, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v88, v79, v83 :: v_dual_mul_f32 v79, v89, v82
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v45, v78, v81, v45
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fma_f32 v78, -v95, v88, v87
	v_fma_f32 v87, -v85, v79, v89
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v57, v57
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v95, -v92, v80, 1.0
	v_div_fmas_f32 v78, v78, v83, v88
	v_fmac_f32_e32 v79, v87, v82
	v_fma_f32 v88, -v90, v94, 1.0
	v_mul_f32_e32 v93, v86, v84
	v_fmac_f32_e32 v80, v95, v80
	v_div_scale_f32 v87, s1, v38, v66, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v88, v94
	v_fma_f32 v83, -v91, v93, v86
	v_div_fixup_f32 v42, v78, v81, v42
	v_fma_f32 v78, -v85, v79, v89
	v_mul_f32_e32 v81, v87, v80
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v93, v83, v84
	v_div_scale_f32 v83, s3, v37, v66, v37
	v_div_fmas_f32 v78, v78, v82, v79
	v_fma_f32 v82, -v92, v81, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v91, v93, v86
	v_mul_f32_e32 v88, v83, v94
	v_div_scale_f32 v89, null, v66, v66, v35
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v85, null, v66, v66, v36
	v_div_fmas_f32 v79, v79, v84, v93
	v_fmac_f32_e32 v81, v82, v80
	v_rcp_f32_e32 v82, v89
	v_fma_f32 v84, -v90, v88, v83
	v_rcp_f32_e32 v86, v85
	v_div_fixup_f32 v40, v78, v66, v40
	v_fma_f32 v78, -v92, v81, v87
	v_div_scale_f32 v87, null, v66, v66, v34
	v_fmac_f32_e32 v88, v84, v94
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v39, v79, v66, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v84, -v89, v82, 1.0
	v_div_fmas_f32 v78, v78, v80, v81
	v_fma_f32 v80, -v90, v88, v83
	v_rcp_f32_e32 v83, v87
	v_div_scale_f32 v90, null, v66, v66, v33
	v_fma_f32 v91, -v85, v86, 1.0
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, s1, v35, v66, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v90
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v79, s0, v36, v66, v36
	v_div_fmas_f32 v80, v80, v94, v88
	v_fma_f32 v92, -v87, v83, 1.0
	v_fmac_f32_e32 v86, v91, v86
	v_mul_f32_e32 v91, v84, v82
	v_div_fixup_f32 v38, v78, v66, v38
	v_div_fixup_f32 v37, v80, v66, v37
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v80, s2, v34, v66, v34
	v_fma_f32 v78, -v89, v91, v84
	v_fma_f32 v92, -v90, v93, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v94, null, v66, v66, v31
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v93, v92, v93
	v_dual_fmac_f32 v91, v78, v82 :: v_dual_mul_f32 v78, v80, v83
	v_mul_f32_e32 v81, v79, v86
	v_div_scale_f32 v92, s3, v33, v66, v33
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v88, -v85, v81, v79
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v39, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v81, v88, v86
	v_div_scale_f32 v88, null, v66, v66, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v85, v81, v79
	v_rcp_f32_e32 v85, v88
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v69, v69
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v79, v79, v86, v81
	v_fma_f32 v81, -v89, v91, v84
	v_fma_f32 v84, -v87, v78, v80
	v_mul_f32_e32 v86, v92, v93
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v36, v79, v66, v36
	v_fma_f32 v89, -v88, v85, 1.0
	v_fmac_f32_e32 v78, v84, v83
	v_fma_f32 v84, -v90, v86, v92
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v49, v49
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v87, v78, v80
	v_fmac_f32_e32 v86, v84, v93
	v_div_fmas_f32 v81, v81, v82, v91
	v_rcp_f32_e32 v82, v94
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v87, s1, v31, v66, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v35, v81, v66, v35
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v90, v86, v92
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v84, null, v66, v66, v30
	v_fma_f32 v81, -v94, v82, 1.0
	v_div_scale_f32 v90, null, v66, v66, v29
	v_div_fixup_f32 v34, v78, v66, v34
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v82, v81, v82
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s0, v32, v66, v32
	v_div_fmas_f32 v79, v79, v93, v86
	v_mul_f32_e32 v86, v87, v82
	v_rcp_f32_e32 v81, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v89, v85
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v33, v79, v66, v33
	v_fma_f32 v79, -v94, v86, v87
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v48, v48
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v83, -v88, v80, v89
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v91, -v84, v81, 1.0
	v_fmac_f32_e32 v80, v83, v85
	v_rcp_f32_e32 v83, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v88, v80, v89
	v_div_scale_f32 v88, s2, v30, v66, v30
	v_div_fmas_f32 v78, v78, v85, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v90, v83, 1.0
	v_div_scale_f32 v85, s0, v29, v66, v29
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v78, v66, v32
	v_fmac_f32_e32 v83, v89, v83
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v66, v66, v28
	v_div_scale_f32 v89, null, v66, v66, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v92, v85, v83
	v_rcp_f32_e32 v80, v91
	v_dual_fmac_f32 v86, v79, v82 :: v_dual_mul_f32 v79, v88, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v93, v89
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v78, -v94, v86, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v84, v79, v88
	v_fma_f32 v94, -v91, v80, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v78, v78, v82, v86
	v_fma_f32 v82, -v90, v92, v85
	v_div_scale_f32 v86, s1, v28, v66, v28
	v_dual_fmac_f32 v80, v94, v80 :: v_dual_fmac_f32 v79, v87, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v82, v83
	v_fma_f32 v87, -v89, v93, 1.0
	v_div_fixup_f32 v31, v78, v66, v31
	v_mul_f32_e32 v82, v86, v80
	v_fma_f32 v78, -v84, v79, v88
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v87, null, v66, v66, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v90, v92, v85
	v_div_scale_f32 v84, s3, v27, v66, v27
	v_rcp_f32_e32 v85, v87
	v_fma_f32 v81, -v91, v82, v86
	v_div_scale_f32 v90, null, v66, v66, v25
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v88, v84, v93
	v_div_fmas_f32 v79, v79, v83, v92
	v_div_fixup_f32 v30, v78, v66, v30
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v92, -v87, v85, 1.0
	v_fmac_f32_e32 v82, v81, v80
	v_rcp_f32_e32 v81, v90
	v_fma_f32 v83, -v89, v88, v84
	v_div_fixup_f32 v29, v79, v66, v29
	v_fmac_f32_e32 v85, v92, v85
	v_fma_f32 v78, -v91, v82, v86
	v_div_scale_f32 v79, s0, v26, v66, v26
	v_fmac_f32_e32 v88, v83, v93
	v_div_scale_f32 v91, null, v41, v41, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v90, v81, 1.0
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v89, v88, v84
	v_mul_f32_e32 v82, v79, v85
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, null, v41, v41, v24
	v_div_fmas_f32 v80, v80, v93, v88
	v_fma_f32 v88, -v87, v82, v79
	v_div_scale_f32 v84, s1, v25, v66, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v86, v83
	v_div_fixup_f32 v27, v80, v66, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v88, v85
	v_rcp_f32_e32 v80, v91
	v_div_fixup_f32 v28, v78, v66, v28
	v_div_scale_f32 v93, null, v41, v41, v21
	v_fma_f32 v79, -v87, v82, v79
	v_div_scale_f32 v87, null, v41, v41, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v83, v86, 1.0
	v_rcp_f32_e32 v95, v93
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v91, v80, 1.0
	v_div_fmas_f32 v79, v79, v85, v82
	v_fmac_f32_e32 v86, v88, v86
	v_mul_f32_e32 v89, v84, v81
	v_rcp_f32_e32 v88, v87
	v_fmac_f32_e32 v80, v92, v80
	v_div_fixup_f32 v26, v79, v66, v26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v78, -v90, v89, v84
	v_fma_f32 v79, -v93, v95, 1.0
	v_div_scale_f32 v85, s0, v23, v41, v23
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v89, v78, v81
	v_div_scale_f32 v78, s2, v24, v41, v24
	v_fmac_f32_e32 v95, v79, v95
	v_div_scale_f32 v79, s1, v21, v41, v21
	v_fma_f32 v82, -v90, v89, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v84, v78, v86
	v_fma_f32 v90, -v87, v88, 1.0
	v_mul_f32_e32 v94, v85, v80
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v81, v82, v81, v89
	v_fma_f32 v92, -v83, v84, v78
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v25, v81, v66, v25
	v_fmac_f32_e32 v84, v92, v86
	v_div_scale_f32 v81, null, v41, v41, v20
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v66, -v83, v84, v78
	v_dual_mul_f32 v83, v79, v95 :: v_dual_fmac_f32 v88, v90, v88
	v_div_scale_f32 v90, s3, v22, v41, v22
	v_fma_f32 v82, -v91, v94, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v66, v86, v84
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v89, v90, v88
	v_div_scale_f32 v84, null, v41, v41, v19
	v_fmac_f32_e32 v94, v82, v80
	v_div_fixup_f32 v24, v66, v41, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v87, v89, v90
	v_rcp_f32_e32 v86, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v91, v94, v85
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v89, v78, v88
	v_rcp_f32_e32 v78, v81
	v_div_fmas_f32 v80, v82, v80, v94
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v87, v89, v90
	v_fma_f32 v87, -v93, v83, v79
	v_div_fixup_f32 v23, v80, v41, v23
	v_fma_f32 v80, -v84, v86, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v81, v78, 1.0
	v_fmac_f32_e32 v83, v87, v95
	v_div_fmas_f32 v82, v82, v88, v89
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v78, v85, v78
	v_div_scale_f32 v85, s0, v20, v41, v20
	v_div_fixup_f32 v22, v82, v41, v22
	v_div_scale_f32 v82, null, v41, v41, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v66, v85, v78
	v_fma_f32 v79, -v93, v83, v79
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v88, v82
	v_fma_f32 v87, -v81, v66, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v79, v79, v95, v83
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v66, v87, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v79, v41, v21
	v_div_scale_f32 v87, null, v41, v41, v17
	v_fma_f32 v79, -v81, v66, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v82, v88, 1.0
	v_rcp_f32_e32 v89, v87
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v66, v79, v78, v66
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, null, v41, v41, v15
	v_div_scale_f32 v79, s0, v18, v41, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v66, v41, v20
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v87, v89, 1.0
	v_div_scale_f32 v78, null, v41, v41, v16
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v89, v66, v89
	v_div_scale_f32 v66, s1, v17, v41, v17
	v_fma_f32 v93, -v85, v91, 1.0
	v_fmac_f32_e32 v86, v80, v86
	v_div_scale_f32 v80, s2, v19, v41, v19
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v92, s2, v16, v41, v16
	v_mul_f32_e32 v83, v80, v86
	v_div_scale_f32 v93, s3, v15, v41, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v84, v83, v80
	v_fmac_f32_e32 v83, v81, v86
	v_rcp_f32_e32 v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v84, v83, v80
	v_mul_f32_e32 v84, v79, v88
	v_div_fmas_f32 v80, v80, v86, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v83, -v82, v84, v79
	v_mul_f32_e32 v86, v66, v89
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v90, -v78, v81, 1.0
	v_div_fixup_f32 v19, v80, v41, v19
	v_fmac_f32_e32 v84, v83, v88
	v_fma_f32 v83, -v87, v86, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v90, null, v41, v41, v13
	v_fma_f32 v79, -v82, v84, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v83, v89
	v_mul_f32_e32 v95, v92, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v94, v90
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v79, v79, v88, v84
	v_fma_f32 v66, -v87, v86, v66
	v_div_scale_f32 v84, null, v41, v41, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v18, v79, v41, v18
	v_div_fmas_f32 v66, v66, v89, v86
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v80, -v78, v95, v92
	v_fma_f32 v83, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v17, v66, v41, v17
	v_div_scale_f32 v88, null, v41, v41, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v95, v80, v81 :: v_dual_fmac_f32 v94, v83, v94
	v_div_scale_f32 v83, s0, v13, v41, v13
	v_fma_f32 v79, -v84, v86, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v78, v95, v92
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v86, v79, v86
	v_mul_f32_e32 v82, v93, v91
	v_div_fmas_f32 v78, v78, v81, v95
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v79, null, v41, v41, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v85, v82, v93
	v_div_fixup_f32 v16, v78, v41, v16
	v_div_scale_f32 v78, null, v41, v41, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v80, v91
	v_mul_f32_e32 v80, v83, v94
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v81, -v85, v82, v93
	v_fma_f32 v85, -v90, v80, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v81, v91, v82
	v_fmac_f32_e32 v80, v85, v94
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v81, v41, v15
	v_fma_f32 v66, -v90, v80, v83
	v_div_scale_f32 v81, null, v41, v41, v6
	v_rcp_f32_e32 v83, v79
	v_rcp_f32_e32 v90, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v94, v80
	v_rcp_f32_e32 v80, v78
	v_rcp_f32_e32 v85, v81
	v_div_scale_f32 v82, vcc_lo, v10, v41, v10
	v_div_fixup_f32 v13, v66, v41, v13
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v87, v82, v86
	v_fma_f32 v89, -v79, v83, 1.0
	v_fma_f32 v94, -v88, v90, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v66, -v78, v80, 1.0
	v_fma_f32 v92, -v81, v85, 1.0
	v_fma_f32 v91, -v84, v87, v82
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, s1, v7, v41, v7
	v_fmac_f32_e32 v80, v66, v80
	v_div_scale_f32 v66, s0, v8, v41, v8
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s2, v6, v41, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v66, v80
	v_fmac_f32_e32 v87, v91, v86
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s3, v5, v41, v5
	v_fma_f32 v91, -v78, v93, v66
	v_dual_mul_f32 v95, v89, v83 :: v_dual_mul_f32 v96, v92, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v97, v94, v90
	v_fma_f32 v82, -v84, v87, v82
	v_fmac_f32_e32 v93, v91, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v84, -v79, v95, v89
	v_fma_f32 v91, -v81, v96, v92
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v82, v82, v86, v87
	v_fma_f32 v66, -v78, v93, v66
	v_fma_f32 v78, -v88, v97, v94
	v_dual_fmac_f32 v95, v84, v83 :: v_dual_fmac_f32 v96, v91, v85
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v10, v82, v41, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v97, v78, v90
	v_fma_f32 v79, -v79, v95, v89
	v_fma_f32 v78, -v81, v96, v92
	v_div_fmas_f32 v66, v66, v80, v93
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v80, -v88, v97, v94
	v_div_fmas_f32 v79, v79, v83, v95
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v8, v66, v41, v8
	v_div_fmas_f32 v78, v78, v85, v96
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v7, v79, v41, v7
	v_div_fmas_f32 v80, v80, v90, v97
	s_mov_b32 s0, 0xc1000000
	v_div_fixup_f32 v6, v78, v41, v6
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v56, v56, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v5, v80, v41, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v41, v43
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v46
	v_rndne_f32_e32 v46, v47
	v_rndne_f32_e32 v47, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v61
	v_rndne_f32_e32 v61, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v67
	v_rndne_f32_e32 v67, v71
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v55, v55, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v75, v76
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v66, v70
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v74, v77
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v75, v75, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v76, v40
	v_cvt_i32_f32_e32 v80, v36
	v_cvt_i32_f32_e32 v97, v19
	v_cvt_i32_f32_e32 v10, v10
	v_and_b32_e32 v19, 15, v55
	v_and_b32_e32 v36, 15, v56
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v55, 10, v0
	v_and_b32_e32 v56, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v81, v35
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v104, v6
	v_and_b32_e32 v6, 15, v43
	v_and_b32_e32 v35, 15, v57
	v_and_b32_e32 v43, 15, v76
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v55, 0x1800, v55
	v_lshlrev_b32_e32 v57, 6, v56
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v76, 15, v10
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v10, v60, v12
	v_lshlrev_b32_e32 v12, 6, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v77, v39
	v_cvt_i32_f32_e32 v78, v38
	v_cvt_i32_f32_e32 v79, v37
	v_cvt_i32_f32_e32 v88, v28
	v_cvt_i32_f32_e32 v92, v24
	v_cvt_i32_f32_e32 v93, v23
	v_cvt_i32_f32_e32 v94, v22
	v_cvt_i32_f32_e32 v95, v21
	v_and_b32_e32 v28, 15, v75
	v_and_b32_e32 v75, 15, v13
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v13, 0, v55, v57
	v_and_or_b32 v9, 0x1b00, v12, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v84, v32
	v_cvt_i32_f32_e32 v85, v31
	v_cvt_i32_f32_e32 v86, v30
	v_cvt_i32_f32_e32 v87, v29
	v_cvt_i32_f32_e32 v100, v16
	v_cvt_i32_f32_e32 v101, v15
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v83, v33
	v_cvt_i32_f32_e32 v89, v27
	v_cvt_i32_f32_e32 v98, v18
	v_cvt_i32_f32_e32 v99, v17
	v_cvt_i32_f32_e32 v102, v8
	v_cvt_i32_f32_e32 v103, v7
	v_cvt_i32_f32_e32 v105, v5
	v_and_b32_e32 v5, 15, v41
	v_and_b32_e32 v7, 15, v44
	v_and_b32_e32 v8, 15, v46
	v_and_b32_e32 v15, 15, v47
	v_and_b32_e32 v16, 15, v50
	v_and_b32_e32 v17, 15, v51
	v_and_b32_e32 v18, 15, v54
	v_and_b32_e32 v23, 15, v66
	v_and_b32_e32 v24, 15, v67
	v_and_b32_e32 v27, 15, v74
	v_and_b32_e32 v29, 15, v73
	v_and_b32_e32 v30, 15, v72
	v_and_b32_e32 v32, 15, v68
	v_and_b32_e32 v33, 15, v65
	v_and_b32_e32 v41, 15, v45
	v_and_b32_e32 v44, 15, v77
	v_and_b32_e32 v45, 15, v78
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v65, 15, v92
	v_and_b32_e32 v66, 15, v93
	v_and_b32_e32 v67, 15, v94
	v_and_b32_e32 v68, 15, v95
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v13, v13, v10, v11
	v_xad_u32 v55, v9, v59, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v90, v26
	v_cvt_i32_f32_e32 v91, v25
	v_cvt_i32_f32_e32 v96, v20
	v_and_b32_e32 v20, 15, v61
	v_and_b32_e32 v21, 15, v62
	v_and_b32_e32 v22, 15, v63
	v_and_b32_e32 v25, 15, v70
	v_and_b32_e32 v26, 15, v71
	v_and_b32_e32 v37, 15, v53
	v_and_b32_e32 v38, 15, v52
	v_and_b32_e32 v51, 15, v84
	v_and_b32_e32 v52, 15, v85
	v_and_b32_e32 v53, 15, v86
	v_and_b32_e32 v54, 15, v87
	v_and_b32_e32 v73, 15, v100
	v_and_b32_e32 v74, 15, v101
	v_cvt_i32_f32_e32 v82, v34
	v_and_b32_e32 v31, 15, v69
	v_and_b32_e32 v34, 15, v64
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v13, v[5:8]
	ds_store_b128 v13, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v55
	ds_load_b128 v[9:12], v55 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v13, v[27:30]
	ds_store_b128 v13, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v55
	ds_load_b128 v[27:30], v55 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v13, v[43:46]
	ds_store_b128 v13, v[51:54] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v55
	ds_load_b128 v[43:46], v55 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v13, v[65:68]
	ds_store_b128 v13, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v55
	ds_load_b128 v[65:68], v55 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v13, v[15:18]
	ds_store_b128 v13, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v55
	ds_load_b128 v[23:26], v55 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v39, 15, v49
	v_and_b32_e32 v40, 15, v48
	v_and_b32_e32 v42, 15, v42
	v_and_b32_e32 v47, 15, v80
	v_and_b32_e32 v48, 15, v81
	v_and_b32_e32 v49, 15, v82
	v_and_b32_e32 v50, 15, v83
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v13, v[31:34]
	ds_store_b128 v13, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v55
	ds_load_b128 v[39:42], v55 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v61, 15, v88
	v_and_b32_e32 v62, 15, v89
	v_and_b32_e32 v63, 15, v90
	v_and_b32_e32 v64, 15, v91
	v_and_b32_e32 v69, 15, v96
	v_and_b32_e32 v70, 15, v97
	v_and_b32_e32 v71, 15, v98
	v_and_b32_e32 v72, 15, v99
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v13, v[47:50]
	ds_store_b128 v13, v[61:64] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v55
	ds_load_b128 v[59:62], v55 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v77, 15, v102
	v_and_b32_e32 v78, 15, v103
	v_and_b32_e32 v79, 15, v104
	v_and_b32_e32 v80, 15, v105
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v13, v[69:72]
	ds_store_b128 v13, v[77:80] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v55
	ds_load_b128 v[73:76], v55 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v9, 4, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v6, v10, 4, v6
	v_lshl_or_b32 v7, v11, 4, v7
	v_lshl_or_b32 v8, v12, 4, v8
	v_lshl_or_b32 v9, v23, 4, v15
	v_lshl_or_b32 v10, v24, 4, v16
	v_lshl_or_b32 v11, v25, 4, v17
	v_lshl_or_b32 v12, v26, 4, v18
	v_lshl_or_b32 v23, v44, 4, v36
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v36, 3, v58
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s30, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v14, s0, v14
	s_mul_i32 s2, s31, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v27, 4, v19
	v_lshl_or_b32 v15, v28, 4, v20
	v_lshl_or_b32 v16, v29, 4, v21
	v_lshl_or_b32 v17, v30, 4, v22
	v_lshl_or_b32 v18, v39, 4, v31
	v_lshl_or_b32 v19, v40, 4, v32
	v_lshl_or_b32 v20, v41, 4, v33
	v_lshl_or_b32 v21, v42, 4, v34
	v_lshl_or_b32 v25, v46, 4, v38
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v12.l
	v_and_b16 v5.h, 0xff, v11.l
	v_lshlrev_b16 v6.l, 8, v10.l
	v_and_b16 v6.h, 0xff, v9.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v26, v59, 4, v47
	v_lshl_or_b32 v27, v60, 4, v48
	v_lshl_or_b32 v28, v61, 4, v49
	v_lshl_or_b32 v29, v62, 4, v50
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v40, v38, v14
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v2.l, 0xff, v16.l
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v4.l, 0xff, v13.l
	v_lshlrev_b16 v5.l, 8, v21.l
	v_and_b16 v5.h, 0xff, v20.l
	v_lshlrev_b16 v6.l, 8, v19.l
	v_and_b16 v6.h, 0xff, v18.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	v_add3_u32 v41, v14, s1, v38
	v_add3_u32 v42, v14, s2, v38
	v_add3_u32 v14, v14, s0, v38
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s1, s17, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s16
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v22, v43, 4, v35
	v_lshl_or_b32 v24, v45, 4, v37
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v34, v73, 4, v69
	v_lshl_or_b32 v35, v74, 4, v70
	v_lshl_or_b32 v37, v75, 4, v71
	v_lshl_or_b32 v39, v76, 4, v72
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
	buffer_store_b64 v[7:8], v41, s[0:3], 0 offen
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v30, v65, 4, v51
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v39.l
	v_or_b16 v8.l, v6.h, v6.l
	v_and_b16 v5.h, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v35.l
	v_and_b16 v6.h, 0xff, v34.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v31, v66, 4, v52
	v_lshl_or_b32 v32, v67, 4, v53
	v_lshl_or_b32 v33, v68, 4, v54
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v25.l
	v_and_b16 v2.l, 0xff, v24.l
	v_lshlrev_b16 v3.l, 8, v23.l
	v_and_b16 v4.l, 0xff, v22.l
	v_or_b16 v10.h, v5.h, v5.l
	v_or_b16 v10.l, v6.h, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v5, 4, v0
	v_lshrrev_b32_e32 v6, 2, v56
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
	buffer_store_b64 v[9:10], v14, s[0:3], 0 offen
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
.Ltmp70:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp71:
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 183
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21164
; TotalNumSgprs: 34
; NumVgprs: 183
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 34
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
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
	.quad	.Ltmp66-.Lfunc_begin0
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
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     183
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
