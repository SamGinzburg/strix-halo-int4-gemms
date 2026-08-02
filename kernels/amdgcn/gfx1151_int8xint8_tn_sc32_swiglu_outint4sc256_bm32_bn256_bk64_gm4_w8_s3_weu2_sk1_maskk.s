	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	v_and_b32_e32 v45, 15, v0
	v_and_b32_e32 v111, 8, v0
	v_lshlrev_b32_e32 v112, 1, v0
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
	s_sub_i32 s30, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s4, s33, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s30, s7
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
	v_and_b32_e32 v43, 0x60, v2
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 15 is_stmt 0                ; generate_amdgcn.py:0:15
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr43
.LBB0_3:                                ; %Flow539
	s_load_b128 s[16:19], s[0:1], 0x20
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v46, 7, v0
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v44, 0xf0, v0
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v41, 4, v45
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v107, 0
	v_mov_b32_e32 v100, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s31, s2, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v113, 3, v0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s4, 31
.Ltmp18:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s33, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s5, s1, 31
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s4, s4, s0
	v_mul_lo_u32 v3, s28, v113
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s5, s5, 27
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s35, s4, 6
	s_mov_b32 s4, 0
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s1, s5
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
.Ltmp25:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v114, 3, v44
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s29, 1
	v_or_b32_e32 v7, s31, v45
	v_lshrrev_b32_e32 v9, 6, v0
