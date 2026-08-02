	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0xff
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s18, 63
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s8, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s5, s5, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s8, s9
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp10:
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
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s7, s6, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s6, s6, s5
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s8, s8, s7
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
	s_sub_i32 s2, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s2, s8
	s_sub_i32 s6, s5, s6
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s4, 63
.Ltmp12:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s6, s6, s7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	s_mov_b32 s7, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_lshl_b32 s29, s19, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr29
.LBB0_3:                                ; %Flow
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v59, 15, v0
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v58, 0xf0, v0
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
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	s_lshl_b32 s28, s6, 6
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s2, s2, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp13:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s4, 31
.Ltmp14:
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s5, 31
.Ltmp16:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s4, s1, 31
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v4, 3, v0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s4, s4, 27
	v_mul_lo_u32 v2, s18, v2
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s5, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s1, s4
	s_mov_b32 s4, 0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s5, 6
	v_or_b32_e32 v11, s28, v59
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_bfe_i32 v5, v0, 2, 1
	v_or_b32_e32 v12, 16, v11
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
.Ltmp22:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_and_b32_e32 v6, 56, v4
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s1, s1, 5
	v_lshlrev_b32_e32 v7, 5, v0
	v_lshlrev_b32_e32 v8, 4, v0
	v_and_b32_e32 v5, 0x90, v5
	v_add3_u32 v65, v2, v6, s28
	v_bfe_i32 v2, v0, 3, 1
	v_or_b32_e32 v14, 32, v11
	v_mul_lo_u32 v82, v11, s1
	v_or_b32_e32 v11, 48, v11
	v_mul_lo_u32 v85, v12, s1
	v_and_b32_e32 v2, 0x110, v2
	v_lshrrev_b32_e32 v12, 6, v0
