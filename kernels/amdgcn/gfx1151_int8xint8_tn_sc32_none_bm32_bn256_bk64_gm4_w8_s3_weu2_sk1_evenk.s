	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s18, 31
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
	s_lshr_b32 s11, s11, 27
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
	s_ashr_i32 s9, s9, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s4
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v23, 0xf0, v0
	v_and_b32_e32 v24, 15, v0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
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
	s_lshl_b32 s28, s2, 5
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
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 3, v0
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
	v_mul_lo_u32 v3, s18, v3
	v_bfe_i32 v5, v0, 2, 1
	v_bfe_i32 v6, v0, 3, 1
.Ltmp23:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 3, v23
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s1, s1, 5
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v1, 4, v24
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
.Ltmp25:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v4, 2, v0
	v_and_b32_e32 v5, 0x90, v5
	v_and_b32_e32 v6, 0x110, v6
	v_mul_lo_u32 v8, s19, v2
	v_lshl_or_b32 v2, v24, 9, v2
	v_and_b32_e32 v7, 28, v4
	v_lshlrev_b32_e32 v14, 1, v0
	v_xor_b32_e32 v5, v5, v6
	v_or_b32_e32 v6, s28, v24
	v_mov_b32_e32 v42, 0
	v_add3_u32 v44, v3, v7, s28
	v_lshlrev_b32_e32 v3, 5, v0
	v_dual_mov_b32 v38, 0 :: v_dual_lshlrev_b32 v7, 4, v0
	v_mul_lo_u32 v46, v6, s1
	v_xor_b32_e32 v10, 0x90, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 0x60, v3
	v_and_b32_e32 v7, 0xe00, v7
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v3, 32, v3
	v_mov_b32_e32 v34, 0
	v_xor_b32_e32 v11, 0x110, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or3_b32 v5, v9, v7, v5
	v_or_b32_e32 v7, 16, v6
	v_lshrrev_b32_e32 v9, 6, v0
	v_or_b32_e32 v12, 0x3f0, v0
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v51, 0, v4
	v_mul_lo_u32 v47, v7, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v6, 2, v9
	v_lshlrev_b32_e32 v7, 1, v23
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v9, 0x1c0, v4
	v_xor_b32_e32 v13, 16, v5
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v6, 0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v48, 0, v7
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v52, 0, v2
	v_add3_u32 v15, v6, v9, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v16, v48, v7, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v9, v8, v1, s2
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v56, 0, v5
	v_dual_mov_b32 v1, s4 :: v_dual_and_b32 v14, 28, v14
	v_mov_b32_e32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v45, 0, v24
	v_or_b32_e32 v49, s2, v0
	v_lshl_add_u32 v50, s18, 5, v44
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v53, 0, v10
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v54, 0, v11
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v55, 0, v12
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v57, 0, v13
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v58, v15, v14
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v59, v16, v14
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v11, 0
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
	v_mad_u64_u32 v[60:61], null, s5, s19, v[9:10]
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s6, s5, s18
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s5, s5, 5
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v61, s6, v44
	v_add_nc_u32_e32 v77, s6, v50
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s5, s19
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v65, s19, v60
	v_add_nc_u32_e32 v69, s29, v60
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b32 v85, v61, s[20:23], 0 offen
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[61:64], v60, s[24:27], 0 offen
	buffer_load_b128 v[65:68], v65, s[24:27], 0 offen
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v60, s19, v69
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[69:72], v69, s[24:27], 0 offen
	buffer_load_b128 v[73:76], v60, s[24:27], 0 offen
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	buffer_load_b32 v86, v77, s[20:23], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v60, v46, s5, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v77, v49, s6, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v87, 0x80000000, v77
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(3)
	v_perm_b32 v77, v65, v61, 0x5010400
	v_perm_b32 v65, v65, v61, 0x7030602
	v_perm_b32 v78, v66, v62, 0x5010400
	v_perm_b32 v66, v66, v62, 0x7030602
	v_perm_b32 v79, v67, v63, 0x5010400
	v_perm_b32 v67, v67, v63, 0x7030602
	v_perm_b32 v80, v68, v64, 0x5010400
	v_perm_b32 v81, v68, v64, 0x7030602
	v_and_b16 v61.l, 0xff, v77.l
	v_lshrrev_b32_e32 v82, 8, v77
	v_lshrrev_b32_e32 v83, 24, v77
	v_and_b16 v61.h, 0xff, v77.h
	v_and_b16 v62.l, 0xff, v65.l
	v_lshrrev_b32_e32 v77, 8, v65
	v_lshrrev_b32_e32 v84, 24, v65
	v_and_b16 v62.h, 0xff, v65.h
	v_and_b16 v63.l, 0xff, v78.l
	v_lshrrev_b32_e32 v88, 8, v78
	v_lshrrev_b32_e32 v89, 24, v78
	v_and_b16 v63.h, 0xff, v78.h
	v_and_b16 v64.l, 0xff, v66.l
	v_lshrrev_b32_e32 v78, 8, v66
	v_lshrrev_b32_e32 v90, 24, v66
	v_and_b16 v64.h, 0xff, v66.h
	v_and_b16 v65.l, 0xff, v79.l
	v_lshrrev_b32_e32 v91, 8, v79
	v_lshrrev_b32_e32 v92, 24, v79
	v_and_b16 v65.h, 0xff, v79.h
	v_and_b16 v66.l, 0xff, v67.l
	v_lshrrev_b32_e32 v79, 8, v67
	v_lshrrev_b32_e32 v93, 24, v67
	v_and_b16 v66.h, 0xff, v67.h
	v_and_b16 v67.l, 0xff, v80.l
	v_lshrrev_b32_e32 v94, 8, v80
	v_lshrrev_b32_e32 v95, 24, v80
	v_and_b16 v67.h, 0xff, v80.h
	v_and_b16 v68.l, 0xff, v81.l
	v_lshrrev_b32_e32 v80, 8, v81
	v_lshrrev_b32_e32 v96, 24, v81
	v_and_b16 v68.h, 0xff, v81.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v81, v73, v69, 0x5010400
	v_perm_b32 v97, v73, v69, 0x7030602
	v_perm_b32 v98, v74, v70, 0x5010400
	v_perm_b32 v99, v74, v70, 0x7030602
	v_perm_b32 v100, v75, v71, 0x5010400
	v_perm_b32 v101, v75, v71, 0x7030602
	v_perm_b32 v102, v76, v72, 0x5010400
	v_perm_b32 v103, v76, v72, 0x7030602
	v_lshlrev_b16 v69.l, 8, v82.l
	v_lshlrev_b16 v71.l, 8, v88.l
	v_lshrrev_b32_e32 v88, 8, v81
	v_lshlrev_b16 v69.h, 8, v83.l
	v_lshlrev_b16 v71.h, 8, v89.l
	v_lshrrev_b32_e32 v89, 24, v81
	v_lshlrev_b16 v70.l, 8, v77.l
	v_lshlrev_b16 v72.h, 8, v90.l
	v_lshrrev_b32_e32 v90, 8, v97
	v_lshlrev_b16 v70.h, 8, v84.l
	v_lshlrev_b16 v73.l, 8, v91.l
	v_lshrrev_b32_e32 v91, 24, v97
	v_lshlrev_b16 v72.l, 8, v78.l
	v_lshlrev_b16 v73.h, 8, v92.l
	v_lshlrev_b16 v74.l, 8, v79.l
	v_lshlrev_b16 v74.h, 8, v93.l
	v_lshlrev_b16 v75.l, 8, v94.l
	v_lshlrev_b16 v75.h, 8, v95.l
	v_lshlrev_b16 v76.l, 8, v80.l
	v_lshlrev_b16 v76.h, 8, v96.l
	v_and_b16 v77.l, 0xff, v81.l
	v_and_b16 v77.h, 0xff, v81.h
	v_and_b16 v78.l, 0xff, v97.l
	v_and_b16 v78.h, 0xff, v97.h
	v_and_b16 v79.l, 0xff, v98.l
	v_lshrrev_b32_e32 v92, 8, v98
	v_lshrrev_b32_e32 v93, 24, v98
	v_and_b16 v79.h, 0xff, v98.h
	v_and_b16 v80.l, 0xff, v99.l
	v_lshrrev_b32_e32 v94, 8, v99
	v_lshrrev_b32_e32 v95, 24, v99
	v_and_b16 v80.h, 0xff, v99.h
	v_and_b16 v81.l, 0xff, v100.l
	v_lshrrev_b32_e32 v96, 8, v100
	v_lshrrev_b32_e32 v97, 24, v100
	v_and_b16 v81.h, 0xff, v100.h
	v_and_b16 v82.l, 0xff, v101.l
	v_lshrrev_b32_e32 v98, 8, v101
	v_lshrrev_b32_e32 v99, 24, v101
	v_and_b16 v82.h, 0xff, v101.h
	v_and_b16 v83.l, 0xff, v102.l
	v_lshrrev_b32_e32 v100, 8, v102
	v_lshrrev_b32_e32 v101, 24, v102
	v_and_b16 v83.h, 0xff, v102.h
	v_lshrrev_b32_e32 v102, 8, v103
	v_lshrrev_b32_e32 v104, 24, v103
	v_or_b16 v61.l, v61.l, v69.l
	v_lshlrev_b16 v69.l, 8, v88.l
	v_or_b16 v61.h, v61.h, v69.h
	v_lshlrev_b16 v69.h, 8, v89.l
	v_or_b16 v62.l, v62.l, v70.l
	v_lshlrev_b16 v70.l, 8, v90.l
	v_or_b16 v62.h, v62.h, v70.h
	v_lshlrev_b16 v70.h, 8, v91.l
	v_and_b16 v84.l, 0xff, v103.l
	v_and_b16 v84.h, 0xff, v103.h
	v_or_b16 v63.l, v63.l, v71.l
	v_or_b16 v63.h, v63.h, v71.h
	v_or_b16 v64.l, v64.l, v72.l
	v_or_b16 v64.h, v64.h, v72.h
	v_or_b16 v65.l, v65.l, v73.l
	v_or_b16 v65.h, v65.h, v73.h
	v_or_b16 v66.l, v66.l, v74.l
	v_or_b16 v66.h, v66.h, v74.h
	v_or_b16 v67.l, v67.l, v75.l
	v_or_b16 v67.h, v67.h, v75.h
	v_or_b16 v68.l, v68.l, v76.l
	v_or_b16 v68.h, v68.h, v76.h
	v_lshlrev_b16 v71.l, 8, v92.l
	v_lshlrev_b16 v71.h, 8, v93.l
	v_lshlrev_b16 v72.l, 8, v94.l
	v_lshlrev_b16 v72.h, 8, v95.l
	v_lshlrev_b16 v73.l, 8, v96.l
	v_lshlrev_b16 v73.h, 8, v97.l
	v_lshlrev_b16 v74.l, 8, v98.l
	v_lshlrev_b16 v74.h, 8, v99.l
	v_lshlrev_b16 v75.l, 8, v100.l
	v_lshlrev_b16 v75.h, 8, v101.l
	v_lshlrev_b16 v76.l, 8, v102.l
	v_lshlrev_b16 v76.h, 8, v104.l
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_store_b32 v51, v85 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v52, v61
	ds_store_b16_d16_hi v52, v61 offset:32
	ds_store_b16 v52, v62 offset:64
	ds_store_b16_d16_hi v52, v62 offset:96
	ds_store_b16 v53, v63
	ds_store_b16_d16_hi v53, v63 offset:32
	ds_store_b16 v53, v64 offset:64
	ds_store_b16_d16_hi v53, v64 offset:96
	ds_store_b16 v54, v65
	ds_store_b16_d16_hi v54, v65 offset:32
	ds_store_b16 v54, v66 offset:64
	ds_store_b16_d16_hi v54, v66 offset:96
	ds_store_b16 v52, v67 offset:384
	ds_store_b16_d16_hi v52, v67 offset:416
	ds_store_b16 v52, v68 offset:448
	ds_store_b16_d16_hi v52, v68 offset:480
	v_or_b16 v61.l, v77.l, v69.l
	v_or_b16 v61.h, v77.h, v69.h
	v_or_b16 v62.l, v78.l, v70.l
	v_or_b16 v62.h, v78.h, v70.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v63.l, v79.l, v71.l
	v_or_b16 v63.h, v79.h, v71.h
	v_or_b16 v64.l, v80.l, v72.l
	v_or_b16 v64.h, v80.h, v72.h
	v_or_b16 v65.l, v81.l, v73.l
	v_or_b16 v65.h, v81.h, v73.h
	v_or_b16 v66.l, v82.l, v74.l
	v_or_b16 v66.h, v82.h, v74.h
	v_or_b16 v67.l, v83.l, v75.l
	v_or_b16 v67.h, v83.h, v75.h
	v_or_b16 v68.l, v84.l, v76.l
	v_or_b16 v68.h, v84.h, v76.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v51, v86 offset:17408
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v52, v61 offset:8192
	ds_store_b16_d16_hi v52, v61 offset:8224
	ds_store_b16 v52, v62 offset:8256
	ds_store_b16_d16_hi v52, v62 offset:8288
	ds_store_b16 v53, v63 offset:8192
	ds_store_b16_d16_hi v53, v63 offset:8224
	ds_store_b16 v53, v64 offset:8256
	ds_store_b16_d16_hi v53, v64 offset:8288
	ds_store_b16 v54, v65 offset:8192
	ds_store_b16_d16_hi v54, v65 offset:8224
	ds_store_b16 v54, v66 offset:8256
	ds_store_b16_d16_hi v54, v66 offset:8288
	ds_store_b16 v52, v67 offset:8576
	ds_store_b16_d16_hi v52, v67 offset:8608
	ds_store_b16 v52, v68 offset:8640
	ds_store_b16_d16_hi v52, v68 offset:8672
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v62, v47, s5, 1
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_or_b32 s5, s5, 1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v64, v47, s5, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s5, s1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_barrier
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v119, 0x80000000, v64, vcc_lo
	s_clause 0x1
	buffer_load_u16 v121, v60, s[8:11], 0 offen
	buffer_load_u16 v122, v62, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v61, v87, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v63, v46, s5, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s5, s5, s19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v65, v49, s5, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v118, 0x80000000, v63 :: v_dual_lshlrev_b32 v121, 16, v121
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v120, 0x80000000, v65, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[86:89], v56
	ds_load_b128 v[94:97], v56 offset:4096
	ds_load_b128 v[98:101], v57
	ds_load_b128 v[102:105], v57 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v60, v45 offset:16480
	ds_load_u8 v62, v45 offset:16448
	ds_load_u8 v63, v45 offset:16384
	ds_load_u8 v64, v45 offset:16400
	ds_load_u8 v65, v45 offset:16416
	ds_load_u8 v66, v45 offset:16496
	ds_load_u8 v67, v45 offset:16464
	ds_load_u8 v68, v45 offset:16432
	ds_load_u8 v69, v45 offset:17312
	ds_load_u8 v70, v45 offset:17280
	ds_load_u8 v71, v45 offset:17376
	ds_load_u8 v72, v45 offset:17344
	ds_load_u8 v73, v45 offset:16800
	ds_load_u8 v74, v45 offset:16768
	ds_load_u8 v75, v45 offset:16864
	ds_load_u8 v76, v45 offset:16832
	ds_load_u8 v77, v45 offset:16880
	ds_load_u8 v78, v45 offset:16848
	ds_load_u8 v79, v45 offset:16816
	ds_load_u8 v80, v45 offset:16784
	ds_load_u8 v81, v45 offset:16672
	ds_load_u8 v82, v45 offset:16640
	ds_load_u8 v83, v45 offset:16736
	ds_load_u8 v84, v45 offset:16704
	ds_load_u8 v85, v45 offset:16752
	ds_load_u8 v90, v45 offset:16720
	ds_load_u8 v91, v45 offset:16688
	ds_load_u8 v92, v45 offset:16656
	ds_load_u8 v93, v45 offset:16544
	ds_load_u8 v106, v45 offset:16512
	ds_load_u8 v107, v45 offset:16608
	ds_load_u8 v108, v45 offset:16576
	ds_load_u8 v109, v45 offset:16624
	ds_load_u8 v110, v45 offset:16592
	ds_load_u8 v111, v45 offset:16560
	ds_load_u8 v112, v45 offset:16528
	ds_load_u8 v113, v45 offset:17184
	ds_load_u8 v114, v45 offset:17152
	ds_load_u8 v115, v45 offset:17248
	ds_load_u8 v116, v45 offset:17216
	ds_load_u8 v117, v45 offset:17264
	ds_load_u8 v123, v45 offset:17232
	ds_load_u8 v124, v45 offset:17200
	ds_load_u8 v125, v45 offset:17168
	ds_load_u8 v126, v45 offset:17056
	ds_load_u8 v127, v45 offset:17024
	ds_load_u8 v128, v45 offset:17120
	ds_load_u8 v129, v45 offset:17088
	ds_load_u8 v130, v45 offset:17136
	ds_load_u8 v131, v45 offset:17104
	ds_load_u8 v132, v45 offset:17072
	ds_load_u8 v133, v45 offset:17040
	ds_load_u8 v134, v45 offset:16928
	ds_load_u8 v135, v45 offset:16896
	ds_load_u8 v136, v45 offset:16992
	ds_load_u8 v137, v45 offset:16960
	ds_load_u8 v138, v45 offset:17008
	ds_load_u8 v139, v45 offset:16976
	ds_load_u8 v140, v45 offset:16944
	ds_load_u8 v141, v45 offset:16912
	ds_load_u8 v142, v55 offset:16384
	ds_load_u8 v143, v45 offset:17360
	ds_load_u8 v144, v45 offset:17328
	ds_load_u8 v145, v45 offset:17296
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v75, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v76, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v82, v106, v93, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v83, v108, v107, 0xc0c0004
	v_perm_b32 v60, v62, v60, 0xc0c0004
	v_perm_b32 v62, v63, v65, 0xc0c0004
	v_perm_b32 v63, v70, v69, 0xc0c0004
	v_perm_b32 v65, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v69, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v70, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v71, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v72, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v84, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v93, v137, v136, 0xc0c0004
	v_perm_b32 v113, v80, v79, 0xc0c0004
	v_perm_b32 v77, v78, v77, 0xc0c0004
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_perm_b32 v64, v64, v68, 0xc0c0004
	v_perm_b32 v67, v125, v124, 0xc0c0004
	v_perm_b32 v68, v123, v117, 0xc0c0004
	v_lshl_or_b32 v81, v74, 16, v73
	v_lshl_or_b32 v80, v76, 16, v75
	v_lshl_or_b32 v79, v83, 16, v82
	v_lshl_or_b32 v78, v60, 16, v62
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v85, v90, v85, 0xc0c0004
	v_perm_b32 v90, v112, v111, 0xc0c0004
	v_perm_b32 v92, v110, v109, 0xc0c0004
	v_lshl_or_b32 v109, v65, 16, v63
	v_lshl_or_b32 v108, v70, 16, v69
	v_lshl_or_b32 v107, v72, 16, v71
	v_lshl_or_b32 v106, v93, 16, v84
	v_lshl_or_b32 v110, v66, 16, v64
	v_lshl_or_b32 v116, v68, 16, v67
	v_wmma_i32_16x16x16_iu8 v[62:69], v[86:89], v[78:81], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v114, v133, v132, 0xc0c0004
	v_perm_b32 v115, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v117, v141, v140, 0xc0c0004
	v_perm_b32 v123, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v145, v144, 0xc0c0004
	v_perm_b32 v125, v143, v142, 0xc0c0004
	v_lshl_or_b32 v113, v77, 16, v113
	v_lshl_or_b32 v112, v85, 16, v91
	v_lshl_or_b32 v111, v92, 16, v90
	v_wmma_i32_16x16x16_iu8 v[70:77], v[94:97], v[78:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[98:101], v[106:109], v[62:69] neg_lo:[1,1,0]
	v_lshl_or_b32 v115, v115, 16, v114
	v_lshl_or_b32 v114, v123, 16, v117
	v_lshl_or_b32 v117, v125, 16, v124
	v_wmma_i32_16x16x16_iu8 v[78:85], v[86:89], v[110:113], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[94:97], v[110:113], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[102:105], v[106:109], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v106, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[98:101], v[114:117], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[102:105], v[114:117], v[86:93] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v58, v61 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v187, v121, v106
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v116, v120, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v117, v118, s[8:11], 0 offen
	buffer_load_u16 v118, v119, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v104, v63
	v_cvt_f32_i32_e32 v105, v64
	v_cvt_f32_i32_e32 v107, v66
	v_cvt_f32_i32_e32 v108, v67
	v_cvt_f32_i32_e32 v113, v92
	v_cvt_f32_i32_e32 v114, v93
	v_cvt_f32_i32_e32 v115, v62
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[60:63], v48 offset:18432
	ds_load_b128 v[64:67], v48 offset:18448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[92:95], v56 offset:12288
	ds_load_b128 v[96:99], v57 offset:8192
	ds_load_b128 v[100:103], v57 offset:12288
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v119, v45 offset:17504
	ds_load_u8 v120, v45 offset:17472
	ds_load_u8 v123, v45 offset:17408
	ds_load_u8 v124, v45 offset:17424
	ds_load_u8 v125, v45 offset:17440
	ds_load_u8 v126, v45 offset:17520
	ds_load_u8 v127, v45 offset:17488
	ds_load_u8 v128, v45 offset:17456
	ds_load_u8 v129, v45 offset:17824
	ds_load_u8 v130, v45 offset:17792
	ds_load_u8 v131, v45 offset:17888
	ds_load_u8 v132, v45 offset:17856
	ds_load_u8 v133, v45 offset:17904
	ds_load_u8 v134, v45 offset:17872
	ds_load_u8 v135, v45 offset:17840
	ds_load_u8 v136, v45 offset:17808
	ds_load_u8 v137, v45 offset:17696
	ds_load_u8 v138, v45 offset:17664
	ds_load_u8 v139, v45 offset:17760
	ds_load_u8 v140, v45 offset:17728
	ds_load_u8 v141, v45 offset:17776
	ds_load_u8 v142, v45 offset:17744
	ds_load_u8 v143, v45 offset:17712
	ds_load_u8 v144, v45 offset:17680
	ds_load_u8 v145, v45 offset:17568
	ds_load_u8 v146, v45 offset:17536
	ds_load_u8 v147, v45 offset:17632
	ds_load_u8 v148, v45 offset:17600
	ds_load_u8 v149, v45 offset:17648
	ds_load_u8 v150, v45 offset:17616
	ds_load_u8 v151, v45 offset:17584
	ds_load_u8 v152, v45 offset:17552
	ds_load_u8 v153, v45 offset:18208
	ds_load_u8 v154, v45 offset:18176
	ds_load_u8 v155, v45 offset:18272
	ds_load_u8 v156, v45 offset:18240
	ds_load_u8 v157, v45 offset:18288
	ds_load_u8 v158, v45 offset:18256
	ds_load_u8 v159, v45 offset:18224
	ds_load_u8 v160, v45 offset:18192
	ds_load_u8 v161, v45 offset:18080
	ds_load_u8 v162, v45 offset:18048
	ds_load_u8 v163, v45 offset:18144
	ds_load_u8 v164, v45 offset:18112
	ds_load_u8 v165, v45 offset:18160
	ds_load_u8 v166, v45 offset:18128
	ds_load_u8 v167, v45 offset:18096
	ds_load_u8 v168, v45 offset:18064
	ds_load_u8 v169, v45 offset:17952
	ds_load_u8 v170, v45 offset:17920
	ds_load_u8 v171, v45 offset:18016
	ds_load_u8 v172, v45 offset:17984
	ds_load_u8 v173, v45 offset:18032
	ds_load_u8 v174, v45 offset:18000
	ds_load_u8 v175, v45 offset:17968
	ds_load_u8 v176, v45 offset:17936
	ds_load_u8 v177, v45 offset:18336
	ds_load_u8 v178, v45 offset:18304
	ds_load_u8 v179, v45 offset:18400
	ds_load_u8 v180, v45 offset:18368
	ds_load_u8 v181, v45 offset:18384
	ds_load_u8 v182, v45 offset:18352
	ds_load_u8 v183, v45 offset:18320
	v_cvt_f32_i32_e32 v109, v84
	v_cvt_f32_i32_e32 v110, v85
	v_cvt_f32_i32_e32 v111, v86
	v_cvt_f32_i32_e32 v112, v87
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[84:87], v56 offset:8192
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v184, v55 offset:17408
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v189, v121, v108 :: v_dual_lshlrev_b32 v122, 16, v122
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v185, v121, v104
	v_mul_f32_e32 v186, v121, v105
	v_mul_f32_e32 v188, v121, v107
	v_dual_mul_f32 v69, v121, v69 :: v_dual_mul_f32 v192, v122, v79
	v_dual_mul_f32 v71, v121, v71 :: v_dual_mul_f32 v80, v122, v80
	v_dual_mul_f32 v72, v121, v72 :: v_dual_mul_f32 v81, v122, v81
	v_dual_mul_f32 v73, v121, v73 :: v_dual_mul_f32 v82, v122, v82
	v_dual_mul_f32 v75, v121, v75 :: v_dual_mul_f32 v194, v122, v110
	v_dual_mul_f32 v190, v121, v76 :: v_dual_mul_f32 v83, v122, v83
	v_dual_mul_f32 v191, v121, v77 :: v_dual_mul_f32 v196, v122, v112
	s_waitcnt lgkmcnt(62)
	v_dual_mul_f32 v193, v122, v109 :: v_dual_lshlrev_b32 v202, 16, v63
	v_dual_mul_f32 v195, v122, v111 :: v_dual_lshlrev_b32 v200, 16, v61
	v_dual_mul_f32 v88, v122, v88 :: v_dual_lshlrev_b32 v201, 16, v62
	v_dual_mul_f32 v89, v122, v89 :: v_dual_lshlrev_b32 v206, 16, v67
	v_dual_mul_f32 v90, v122, v90 :: v_dual_lshlrev_b32 v199, 16, v60
	v_dual_mul_f32 v91, v122, v91 :: v_dual_lshlrev_b32 v204, 16, v65
	v_dual_mul_f32 v197, v122, v113 :: v_dual_and_b32 v60, 0xffff0000, v60
	v_dual_mul_f32 v198, v122, v114 :: v_dual_lshlrev_b32 v203, 16, v64
	v_dual_mul_f32 v122, v78, v122 :: v_dual_and_b32 v61, 0xffff0000, v61
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v76, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(53)
	v_perm_b32 v77, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v78, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v104, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v105, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v106, v148, v147, 0xc0c0004
	v_perm_b32 v107, v120, v119, 0xc0c0004
	v_perm_b32 v108, v123, v125, 0xc0c0004
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v68, v121, v68
	v_mul_f32_e32 v70, v121, v70
	v_dual_mul_f32 v74, v121, v74 :: v_dual_mul_f32 v121, v115, v121
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v205, 16, v66
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v43, v185, v200 :: v_dual_and_b32 v62, 0xffff0000, v62
	v_dual_fmac_f32 v42, v186, v201 :: v_dual_and_b32 v63, 0xffff0000, v63
	v_dual_fmac_f32 v41, v187, v202 :: v_dual_and_b32 v64, 0xffff0000, v64
	v_dual_fmac_f32 v38, v189, v204 :: v_dual_and_b32 v65, 0xffff0000, v65
	v_dual_fmac_f32 v39, v188, v203 :: v_dual_and_b32 v66, 0xffff0000, v66
	v_dual_fmac_f32 v36, v69, v206 :: v_dual_and_b32 v67, 0xffff0000, v67
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v109, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v110, v180, v179, 0xc0c0004
	v_perm_b32 v111, v154, v153, 0xc0c0004
	v_perm_b32 v112, v156, v155, 0xc0c0004
	v_perm_b32 v113, v162, v161, 0xc0c0004
	v_perm_b32 v114, v164, v163, 0xc0c0004
	v_perm_b32 v115, v170, v169, 0xc0c0004
	v_perm_b32 v119, v172, v171, 0xc0c0004
	v_lshl_or_b32 v79, v77, 16, v76
	v_lshl_or_b32 v78, v104, 16, v78
	v_lshl_or_b32 v77, v106, 16, v105
	v_lshl_or_b32 v76, v107, 16, v108
	v_perm_b32 v120, v136, v135, 0xc0c0004
	v_perm_b32 v123, v134, v133, 0xc0c0004
	v_perm_b32 v125, v144, v143, 0xc0c0004
	v_perm_b32 v129, v142, v141, 0xc0c0004
	v_perm_b32 v130, v152, v151, 0xc0c0004
	v_perm_b32 v131, v150, v149, 0xc0c0004
	v_perm_b32 v126, v127, v126, 0xc0c0004
	v_perm_b32 v124, v124, v128, 0xc0c0004
	v_lshl_or_b32 v107, v110, 16, v109
	v_lshl_or_b32 v106, v112, 16, v111
	v_lshl_or_b32 v105, v114, 16, v113
	v_lshl_or_b32 v104, v119, 16, v115
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v40, v121, v199 :: v_dual_fmac_f32 v37, v68, v205
	v_dual_fmac_f32 v32, v73, v63 :: v_dual_fmac_f32 v35, v70, v60
	v_dual_fmac_f32 v34, v71, v61 :: v_dual_fmac_f32 v33, v72, v62
	v_dual_fmac_f32 v30, v75, v65 :: v_dual_fmac_f32 v31, v74, v64
	v_dual_fmac_f32 v28, v191, v67 :: v_dual_fmac_f32 v29, v190, v66
	v_dual_fmac_f32 v26, v192, v200 :: v_dual_fmac_f32 v21, v82, v203
	v_dual_fmac_f32 v16, v196, v61 :: v_dual_fmac_f32 v17, v195, v60
	v_dual_fmac_f32 v14, v89, v63 :: v_dual_fmac_f32 v15, v88, v62
	v_dual_fmac_f32 v12, v91, v65 :: v_dual_fmac_f32 v13, v90, v64
	v_dual_fmac_f32 v11, v197, v66 :: v_dual_fmac_f32 v10, v198, v67
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[84:87], v[76:79], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v127, v160, v159, 0xc0c0004
	v_perm_b32 v128, v158, v157, 0xc0c0004
	v_perm_b32 v132, v168, v167, 0xc0c0004
	v_perm_b32 v133, v166, v165, 0xc0c0004
	v_perm_b32 v134, v176, v175, 0xc0c0004
	v_perm_b32 v135, v174, v173, 0xc0c0004
	v_perm_b32 v136, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v181, v184, 0xc0c0004
	v_lshl_or_b32 v111, v123, 16, v120
	v_lshl_or_b32 v110, v129, 16, v125
	v_lshl_or_b32 v109, v131, 16, v130
	v_lshl_or_b32 v108, v126, 16, v124
	v_wmma_i32_16x16x16_iu8 v[68:75], v[92:95], v[76:79], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[96:99], v[104:107], v[60:67] neg_lo:[1,1,0]
	v_lshl_or_b32 v114, v128, 16, v127
	v_lshl_or_b32 v113, v133, 16, v132
	v_lshl_or_b32 v112, v135, 16, v134
	v_lshl_or_b32 v115, v137, 16, v136
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v27, v122, v199 :: v_dual_fmac_f32 v22, v81, v202
	v_dual_fmac_f32 v25, v80, v201 :: v_dual_fmac_f32 v20, v83, v204
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[108:111], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[92:95], v[108:111], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[100:103], v[104:107], v[68:75] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v93, v62
	v_cvt_f32_i32_e32 v107, v60
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[76:83], v[96:99], v[112:115], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[100:103], v[112:115], v[84:91] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v92, v61
	v_cvt_f32_i32_e32 v94, v63
	v_cvt_f32_i32_e32 v95, v64
	v_cvt_f32_i32_e32 v96, v65
	v_cvt_f32_i32_e32 v97, v66
	v_cvt_f32_i32_e32 v98, v67
	v_cvt_f32_i32_e32 v99, v68
	v_cvt_f32_i32_e32 v100, v69
	v_cvt_f32_i32_e32 v101, v70
	v_cvt_f32_i32_e32 v102, v71
	v_cvt_f32_i32_e32 v103, v72
	v_cvt_f32_i32_e32 v104, v73
	v_cvt_f32_i32_e32 v105, v74
	v_cvt_f32_i32_e32 v106, v75
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
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v19, v193, v205 :: v_dual_fmac_f32 v18, v194, v206
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v108, 16, v117
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v60, 16, v116
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v92, v108, v92 :: v_dual_lshlrev_b32 v109, 16, v118
	v_mul_f32_e32 v93, v108, v93
	ds_store_b32 v59, v60 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v48 offset:18432
	ds_load_b128 v[64:67], v48 offset:18448
	ds_load_b128 v[68:71], v48 offset:18944
	ds_load_b128 v[72:75], v48 offset:18960
	v_dual_mul_f32 v107, v107, v108 :: v_dual_mul_f32 v94, v108, v94
	v_dual_mul_f32 v95, v108, v95 :: v_dual_mul_f32 v78, v109, v78
	v_dual_mul_f32 v96, v108, v96 :: v_dual_mul_f32 v77, v109, v77
	v_dual_mul_f32 v97, v108, v97 :: v_dual_mul_f32 v80, v109, v80
	v_dual_mul_f32 v98, v108, v98 :: v_dual_mul_f32 v79, v109, v79
	v_dual_mul_f32 v99, v108, v99 :: v_dual_mul_f32 v82, v109, v82
	v_dual_mul_f32 v100, v108, v100 :: v_dual_mul_f32 v81, v109, v81
	v_dual_mul_f32 v101, v108, v101 :: v_dual_mul_f32 v84, v109, v84
	v_dual_mul_f32 v102, v108, v102 :: v_dual_mul_f32 v83, v109, v83
	v_dual_mul_f32 v103, v108, v103 :: v_dual_mul_f32 v86, v109, v86
	v_dual_mul_f32 v104, v108, v104 :: v_dual_mul_f32 v85, v109, v85
	v_dual_mul_f32 v105, v108, v105 :: v_dual_mul_f32 v88, v109, v88
	v_dual_mul_f32 v106, v108, v106 :: v_dual_mul_f32 v87, v109, v87
	v_dual_mul_f32 v76, v76, v109 :: v_dual_mul_f32 v91, v109, v91
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v89, v109, v89 :: v_dual_fmac_f32 v40, v107, v60
	v_dual_mul_f32 v90, v109, v90 :: v_dual_fmac_f32 v43, v92, v61
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v42, v93, v62 :: v_dual_fmac_f32 v41, v94, v63
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v39, v95, v64 :: v_dual_fmac_f32 v38, v96, v65
	v_dual_fmac_f32 v37, v97, v66 :: v_dual_fmac_f32 v36, v98, v67
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v35, v99, v68 :: v_dual_fmac_f32 v34, v100, v69
	v_dual_fmac_f32 v33, v101, v70 :: v_dual_fmac_f32 v32, v102, v71
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v31, v103, v72 :: v_dual_fmac_f32 v30, v104, v73
	v_dual_fmac_f32 v29, v105, v74 :: v_dual_fmac_f32 v28, v106, v75
	v_dual_fmac_f32 v27, v76, v60 :: v_dual_fmac_f32 v26, v77, v61
	v_dual_fmac_f32 v25, v78, v62 :: v_dual_fmac_f32 v22, v79, v63
	v_dual_fmac_f32 v21, v80, v64 :: v_dual_fmac_f32 v20, v81, v65
	v_dual_fmac_f32 v19, v82, v66 :: v_dual_fmac_f32 v18, v83, v67
	v_dual_fmac_f32 v17, v84, v68 :: v_dual_fmac_f32 v16, v85, v69
	v_dual_fmac_f32 v15, v86, v70 :: v_dual_fmac_f32 v14, v87, v71
	v_dual_fmac_f32 v13, v88, v72 :: v_dual_fmac_f32 v12, v89, v73
	v_dual_fmac_f32 v11, v90, v74 :: v_dual_fmac_f32 v10, v91, v75
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v1, v40, 16, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 1, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_bfe_u32 v3, v43, 16, 1
	v_bfe_u32 v4, v42, 16, 1
	v_add3_u32 v1, v40, v1, 0x7fff
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_mul_i32 s28, s28, s19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v23, s28, s2, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v2, v41, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v3, v43, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_add3_u32 v4, v42, v4, 0x7fff
	v_add3_u32 v2, v41, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v41, v41
	v_bfe_u32 v5, v37, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v39, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_cmp_o_f32_e64 s0, v38, v38
	v_add3_u32 v3, v39, v3, 0x7fff
	v_bfe_u32 v6, v36, 16, 1
	v_add3_u32 v4, v38, v4, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	v_add3_u32 v5, v37, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v37, v37
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s0
	v_bfe_u32 v4, v35, 16, 1
	v_bfe_u32 v7, v34, 16, 1
	v_add3_u32 v6, v36, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s1
	v_add3_u32 v4, v35, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v35, v35
	v_add3_u32 v7, v34, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v34, v34
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_bfe_u32 v6, v33, 16, 1
	v_bfe_u32 v8, v32, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v31, 16, 1
	v_add3_u32 v6, v33, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v8, v32, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v32, v32
	v_bfe_u32 v9, v30, 16, 1
	v_add3_u32 v7, v31, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v31, v31
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s0
	v_bfe_u32 v8, v29, 16, 1
	v_bfe_u32 v31, v28, 16, 1
	v_add3_u32 v9, v30, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_add3_u32 v8, v29, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v29, v29
	v_add3_u32 v29, v28, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v28, v28
	v_cndmask_b16 v7.h, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v27, 16, 1
	v_bfe_u32 v28, v26, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v29.h, s1
	v_bfe_u32 v29, v25, 16, 1
	v_add3_u32 v9, v27, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_add3_u32 v27, v26, v28, 0x7fff
	v_cmp_o_f32_e64 s0, v26, v26
	v_add3_u32 v26, v25, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v25, v25
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v25, v22, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v27.h, s0
	v_bfe_u32 v27, v21, 16, 1
	v_bfe_u32 v28, v20, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v25, v22, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v21, v21
	v_add3_u32 v22, v21, v27, 0x7fff
	v_add3_u32 v21, v20, v28, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s1
	v_cmp_o_f32_e64 s1, v20, v20
	v_bfe_u32 v20, v19, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s0
	v_bfe_u32 v22, v18, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v25.h, vcc_lo
	v_bfe_u32 v25, v17, 16, 1
	v_add3_u32 v20, v19, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v19, v18, v22, 0x7fff
	v_cmp_o_f32_e64 s0, v18, v18
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s1
	v_add3_u32 v18, v17, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v16, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v15, 16, 1
	v_bfe_u32 v22, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v20, v16, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v15, v15
	v_add3_u32 v16, v15, v19, 0x7fff
	v_add3_u32 v15, v14, v22, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s1
	v_cmp_o_f32_e64 s1, v14, v14
	v_bfe_u32 v14, v13, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s0
	v_bfe_u32 v16, v12, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v19, v11, 16, 1
	v_add3_u32 v14, v13, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_add3_u32 v13, v12, v16, 0x7fff
	v_bfe_u32 v16, v10, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s1
	v_cmp_o_f32_e64 s0, v12, v12
	v_add3_u32 v12, v11, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v11, v11
	v_add3_u32 v11, v10, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v10, v10
	v_cndmask_b16 v10.l, 0x7fff, v14.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v12.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v11.h, s2
	v_dual_mov_b32 v12, 0x5410 :: v_dual_cndmask_b32 v11, v3, v1
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_dual_cndmask_b32 v3, v5, v2 :: v_dual_cndmask_b32 v2, v2, v5
	v_cndmask_b32_e32 v5, v7, v4, vcc_lo
	v_dual_mov_b32 v13, 0x7632 :: v_dual_cndmask_b32 v14, v21, v9
	v_cndmask_b32_e32 v4, v4, v7, vcc_lo
	v_dual_cndmask_b32 v7, v8, v6 :: v_dual_cndmask_b32 v6, v6, v8
	v_dual_cndmask_b32 v8, v9, v21 :: v_dual_cndmask_b32 v9, 0x1054, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v12, 0x3276, v13 :: v_dual_cndmask_b32 v13, v17, v26
	v_cndmask_b32_e32 v16, v26, v17, vcc_lo
	v_cndmask_b32_e32 v17, v10, v18, vcc_lo
	v_lshl_or_b32 v9, v9, 8, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b32_e32 v10, v18, v10, vcc_lo
	s_mov_b32 s0, 0x76543210
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v24, s19, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v12, 0x760076, v12
	v_cndmask_b32_e32 v18, v0, v15, vcc_lo
	v_cndmask_b32_e32 v0, v15, v0, vcc_lo
	v_permlanex16_b32 v15, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v9, 4, v9
	v_lshl_or_b32 v9, v12, 4, v12
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v2
	v_and_b32_e32 v22, 0x7060706, v9
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v40, s19, 4, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_permlanex16_b32 v20, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v11, v21
	v_perm_b32 v1, v1, v11, v22
	v_perm_b32 v2, v15, v3, v21
	v_perm_b32 v3, v15, v3, v22
	v_perm_b32 v10, v16, v13, v21
	v_perm_b32 v11, v16, v13, v22
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v16, v23, v24, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v4, v12, v5, v21
	v_perm_b32 v5, v12, v5, v22
	v_perm_b32 v6, v19, v7, v21
	v_perm_b32 v7, v19, v7, v22
	v_perm_b32 v8, v20, v14, v21
	v_perm_b32 v9, v20, v14, v22
	v_perm_b32 v12, v25, v17, v21
	v_perm_b32 v13, v25, v17, v22
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v17, v23, v40, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v14, v26, v18, v21
	v_perm_b32 v15, v26, v18, v22
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v16, s[16:19], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[16:19], 0 offen
	buffer_store_b128 v[12:15], v17, s[16:19], 0 offen offset:256
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 207
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8132
; TotalNumSgprs: 32
; NumVgprs: 207
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     207
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
