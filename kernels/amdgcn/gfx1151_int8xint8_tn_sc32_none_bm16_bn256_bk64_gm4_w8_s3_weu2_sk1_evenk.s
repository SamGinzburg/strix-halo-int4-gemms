	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s5, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s8, s2
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v13, 0xf0, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s18, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	v_mov_b32_e32 v24, 0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s4
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v12, 15, v0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_xor_b32 s10, s2, s4
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
	s_mul_i32 s6, s6, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s8, s9, s7
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s6
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s8, s8, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
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
	s_mul_hi_u32 s4, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s4
	s_mul_hi_u32 s4, s6, s10
	s_xor_b32 s10, s2, s8
	s_mul_i32 s11, s4, s9
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s6, s9
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s4, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s10
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s4, s8
	s_sub_i32 s2, s2, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s6, s5, 63
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s28, s2, 4
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s2, s4, 8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s6, 64
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s6, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s5, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s5, s1, 31
.Ltmp18:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s5, s5, 27
.Ltmp20:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s6, s6, s0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s1, s5
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s6, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_mul_lo_u32 v2, s18, v2
	v_bfe_i32 v6, v0, 2, 1
	v_bfe_i32 v7, v0, 3, 1
	v_mov_b32_e32 v27, 0
	v_lshrrev_b32_e32 v10, 6, v0
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s1, s1, 5
	v_and_b32_e32 v6, 0x90, v6
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
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v4, 1, v0
	v_lshlrev_b32_e32 v5, 5, v0
	v_and_b32_e32 v7, 0x110, v7
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v1, 3, v13
	v_lshlrev_b32_e32 v14, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v8, 14, v4
	v_and_b32_e32 v9, 0x60, v5
	v_xor_b32_e32 v6, v6, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v23, 0 :: v_dual_and_b32 v14, 0x1c0, v14
	v_mov_b32_e32 v19, 0
	v_add3_u32 v25, v2, v8, s28
	v_lshlrev_b32_e32 v2, 4, v0
	v_lshl_or_b32 v8, v12, 9, v1
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v5, 32, v5
	v_mul_lo_u32 v1, s19, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v2, 0xe00, v2
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v3, 4, v12
	v_or3_b32 v2, v9, v2, v6
	v_or_b32_e32 v9, s28, v12
	v_xor_b32_e32 v7, 0x90, v8
	v_xor_b32_e32 v6, 0x110, v8
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v15, 28, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v30, v9, s1
	v_and_b32_e32 v9, 2, v10
	v_lshlrev_b32_e32 v10, 1, v13
	v_xor_b32_e32 v11, 16, v2
	v_mov_b32_e32 v22, 0
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v9, 0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v31, 0, v10
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v34, 0, v4
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v35, 0, v8
	v_add3_u32 v14, v9, v14, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v10, v31, v10, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v9, v1, v3, s2
	v_add_nc_u32_e32 v36, 0, v7
	v_add_nc_u32_e32 v37, 0, v6
	v_add_nc_u32_e32 v38, 0, v2
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v29, 0, v12
	v_or_b32_e32 v32, s2, v0
	v_lshl_add_u32 v33, s18, 5, v25
	v_dual_mov_b32 v2, s5 :: v_dual_add_nc_u32 v39, 0, v11
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_add_nc_u32 v40, v14, v15
	v_add_nc_u32_e32 v41, v10, v15
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
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
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s5, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b32 s5, s5, 6
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	v_mad_u64_u32 v[42:43], null, s5, s19, v[9:10]
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s6, s5, s18
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v43, s6, v25
	v_add_nc_u32_e32 v58, s6, v33
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s5, s19
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v46, s19, v42
	v_add_nc_u32_e32 v50, s29, v42
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_u16 v66, v43, s[20:23], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v59, v32, s6, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[42:45], v42, s[24:27], 0 offen
	buffer_load_b128 v[46:49], v46, s[24:27], 0 offen
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v54, s19, v50
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[50:53], v50, s[24:27], 0 offen
	buffer_load_b128 v[54:57], v54, s[24:27], 0 offen
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	buffer_load_u16 v67, v58, s[20:23], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v58, v30, s5, 1
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_or_b32 s5, s5, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v69, 0x80000000, v59, vcc_lo
	.loc	1 390 40 is_stmt 0              ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s5, s19
	.loc	1 387 34 is_stmt 1              ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v68, 0x80000000, v58, vcc_lo
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s4, s0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(3)
	v_perm_b32 v58, v46, v42, 0x5010400
	v_perm_b32 v46, v46, v42, 0x7030602
	v_perm_b32 v59, v47, v43, 0x5010400
	v_perm_b32 v47, v47, v43, 0x7030602
	v_perm_b32 v60, v48, v44, 0x5010400
	v_perm_b32 v48, v48, v44, 0x7030602
	v_perm_b32 v61, v49, v45, 0x5010400
	v_perm_b32 v62, v49, v45, 0x7030602
	v_and_b16 v42.l, 0xff, v58.l
	v_lshrrev_b32_e32 v63, 8, v58
	v_lshrrev_b32_e32 v64, 24, v58
	v_and_b16 v42.h, 0xff, v58.h
	v_and_b16 v43.l, 0xff, v46.l
	v_lshrrev_b32_e32 v58, 8, v46
	v_lshrrev_b32_e32 v65, 24, v46
	v_and_b16 v43.h, 0xff, v46.h
	v_and_b16 v44.l, 0xff, v59.l
	v_lshrrev_b32_e32 v70, 8, v59
	v_lshrrev_b32_e32 v71, 24, v59
	v_and_b16 v44.h, 0xff, v59.h
	v_and_b16 v45.l, 0xff, v47.l
	v_lshrrev_b32_e32 v59, 8, v47
	v_lshrrev_b32_e32 v72, 24, v47
	v_and_b16 v45.h, 0xff, v47.h
	v_and_b16 v46.l, 0xff, v60.l
	v_lshrrev_b32_e32 v73, 8, v60
	v_lshrrev_b32_e32 v74, 24, v60
	v_and_b16 v46.h, 0xff, v60.h
	v_and_b16 v47.l, 0xff, v48.l
	v_lshrrev_b32_e32 v60, 8, v48
	v_lshrrev_b32_e32 v75, 24, v48
	v_and_b16 v47.h, 0xff, v48.h
	v_and_b16 v48.l, 0xff, v61.l
	v_lshrrev_b32_e32 v76, 8, v61
	v_lshrrev_b32_e32 v77, 24, v61
	v_and_b16 v48.h, 0xff, v61.h
	v_and_b16 v49.l, 0xff, v62.l
	v_lshrrev_b32_e32 v61, 8, v62
	v_lshrrev_b32_e32 v78, 24, v62
	v_and_b16 v49.h, 0xff, v62.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v62, v54, v50, 0x5010400
	v_perm_b32 v79, v54, v50, 0x7030602
	v_perm_b32 v80, v55, v51, 0x5010400
	v_perm_b32 v81, v55, v51, 0x7030602
	v_perm_b32 v82, v56, v52, 0x5010400
	v_perm_b32 v83, v56, v52, 0x7030602
	v_perm_b32 v84, v57, v53, 0x5010400
	v_perm_b32 v85, v57, v53, 0x7030602
	v_lshlrev_b16 v50.l, 8, v63.l
	v_lshlrev_b16 v52.l, 8, v70.l
	v_lshrrev_b32_e32 v70, 8, v62
	v_lshlrev_b16 v50.h, 8, v64.l
	v_lshlrev_b16 v52.h, 8, v71.l
	v_lshrrev_b32_e32 v71, 24, v62
	v_lshlrev_b16 v51.l, 8, v58.l
	v_lshlrev_b16 v53.h, 8, v72.l
	v_lshrrev_b32_e32 v72, 8, v79
	v_lshlrev_b16 v51.h, 8, v65.l
	v_lshlrev_b16 v54.l, 8, v73.l
	v_lshrrev_b32_e32 v73, 24, v79
	v_lshlrev_b16 v53.l, 8, v59.l
	v_lshlrev_b16 v54.h, 8, v74.l
	v_lshlrev_b16 v55.l, 8, v60.l
	v_lshlrev_b16 v55.h, 8, v75.l
	v_lshlrev_b16 v56.l, 8, v76.l
	v_lshlrev_b16 v56.h, 8, v77.l
	v_lshlrev_b16 v57.l, 8, v61.l
	v_lshlrev_b16 v57.h, 8, v78.l
	v_and_b16 v58.l, 0xff, v62.l
	v_and_b16 v58.h, 0xff, v62.h
	v_and_b16 v59.l, 0xff, v79.l
	v_and_b16 v59.h, 0xff, v79.h
	v_and_b16 v60.l, 0xff, v80.l
	v_lshrrev_b32_e32 v74, 8, v80
	v_lshrrev_b32_e32 v75, 24, v80
	v_and_b16 v60.h, 0xff, v80.h
	v_and_b16 v61.l, 0xff, v81.l
	v_lshrrev_b32_e32 v76, 8, v81
	v_lshrrev_b32_e32 v77, 24, v81
	v_and_b16 v61.h, 0xff, v81.h
	v_and_b16 v62.l, 0xff, v82.l
	v_lshrrev_b32_e32 v78, 8, v82
	v_lshrrev_b32_e32 v79, 24, v82
	v_and_b16 v62.h, 0xff, v82.h
	v_and_b16 v63.l, 0xff, v83.l
	v_lshrrev_b32_e32 v80, 8, v83
	v_lshrrev_b32_e32 v81, 24, v83
	v_and_b16 v63.h, 0xff, v83.h
	v_and_b16 v64.l, 0xff, v84.l
	v_lshrrev_b32_e32 v82, 8, v84
	v_lshrrev_b32_e32 v83, 24, v84
	v_and_b16 v64.h, 0xff, v84.h
	v_lshrrev_b32_e32 v84, 8, v85
	v_lshrrev_b32_e32 v86, 24, v85
	v_or_b16 v42.l, v42.l, v50.l
	v_lshlrev_b16 v50.l, 8, v70.l
	v_or_b16 v42.h, v42.h, v50.h
	v_lshlrev_b16 v50.h, 8, v71.l
	v_or_b16 v43.l, v43.l, v51.l
	v_lshlrev_b16 v51.l, 8, v72.l
	v_or_b16 v43.h, v43.h, v51.h
	v_lshlrev_b16 v51.h, 8, v73.l
	v_and_b16 v65.l, 0xff, v85.l
	v_and_b16 v65.h, 0xff, v85.h
	v_or_b16 v44.l, v44.l, v52.l
	v_or_b16 v44.h, v44.h, v52.h
	v_or_b16 v45.l, v45.l, v53.l
	v_or_b16 v45.h, v45.h, v53.h
	v_or_b16 v46.l, v46.l, v54.l
	v_or_b16 v46.h, v46.h, v54.h
	v_or_b16 v47.l, v47.l, v55.l
	v_or_b16 v47.h, v47.h, v55.h
	v_or_b16 v48.l, v48.l, v56.l
	v_or_b16 v48.h, v48.h, v56.h
	v_or_b16 v49.l, v49.l, v57.l
	v_or_b16 v49.h, v49.h, v57.h
	v_lshlrev_b16 v52.l, 8, v74.l
	v_lshlrev_b16 v52.h, 8, v75.l
	v_lshlrev_b16 v53.l, 8, v76.l
	v_lshlrev_b16 v53.h, 8, v77.l
	v_lshlrev_b16 v54.l, 8, v78.l
	v_lshlrev_b16 v54.h, 8, v79.l
	v_lshlrev_b16 v55.l, 8, v80.l
	v_lshlrev_b16 v55.h, 8, v81.l
	v_lshlrev_b16 v56.l, 8, v82.l
	v_lshlrev_b16 v56.h, 8, v83.l
	v_lshlrev_b16 v57.l, 8, v84.l
	v_lshlrev_b16 v57.h, 8, v86.l
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_store_b16 v34, v66 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v35, v42
	ds_store_b16_d16_hi v35, v42 offset:32
	ds_store_b16 v35, v43 offset:64
	ds_store_b16_d16_hi v35, v43 offset:96
	ds_store_b16 v36, v44
	ds_store_b16_d16_hi v36, v44 offset:32
	ds_store_b16 v36, v45 offset:64
	ds_store_b16_d16_hi v36, v45 offset:96
	ds_store_b16 v37, v46
	ds_store_b16_d16_hi v37, v46 offset:32
	ds_store_b16 v37, v47 offset:64
	ds_store_b16_d16_hi v37, v47 offset:96
	ds_store_b16 v35, v48 offset:384
	ds_store_b16_d16_hi v35, v48 offset:416
	ds_store_b16 v35, v49 offset:448
	ds_store_b16_d16_hi v35, v49 offset:480
	v_or_b16 v42.l, v58.l, v50.l
	v_or_b16 v42.h, v58.h, v50.h
	v_or_b16 v43.l, v59.l, v51.l
	v_or_b16 v43.h, v59.h, v51.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v44.l, v60.l, v52.l
	v_or_b16 v44.h, v60.h, v52.h
	v_or_b16 v45.l, v61.l, v53.l
	v_or_b16 v45.h, v61.h, v53.h
	v_or_b16 v46.l, v62.l, v54.l
	v_or_b16 v46.h, v62.h, v54.h
	v_or_b16 v47.l, v63.l, v55.l
	v_or_b16 v47.h, v63.h, v55.h
	v_or_b16 v48.l, v64.l, v56.l
	v_or_b16 v48.h, v64.h, v56.h
	v_or_b16 v49.l, v65.l, v57.l
	v_or_b16 v49.h, v65.h, v57.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v34, v67 offset:16896
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v35, v42 offset:8192
	ds_store_b16_d16_hi v35, v42 offset:8224
	ds_store_b16 v35, v43 offset:8256
	ds_store_b16_d16_hi v35, v43 offset:8288
	ds_store_b16 v36, v44 offset:8192
	ds_store_b16_d16_hi v36, v44 offset:8224
	ds_store_b16 v36, v45 offset:8256
	ds_store_b16_d16_hi v36, v45 offset:8288
	ds_store_b16 v37, v46 offset:8192
	ds_store_b16_d16_hi v37, v46 offset:8224
	ds_store_b16 v37, v47 offset:8256
	ds_store_b16_d16_hi v37, v47 offset:8288
	ds_store_b16 v35, v48 offset:8576
	ds_store_b16_d16_hi v35, v48 offset:8608
	ds_store_b16 v35, v49 offset:8640
	ds_store_b16_d16_hi v35, v49 offset:8672
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v42, v69, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v78, v68, s[8:11], 0 offen
	v_add_lshl_u32 v43, v30, s5, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v44, v32, s6, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[50:53], v38
	ds_load_b128 v[58:61], v38 offset:4096
	ds_load_b128 v[62:65], v39
	ds_load_b128 v[66:69], v39 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v45, v29 offset:16592
	ds_load_u8 v46, v29 offset:16624
	ds_load_u8 v47, v29 offset:16608
	ds_load_u8 v48, v29 offset:16576
	ds_load_u8 v49, v29 offset:16528
	ds_load_u8 v54, v29 offset:16560
	ds_load_u8 v55, v29 offset:16544
	ds_load_u8 v56, v29 offset:16512
	ds_load_u8 v57, v29 offset:16464
	ds_load_u8 v70, v29 offset:16496
	ds_load_u8 v71, v29 offset:16480
	ds_load_u8 v72, v29 offset:16448
	ds_load_u8 v73, v29 offset:16384
	ds_load_u8 v74, v29 offset:16400
	ds_load_u8 v75, v29 offset:16416
	ds_load_u8 v76, v29 offset:16432
	ds_load_u8 v77, v29 offset:16848
	ds_load_u8 v79, v29 offset:16880
	ds_load_u8 v80, v29 offset:16864
	ds_load_u8 v81, v29 offset:16832
	ds_load_u8 v82, v29 offset:16784
	ds_load_u8 v83, v29 offset:16816
	ds_load_u8 v84, v29 offset:16800
	ds_load_u8 v85, v29 offset:16768
	ds_load_u8 v86, v29 offset:16720
	ds_load_u8 v87, v29 offset:16752
	ds_load_u8 v88, v29 offset:16736
	ds_load_u8 v89, v29 offset:16704
	ds_load_u8 v90, v29 offset:16656
	ds_load_u8 v91, v29 offset:16688
	ds_load_u8 v92, v29 offset:16672
	ds_load_u8 v93, v29 offset:16640
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v40, v42 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_u16 v94, v44, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v95, v43, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v42, v48, v45, 0xc0c0004
	v_perm_b32 v43, v47, v46, 0xc0c0004
	v_perm_b32 v44, v56, v49, 0xc0c0004
	v_perm_b32 v45, v55, v54, 0xc0c0004
	v_perm_b32 v46, v72, v57, 0xc0c0004
	v_perm_b32 v47, v71, v70, 0xc0c0004
	v_perm_b32 v48, v73, v74, 0xc0c0004
	v_perm_b32 v49, v75, v76, 0xc0c0004
	v_perm_b32 v54, v81, v77, 0xc0c0004
	v_perm_b32 v55, v80, v79, 0xc0c0004
	v_perm_b32 v56, v85, v82, 0xc0c0004
	v_perm_b32 v57, v84, v83, 0xc0c0004
	v_perm_b32 v74, v89, v86, 0xc0c0004
	v_perm_b32 v75, v88, v87, 0xc0c0004
	v_perm_b32 v79, v93, v90, 0xc0c0004
	v_perm_b32 v80, v92, v91, 0xc0c0004
	v_lshl_or_b32 v73, v43, 16, v42
	v_lshl_or_b32 v72, v45, 16, v44
	v_lshl_or_b32 v71, v47, 16, v46
	v_lshl_or_b32 v70, v49, 16, v48
	v_lshl_or_b32 v77, v55, 16, v54
	v_lshl_or_b32 v76, v57, 16, v56
	v_lshl_or_b32 v75, v75, 16, v74
	v_lshl_or_b32 v74, v80, 16, v79
	v_wmma_i32_16x16x16_iu8 v[42:49], v[50:53], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[70:73], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v109, v29 offset:17232
	ds_load_u8 v110, v29 offset:17264
	ds_load_u8 v111, v29 offset:17248
	ds_load_u8 v112, v29 offset:17216
	ds_load_u8 v113, v29 offset:17168
	ds_load_u8 v114, v29 offset:17200
	ds_load_u8 v115, v29 offset:17184
	ds_load_u8 v116, v29 offset:17152
	v_wmma_i32_16x16x16_iu8 v[42:49], v[62:65], v[74:77], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[66:69], v[74:77], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v70, v43
	v_cvt_f32_i32_e32 v71, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v72, v45
	v_cvt_f32_i32_e32 v73, v46
	v_cvt_f32_i32_e32 v74, v47
	v_cvt_f32_i32_e32 v75, v48
	v_cvt_f32_i32_e32 v76, v49
	v_cvt_f32_i32_e32 v77, v50
	v_cvt_f32_i32_e32 v79, v51
	v_cvt_f32_i32_e32 v80, v52
	v_cvt_f32_i32_e32 v81, v53
	v_cvt_f32_i32_e32 v82, v42
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[42:45], v31 offset:17408
	ds_load_b128 v[46:49], v31 offset:17424
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[50:53], v38 offset:8192
	ds_load_b128 v[58:61], v38 offset:12288
	ds_load_b128 v[62:65], v39 offset:8192
	ds_load_b128 v[66:69], v39 offset:12288
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v83, v29 offset:17104
	ds_load_u8 v84, v29 offset:17136
	ds_load_u8 v85, v29 offset:17120
	ds_load_u8 v86, v29 offset:17088
	ds_load_u8 v87, v29 offset:17040
	ds_load_u8 v88, v29 offset:17072
	ds_load_u8 v89, v29 offset:17056
	ds_load_u8 v90, v29 offset:17024
	ds_load_u8 v91, v29 offset:16976
	ds_load_u8 v92, v29 offset:17008
	ds_load_u8 v93, v29 offset:16992
	ds_load_u8 v96, v29 offset:16960
	ds_load_u8 v97, v29 offset:16896
	ds_load_u8 v98, v29 offset:16912
	ds_load_u8 v99, v29 offset:16928
	ds_load_u8 v100, v29 offset:16944
	ds_load_u8 v101, v29 offset:17360
	ds_load_u8 v102, v29 offset:17392
	ds_load_u8 v103, v29 offset:17376
	ds_load_u8 v104, v29 offset:17344
	ds_load_u8 v105, v29 offset:17296
	ds_load_u8 v106, v29 offset:17328
	ds_load_u8 v107, v29 offset:17312
	ds_load_u8 v108, v29 offset:17280
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(28)
	v_lshlrev_b32_e32 v128, 16, v46
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v120, v78, v73 :: v_dual_lshlrev_b32 v125, 16, v43
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v130, 16, v48
	v_lshlrev_b32_e32 v126, 16, v44
	v_lshlrev_b32_e32 v127, 16, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v23, v120, v128
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v117, v78, v70
	v_mul_f32_e32 v118, v78, v71
	v_mul_f32_e32 v119, v78, v72
	v_mul_f32_e32 v121, v78, v74
	v_mul_f32_e32 v122, v78, v75
	v_mul_f32_e32 v123, v78, v76
	v_dual_mul_f32 v124, v78, v77 :: v_dual_lshlrev_b32 v129, 16, v47
	v_mul_f32_e32 v55, v78, v55
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v70, v86, v83, 0xc0c0004
	v_perm_b32 v71, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v72, v90, v87, 0xc0c0004
	v_perm_b32 v74, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v96, v91, 0xc0c0004
	v_perm_b32 v76, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v77, v97, v98, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v83, v99, v100, 0xc0c0004
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v79, v78, v79
	v_dual_mul_f32 v80, v78, v80 :: v_dual_lshlrev_b32 v131, 16, v49
	v_mul_f32_e32 v81, v78, v81
	v_dual_mul_f32 v54, v78, v54 :: v_dual_and_b32 v43, 0xffff0000, v43
	v_dual_mul_f32 v56, v78, v56 :: v_dual_and_b32 v45, 0xffff0000, v45
	v_mul_f32_e32 v57, v78, v57
	v_dual_mul_f32 v78, v82, v78 :: v_dual_and_b32 v47, 0xffff0000, v47
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v82, 16, v42
	v_and_b32_e32 v42, 0xffff0000, v42
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v27, v118, v126 :: v_dual_and_b32 v44, 0xffff0000, v44
	v_dual_fmac_f32 v21, v122, v130 :: v_dual_and_b32 v48, 0xffff0000, v48
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v46, 0xffff0000, v46
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v24, v78, v82 :: v_dual_and_b32 v49, 0xffff0000, v49
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v84, v104, v101, 0xc0c0004
	v_perm_b32 v85, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v108, v105, 0xc0c0004
	v_perm_b32 v87, v107, v106, 0xc0c0004
	v_perm_b32 v88, v112, v109, 0xc0c0004
	v_perm_b32 v89, v111, v110, 0xc0c0004
	v_perm_b32 v90, v116, v113, 0xc0c0004
	v_perm_b32 v91, v115, v114, 0xc0c0004
	v_lshl_or_b32 v73, v71, 16, v70
	v_lshl_or_b32 v72, v74, 16, v72
	v_lshl_or_b32 v71, v76, 16, v75
	v_lshl_or_b32 v70, v83, 16, v77
	v_lshl_or_b32 v77, v85, 16, v84
	v_lshl_or_b32 v76, v87, 16, v86
	v_lshl_or_b32 v75, v89, 16, v88
	v_lshl_or_b32 v74, v91, 16, v90
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v28, v117, v125 :: v_dual_fmac_f32 v19, v124, v42
	v_dual_fmac_f32 v18, v79, v43 :: v_dual_fmac_f32 v17, v80, v44
	v_fmac_f32_e32 v16, v81, v45
	v_dual_fmac_f32 v14, v55, v47 :: v_dual_fmac_f32 v11, v56, v48
	v_dual_fmac_f32 v26, v119, v127 :: v_dual_fmac_f32 v15, v54, v46
	v_fmac_f32_e32 v10, v57, v49
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[42:49], v[50:53], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[70:73], v[1:8] neg_lo:[1,1,0]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[42:49], v[62:65], v[74:77], v[42:49] neg_lo:[1,1,0]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[50:57], v[66:69], v[74:77], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v73, v42
	v_cvt_f32_i32_e32 v58, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v69, v54
	v_cvt_f32_i32_e32 v59, v44
	v_cvt_f32_i32_e32 v60, v45
	v_cvt_f32_i32_e32 v61, v46
	v_cvt_f32_i32_e32 v62, v47
	v_cvt_f32_i32_e32 v63, v48
	v_cvt_f32_i32_e32 v64, v49
	v_cvt_f32_i32_e32 v65, v50
	v_cvt_f32_i32_e32 v66, v51
	v_cvt_f32_i32_e32 v67, v52
	v_cvt_f32_i32_e32 v68, v53
	v_cvt_f32_i32_e32 v70, v55
	v_cvt_f32_i32_e32 v71, v56
	v_cvt_f32_i32_e32 v72, v57
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v95
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v42, 16, v94
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v22, v121, v129 :: v_dual_mul_f32 v59, v74, v59
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v69, v74, v69
	ds_store_b32 v41, v42 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v31 offset:17408
	ds_load_b128 v[46:49], v31 offset:17424
	ds_load_b128 v[50:53], v31 offset:17920
	ds_load_b128 v[54:57], v31 offset:17936
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(3)
	v_fmac_f32_e32 v27, v59, v44
	v_dual_fmac_f32 v20, v123, v131 :: v_dual_mul_f32 v73, v73, v74
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v61, v74, v61
	v_mul_f32_e32 v60, v74, v60
	v_mul_f32_e32 v63, v74, v63
	v_mul_f32_e32 v58, v74, v58
	v_mul_f32_e32 v65, v74, v65
	v_mul_f32_e32 v64, v74, v64
	v_mul_f32_e32 v67, v74, v67
	v_mul_f32_e32 v62, v74, v62
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v68, v74, v68 :: v_dual_fmac_f32 v15, v69, v54
	v_mul_f32_e32 v70, v74, v70
	v_dual_mul_f32 v71, v74, v71 :: v_dual_fmac_f32 v24, v73, v42
	v_mul_f32_e32 v66, v74, v66
	v_dual_mul_f32 v72, v74, v72 :: v_dual_fmac_f32 v23, v61, v46
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v26, v60, v45 :: v_dual_fmac_f32 v21, v63, v48
	v_dual_fmac_f32 v28, v58, v43 :: v_dual_fmac_f32 v19, v65, v50
	v_dual_fmac_f32 v20, v64, v49 :: v_dual_fmac_f32 v17, v67, v52
	v_fmac_f32_e32 v22, v62, v47
	v_fmac_f32_e32 v16, v68, v53
	v_dual_fmac_f32 v14, v70, v55 :: v_dual_fmac_f32 v11, v71, v56
	v_fmac_f32_e32 v18, v66, v51
	v_fmac_f32_e32 v10, v72, v57
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v1, v24, 16, 1
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v2, s19, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_bfe_u32 v3, v28, 16, 1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s28, s28, s19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v1, v24, v1, 0x7fff
	v_bfe_u32 v4, v27, 16, 1
	v_bfe_u32 v5, v26, 16, 1
	v_cmp_o_f32_e64 s0, v27, v27
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v9, s28, s2, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v2, v28, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v3, v27, v4, 0x7fff
	v_add3_u32 v4, v26, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v26, v26
	v_bfe_u32 v5, v22, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_bfe_u32 v2, v23, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s0
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s1
	v_bfe_u32 v4, v21, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_add3_u32 v2, v23, v2, 0x7fff
	v_add3_u32 v5, v22, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_bfe_u32 v6, v20, 16, 1
	v_add3_u32 v4, v21, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v21, v21
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s0
	v_bfe_u32 v5, v19, 16, 1
	v_bfe_u32 v7, v18, 16, 1
	v_add3_u32 v6, v20, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s1
	v_add3_u32 v5, v19, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v19, v19
	v_add3_u32 v7, v18, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v18, v18
	v_cndmask_b16 v4.h, 0x7fff, v6.h, vcc_lo
	v_bfe_u32 v6, v17, 16, 1
	v_bfe_u32 v12, v16, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v15, 16, 1
	v_add3_u32 v6, v17, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_add3_u32 v12, v16, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v16, v16
	v_add3_u32 v7, v15, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v15, v15
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v6.h, 0x7fff, v12.h, s0
	v_bfe_u32 v12, v11, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cmp_o_f32_e64 s0, v11, v11
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v8, 1, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v13, v14, 16, 1
	v_add3_u32 v12, v11, v12, 0x7fff
	v_mov_b32_e32 v11, 0x7632
	v_cmp_eq_u32_e64 s1, 0, v0
	v_mov_b32_e32 v0, 0x5410
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_bfe_u32 v14, v10, 16, 1
	v_cndmask_b32_e64 v11, 0x3276, v11, s1
	v_cndmask_b32_e64 v0, 0x1054, v0, s1
	v_cmp_o_f32_e64 s2, v10, v10
	v_cndmask_b16 v7.h, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v14, v10, v14, 0x7fff
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v0, v0, 8, v0
	v_cndmask_b32_e64 v10, v2, v1, s1
	v_cndmask_b32_e64 v1, v1, v2, s1
	v_cndmask_b32_e64 v13, v4, v3, s1
	v_cndmask_b32_e64 v2, v3, v4, s1
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v3, 0x760076, v11
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s0
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s2
	v_cndmask_b32_e64 v11, v7, v5, s1
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v3, v3, 4, v3
	v_cndmask_b32_e64 v4, v5, v7, s1
	v_cndmask_b32_e64 v5, v6, v12, s1
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v7, v12, v6, s1
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 0x5040504, v0
	v_and_b32_e32 v12, 0x7060706, v3
	v_permlanex16_b32 v3, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v10, v6
	v_perm_b32 v1, v1, v10, v12
	v_perm_b32 v2, v3, v13, v6
	v_perm_b32 v3, v3, v13, v12
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v8, v9, v8, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v4, v14, v11, v6
	v_perm_b32 v5, v14, v11, v12
	v_perm_b32 v6, v15, v7, v6
	v_perm_b32 v7, v15, v7, v12
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v8, s[16:19], 0 offen offset:256
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_inst_pref_size 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 132
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5620
; TotalNumSgprs: 32
; NumVgprs: 132
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     132
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
