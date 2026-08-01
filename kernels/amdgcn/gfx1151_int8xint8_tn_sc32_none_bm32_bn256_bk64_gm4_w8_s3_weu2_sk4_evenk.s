	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
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
	s_sub_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s4, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s15, s4, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s4, s2, s5
	v_or_b32_e32 v59, s15, v0
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s16, 0xff
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s4, s4, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s2, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_lshl_b32 s6, s25, 5
	s_lshl_b32 s7, s25, 4
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	v_or_b32_e32 v1, s15, v0
	v_dual_mov_b32 v2, s6 :: v_dual_mov_b32 v3, s7
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 14 is_stmt 0                ; generate_amdgcn.py:0:14
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow312
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v58, 2, v0
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v57, 0xf0, v0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s16, 31
.Ltmp15:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 4, v57
	v_lshrrev_b32_e32 v3, 3, v0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp17:
	.loc	1 368 26                        ; generate_amdgcn.py:368:26
	s_lshl_b32 s26, s3, 6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s3, s1, 31
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 24
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s3, s3, 27
	v_mul_lo_u32 v2, s25, v2
	v_mul_lo_u32 v3, s24, v3
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s2, s2, s0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s1, s3
	s_mov_b32 s0, 0
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v4, 28, v58
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s27, s2, 8
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s28, s1, 5
	s_mov_b32 s1, s0
	s_mov_b32 s2, s0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s21, s7
	s_mov_b32 s3, s0
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
.Ltmp25:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 15, v0
	v_add3_u32 v61, v3, v4, s14
	v_lshrrev_b32_e32 v6, 6, v0
	v_dual_mov_b32 v42, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v60, v1, 4, v2
	v_lshrrev_b32_e32 v2, 1, v0
	v_or_b32_e32 v3, s14, v1
	v_add_nc_u32_e32 v63, 0, v1
	v_lshlrev_b32_e32 v4, 4, v0
	v_or_b32_e32 v5, 0x3f0, v0
	v_and_or_b32 v2, 0x70, v2, v1
	v_or_b32_e32 v1, 16, v3
	v_mul_lo_u32 v65, v3, s28
	v_lshlrev_b32_e32 v3, 1, v57
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v9, 28, v7
	v_add_nc_u32_e32 v64, 0, v2
	v_mul_lo_u32 v66, v1, s28
	v_lshlrev_b32_e32 v1, 5, v0
	v_and_b32_e32 v2, 2, v6
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v6, 0x1c0, v58
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v67, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v1, 32, v1
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v2, 0, v2
	s_lshl_b32 s29, s25, 4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v67, v3, v1
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v70, 0, v4
	v_add3_u32 v10, v2, v6, v1
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v71, 0, v5
	v_mov_b32_e32 v8, s7
	v_dual_mov_b32 v7, s6 :: v_dual_add_nc_u32 v62, s29, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_add_u32 v68, s24, 5, v61
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v69, 0, v58
	v_dual_mov_b32 v6, s5 :: v_dual_mov_b32 v5, s4
	v_dual_mov_b32 v4, s3 :: v_dual_mov_b32 v3, s2
	v_dual_mov_b32 v2, s1 :: v_dual_mov_b32 v1, s0
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v72, v10, v9
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v73, v11, v9
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v26, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v25, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s30, s25, 5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s1, s0, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s1, s1, s26
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s2, s1, s24
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s3, s1, s25
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v9, s2, v61
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s3, s3, s15
	v_add_nc_u32_e32 v10, s2, v68
	v_add_nc_u32_e32 v11, s3, v60
	s_add_i32 s2, s3, s30
	v_add_nc_u32_e32 v12, s3, v62
	v_add_nc_u32_e32 v13, s2, v60
	v_add_nc_u32_e32 v14, s2, v62
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_clause 0x1
	buffer_load_b32 v75, v9, s[16:19], 0 offen
	buffer_load_b32 v74, v10, s[16:19], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x3
	buffer_load_b128 v[17:20], v11, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v12, s[20:23], 0 offen
	buffer_load_b128 v[9:12], v13, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v14, s[20:23], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s2, s1, 5
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_or_b32 s1, s1, 32
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v76, v65, s2, 1
	v_add_lshl_u32 v77, v66, s2, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s2, s28
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s3, s2, s25
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v78, v59, s3, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_cndmask_b32 v77, 0x80000000, v77
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s1, 5
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v69, v75 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v70, v[17:20]
	s_waitcnt vmcnt(2)
	ds_store_b128 v70, v[21:24] offset:4096
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v69, v74 offset:17408
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v70, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v70, v[13:16] offset:12288
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v144, v76, s[4:7], 0 offen
	buffer_load_u16 v152, v77, s[4:7], 0 offen
	v_add_lshl_u32 v80, v66, s1, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s1, s28
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s2, s1, s25
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v79, v65, s1, 1
	v_cndmask_b32_e32 v115, 0x80000000, v80, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v117, v78, s[8:11], 0 offen
	v_add_lshl_u32 v81, v59, s2, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v76, v63 offset:16672
	ds_load_u8 v145, v63 offset:16640
	ds_load_u8 v146, v63 offset:16736
	ds_load_u8 v147, v63 offset:16704
	ds_load_u8 v148, v63 offset:16752
	ds_load_u8 v149, v63 offset:16720
	ds_load_u8 v150, v63 offset:16688
	ds_load_u8 v151, v63 offset:16656
	ds_load_u8 v77, v63 offset:16544
	ds_load_u8 v153, v63 offset:16512
	ds_load_u8 v154, v63 offset:16608
	ds_load_u8 v155, v63 offset:16576
	ds_load_u8 v156, v63 offset:16624
	ds_load_u8 v157, v63 offset:16592
	ds_load_u8 v158, v63 offset:16560
	ds_load_u8 v159, v63 offset:16528
	ds_load_u8 v160, v63 offset:17184
	ds_load_u8 v161, v63 offset:17152
	ds_load_u8 v162, v63 offset:17248
	ds_load_u8 v163, v63 offset:17216
	ds_load_u8 v164, v63 offset:17264
	ds_load_u8 v165, v63 offset:17232
	ds_load_u8 v166, v63 offset:17200
	ds_load_u8 v167, v63 offset:17168
	ds_load_u8 v168, v63 offset:17056
	ds_load_u8 v169, v63 offset:17024
	ds_load_u8 v170, v63 offset:17120
	ds_load_u8 v171, v63 offset:17088
	ds_load_u8 v172, v63 offset:17136
	ds_load_u8 v173, v63 offset:17104
	ds_load_u8 v174, v63 offset:17072
	ds_load_u8 v175, v63 offset:17040
	ds_load_u8 v176, v63 offset:16928
	ds_load_u8 v177, v63 offset:16896
	ds_load_u8 v178, v63 offset:16992
	ds_load_u8 v179, v63 offset:16960
	ds_load_u8 v180, v63 offset:17008
	ds_load_u8 v181, v63 offset:16976
	ds_load_u8 v182, v63 offset:16944
	ds_load_u8 v183, v63 offset:16912
	ds_load_u8 v184, v64
	ds_load_u8 v185, v63 offset:17312
	ds_load_u8 v186, v63 offset:17280
	ds_load_u8 v187, v63 offset:17376
	ds_load_u8 v188, v63 offset:17344
	ds_load_u8 v189, v63 offset:17360
	ds_load_u8 v190, v63 offset:17328
	ds_load_u8 v191, v63 offset:17296
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s0, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s0, s27
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v76, v145, v76, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v145, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v154, v179, v178, 0xc0c0004
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v152, 16, v152
	v_lshlrev_b32_e32 v144, 16, v144
	v_cndmask_b32_e32 v114, 0x80000000, v79, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v116, 0x80000000, v81, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v63 offset:16480
	ds_load_u8 v10, v63 offset:16448
	ds_load_u8 v11, v63 offset:16384
	ds_load_u8 v12, v63 offset:16400
	ds_load_u8 v13, v63 offset:16416
	ds_load_u8 v14, v63 offset:16496
	ds_load_u8 v15, v63 offset:16464
	ds_load_u8 v16, v63 offset:16432
	ds_load_u8 v17, v64 offset:3328
	ds_load_u8 v18, v64 offset:3840
	ds_load_u8 v19, v64 offset:3584
	ds_load_u8 v20, v64 offset:4096
	ds_load_u8 v21, v64 offset:3968
	ds_load_u8 v22, v64 offset:3712
	ds_load_u8 v23, v64 offset:3456
	ds_load_u8 v24, v64 offset:3200
	ds_load_u8 v74, v64 offset:3072
	ds_load_u8 v75, v64 offset:2304
	ds_load_u8 v78, v64 offset:2816
	ds_load_u8 v79, v64 offset:2560
	ds_load_u8 v80, v64 offset:2944
	ds_load_u8 v81, v64 offset:2688
	ds_load_u8 v82, v64 offset:2432
	ds_load_u8 v83, v64 offset:2176
	ds_load_u8 v84, v64 offset:2048
	ds_load_u8 v85, v64 offset:1280
	ds_load_u8 v86, v64 offset:1792
	ds_load_u8 v87, v64 offset:1536
	ds_load_u8 v88, v64 offset:1920
	ds_load_u8 v89, v64 offset:1664
	ds_load_u8 v90, v64 offset:1408
	ds_load_u8 v91, v64 offset:1152
	ds_load_u8 v92, v64 offset:1024
	ds_load_u8 v93, v64 offset:256
	ds_load_u8 v94, v64 offset:768
	ds_load_u8 v95, v64 offset:512
	ds_load_u8 v96, v64 offset:896
	ds_load_u8 v97, v64 offset:640
	ds_load_u8 v98, v64 offset:384
	ds_load_u8 v99, v64 offset:128
	ds_load_u8 v100, v64 offset:7424
	ds_load_u8 v101, v64 offset:7936
	ds_load_u8 v102, v64 offset:7680
	ds_load_u8 v103, v64 offset:8064
	ds_load_u8 v104, v71 offset:16384
	ds_load_u8 v105, v64 offset:7808
	ds_load_u8 v106, v64 offset:7552
	ds_load_u8 v107, v64 offset:7296
	ds_load_u8 v108, v64 offset:7168
	ds_load_u8 v109, v64 offset:6400
	ds_load_u8 v110, v64 offset:6912
	ds_load_u8 v111, v64 offset:6656
	ds_load_u8 v112, v64 offset:7040
	ds_load_u8 v113, v64 offset:6784
	ds_load_u8 v118, v64 offset:6528
	ds_load_u8 v119, v64 offset:6272
	ds_load_u8 v120, v64 offset:6144
	ds_load_u8 v121, v64 offset:5376
	ds_load_u8 v122, v64 offset:5888
	ds_load_u8 v123, v64 offset:5632
	ds_load_u8 v124, v64 offset:6016
	ds_load_u8 v125, v64 offset:5760
	ds_load_u8 v126, v64 offset:5504
	ds_load_u8 v127, v64 offset:5248
	ds_load_u8 v128, v64 offset:5120
	ds_load_u8 v129, v64 offset:4352
	ds_load_u8 v130, v64 offset:4864
	ds_load_u8 v131, v64 offset:4608
	ds_load_u8 v132, v64 offset:4992
	ds_load_u8 v133, v64 offset:4736
	ds_load_u8 v134, v64 offset:4480
	ds_load_u8 v135, v64 offset:4224
	ds_load_u8 v136, v63 offset:16800
	ds_load_u8 v137, v63 offset:16768
	ds_load_u8 v138, v63 offset:16864
	ds_load_u8 v139, v63 offset:16832
	ds_load_u8 v140, v63 offset:16880
	ds_load_u8 v141, v63 offset:16848
	ds_load_u8 v142, v63 offset:16816
	ds_load_u8 v143, v63 offset:16784
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v10, v11, v13, 0xc0c0004
	v_perm_b32 v11, v74, v17, 0xc0c0004
	v_perm_b32 v13, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v17, v84, v75, 0xc0c0004
	v_perm_b32 v18, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v19, v92, v85, 0xc0c0004
	v_perm_b32 v78, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v79, v184, v93, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v86, v95, v94, 0xc0c0004
	v_perm_b32 v87, v186, v185, 0xc0c0004
	v_perm_b32 v92, v188, v187, 0xc0c0004
	v_perm_b32 v94, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	v_perm_b32 v95, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v137, v139, v138, 0xc0c0004
	v_perm_b32 v138, v147, v146, 0xc0c0004
	v_perm_b32 v139, v153, v77, 0xc0c0004
	v_perm_b32 v100, v108, v100, 0xc0c0004
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_perm_b32 v102, v120, v109, 0xc0c0004
	v_perm_b32 v108, v111, v110, 0xc0c0004
	v_perm_b32 v109, v128, v121, 0xc0c0004
	v_perm_b32 v110, v123, v122, 0xc0c0004
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v22, v83, v82, 0xc0c0004
	v_perm_b32 v24, v81, v80, 0xc0c0004
	v_perm_b32 v80, v91, v90, 0xc0c0004
	v_perm_b32 v81, v89, v88, 0xc0c0004
	v_perm_b32 v88, v99, v98, 0xc0c0004
	v_perm_b32 v89, v97, v96, 0xc0c0004
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v103, v105, v103, 0xc0c0004
	v_perm_b32 v107, v119, v118, 0xc0c0004
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v113, v127, v126, 0xc0c0004
	v_perm_b32 v118, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v143, v142, 0xc0c0004
	v_perm_b32 v122, v141, v140, 0xc0c0004
	v_perm_b32 v123, v151, v150, 0xc0c0004
	v_perm_b32 v124, v149, v148, 0xc0c0004
	v_perm_b32 v125, v159, v158, 0xc0c0004
	v_perm_b32 v126, v157, v156, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v12, v16, 0xc0c0004
	v_perm_b32 v146, v169, v168, 0xc0c0004
	v_perm_b32 v147, v171, v170, 0xc0c0004
	v_perm_b32 v153, v177, v176, 0xc0c0004
	v_perm_b32 v20, v20, v129, 0xc0c0004
	v_perm_b32 v111, v131, v130, 0xc0c0004
	v_perm_b32 v119, v135, v134, 0xc0c0004
	v_perm_b32 v120, v133, v132, 0xc0c0004
	v_perm_b32 v15, v167, v166, 0xc0c0004
	v_perm_b32 v16, v165, v164, 0xc0c0004
	v_perm_b32 v127, v175, v174, 0xc0c0004
	v_perm_b32 v128, v173, v172, 0xc0c0004
	v_perm_b32 v129, v183, v182, 0xc0c0004
	v_perm_b32 v130, v181, v180, 0xc0c0004
	v_perm_b32 v131, v191, v190, 0xc0c0004
	v_perm_b32 v132, v189, v104, 0xc0c0004
	v_lshl_or_b32 v77, v137, 16, v136
	v_lshl_or_b32 v76, v138, 16, v76
	v_lshl_or_b32 v75, v145, 16, v139
	v_lshl_or_b32 v74, v9, 16, v10
	v_lshl_or_b32 v85, v13, 16, v11
	v_lshl_or_b32 v84, v18, 16, v17
	v_lshl_or_b32 v83, v78, 16, v19
	v_lshl_or_b32 v82, v86, 16, v79
	v_lshl_or_b32 v93, v92, 16, v87
	v_lshl_or_b32 v92, v95, 16, v94
	v_lshl_or_b32 v97, v101, 16, v100
	v_lshl_or_b32 v96, v108, 16, v102
	v_lshl_or_b32 v95, v110, 16, v109
	v_lshl_or_b32 v101, v21, 16, v23
	v_lshl_or_b32 v100, v24, 16, v22
	v_lshl_or_b32 v99, v81, 16, v80
	v_lshl_or_b32 v98, v89, 16, v88
	v_lshl_or_b32 v105, v103, 16, v106
	v_lshl_or_b32 v104, v112, 16, v107
	v_lshl_or_b32 v109, v122, 16, v121
	v_lshl_or_b32 v108, v124, 16, v123
	v_lshl_or_b32 v107, v126, 16, v125
	v_lshl_or_b32 v106, v14, 16, v12
	v_lshl_or_b32 v91, v147, 16, v146
	v_lshl_or_b32 v90, v154, 16, v153
	v_lshl_or_b32 v94, v111, 16, v20
	v_lshl_or_b32 v103, v118, 16, v113
	v_lshl_or_b32 v102, v120, 16, v119
	v_lshl_or_b32 v112, v16, 16, v15
	v_lshl_or_b32 v111, v128, 16, v127
	v_lshl_or_b32 v110, v130, 16, v129
	v_lshl_or_b32 v113, v132, 16, v131
	v_wmma_i32_16x16x16_iu8 v[9:16], v[82:85], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[98:101], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[106:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[94:97], v[90:93], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[102:105], v[90:93], v[17:24] neg_lo:[1,1,0]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v72, v117 offset:18432
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[74:81], v[94:97], v[110:113], v[74:81] neg_lo:[1,1,0]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v94, v14
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v79, v79
	v_wmma_i32_16x16x16_iu8 v[82:89], v[98:101], v[106:109], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v90, v10
	v_cvt_f32_i32_e32 v91, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v79, v152, v79
	v_mul_f32_e32 v235, v144, v94
	v_mul_f32_e32 v19, v144, v19
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v114, v114, s[4:7], 0 offen
	buffer_load_u16 v115, v115, s[4:7], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v116, v116, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[82:89], v[102:105], v[110:113], v[82:89] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v92, v12
	v_cvt_f32_i32_e32 v93, v13
	v_cvt_f32_i32_e32 v95, v15
	v_cvt_f32_i32_e32 v96, v16
	v_cvt_f32_i32_e32 v97, v9
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[9:12], v67 offset:18432
	ds_load_b128 v[13:16], v67 offset:18448
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v98, v63 offset:17504
	ds_load_u8 v99, v63 offset:17472
	ds_load_u8 v100, v63 offset:17408
	ds_load_u8 v101, v63 offset:17424
	ds_load_u8 v102, v63 offset:17440
	ds_load_u8 v103, v63 offset:17520
	ds_load_u8 v104, v63 offset:17488
	ds_load_u8 v105, v63 offset:17456
	ds_load_u8 v106, v64 offset:11520
	ds_load_u8 v107, v64 offset:12032
	ds_load_u8 v108, v64 offset:11776
	ds_load_u8 v109, v64 offset:12288
	ds_load_u8 v110, v64 offset:12160
	ds_load_u8 v111, v64 offset:11904
	ds_load_u8 v112, v64 offset:11648
	ds_load_u8 v113, v64 offset:11392
	ds_load_u8 v117, v64 offset:11264
	ds_load_u8 v118, v64 offset:10496
	ds_load_u8 v119, v64 offset:11008
	ds_load_u8 v120, v64 offset:10752
	ds_load_u8 v121, v64 offset:11136
	ds_load_u8 v122, v64 offset:10880
	ds_load_u8 v123, v64 offset:10624
	ds_load_u8 v124, v64 offset:10368
	ds_load_u8 v125, v64 offset:10240
	ds_load_u8 v126, v64 offset:9472
	ds_load_u8 v127, v64 offset:9984
	ds_load_u8 v128, v64 offset:9728
	ds_load_u8 v129, v64 offset:10112
	ds_load_u8 v130, v64 offset:9856
	ds_load_u8 v131, v64 offset:9600
	ds_load_u8 v132, v64 offset:9344
	ds_load_u8 v133, v64 offset:9216
	ds_load_u8 v134, v64 offset:8448
	ds_load_u8 v135, v64 offset:8960
	ds_load_u8 v136, v64 offset:8704
	ds_load_u8 v137, v64 offset:9088
	ds_load_u8 v138, v64 offset:8832
	ds_load_u8 v139, v64 offset:8576
	ds_load_u8 v140, v64 offset:8320
	ds_load_u8 v141, v64 offset:15616
	ds_load_u8 v142, v64 offset:16128
	ds_load_u8 v143, v64 offset:15872
	ds_load_u8 v145, v64 offset:16256
	ds_load_u8 v146, v64 offset:16000
	ds_load_u8 v147, v64 offset:15744
	ds_load_u8 v148, v64 offset:15488
	ds_load_u8 v149, v64 offset:15360
	ds_load_u8 v150, v64 offset:14592
	ds_load_u8 v151, v64 offset:15104
	ds_load_u8 v153, v64 offset:14848
	ds_load_u8 v154, v64 offset:15232
	ds_load_u8 v155, v64 offset:14976
	ds_load_u8 v156, v64 offset:14720
	ds_load_u8 v157, v64 offset:14464
	ds_load_u8 v158, v64 offset:14336
	ds_load_u8 v159, v64 offset:13568
	ds_load_u8 v160, v64 offset:14080
	ds_load_u8 v161, v64 offset:13824
	ds_load_u8 v162, v64 offset:14208
	ds_load_u8 v163, v64 offset:13952
	ds_load_u8 v164, v64 offset:13696
	ds_load_u8 v165, v64 offset:13440
	ds_load_u8 v166, v64 offset:13312
	ds_load_u8 v167, v64 offset:12544
	ds_load_u8 v168, v64 offset:13056
	ds_load_u8 v169, v64 offset:12800
	ds_load_u8 v170, v64 offset:13184
	ds_load_u8 v171, v64 offset:12928
	ds_load_u8 v172, v64 offset:12672
	ds_load_u8 v173, v64 offset:12416
	ds_load_u8 v174, v63 offset:17824
	ds_load_u8 v175, v63 offset:17792
	ds_load_u8 v176, v63 offset:17888
	ds_load_u8 v177, v63 offset:17856
	ds_load_u8 v178, v63 offset:17904
	ds_load_u8 v179, v63 offset:17872
	ds_load_u8 v180, v63 offset:17840
	ds_load_u8 v181, v63 offset:17808
	ds_load_u8 v182, v63 offset:17696
	ds_load_u8 v183, v63 offset:17664
	ds_load_u8 v184, v63 offset:17760
	ds_load_u8 v185, v63 offset:17728
	ds_load_u8 v186, v63 offset:17776
	ds_load_u8 v187, v63 offset:17744
	ds_load_u8 v188, v63 offset:17712
	ds_load_u8 v189, v63 offset:17680
	ds_load_u8 v190, v63 offset:17568
	ds_load_u8 v191, v63 offset:17536
	ds_load_u8 v192, v63 offset:17632
	ds_load_u8 v193, v63 offset:17600
	ds_load_u8 v194, v63 offset:17648
	ds_load_u8 v195, v63 offset:17616
	ds_load_u8 v196, v63 offset:17584
	ds_load_u8 v197, v63 offset:17552
	ds_load_u8 v198, v63 offset:18208
	ds_load_u8 v199, v63 offset:18176
	ds_load_u8 v200, v63 offset:18272
	ds_load_u8 v201, v63 offset:18240
	ds_load_u8 v202, v63 offset:18288
	ds_load_u8 v203, v63 offset:18256
	ds_load_u8 v204, v63 offset:18224
	ds_load_u8 v205, v63 offset:18192
	ds_load_u8 v206, v63 offset:18080
	ds_load_u8 v207, v63 offset:18048
	ds_load_u8 v208, v63 offset:18144
	ds_load_u8 v209, v63 offset:18112
	ds_load_u8 v210, v63 offset:18160
	ds_load_u8 v211, v63 offset:18128
	ds_load_u8 v212, v63 offset:18096
	ds_load_u8 v213, v63 offset:18064
	ds_load_u8 v214, v63 offset:17952
	ds_load_u8 v215, v63 offset:17920
	ds_load_u8 v216, v63 offset:18016
	ds_load_u8 v217, v63 offset:17984
	ds_load_u8 v218, v63 offset:18032
	ds_load_u8 v219, v63 offset:18000
	ds_load_u8 v220, v63 offset:17968
	ds_load_u8 v221, v63 offset:17936
	ds_load_u8 v222, v64 offset:8192
	ds_load_u8 v223, v63 offset:18336
	ds_load_u8 v224, v63 offset:18304
	ds_load_u8 v225, v63 offset:18400
	ds_load_u8 v226, v63 offset:18368
	ds_load_u8 v227, v63 offset:18384
	ds_load_u8 v228, v63 offset:18352
	ds_load_u8 v229, v63 offset:18320
	ds_load_u8 v230, v71 offset:17408
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v231, v144, v90
	v_mul_f32_e32 v232, v144, v91
	v_mul_f32_e32 v233, v144, v92
	v_mul_f32_e32 v234, v144, v93
	v_mul_f32_e32 v236, v144, v95
	v_mul_f32_e32 v237, v144, v96
	v_mul_f32_e32 v17, v144, v17
	s_waitcnt lgkmcnt(62)
	v_dual_mul_f32 v18, v144, v18 :: v_dual_lshlrev_b32 v245, 16, v9
	v_dual_mul_f32 v20, v144, v20 :: v_dual_lshlrev_b32 v247, 16, v11
	v_mul_f32_e32 v21, v144, v21
	v_dual_mul_f32 v22, v144, v22 :: v_dual_lshlrev_b32 v249, 16, v13
	v_mul_f32_e32 v23, v144, v23
	v_dual_mul_f32 v24, v144, v24 :: v_dual_lshlrev_b32 v251, 16, v15
	v_mul_f32_e32 v144, v97, v144
	v_dual_mul_f32 v238, v152, v75 :: v_dual_and_b32 v9, 0xffff0000, v9
	v_dual_mul_f32 v239, v152, v76 :: v_dual_lshlrev_b32 v246, 16, v10
	v_dual_mul_f32 v240, v152, v77 :: v_dual_and_b32 v11, 0xffff0000, v11
	v_dual_mul_f32 v78, v152, v78 :: v_dual_and_b32 v13, 0xffff0000, v13
	v_dual_mul_f32 v80, v152, v80 :: v_dual_and_b32 v15, 0xffff0000, v15
	v_dual_mul_f32 v81, v152, v81 :: v_dual_lshlrev_b32 v248, 16, v12
	v_dual_mul_f32 v241, v152, v82 :: v_dual_lshlrev_b32 v252, 16, v16
	v_dual_mul_f32 v242, v152, v83 :: v_dual_fmac_f32 v51, v231, v246
	v_dual_mul_f32 v243, v152, v84 :: v_dual_lshlrev_b32 v250, 16, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v244, v152, v85 :: v_dual_fmac_f32 v43, v233, v248
	v_dual_mul_f32 v86, v152, v86 :: v_dual_fmac_f32 v37, v234, v249
	v_dual_mul_f32 v87, v152, v87 :: v_dual_and_b32 v10, 0xffff0000, v10
	v_dual_mul_f32 v88, v152, v88 :: v_dual_fmac_f32 v33, v235, v250
	v_dual_mul_f32 v89, v152, v89 :: v_dual_and_b32 v12, 0xffff0000, v12
	v_mul_f32_e32 v152, v74, v152
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v74, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(53)
	v_perm_b32 v75, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v76, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v82, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v83, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v84, v193, v192, 0xc0c0004
	v_perm_b32 v85, v99, v98, 0xc0c0004
	v_perm_b32 v90, v100, v102, 0xc0c0004
	v_perm_b32 v91, v117, v106, 0xc0c0004
	v_perm_b32 v92, v108, v107, 0xc0c0004
	v_perm_b32 v93, v125, v118, 0xc0c0004
	v_perm_b32 v94, v120, v119, 0xc0c0004
	v_perm_b32 v95, v133, v126, 0xc0c0004
	v_perm_b32 v96, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v97, v222, v134, 0xc0c0004
	v_perm_b32 v98, v136, v135, 0xc0c0004
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v41, v144, v245 :: v_dual_and_b32 v14, 0xffff0000, v14
	v_dual_fmac_f32 v47, v232, v247 :: v_dual_and_b32 v16, 0xffff0000, v16
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v99, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v226, v225, 0xc0c0004
	v_perm_b32 v102, v199, v198, 0xc0c0004
	v_perm_b32 v106, v201, v200, 0xc0c0004
	v_perm_b32 v107, v207, v206, 0xc0c0004
	v_perm_b32 v108, v209, v208, 0xc0c0004
	v_perm_b32 v117, v215, v214, 0xc0c0004
	v_perm_b32 v118, v217, v216, 0xc0c0004
	v_perm_b32 v119, v149, v141, 0xc0c0004
	v_perm_b32 v120, v143, v142, 0xc0c0004
	v_perm_b32 v125, v158, v150, 0xc0c0004
	v_perm_b32 v126, v153, v151, 0xc0c0004
	v_perm_b32 v127, v166, v159, 0xc0c0004
	v_perm_b32 v128, v161, v160, 0xc0c0004
	v_perm_b32 v109, v109, v167, 0xc0c0004
	v_perm_b32 v133, v169, v168, 0xc0c0004
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v111, v124, v123, 0xc0c0004
	v_perm_b32 v113, v122, v121, 0xc0c0004
	v_perm_b32 v121, v132, v131, 0xc0c0004
	v_perm_b32 v122, v130, v129, 0xc0c0004
	v_perm_b32 v123, v140, v139, 0xc0c0004
	v_perm_b32 v124, v138, v137, 0xc0c0004
	v_perm_b32 v130, v146, v145, 0xc0c0004
	v_perm_b32 v138, v181, v180, 0xc0c0004
	v_perm_b32 v139, v179, v178, 0xc0c0004
	v_perm_b32 v140, v189, v188, 0xc0c0004
	v_perm_b32 v141, v187, v186, 0xc0c0004
	v_perm_b32 v142, v197, v196, 0xc0c0004
	v_perm_b32 v143, v195, v194, 0xc0c0004
	v_perm_b32 v145, v104, v103, 0xc0c0004
	v_perm_b32 v146, v101, v105, 0xc0c0004
	v_lshl_or_b32 v77, v75, 16, v74
	v_lshl_or_b32 v76, v82, 16, v76
	v_lshl_or_b32 v75, v84, 16, v83
	v_lshl_or_b32 v74, v85, 16, v90
	v_lshl_or_b32 v85, v92, 16, v91
	v_lshl_or_b32 v84, v94, 16, v93
	v_lshl_or_b32 v83, v96, 16, v95
	v_lshl_or_b32 v82, v98, 16, v97
	v_perm_b32 v129, v148, v147, 0xc0c0004
	v_perm_b32 v131, v157, v156, 0xc0c0004
	v_perm_b32 v132, v155, v154, 0xc0c0004
	v_perm_b32 v134, v165, v164, 0xc0c0004
	v_perm_b32 v135, v163, v162, 0xc0c0004
	v_perm_b32 v136, v173, v172, 0xc0c0004
	v_perm_b32 v137, v171, v170, 0xc0c0004
	v_perm_b32 v147, v205, v204, 0xc0c0004
	v_perm_b32 v148, v203, v202, 0xc0c0004
	v_perm_b32 v149, v213, v212, 0xc0c0004
	v_perm_b32 v150, v211, v210, 0xc0c0004
	v_perm_b32 v151, v221, v220, 0xc0c0004
	v_perm_b32 v153, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v154, v229, v228, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v227, v230, 0xc0c0004
	v_lshl_or_b32 v93, v100, 16, v99
	v_lshl_or_b32 v92, v106, 16, v102
	v_lshl_or_b32 v91, v108, 16, v107
	v_lshl_or_b32 v90, v118, 16, v117
	v_lshl_or_b32 v97, v120, 16, v119
	v_lshl_or_b32 v96, v126, 16, v125
	v_lshl_or_b32 v95, v128, 16, v127
	v_lshl_or_b32 v94, v133, 16, v109
	v_lshl_or_b32 v101, v110, 16, v112
	v_lshl_or_b32 v100, v113, 16, v111
	v_lshl_or_b32 v99, v122, 16, v121
	v_lshl_or_b32 v98, v124, 16, v123
	v_lshl_or_b32 v109, v139, 16, v138
	v_lshl_or_b32 v108, v141, 16, v140
	v_lshl_or_b32 v107, v143, 16, v142
	v_lshl_or_b32 v106, v145, 16, v146
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v55, v17, v9 :: v_dual_fmac_f32 v48, v239, v247
	v_dual_fmac_f32 v53, v18, v10 :: v_dual_fmac_f32 v44, v240, v248
	v_dual_fmac_f32 v49, v19, v11 :: v_dual_fmac_f32 v38, v78, v249
	v_dual_fmac_f32 v45, v20, v12 :: v_dual_fmac_f32 v34, v79, v250
	v_dual_fmac_f32 v39, v21, v13 :: v_dual_fmac_f32 v30, v80, v251
	v_dual_fmac_f32 v35, v22, v14 :: v_dual_fmac_f32 v28, v81, v252
	v_dual_fmac_f32 v31, v23, v15 :: v_dual_fmac_f32 v56, v241, v9
	v_dual_fmac_f32 v25, v24, v16 :: v_dual_fmac_f32 v54, v242, v10
	v_fmac_f32_e32 v50, v243, v11
	v_fmac_f32_e32 v46, v244, v12
	v_fmac_f32_e32 v40, v86, v13
	v_fmac_f32_e32 v36, v87, v14
	v_fmac_f32_e32 v32, v88, v15
	v_fmac_f32_e32 v26, v89, v16
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[82:85], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v130, 16, v129
	v_lshl_or_b32 v104, v132, 16, v131
	v_lshl_or_b32 v103, v135, 16, v134
	v_lshl_or_b32 v102, v137, 16, v136
	v_lshl_or_b32 v112, v148, 16, v147
	v_lshl_or_b32 v111, v150, 16, v149
	v_lshl_or_b32 v110, v153, 16, v151
	v_lshl_or_b32 v113, v155, 16, v154
	v_wmma_i32_16x16x16_iu8 v[17:24], v[98:101], v[74:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[106:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[98:101], v[106:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[94:97], v[90:93], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[102:105], v[90:93], v[17:24] neg_lo:[1,1,0]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[82:89], v[102:105], v[110:113], v[82:89] neg_lo:[1,1,0]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v105, v9
	v_wmma_i32_16x16x16_iu8 v[74:81], v[94:97], v[110:113], v[74:81] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v90, v10
	v_cvt_f32_i32_e32 v91, v11
	v_cvt_f32_i32_e32 v92, v12
	v_cvt_f32_i32_e32 v93, v13
	v_cvt_f32_i32_e32 v94, v14
	v_cvt_f32_i32_e32 v95, v15
	v_cvt_f32_i32_e32 v96, v16
	v_cvt_f32_i32_e32 v97, v17
	v_cvt_f32_i32_e32 v98, v18
	v_cvt_f32_i32_e32 v99, v19
	v_cvt_f32_i32_e32 v100, v20
	v_cvt_f32_i32_e32 v101, v21
	v_cvt_f32_i32_e32 v102, v22
	v_cvt_f32_i32_e32 v103, v23
	v_cvt_f32_i32_e32 v104, v24
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v29, v236, v251 :: v_dual_fmac_f32 v52, v238, v246
	v_dual_fmac_f32 v27, v237, v252 :: v_dual_fmac_f32 v42, v152, v245
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v107, 16, v115
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v116
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v75, v107, v75 :: v_dual_lshlrev_b32 v106, 16, v114
	ds_store_b32 v73, v9 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v67 offset:18432
	ds_load_b128 v[13:16], v67 offset:18448
	ds_load_b128 v[17:20], v67 offset:18944
	ds_load_b128 v[21:24], v67 offset:18960
	v_mul_f32_e32 v105, v105, v106
	v_dual_mul_f32 v90, v106, v90 :: v_dual_mul_f32 v77, v107, v77
	v_mul_f32_e32 v91, v106, v91
	v_dual_mul_f32 v92, v106, v92 :: v_dual_mul_f32 v79, v107, v79
	v_mul_f32_e32 v93, v106, v93
	v_dual_mul_f32 v94, v106, v94 :: v_dual_mul_f32 v81, v107, v81
	v_mul_f32_e32 v95, v106, v95
	v_dual_mul_f32 v96, v106, v96 :: v_dual_mul_f32 v83, v107, v83
	v_dual_mul_f32 v97, v106, v97 :: v_dual_mul_f32 v76, v107, v76
	v_dual_mul_f32 v98, v106, v98 :: v_dual_mul_f32 v85, v107, v85
	v_dual_mul_f32 v99, v106, v99 :: v_dual_mul_f32 v78, v107, v78
	v_dual_mul_f32 v100, v106, v100 :: v_dual_mul_f32 v87, v107, v87
	v_dual_mul_f32 v101, v106, v101 :: v_dual_mul_f32 v80, v107, v80
	v_dual_mul_f32 v102, v106, v102 :: v_dual_mul_f32 v89, v107, v89
	v_dual_mul_f32 v103, v106, v103 :: v_dual_mul_f32 v82, v107, v82
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v104, v106, v104 :: v_dual_fmac_f32 v41, v105, v9
	v_dual_mul_f32 v74, v74, v107 :: v_dual_fmac_f32 v43, v92, v12
	v_dual_mul_f32 v84, v107, v84 :: v_dual_fmac_f32 v51, v90, v10
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v86, v107, v86 :: v_dual_fmac_f32 v37, v93, v13
	v_dual_mul_f32 v88, v107, v88 :: v_dual_fmac_f32 v33, v94, v14
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v47, v91, v11 :: v_dual_fmac_f32 v42, v74, v9
	v_dual_fmac_f32 v29, v95, v15 :: v_dual_fmac_f32 v44, v77, v12
	v_dual_fmac_f32 v27, v96, v16 :: v_dual_fmac_f32 v52, v75, v10
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v55, v97, v17 :: v_dual_fmac_f32 v48, v76, v11
	v_dual_fmac_f32 v53, v98, v18 :: v_dual_fmac_f32 v30, v80, v15
	v_dual_fmac_f32 v49, v99, v19 :: v_dual_fmac_f32 v38, v78, v13
	v_dual_fmac_f32 v45, v100, v20 :: v_dual_fmac_f32 v34, v79, v14
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v39, v101, v21 :: v_dual_fmac_f32 v54, v83, v18
	v_dual_fmac_f32 v35, v102, v22 :: v_dual_fmac_f32 v28, v81, v16
	v_dual_fmac_f32 v31, v103, v23 :: v_dual_fmac_f32 v56, v82, v17
	v_dual_fmac_f32 v25, v104, v24 :: v_dual_fmac_f32 v40, v86, v21
	v_fmac_f32_e32 v50, v84, v19
	v_fmac_f32_e32 v46, v85, v20
	v_fmac_f32_e32 v36, v87, v22
	v_fmac_f32_e32 v32, v88, v23
	v_fmac_f32_e32 v26, v89, v24
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, s30 :: v_dual_mov_b32 v3, s29
	v_mov_b32_e32 v1, v59
.LBB0_7:                                ; %._crit_edge
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_bfe_i32 v4, v0, 0, 1
	v_and_b32_e32 v5, 0x3f8, v58
	v_and_b32_e32 v6, 14, v0
	v_and_b32_e32 v0, 1, v0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v4, 0x840, v4
	s_barrier
	s_and_b32 s13, s13, 0xffff
	v_lshlrev_b32_e32 v0, 6, v0
	s_mov_b32 s15, 0x31027000
	v_xor_b32_e32 v4, v4, v5
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s25, 3
	s_mul_i32 s1, s25, 5
	s_mul_i32 s2, s25, 6
	s_mul_i32 s3, s25, 7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v7, v6, 11, v4
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mad_u64_u32 v[4:5], null, s14, s25, v[1:2]
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v6, 2, v6
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v1, 0, v7
	v_xad_u32 v5, v7, 8, 0
	v_xad_u32 v8, v7, 16, 0
	v_xad_u32 v9, v7, 24, 0
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s25, 9
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v1, v[41:42], v[55:56] offset1:2
	ds_store_2addr_stride64_b64 v5, v[51:52], v[53:54] offset1:2
	ds_store_2addr_stride64_b64 v8, v[47:48], v[49:50] offset1:2
	ds_store_2addr_stride64_b64 v9, v[43:44], v[45:46] offset1:2
	v_xad_u32 v1, v7, 32, 0
	v_lshlrev_b32_e32 v5, 3, v57
	v_xad_u32 v8, v7, 40, 0
	v_xad_u32 v9, v7, 48, 0
	v_xad_u32 v7, v7, 56, 0
	ds_store_2addr_stride64_b64 v1, v[37:38], v[39:40] offset1:2
	v_or3_b32 v37, v5, v0, v6
	ds_store_2addr_stride64_b64 v8, v[33:34], v[35:36] offset1:2
	ds_store_2addr_stride64_b64 v9, v[29:30], v[31:32] offset1:2
	ds_store_2addr_stride64_b64 v7, v[27:28], v[25:26] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v35, 2, v4
	v_add_nc_u32_e32 v0, 0, v37
	v_xad_u32 v5, 0x840, v37, 0
	v_xad_u32 v7, 0x1008, v37, 0
	v_xad_u32 v9, 0x1848, v37, 0
	ds_load_b64 v[0:1], v0
	ds_load_b64 v[5:6], v5
	ds_load_b64 v[7:8], v7
	ds_load_b64 v[9:10], v9
	v_xad_u32 v11, 0x2010, v37, 0
	v_xad_u32 v13, 0x2850, v37, 0
	v_xad_u32 v15, 0x3018, v37, 0
	v_xad_u32 v17, 0x3858, v37, 0
	v_xad_u32 v19, 0x4020, v37, 0
	v_xad_u32 v21, 0x4860, v37, 0
	v_xad_u32 v23, 0x5028, v37, 0
	v_xad_u32 v25, 0x5868, v37, 0
	ds_load_b64 v[11:12], v11
	ds_load_b64 v[13:14], v13
	ds_load_b64 v[15:16], v15
	ds_load_b64 v[17:18], v17
	ds_load_b64 v[19:20], v19
	ds_load_b64 v[21:22], v21
	ds_load_b64 v[23:24], v23
	ds_load_b64 v[25:26], v25
	v_xad_u32 v27, 0x6030, v37, 0
	v_xad_u32 v29, 0x6870, v37, 0
	v_xad_u32 v31, 0x7038, v37, 0
	v_xad_u32 v33, 0x7878, v37, 0
	ds_load_b64 v[27:28], v27
	ds_load_b64 v[29:30], v29
	ds_load_b64 v[31:32], v31
	ds_load_b64 v[33:34], v33
	v_add_lshl_u32 v36, v4, s25, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v35, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v5, v36, s[12:15], 0 offen
	v_lshl_add_u32 v0, s25, 3, v35
	v_add_lshl_u32 v5, v4, s0, 2
	v_add_nc_u32_e32 v3, v3, v35
	v_add_lshl_u32 v36, v4, s1, 2
	v_add_lshl_u32 v37, v4, s2, 2
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v7, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v9, v5, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v11, v3, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v13, v36, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v15, v37, s[12:15], 0 offen
	v_add_lshl_u32 v0, v4, s3, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s5, s25, 10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v2, v2, v35
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s6, s25, 11
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v3, v4, s4, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s7, s25, 12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, v4, s5, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s8, s25, 13
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v7, v4, s6, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s9, s25, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v17, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v19, v2, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v21, v3, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v23, v5, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v25, v7, s[12:15], 0 offen
	v_add_lshl_u32 v0, v4, s7, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s10, s25, 15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v4, s8, 2
	v_add_lshl_u32 v3, v4, s9, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s11, s25, 17
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, v4, s10, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s16, s25, 18
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_add_u32 v7, s25, 6, v35
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s17, s25, 19
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v27, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v29, v2, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v31, v3, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x1
	buffer_atomic_add_f32 v33, v5, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v7, s[12:15], 0 offen
	v_add_lshl_u32 v0, v4, s11, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s18, s25, 20
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, v4, s16, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s19, s25, 21
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v4, s17, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s20, s25, 22
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v3, v4, s18, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s21, s25, 23
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, v4, s19, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s22, s25, 24
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v6, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v8, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v12, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, v4, s20, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s23, s25, 25
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, v4, s21, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s24, s25, 26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v4, s22, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s26, s25, 27
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v3, v4, s23, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s27, s25, 28
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, v4, s24, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s28, s25, 29
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_clause 0x4
	buffer_atomic_add_f32 v16, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v24, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, v4, s26, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s29, s25, 30
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, v4, s27, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s30, s25, 31
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v4, s28, 2
	v_add_lshl_u32 v3, v4, s29, 2
	v_add_lshl_u32 v4, v4, s30, 2
	s_clause 0x4
	buffer_atomic_add_f32 v26, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v34, v4, s[12:15], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 253
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8148
; TotalNumSgprs: 33
; NumVgprs: 253
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 33
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
	.quad	.Ltmp15-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
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
