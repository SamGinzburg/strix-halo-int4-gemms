	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s28, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v10, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v11, 0xf0, v0
	v_mov_b32_e32 v4, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s22, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
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
	v_mov_b32_e32 v1, 0
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
	v_rcp_iflag_f32_e32 v3, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v3
	v_mov_b32_e32 v3, 0
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s4, s7
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s28, 63
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s29, s2, 4
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s2, s4, 8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s5, 64
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[12:19], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s5, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s28, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s6, s1, 31
.Ltmp18:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v12, 3, v0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s6, s6, 27
.Ltmp20:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s5, s0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s0, s1, s6
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s1, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
.Ltmp23:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v2, 1, v0
	v_mul_lo_u32 v6, s22, v12
	v_bfe_i32 v4, v0, 2, 1
	v_bfe_i32 v5, v0, 3, 1
	v_lshlrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v7, 14, v2
	v_lshrrev_b32_e32 v9, 6, v0
	v_and_b32_e32 v4, 0x90, v4
	v_and_b32_e32 v5, 0x110, v5
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v8, 0x60, v3
	v_add3_u32 v14, v6, v7, s29
	v_lshlrev_b32_e32 v6, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v4, v4, v5
	v_mov_b32_e32 v41, 0
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s30, s0, 5
.Ltmp25:
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v13, 3, v11
	v_and_b32_e32 v6, 0xe00, v6
	v_dual_mov_b32 v42, 0 :: v_dual_lshlrev_b32 v17, 2, v0
	v_dual_mov_b32 v36, 0 :: v_dual_and_b32 v3, 32, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or3_b32 v4, v8, v6, v4
	v_or_b32_e32 v8, s29, v10
	v_lshl_or_b32 v7, v10, 9, v13
	v_dual_mov_b32 v38, 0 :: v_dual_and_b32 v19, 0x1c0, v17
	v_mov_b32_e32 v40, 0
	v_mul_lo_u32 v16, v8, s30
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v8, 2, v9
	v_lshlrev_b32_e32 v9, 1, v11
	v_mul_lo_u32 v5, s23, v13
	v_dual_mov_b32 v20, 0 :: v_dual_lshlrev_b32 v1, 4, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v8, 0, v8
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v17, 0, v9
	v_xor_b32_e32 v6, 0x110, v7
	v_xor_b32_e32 v23, 0x90, v7
	v_xor_b32_e32 v26, 16, v4
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v27, 28, v2
	v_add3_u32 v28, v8, v19, v3
	v_add3_u32 v29, v17, v9, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v9, v5, v1, s2
	v_add_nc_u32_e32 v21, 0, v2
	v_add_nc_u32_e32 v22, 0, v7
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v24, 0, v6
	v_add_nc_u32_e32 v25, 0, v4
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v15, 0, v10
	v_or_b32_e32 v18, s2, v0
	v_lshl_add_u32 v19, s22, 5, v14
	v_add_nc_u32_e32 v23, 0, v23
	v_add_nc_u32_e32 v32, 0, v26
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_add_nc_u32_e32 v35, v28, v27
	v_add_nc_u32_e32 v37, v29, v27
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_lshl_b32 s31, s23, 5
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
	s_add_i32 s0, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s0, 6
	v_or_b32_e32 v46, s6, v12
	v_or_b32_e32 v47, s6, v13
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s0, s6, s22
	v_mad_u64_u32 v[44:45], null, s6, s23, v[9:10]
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_or_b32 s5, s6, 32
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v45, s0, v14
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v48, s5, v12
	v_add_nc_u32_e32 v50, s0, v19
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e64 s0, s28, v46
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v47
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v49, s5, v13
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v46, s23, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e64 v45, 0x80000000, v45, s0
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e64 s0, s28, v48
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_dual_cndmask_b32 v47, 0x80000000, v44 :: v_dual_cndmask_b32 v48, 0x80000000, v46
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v44, s31, v44
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	buffer_load_u16 v68, v45, s[24:27], 0 offen
	v_cndmask_b32_e64 v60, 0x80000000, v50, s0
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s28, v49
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v52, s23, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v53, 0x80000000, v44, s0
	s_clause 0x1
	buffer_load_b128 v[44:47], v47, s[8:11], 0 offen
	buffer_load_b128 v[48:51], v48, s[8:11], 0 offen
	v_cndmask_b32_e64 v56, 0x80000000, v52, s0
	s_clause 0x1
	buffer_load_b128 v[52:55], v53, s[8:11], 0 offen
	buffer_load_b128 v[56:59], v56, s[8:11], 0 offen
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	buffer_load_u16 v69, v60, s[24:27], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s6, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s0, s23
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v60, v16, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v61, v18, s6, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s30
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s5, 5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v70, 0x80000000, v60 :: v_dual_cndmask_b32 v71, 0x80000000, v61
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s5, s0, s23
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s30
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	s_cmp_lg_u32 s4, s1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(3)
	v_perm_b32 v60, v48, v44, 0x5010400
	v_perm_b32 v48, v48, v44, 0x7030602
	v_perm_b32 v61, v49, v45, 0x5010400
	v_perm_b32 v49, v49, v45, 0x7030602
	v_perm_b32 v62, v50, v46, 0x5010400
	v_perm_b32 v50, v50, v46, 0x7030602
	v_perm_b32 v63, v51, v47, 0x5010400
	v_perm_b32 v64, v51, v47, 0x7030602
	v_and_b16 v44.l, 0xff, v60.l
	v_lshrrev_b32_e32 v65, 8, v60
	v_lshrrev_b32_e32 v66, 24, v60
	v_and_b16 v44.h, 0xff, v60.h
	v_and_b16 v45.l, 0xff, v48.l
	v_lshrrev_b32_e32 v60, 8, v48
	v_lshrrev_b32_e32 v67, 24, v48
	v_and_b16 v45.h, 0xff, v48.h
	v_and_b16 v46.l, 0xff, v61.l
	v_lshrrev_b32_e32 v72, 8, v61
	v_lshrrev_b32_e32 v73, 24, v61
	v_and_b16 v46.h, 0xff, v61.h
	v_and_b16 v47.l, 0xff, v49.l
	v_lshrrev_b32_e32 v61, 8, v49
	v_lshrrev_b32_e32 v74, 24, v49
	v_and_b16 v47.h, 0xff, v49.h
	v_and_b16 v48.l, 0xff, v62.l
	v_lshrrev_b32_e32 v75, 8, v62
	v_lshrrev_b32_e32 v76, 24, v62
	v_and_b16 v48.h, 0xff, v62.h
	v_and_b16 v49.l, 0xff, v50.l
	v_lshrrev_b32_e32 v62, 8, v50
	v_lshrrev_b32_e32 v77, 24, v50
	v_and_b16 v49.h, 0xff, v50.h
	v_and_b16 v50.l, 0xff, v63.l
	v_lshrrev_b32_e32 v78, 8, v63
	v_lshrrev_b32_e32 v79, 24, v63
	v_and_b16 v50.h, 0xff, v63.h
	v_and_b16 v51.l, 0xff, v64.l
	v_lshrrev_b32_e32 v63, 8, v64
	v_lshrrev_b32_e32 v80, 24, v64
	v_and_b16 v51.h, 0xff, v64.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v64, v56, v52, 0x5010400
	v_perm_b32 v81, v56, v52, 0x7030602
	v_perm_b32 v82, v57, v53, 0x5010400
	v_perm_b32 v83, v57, v53, 0x7030602
	v_perm_b32 v84, v58, v54, 0x5010400
	v_perm_b32 v85, v58, v54, 0x7030602
	v_perm_b32 v86, v59, v55, 0x5010400
	v_perm_b32 v87, v59, v55, 0x7030602
	v_lshlrev_b16 v52.l, 8, v65.l
	v_lshlrev_b16 v54.l, 8, v72.l
	v_lshrrev_b32_e32 v72, 8, v64
	v_lshlrev_b16 v52.h, 8, v66.l
	v_lshlrev_b16 v54.h, 8, v73.l
	v_lshrrev_b32_e32 v73, 24, v64
	v_lshlrev_b16 v53.l, 8, v60.l
	v_lshlrev_b16 v55.h, 8, v74.l
	v_lshrrev_b32_e32 v74, 8, v81
	v_lshlrev_b16 v53.h, 8, v67.l
	v_lshlrev_b16 v56.l, 8, v75.l
	v_lshrrev_b32_e32 v75, 24, v81
	v_lshlrev_b16 v55.l, 8, v61.l
	v_lshlrev_b16 v56.h, 8, v76.l
	v_lshlrev_b16 v57.l, 8, v62.l
	v_lshlrev_b16 v57.h, 8, v77.l
	v_lshlrev_b16 v58.l, 8, v78.l
	v_lshlrev_b16 v58.h, 8, v79.l
	v_lshlrev_b16 v59.l, 8, v63.l
	v_lshlrev_b16 v59.h, 8, v80.l
	v_and_b16 v60.l, 0xff, v64.l
	v_and_b16 v60.h, 0xff, v64.h
	v_and_b16 v61.l, 0xff, v81.l
	v_and_b16 v61.h, 0xff, v81.h
	v_and_b16 v62.l, 0xff, v82.l
	v_lshrrev_b32_e32 v76, 8, v82
	v_lshrrev_b32_e32 v77, 24, v82
	v_and_b16 v62.h, 0xff, v82.h
	v_and_b16 v63.l, 0xff, v83.l
	v_lshrrev_b32_e32 v78, 8, v83
	v_lshrrev_b32_e32 v79, 24, v83
	v_and_b16 v63.h, 0xff, v83.h
	v_and_b16 v64.l, 0xff, v84.l
	v_lshrrev_b32_e32 v80, 8, v84
	v_lshrrev_b32_e32 v81, 24, v84
	v_and_b16 v64.h, 0xff, v84.h
	v_and_b16 v65.l, 0xff, v85.l
	v_lshrrev_b32_e32 v82, 8, v85
	v_lshrrev_b32_e32 v83, 24, v85
	v_and_b16 v65.h, 0xff, v85.h
	v_and_b16 v66.l, 0xff, v86.l
	v_lshrrev_b32_e32 v84, 8, v86
	v_lshrrev_b32_e32 v85, 24, v86
	v_and_b16 v66.h, 0xff, v86.h
	v_lshrrev_b32_e32 v86, 8, v87
	v_lshrrev_b32_e32 v88, 24, v87
	v_or_b16 v44.l, v44.l, v52.l
	v_lshlrev_b16 v52.l, 8, v72.l
	v_or_b16 v44.h, v44.h, v52.h
	v_lshlrev_b16 v52.h, 8, v73.l
	v_or_b16 v45.l, v45.l, v53.l
	v_lshlrev_b16 v53.l, 8, v74.l
	v_or_b16 v45.h, v45.h, v53.h
	v_lshlrev_b16 v53.h, 8, v75.l
	v_and_b16 v67.l, 0xff, v87.l
	v_and_b16 v67.h, 0xff, v87.h
	v_or_b16 v46.l, v46.l, v54.l
	v_or_b16 v46.h, v46.h, v54.h
	v_or_b16 v47.l, v47.l, v55.l
	v_or_b16 v47.h, v47.h, v55.h
	v_or_b16 v48.l, v48.l, v56.l
	v_or_b16 v48.h, v48.h, v56.h
	v_or_b16 v49.l, v49.l, v57.l
	v_or_b16 v49.h, v49.h, v57.h
	v_or_b16 v50.l, v50.l, v58.l
	v_or_b16 v50.h, v50.h, v58.h
	v_or_b16 v51.l, v51.l, v59.l
	v_or_b16 v51.h, v51.h, v59.h
	v_lshlrev_b16 v54.l, 8, v76.l
	v_lshlrev_b16 v54.h, 8, v77.l
	v_lshlrev_b16 v55.l, 8, v78.l
	v_lshlrev_b16 v55.h, 8, v79.l
	v_lshlrev_b16 v56.l, 8, v80.l
	v_lshlrev_b16 v56.h, 8, v81.l
	v_lshlrev_b16 v57.l, 8, v82.l
	v_lshlrev_b16 v57.h, 8, v83.l
	v_lshlrev_b16 v58.l, 8, v84.l
	v_lshlrev_b16 v58.h, 8, v85.l
	v_lshlrev_b16 v59.l, 8, v86.l
	v_lshlrev_b16 v59.h, 8, v88.l
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_store_b16 v21, v68 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v22, v44
	ds_store_b16_d16_hi v22, v44 offset:32
	ds_store_b16 v22, v45 offset:64
	ds_store_b16_d16_hi v22, v45 offset:96
	ds_store_b16 v23, v46
	ds_store_b16_d16_hi v23, v46 offset:32
	ds_store_b16 v23, v47 offset:64
	ds_store_b16_d16_hi v23, v47 offset:96
	ds_store_b16 v24, v48
	ds_store_b16_d16_hi v24, v48 offset:32
	ds_store_b16 v24, v49 offset:64
	ds_store_b16_d16_hi v24, v49 offset:96
	ds_store_b16 v22, v50 offset:384
	ds_store_b16_d16_hi v22, v50 offset:416
	ds_store_b16 v22, v51 offset:448
	ds_store_b16_d16_hi v22, v51 offset:480
	v_or_b16 v44.l, v60.l, v52.l
	v_or_b16 v44.h, v60.h, v52.h
	v_or_b16 v45.l, v61.l, v53.l
	v_or_b16 v45.h, v61.h, v53.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v46.l, v62.l, v54.l
	v_or_b16 v46.h, v62.h, v54.h
	v_or_b16 v47.l, v63.l, v55.l
	v_or_b16 v47.h, v63.h, v55.h
	v_or_b16 v48.l, v64.l, v56.l
	v_or_b16 v48.h, v64.h, v56.h
	v_or_b16 v49.l, v65.l, v57.l
	v_or_b16 v49.h, v65.h, v57.h
	v_or_b16 v50.l, v66.l, v58.l
	v_or_b16 v50.h, v66.h, v58.h
	v_or_b16 v51.l, v67.l, v59.l
	v_or_b16 v51.h, v67.h, v59.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v21, v69 offset:16896
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v22, v44 offset:8192
	ds_store_b16_d16_hi v22, v44 offset:8224
	ds_store_b16 v22, v45 offset:8256
	ds_store_b16_d16_hi v22, v45 offset:8288
	ds_store_b16 v23, v46 offset:8192
	ds_store_b16_d16_hi v23, v46 offset:8224
	ds_store_b16 v23, v47 offset:8256
	ds_store_b16_d16_hi v23, v47 offset:8288
	ds_store_b16 v24, v48 offset:8192
	ds_store_b16_d16_hi v24, v48 offset:8224
	ds_store_b16 v24, v49 offset:8256
	ds_store_b16_d16_hi v24, v49 offset:8288
	ds_store_b16 v22, v50 offset:8576
	ds_store_b16_d16_hi v22, v50 offset:8608
	ds_store_b16 v22, v51 offset:8640
	ds_store_b16_d16_hi v22, v51 offset:8672
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v44, v71, s[16:19], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v80, v70, s[12:15], 0 offen
	v_add_lshl_u32 v45, v16, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v46, v18, s5, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[52:55], v25
	ds_load_b128 v[60:63], v25 offset:4096
	ds_load_b128 v[64:67], v32
	ds_load_b128 v[68:71], v32 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v47, v15 offset:16592
	ds_load_u8 v48, v15 offset:16624
	ds_load_u8 v49, v15 offset:16608
	ds_load_u8 v50, v15 offset:16576
	ds_load_u8 v51, v15 offset:16528
	ds_load_u8 v56, v15 offset:16560
	ds_load_u8 v57, v15 offset:16544
	ds_load_u8 v58, v15 offset:16512
	ds_load_u8 v59, v15 offset:16464
	ds_load_u8 v72, v15 offset:16496
	ds_load_u8 v73, v15 offset:16480
	ds_load_u8 v74, v15 offset:16448
	ds_load_u8 v75, v15 offset:16384
	ds_load_u8 v76, v15 offset:16400
	ds_load_u8 v77, v15 offset:16416
	ds_load_u8 v78, v15 offset:16432
	ds_load_u8 v79, v15 offset:16848
	ds_load_u8 v81, v15 offset:16880
	ds_load_u8 v82, v15 offset:16864
	ds_load_u8 v83, v15 offset:16832
	ds_load_u8 v84, v15 offset:16784
	ds_load_u8 v85, v15 offset:16816
	ds_load_u8 v86, v15 offset:16800
	ds_load_u8 v87, v15 offset:16768
	ds_load_u8 v88, v15 offset:16720
	ds_load_u8 v89, v15 offset:16752
	ds_load_u8 v90, v15 offset:16736
	ds_load_u8 v91, v15 offset:16704
	ds_load_u8 v92, v15 offset:16656
	ds_load_u8 v93, v15 offset:16688
	ds_load_u8 v94, v15 offset:16672
	ds_load_u8 v95, v15 offset:16640
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v35, v44 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_u16 v96, v46, s[16:19], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v97, v45, s[12:15], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v44, v50, v47, 0xc0c0004
	v_perm_b32 v45, v49, v48, 0xc0c0004
	v_perm_b32 v46, v58, v51, 0xc0c0004
	v_perm_b32 v47, v57, v56, 0xc0c0004
	v_perm_b32 v48, v74, v59, 0xc0c0004
	v_perm_b32 v49, v73, v72, 0xc0c0004
	v_perm_b32 v50, v75, v76, 0xc0c0004
	v_perm_b32 v51, v77, v78, 0xc0c0004
	v_perm_b32 v56, v83, v79, 0xc0c0004
	v_perm_b32 v57, v82, v81, 0xc0c0004
	v_perm_b32 v58, v87, v84, 0xc0c0004
	v_perm_b32 v59, v86, v85, 0xc0c0004
	v_perm_b32 v76, v91, v88, 0xc0c0004
	v_perm_b32 v77, v90, v89, 0xc0c0004
	v_perm_b32 v81, v95, v92, 0xc0c0004
	v_perm_b32 v82, v94, v93, 0xc0c0004
	v_lshl_or_b32 v75, v45, 16, v44
	v_lshl_or_b32 v74, v47, 16, v46
	v_lshl_or_b32 v73, v49, 16, v48
	v_lshl_or_b32 v72, v51, 16, v50
	v_lshl_or_b32 v79, v57, 16, v56
	v_lshl_or_b32 v78, v59, 16, v58
	v_lshl_or_b32 v77, v77, 16, v76
	v_lshl_or_b32 v76, v82, 16, v81
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[72:75], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[60:63], v[72:75], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[76:79], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[68:71], v[76:79], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v72, v44
	v_cvt_f32_i32_e32 v73, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v74, v46
	v_cvt_f32_i32_e32 v75, v47
	v_cvt_f32_i32_e32 v76, v48
	v_cvt_f32_i32_e32 v77, v49
	v_cvt_f32_i32_e32 v78, v50
	v_cvt_f32_i32_e32 v79, v51
	v_cvt_f32_i32_e32 v81, v52
	v_cvt_f32_i32_e32 v82, v53
	v_cvt_f32_i32_e32 v83, v54
	v_cvt_f32_i32_e32 v84, v55
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[44:47], v17 offset:17408
	ds_load_b128 v[48:51], v17 offset:17424
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[52:55], v25 offset:8192
	ds_load_b128 v[60:63], v25 offset:12288
	ds_load_b128 v[64:67], v32 offset:8192
	ds_load_b128 v[68:71], v32 offset:12288
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v85, v15 offset:17104
	ds_load_u8 v86, v15 offset:17136
	ds_load_u8 v87, v15 offset:17120
	ds_load_u8 v88, v15 offset:17088
	ds_load_u8 v89, v15 offset:17040
	ds_load_u8 v90, v15 offset:17072
	ds_load_u8 v91, v15 offset:17056
	ds_load_u8 v92, v15 offset:17024
	ds_load_u8 v93, v15 offset:16976
	ds_load_u8 v94, v15 offset:17008
	ds_load_u8 v95, v15 offset:16992
	ds_load_u8 v98, v15 offset:16960
	ds_load_u8 v99, v15 offset:16896
	ds_load_u8 v100, v15 offset:16912
	ds_load_u8 v101, v15 offset:16928
	ds_load_u8 v102, v15 offset:16944
	ds_load_u8 v103, v15 offset:17360
	ds_load_u8 v104, v15 offset:17392
	ds_load_u8 v105, v15 offset:17376
	ds_load_u8 v106, v15 offset:17344
	ds_load_u8 v107, v15 offset:17296
	ds_load_u8 v108, v15 offset:17328
	ds_load_u8 v109, v15 offset:17312
	ds_load_u8 v110, v15 offset:17280
	ds_load_u8 v111, v15 offset:17232
	ds_load_u8 v112, v15 offset:17264
	ds_load_u8 v113, v15 offset:17248
	ds_load_u8 v114, v15 offset:17216
	ds_load_u8 v115, v15 offset:17168
	ds_load_u8 v116, v15 offset:17200
	ds_load_u8 v117, v15 offset:17184
	ds_load_u8 v118, v15 offset:17152
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(37)
	v_lshlrev_b32_e32 v119, 16, v45
	v_and_b32_e32 v45, 0xffff0000, v45
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v80, 16, v80
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v82, v82, v80
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v120, 16, v46
	s_waitcnt lgkmcnt(36)
	v_lshlrev_b32_e32 v122, 16, v48
	v_lshlrev_b32_e32 v123, 16, v49
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v33, v82, v45 :: v_dual_and_b32 v46, 0xffff0000, v46
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v75, v75, v80
	v_mul_f32_e32 v76, v76, v80
	v_mul_f32_e32 v79, v79, v80
	v_mul_f32_e32 v83, v83, v80
	v_mul_f32_e32 v72, v72, v80
	v_mul_f32_e32 v73, v73, v80
	v_dual_mul_f32 v74, v74, v80 :: v_dual_lshlrev_b32 v121, 16, v47
	v_dual_mul_f32 v77, v77, v80 :: v_dual_lshlrev_b32 v124, 16, v50
	v_dual_mul_f32 v78, v78, v80 :: v_dual_lshlrev_b32 v125, 16, v51
	v_dual_mul_f32 v81, v81, v80 :: v_dual_and_b32 v50, 0xffff0000, v50
	v_dual_mul_f32 v84, v84, v80 :: v_dual_and_b32 v49, 0xffff0000, v49
	v_dual_mul_f32 v56, v56, v80 :: v_dual_and_b32 v51, 0xffff0000, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v57, v57, v80 :: v_dual_fmac_f32 v36, v79, v125
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v47, 0xffff0000, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v59, v59, v80
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v85, v88, v85, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v87, v92, v89, 0xc0c0004
	v_perm_b32 v88, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v89, v98, v93, 0xc0c0004
	v_perm_b32 v90, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v91, v99, v100, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v92, v101, v102, 0xc0c0004
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v40, v76, v122
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v58, v58, v80 :: v_dual_fmac_f32 v31, v83, v46
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v80, 16, v44
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v93, v106, v103, 0xc0c0004
	v_perm_b32 v94, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v95, v110, v107, 0xc0c0004
	v_perm_b32 v98, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v114, v111, 0xc0c0004
	v_perm_b32 v100, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v118, v115, 0xc0c0004
	v_perm_b32 v102, v117, v116, 0xc0c0004
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v42, v74, v120 :: v_dual_fmac_f32 v41, v75, v121
	v_dual_fmac_f32 v39, v77, v123 :: v_dual_and_b32 v44, 0xffff0000, v44
	v_dual_fmac_f32 v27, v58, v50 :: v_dual_and_b32 v48, 0xffff0000, v48
	v_dual_fmac_f32 v20, v72, v80 :: v_dual_fmac_f32 v43, v73, v119
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v75, v86, 16, v85
	v_lshl_or_b32 v74, v88, 16, v87
	v_lshl_or_b32 v73, v90, 16, v89
	v_lshl_or_b32 v72, v92, 16, v91
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v38, v78, v124
	v_fmac_f32_e32 v34, v81, v44
	v_fmac_f32_e32 v30, v84, v47
	v_dual_fmac_f32 v29, v56, v48 :: v_dual_fmac_f32 v28, v57, v49
	v_fmac_f32_e32 v26, v59, v51
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v79, v94, 16, v93
	v_lshl_or_b32 v78, v98, 16, v95
	v_lshl_or_b32 v77, v100, 16, v99
	v_lshl_or_b32 v76, v102, 16, v101
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[72:75], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[60:63], v[72:75], v[1:8] neg_lo:[1,1,0]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[76:79], v[44:51] neg_lo:[1,1,0]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[52:59], v[68:71], v[76:79], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v60, v44
	v_cvt_f32_i32_e32 v61, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v74, v58
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v70, v54
	v_cvt_f32_i32_e32 v71, v55
	v_cvt_f32_i32_e32 v72, v56
	v_cvt_f32_i32_e32 v73, v57
	v_cvt_f32_i32_e32 v75, v59
	v_cvt_f32_i32_e32 v62, v46
	v_cvt_f32_i32_e32 v63, v47
	v_cvt_f32_i32_e32 v64, v48
	v_cvt_f32_i32_e32 v65, v49
	v_cvt_f32_i32_e32 v66, v50
	v_cvt_f32_i32_e32 v67, v51
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v97
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v74, v74, v76
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v44, 16, v96
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v72, v72, v76
	ds_store_b32 v37, v44 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v17 offset:17920
	ds_load_b128 v[56:59], v17 offset:17936
	ds_load_b128 v[44:47], v17 offset:17408
	ds_load_b128 v[48:51], v17 offset:17424
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v29, v72, v56
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v71, v71, v76
	v_mul_f32_e32 v73, v73, v76
	v_mul_f32_e32 v60, v60, v76
	v_mul_f32_e32 v61, v61, v76
	v_mul_f32_e32 v62, v62, v76
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v30, v71, v55
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v67, v67, v76 :: v_dual_fmac_f32 v28, v73, v57
	v_mul_f32_e32 v69, v69, v76
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v63, v63, v76 :: v_dual_fmac_f32 v42, v62, v46
	v_mul_f32_e32 v64, v64, v76
	v_mul_f32_e32 v66, v66, v76
	v_mul_f32_e32 v68, v68, v76
	v_mul_f32_e32 v70, v70, v76
	v_mul_f32_e32 v75, v75, v76
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v36, v67, v51 :: v_dual_fmac_f32 v33, v69, v53
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v65, v65, v76 :: v_dual_fmac_f32 v38, v66, v50
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v20, v60, v44 :: v_dual_fmac_f32 v43, v61, v45
	v_dual_fmac_f32 v41, v63, v47 :: v_dual_fmac_f32 v40, v64, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v39, v65, v49
	v_dual_fmac_f32 v31, v70, v54 :: v_dual_fmac_f32 v34, v68, v52
	v_dual_fmac_f32 v27, v74, v58 :: v_dual_fmac_f32 v26, v75, v59
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, v38, v38 :: v_dual_max_f32 v8, v36, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v9, v34, v34 :: v_dual_max_f32 v12, v33, v33
	v_max_f32_e32 v13, v31, v31
	v_dual_max_f32 v1, v20, v20 :: v_dual_max_f32 v2, v43, v43
	v_dual_max_f32 v3, v42, v42 :: v_dual_max_f32 v4, v41, v41
	v_dual_max_f32 v5, v40, v40 :: v_dual_max_f32 v6, v39, v39
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v20, 0, v12
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v19, 0, v9
	v_dual_max_f32 v14, v27, v27 :: v_dual_max_f32 v9, v30, v30
	v_dual_max_f32 v12, v29, v29 :: v_dual_max_f32 v15, v26, v26
	v_max_f32_e32 v21, 0, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_max_f32 v13, v28, v28 :: v_dual_max_f32 v22, 0, v9
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v23, 0, v12 :: v_dual_mul_f32 v18, v1, v1
	v_dual_max_f32 v24, 0, v13 :: v_dual_max_f32 v25, 0, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v16, v3, v3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v26, 0, v15 :: v_dual_mul_f32 v17, v2, v2
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v12, v7, v7 :: v_dual_mul_f32 v13, v4, v4
	v_dual_mul_f32 v14, v6, v6 :: v_dual_mul_f32 v15, v5, v5
	v_dual_mul_f32 v9, v8, v8 :: v_dual_mul_f32 v6, v21, v21
	v_dual_mul_f32 v8, v19, v19 :: v_dual_mul_f32 v7, v20, v20
	v_dual_mul_f32 v4, v23, v23 :: v_dual_mul_f32 v5, v22, v22
	v_dual_mul_f32 v2, v25, v25 :: v_dual_mul_f32 v3, v24, v24
	v_mul_f32_e32 v1, v26, v26