.Ltmp26:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s36, s1, 5
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
.Ltmp27:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v1, 2, v46
	v_lshlrev_b32_e32 v4, 4, v0
	v_mad_u64_u32 v[42:43], null, s34, v114, v[41:42]
	v_and_b32_e32 v43, 0x60, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v115, v3, v1, s31
	v_bfe_i32 v1, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
	v_and_b32_e32 v4, 0xe00, v4
	v_lshlrev_b32_e32 v6, 2, v0
	v_mul_lo_u32 v118, v7, s36
	v_and_b32_e32 v1, 0x90, v1
	v_and_b32_e32 v3, 0x110, v3
	v_lshl_or_b32 v5, v45, 9, v114
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v2, 32, v2
	v_mov_b32_e32 v108, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v3
	v_mov_b32_e32 v105, 0
	v_xor_b32_e32 v3, 0x90, v5
	v_xor_b32_e32 v8, 0x110, v5
	v_or_b32_e32 v10, 0x3f0, v0
	v_or3_b32 v1, v4, v1, v43
	v_or_b32_e32 v4, 16, v7
	v_lshlrev_b32_e32 v7, 1, v44
	v_and_b32_e32 v12, 28, v112
	v_mov_b32_e32 v106, 0
	v_xor_b32_e32 v11, 16, v1
	v_mul_lo_u32 v119, v4, s36
	v_and_b32_e32 v4, 2, v9
	v_and_b32_e32 v9, 0x1c0, v6
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v121, 0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v4, 0, v4
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s2, s30, 8
	v_add3_u32 v13, v121, v7, v2
	s_add_i32 s37, s2, s29
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v125, 0, v6
	v_add3_u32 v9, v4, v9, v2
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v126, 0, v5
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v127, 0, v3
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v128, 0, v8
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v130, 0, v1
	v_dual_mov_b32 v1, s4 :: v_dual_add_nc_u32 v116, s34, v42
	v_mov_b32_e32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v117, 0, v45
	v_or_b32_e32 v120, s2, v0
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v122, s37, v0
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v123, s2, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_add_u32 v124, s28, 5, v115
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v129, 0, v10
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v131, 0, v11
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v132, v9, v12
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v133, v13, v12
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_mov_b32_e32 v61, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s38, s29, 6
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
	v_or_b32_e32 v9, s0, v113
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s6, s0, s34
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s1, s0, s28
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_or_b32 s5, s0, 32
	v_add_nc_u32_e32 v12, s6, v123
	v_or_b32_e32 v10, s0, v114
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v11, s1, v115
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v13, s5, v113
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s33, v9
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s7, s0, 5
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v14, s5, v114
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s0, s6, s38
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s7, s34
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v23, s29, v12
	v_add_nc_u32_e32 v15, s1, v124
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s1, s0, s2
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	s_add_i32 s39, s0, s37
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s33, v10
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v17, v120, s6, 1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e32 v21, 0x80000000, v11, vcc_lo
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s33, v13
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v9, s1, v42
	v_add_nc_u32_e32 v18, s1, v116
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s1, s33, v14
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v22, s34, v12
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v33, s34, v23
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s7, s36
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v10, 0x80000000, v12, s0
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v19, s39, v42
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e32 v13, 0x80000000, v15, vcc_lo
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v20, s39, v116
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v16, v118, s7, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v14, 0x80000000, v9, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v158, 0x80000000, v17, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v17, 0x80000000, v22, s0
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v34, 0x80000000, v23, s0
	v_cndmask_b32_e64 v37, 0x80000000, v33, s0
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s5, 5
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	buffer_load_b128 v[9:12], v10, s[24:27], 0 offen
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_clause 0x1
	buffer_load_b32 v159, v21, s[20:23], 0 offen
	buffer_load_b32 v160, v13, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v21, 0x80000000, v18, s1
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v25, 0x80000000, v19, s1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s36
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v212, v118, s0, 1
	v_add_lshl_u32 v213, v119, s0, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s0, s0, s34
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v29, 0x80000000, v20, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v214, v120, s0, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v161, 0x80000000, v16, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x6
	buffer_load_b128 v[13:16], v14, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v34, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v37, s[24:27], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v215, v122, s0, 1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(8)
	ds_store_b32 v125, v159 offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(5)
	v_perm_b32 v134, v17, v9, 0x5010400
	v_perm_b32 v137, v20, v12, 0x5010400
	v_perm_b32 v17, v17, v9, 0x7030602
	v_perm_b32 v135, v18, v10, 0x5010400
	v_perm_b32 v18, v18, v10, 0x7030602
	v_perm_b32 v136, v19, v11, 0x5010400
	v_perm_b32 v19, v19, v11, 0x7030602
	v_perm_b32 v20, v20, v12, 0x7030602
	s_waitcnt vmcnt(4)
	v_perm_b32 v138, v21, v13, 0x5010400
	v_lshrrev_b32_e32 v148, 8, v134
	v_lshrrev_b32_e32 v162, 24, v137
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(0)
	v_perm_b32 v164, v37, v33, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v21, v21, v13, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v143, v29, v25, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v139, v22, v14, 0x5010400
	v_perm_b32 v22, v22, v14, 0x7030602
	v_perm_b32 v140, v23, v15, 0x5010400
	v_perm_b32 v23, v23, v15, 0x7030602
	v_perm_b32 v141, v24, v16, 0x5010400
	v_perm_b32 v142, v24, v16, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v29, v29, v25, 0x7030602
	v_perm_b32 v144, v30, v26, 0x5010400
	v_perm_b32 v30, v30, v26, 0x7030602
	v_perm_b32 v145, v31, v27, 0x5010400
	v_perm_b32 v31, v31, v27, 0x7030602
	v_perm_b32 v146, v32, v28, 0x5010400
	v_perm_b32 v147, v32, v28, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v9.l, 0xff, v134.l
	v_lshrrev_b32_e32 v149, 24, v134
	v_and_b16 v9.h, 0xff, v134.h
	v_lshrrev_b32_e32 v134, 8, v17
	v_lshrrev_b32_e32 v150, 24, v17
	v_and_b16 v11.l, 0xff, v135.l
	v_lshrrev_b32_e32 v151, 8, v135
	v_lshrrev_b32_e32 v152, 24, v135
	v_and_b16 v11.h, 0xff, v135.h
	v_lshrrev_b32_e32 v135, 8, v18
	v_lshrrev_b32_e32 v153, 24, v18
	v_and_b16 v13.l, 0xff, v136.l
	v_lshrrev_b32_e32 v154, 8, v136
	v_lshrrev_b32_e32 v155, 24, v136
	v_and_b16 v13.h, 0xff, v136.h
	v_lshrrev_b32_e32 v136, 8, v19
	v_lshrrev_b32_e32 v156, 24, v19
	v_and_b16 v15.l, 0xff, v137.l
	v_lshrrev_b32_e32 v157, 8, v137
	v_and_b16 v15.h, 0xff, v137.h
	v_lshrrev_b32_e32 v137, 8, v20
	v_lshrrev_b32_e32 v163, 24, v20
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v165, v37, v33, 0x7030602
	v_perm_b32 v166, v38, v34, 0x5010400
	v_perm_b32 v167, v38, v34, 0x7030602
	v_perm_b32 v168, v39, v35, 0x5010400
	v_perm_b32 v169, v39, v35, 0x7030602
	v_perm_b32 v170, v40, v36, 0x5010400
	v_perm_b32 v171, v40, v36, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v172, 8, v138
	v_lshlrev_b16 v33.l, 8, v148.l
	v_lshlrev_b16 v39.h, 8, v162.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v162, 8, v164
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v173, 24, v138
	v_lshrrev_b32_e32 v174, 8, v21
	v_lshrrev_b32_e32 v175, 24, v21
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v188, 8, v143
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v10.l, 0xff, v17.l
	v_and_b16 v10.h, 0xff, v17.h
	v_and_b16 v12.l, 0xff, v18.l
	v_and_b16 v12.h, 0xff, v18.h
	v_and_b16 v14.l, 0xff, v19.l
	v_and_b16 v14.h, 0xff, v19.h
	v_and_b16 v16.l, 0xff, v20.l
	v_and_b16 v16.h, 0xff, v20.h
	v_and_b16 v17.l, 0xff, v138.l
	v_and_b16 v17.h, 0xff, v138.h
	v_and_b16 v18.l, 0xff, v21.l
	v_and_b16 v18.h, 0xff, v21.h
	v_and_b16 v19.l, 0xff, v139.l
	v_lshrrev_b32_e32 v176, 8, v139
	v_lshrrev_b32_e32 v177, 24, v139
	v_and_b16 v19.h, 0xff, v139.h
	v_lshrrev_b32_e32 v178, 8, v22
	v_lshrrev_b32_e32 v179, 24, v22
	v_and_b16 v21.l, 0xff, v140.l
	v_lshrrev_b32_e32 v180, 8, v140
	v_lshrrev_b32_e32 v181, 24, v140
	v_and_b16 v21.h, 0xff, v140.h
	v_lshrrev_b32_e32 v182, 8, v23
	v_lshrrev_b32_e32 v183, 24, v23
	v_lshrrev_b32_e32 v184, 8, v141
	v_lshrrev_b32_e32 v185, 24, v141
	v_and_b16 v24.l, 0xff, v142.l
	v_lshrrev_b32_e32 v186, 8, v142
	v_lshrrev_b32_e32 v187, 24, v142
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v189, 24, v143
	v_lshrrev_b32_e32 v190, 8, v29
	v_lshrrev_b32_e32 v191, 24, v29
	v_lshrrev_b32_e32 v192, 8, v144
	v_lshrrev_b32_e32 v193, 24, v144
	v_lshrrev_b32_e32 v194, 8, v30
	v_lshrrev_b32_e32 v195, 24, v30
	v_lshrrev_b32_e32 v196, 8, v145
	v_lshrrev_b32_e32 v197, 24, v145
	v_lshrrev_b32_e32 v198, 8, v31
	v_lshrrev_b32_e32 v199, 24, v31
	v_lshrrev_b32_e32 v200, 8, v146
	v_lshrrev_b32_e32 v201, 24, v146
	v_lshrrev_b32_e32 v202, 8, v147
	v_lshrrev_b32_e32 v203, 24, v147
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v33.h, 8, v149.l
	v_lshlrev_b16 v34.l, 8, v134.l
	v_lshlrev_b16 v34.h, 8, v150.l
	v_lshlrev_b16 v35.l, 8, v151.l
	v_lshlrev_b16 v35.h, 8, v152.l
	v_lshlrev_b16 v36.l, 8, v135.l
	v_lshlrev_b16 v36.h, 8, v153.l
	v_lshlrev_b16 v37.l, 8, v154.l
	v_lshlrev_b16 v37.h, 8, v155.l
	v_lshlrev_b16 v38.l, 8, v136.l
	v_lshlrev_b16 v38.h, 8, v156.l
	v_lshlrev_b16 v39.l, 8, v157.l
	v_lshlrev_b16 v40.l, 8, v137.l
	v_lshlrev_b16 v40.h, 8, v163.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v134.l, 0xff, v164.l
	v_lshrrev_b32_e32 v163, 24, v164
	v_and_b16 v134.h, 0xff, v164.h
	v_and_b16 v135.l, 0xff, v165.l
	v_lshrrev_b32_e32 v164, 8, v165
	v_lshrrev_b32_e32 v204, 24, v165
	v_and_b16 v135.h, 0xff, v165.h
	v_and_b16 v136.l, 0xff, v166.l
	v_lshrrev_b32_e32 v165, 8, v166
	v_lshrrev_b32_e32 v205, 24, v166
	v_and_b16 v136.h, 0xff, v166.h
	v_and_b16 v137.l, 0xff, v167.l
	v_lshrrev_b32_e32 v166, 8, v167
	v_lshrrev_b32_e32 v206, 24, v167
	v_and_b16 v137.h, 0xff, v167.h
	v_and_b16 v138.l, 0xff, v168.l
	v_lshrrev_b32_e32 v167, 8, v168
	v_lshrrev_b32_e32 v207, 24, v168
	v_and_b16 v138.h, 0xff, v168.h
	v_and_b16 v139.l, 0xff, v169.l
	v_lshrrev_b32_e32 v168, 8, v169
	v_lshrrev_b32_e32 v208, 24, v169
	v_and_b16 v139.h, 0xff, v169.h
	v_and_b16 v140.l, 0xff, v170.l
	v_lshrrev_b32_e32 v169, 8, v170
	v_lshrrev_b32_e32 v209, 24, v170
	v_and_b16 v140.h, 0xff, v170.h
	v_lshrrev_b32_e32 v170, 8, v171
	v_lshrrev_b32_e32 v210, 24, v171
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v142.l, 8, v172.l
	v_or_b16 v9.l, v9.l, v33.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v33.l, 8, v162.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v24.h, 0xff, v142.h
	v_lshlrev_b16 v142.h, 8, v173.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v25.l, 0xff, v143.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v143.l, 8, v174.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v25.h, 0xff, v143.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v143.h, 8, v175.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v150.l, 8, v188.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v20.l, 0xff, v22.l
	v_and_b16 v20.h, 0xff, v22.h
	v_and_b16 v22.l, 0xff, v23.l
	v_and_b16 v22.h, 0xff, v23.h
	v_and_b16 v23.l, 0xff, v141.l
	v_and_b16 v23.h, 0xff, v141.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v26.l, 0xff, v29.l
	v_and_b16 v26.h, 0xff, v29.h
	v_and_b16 v27.l, 0xff, v144.l
	v_and_b16 v27.h, 0xff, v144.h
	v_and_b16 v28.l, 0xff, v30.l
	v_and_b16 v28.h, 0xff, v30.h
	v_and_b16 v29.l, 0xff, v145.l
	v_and_b16 v29.h, 0xff, v145.h
	v_and_b16 v30.l, 0xff, v31.l
	v_and_b16 v30.h, 0xff, v31.h
	v_and_b16 v31.l, 0xff, v146.l
	v_and_b16 v31.h, 0xff, v146.h
	v_and_b16 v32.l, 0xff, v147.l
	v_and_b16 v32.h, 0xff, v147.h
	v_and_b16 v141.l, 0xff, v171.l
	v_and_b16 v141.h, 0xff, v171.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v144.l, 8, v176.l
	v_lshlrev_b16 v144.h, 8, v177.l
	v_lshlrev_b16 v145.l, 8, v178.l
	v_lshlrev_b16 v145.h, 8, v179.l
	v_lshlrev_b16 v146.l, 8, v180.l
	v_lshlrev_b16 v146.h, 8, v181.l
	v_lshlrev_b16 v147.l, 8, v182.l
	v_lshlrev_b16 v147.h, 8, v183.l
	v_lshlrev_b16 v148.l, 8, v184.l
	v_lshlrev_b16 v148.h, 8, v185.l
	v_lshlrev_b16 v149.l, 8, v186.l
	v_lshlrev_b16 v149.h, 8, v187.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v150.h, 8, v189.l
	v_lshlrev_b16 v151.l, 8, v190.l
	v_lshlrev_b16 v151.h, 8, v191.l
	v_lshlrev_b16 v152.l, 8, v192.l
	v_lshlrev_b16 v152.h, 8, v193.l
	v_lshlrev_b16 v153.l, 8, v194.l
	v_lshlrev_b16 v153.h, 8, v195.l
	v_lshlrev_b16 v154.l, 8, v196.l
	v_lshlrev_b16 v154.h, 8, v197.l
	v_lshlrev_b16 v155.l, 8, v198.l
	v_lshlrev_b16 v155.h, 8, v199.l
	v_lshlrev_b16 v156.l, 8, v200.l
	v_lshlrev_b16 v156.h, 8, v201.l
	v_lshlrev_b16 v157.l, 8, v202.l
	v_lshlrev_b16 v157.h, 8, v203.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v9.h, v9.h, v33.h
	v_or_b16 v10.l, v10.l, v34.l
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
	v_lshlrev_b16 v33.h, 8, v163.l
	v_lshlrev_b16 v34.l, 8, v164.l
	v_lshlrev_b16 v34.h, 8, v204.l
	v_lshlrev_b16 v35.l, 8, v165.l
	v_lshlrev_b16 v35.h, 8, v205.l
	v_lshlrev_b16 v36.l, 8, v166.l
	v_lshlrev_b16 v36.h, 8, v206.l
	v_lshlrev_b16 v37.l, 8, v167.l
	v_lshlrev_b16 v37.h, 8, v207.l
	v_lshlrev_b16 v38.l, 8, v168.l
	v_lshlrev_b16 v38.h, 8, v208.l
	v_lshlrev_b16 v39.l, 8, v169.l
	v_lshlrev_b16 v39.h, 8, v209.l
	v_lshlrev_b16 v40.l, 8, v170.l
	v_lshlrev_b16 v40.h, 8, v210.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v17.l, v17.l, v142.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v33.l, v134.l, v33.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v17.h, v17.h, v142.h
	v_or_b16 v18.l, v18.l, v143.l
	v_or_b16 v18.h, v18.h, v143.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v25.l, v25.l, v150.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v19.l, v19.l, v144.l
	v_or_b16 v19.h, v19.h, v144.h
	v_or_b16 v20.l, v20.l, v145.l
	v_or_b16 v20.h, v20.h, v145.h
	v_or_b16 v21.l, v21.l, v146.l
	v_or_b16 v21.h, v21.h, v146.h
	v_or_b16 v22.l, v22.l, v147.l
	v_or_b16 v22.h, v22.h, v147.h
	v_or_b16 v23.l, v23.l, v148.l
	v_or_b16 v23.h, v23.h, v148.h
	v_or_b16 v24.l, v24.l, v149.l
	v_or_b16 v24.h, v24.h, v149.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v25.h, v25.h, v150.h
	v_or_b16 v26.l, v26.l, v151.l
	v_or_b16 v26.h, v26.h, v151.h
	v_or_b16 v27.l, v27.l, v152.l
	v_or_b16 v27.h, v27.h, v152.h
	v_or_b16 v28.l, v28.l, v153.l
	v_or_b16 v28.h, v28.h, v153.h
	v_or_b16 v29.l, v29.l, v154.l
	v_or_b16 v29.h, v29.h, v154.h
	v_or_b16 v30.l, v30.l, v155.l
	v_or_b16 v30.h, v30.h, v155.h
	v_or_b16 v31.l, v31.l, v156.l
	v_or_b16 v31.h, v31.h, v156.h
	v_or_b16 v32.l, v32.l, v157.l
	v_or_b16 v32.h, v32.h, v157.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v126, v9
	ds_store_b16_d16_hi v126, v9 offset:32
	ds_store_b16 v126, v10 offset:64
	ds_store_b16_d16_hi v126, v10 offset:96
	ds_store_b16_d16_hi v127, v11 offset:32
	ds_store_b16 v127, v12 offset:64
	ds_store_b16_d16_hi v127, v12 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v9.l, v134.h, v33.h
	v_or_b16 v9.h, v135.l, v34.l
	v_or_b16 v10.l, v135.h, v34.h
	v_or_b16 v10.h, v136.l, v35.l
	v_or_b16 v11.h, v136.h, v35.h
	v_or_b16 v12.l, v137.l, v36.l
	v_or_b16 v12.h, v137.h, v36.h
	v_or_b16 v33.h, v138.l, v37.l
	v_or_b16 v34.l, v138.h, v37.h
	v_or_b16 v34.h, v139.l, v38.l
	v_or_b16 v35.l, v139.h, v38.h
	v_or_b16 v35.h, v140.l, v39.l
	v_or_b16 v36.l, v140.h, v39.h
	v_or_b16 v36.h, v141.l, v40.l
	v_or_b16 v37.l, v141.h, v40.h
	ds_store_b16 v126, v33 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v127, v11
	ds_store_b16 v128, v13
	ds_store_b16_d16_hi v128, v13 offset:32
	ds_store_b16 v128, v14 offset:64
	ds_store_b16_d16_hi v128, v14 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v126, v9 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v126, v15 offset:384
	ds_store_b16_d16_hi v126, v15 offset:416
	ds_store_b16 v126, v16 offset:448
	ds_store_b16_d16_hi v126, v16 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v126, v9 offset:16416
	ds_store_b16 v126, v10 offset:16480
	ds_store_b16_d16_hi v127, v10 offset:16384
	ds_store_b16_d16_hi v127, v11 offset:16416
	ds_store_b16 v127, v12 offset:16448
	ds_store_b16_d16_hi v127, v12 offset:16480
	ds_store_b16_d16_hi v128, v33 offset:16384
	ds_store_b16 v128, v34 offset:16416
	ds_store_b16_d16_hi v128, v34 offset:16448
	ds_store_b16 v128, v35 offset:16480
	ds_store_b16_d16_hi v126, v35 offset:16768
	ds_store_b16 v126, v36 offset:16800
	ds_store_b16_d16_hi v126, v36 offset:16832
	ds_store_b16 v126, v37 offset:16864
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v126, v17 offset:8192
	ds_store_b16_d16_hi v126, v17 offset:8224
	ds_store_b16 v126, v18 offset:8256
	ds_store_b16_d16_hi v126, v18 offset:8288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v126, v25 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v127, v19 offset:8192
	ds_store_b16_d16_hi v127, v19 offset:8224
	ds_store_b16 v127, v20 offset:8256
	ds_store_b16_d16_hi v127, v20 offset:8288
	ds_store_b16 v128, v21 offset:8192
	ds_store_b16_d16_hi v128, v21 offset:8224
	ds_store_b16 v128, v22 offset:8256
	ds_store_b16_d16_hi v128, v22 offset:8288
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_store_b32 v125, v160 offset:33792
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v126, v26 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v126, v23 offset:8576
	ds_store_b16_d16_hi v126, v23 offset:8608
	ds_store_b16 v126, v24 offset:8640
	ds_store_b16_d16_hi v126, v24 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v126, v25 offset:24608
	ds_store_b16_d16_hi v126, v26 offset:24672
	ds_store_b16 v127, v27 offset:24576
	ds_store_b16_d16_hi v127, v27 offset:24608
	ds_store_b16 v127, v28 offset:24640
	ds_store_b16_d16_hi v127, v28 offset:24672
	ds_store_b16 v128, v29 offset:24576
	ds_store_b16_d16_hi v128, v29 offset:24608
	ds_store_b16 v128, v30 offset:24640
	ds_store_b16_d16_hi v128, v30 offset:24672
	ds_store_b16 v126, v31 offset:24960
	ds_store_b16_d16_hi v126, v31 offset:24992
	ds_store_b16 v126, v32 offset:25024
	ds_store_b16_d16_hi v126, v32 offset:25056
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v134, v158, s[12:15], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v10, v122, s6, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v9, v119, s7, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_dual_cndmask_b32 v149, 0x80000000, v10 :: v_dual_cndmask_b32 v136, 0x80000000, v9
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[17:20], v130
	ds_load_b128 v[21:24], v130 offset:4096
	ds_load_b128 v[13:16], v131
	ds_load_b128 v[9:12], v131 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v141, v117 offset:32864
	ds_load_u8 v142, v117 offset:32832
	ds_load_u8 v143, v117 offset:32768
	ds_load_u8 v137, v117 offset:32784
	ds_load_u8 v146, v117 offset:32800
	ds_load_u8 v138, v117 offset:32880
	ds_load_u8 v140, v117 offset:32848
	ds_load_u8 v139, v117 offset:32816
	ds_load_u8 v157, v117 offset:33184
	ds_load_u8 v159, v117 offset:33152
	ds_load_u8 v160, v117 offset:33248
	ds_load_u8 v162, v117 offset:33216
	ds_load_u8 v144, v117 offset:33264
	ds_load_u8 v145, v117 offset:33232
	ds_load_u8 v147, v117 offset:33200
	ds_load_u8 v148, v117 offset:33168
	ds_load_u8 v169, v117 offset:33056
	ds_load_u8 v171, v117 offset:33024
	ds_load_u8 v172, v117 offset:33120
	ds_load_u8 v175, v117 offset:33088
	ds_load_u8 v150, v117 offset:33136
	ds_load_u8 v151, v117 offset:33104
	ds_load_u8 v153, v117 offset:33072
	ds_load_u8 v154, v117 offset:33040
	ds_load_u8 v179, v117 offset:32928
	ds_load_u8 v181, v117 offset:32896
	ds_load_u8 v182, v117 offset:32992
	ds_load_u8 v185, v117 offset:32960
	ds_load_u8 v156, v117 offset:33008
	ds_load_u8 v158, v117 offset:32976
	ds_load_u8 v163, v117 offset:32944
	ds_load_u8 v165, v117 offset:32912
	ds_load_u8 v186, v117 offset:33568
	ds_load_u8 v187, v117 offset:33536
	ds_load_u8 v188, v117 offset:33632
	ds_load_u8 v190, v117 offset:33600
	ds_load_u8 v166, v117 offset:33648
	ds_load_u8 v167, v117 offset:33616
	ds_load_u8 v170, v117 offset:33584
	ds_load_u8 v173, v117 offset:33552
	ds_load_u8 v194, v117 offset:33440
	ds_load_u8 v195, v117 offset:33408
	ds_load_u8 v196, v117 offset:33504
	ds_load_u8 v198, v117 offset:33472
	ds_load_u8 v176, v117 offset:33520
	ds_load_u8 v177, v117 offset:33488
	ds_load_u8 v180, v117 offset:33456
	ds_load_u8 v183, v117 offset:33424
	ds_load_u8 v202, v117 offset:33312
	ds_load_u8 v203, v117 offset:33280
	ds_load_u8 v204, v117 offset:33376
	ds_load_u8 v205, v117 offset:33344
	ds_load_u8 v189, v117 offset:33392
	ds_load_u8 v191, v117 offset:33360
	ds_load_u8 v192, v117 offset:33328
	ds_load_u8 v193, v117 offset:33296
	ds_load_u8 v206, v117 offset:33696
	ds_load_u8 v207, v117 offset:33664
	ds_load_u8 v208, v117 offset:33760
	ds_load_u8 v209, v117 offset:33728
	ds_load_u8 v197, v129 offset:32768
	ds_load_u8 v199, v117 offset:33744
	ds_load_u8 v200, v117 offset:33712
	ds_load_u8 v201, v117 offset:33680
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[33:36], v130 offset:16384
	ds_load_b128 v[37:40], v130 offset:20480
	ds_load_b128 v[25:28], v131 offset:16384
	ds_load_b128 v[29:32], v131 offset:20480
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v236, 0x80000000, v212, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v238, 0x80000000, v214, vcc_lo
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v135, v161, s[8:11], 0 offen
	buffer_load_u16 v136, v136, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v157, v159, v157, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v159, v162, v160, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v160, v171, v169, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v162, v175, v172, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v169, v181, v179, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v171, v185, v182, 0xc0c0004
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v142, v143, v146, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v143, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v172, v209, v208, 0xc0c0004
	v_perm_b32 v175, v187, v186, 0xc0c0004
	v_perm_b32 v187, v148, v147, 0xc0c0004
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_perm_b32 v153, v154, v153, 0xc0c0004
	v_perm_b32 v150, v151, v150, 0xc0c0004
	v_perm_b32 v151, v165, v163, 0xc0c0004
	v_perm_b32 v154, v158, v156, 0xc0c0004
	v_perm_b32 v138, v140, v138, 0xc0c0004
	v_perm_b32 v137, v137, v139, 0xc0c0004
	v_perm_b32 v179, v190, v188, 0xc0c0004
	v_perm_b32 v181, v195, v194, 0xc0c0004
	v_perm_b32 v182, v198, v196, 0xc0c0004
	v_perm_b32 v185, v203, v202, 0xc0c0004
	v_perm_b32 v186, v205, v204, 0xc0c0004
	v_perm_b32 v139, v173, v170, 0xc0c0004
	v_perm_b32 v140, v167, v166, 0xc0c0004
	v_perm_b32 v163, v183, v180, 0xc0c0004
	v_perm_b32 v165, v177, v176, 0xc0c0004
	v_perm_b32 v166, v193, v192, 0xc0c0004
	v_perm_b32 v167, v191, v189, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v173, v201, v200, 0xc0c0004
	v_perm_b32 v176, v199, v197, 0xc0c0004
	v_lshl_or_b32 v148, v159, 16, v157
	v_lshl_or_b32 v147, v162, 16, v160
	v_lshl_or_b32 v146, v171, 16, v169
	v_lshl_or_b32 v145, v141, 16, v142
	v_lshl_or_b32 v159, v172, 16, v143
	v_lshl_or_b32 v172, v144, 16, v187
	v_lshl_or_b32 v171, v150, 16, v153
	v_lshl_or_b32 v170, v154, 16, v151
	v_lshl_or_b32 v169, v138, 16, v137
	v_lshl_or_b32 v158, v179, 16, v175
	v_lshl_or_b32 v157, v182, 16, v181
	v_lshl_or_b32 v156, v186, 16, v185
	v_lshl_or_b32 v181, v140, 16, v139
	v_lshl_or_b32 v180, v165, 16, v163
	v_lshl_or_b32 v179, v167, 16, v166
	v_lshl_or_b32 v182, v176, 16, v173
	v_wmma_i32_16x16x16_iu8 v[137:144], v[17:20], v[145:148], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[193:200], v[17:20], v[169:172], v[1:8] neg_lo:[1,1,0]
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v237, 0x80000000, v213, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[185:192], v[21:24], v[145:148], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[201:208], v[21:24], v[169:172], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[145:148], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[220:227], v[33:36], v[169:172], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[228:235], v[37:40], v[169:172], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[137:144], v[13:16], v[156:159], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[193:200], v[13:16], v[179:182], v[193:200] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[185:192], v[9:12], v[156:159], v[185:192] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[201:208], v[9:12], v[179:182], v[201:208] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[156:159], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[220:227], v[25:28], v[179:182], v[220:227] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[228:235], v[29:32], v[179:182], v[228:235] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v9, v138
	v_cvt_f32_i32_e32 v10, v185
	v_cvt_f32_i32_e32 v11, v190
	v_cvt_f32_i32_e32 v12, v191
	v_cvt_f32_i32_e32 v25, v192
	v_cvt_f32_i32_e32 v26, v194
	v_cvt_f32_i32_e32 v27, v201
	v_cvt_f32_i32_e32 v28, v206
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v138, v233
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v150, v195
	v_cvt_f32_i32_e32 v151, v200
	v_cvt_f32_i32_e32 v153, v199
	v_cvt_f32_i32_e32 v154, v198
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v160, v224
	v_cvt_f32_i32_e32 v162, v223
	v_cvt_f32_i32_e32 v163, v222
	v_cvt_f32_i32_e32 v165, v220
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v166, v205
	v_cvt_f32_i32_e32 v167, v204
	v_cvt_f32_i32_e32 v169, v203
	v_cvt_f32_i32_e32 v170, v202
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v171, v232
	v_cvt_f32_i32_e32 v172, v231
	v_cvt_f32_i32_e32 v173, v230
	v_cvt_f32_i32_e32 v175, v229
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v176, v189
	v_cvt_f32_i32_e32 v177, v188
	v_cvt_f32_i32_e32 v179, v187
	v_cvt_f32_i32_e32 v180, v186
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s4, s35
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	ds_store_b16 v132, v134 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v164, v149, s[12:15], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[13:16], v121 offset:34816
	ds_load_b128 v[33:36], v121 offset:34832
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_mov_b16_e64 v134.l, 0
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v239, 0x80000000, v215 :: v_dual_lshlrev_b32 v136, 16, v136
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[212:219], v[37:40], v[145:148], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v40, v228
	v_cvt_f32_i32_e32 v145, v234
	v_cvt_f32_i32_e32 v146, v235
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[212:219], v[29:32], v[156:159], v[212:219] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v29, v207
	v_cvt_f32_i32_e32 v30, v208
	v_cvt_f32_i32_e32 v147, v193
	v_cvt_f32_i32_e32 v148, v196
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v31, v212
	v_cvt_f32_i32_e32 v32, v217
	v_cvt_f32_i32_e32 v38, v218
	v_cvt_f32_i32_e32 v39, v219
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v156, v197
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v157, v227
	v_cvt_f32_i32_e32 v158, v226
	v_cvt_f32_i32_e32 v159, v225
	v_cvt_f32_i32_e32 v181, v216
	v_cvt_f32_i32_e32 v182, v215
	v_cvt_f32_i32_e32 v183, v214
	v_cvt_f32_i32_e32 v185, v213
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v138, v136, v138 :: v_dual_lshlrev_b32 v135, 16, v135
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v210.l, v134.l
	v_mov_b16_e64 v211.l, v134.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v27, v136, v27 :: v_dual_mul_f32 v18, v135, v18
	v_mul_f32_e32 v10, v135, v10
	v_mul_f32_e32 v11, v135, v11
	v_mul_f32_e32 v12, v135, v12
	v_mul_f32_e32 v25, v135, v25
	v_mul_f32_e32 v137, v137, v135
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v31, v135, v31
	v_mul_f32_e32 v32, v135, v32
	v_mul_f32_e32 v38, v135, v38
	v_dual_mul_f32 v39, v135, v39 :: v_dual_mul_f32 v146, v136, v146
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v28, v136, v28
	v_dual_mul_f32 v29, v136, v29 :: v_dual_mul_f32 v142, v142, v135
	v_dual_mul_f32 v30, v136, v30 :: v_dual_mul_f32 v147, v147, v136
	v_mul_f32_e32 v140, v140, v135
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v40, v136, v40
	v_dual_mul_f32 v145, v136, v145 :: v_dual_mul_f32 v20, v135, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v9, v135 :: v_dual_mul_f32 v22, v135, v22
	v_dual_mul_f32 v139, v139, v135 :: v_dual_mul_f32 v26, v26, v136
	v_dual_mul_f32 v141, v141, v135 :: v_dual_mul_f32 v24, v135, v24
	v_dual_mul_f32 v143, v143, v135 :: v_dual_mul_f32 v150, v150, v136
	v_dual_mul_f32 v144, v144, v135 :: v_dual_mul_f32 v17, v135, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v19, v135, v19 :: v_dual_mul_f32 v148, v148, v136
	v_dual_mul_f32 v21, v135, v21 :: v_dual_mul_f32 v156, v156, v136
	v_dual_mul_f32 v23, v135, v23 :: v_dual_mul_f32 v154, v154, v136
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v153, v153, v136 :: v_dual_mul_f32 v214, v136, v162
	v_dual_mul_f32 v151, v151, v136 :: v_dual_mul_f32 v216, v136, v158
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v209, v136, v165 :: v_dual_mul_f32 v158, v135, v179
	v_dual_mul_f32 v213, v136, v163 :: v_dual_mul_f32 v162, v135, v176
	v_mul_f32_e32 v160, v136, v160
	v_dual_mul_f32 v215, v136, v159 :: v_dual_mul_f32 v176, v135, v185
	v_mul_f32_e32 v217, v136, v157
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v157, v135, v180
	v_mul_f32_e32 v159, v135, v177
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v177, v135, v183
	v_mul_f32_e32 v183, v135, v182
	v_dual_mul_f32 v218, v135, v181 :: v_dual_mul_f32 v135, v136, v170
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v163, v136, v169
	v_mul_f32_e32 v165, v136, v166
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v166, v136, v175
	v_mul_f32_e32 v175, v136, v171
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v171, 0xffff0000, v35
	v_mov_b16_e64 v210.h, v15.l
	v_mov_b16_e64 v211.h, v16.l
	v_and_b32_e32 v15, 0xffff0000, v15
	v_mov_b16_e64 v134.h, v33.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v96, v29, v171
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v86, v139, v210 :: v_dual_fmac_f32 v57, v148, v211
	v_fmac_f32_e32 v62, v150, v210
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v170, 0xffff0000, v34
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v82, v141, v134 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v33, 0xffff0000, v33
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v149.l, v134.l
	v_mov_b16_e64 v152.l, v134.l
	v_mov_b16_e64 v155.l, v134.l
	v_mov_b16_e64 v161.l, v134.l
	v_mov_b16_e64 v168.l, v134.l
	v_mov_b16_e64 v174.l, v134.l
	v_mov_b16_e64 v178.l, v134.l
	v_mov_b16_e64 v184.l, v134.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v97, v28, v170 :: v_dual_fmac_f32 v60, v153, v35
	v_dual_fmac_f32 v84, v143, v35 :: v_dual_fmac_f32 v59, v154, v34
	v_fmac_f32_e32 v58, v156, v134
	v_fmac_f32_e32 v74, v162, v33
	v_fmac_f32_e32 v72, v158, v15
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	ds_store_b16 v132, v164 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v37, v238, s[12:15], 0 offen
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v164, v221
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v212, v136, v164
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v164, v136, v167
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v167, v136, v173
	v_dual_mul_f32 v173, v136, v172 :: v_dual_lshlrev_b32 v136, 16, v13
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v13, 0xffff0000, v13
	v_and_b32_e32 v172, 0xffff0000, v36
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v83, v142, v34 :: v_dual_and_b32 v16, 0xffff0000, v16
	v_fmac_f32_e32 v48, v163, v15
	v_dual_fmac_f32 v98, v27, v13 :: v_dual_lshlrev_b32 v169, 16, v14
	v_fmac_f32_e32 v100, v12, v171
	v_fmac_f32_e32 v85, v144, v36
	v_fmac_f32_e32 v81, v140, v211
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v210, v236, s[8:11], 0 offen
	buffer_load_u16 v211, v237, s[8:11], 0 offen
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v107, v10, v13 :: v_dual_and_b32 v14, 0xffff0000, v14
	v_dual_fmac_f32 v101, v11, v170 :: v_dual_fmac_f32 v80, v9, v169
	v_fmac_f32_e32 v99, v25, v172
	v_dual_fmac_f32 v95, v30, v172 :: v_dual_fmac_f32 v50, v165, v33
	v_fmac_f32_e32 v79, v137, v136
	v_dual_fmac_f32 v61, v151, v36 :: v_dual_fmac_f32 v56, v26, v169
	v_fmac_f32_e32 v51, v147, v136
	v_fmac_f32_e32 v73, v159, v16
	v_fmac_f32_e32 v71, v157, v14
	v_fmac_f32_e32 v49, v164, v16
	v_fmac_f32_e32 v47, v135, v14
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	ds_load_b128 v[9:12], v121 offset:34816
	ds_load_b128 v[13:16], v121 offset:34832
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v25, v117 offset:33888
	ds_load_u8 v26, v117 offset:33856
	ds_load_u8 v27, v117 offset:33792
	ds_load_u8 v28, v117 offset:33808
	ds_load_u8 v29, v117 offset:33824
	ds_load_u8 v30, v117 offset:33904
	ds_load_u8 v139, v117 offset:33872
	ds_load_u8 v140, v117 offset:33840
	ds_load_u8 v141, v117 offset:34208
	ds_load_u8 v142, v117 offset:34176
	ds_load_u8 v143, v117 offset:34272
	ds_load_u8 v144, v117 offset:34240
	ds_load_u8 v147, v117 offset:34288
	ds_load_u8 v148, v117 offset:34256
	ds_load_u8 v150, v117 offset:34224
	ds_load_u8 v151, v117 offset:34192
	ds_load_u8 v153, v117 offset:34080
	ds_load_u8 v154, v117 offset:34048
	ds_load_u8 v156, v117 offset:34144
	ds_load_u8 v157, v117 offset:34112
	ds_load_u8 v158, v117 offset:34160
	ds_load_u8 v159, v117 offset:34128
	ds_load_u8 v197, v117 offset:34096
	ds_load_u8 v198, v117 offset:34064
	ds_load_u8 v199, v117 offset:33952
	ds_load_u8 v200, v117 offset:33920
	ds_load_u8 v201, v117 offset:34016
	ds_load_u8 v202, v117 offset:33984
	ds_load_u8 v203, v117 offset:34032
	ds_load_u8 v204, v117 offset:34000
	ds_load_u8 v205, v117 offset:33968
	ds_load_u8 v206, v117 offset:33936
	ds_load_u8 v207, v117 offset:34592
	ds_load_u8 v208, v117 offset:34560
	ds_load_u8 v219, v117 offset:34656
	ds_load_u8 v220, v117 offset:34624
	ds_load_u8 v221, v117 offset:34672
	ds_load_u8 v222, v117 offset:34640
	ds_load_u8 v223, v117 offset:34608
	ds_load_u8 v224, v117 offset:34576
	ds_load_u8 v225, v117 offset:34464
	ds_load_u8 v226, v117 offset:34432
	ds_load_u8 v227, v117 offset:34528
	ds_load_u8 v228, v117 offset:34496
	ds_load_u8 v229, v117 offset:34544
	ds_load_u8 v230, v117 offset:34512
	ds_load_u8 v231, v117 offset:34480
	ds_load_u8 v232, v117 offset:34448
	ds_load_u8 v233, v117 offset:34336
	ds_load_u8 v234, v117 offset:34304
	ds_load_u8 v235, v117 offset:34400
	ds_load_u8 v236, v117 offset:34368
	ds_load_u8 v237, v117 offset:34416
	ds_load_u8 v238, v117 offset:34384
	ds_load_u8 v240, v117 offset:34352
	ds_load_u8 v241, v117 offset:34320
	ds_load_u8 v242, v117 offset:34720
	ds_load_u8 v243, v117 offset:34688
	ds_load_u8 v244, v117 offset:34784
	ds_load_u8 v245, v117 offset:34752
	ds_load_u8 v246, v117 offset:34768
	ds_load_u8 v247, v117 offset:34736
	ds_load_u8 v248, v117 offset:34704
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[33:36], v130 offset:8192
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v249, v129 offset:33792
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[134:137], v130 offset:12288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[162:165], v130 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[169:172], v131 offset:8192
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[179:182], v130 offset:28672
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[185:188], v131 offset:12288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[189:192], v131 offset:24576
	ds_load_b128 v[193:196], v131 offset:28672
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v142, v144, v143, 0xc0c0004
	v_perm_b32 v143, v154, v153, 0xc0c0004
	v_perm_b32 v144, v157, v156, 0xc0c0004
	v_perm_b32 v153, v200, v199, 0xc0c0004
	v_perm_b32 v154, v202, v201, 0xc0c0004
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_perm_b32 v26, v27, v29, 0xc0c0004
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_and_b32_e32 v250, 0xffff0000, v9
	v_and_b32_e32 v252, 0xffff0000, v15
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v27, v243, v242, 0xc0c0004
	v_perm_b32 v29, v245, v244, 0xc0c0004
	v_perm_b32 v199, v208, v207, 0xc0c0004
	v_perm_b32 v201, v220, v219, 0xc0c0004
	v_perm_b32 v202, v226, v225, 0xc0c0004
	v_perm_b32 v207, v228, v227, 0xc0c0004
	v_perm_b32 v208, v234, v233, 0xc0c0004
	v_perm_b32 v219, v236, v235, 0xc0c0004
	v_perm_b32 v150, v151, v150, 0xc0c0004
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v148, v198, v197, 0xc0c0004
	v_perm_b32 v151, v159, v158, 0xc0c0004
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_mov_b16_e64 v149.h, v9.l
	v_mov_b16_e64 v152.h, v10.l
	v_mov_b16_e64 v155.h, v11.l
	v_mov_b16_e64 v161.h, v12.l
	v_mov_b16_e64 v168.h, v13.l
	v_mov_b16_e64 v174.h, v14.l
	v_mov_b16_e64 v178.h, v15.l
	v_mov_b16_e64 v184.h, v16.l
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v159, v142, 16, v141
	v_lshl_or_b32 v158, v144, 16, v143
	v_lshl_or_b32 v157, v154, 16, v153
	v_lshl_or_b32 v156, v25, 16, v26
	v_perm_b32 v205, v206, v205, 0xc0c0004
	v_perm_b32 v206, v204, v203, 0xc0c0004
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v88, v24, v184 :: v_dual_and_b32 v9, 0xffff0000, v10
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_and_b32_e32 v10, 0xffff0000, v11
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v92, v20, v161 :: v_dual_and_b32 v11, 0xffff0000, v12
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v200, v29, 16, v27
	v_lshl_or_b32 v199, v201, 16, v199
	v_lshl_or_b32 v198, v207, 16, v202
	v_lshl_or_b32 v197, v219, 16, v208
	v_lshl_or_b32 v204, v147, 16, v150
	v_lshl_or_b32 v203, v151, 16, v148
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v109, v31, v250 :: v_dual_fmac_f32 v94, v17, v149
	v_dual_fmac_f32 v103, v145, v252 :: v_dual_fmac_f32 v66, v215, v174
	v_dual_fmac_f32 v89, v23, v178 :: v_dual_fmac_f32 v68, v214, v161
	v_dual_fmac_f32 v90, v22, v174 :: v_dual_fmac_f32 v91, v21, v168
	v_fmac_f32_e32 v76, v183, v11
	v_dual_fmac_f32 v87, v19, v155 :: v_dual_fmac_f32 v70, v209, v149
	v_dual_fmac_f32 v93, v18, v152 :: v_dual_fmac_f32 v78, v176, v9
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[17:24], v[134:137], v[156:159], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v30, v139, v30, 0xc0c0004
	v_perm_b32 v28, v28, v140, 0xc0c0004
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_and_b32_e32 v12, 0xffff0000, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[17:24], v[185:188], v[197:200], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v139, v224, v223, 0xc0c0004
	v_perm_b32 v140, v222, v221, 0xc0c0004
	v_perm_b32 v220, v232, v231, 0xc0c0004
	v_perm_b32 v221, v230, v229, 0xc0c0004
	v_perm_b32 v222, v241, v240, 0xc0c0004
	v_perm_b32 v223, v238, v237, 0xc0c0004
	v_perm_b32 v224, v248, v247, 0xc0c0004
	v_perm_b32 v225, v246, v249, 0xc0c0004
	v_lshl_or_b32 v202, v206, 16, v205
	v_lshl_or_b32 v201, v30, 16, v28
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v65, v216, v178 :: v_dual_fmac_f32 v54, v173, v11
	v_dual_fmac_f32 v67, v160, v168 :: v_dual_fmac_f32 v52, v166, v9
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v168, v22
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v77, v177, v10
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v207, v140, 16, v139
	v_lshl_or_b32 v206, v221, 16, v220
	v_lshl_or_b32 v205, v223, 16, v222
	v_lshl_or_b32 v208, v225, 16, v224
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v108, v38, v252 :: v_dual_fmac_f32 v105, v40, v250
	v_fmac_f32_e32 v64, v217, v184
	v_fmac_f32_e32 v63, v213, v155
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v178, v18
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v133, v37 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v239, v239, s[12:15], 0 offen
	v_and_b32_e32 v37, 0xffff0000, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v102, v146, v37 :: v_dual_and_b32 v251, 0xffff0000, v14
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[142:149], v[179:182], v[156:159], v[1:8] neg_lo:[1,1,0]
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v110, v32, v251
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[25:32], v[33:36], v[201:204], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[142:149], v[193:196], v[197:200], v[142:149] neg_lo:[1,1,0]
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v106, v39, v37 :: v_dual_lshlrev_b32 v183, 16, v211
	v_fmac_f32_e32 v75, v218, v12
	v_fmac_f32_e32 v104, v138, v251
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v55, v175, v12
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v53, v167, v10
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[156:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[134:137], v[201:204], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[134:141], v[162:165], v[156:159], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[169:172], v[197:200], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[169:172], v[205:208], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v167, v17
	v_cvt_f32_i32_e32 v169, v23
	v_cvt_f32_i32_e32 v170, v24
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v69, v212, v152
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[150:157], v[162:165], v[201:204], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[179:182], v[201:204], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v166, v10
	v_cvt_f32_i32_e32 v171, v9
	v_cvt_f32_i32_e32 v172, v11
	v_cvt_f32_i32_e32 v173, v12
	v_cvt_f32_i32_e32 v174, v13
	v_cvt_f32_i32_e32 v175, v14
	v_cvt_f32_i32_e32 v176, v15
	v_cvt_f32_i32_e32 v177, v16
	v_cvt_f32_i32_e32 v179, v19
	v_cvt_f32_i32_e32 v180, v20
	v_cvt_f32_i32_e32 v181, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v121 offset:34816
	ds_load_b128 v[13:16], v121 offset:34832
	ds_load_b128 v[17:20], v121 offset:35328
	ds_load_b128 v[21:24], v121 offset:35344
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[33:40], v[185:188], v[205:208], v[33:40] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[134:141], v[189:192], v[197:200], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[189:192], v[205:208], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[193:196], v[205:208], v[158:165] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v182, 16, v210
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v171, v171, v182 :: v_dual_mul_f32 v140, v182, v140
	v_dual_mul_f32 v176, v176, v182 :: v_dual_mul_f32 v25, v25, v183
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v164, v183, v164
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v167, v182, v167 :: v_dual_mul_f32 v40, v183, v40
	v_mul_f32_e32 v168, v182, v168
	v_dual_mul_f32 v169, v182, v169 :: v_dual_mul_f32 v158, v183, v158
	v_dual_mul_f32 v170, v182, v170 :: v_dual_mul_f32 v33, v183, v33
	v_mul_f32_e32 v174, v174, v182
	v_mul_f32_e32 v38, v183, v38
	v_dual_mul_f32 v39, v183, v39 :: v_dual_mul_f32 v172, v172, v182
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v149, v182, v149 :: v_dual_mul_f32 v32, v32, v183
	v_dual_mul_f32 v163, v183, v163 :: v_dual_mul_f32 v166, v166, v182
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v177, v177, v182 :: v_dual_mul_f32 v136, v182, v136
	v_dual_mul_f32 v175, v175, v182 :: v_dual_mul_f32 v30, v30, v183
	v_dual_mul_f32 v173, v173, v182 :: v_dual_mul_f32 v28, v28, v183
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v139, v182, v139 :: v_dual_mul_f32 v152, v183, v152
	v_dual_mul_f32 v137, v182, v137 :: v_dual_mul_f32 v150, v183, v150
	v_dual_mul_f32 v135, v182, v135 :: v_dual_mul_f32 v36, v183, v36
	v_dual_mul_f32 v134, v182, v134 :: v_dual_mul_f32 v31, v31, v183
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v29, v29, v183 :: v_dual_mul_f32 v180, v182, v180
	v_dual_mul_f32 v27, v27, v183 :: v_dual_mul_f32 v178, v182, v178
	v_dual_mul_f32 v26, v26, v183 :: v_dual_mul_f32 v157, v183, v157
	v_dual_mul_f32 v181, v182, v181 :: v_dual_mul_f32 v34, v183, v34
	v_dual_mul_f32 v179, v182, v179 :: v_dual_mul_f32 v162, v183, v162
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v37, v183, v37 :: v_dual_fmac_f32 v100, v169, v23
	v_dual_mul_f32 v35, v183, v35 :: v_dual_fmac_f32 v80, v166, v10
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v79, v171, v9
	v_fmac_f32_e32 v51, v25, v9
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v147, v182, v147 :: v_dual_mul_f32 v156, v183, v156
	v_mul_f32_e32 v148, v182, v148
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mul_f32 v141, v182, v141 :: v_dual_mul_f32 v154, v183, v154
	v_dual_mul_f32 v151, v183, v151 :: v_dual_fmac_f32 v98, v33, v17
	v_dual_mul_f32 v145, v182, v145 :: v_dual_mul_f32 v160, v183, v160
	v_dual_mul_f32 v143, v182, v143 :: v_dual_fmac_f32 v58, v29, v13
	v_dual_mul_f32 v161, v183, v161 :: v_dual_fmac_f32 v86, v172, v11
	v_dual_mul_f32 v159, v183, v159 :: v_dual_fmac_f32 v82, v174, v13
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v107, v167, v17 :: v_dual_fmac_f32 v84, v176, v15
	v_dual_fmac_f32 v101, v168, v22 :: v_dual_fmac_f32 v96, v39, v23
	v_dual_fmac_f32 v99, v170, v24 :: v_dual_fmac_f32 v62, v27, v11
	v_dual_fmac_f32 v97, v38, v22 :: v_dual_fmac_f32 v60, v31, v15
	v_dual_fmac_f32 v95, v40, v24 :: v_dual_fmac_f32 v56, v26, v10
	v_dual_fmac_f32 v81, v173, v12 :: v_dual_fmac_f32 v72, v179, v19
	v_dual_fmac_f32 v83, v175, v14 :: v_dual_fmac_f32 v74, v181, v21
	v_dual_fmac_f32 v85, v177, v16 :: v_dual_fmac_f32 v48, v35, v19
	v_dual_fmac_f32 v57, v28, v12 :: v_dual_fmac_f32 v50, v37, v21
	v_fmac_f32_e32 v59, v30, v14
	v_fmac_f32_e32 v61, v32, v16
	v_fmac_f32_e32 v71, v178, v18
	v_fmac_f32_e32 v73, v180, v20
	v_fmac_f32_e32 v47, v34, v18
	v_fmac_f32_e32 v49, v36, v20
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v142, v182, v142 :: v_dual_mul_f32 v165, v183, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v138, v182, v138 :: v_dual_mul_f32 v155, v183, v155
	v_dual_mul_f32 v146, v182, v146 :: v_dual_mul_f32 v153, v183, v153
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v144, v182, v144 :: v_dual_lshlrev_b32 v9, 16, v239
	ds_store_b32 v133, v9 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v121 offset:34816
	ds_load_b128 v[13:16], v121 offset:34832
	ds_load_b128 v[17:20], v121 offset:35328
	ds_load_b128 v[21:24], v121 offset:35344
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v94, v134, v9 :: v_dual_fmac_f32 v93, v135, v10
	v_dual_fmac_f32 v70, v150, v9 :: v_dual_fmac_f32 v87, v136, v11
	v_fmac_f32_e32 v68, v153, v12
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v92, v137, v12 :: v_dual_fmac_f32 v91, v138, v13
	v_fmac_f32_e32 v66, v155, v14
	v_dual_fmac_f32 v90, v139, v14 :: v_dual_fmac_f32 v89, v140, v15
	v_fmac_f32_e32 v64, v157, v16
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v88, v141, v16 :: v_dual_fmac_f32 v109, v142, v17
	v_fmac_f32_e32 v52, v159, v18
	v_dual_fmac_f32 v78, v143, v18 :: v_dual_fmac_f32 v77, v144, v19
	v_fmac_f32_e32 v54, v161, v20
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v76, v145, v20 :: v_dual_fmac_f32 v75, v146, v21
	v_fmac_f32_e32 v104, v163, v22
	v_fmac_f32_e32 v110, v147, v22
	v_fmac_f32_e32 v108, v148, v23
	v_dual_fmac_f32 v106, v149, v24 :: v_dual_fmac_f32 v69, v151, v10
	v_dual_fmac_f32 v102, v165, v24 :: v_dual_fmac_f32 v63, v152, v11
	v_fmac_f32_e32 v67, v154, v13
	v_fmac_f32_e32 v65, v156, v15
	v_fmac_f32_e32 v105, v158, v17
	v_fmac_f32_e32 v53, v160, v19
	v_fmac_f32_e32 v55, v162, v21
	v_fmac_f32_e32 v103, v164, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v6, v111 :: v_dual_mov_b32 v1, v112
.LBB0_7:                                ; %._crit_edge
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v2, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v87
	v_mul_f32_e32 v10, 0xbfb8aa3b, v106
	v_dual_mul_f32 v14, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v93
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v10
	v_dual_mul_f32 v30, 0xbfb8aa3b, v90 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v4, 0xbfb8aa3b, v110
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_mul_f32_e32 v8, 0xbfb8aa3b, v108
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v109
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v106
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_exp_f32_e32 v7, v7
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_exp_f32_e32 v13, v13
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v108
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s0
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v5, v7, v5
	v_exp_f32_e32 v11, v11
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v78
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v28, 0xbfb8aa3b, v88 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v89
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v17, 0xbfb8aa3b, v76 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v4, v8, v4
	v_ldexp_f32 v7, v11, v10
	v_ldexp_f32 v8, v13, v12
	v_exp_f32_e32 v10, v14
	v_dual_mul_f32 v14, 0xbfb8aa3b, v67 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v104
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v5, v5, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_mul_f32_e32 v13, 0xbfb8aa3b, v103
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v4, v4, v110
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v10, v10, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v40, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_dual_mul_f32 v13, 0xbfb8aa3b, v102 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v104
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v115, s0, v110, v4, v110
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_exp_f32_e32 v42, v16
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v16, -v37, v40, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v7, 1.0, v7 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v103
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v13, -v33, v35, 1.0
	v_fmac_f32_e32 v40, v16, v40
	v_div_scale_f32 v111, null, v7, v7, v108
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v102
	v_exp_f32_e32 v36, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v35, v13, v35 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v52
	v_div_scale_f32 v112, vcc_lo, v109, v5, v109
	v_rcp_f32_e32 v113, v111
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v13, 0xbfb8aa3b, v53
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v114, v112, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v32, v42, v32
	v_ldexp_f32 v34, v36, v34
	v_dual_mul_f32 v26, 0xbfb8aa3b, v65 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v33, v114, v112
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v24, 0xbfb8aa3b, v69 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v116, -v111, v113, 1.0
	v_mul_f32_e32 v42, v115, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v39, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v114, v36, v35
	v_div_scale_f32 v39, s1, v108, v7, v108
	v_fmac_f32_e32 v113, v116, v113
	v_fma_f32 v36, -v37, v42, v115
	v_fma_f32 v33, -v33, v114, v112
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v18, 0xbfb8aa3b, v63 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v36, v40
	v_mul_f32_e32 v36, v39, v113
	v_div_fmas_f32 v33, v33, v35, v114
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s4, 0x76543210
	v_fma_f32 v35, -v37, v42, v115
	v_fma_f32 v37, -v111, v36, v39
	v_div_fixup_f32 v5, v33, v5, v109
.Ltmp28:
	.loc	1 86 37 is_stmt 1               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s5, s29, 31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v1, 0x100, v1
.Ltmp29:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v35, v35, v40, v42
	v_dual_fmac_f32 v36, v37, v113 :: v_dual_add_f32 v37, 1.0, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v112, null, v8, v8, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v4, v35, v4, v110
	v_fma_f32 v33, -v111, v36, v39
	v_div_scale_f32 v110, null, v37, v37, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v114, v112
.Ltmp30:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s5, s5, 24
.Ltmp31:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v33, v33, v113, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v113, v110
	v_div_scale_f32 v40, vcc_lo, v106, v8, v106
.Ltmp32:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s5, s29, s5
.Ltmp33:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v33, v7, v108
.Ltmp34:
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s5, s5, 8
.Ltmp35:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v112, v114, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v100, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v118, -v110, v113, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_fmac_f32 v113, v118, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v10, v10, v105
	v_div_scale_f32 v118, s3, v102, v37, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_mul_f32_e32 v121, v118, v113
	v_fmac_f32_e32 v114, v38, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_mul_f32 v109, v40, v114
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v32, v32, v104
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v35, v36, 1.0
	v_fma_f32 v115, -v112, v109, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v38
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s0, v105, v10, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v109, v115, v114
	v_mul_f32_e32 v117, v33, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v111, -v38, v42, 1.0
	v_fma_f32 v40, -v112, v109, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v115, -v35, v117, v33
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v111, v42
	v_div_scale_f32 v111, s1, v104, v32, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v117, v115, v36
	v_div_scale_f32 v39, null, v34, v34, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v35, v117, v33
	v_rcp_f32_e32 v108, v39
	v_fma_f32 v35, -v110, v121, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v121, v35, v113
	v_div_fmas_f32 v40, v40, v114, v109
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v116, -v39, v108, 1.0
	v_div_fmas_f32 v33, v33, v36, v117
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v101, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v119, v111, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v108, v116, v108
	v_div_scale_f32 v116, s2, v103, v34, v103
	v_div_fixup_f32 v33, v33, v10, v105
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v107, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v120, v116, v108
	v_fma_f32 v112, -v38, v119, v111
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v40, v8, v106
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v115, -v39, v120, v116
	v_fmac_f32_e32 v119, v112, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v120, v115, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v38, v119, v111
	v_fma_f32 v38, -v110, v121, v118
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v98, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v35, -v39, v120, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v42, v119
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v35, v35, v108, v120
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v32, v36, v32, v104
	v_div_fmas_f32 v38, v38, v113, v121
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v35, v34, v103
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v38, v37, v102
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v3, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v2, v97, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v39, v3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v96, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v33, v38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v31, v39, v31
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v99, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v30, v33, v37
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v95, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v35, v40, v36
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v31, v31, v94
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v98, vcc_lo, v94, v31, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v25, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	v_exp_f32_e32 v33, v33
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v42, 0, 0x42800000, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v95, -v38, v25, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v91
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v96, null, v35, v35, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v25, v95, v25 :: v_dual_fmac_f32 v40, 0xbfb8aa3b, v87
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v29, v33, v29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v95, v96
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v40, v40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_ldexp_f32 v36, v37, v36
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v32, v34, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v102, null, v29, v29, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v40, v39
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_mul_f32 v39, v98, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v96, v95, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v28, v42, v28
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v97, null, v30, v30, v92
	v_fma_f32 v37, -v38, v39, v98
	v_dual_fmac_f32 v95, v40, v95 :: v_dual_add_f32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v34, v97
	v_div_scale_f32 v40, s0, v93, v35, v93
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_fmac_f32 v39, v37, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v99, s1, v92, v30, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v38, v39, v98
	v_fma_f32 v42, -v97, v34, 1.0
	v_mul_f32_e32 v37, v40, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v38, v25, v39
	v_fmac_f32_e32 v34, v42, v34
	v_div_scale_f32 v42, null, v32, v32, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v98, -v96, v37, v40
	v_rcp_f32_e32 v38, v102
	v_div_fixup_f32 v31, v25, v31, v94
	v_rcp_f32_e32 v100, v42
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v37, v98, v95
	v_div_scale_f32 v94, null, v36, v36, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v25, -v96, v37, v40
	v_fma_f32 v40, -v102, v38, 1.0
	v_div_scale_f32 v96, s0, v90, v29, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v42, v100, 1.0
	v_mul_f32_e32 v101, v99, v34
	v_fmac_f32_e32 v38, v40, v38
	v_div_fmas_f32 v25, v25, v95, v37
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v100, v98, v100
	v_fma_f32 v39, -v97, v101, v99
	v_rcp_f32_e32 v40, v94
	v_mul_f32_e32 v98, v96, v38
	v_div_fixup_f32 v35, v25, v35, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v101, v39, v34
	v_div_scale_f32 v39, s2, v91, v32, v91
	v_fma_f32 v25, -v102, v98, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v97, v101, v99
	v_div_scale_f32 v97, null, v28, v28, v88
	v_mul_f32_e32 v95, v39, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v99, -v94, v40, 1.0
	v_div_fmas_f32 v34, v37, v34, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v101, v97
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v37, -v42, v95, v39
	v_div_fixup_f32 v30, v34, v30, v92
	v_div_scale_f32 v34, s1, v89, v36, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v97, v101, 1.0
	v_dual_fmac_f32 v40, v99, v40 :: v_dual_fmac_f32 v101, v92, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v98, v25, v38 :: v_dual_mul_f32 v25, v34, v40
	v_div_scale_f32 v92, s3, v88, v28, v88
	v_fmac_f32_e32 v95, v37, v100
	v_div_scale_f32 v37, null, v33, v33, v87
	v_fma_f32 v93, -v102, v98, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v92, v101
	v_fma_f32 v39, -v42, v95, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v42, v37
	v_div_fmas_f32 v39, v39, v100, v95
	v_fma_f32 v95, -v94, v25, v34
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v38, v93, v38, v98
	v_fma_f32 v93, -v97, v96, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v25, v95, v40
	v_fma_f32 v99, -v37, v42, 1.0
	v_div_scale_f32 v95, s0, v87, v33, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v96, v93, v101
	v_fma_f32 v34, -v94, v25, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v99, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v38, v29, v90
	v_div_fixup_f32 v32, v39, v32, v91
	v_div_fmas_f32 v25, v34, v40, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v38, v95, v42
	v_fma_f32 v23, -v97, v96, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v25, v36, v89
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v22, -v37, v38, v95
	v_div_fmas_f32 v23, v23, v101, v96
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v90, 0, 0x42800000, s1
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v28, v23, v28, v88
	v_fmac_f32_e32 v38, v22, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v78 :: v_dual_fmac_f32 v90, 0xbfb8aa3b, v77
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v76
	v_exp_f32_e32 v39, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v15, -v37, v38, v95
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v90
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v15, v15, v42, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v34, v39, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v36, v91
	v_ldexp_f32 v17, v22, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v15, v15, v33, v87
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v37, v40
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v34, v34, v78
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v86, v15
	v_mul_f32_e32 v15, v85, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v36, v90
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v28, v37
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v39, v39, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v17, v84, v25 :: v_dual_add_f32 v84, 1.0, v22
	v_mul_f32_e32 v22, v83, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v85, v36
	v_div_scale_f32 v86, vcc_lo, v78, v34, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v37, v28, 1.0
	v_div_scale_f32 v83, null, v84, v84, v75
	v_div_scale_f32 v89, s1, v76, v39, v76
	v_fmac_f32_e32 v28, v25, v28
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v82, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, null, v38, v38, v77
	v_rcp_f32_e32 v87, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v36, v85, 1.0
	v_div_scale_f32 v88, s0, v77, v38, v77
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v91, s2, v75, v84, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v85, v32, v85
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v79, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v83, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v90, v89, v85
	v_fma_f32 v29, -v40, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v87, v32, v87 :: v_dual_fmac_f32 v42, v29, v42
	v_dual_mul_f32 v82, v86, v28 :: v_dual_mul_f32 v29, v81, v30
	v_mul_f32_e32 v81, v88, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v37, v82, v86
	v_fmac_f32_e32 v82, v30, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v30, -v40, v81, v88
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v80, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v80, v91, v87
	v_fma_f32 v35, -v36, v90, v89
	v_fma_f32 v31, -v37, v82, v86
	v_fmac_f32_e32 v81, v30, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v83, v80, v91
	v_fmac_f32_e32 v90, v35, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v31, v28, v82
	v_fma_f32 v31, -v40, v81, v88
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v80, v30, v87
	v_fma_f32 v30, -v36, v90, v89
	v_div_fixup_f32 v28, v28, v34, v78
	v_div_fmas_f32 v31, v31, v42, v81
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v83, v80, v91
	v_div_fmas_f32 v30, v30, v85, v90
	s_mov_b32 vcc_lo, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v35, v35, v87, v80
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v27, v30, v39, v76
	v_div_fixup_f32 v31, v31, v38, v77
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v30, v35, v84, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v67 :: v_dual_mul_f32 v14, v74, v30
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v73, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v30, v24
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_exp_f32_e32 v39, v39
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v37, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v69
	v_ldexp_f32 v27, v30, v34
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_exp_f32_e32 v40, v21
	v_ldexp_f32 v30, v37, v36
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v72, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v39, v38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v64 :: v_dual_fmac_f32 v74, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v20, v20
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v24, v71, v28 :: v_dual_add_f32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v63
	v_exp_f32_e32 v34, v74
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v28, v40, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v27, v27, v70
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v20, v26
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v26, v37, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v30, v30, v68
	v_rcp_f32_e32 v18, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v34, v34, v42
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v73, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v31, v31, v67
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v28, v28, v69
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v35, v18, 1.0
	v_div_scale_f32 v78, null, v34, v34, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v37, v73, 1.0
	v_fmac_f32_e32 v18, v40, v18
	v_div_scale_f32 v40, vcc_lo, v70, v27, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v78
	v_fmac_f32_e32 v73, v75, v73
	v_div_scale_f32 v75, s1, v68, v30, v68
	v_rcp_f32_e32 v71, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v39, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v79, v75, v73 :: v_dual_mul_f32 v36, v40, v18
	v_fma_f32 v82, -v78, v80, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v35, v36, v40
	v_fma_f32 v72, -v42, v71, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v82, v80
	v_fmac_f32_e32 v36, v39, v18
	v_rcp_f32_e32 v39, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, s0, v69, v28, v69
	v_fma_f32 v35, -v35, v36, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v40, v72, v71
	v_div_fmas_f32 v18, v35, v18, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v74, v39, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v77, -v42, v40, v72
	v_fma_f32 v35, -v37, v79, v75
	v_div_fixup_f32 v18, v18, v27, v70
	v_fmac_f32_e32 v39, v76, v39
	v_div_scale_f32 v76, s2, v67, v31, v67
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v40, v77, v71 :: v_dual_fmac_f32 v79, v35, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v77, v76, v39
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v27, -v42, v40, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v37, v79, v75
	v_fma_f32 v35, -v74, v77, v76
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v27, v71, v40
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v77, v35, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v81, null, v20, v20, v65
	v_div_scale_f32 v40, s0, v65, v20, v65
	v_div_fmas_f32 v37, v37, v73, v79
	v_rcp_f32_e32 v36, v81
	v_fma_f32 v71, -v74, v77, v76
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v69, v27, v28, v69
	v_div_fixup_f32 v30, v37, v30, v68
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v39, v71, v39, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v81, v36, 1.0
	v_div_fixup_f32 v37, v39, v31, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v36, v70, v36
	v_div_scale_f32 v70, null, v26, v26, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v73, v40, v36
	v_div_scale_f32 v42, s3, v66, v34, v66
	v_rcp_f32_e32 v74, v70
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v81, v73, v40
	v_mul_f32_e32 v35, v42, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v73, v71, v36
	v_fma_f32 v72, -v78, v35, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v70, v74, 1.0
	v_fma_f32 v31, -v81, v73, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v35, v72, v80
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v78, v35, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v27, v80, v35
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v35, null, v38, v38, v63
	v_div_fmas_f32 v16, v31, v36, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v27, v34, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v36, v35
	v_div_fixup_f32 v16, v16, v20, v65
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v74, v28, v74
	v_div_scale_f32 v28, s1, v64, v26, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v53
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v31, v28, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v12, -v35, v36, 1.0
	v_div_scale_f32 v65, s0, v63, v38, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v13, -v70, v31, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v31, v13, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v13, v40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_exp_f32_e32 v11, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v28, -v70, v31, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v13, v13, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v36, v12, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v55
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_fmac_f32 v42, 0xbfb8aa3b, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v28, v28, v74, v31
	v_mul_f32_e32 v31, v65, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v11, v11, v20
	v_exp_f32_e32 v20, v27
	v_exp_f32_e32 v39, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v13, v13, v52
	v_fma_f32 v27, -v35, v31, v65
	v_div_fixup_f32 v26, v28, v26, v64
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v31, v27, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v12, v20, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v39, v39, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v40, v42
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v35, v31, v65
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v11, v11, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v27, v36, v31
	v_div_scale_f32 v31, null, v12, v12, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v42, v40, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v35, v20
	v_rcp_f32_e32 v67, v31
	v_div_scale_f32 v66, vcc_lo, v52, v13, v52
	v_fmac_f32_e32 v40, v28, v40
	v_div_scale_f32 v64, null, v39, v39, v54
	v_div_fixup_f32 v27, v27, v38, v63
	v_div_scale_f32 v63, s0, v53, v11, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v65, v64
	v_fma_f32 v28, -v20, v35, 1.0
	v_mul_f32_e32 v38, v66, v40
	v_div_scale_f32 v68, s1, v54, v39, v54
	v_div_scale_f32 v72, s2, v55, v12, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v35, v28, v35
	v_fma_f32 v28, -v31, v67, 1.0
	v_fma_f32 v36, -v64, v65, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v70, v63, v35
	v_fmac_f32_e32 v67, v28, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v65, v36, v65 :: v_dual_mul_f32 v36, v62, v27
	v_fma_f32 v62, -v42, v38, v66
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v61, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v20, v70, v63
	v_dual_mul_f32 v71, v68, v65 :: v_dual_fmac_f32 v38, v62, v40
	v_mul_f32_e32 v62, v72, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v26, v35
	v_fma_f32 v61, -v64, v71, v68
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v28, v60, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v16, -v42, v38, v66
	v_fma_f32 v26, -v31, v62, v72
	v_fma_f32 v20, -v20, v70, v63
	v_fmac_f32_e32 v71, v61, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v16, v16, v40, v38
	v_fmac_f32_e32 v62, v26, v67
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v26, -v64, v71, v68
	v_div_fmas_f32 v20, v20, v35, v70
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v35, v57, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v31, v62, v72
	s_mov_b32 vcc_lo, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v38, v56, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v26, v26, v65, v71
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v11, v20, v11, v53
	v_div_fmas_f32 v40, v31, v67, v62
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v31, v59, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v26, v26, v39, v54
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v34, v58, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v13, v16, v13, v52
	v_div_fixup_f32 v12, v40, v12, v55
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v39, v51, v18
	v_mul_f32_e32 v20, v49, v26
	v_mul_f32_e32 v26, v48, v11
.Ltmp36:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v11, |v33|, |v32|
.Ltmp37:
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v50, v12
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v12, |v29|, |v25|, |v22|
	v_max3_f32 v16, |v24|, |v21|, |v19|
	v_max3_f32 v37, |v14|, |v9|, |v7|
.Ltmp39:
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v47, v13
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v13, |v17|, |v15|, |v10|
	v_max3_f32 v11, v11, |v23|, v12
	v_max_f32_e64 v40, |v39|, |v38|
	v_max3_f32 v12, v16, v37, |v8|
	v_max3_f32 v42, |v35|, |v34|, |v31|
	v_max3_f32 v48, |v18|, |v2|, |v3|
	v_max3_f32 v16, |v28|, |v27|, |v5|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max3_f32 v12, v11, v13, v12
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v11, 0xe0, v0
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v47, |v30|, |v26|, |v20|
	v_max3_f32 v37, v40, |v36|, v42
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v42, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v40, v47, v48, |v4|
	v_max3_f32 v13, v37, v16, v40
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v16, v12, s4, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v40, 4, v46
	v_lshl_add_u32 v46, v46, 7, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v37, v13, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_or_b32 v47, v11, 2, v40
	v_xor_b32_e32 v40, v40, v42
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v16, v47, v42
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v13, v13, v37 :: v_dual_lshlrev_b32 v42, 3, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v37, v46, v40, v6
	v_add3_u32 v16, 0, v6, v16
	v_lshlrev_b32_e32 v6, 3, v45
	v_lshrrev_b32_e32 v40, 2, v11
	ds_store_b64 v37, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[12:13], v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v37, v13
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v13, v13, v37 :: v_dual_mov_b32 v16, v12
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v37, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v37, v37, v37
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v13, v13, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v12, v12, v16 :: v_dual_mov_b32 v37, v13
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v16, v12 :: v_dual_max_f32 v37, v37, v37
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v13, v13, v37 :: v_dual_max_f32 v16, v16, v16
	v_dual_max_f32 v12, v12, v16 :: v_dual_add_nc_u32 v37, 0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v12, v12, v16
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v16, 0, v42, v40
	ds_store_b64 v16, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[12:13], v37
.Ltmp62:
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
	v_mul_f32_e32 v42, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v16, v42, v40
	v_fmac_f32_e32 v42, v45, v37
	v_div_scale_f32 v45, null, 0x40e00000, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v16, v42, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v16, v16, v37, v42
	v_div_fixup_f32 v12, v16, 0x40e00000, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v45, v40, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v37, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v40, v16, v40
	v_div_scale_f32 v16, vcc_lo, v13, 0x40e00000, v13
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v37, v12, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v12, v16, v40
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v42, 0xffff0000, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v46, -v45, v12, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v47, null, v42, v42, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v12, v46, v40
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v48, null, v42, v42, v32
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v42, v42, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v16, -v45, v12, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v45, v48
	v_div_scale_f32 v54, s0, v32, v42, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v49
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v12, v16, v40, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v40, vcc_lo, v33, v42, v33
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v47, v46, 1.0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v13, v12, 0x40e00000, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v12, -v48, v45, 1.0
	v_fmac_f32_e32 v46, v16, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v49, v52, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v50, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v45, v12, v45
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v12.l, v37.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v51, v40, v46 :: v_dual_fmac_f32 v52, v58, v52
	v_div_scale_f32 v58, s1, v23, v42, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v57, v54, v45
	v_fma_f32 v55, -v47, v51, v40
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v50, v13, v50, 0x7fff
	v_mov_b16_e32 v12.h, 0
.Ltmp63:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v16, 4, v44
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp64:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v51, v55, v46
	v_fma_f32 v55, -v48, v57, v54
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v13.l, v50.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 0xffff0000, v50
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v13.h, v12.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v40, -v47, v51, v40
	v_fmac_f32_e32 v57, v55, v45
	v_mul_f32_e32 v47, v58, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v46, v51
	v_fma_f32 v46, -v48, v57, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v49, v47, v58
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v45, v46, v45, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v48, v52
	v_div_scale_f32 v53, null, v42, v42, v29
	v_div_scale_f32 v55, null, v42, v42, v25
	v_div_scale_f32 v50, s2, v29, v42, v29
	v_rcp_f32_e32 v56, v53
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v51, v55
	v_div_fixup_f32 v33, v40, v42, v33
	v_div_fixup_f32 v32, v45, v42, v32
	v_fma_f32 v40, -v49, v47, v58
	v_div_scale_f32 v45, s0, v25, v42, v25
	v_div_scale_f32 v49, null, v42, v42, v17
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v59, -v53, v56, 1.0
	v_fma_f32 v57, -v55, v51, 1.0
	v_div_fmas_f32 v40, v40, v52, v47
	v_div_scale_f32 v52, s1, v22, v42, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v59, v56
	v_div_scale_f32 v59, null, v42, v42, v22
	v_fmac_f32_e32 v51, v57, v51
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v54, v50, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v59
	v_div_fixup_f32 v23, v40, v42, v23
	v_div_scale_f32 v60, null, v42, v42, v24
	v_fma_f32 v48, -v53, v54, v50
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v54, v48, v56
	v_fma_f32 v48, -v59, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v53, v54, v50
	v_mul_f32_e32 v50, v45, v51
	v_fmac_f32_e32 v46, v48, v46
	v_rcp_f32_e32 v48, v49
	v_div_scale_f32 v53, null, v42, v42, v15
	v_div_fmas_f32 v47, v47, v56, v54
	v_fma_f32 v54, -v55, v50, v45
	v_mul_f32_e32 v56, v52, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v58, v53
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v29, v47, v42, v29
	v_fmac_f32_e32 v50, v54, v51
	v_fma_f32 v57, -v49, v48, 1.0
	v_fma_f32 v40, -v59, v56, v52
	v_div_scale_f32 v54, null, v42, v42, v10
	v_div_scale_f32 v47, s2, v17, v42, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v48, v57, v48
	v_fma_f32 v57, -v53, v58, 1.0
	v_fma_f32 v45, -v55, v50, v45
	v_fmac_f32_e32 v56, v40, v46
	v_rcp_f32_e32 v55, v54
	v_mul_f32_e32 v40, v47, v48
	v_fmac_f32_e32 v58, v57, v58
	v_div_scale_f32 v57, s3, v15, v42, v15
	v_div_fmas_f32 v45, v45, v51, v50
	v_fma_f32 v50, -v59, v56, v52
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v51, -v49, v40, v47
	v_mul_f32_e32 v52, v57, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v54, v55, 1.0
	v_div_fmas_f32 v46, v50, v46, v56
	v_rcp_f32_e32 v50, v60
	v_fmac_f32_e32 v40, v51, v48
	v_fma_f32 v51, -v53, v52, v57
	v_fmac_f32_e32 v55, v59, v55
	v_div_scale_f32 v56, s0, v10, v42, v10
	v_div_fixup_f32 v25, v45, v42, v25
	v_div_fixup_f32 v22, v46, v42, v22
	v_fma_f32 v45, -v49, v40, v47
	v_fmac_f32_e32 v52, v51, v58
	v_mul_f32_e32 v46, v56, v55
	v_fma_f32 v47, -v60, v50, 1.0
	v_div_scale_f32 v49, null, v42, v42, v21
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v51, s1, v24, v42, v24
	v_div_fmas_f32 v40, v45, v48, v40
	v_fma_f32 v45, -v53, v52, v57
	v_fma_f32 v48, -v54, v46, v56
	v_fmac_f32_e32 v50, v47, v50
	v_rcp_f32_e32 v47, v49
	v_div_scale_f32 v53, null, v42, v42, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v48, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v17, v40, v42, v17
	v_rcp_f32_e32 v48, v53
	v_div_fmas_f32 v45, v45, v58, v52
	v_mul_f32_e32 v52, v51, v50
	v_fma_f32 v40, -v54, v46, v56
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v57, -v49, v47, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v15, v45, v42, v15
	v_fma_f32 v45, -v60, v52, v51
	v_div_scale_f32 v54, s2, v21, v42, v21
	v_fmac_f32_e32 v47, v57, v47
	v_fma_f32 v56, -v53, v48, 1.0
	v_div_scale_f32 v57, null, v42, v42, v14
	v_div_fmas_f32 v40, v40, v55, v46
	v_fmac_f32_e32 v52, v45, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v56, v48
	v_rcp_f32_e32 v46, v57
	v_div_scale_f32 v56, null, v42, v42, v9
	v_mul_f32_e32 v45, v54, v47
	v_div_scale_f32 v55, s0, v19, v42, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v59, v56
	v_div_fixup_f32 v10, v40, v42, v10
	v_fma_f32 v40, -v60, v52, v51
	v_fma_f32 v51, -v49, v45, v54
	v_mul_f32_e32 v58, v55, v48
	v_fma_f32 v60, -v57, v46, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v40, v50, v52
	v_fmac_f32_e32 v45, v51, v47
	v_fma_f32 v50, -v53, v58, v55
	v_fmac_f32_e32 v46, v60, v46
	v_div_scale_f32 v51, s1, v14, v42, v14
	v_fma_f32 v52, -v56, v59, 1.0
	v_div_fixup_f32 v24, v40, v42, v24
	v_fma_f32 v40, -v49, v45, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v58, v50, v48 :: v_dual_mul_f32 v49, v51, v46
	v_fmac_f32_e32 v59, v52, v59
	v_div_scale_f32 v52, null, v42, v42, v7
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v50, s3, v9, v42, v9
	v_div_fmas_f32 v40, v40, v47, v45
	v_fma_f32 v45, -v53, v58, v55
	v_fma_f32 v47, -v57, v49, v51
	v_rcp_f32_e32 v53, v52
	v_div_scale_f32 v55, null, v42, v42, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v54, v50, v59 :: v_dual_fmac_f32 v49, v47, v46
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v47, v55
	v_div_fmas_f32 v45, v45, v48, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v48, -v56, v54, v50
	v_div_fixup_f32 v21, v40, v42, v21
	v_fma_f32 v58, -v52, v53, 1.0
	v_fma_f32 v40, -v57, v49, v51
	v_div_fixup_f32 v19, v45, v42, v19
	v_fmac_f32_e32 v54, v48, v59
	v_div_scale_f32 v45, s0, v7, v42, v7
	v_fmac_f32_e32 v53, v58, v53
	v_fma_f32 v48, -v55, v47, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v57, null, v37, v37, v38
	v_div_fmas_f32 v40, v40, v46, v49
	v_fma_f32 v46, -v56, v54, v50
	v_mul_f32_e32 v49, v45, v53
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, null, v37, v37, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v50, s1, v8, v42, v8
	v_div_fmas_f32 v46, v46, v59, v54
	v_rcp_f32_e32 v51, v48
	v_fma_f32 v54, -v52, v49, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v56, v50, v47
	v_div_fixup_f32 v14, v40, v42, v14
	v_div_fixup_f32 v9, v46, v42, v9
	v_rcp_f32_e32 v46, v57
	v_fmac_f32_e32 v49, v54, v53
	v_fma_f32 v40, -v55, v56, v50
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v59, null, v37, v37, v35
	v_fma_f32 v54, -v48, v51, 1.0
	v_fma_f32 v45, -v52, v49, v45
	v_div_scale_f32 v52, null, v37, v37, v36
	v_fmac_f32_e32 v56, v40, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v54, v51
	v_div_fmas_f32 v45, v45, v53, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v54, v52
	v_div_scale_f32 v40, s2, v39, v37, v39
	v_fma_f32 v49, -v55, v56, v50
	v_fma_f32 v58, -v57, v46, 1.0
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v50, v40, v51
	v_div_scale_f32 v53, s0, v38, v37, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v58, v46
	v_fma_f32 v55, -v52, v54, 1.0
	v_rcp_f32_e32 v61, v59
	v_div_fmas_f32 v47, v49, v47, v56
	v_fma_f32 v58, -v48, v50, v40
	v_mul_f32_e32 v60, v53, v46
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, s3, v36, v37, v36
	v_div_fixup_f32 v7, v45, v42, v7
	v_div_fixup_f32 v8, v47, v42, v8
	v_div_scale_f32 v47, null, v37, v37, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v56, v55, v54
	v_fmac_f32_e32 v50, v58, v51
	v_fma_f32 v49, -v57, v60, v53
	v_fma_f32 v45, -v59, v61, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v42, -v52, v56, v55
	v_fma_f32 v40, -v48, v50, v40
	v_fmac_f32_e32 v60, v49, v46
	v_fmac_f32_e32 v61, v45, v61
	v_div_scale_f32 v45, s1, v35, v37, v35
	v_fmac_f32_e32 v56, v42, v54
	v_rcp_f32_e32 v42, v47
	v_div_fmas_f32 v40, v40, v51, v50
	v_fma_f32 v48, -v57, v60, v53
	v_mul_f32_e32 v49, v45, v61
	v_div_scale_f32 v50, null, v37, v37, v31
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v39, v40, v37, v39
	v_div_fmas_f32 v46, v48, v46, v60
	v_fma_f32 v48, -v52, v56, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v47, v42, 1.0
	v_rcp_f32_e32 v52, v50
	v_fma_f32 v53, -v59, v49, v45
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v38, v46, v37, v38
	v_fmac_f32_e32 v42, v51, v42
	v_div_scale_f32 v51, s0, v34, v37, v34
	v_fmac_f32_e32 v49, v53, v61
	v_div_fmas_f32 v48, v48, v54, v56
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v40, v51, v42
	v_fma_f32 v46, -v50, v52, 1.0
	v_fma_f32 v45, -v59, v49, v45
	v_div_fixup_f32 v36, v48, v37, v36
	v_div_scale_f32 v48, null, v37, v37, v28
	v_fma_f32 v53, -v47, v40, v51
	v_fmac_f32_e32 v52, v46, v52
	v_div_scale_f32 v46, s2, v31, v37, v31
	v_div_fmas_f32 v45, v45, v61, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v53, v42
	v_rcp_f32_e32 v54, v48
	v_mul_f32_e32 v49, v46, v52
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v35, v45, v37, v35
	v_fma_f32 v45, -v47, v40, v51
	v_div_scale_f32 v53, null, v37, v37, v27
	v_fma_f32 v47, -v50, v49, v46
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v45, v42, v40
	v_div_scale_f32 v42, null, v37, v37, v5
	v_fma_f32 v51, -v48, v54, 1.0
	v_rcp_f32_e32 v55, v53
	v_fmac_f32_e32 v49, v47, v52
	v_rcp_f32_e32 v47, v42
	v_div_scale_f32 v45, s0, v28, v37, v28
	v_fmac_f32_e32 v54, v51, v54
	v_div_scale_f32 v51, null, v37, v37, v30
	v_div_fixup_f32 v34, v40, v37, v34
	v_fma_f32 v46, -v50, v49, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v53, v55, 1.0
	v_rcp_f32_e32 v57, v51
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v56, -v42, v47, 1.0
	v_mul_f32_e32 v50, v45, v54
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v55, v40, v55
	v_div_scale_f32 v40, s1, v27, v37, v27
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v56, null, v37, v37, v26
	v_div_fmas_f32 v46, v46, v52, v49
	v_fma_f32 v49, -v48, v50, v45
	v_mul_f32_e32 v52, v40, v55
	v_div_scale_f32 v58, s2, v5, v37, v5
	v_fma_f32 v59, -v51, v57, 1.0
	v_rcp_f32_e32 v60, v56
	v_fmac_f32_e32 v50, v49, v54
	v_fma_f32 v49, -v53, v52, v40
	v_mul_f32_e32 v61, v58, v47
	v_fmac_f32_e32 v57, v59, v57
	v_div_scale_f32 v59, s3, v30, v37, v30
	v_div_fixup_f32 v31, v46, v37, v31
	v_fma_f32 v45, -v48, v50, v45
	v_fmac_f32_e32 v52, v49, v55
	v_fma_f32 v46, -v42, v61, v58
	v_mul_f32_e32 v48, v59, v57
	v_fma_f32 v49, -v56, v60, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v40, -v53, v52, v40
	v_fmac_f32_e32 v61, v46, v47
	v_fma_f32 v46, -v51, v48, v59
	v_fmac_f32_e32 v60, v49, v60
	v_div_scale_f32 v49, s0, v26, v37, v26
	v_div_fmas_f32 v45, v45, v54, v50
	v_div_scale_f32 v50, null, v37, v37, v20
	v_fma_f32 v42, -v42, v61, v58
	v_fmac_f32_e32 v48, v46, v57
	v_mul_f32_e32 v46, v49, v60
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v45, v37, v28
	v_div_fmas_f32 v40, v40, v55, v52
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v52, v50
	v_div_fmas_f32 v42, v42, v47, v61
	v_fma_f32 v47, -v51, v48, v59
	v_fma_f32 v51, -v56, v46, v49
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v40, v37, v27
	v_div_fixup_f32 v5, v42, v37, v5
	v_div_fmas_f32 v47, v47, v57, v48
	v_fmac_f32_e32 v46, v51, v60
	v_div_scale_f32 v42, null, v37, v37, v18
	v_fma_f32 v45, -v50, v52, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v40, -v56, v46, v49
	v_div_fixup_f32 v30, v47, v37, v30
	v_div_scale_f32 v47, null, v37, v37, v3
	v_fmac_f32_e32 v52, v45, v52
	v_div_scale_f32 v45, null, v37, v37, v2
	v_div_fmas_f32 v40, v40, v60, v46
	v_rcp_f32_e32 v46, v42
	v_rcp_f32_e32 v51, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v45
	v_div_scale_f32 v54, null, v37, v37, v4
	v_div_scale_f32 v48, vcc_lo, v20, v37, v20
	v_div_fixup_f32 v26, v40, v37, v26
	v_rcp_f32_e32 v56, v54
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v40, -v42, v46, 1.0
	v_mul_f32_e32 v53, v48, v52
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v55, -v45, v49, 1.0
	v_fma_f32 v58, -v47, v51, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v46, v40, v46
	v_div_scale_f32 v40, s0, v18, v37, v18
	v_fma_f32 v57, -v50, v53, v48
	v_fmac_f32_e32 v49, v55, v49
	v_div_scale_f32 v55, s1, v2, v37, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v59, v40, v46
	v_fmac_f32_e32 v51, v58, v51
	v_div_scale_f32 v58, s2, v3, v37, v3
	v_fma_f32 v60, -v54, v56, 1.0
	v_fmac_f32_e32 v53, v57, v52
	v_mul_f32_e32 v61, v55, v49
	v_fma_f32 v57, -v42, v59, v40
	v_mul_f32_e32 v62, v58, v51
	v_fmac_f32_e32 v56, v60, v56
	v_div_scale_f32 v60, s3, v4, v37, v4
	v_fma_f32 v48, -v50, v53, v48
	v_fma_f32 v50, -v45, v61, v55
	v_fmac_f32_e32 v59, v57, v46
	v_fma_f32 v57, -v47, v62, v58
	v_mul_f32_e32 v63, v60, v56
	v_div_fmas_f32 v48, v48, v52, v53
	v_fmac_f32_e32 v61, v50, v49
	v_fma_f32 v40, -v42, v59, v40
	v_fmac_f32_e32 v62, v57, v51
	v_fma_f32 v42, -v54, v63, v60
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v45, -v45, v61, v55
	v_div_fmas_f32 v40, v40, v46, v59
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v63, v42, v56
	v_fma_f32 v42, -v47, v62, v58
	v_div_fmas_f32 v45, v45, v49, v61
	s_mov_b32 vcc_lo, s2
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v46, -v54, v63, v60
	v_div_fmas_f32 v42, v42, v51, v62
	v_div_fixup_f32 v2, v45, v37, v2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v3, v42, v37, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v46, v46, v56, v63
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v2, v2
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v20, v48, v37, v20
	v_div_fixup_f32 v18, v40, v37, v18
	v_div_fixup_f32 v4, v46, v37, v4
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
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v38, v38
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
	v_cvt_i32_f32_e32 v54, v2
	v_cvt_i32_f32_e32 v55, v3
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
	v_med3_f32 v38, v38, s0, 0x40e00000
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
	v_cvt_i32_f32_e32 v49, v5
	v_and_b32_e32 v5, 15, v29
	v_and_b32_e32 v29, 15, v34
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v34, v41, v32
	v_add3_u32 v14, 0, v14, v33
	v_and_or_b32 v15, 0x1b00, v15, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v24, v24
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v42, v9
	v_cvt_i32_f32_e32 v45, v7
	v_cvt_i32_f32_e32 v46, v8
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v50, v30
	v_cvt_i32_f32_e32 v51, v26
	v_cvt_i32_f32_e32 v52, v20
	v_cvt_i32_f32_e32 v56, v4
	v_and_b32_e32 v4, 15, v23
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v14, v14, v1, v34
	v_xad_u32 v15, v15, v44, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v53, v18
	v_and_b32_e32 v9, 15, v17
	v_and_b32_e32 v17, 15, v39
	v_and_b32_e32 v18, 15, v24
	v_and_b32_e32 v20, 15, v40
	v_cvt_i32_f32_e32 v47, v28
	v_cvt_i32_f32_e32 v48, v27
	v_and_b32_e32 v7, 15, v25
	v_and_b32_e32 v8, 15, v22
	v_and_b32_e32 v25, 15, v37
	v_and_b32_e32 v26, 15, v38
	v_and_b32_e32 v27, 15, v36
	v_and_b32_e32 v28, 15, v35
	v_and_b32_e32 v22, 15, v42
	v_and_b32_e32 v23, 15, v45
	v_and_b32_e32 v24, 15, v46
	v_and_b32_e32 v30, 15, v31
	v_and_b32_e32 v31, 15, v49
	v_and_b32_e32 v32, 15, v50
	v_and_b32_e32 v33, 15, v51
	v_and_b32_e32 v34, 15, v52
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
	v_and_b32_e32 v31, 15, v47
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v32, 15, v48
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 15, v53
	v_and_b32_e32 v38, 15, v54
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v17, 4, v1
	v_lshl_or_b32 v2, v18, 4, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v39, 15, v55
	v_and_b32_e32 v40, 15, v56
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
	s_lshl_b32 s1, s30, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s31, s0
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
	v_and_or_b32 v4, v0, 31, s31
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
	v_add_lshl_u32 v0, v5, s30, 1
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
.Ltmp65:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp66:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 253
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 253
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19752
; TotalNumSgprs: 42
; NumVgprs: 253
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 253
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
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
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     253
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