.Ltmp24:
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v1, 3, v58
	v_and_b32_e32 v9, 0x60, v7
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v8, 0xe00, v8
	v_xor_b32_e32 v2, v5, v2
	v_mul_lo_u32 v94, v14, s1
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v14, 2, v0
	v_mul_lo_u32 v96, v11, s1
	v_dual_mov_b32 v140, 0 :: v_dual_and_b32 v11, 2, v12
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v12, 1, v58
	v_mul_lo_u32 v6, s19, v1
	v_lshl_or_b32 v1, v59, 9, v1
	v_or3_b32 v2, v9, v8, v2
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v14, 0x1c0, v14
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v15, 1, v0
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v7, 32, v7
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v11, 0, v11
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v103, 0, v12
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v3, 4, v59
	v_xor_b32_e32 v5, 0x90, v1
	v_or_b32_e32 v8, 0x3f0, v0
	v_xor_b32_e32 v10, 0x110, v1
	v_or_b32_e32 v9, 0x7f0, v0
	v_xor_b32_e32 v13, 16, v2
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v15, 28, v15
	v_add3_u32 v11, v11, v14, v7
	v_add3_u32 v12, v103, v12, v7
	v_add_nc_u32_e32 v76, 0, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v57, v6, v3, s2
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v118, 0, v4
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v120, 0, v1
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v122, 0, v5
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v124, 0, v8
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v126, 0, v2
	v_mov_b32_e32 v1, s4
	v_or_b32_e32 v105, s2, v0
	v_lshl_add_u32 v108, s18, 5, v65
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v123, 0, v10
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v125, 0, v9
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v133, 0, v13
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v141, v11, v15
	v_mov_b32_e32 v112, 0
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v142, v12, v15
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_mov_b32_e32 v61, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s29, s19, 5
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
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s5, s5, 6
	v_mad_u64_u32 v[19:20], null, s5, s19, v[57:58]
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s6, s5, s18
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v9, s6, v65
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v13, s19, v19
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[17:18], v9, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v19, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v118, v[17:18] offset:16384
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
	ds_store_b16 v120, v9
	v_lshrrev_b32_e32 v9, 24, v17
	v_and_b16 v9.h, 0xff, v17.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v16.l
	ds_store_b16 v120, v9 offset:32
	v_and_b16 v9.l, 0xff, v13.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v120, v9 offset:64
	v_lshrrev_b32_e32 v9, 24, v13
	v_and_b16 v9.h, 0xff, v13.h
	v_lshrrev_b32_e32 v13, 8, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.h, 8, v13.l
	v_lshrrev_b32_e32 v13, 8, v10
	ds_store_b16 v120, v9 offset:96
	v_and_b16 v9.l, 0xff, v18.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v122, v9
	v_lshrrev_b32_e32 v9, 24, v18
	v_and_b16 v9.h, 0xff, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v13.l
	ds_store_b16 v122, v9 offset:32
	v_and_b16 v9.l, 0xff, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v122, v9 offset:64
	v_lshrrev_b32_e32 v9, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_lshrrev_b32_e32 v10, 8, v14
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v11
	ds_store_b16 v122, v9 offset:96
	v_and_b16 v9.l, 0xff, v14.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v123, v9
	v_lshrrev_b32_e32 v9, 24, v14
	v_and_b16 v9.h, 0xff, v14.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v15
	ds_store_b16 v123, v9 offset:32
	v_and_b16 v9.l, 0xff, v11.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v123, v9 offset:64
	v_lshrrev_b32_e32 v9, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v12
	ds_store_b16 v123, v9 offset:96
	v_and_b16 v9.l, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v120, v9 offset:384
	v_lshrrev_b32_e32 v9, 24, v15
	v_and_b16 v9.h, 0xff, v15.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	ds_store_b16 v120, v9 offset:416
	v_and_b16 v9.l, 0xff, v12.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v120, v9 offset:448
	v_lshrrev_b32_e32 v9, 24, v12
	v_and_b16 v9.h, 0xff, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	ds_store_b16 v120, v9 offset:480
	v_add_nc_u32_e32 v9, s6, v108
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s5, s19
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[17:18], v9, s[20:23], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v9, s29, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v13, s19, v9
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v118, v[17:18] offset:18432
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
	ds_store_b16 v120, v9 offset:8192
	v_lshrrev_b32_e32 v9, 24, v17
	v_and_b16 v9.h, 0xff, v17.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v16.l
	ds_store_b16 v120, v9 offset:8224
	v_and_b16 v9.l, 0xff, v13.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v120, v9 offset:8256
	v_lshrrev_b32_e32 v9, 24, v13
	v_and_b16 v9.h, 0xff, v13.h
	v_lshrrev_b32_e32 v13, 8, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.h, 8, v13.l
	v_lshrrev_b32_e32 v13, 8, v10
	ds_store_b16 v120, v9 offset:8288
	v_and_b16 v9.l, 0xff, v18.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v122, v9 offset:8192
	v_lshrrev_b32_e32 v9, 24, v18
	v_and_b16 v9.h, 0xff, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v13.l
	ds_store_b16 v122, v9 offset:8224
	v_and_b16 v9.l, 0xff, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v122, v9 offset:8256
	v_lshrrev_b32_e32 v9, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_lshrrev_b32_e32 v10, 8, v14
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v11
	ds_store_b16 v122, v9 offset:8288
	v_and_b16 v9.l, 0xff, v14.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v123, v9 offset:8192
	v_lshrrev_b32_e32 v9, 24, v14
	v_and_b16 v9.h, 0xff, v14.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v15
	ds_store_b16 v123, v9 offset:8224
	v_and_b16 v9.l, 0xff, v11.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v123, v9 offset:8256
	v_lshrrev_b32_e32 v9, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v12
	ds_store_b16 v123, v9 offset:8288
	v_and_b16 v9.l, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v120, v9 offset:8576
	v_lshrrev_b32_e32 v9, 24, v15
	v_and_b16 v9.h, 0xff, v15.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	ds_store_b16 v120, v9 offset:8608
	v_and_b16 v9.l, 0xff, v12.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v120, v9 offset:8640
	v_lshrrev_b32_e32 v9, 24, v12
	v_and_b16 v9.h, 0xff, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	ds_store_b16 v120, v9 offset:8672
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[151:154], v126
	ds_load_b128 v[159:162], v126 offset:4096
	ds_load_b128 v[155:158], v133
	ds_load_b128 v[163:166], v133 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v76 offset:17216
	ds_load_u8 v10, v76 offset:17152
	ds_load_u8 v17, v76 offset:18240
	ds_load_u8 v18, v76 offset:18176
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v76 offset:17344
	ds_load_u8 v11, v76 offset:17280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:18368
	ds_load_u8 v19, v76 offset:18304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v76 offset:16960
	ds_load_u8 v10, v76 offset:16896
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v76 offset:17984
	ds_load_u8 v18, v76 offset:17920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v76 offset:17088
	ds_load_u8 v11, v76 offset:17024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:18112
	ds_load_u8 v19, v76 offset:18048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v27, v10, 16, v9
	ds_load_u8 v9, v76 offset:16704
	ds_load_u8 v10, v76 offset:16640
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v76 offset:17728
	ds_load_u8 v18, v76 offset:17664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v76 offset:16832
	ds_load_u8 v11, v76 offset:16768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:17856
	ds_load_u8 v19, v76 offset:17792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v76 offset:16448
	ds_load_u8 v10, v76 offset:16384
	ds_load_u8 v33, v76 offset:16400
	ds_load_u8 v49, v76 offset:16416
	ds_load_u8 v167, v76 offset:16432
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v76 offset:17472
	ds_load_u8 v18, v76 offset:17408
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v76 offset:16576
	ds_load_u8 v11, v76 offset:16512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:17600
	ds_load_u8 v19, v76 offset:17536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v25, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[151:154], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v29, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[159:162], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v76 offset:17232
	ds_load_u8 v26, v76 offset:17168
	v_wmma_i32_16x16x16_iu8 v[9:16], v[155:158], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[163:166], v[29:32], v[17:24] neg_lo:[1,1,0]
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
	ds_load_u8 v26, v76 offset:17360
	ds_load_u8 v27, v76 offset:17296
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v76 offset:16976
	ds_load_u8 v26, v76 offset:16912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v76 offset:17104
	ds_load_u8 v27, v76 offset:17040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v76 offset:16720
	ds_load_u8 v26, v76 offset:16656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v76 offset:16848
	ds_load_u8 v27, v76 offset:16784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v76 offset:16464
	ds_load_u8 v26, v76 offset:16592
	ds_load_u8 v27, v76 offset:16528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v76 offset:18256
	ds_load_u8 v34, v76 offset:18192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[151:154], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v76 offset:18384
	ds_load_u8 v35, v76 offset:18320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v76 offset:18000
	ds_load_u8 v34, v76 offset:17936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v76 offset:18128
	ds_load_u8 v35, v76 offset:18064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v76 offset:17744
	ds_load_u8 v34, v76 offset:17680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v76 offset:17872
	ds_load_u8 v35, v76 offset:17808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v76 offset:17488
	ds_load_u8 v34, v76 offset:17424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v76 offset:17616
	ds_load_u8 v35, v76 offset:17552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[159:162], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v76 offset:17248
	ds_load_u8 v42, v76 offset:17184
	v_wmma_i32_16x16x16_iu8 v[25:32], v[155:158], v[45:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[163:166], v[45:48], v[33:40] neg_lo:[1,1,0]
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
	ds_load_u8 v42, v76 offset:17376
	ds_load_u8 v43, v76 offset:17312
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v42, 16, v41
	ds_load_u8 v41, v76 offset:16992
	ds_load_u8 v42, v76 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v76 offset:17120
	ds_load_u8 v43, v76 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v42, 16, v41
	ds_load_u8 v41, v76 offset:16736
	ds_load_u8 v42, v76 offset:16672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v76 offset:16864
	ds_load_u8 v43, v76 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v42, 16, v41
	ds_load_u8 v41, v76 offset:16480
	ds_load_u8 v42, v76 offset:16608
	ds_load_u8 v43, v76 offset:16544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v49, v41, 0xc0c0004
	ds_load_u8 v49, v76 offset:18272
	ds_load_u8 v50, v76 offset:18208
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[151:154], v[143:146], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v76 offset:18400
	ds_load_u8 v51, v76 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v50, 16, v49
	ds_load_u8 v49, v76 offset:18016
	ds_load_u8 v50, v76 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v76 offset:18144
	ds_load_u8 v51, v76 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v50, 16, v49
	ds_load_u8 v49, v76 offset:17760
	ds_load_u8 v50, v76 offset:17696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v76 offset:17888
	ds_load_u8 v51, v76 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v50, 16, v49
	ds_load_u8 v49, v76 offset:17504
	ds_load_u8 v50, v76 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v76 offset:17632
	ds_load_u8 v51, v76 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[159:162], v[143:146], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v143, v76 offset:17008
	ds_load_u8 v144, v76 offset:16944
	v_wmma_i32_16x16x16_iu8 v[41:48], v[155:158], v[147:150], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[163:166], v[147:150], v[49:56] neg_lo:[1,1,0]
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
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v76 offset:17136
	ds_load_u8 v145, v76 offset:17072
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v144, 16, v143
	ds_load_u8 v143, v76 offset:16752
	ds_load_u8 v144, v76 offset:16688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v76 offset:16880
	ds_load_u8 v145, v76 offset:16816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v144, 16, v143
	ds_load_u8 v143, v76 offset:16496
	ds_load_u8 v144, v76 offset:16624
	ds_load_u8 v145, v76 offset:16560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v143, v167, v143, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v144, 16, v143
	ds_load_u8 v143, v76 offset:17264
	ds_load_u8 v144, v76 offset:17200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v124 offset:16384
	ds_load_u8 v145, v76 offset:17328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v144, 16, v143
	v_wmma_i32_16x16x16_iu8 v[143:150], v[151:154], v[167:170], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v151, v76 offset:18032
	ds_load_u8 v152, v76 offset:17968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v76 offset:18160
	ds_load_u8 v153, v76 offset:18096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v152, 16, v151
	ds_load_u8 v151, v76 offset:17776
	ds_load_u8 v152, v76 offset:17712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v76 offset:17904
	ds_load_u8 v153, v76 offset:17840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v152, 16, v151
	ds_load_u8 v151, v76 offset:17520
	ds_load_u8 v152, v76 offset:17456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v76 offset:17648
	ds_load_u8 v153, v76 offset:17584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v152, 16, v151
	ds_load_u8 v151, v76 offset:18288
	ds_load_u8 v152, v76 offset:18224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v125 offset:16384
	ds_load_u8 v153, v76 offset:18352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v152, 16, v151
	v_wmma_i32_16x16x16_iu8 v[143:150], v[155:158], v[171:174], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[159:162], v[167:170], v[1:8] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v159, v82, s5, 1
	v_add_lshl_u32 v160, v85, s5, 1
	v_add_lshl_u32 v161, v94, s5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[151:158], v[163:166], v[171:174], v[151:158] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v159, 0x80000000, v159 :: v_dual_cndmask_b32 v160, 0x80000000, v160
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v159, v159, s[8:11], 0 offen
	buffer_load_u16 v160, v160, s[8:11], 0 offen
	v_cndmask_b32_e32 v161, 0x80000000, v161, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v152, v152
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v163, v161, s[8:11], 0 offen
	v_add_lshl_u32 v161, v96, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v158, v158
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_or_b32 s5, s5, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v161, 0x80000000, v161, vcc_lo
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v151, v151
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v164, v161, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v162, 16, v159
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v20, v20, v162 :: v_dual_lshlrev_b32 v161, 16, v160
	v_mul_f32_e32 v10, v10, v162
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v160, 16, v163
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v163, v105, s6, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v12, v12, v162
	v_mul_f32_e32 v14, v14, v162
	v_dual_mul_f32 v22, v22, v162 :: v_dual_mul_f32 v33, v33, v161
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v50, v50, v160 :: v_dual_cndmask_b32 v163, 0x80000000, v163
	v_dual_mul_f32 v35, v35, v161 :: v_dual_mul_f32 v52, v52, v160
	v_dual_mul_f32 v37, v37, v161 :: v_dual_mul_f32 v54, v54, v160
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v163, v163, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v159, 16, v164
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v39, v39, v161 :: v_dual_mul_f32 v56, v56, v160
	v_mul_f32_e32 v41, v41, v160
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v43, v43, v160 :: v_dual_mul_f32 v146, v146, v159
	v_dual_mul_f32 v45, v45, v160 :: v_dual_mul_f32 v148, v148, v159
	v_dual_mul_f32 v47, v47, v160 :: v_dual_mul_f32 v150, v150, v159
	v_dual_mul_f32 v49, v49, v160 :: v_dual_mul_f32 v152, v152, v159
	v_dual_mul_f32 v51, v51, v160 :: v_dual_mul_f32 v154, v154, v159
	v_dual_mul_f32 v53, v53, v160 :: v_dual_mul_f32 v156, v156, v159
	v_dual_mul_f32 v55, v55, v160 :: v_dual_mul_f32 v158, v158, v159
	v_dual_mul_f32 v17, v17, v162 :: v_dual_mul_f32 v34, v34, v161
	v_mul_f32_e32 v18, v18, v162
	v_dual_mul_f32 v15, v15, v162 :: v_dual_mul_f32 v32, v32, v161
	v_mul_f32_e32 v144, v144, v159
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v19, v19, v162 :: v_dual_mul_f32 v36, v36, v161
	v_dual_mul_f32 v21, v21, v162 :: v_dual_mul_f32 v38, v38, v161
	v_mul_f32_e32 v16, v16, v162
	v_dual_mul_f32 v23, v23, v162 :: v_dual_mul_f32 v40, v40, v161
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v9, v162
	v_dual_mul_f32 v24, v24, v162 :: v_dual_mul_f32 v25, v25, v161
	v_mul_f32_e32 v27, v27, v161
	v_mul_f32_e32 v29, v29, v161
	v_dual_mul_f32 v31, v31, v161 :: v_dual_mul_f32 v42, v42, v160
	v_mul_f32_e32 v44, v44, v160
	v_mul_f32_e32 v46, v46, v160
	v_dual_mul_f32 v48, v48, v160 :: v_dual_mul_f32 v11, v11, v162
	v_dual_mul_f32 v13, v13, v162 :: v_dual_mul_f32 v26, v26, v161
	v_mul_f32_e32 v28, v28, v161
	v_mul_f32_e32 v30, v30, v161
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v141, v163 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[163:166], v103 offset:20480
	ds_load_b128 v[167:170], v103 offset:20496
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v171, 16, v163
	v_lshlrev_b32_e32 v172, 16, v164
	v_lshlrev_b32_e32 v173, 16, v165
	v_lshlrev_b32_e32 v174, 16, v166
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v175, 16, v167
	v_lshlrev_b32_e32 v176, 16, v168
	v_lshlrev_b32_e32 v177, 16, v169
	v_lshlrev_b32_e32 v178, 16, v170
	v_and_b32_e32 v163, 0xffff0000, v163
	v_and_b32_e32 v164, 0xffff0000, v164
	v_and_b32_e32 v165, 0xffff0000, v165
	v_and_b32_e32 v166, 0xffff0000, v166
	v_and_b32_e32 v167, 0xffff0000, v167
	v_and_b32_e32 v168, 0xffff0000, v168
	v_and_b32_e32 v169, 0xffff0000, v169
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v143, v143, v159 :: v_dual_and_b32 v170, 0xffff0000, v170
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v140, v10, v172 :: v_dual_mul_f32 v145, v145, v159
	v_dual_fmac_f32 v138, v12, v174 :: v_dual_mul_f32 v147, v147, v159
	v_dual_fmac_f32 v136, v14, v176 :: v_dual_fmac_f32 v109, v9, v171
	v_fmac_f32_e32 v110, v32, v178
	v_dual_fmac_f32 v119, v24, v170 :: v_dual_fmac_f32 v90, v46, v176
	v_dual_fmac_f32 v117, v25, v171 :: v_dual_fmac_f32 v92, v44, v174
	v_dual_fmac_f32 v115, v27, v173 :: v_dual_fmac_f32 v88, v48, v178
	v_dual_fmac_f32 v113, v29, v175 :: v_dual_fmac_f32 v86, v50, v164
	v_dual_fmac_f32 v111, v31, v177 :: v_dual_fmac_f32 v80, v54, v168
	v_dual_fmac_f32 v107, v33, v163 :: v_dual_fmac_f32 v84, v51, v165
	v_dual_fmac_f32 v101, v37, v167 :: v_dual_fmac_f32 v78, v56, v170
	v_dual_fmac_f32 v97, v41, v171 :: v_dual_fmac_f32 v62, v156, v168
	v_dual_fmac_f32 v95, v42, v172 :: v_dual_fmac_f32 v74, v145, v173
	v_dual_fmac_f32 v93, v43, v173 :: v_dual_fmac_f32 v60, v158, v170
	v_fmac_f32_e32 v91, v45, v175
	v_fmac_f32_e32 v89, v47, v177
	v_fmac_f32_e32 v87, v49, v163
	v_dual_fmac_f32 v83, v52, v166 :: v_dual_fmac_f32 v72, v147, v175
	v_fmac_f32_e32 v81, v53, v167
	v_fmac_f32_e32 v79, v55, v169
	.loc	1 378 26 is_stmt 1              ; generate_amdgcn.py:378:26
	ds_load_b128 v[53:56], v126 offset:8192
	ds_load_b128 v[41:44], v126 offset:12288
	ds_load_b128 v[49:52], v133 offset:8192
	ds_load_b128 v[45:48], v133 offset:12288
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v76 offset:19264
	ds_load_u8 v10, v76 offset:19200
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v139, v11, v173 :: v_dual_fmac_f32 v132, v17, v163
	v_dual_fmac_f32 v131, v18, v164 :: v_dual_fmac_f32 v104, v35, v165
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v17, v76 offset:20288
	ds_load_u8 v18, v76 offset:20224
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v153, v153, v159 :: v_dual_fmac_f32 v130, v19, v165
	v_dual_mul_f32 v155, v155, v159 :: v_dual_fmac_f32 v114, v28, v174
	v_dual_mul_f32 v151, v151, v159 :: v_dual_fmac_f32 v116, v26, v172
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v135, v15, v177 :: v_dual_fmac_f32 v128, v21, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v75, v144, v172 :: v_dual_fmac_f32 v68, v151, v163
	v_fmac_f32_e32 v63, v155, v167
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v157, v157, v159 :: v_dual_fmac_f32 v112, v30, v176
	v_dual_mul_f32 v149, v149, v159 :: v_dual_fmac_f32 v134, v16, v178
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v76 offset:19392
	ds_load_u8 v11, v76 offset:19328
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v137, v13, v175 :: v_dual_fmac_f32 v106, v34, v164
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:20416
	ds_load_u8 v19, v76 offset:20352
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v129, v20, v166 :: v_dual_fmac_f32 v100, v38, v168
	v_dual_fmac_f32 v127, v22, v168 :: v_dual_fmac_f32 v102, v36, v166
	v_dual_fmac_f32 v121, v23, v169 :: v_dual_fmac_f32 v98, v40, v170
	v_dual_fmac_f32 v73, v146, v174 :: v_dual_fmac_f32 v66, v153, v165
	v_dual_fmac_f32 v77, v143, v171 :: v_dual_fmac_f32 v70, v149, v177
	v_dual_fmac_f32 v99, v39, v169 :: v_dual_fmac_f32 v64, v154, v166
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v76 offset:19008
	ds_load_u8 v10, v76 offset:18944
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v76 offset:20032
	ds_load_u8 v18, v76 offset:19968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v76 offset:19136
	ds_load_u8 v11, v76 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:20160
	ds_load_u8 v19, v76 offset:20096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v27, v10, 16, v9
	ds_load_u8 v9, v76 offset:18752
	ds_load_u8 v10, v76 offset:18688
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v76 offset:19776
	ds_load_u8 v18, v76 offset:19712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v76 offset:18880
	ds_load_u8 v11, v76 offset:18816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:19904
	ds_load_u8 v19, v76 offset:19840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v76 offset:18496
	ds_load_u8 v10, v76 offset:18432
	ds_load_u8 v33, v76 offset:18448
	ds_load_u8 v151, v76 offset:18464
	ds_load_u8 v167, v76 offset:18480
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v76 offset:19520
	ds_load_u8 v18, v76 offset:19456
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v76 offset:18624
	ds_load_u8 v11, v76 offset:18560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:19648
	ds_load_u8 v19, v76 offset:19584
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
	ds_load_u8 v25, v76 offset:19280
	ds_load_u8 v26, v76 offset:19216
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v69, v150, v178
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v71, v148, v176
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v67, v152, v164
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v61, v157, v169
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v76 offset:19408
	ds_load_u8 v27, v76 offset:19344
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
	v_lshl_or_b32 v146, v26, 16, v25
	ds_load_u8 v25, v76 offset:19024
	ds_load_u8 v26, v76 offset:18960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v76 offset:19152
	ds_load_u8 v27, v76 offset:19088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v26, 16, v25
	ds_load_u8 v25, v76 offset:18768
	ds_load_u8 v26, v76 offset:18704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v76 offset:18896
	ds_load_u8 v27, v76 offset:18832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v26, 16, v25
	ds_load_u8 v25, v76 offset:18512
	ds_load_u8 v26, v76 offset:18640
	ds_load_u8 v27, v76 offset:18576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v76 offset:20304
	ds_load_u8 v34, v76 offset:20240
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[53:56], v[143:146], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v76 offset:20432
	ds_load_u8 v35, v76 offset:20368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v34, 16, v33
	ds_load_u8 v33, v76 offset:20048
	ds_load_u8 v34, v76 offset:19984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v76 offset:20176
	ds_load_u8 v35, v76 offset:20112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v34, 16, v33
	ds_load_u8 v33, v76 offset:19792
	ds_load_u8 v34, v76 offset:19728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v76 offset:19920
	ds_load_u8 v35, v76 offset:19856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v34, 16, v33
	ds_load_u8 v33, v76 offset:19536
	ds_load_u8 v34, v76 offset:19472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v76 offset:19664
	ds_load_u8 v35, v76 offset:19600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[143:146], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v143, v76 offset:19296
	ds_load_u8 v144, v76 offset:19232
	v_wmma_i32_16x16x16_iu8 v[25:32], v[49:52], v[147:150], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[147:150], v[33:40] neg_lo:[1,1,0]
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
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v76 offset:19424
	ds_load_u8 v145, v76 offset:19360
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v144, 16, v143
	ds_load_u8 v143, v76 offset:19040
	ds_load_u8 v144, v76 offset:18976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v76 offset:19168
	ds_load_u8 v145, v76 offset:19104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v144, 16, v143
	ds_load_u8 v143, v76 offset:18784
	ds_load_u8 v144, v76 offset:18720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v76 offset:18912
	ds_load_u8 v145, v76 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v144, 16, v143
	ds_load_u8 v143, v76 offset:18528
	ds_load_u8 v144, v76 offset:18656
	ds_load_u8 v145, v76 offset:18592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v143, v151, v143, 0xc0c0004
	ds_load_u8 v151, v76 offset:20320
	ds_load_u8 v152, v76 offset:20256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v144, 16, v143
	v_wmma_i32_16x16x16_iu8 v[143:150], v[53:56], v[159:162], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v76 offset:20448
	ds_load_u8 v153, v76 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v152, 16, v151
	ds_load_u8 v151, v76 offset:20064
	ds_load_u8 v152, v76 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v76 offset:20192
	ds_load_u8 v153, v76 offset:20128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v152, 16, v151
	ds_load_u8 v151, v76 offset:19808
	ds_load_u8 v152, v76 offset:19744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v76 offset:19936
	ds_load_u8 v153, v76 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v152, 16, v151
	ds_load_u8 v151, v76 offset:19552
	ds_load_u8 v152, v76 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v76 offset:19680
	ds_load_u8 v153, v76 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v152, 16, v151
	v_wmma_i32_16x16x16_iu8 v[151:158], v[41:44], v[159:162], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v159, v76 offset:19056
	ds_load_u8 v160, v76 offset:18992
	v_wmma_i32_16x16x16_iu8 v[143:150], v[49:52], v[163:166], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[45:48], v[163:166], v[151:158] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v76 offset:19184
	ds_load_u8 v161, v76 offset:19120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v160, 16, v159
	ds_load_u8 v159, v76 offset:18800
	ds_load_u8 v160, v76 offset:18736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v76 offset:18928
	ds_load_u8 v161, v76 offset:18864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v160, 16, v159
	ds_load_u8 v159, v76 offset:18544
	ds_load_u8 v160, v76 offset:18672
	ds_load_u8 v161, v76 offset:18608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v159, v167, v159, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v160, 16, v159
	ds_load_u8 v159, v76 offset:19312
	ds_load_u8 v160, v76 offset:19248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v124 offset:18432
	ds_load_u8 v161, v76 offset:19376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v160, 16, v159
	v_wmma_i32_16x16x16_iu8 v[159:166], v[53:56], v[167:170], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v53, v76 offset:20080
	ds_load_u8 v54, v76 offset:20016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v76 offset:20208
	ds_load_u8 v55, v76 offset:20144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v54, 16, v53
	ds_load_u8 v53, v76 offset:19824
	ds_load_u8 v54, v76 offset:19760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v76 offset:19952
	ds_load_u8 v55, v76 offset:19888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v54, 16, v53
	ds_load_u8 v53, v76 offset:19568
	ds_load_u8 v54, v76 offset:19504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v76 offset:19696
	ds_load_u8 v55, v76 offset:19632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v54, 16, v53
	ds_load_u8 v53, v76 offset:20336
	ds_load_u8 v54, v76 offset:20272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v125 offset:18432
	ds_load_u8 v55, v76 offset:20400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v54, 16, v53
	v_wmma_i32_16x16x16_iu8 v[159:166], v[49:52], v[171:174], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[41:44], v[167:170], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v41, v143
	v_cvt_f32_i32_e32 v42, v144
	v_cvt_f32_i32_e32 v143, v151
	v_cvt_f32_i32_e32 v144, v152
	v_cvt_f32_i32_e32 v151, v159
	v_cvt_f32_i32_e32 v152, v160
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v159, v82, s5, 1
	v_add_lshl_u32 v160, v85, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v43, v145
	v_cvt_f32_i32_e32 v44, v146
	v_cvt_f32_i32_e32 v145, v153
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v159, 0x80000000, v159 :: v_dual_cndmask_b32 v160, 0x80000000, v160
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v146, v154
	v_cvt_f32_i32_e32 v153, v161
	v_cvt_f32_i32_e32 v154, v162
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v159, v159, s[8:11], 0 offen
	buffer_load_u16 v160, v160, s[8:11], 0 offen
	v_add_lshl_u32 v161, v94, s5, 1
	v_add_lshl_u32 v162, v96, s5, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s5, s5, s19
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[49:56], v[45:48], v[171:174], v[49:56] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v45, v147
	v_cvt_f32_i32_e32 v147, v155
	v_cvt_f32_i32_e32 v155, v163
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v161, 0x80000000, v161 :: v_dual_cndmask_b32 v162, 0x80000000, v162
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v163, v105, s5, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v46, v148
	v_cvt_f32_i32_e32 v47, v149
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v161, v161, s[8:11], 0 offen
	buffer_load_u16 v162, v162, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v48, v150
	v_cvt_f32_i32_e32 v148, v156
	v_cvt_f32_i32_e32 v149, v157
	v_cvt_f32_i32_e32 v150, v158
	v_cvt_f32_i32_e32 v156, v164
	v_cvt_f32_i32_e32 v157, v165
	v_cvt_f32_i32_e32 v158, v166
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
	v_dual_cndmask_b32 v163, 0x80000000, v163 :: v_dual_lshlrev_b32 v160, 16, v160
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v30, v30, v160 :: v_dual_lshlrev_b32 v159, 16, v159
	v_mul_f32_e32 v32, v32, v160
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v163, v163, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v164, v9, v159
	v_dual_mul_f32 v165, v10, v159 :: v_dual_mul_f32 v36, v36, v160
	v_mul_f32_e32 v166, v11, v159
	v_dual_mul_f32 v167, v12, v159 :: v_dual_mul_f32 v38, v38, v160
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v176, v21, v159 :: v_dual_lshlrev_b32 v161, 16, v161
	v_mul_f32_e32 v168, v13, v159
	v_dual_mul_f32 v169, v14, v159 :: v_dual_mul_f32 v40, v40, v160
	v_mul_f32_e32 v170, v15, v159
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v171, v16, v159 :: v_dual_mul_f32 v42, v42, v161
	v_mul_f32_e32 v172, v17, v159
	v_dual_mul_f32 v173, v18, v159 :: v_dual_mul_f32 v44, v44, v161
	v_mul_f32_e32 v174, v19, v159
	v_dual_mul_f32 v175, v20, v159 :: v_dual_mul_f32 v46, v46, v161
	v_dual_mul_f32 v177, v22, v159 :: v_dual_mul_f32 v48, v48, v161
	v_dual_mul_f32 v178, v23, v159 :: v_dual_mul_f32 v25, v25, v160
	v_dual_mul_f32 v159, v24, v159 :: v_dual_mul_f32 v146, v146, v161
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v26, v26, v160
	v_dual_mul_f32 v27, v27, v160 :: v_dual_mul_f32 v144, v144, v161
	v_mul_f32_e32 v28, v28, v160
	v_dual_mul_f32 v29, v29, v160 :: v_dual_mul_f32 v148, v148, v161
	v_dual_mul_f32 v31, v31, v160 :: v_dual_mul_f32 v150, v150, v161
	v_dual_mul_f32 v33, v33, v160 :: v_dual_mul_f32 v152, v152, v162
	v_dual_mul_f32 v35, v35, v160 :: v_dual_mul_f32 v154, v154, v162
	v_dual_mul_f32 v37, v37, v160 :: v_dual_mul_f32 v156, v156, v162
	v_dual_mul_f32 v39, v39, v160 :: v_dual_mul_f32 v158, v158, v162
	v_dual_mul_f32 v41, v41, v161 :: v_dual_mul_f32 v50, v50, v162
	v_dual_mul_f32 v43, v43, v161 :: v_dual_mul_f32 v52, v52, v162
	v_dual_mul_f32 v45, v45, v161 :: v_dual_mul_f32 v54, v54, v162
	v_dual_mul_f32 v47, v47, v161 :: v_dual_mul_f32 v56, v56, v162
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v34, v34, v160 :: v_dual_lshlrev_b32 v163, 16, v163
	ds_store_b32 v142, v163 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v103 offset:20480
	ds_load_b128 v[13:16], v103 offset:20496
	ds_load_b128 v[17:20], v103 offset:20992
	ds_load_b128 v[21:24], v103 offset:21008
	v_mul_f32_e32 v143, v143, v161
	v_mul_f32_e32 v145, v145, v161
	v_mul_f32_e32 v147, v147, v161
	v_mul_f32_e32 v149, v149, v161
	v_mul_f32_e32 v151, v151, v162
	v_mul_f32_e32 v153, v153, v162
	v_mul_f32_e32 v155, v155, v162
	v_mul_f32_e32 v157, v157, v162
	v_mul_f32_e32 v49, v49, v162
	v_mul_f32_e32 v51, v51, v162
	v_mul_f32_e32 v53, v53, v162
	v_mul_f32_e32 v55, v55, v162
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v109, v164, v9 :: v_dual_fmac_f32 v116, v26, v10
	v_dual_fmac_f32 v140, v165, v10 :: v_dual_fmac_f32 v139, v166, v11
	v_fmac_f32_e32 v92, v44, v12
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v138, v167, v12 :: v_dual_fmac_f32 v137, v168, v13
	v_fmac_f32_e32 v112, v30, v14
	v_dual_fmac_f32 v136, v169, v14 :: v_dual_fmac_f32 v135, v170, v15
	v_fmac_f32_e32 v88, v48, v16
	v_fmac_f32_e32 v134, v171, v16
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v132, v172, v17 :: v_dual_fmac_f32 v131, v173, v18
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v78, v150, v24
	v_dual_fmac_f32 v130, v174, v19 :: v_dual_fmac_f32 v129, v175, v20
	v_fmac_f32_e32 v106, v34, v18
	v_dual_fmac_f32 v128, v176, v21 :: v_dual_fmac_f32 v127, v177, v22
	v_dual_fmac_f32 v72, v155, v13 :: v_dual_fmac_f32 v121, v178, v23
	v_dual_fmac_f32 v86, v144, v18 :: v_dual_fmac_f32 v119, v159, v24
	v_dual_fmac_f32 v100, v38, v22 :: v_dual_fmac_f32 v117, v25, v9
	v_dual_fmac_f32 v90, v46, v14 :: v_dual_fmac_f32 v115, v27, v11
	v_fmac_f32_e32 v80, v148, v22
	v_fmac_f32_e32 v114, v28, v12
	v_dual_fmac_f32 v110, v32, v16 :: v_dual_fmac_f32 v111, v31, v15
	v_fmac_f32_e32 v68, v49, v17
	v_dual_fmac_f32 v107, v33, v17 :: v_dual_fmac_f32 v64, v52, v20
	v_fmac_f32_e32 v104, v35, v19
	v_dual_fmac_f32 v102, v36, v20 :: v_dual_fmac_f32 v113, v29, v13
	v_dual_fmac_f32 v66, v51, v19 :: v_dual_fmac_f32 v101, v37, v21
	v_dual_fmac_f32 v62, v54, v22 :: v_dual_fmac_f32 v99, v39, v23
	v_fmac_f32_e32 v60, v56, v24
	v_dual_fmac_f32 v98, v40, v24 :: v_dual_fmac_f32 v97, v41, v9
	v_dual_fmac_f32 v95, v42, v10 :: v_dual_fmac_f32 v84, v145, v19
	v_fmac_f32_e32 v93, v43, v11
	v_fmac_f32_e32 v91, v45, v13
	v_fmac_f32_e32 v89, v47, v15
	v_dual_fmac_f32 v87, v143, v17 :: v_dual_fmac_f32 v74, v153, v11
	v_dual_fmac_f32 v83, v146, v20 :: v_dual_fmac_f32 v70, v157, v15
	v_fmac_f32_e32 v81, v147, v21
	v_fmac_f32_e32 v79, v149, v23
	v_fmac_f32_e32 v77, v151, v9
	v_fmac_f32_e32 v75, v152, v10
	v_fmac_f32_e32 v73, v154, v12
	v_fmac_f32_e32 v71, v156, v14
	v_fmac_f32_e32 v69, v158, v16
	v_fmac_f32_e32 v67, v50, v18
	v_fmac_f32_e32 v63, v53, v21
	v_fmac_f32_e32 v61, v55, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v35, v93, v93 :: v_dual_max_f32 v36, v92, v92
	v_dual_max_f32 v37, v91, v91 :: v_dual_max_f32 v38, v90, v90
	v_max_f32_e32 v39, v89, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v36, 0, v36
	v_max_f32_e32 v76, 0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_max_f32 v82, 0, v38 :: v_dual_max_f32 v85, 0, v39
	v_dual_max_f32 v37, v88, v88 :: v_dual_max_f32 v38, v87, v87
	v_dual_max_f32 v39, v86, v86 :: v_dual_max_f32 v40, v84, v84
	v_max_f32_e32 v41, v83, v83
	v_dual_max_f32 v83, 0, v37 :: v_dual_max_f32 v84, 0, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v86, 0, v39 :: v_dual_max_f32 v87, 0, v40
	v_max_f32_e32 v88, 0, v41
	v_dual_max_f32 v37, v81, v81 :: v_dual_max_f32 v38, v80, v80
	v_dual_max_f32 v39, v79, v79 :: v_dual_max_f32 v40, v78, v78
	v_max_f32_e32 v41, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v77, 0, v37 :: v_dual_max_f32 v78, 0, v38
	v_dual_max_f32 v79, 0, v39 :: v_dual_max_f32 v38, v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v80, 0, v40 :: v_dual_max_f32 v81, 0, v41
	v_dual_max_f32 v40, v72, v72 :: v_dual_max_f32 v37, v75, v75
	v_max_f32_e32 v39, v73, v73
	v_dual_max_f32 v75, 0, v38 :: v_dual_max_f32 v38, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v90, 0, v40 :: v_dual_max_f32 v41, v71, v71
	v_max_f32_e32 v74, 0, v37
	v_dual_max_f32 v1, v109, v109 :: v_dual_max_f32 v2, v140, v140
	v_dual_max_f32 v3, v139, v139 :: v_dual_max_f32 v4, v138, v138
	v_dual_max_f32 v5, v137, v137 :: v_dual_max_f32 v6, v136, v136
	v_dual_max_f32 v7, v135, v135 :: v_dual_max_f32 v8, v134, v134
	v_max_f32_e32 v9, v132, v132
	v_dual_max_f32 v15, v121, v121 :: v_dual_max_f32 v16, v119, v119
	v_dual_max_f32 v17, v117, v117 :: v_dual_max_f32 v18, v116, v116
	v_max_f32_e32 v19, v115, v115
	v_dual_max_f32 v25, v107, v107 :: v_dual_max_f32 v26, v106, v106
	v_dual_max_f32 v27, v104, v104 :: v_dual_max_f32 v28, v102, v102
	v_max_f32_e32 v29, v101, v101
	v_dual_max_f32 v37, v70, v70 :: v_dual_max_f32 v40, v67, v67
	v_max_f32_e32 v89, 0, v39
	v_max_f32_e32 v39, v68, v68
	v_dual_max_f32 v93, 0, v38 :: v_dual_max_f32 v38, v63, v63
	v_max_f32_e32 v91, 0, v41
	v_max_f32_e32 v41, v66, v66
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_max_f32_e32 v12, v129, v129
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, v131, v131
	v_dual_max_f32 v11, v130, v130 :: v_dual_max_f32 v14, v127, v127
	v_max_f32_e32 v13, v128, v128
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v20, v114, v114 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v22, v112, v112 :: v_dual_max_f32 v21, v113, v113
	v_dual_max_f32 v24, v110, v110 :: v_dual_max_f32 v23, v111, v111
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v20, 0, v20
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v30, v100, v100 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v32, v98, v98 :: v_dual_max_f32 v31, v99, v99
	v_dual_max_f32 v33, v97, v97 :: v_dual_max_f32 v34, v95, v95
	v_dual_max_f32 v94, 0, v39 :: v_dual_max_f32 v95, 0, v40
	v_max_f32_e32 v98, 0, v38
	v_dual_max_f32 v39, v62, v62 :: v_dual_mul_f32 v70, v4, v4
	v_max_f32_e32 v40, v61, v61
	v_max_f32_e32 v96, 0, v41
	v_dual_max_f32 v92, 0, v37 :: v_dual_max_f32 v37, v64, v64
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v72, v2, v2 :: v_dual_max_f32 v41, v60, v60
	v_dual_mul_f32 v68, v6, v6 :: v_dual_max_f32 v5, 0, v5
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v8, 0, v8
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v25, 0, v25
	v_max_f32_e32 v28, 0, v28
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v97, 0, v37
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v66, v8, v8 :: v_dual_max_f32 v99, 0, v39
	v_mul_f32_e32 v64, v10, v10
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v100, 0, v40 :: v_dual_max_f32 v101, 0, v41
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v62, v12, v12 :: v_dual_mul_f32 v73, v1, v1
	v_dual_mul_f32 v60, v14, v14 :: v_dual_mul_f32 v71, v3, v3
	v_dual_mul_f32 v56, v16, v16 :: v_dual_mul_f32 v69, v5, v5
	v_dual_mul_f32 v54, v18, v18 :: v_dual_mul_f32 v67, v7, v7
	v_dual_mul_f32 v52, v20, v20 :: v_dual_mul_f32 v65, v9, v9
	v_dual_mul_f32 v50, v22, v22 :: v_dual_mul_f32 v63, v11, v11
	v_dual_mul_f32 v48, v24, v24 :: v_dual_mul_f32 v61, v13, v13
	v_dual_mul_f32 v46, v26, v26 :: v_dual_mul_f32 v57, v15, v15
	v_dual_mul_f32 v44, v28, v28 :: v_dual_mul_f32 v55, v17, v17
	v_dual_mul_f32 v42, v30, v30 :: v_dual_mul_f32 v53, v19, v19
	v_dual_mul_f32 v40, v32, v32 :: v_dual_mul_f32 v51, v21, v21
	v_dual_mul_f32 v38, v34, v34 :: v_dual_mul_f32 v49, v23, v23
	v_dual_mul_f32 v36, v36, v36 :: v_dual_mul_f32 v47, v25, v25
	v_dual_mul_f32 v34, v76, v76 :: v_dual_mul_f32 v45, v27, v27
	v_mul_f32_e32 v32, v85, v85
	v_dual_mul_f32 v43, v29, v29 :: v_dual_mul_f32 v30, v84, v84
	v_dual_mul_f32 v41, v31, v31 :: v_dual_mul_f32 v26, v77, v77
	v_dual_mul_f32 v39, v33, v33 :: v_dual_mul_f32 v28, v87, v87
	v_dual_mul_f32 v37, v35, v35 :: v_dual_mul_f32 v22, v81, v81
	v_dual_mul_f32 v33, v82, v82 :: v_dual_mul_f32 v24, v79, v79
	v_dual_mul_f32 v31, v83, v83 :: v_dual_mul_f32 v18, v90, v90
	v_dual_mul_f32 v29, v86, v86 :: v_dual_mul_f32 v20, v75, v75
	v_dual_mul_f32 v27, v88, v88 :: v_dual_mul_f32 v12, v93, v93
	v_dual_mul_f32 v25, v78, v78 :: v_dual_mul_f32 v10, v95, v95
	v_dual_mul_f32 v23, v80, v80 :: v_dual_mul_f32 v8, v97, v97
	v_dual_mul_f32 v21, v74, v74 :: v_dual_mul_f32 v6, v99, v99
	v_mul_f32_e32 v19, v89, v89
	v_dual_mul_f32 v17, v91, v91 :: v_dual_mul_f32 v4, v101, v101
	v_mul_f32_e32 v15, v92, v92
	v_mul_f32_e32 v11, v94, v94
	v_mul_f32_e32 v9, v96, v96
	v_mul_f32_e32 v7, v98, v98
	v_mul_f32_e32 v5, v100, v100
.LBB0_7:                                ; %._crit_edge
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v35.h, 0
	v_mov_b16_e32 v35.l, v72.h
	v_and_b32_e32 v0, 16, v0
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v3, s19, v59
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v14, 1, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v58.l, v73.h
	v_mov_b16_e32 v58.h, v35.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v59, 1, v35
	v_mov_b16_e32 v35.l, v70.h
	v_mov_b16_e32 v74.l, v71.h
	v_mov_b16_e32 v74.h, v35.h
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[1:2], null, s19, 48, v[3:4]
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v59, v72, v59, 0x7fff
	v_and_b32_e32 v58, 1, v58
	v_and_b32_e32 v72, 1, v35
	v_mov_b16_e32 v35.l, v68.h
	s_mov_b32 s0, 0x76543210
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s28, s28, s19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v58, v73, v58, 0x7fff
	v_and_b32_e32 v73, 1, v74
	v_mov_b16_e32 v74.l, v69.h
	v_add3_u32 v70, v70, v72, 0x7fff
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v2, s28, s2, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.l, v58.h
	v_add3_u32 v58, v71, v73, 0x7fff
	v_and_b32_e32 v71, 1, v35
	v_and_b32_e32 v72, 1, v74
	v_mov_b16_e32 v35.l, v66.h
	v_mov_b16_e32 v73.l, v67.h
	v_mov_b16_e32 v73.h, v35.h
	v_mov_b16_e32 v70.l, v58.h
	v_add3_u32 v58, v69, v72, 0x7fff
	v_add3_u32 v68, v68, v71, 0x7fff
	v_and_b32_e32 v69, 1, v35
	v_and_b32_e32 v71, 1, v73
	v_mov_b16_e32 v35.l, v64.h
	v_mov_b16_e32 v72.l, v65.h
	v_mov_b16_e32 v72.h, v35.h
	v_mov_b16_e32 v68.l, v58.h
	v_add3_u32 v58, v67, v71, 0x7fff
	v_add3_u32 v66, v66, v69, 0x7fff
	v_and_b32_e32 v67, 1, v35
	v_and_b32_e32 v69, 1, v72
	v_mov_b16_e32 v35.l, v62.h
	v_mov_b16_e32 v71.l, v63.h
	v_mov_b16_e32 v71.h, v35.h
	v_mov_b16_e32 v66.l, v58.h
	v_add3_u32 v58, v65, v69, 0x7fff
	v_add3_u32 v64, v64, v67, 0x7fff
	v_and_b32_e32 v65, 1, v35
	v_and_b32_e32 v67, 1, v71
	v_mov_b16_e32 v35.l, v60.h
	v_mov_b16_e32 v69.l, v61.h
	v_mov_b16_e32 v69.h, v35.h
	v_mov_b16_e32 v64.l, v58.h
	v_add3_u32 v58, v63, v67, 0x7fff
	v_add3_u32 v62, v62, v65, 0x7fff
	v_and_b32_e32 v63, 1, v35
	v_and_b32_e32 v65, 1, v69
	v_mov_b16_e32 v35.l, v56.h
	v_mov_b16_e32 v67.l, v57.h
	v_mov_b16_e32 v67.h, v35.h
	v_mov_b16_e32 v62.l, v58.h
	v_add3_u32 v58, v61, v65, 0x7fff
	v_add3_u32 v60, v60, v63, 0x7fff
	v_and_b32_e32 v61, 1, v35
	v_and_b32_e32 v63, 1, v67
	v_mov_b16_e32 v35.l, v54.h
	v_mov_b16_e32 v65.l, v55.h
	v_mov_b16_e32 v65.h, v35.h
	v_mov_b16_e32 v60.l, v58.h
	v_add3_u32 v57, v57, v63, 0x7fff
	v_add3_u32 v56, v56, v61, 0x7fff
	v_and_b32_e32 v58, 1, v35
	v_and_b32_e32 v61, 1, v65
	v_mov_b16_e32 v35.l, v52.h
	v_mov_b16_e32 v63.l, v53.h
	v_mov_b16_e32 v63.h, v35.h
	v_mov_b16_e32 v56.l, v57.h
	v_add3_u32 v55, v55, v61, 0x7fff
	v_add3_u32 v54, v54, v58, 0x7fff
	v_and_b32_e32 v57, 1, v35
	v_and_b32_e32 v58, 1, v63
	v_mov_b16_e32 v35.l, v50.h
	v_mov_b16_e32 v61.l, v51.h
	v_mov_b16_e32 v61.h, v35.h
	v_mov_b16_e32 v54.l, v55.h
	v_add3_u32 v53, v53, v58, 0x7fff
	v_add3_u32 v52, v52, v57, 0x7fff
	v_and_b32_e32 v55, 1, v35
	v_and_b32_e32 v57, 1, v61
	v_mov_b16_e32 v35.l, v48.h
	v_mov_b16_e32 v58.l, v49.h
	v_mov_b16_e32 v58.h, v35.h
	v_mov_b16_e32 v52.l, v53.h
	v_add3_u32 v51, v51, v57, 0x7fff
	v_add3_u32 v50, v50, v55, 0x7fff
	v_and_b32_e32 v53, 1, v35
	v_and_b32_e32 v55, 1, v58
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
	v_mov_b16_e32 v31.l, v32.h
	v_mov_b16_e32 v39.l, v28.h
	v_mov_b16_e32 v39.h, v35.h
	v_add3_u32 v30, v30, v37, 0x7fff
	v_and_b32_e32 v32, 1, v35
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v35.h
	v_mov_b16_e32 v35.l, v25.h
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v13, s29, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v27, v27, v32, 0x7fff
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v14, 0x80, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v32, 1, v37
	v_cndmask_b32_e32 v37, v33, v38, vcc_lo
	v_add3_u32 v29, v29, v34, 0x7fff
	v_mov_b16_e32 v29.l, v30.h
	v_dual_cndmask_b32 v33, v38, v33 :: v_dual_and_b32 v30, 1, v35
	v_dual_cndmask_b32 v38, v31, v36 :: v_dual_cndmask_b32 v31, v36, v31
	v_add3_u32 v26, v26, v32, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v25, v25, v30, 0x7fff
	v_mov_b16_e32 v35.l, v23.h
	v_mov_b16_e32 v32.l, v22.h
	v_mov_b16_e32 v32.h, v35.h
	v_mov_b16_e32 v25.l, v26.h
	v_and_b32_e32 v34, 1, v39
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v16, s19, 4, v3
	v_add_lshl_u32 v3, v2, v3, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v36, v25, v29, vcc_lo
	v_cndmask_b32_e32 v25, v29, v25, vcc_lo
	v_add3_u32 v28, v28, v34, 0x7fff
	v_mov_b16_e32 v34.l, v24.h
	v_mov_b16_e32 v34.h, v35.h
	v_permlanex16_b32 v29, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v27.l, v28.h
	v_and_b32_e32 v28, 1, v35
	v_mov_b16_e32 v35.l, v21.h
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v23, v23, v28, 0x7fff
	v_and_b32_e32 v30, 1, v34
	v_and_b32_e32 v26, 1, v35
	v_mov_b16_e32 v35.l, v19.h
	v_cndmask_b32_e32 v34, v40, v44, vcc_lo
	v_add3_u32 v24, v24, v30, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v21, v21, v26, 0x7fff
	v_mov_b16_e32 v30.l, v20.h
	v_mov_b16_e32 v30.h, v35.h
	v_mov_b16_e32 v23.l, v24.h
	v_and_b32_e32 v28, 1, v32
	v_and_b32_e32 v24, 1, v35
	v_mov_b16_e32 v35.l, v17.h
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v32, v46, v42 :: v_dual_cndmask_b32 v39, v23, v27
	v_cndmask_b32_e32 v23, v27, v23, vcc_lo
	v_add3_u32 v22, v22, v28, 0x7fff
	v_mov_b16_e32 v28.l, v18.h
	v_mov_b16_e32 v28.h, v35.h
	v_add3_u32 v19, v19, v24, 0x7fff
	v_and_b32_e32 v24, 1, v35
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e32 v35.l, v12.h
	v_and_b32_e32 v22, 1, v28
	v_cndmask_b32_e32 v28, v52, v48, vcc_lo
	v_add3_u32 v17, v17, v24, 0x7fff
	v_cndmask_b32_e32 v24, v54, v50, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v18, v18, v22, 0x7fff
	v_mov_b16_e32 v22.l, v11.h
	v_mov_b16_e32 v22.h, v35.h
	v_mov_b16_e32 v17.l, v18.h
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v35.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v12, v12, v18, 0x7fff
	v_and_b32_e32 v26, 1, v30
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v35.l, v8.h
	v_cndmask_b32_e32 v30, v42, v46, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v20, v20, v26, 0x7fff
	v_mov_b16_e32 v26.l, v15.h
	v_mov_b16_e32 v26.h, v35.h
	v_add3_u32 v10, v10, v18, 0x7fff
	v_mov_b16_e32 v18.l, v5.h
	v_mov_b16_e32 v19.l, v20.h
	v_mov_b16_e32 v18.h, v35.h
	v_and_b32_e32 v20, 1, v26
	v_cndmask_b32_e32 v26, v48, v52, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
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
	v_cndmask_b32_e32 v18, v56, v62, vcc_lo
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
	v_cndmask_b32_e32 v15, v64, v60, vcc_lo
	v_cndmask_b32_e32 v20, v62, v56, vcc_lo
	v_cndmask_b32_e32 v35, v44, v40, vcc_lo
	v_add3_u32 v0, v4, v9, 0x7fff
	v_mov_b16_e32 v0.l, v5.h
	v_cndmask_b32_e32 v4, v59, v68, vcc_lo
	v_cndmask_b32_e32 v42, v6, v10, vcc_lo
	v_cndmask_b32_e32 v6, v10, v6, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v10, 0x5410 :: v_dual_cndmask_b32 v43, v0, v8
	v_cndmask_b32_e32 v0, v8, v0, vcc_lo
	v_permlanex16_b32 v8, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v9, v70, v66, vcc_lo
	v_cndmask_b32_e32 v4, 0x1054, v10, vcc_lo
	v_cndmask_b32_e32 v10, 0x3276, v19, vcc_lo
	v_cndmask_b32_e32 v40, v17, v21, vcc_lo
	v_cndmask_b32_e32 v17, v21, v17, vcc_lo
	v_cndmask_b32_e32 v5, v68, v59, vcc_lo
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v7, v66, v70, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v11, v60, v64, vcc_lo
	v_and_b32_e32 v4, 0x540054, v4
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
	v_permlanex16_b32 v35, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v8, v5, v44
	v_perm_b32 v5, v8, v5, v45
	v_perm_b32 v6, v9, v7, v44
	v_perm_b32 v7, v9, v7, v45
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
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
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
		.amdhsa_next_free_sgpr 30
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
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 179
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13832
; TotalNumSgprs: 32
; NumVgprs: 179
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 32
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
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