.LBB0_4:                                ; %._crit_edge
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.h, 0
	v_mov_b16_e32 v20.l, v18.h
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v19.l, v17.h
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v20.h, v19.h
	v_mov_b16_e32 v21.h, v19.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v23, 1, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v19.l, v13.h
	v_mov_b16_e32 v22.l, v15.h
	v_mov_b16_e32 v22.h, v19.h
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v18, v18, v20, 0x7fff
	v_add3_u32 v17, v17, v23, 0x7fff
	v_and_b32_e32 v20, 1, v19
	v_mov_b16_e32 v19.l, v14.h
	v_add3_u32 v16, v16, v21, 0x7fff
	v_mov_b16_e32 v17.l, v18.h
	v_and_b32_e32 v18, 1, v22
	v_mov_b16_e32 v21.l, v12.h
	v_mov_b16_e32 v21.h, v19.h
	v_add3_u32 v13, v13, v20, 0x7fff
	v_and_b32_e32 v20, 1, v19
	v_add3_u32 v15, v15, v18, 0x7fff
	v_mov_b16_e32 v19.l, v9.h
	v_and_b32_e32 v18, 1, v21
	v_mov_b16_e32 v13.l, v16.h
	v_add3_u32 v14, v14, v20, 0x7fff
	v_mov_b16_e32 v14.l, v15.h
	v_and_b32_e32 v15, 1, v19
	v_mov_b16_e32 v16.l, v8.h
	v_mov_b16_e32 v16.h, v19.h
	v_mov_b16_e32 v19.l, v7.h
	v_add3_u32 v12, v12, v18, 0x7fff
	v_mov_b16_e32 v18.l, v6.h
	v_mov_b16_e32 v18.h, v19.h
	v_add3_u32 v9, v9, v15, 0x7fff
	v_and_b32_e32 v15, 1, v16
	v_and_b32_e32 v16, 1, v19
	v_mov_b16_e32 v19.l, v5.h
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v9.l, v12.h
	v_add3_u32 v8, v8, v15, 0x7fff
	v_mov_b16_e32 v15.l, v4.h
	v_and_b32_e32 v12, 1, v19
	v_add3_u32 v6, v6, v18, 0x7fff
	v_mov_b16_e32 v15.h, v19.h
	v_mov_b16_e32 v19.l, v3.h
	v_add3_u32 v7, v7, v16, 0x7fff
	v_add3_u32 v5, v5, v12, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	v_mov_b16_e32 v5.l, v6.h
	v_and_b32_e32 v6, 1, v15
	v_and_b32_e32 v8, 1, v19
	v_mov_b16_e32 v12.l, v2.h
	v_mov_b16_e32 v12.h, v19.h
	v_mov_b16_e32 v19.l, v1.h
	v_add3_u32 v4, v4, v6, 0x7fff
	v_add3_u32 v3, v3, v8, 0x7fff
	v_mov_b32_e32 v8, 0x7632
	v_and_b32_e32 v6, 1, v12
	v_and_b32_e32 v12, 1, v19
	v_cndmask_b32_e32 v0, 0x1054, v0, vcc_lo
	v_mov_b16_e32 v3.l, v4.h
	v_cndmask_b32_e32 v8, 0x3276, v8, vcc_lo
	v_add3_u32 v2, v2, v6, 0x7fff
	v_add3_u32 v1, v1, v12, 0x7fff
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v10, s23, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e32 v4, v17, v14, vcc_lo
	v_mov_b16_e32 v1.l, v2.h
	v_lshl_or_b32 v2, v8, 8, v8
	v_and_b32_e32 v0, 0x540054, v0
	v_cndmask_b32_e32 v12, v3, v7, vcc_lo
	v_cndmask_b32_e32 v3, v7, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v7, v1, v5 :: v_dual_and_b32 v2, 0x760076, v2
	v_lshl_or_b32 v0, v0, 4, v0
	v_cndmask_b32_e32 v8, v9, v13, vcc_lo
	v_cndmask_b32_e32 v9, v13, v9, vcc_lo
	v_cndmask_b32_e32 v1, v5, v1, vcc_lo
	v_lshl_or_b32 v2, v2, 4, v2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s29, s29, s23
	s_mov_b32 s0, 0x76543210
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v11, 1, v11
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v10, s29, s2, v10
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_cndmask_b32_e32 v6, v14, v17, vcc_lo
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 0x5040504, v0
	v_and_b32_e32 v14, 0x7060706, v2
	v_permlanex16_b32 v5, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v6, v13
	v_perm_b32 v1, v4, v6, v14
	v_perm_b32 v2, v5, v8, v13
	v_perm_b32 v3, v5, v8, v14
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v8, v10, v11, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v4, v9, v12, v13
	v_perm_b32 v5, v9, v12, v14
	v_perm_b32 v6, v15, v7, v13
	v_perm_b32 v7, v15, v7, v14
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v8, s[20:23], 0 offen offset:256
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_inst_pref_size 45
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 126
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5692
; TotalNumSgprs: 34
; NumVgprs: 126
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     126
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
