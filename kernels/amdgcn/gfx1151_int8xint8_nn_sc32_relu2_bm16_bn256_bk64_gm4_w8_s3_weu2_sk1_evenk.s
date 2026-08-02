	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v10, 0xf0, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v11, 15, v0
	v_mov_b32_e32 v4, 0
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s4
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	v_mov_b32_e32 v1, 0
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
	v_rcp_iflag_f32_e32 v3, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v3
	v_mov_b32_e32 v3, 0
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
	s_lshl_b32 s18, s2, 4
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s2, s4, 8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s6, 64
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 4, v10
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s6, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s5, 31
.Ltmp16:
	.loc	1 374 34 is_stmt 1              ; generate_amdgcn.py:374:34
	s_mul_i32 s7, s18, s5
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 26
	v_mul_lo_u32 v3, s5, v3
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s5, s1, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s6, s6, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s5, s5, 27
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s6, 6
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s1, s5
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_bfe_i32 v7, v0, 3, 1
	v_dual_mov_b32 v37, 0 :: v_dual_lshlrev_b32 v16, 1, v10
.Ltmp23:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v1, 3, v10
	v_lshlrev_b32_e32 v5, 1, v0
	v_bfe_i32 v8, v0, 6, 1
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
	v_lshlrev_b32_e32 v2, 1, v11
	v_dual_mov_b32 v38, 0 :: v_dual_lshlrev_b32 v15, 2, v0
	v_mov_b32_e32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v8, 0x90, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v12, v3, v2, s7
	v_bfe_i32 v3, v0, 2, 1
	s_mov_b32 s7, s4
	v_lshlrev_b32_e32 v9, 5, v0
	v_lshlrev_b32_e32 v13, 4, v0
	v_and_b32_e32 v7, 0x110, v7
	v_and_b32_e32 v3, 0x90, v3
	v_mul_lo_u32 v2, s19, v1
	v_and_b32_e32 v14, 0x60, v9
	v_and_b32_e32 v13, 0xe00, v13
	v_lshl_or_b32 v1, v11, 9, v1
	v_xor_b32_e32 v7, v3, v7
	v_and_or_b32 v3, 0x160, v9, v3
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v9, 32, v9
	v_mov_b32_e32 v39, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or3_b32 v7, v14, v13, v7
	v_lshrrev_b32_e32 v14, 6, v0
	v_mov_b32_e32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v17, 0x1c0, v15
	v_or_b32_e32 v13, s18, v11
	v_and_b32_e32 v14, 2, v14
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v4, 4, v11
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s1, s1, 5
	v_xor_b32_e32 v20, 0x110, v1
	v_xor_b32_e32 v22, 16, v3
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v18, 0, v14
	v_add_nc_u32_e32 v14, 0, v16
	v_xor_b32_e32 v24, 16, v7
	v_mul_lo_u32 v13, v13, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v28, v18, v17, v9
	v_add_nc_u32_e32 v18, 0, v1
	v_add3_u32 v29, v14, v16, v9
	v_mov_b32_e32 v16, 0
	v_and_b32_e32 v6, 0x17e, v5
	v_and_b32_e32 v26, 28, v5
.Ltmp25:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v9, v2, v4, s2
	v_add_nc_u32_e32 v23, 0, v3
	v_add_nc_u32_e32 v27, 0, v7
	v_xor_b32_e32 v6, v8, v6
	v_xor_b32_e32 v8, 0x90, v1
	v_or_b32_e32 v15, s2, v0
	v_add_nc_u32_e32 v21, 0, v20
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v25, 0, v22
	v_add_nc_u32_e32 v17, 0, v6
	v_add_nc_u32_e32 v19, 0, v8
	v_dual_mov_b32 v1, s4 :: v_dual_add_nc_u32 v34, 0, v24
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	v_add_nc_u32_e32 v36, v29, v26
	v_mov_b32_e32 v29, 0
	v_add_nc_u32_e32 v35, v28, v26
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v22, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s28, s19, 5
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s6, s5, 6
	v_mad_u64_u32 v[42:43], null, s6, s19, v[9:10]
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v43, s6, v12
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_or_b32 s5, s6, 32
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s6, s6, 5
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v58, s5, v12
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s7, s6, s19
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_u16 v66, v43, s[20:23], 0 offen
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v46, s19, v42
	v_add_nc_u32_e32 v50, s28, v42
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v59, v15, s7, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s6, s1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[42:45], v42, s[24:27], 0 offen
	buffer_load_b128 v[46:49], v46, s[24:27], 0 offen
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v54, s19, v50
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[50:53], v50, s[24:27], 0 offen
	buffer_load_b128 v[54:57], v54, s[24:27], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_u16 v67, v58, s[20:23], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v58, v13, s6, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s5, s19
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v69, 0x80000000, v59 :: v_dual_cndmask_b32 v68, 0x80000000, v58
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
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
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_store_b16 v17, v66 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v18, v42
	ds_store_b16_d16_hi v18, v42 offset:32
	ds_store_b16 v18, v43 offset:64
	ds_store_b16_d16_hi v18, v43 offset:96
	ds_store_b16 v19, v44
	ds_store_b16_d16_hi v19, v44 offset:32
	ds_store_b16 v19, v45 offset:64
	ds_store_b16_d16_hi v19, v45 offset:96
	ds_store_b16 v21, v46
	ds_store_b16_d16_hi v21, v46 offset:32
	ds_store_b16 v21, v47 offset:64
	ds_store_b16_d16_hi v21, v47 offset:96
	ds_store_b16 v18, v48 offset:384
	ds_store_b16_d16_hi v18, v48 offset:416
	ds_store_b16 v18, v49 offset:448
	ds_store_b16_d16_hi v18, v49 offset:480
	v_or_b16 v42.l, v58.l, v50.l
	v_or_b16 v42.h, v58.h, v50.h
	v_or_b16 v43.l, v59.l, v51.l
	v_or_b16 v43.h, v59.h, v51.h
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
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
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v17, v67 offset:16896
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v18, v42 offset:8192
	ds_store_b16_d16_hi v18, v42 offset:8224
	ds_store_b16 v18, v43 offset:8256
	ds_store_b16_d16_hi v18, v43 offset:8288
	ds_store_b16 v19, v44 offset:8192
	ds_store_b16_d16_hi v19, v44 offset:8224
	ds_store_b16 v19, v45 offset:8256
	ds_store_b16_d16_hi v19, v45 offset:8288
	ds_store_b16 v21, v46 offset:8192
	ds_store_b16_d16_hi v21, v46 offset:8224
	ds_store_b16 v21, v47 offset:8256
	ds_store_b16_d16_hi v21, v47 offset:8288
	ds_store_b16 v18, v48 offset:8576
	ds_store_b16_d16_hi v18, v48 offset:8608
	ds_store_b16 v18, v49 offset:8640
	ds_store_b16_d16_hi v18, v49 offset:8672
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v42, v69, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v78, v68, s[8:11], 0 offen
	v_add_lshl_u32 v43, v13, s5, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v44, v15, s6, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[58:61], v23 offset:16384
	ds_load_b128 v[62:65], v25 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[50:53], v27
	ds_load_b128 v[66:69], v27 offset:4096
	ds_load_b128 v[70:73], v34
	ds_load_b128 v[74:77], v34 offset:4096
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v35, v42 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_u16 v79, v44, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v80, v43, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[42:49], v[50:53], v[58:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[66:69], v[58:61], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[70:73], v[62:65], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[74:77], v[62:65], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v81, v42
	v_cvt_f32_i32_e32 v82, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v83, v44
	v_cvt_f32_i32_e32 v84, v45
	v_cvt_f32_i32_e32 v85, v46
	v_cvt_f32_i32_e32 v86, v47
	v_cvt_f32_i32_e32 v87, v48
	v_cvt_f32_i32_e32 v88, v49
	v_cvt_f32_i32_e32 v89, v50
	v_cvt_f32_i32_e32 v90, v51
	v_cvt_f32_i32_e32 v91, v52
	v_cvt_f32_i32_e32 v92, v53
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[42:45], v14 offset:17408
	ds_load_b128 v[46:49], v14 offset:17424
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[58:61], v23 offset:16896
	ds_load_b128 v[62:65], v25 offset:16896
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[50:53], v27 offset:8192
	ds_load_b128 v[66:69], v27 offset:12288
	ds_load_b128 v[70:73], v34 offset:8192
	ds_load_b128 v[74:77], v34 offset:12288
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v104, 0xffff0000, v42
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v97, 16, v43
	v_lshlrev_b32_e32 v99, 16, v45
	v_lshlrev_b32_e32 v102, 16, v48
	v_lshlrev_b32_e32 v103, 16, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v89, v89, v78 :: v_dual_and_b32 v110, 0xffff0000, v48
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v98, 16, v44
	v_lshlrev_b32_e32 v101, 16, v47
	v_and_b32_e32 v105, 0xffff0000, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v31, v89, v104 :: v_dual_mul_f32 v82, v82, v78
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v84, v84, v78
	v_mul_f32_e32 v85, v85, v78
	v_mul_f32_e32 v86, v86, v78
	v_dual_mul_f32 v87, v87, v78 :: v_dual_and_b32 v106, 0xffff0000, v44
	v_mul_f32_e32 v88, v88, v78
	v_mul_f32_e32 v90, v90, v78
	v_mul_f32_e32 v81, v81, v78
	v_mul_f32_e32 v83, v83, v78
	v_mul_f32_e32 v92, v92, v78
	v_dual_mul_f32 v94, v55, v78 :: v_dual_and_b32 v107, 0xffff0000, v45
	v_dual_mul_f32 v95, v56, v78 :: v_dual_fmac_f32 v30, v90, v105
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v109, 0xffff0000, v47
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v40, v83, v98 :: v_dual_and_b32 v111, 0xffff0000, v49
	v_dual_fmac_f32 v41, v82, v97 :: v_dual_lshlrev_b32 v96, 16, v42
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v91, v91, v78
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v39, v84, v99 :: v_dual_lshlrev_b32 v100, 16, v46
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v93, v54, v78
	v_mul_f32_e32 v78, v57, v78
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v33, v87, v102 :: v_dual_fmac_f32 v32, v88, v103
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_and_b32_e32 v108, 0xffff0000, v46
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[42:49], v[50:53], v[58:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[66:69], v[58:61], v[1:8] neg_lo:[1,1,0]
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v37, v86, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[42:49], v[70:73], v[62:65], v[42:49] neg_lo:[1,1,0]
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v28, v92, v107
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[50:57], v[74:77], v[62:65], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v58, v42
	v_cvt_f32_i32_e32 v65, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v50
	v_cvt_f32_i32_e32 v67, v51
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v59, v43
	v_cvt_f32_i32_e32 v60, v44
	v_cvt_f32_i32_e32 v61, v45
	v_cvt_f32_i32_e32 v62, v46
	v_cvt_f32_i32_e32 v63, v47
	v_cvt_f32_i32_e32 v64, v48
	v_cvt_f32_i32_e32 v70, v54
	v_cvt_f32_i32_e32 v71, v55
	v_cvt_f32_i32_e32 v72, v56
	v_cvt_f32_i32_e32 v73, v57
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v80
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v65, v65, v74 :: v_dual_lshlrev_b32 v42, 16, v79
	ds_store_b32 v36, v42 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v14 offset:17920
	ds_load_b128 v[54:57], v14 offset:17936
	ds_load_b128 v[42:45], v14 offset:17408
	ds_load_b128 v[46:49], v14 offset:17424
	v_mul_f32_e32 v66, v66, v74
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v31, v66, v50
	v_dual_fmac_f32 v24, v94, v109 :: v_dual_mul_f32 v61, v61, v74
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v64, v64, v74
	v_mul_f32_e32 v59, v59, v74
	v_mul_f32_e32 v60, v60, v74
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v20, v78, v111 :: v_dual_mul_f32 v63, v63, v74
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v39, v61, v45
	v_fmac_f32_e32 v38, v85, v100
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v33, v64, v48
	v_fmac_f32_e32 v26, v93, v108
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v58, v58, v74
	v_mul_f32_e32 v62, v62, v74
	v_dual_mul_f32 v67, v67, v74 :: v_dual_fmac_f32 v40, v60, v44
	v_mul_f32_e32 v68, v68, v74
	v_mul_f32_e32 v69, v69, v74
	v_mul_f32_e32 v70, v70, v74
	v_dual_mul_f32 v71, v71, v74 :: v_dual_fmac_f32 v32, v65, v49
	v_mul_f32_e32 v72, v72, v74
	v_mul_f32_e32 v73, v73, v74
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v41, v59, v43 :: v_dual_fmac_f32 v16, v81, v96
	v_fmac_f32_e32 v29, v91, v106
	v_fmac_f32_e32 v22, v95, v110
	v_dual_fmac_f32 v38, v62, v46 :: v_dual_fmac_f32 v37, v63, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, v58, v42
	v_dual_fmac_f32 v30, v67, v51 :: v_dual_fmac_f32 v29, v68, v52
	v_fmac_f32_e32 v28, v69, v53
	v_fmac_f32_e32 v26, v70, v54
	v_fmac_f32_e32 v24, v71, v55
	v_fmac_f32_e32 v22, v72, v56
	v_fmac_f32_e32 v20, v73, v57
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v1, v16, v16 :: v_dual_max_f32 v2, v41, v41
	v_dual_max_f32 v7, v33, v33 :: v_dual_max_f32 v8, v32, v32
	v_dual_max_f32 v9, v31, v31 :: v_dual_max_f32 v12, v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v13, v29, v29 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v3, v40, v40 :: v_dual_max_f32 v4, v39, v39
	v_dual_max_f32 v5, v38, v38 :: v_dual_max_f32 v6, v37, v37
	v_max_f32_e32 v7, 0, v7
	v_dual_max_f32 v19, 0, v9 :: v_dual_max_f32 v14, v22, v22
	v_max_f32_e32 v9, v28, v28
	v_dual_max_f32 v21, 0, v12 :: v_dual_max_f32 v12, v26, v26
	v_max_f32_e32 v23, 0, v13
	v_dual_max_f32 v15, v20, v20 :: v_dual_mul_f32 v18, v1, v1
	v_max_f32_e32 v13, v24, v24
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v22, 0, v12 :: v_dual_max_f32 v25, 0, v14
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v16, v3, v3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v26, 0, v15
	v_max_f32_e32 v24, 0, v13
	v_dual_max_f32 v20, 0, v9 :: v_dual_mul_f32 v17, v2, v2
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v12, v7, v7 :: v_dual_mul_f32 v13, v4, v4
	v_dual_mul_f32 v14, v6, v6 :: v_dual_mul_f32 v15, v5, v5
	v_dual_mul_f32 v9, v8, v8 :: v_dual_mul_f32 v6, v23, v23
	v_dual_mul_f32 v8, v19, v19 :: v_dual_mul_f32 v7, v21, v21
	v_dual_mul_f32 v4, v22, v22 :: v_dual_mul_f32 v5, v20, v20
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
	v_mul_lo_u32 v11, s19, v11
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
	s_mul_i32 s18, s18, s19
	s_mov_b32 s0, 0x76543210
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v10, 1, v10
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v11, s18, s2, v11
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
	v_add_lshl_u32 v8, v11, v10, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v4, v9, v12, v13
	v_perm_b32 v5, v9, v12, v14
	v_perm_b32 v6, v15, v7, v13
	v_perm_b32 v7, v15, v7, v14
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
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 29
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
		.amdhsa_inst_pref_size 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 112
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4580
; TotalNumSgprs: 31
; NumVgprs: 112
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 31
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     112
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
