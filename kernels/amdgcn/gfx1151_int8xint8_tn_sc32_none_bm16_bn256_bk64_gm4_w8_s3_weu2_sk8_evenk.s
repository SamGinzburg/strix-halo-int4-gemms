	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s15, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_and_b32_e32 v6, 0xf0, v0
	v_and_b32_e32 v9, 8, v0
	v_lshlrev_b32_e32 v3, 1, v0
	v_lshlrev_b32_e32 v4, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v10, 1, v6
	v_lshlrev_b32_e32 v11, 2, v6
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s24, 15
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
	s_sub_i32 s4, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s4
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
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s16, s15, 0x1ff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s9
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s2, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s2, s2, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s4, s4, s5
	v_or_b32_e32 v13, s2, v0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s4, s4, s6
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s16, 0x1ff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_lshl_b32 s6, s25, 5
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	v_or_b32_e32 v1, s2, v0
	v_dual_mov_b32 v2, s6 :: v_dual_lshlrev_b32 v7, 1, v6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v8, 8, v0
	v_lshlrev_b32_e32 v5, 2, v6
	v_and_b32_e32 v15, 28, v3
	v_and_b32_e32 v14, 32, v4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr15
                                        ; implicit-def: $vgpr14
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow171
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v12, 7, v0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v16, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s16, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s15, 31
.Ltmp16:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 368 26                        ; generate_amdgcn.py:368:26
	s_lshl_b32 s15, s3, 6
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 23
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s3, s1, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s16, s16, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s0, s3, 27
	v_mul_lo_u32 v5, s24, v5
	s_add_i32 s1, s1, s0
	s_mov_b32 s0, 0
.Ltmp21:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v2, 3, v6
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s26, s16, 9
.Ltmp23:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s27, s1, 5
	s_mov_b32 s1, s0
	s_mov_b32 s3, s0
.Ltmp24:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 15, v0
	v_bfe_i32 v7, v0, 2, 1
	v_lshrrev_b32_e32 v16, 6, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s21, s7
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
	v_lshlrev_b32_e32 v6, 1, v12
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v8, 4, v1
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v35, 0, v10
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v37, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v32, v5, v6, s14
	v_mul_lo_u32 v6, s25, v2
	v_bfe_i32 v5, v0, 3, 1
	v_lshl_or_b32 v2, v1, 9, v2
	v_mov_b32_e32 v31, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_add_u32 v36, s24, 5, v32
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v25, 0
	v_xor_b32_e32 v17, 0x110, v2
	v_add3_u32 v8, v6, v8, s2
	s_mov_b32 s2, s0
	v_lshlrev_b32_e32 v14, 4, v0
	v_and_b32_e32 v7, 0x90, v7
	v_and_b32_e32 v5, 0x110, v5
	v_and_b32_e32 v15, 0x60, v4
	v_lshlrev_b32_e32 v0, 2, v0
	v_and_b32_e32 v14, 0xe00, v14
	v_add_nc_u32_e32 v33, 0, v1
	v_xor_b32_e32 v5, v7, v5
	v_mov_b32_e32 v30, 0
	v_and_b32_e32 v0, 0x1c0, v0
	v_xor_b32_e32 v7, 0x90, v2
	v_mov_b32_e32 v28, 0
	v_or3_b32 v5, v15, v14, v5
	v_or_b32_e32 v14, s14, v1
	v_and_b32_e32 v1, 2, v16
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v15, 28, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v18, 16, v5
	v_mul_lo_u32 v34, v14, s27
	v_dual_mov_b32 v29, 0 :: v_dual_and_b32 v14, 32, v4
	v_add_nc_u32_e32 v1, 0, v1
	v_add_nc_u32_e32 v38, 0, v2
	v_add_nc_u32_e32 v39, 0, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v20, v35, v10, v14
	v_add_nc_u32_e32 v41, 0, v5
	v_add3_u32 v19, v1, v0, v14
	v_mov_b32_e32 v0, s0
	v_mov_b32_e32 v16, 0
	v_add_nc_u32_e32 v40, 0, v17
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v42, 0, v18
	v_dual_mov_b32 v1, s1 :: v_dual_mov_b32 v2, s2
	v_dual_mov_b32 v3, s3 :: v_dual_mov_b32 v4, s4
	v_dual_mov_b32 v5, s5 :: v_dual_mov_b32 v6, s6
	v_mov_b32_e32 v7, s7
	v_add_nc_u32_e32 v43, v19, v15
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v44, v20, v15
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s28, s25, 5
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
	s_lshl_b32 s1, s0, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s1, s1, s15
	v_mad_u64_u32 v[45:46], null, s1, s25, v[8:9]
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s2, s1, s24
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_nc_u32_e32 v46, s2, v32
	v_add_nc_u32_e32 v61, s2, v36
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s2, s1, 5
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_or_b32 s1, s1, 32
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v49, s25, v45
	v_add_nc_u32_e32 v53, s28, v45
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_u16 v69, v46, s[16:19], 0 offen
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s3, s2, s25
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[45:48], v45, s[20:23], 0 offen
	buffer_load_b128 v[49:52], v49, s[20:23], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v62, v13, s3, 1
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v57, s25, v53
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s2, s27
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[53:56], v53, s[20:23], 0 offen
	buffer_load_b128 v[57:60], v57, s[20:23], 0 offen
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_u16 v70, v61, s[16:19], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v61, v34, s2, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s1, 5
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v72, 0x80000000, v62, vcc_lo
	.loc	1 390 40 is_stmt 0              ; generate_amdgcn.py:390:40
	s_mul_i32 s2, s1, s25
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v71, 0x80000000, v61, vcc_lo
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s1, s27
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s0, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s0, s26
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(3)
	v_perm_b32 v61, v49, v45, 0x5010400
	v_perm_b32 v49, v49, v45, 0x7030602
	v_perm_b32 v62, v50, v46, 0x5010400
	v_perm_b32 v50, v50, v46, 0x7030602
	v_perm_b32 v63, v51, v47, 0x5010400
	v_perm_b32 v51, v51, v47, 0x7030602
	v_perm_b32 v64, v52, v48, 0x5010400
	v_perm_b32 v65, v52, v48, 0x7030602
	v_and_b16 v45.l, 0xff, v61.l
	v_lshrrev_b32_e32 v66, 8, v61
	v_lshrrev_b32_e32 v67, 24, v61
	v_and_b16 v45.h, 0xff, v61.h
	v_and_b16 v46.l, 0xff, v49.l
	v_lshrrev_b32_e32 v61, 8, v49
	v_lshrrev_b32_e32 v68, 24, v49
	v_and_b16 v46.h, 0xff, v49.h
	v_and_b16 v47.l, 0xff, v62.l
	v_lshrrev_b32_e32 v73, 8, v62
	v_lshrrev_b32_e32 v74, 24, v62
	v_and_b16 v47.h, 0xff, v62.h
	v_and_b16 v48.l, 0xff, v50.l
	v_lshrrev_b32_e32 v62, 8, v50
	v_lshrrev_b32_e32 v75, 24, v50
	v_and_b16 v48.h, 0xff, v50.h
	v_and_b16 v49.l, 0xff, v63.l
	v_lshrrev_b32_e32 v76, 8, v63
	v_lshrrev_b32_e32 v77, 24, v63
	v_and_b16 v49.h, 0xff, v63.h
	v_and_b16 v50.l, 0xff, v51.l
	v_lshrrev_b32_e32 v63, 8, v51
	v_lshrrev_b32_e32 v78, 24, v51
	v_and_b16 v50.h, 0xff, v51.h
	v_and_b16 v51.l, 0xff, v64.l
	v_lshrrev_b32_e32 v79, 8, v64
	v_lshrrev_b32_e32 v80, 24, v64
	v_and_b16 v51.h, 0xff, v64.h
	v_and_b16 v52.l, 0xff, v65.l
	v_lshrrev_b32_e32 v64, 8, v65
	v_lshrrev_b32_e32 v81, 24, v65
	v_and_b16 v52.h, 0xff, v65.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v65, v57, v53, 0x5010400
	v_perm_b32 v82, v57, v53, 0x7030602
	v_perm_b32 v83, v58, v54, 0x5010400
	v_perm_b32 v84, v58, v54, 0x7030602
	v_perm_b32 v85, v59, v55, 0x5010400
	v_perm_b32 v86, v59, v55, 0x7030602
	v_perm_b32 v87, v60, v56, 0x5010400
	v_perm_b32 v88, v60, v56, 0x7030602
	v_lshlrev_b16 v53.l, 8, v66.l
	v_lshlrev_b16 v55.l, 8, v73.l
	v_lshrrev_b32_e32 v73, 8, v65
	v_lshlrev_b16 v53.h, 8, v67.l
	v_lshlrev_b16 v55.h, 8, v74.l
	v_lshrrev_b32_e32 v74, 24, v65
	v_lshlrev_b16 v54.l, 8, v61.l
	v_lshlrev_b16 v56.h, 8, v75.l
	v_lshrrev_b32_e32 v75, 8, v82
	v_lshlrev_b16 v54.h, 8, v68.l
	v_lshlrev_b16 v57.l, 8, v76.l
	v_lshrrev_b32_e32 v76, 24, v82
	v_lshlrev_b16 v56.l, 8, v62.l
	v_lshlrev_b16 v57.h, 8, v77.l
	v_lshlrev_b16 v58.l, 8, v63.l
	v_lshlrev_b16 v58.h, 8, v78.l
	v_lshlrev_b16 v59.l, 8, v79.l
	v_lshlrev_b16 v59.h, 8, v80.l
	v_lshlrev_b16 v60.l, 8, v64.l
	v_lshlrev_b16 v60.h, 8, v81.l
	v_and_b16 v61.l, 0xff, v65.l
	v_and_b16 v61.h, 0xff, v65.h
	v_and_b16 v62.l, 0xff, v82.l
	v_and_b16 v62.h, 0xff, v82.h
	v_and_b16 v63.l, 0xff, v83.l
	v_lshrrev_b32_e32 v77, 8, v83
	v_lshrrev_b32_e32 v78, 24, v83
	v_and_b16 v63.h, 0xff, v83.h
	v_and_b16 v64.l, 0xff, v84.l
	v_lshrrev_b32_e32 v79, 8, v84
	v_lshrrev_b32_e32 v80, 24, v84
	v_and_b16 v64.h, 0xff, v84.h
	v_and_b16 v65.l, 0xff, v85.l
	v_lshrrev_b32_e32 v81, 8, v85
	v_lshrrev_b32_e32 v82, 24, v85
	v_and_b16 v65.h, 0xff, v85.h
	v_and_b16 v66.l, 0xff, v86.l
	v_lshrrev_b32_e32 v83, 8, v86
	v_lshrrev_b32_e32 v84, 24, v86
	v_and_b16 v66.h, 0xff, v86.h
	v_and_b16 v67.l, 0xff, v87.l
	v_lshrrev_b32_e32 v85, 8, v87
	v_lshrrev_b32_e32 v86, 24, v87
	v_and_b16 v67.h, 0xff, v87.h
	v_lshrrev_b32_e32 v87, 8, v88
	v_lshrrev_b32_e32 v89, 24, v88
	v_or_b16 v45.l, v45.l, v53.l
	v_lshlrev_b16 v53.l, 8, v73.l
	v_or_b16 v45.h, v45.h, v53.h
	v_lshlrev_b16 v53.h, 8, v74.l
	v_or_b16 v46.l, v46.l, v54.l
	v_lshlrev_b16 v54.l, 8, v75.l
	v_or_b16 v46.h, v46.h, v54.h
	v_lshlrev_b16 v54.h, 8, v76.l
	v_and_b16 v68.l, 0xff, v88.l
	v_and_b16 v68.h, 0xff, v88.h
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
	v_or_b16 v52.l, v52.l, v60.l
	v_or_b16 v52.h, v52.h, v60.h
	v_lshlrev_b16 v55.l, 8, v77.l
	v_lshlrev_b16 v55.h, 8, v78.l
	v_lshlrev_b16 v56.l, 8, v79.l
	v_lshlrev_b16 v56.h, 8, v80.l
	v_lshlrev_b16 v57.l, 8, v81.l
	v_lshlrev_b16 v57.h, 8, v82.l
	v_lshlrev_b16 v58.l, 8, v83.l
	v_lshlrev_b16 v58.h, 8, v84.l
	v_lshlrev_b16 v59.l, 8, v85.l
	v_lshlrev_b16 v59.h, 8, v86.l
	v_lshlrev_b16 v60.l, 8, v87.l
	v_lshlrev_b16 v60.h, 8, v89.l
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_store_b16 v37, v69 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v38, v45
	ds_store_b16_d16_hi v38, v45 offset:32
	ds_store_b16 v38, v46 offset:64
	ds_store_b16_d16_hi v38, v46 offset:96
	ds_store_b16 v39, v47
	ds_store_b16_d16_hi v39, v47 offset:32
	ds_store_b16 v39, v48 offset:64
	ds_store_b16_d16_hi v39, v48 offset:96
	ds_store_b16 v40, v49
	ds_store_b16_d16_hi v40, v49 offset:32
	ds_store_b16 v40, v50 offset:64
	ds_store_b16_d16_hi v40, v50 offset:96
	ds_store_b16 v38, v51 offset:384
	ds_store_b16_d16_hi v38, v51 offset:416
	ds_store_b16 v38, v52 offset:448
	ds_store_b16_d16_hi v38, v52 offset:480
	v_or_b16 v45.l, v61.l, v53.l
	v_or_b16 v45.h, v61.h, v53.h
	v_or_b16 v46.l, v62.l, v54.l
	v_or_b16 v46.h, v62.h, v54.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
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
	v_or_b16 v52.l, v68.l, v60.l
	v_or_b16 v52.h, v68.h, v60.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v37, v70 offset:16896
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v38, v45 offset:8192
	ds_store_b16_d16_hi v38, v45 offset:8224
	ds_store_b16 v38, v46 offset:8256
	ds_store_b16_d16_hi v38, v46 offset:8288
	ds_store_b16 v39, v47 offset:8192
	ds_store_b16_d16_hi v39, v47 offset:8224
	ds_store_b16 v39, v48 offset:8256
	ds_store_b16_d16_hi v39, v48 offset:8288
	ds_store_b16 v40, v49 offset:8192
	ds_store_b16_d16_hi v40, v49 offset:8224
	ds_store_b16 v40, v50 offset:8256
	ds_store_b16_d16_hi v40, v50 offset:8288
	ds_store_b16 v38, v51 offset:8576
	ds_store_b16_d16_hi v38, v51 offset:8608
	ds_store_b16 v38, v52 offset:8640
	ds_store_b16_d16_hi v38, v52 offset:8672
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v45, v72, s[8:11], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v81, v71, s[4:7], 0 offen
	v_add_lshl_u32 v46, v34, s1, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v47, v13, s2, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[53:56], v41
	ds_load_b128 v[61:64], v41 offset:4096
	ds_load_b128 v[65:68], v42
	ds_load_b128 v[69:72], v42 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v48, v33 offset:16592
	ds_load_u8 v49, v33 offset:16624
	ds_load_u8 v50, v33 offset:16608
	ds_load_u8 v51, v33 offset:16576
	ds_load_u8 v52, v33 offset:16528
	ds_load_u8 v57, v33 offset:16560
	ds_load_u8 v58, v33 offset:16544
	ds_load_u8 v59, v33 offset:16512
	ds_load_u8 v60, v33 offset:16464
	ds_load_u8 v73, v33 offset:16496
	ds_load_u8 v74, v33 offset:16480
	ds_load_u8 v75, v33 offset:16448
	ds_load_u8 v76, v33 offset:16384
	ds_load_u8 v77, v33 offset:16400
	ds_load_u8 v78, v33 offset:16416
	ds_load_u8 v79, v33 offset:16432
	ds_load_u8 v80, v33 offset:16848
	ds_load_u8 v82, v33 offset:16880
	ds_load_u8 v83, v33 offset:16864
	ds_load_u8 v84, v33 offset:16832
	ds_load_u8 v85, v33 offset:16784
	ds_load_u8 v86, v33 offset:16816
	ds_load_u8 v87, v33 offset:16800
	ds_load_u8 v88, v33 offset:16768
	ds_load_u8 v89, v33 offset:16720
	ds_load_u8 v90, v33 offset:16752
	ds_load_u8 v91, v33 offset:16736
	ds_load_u8 v92, v33 offset:16704
	ds_load_u8 v93, v33 offset:16656
	ds_load_u8 v94, v33 offset:16688
	ds_load_u8 v95, v33 offset:16672
	ds_load_u8 v96, v33 offset:16640
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v46, 0x80000000, v46 :: v_dual_cndmask_b32 v47, 0x80000000, v47
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v43, v45 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_u16 v97, v47, s[8:11], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v98, v46, s[4:7], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v45, v51, v48, 0xc0c0004
	v_perm_b32 v46, v50, v49, 0xc0c0004
	v_perm_b32 v47, v59, v52, 0xc0c0004
	v_perm_b32 v48, v58, v57, 0xc0c0004
	v_perm_b32 v49, v75, v60, 0xc0c0004
	v_perm_b32 v50, v74, v73, 0xc0c0004
	v_perm_b32 v51, v76, v77, 0xc0c0004
	v_perm_b32 v52, v78, v79, 0xc0c0004
	v_perm_b32 v57, v84, v80, 0xc0c0004
	v_perm_b32 v58, v83, v82, 0xc0c0004
	v_perm_b32 v59, v88, v85, 0xc0c0004
	v_perm_b32 v60, v87, v86, 0xc0c0004
	v_perm_b32 v77, v92, v89, 0xc0c0004
	v_perm_b32 v78, v91, v90, 0xc0c0004
	v_perm_b32 v82, v96, v93, 0xc0c0004
	v_perm_b32 v83, v95, v94, 0xc0c0004
	v_lshl_or_b32 v76, v46, 16, v45
	v_lshl_or_b32 v75, v48, 16, v47
	v_lshl_or_b32 v74, v50, 16, v49
	v_lshl_or_b32 v73, v52, 16, v51
	v_lshl_or_b32 v80, v58, 16, v57
	v_lshl_or_b32 v79, v60, 16, v59
	v_lshl_or_b32 v78, v78, 16, v77
	v_lshl_or_b32 v77, v83, 16, v82
	v_wmma_i32_16x16x16_iu8 v[45:52], v[53:56], v[73:76], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[73:76], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v112, v33 offset:17232
	ds_load_u8 v113, v33 offset:17264
	ds_load_u8 v114, v33 offset:17248
	ds_load_u8 v115, v33 offset:17216
	ds_load_u8 v116, v33 offset:17168
	ds_load_u8 v117, v33 offset:17200
	ds_load_u8 v118, v33 offset:17184
	ds_load_u8 v119, v33 offset:17152
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[77:80], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[69:72], v[77:80], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v73, v46
	v_cvt_f32_i32_e32 v74, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v75, v48
	v_cvt_f32_i32_e32 v76, v49
	v_cvt_f32_i32_e32 v77, v50
	v_cvt_f32_i32_e32 v78, v51
	v_cvt_f32_i32_e32 v79, v52
	v_cvt_f32_i32_e32 v80, v53
	v_cvt_f32_i32_e32 v82, v54
	v_cvt_f32_i32_e32 v83, v55
	v_cvt_f32_i32_e32 v84, v56
	v_cvt_f32_i32_e32 v85, v45
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[45:48], v35 offset:17408
	ds_load_b128 v[49:52], v35 offset:17424
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[53:56], v41 offset:8192
	ds_load_b128 v[61:64], v41 offset:12288
	ds_load_b128 v[65:68], v42 offset:8192
	ds_load_b128 v[69:72], v42 offset:12288
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v86, v33 offset:17104
	ds_load_u8 v87, v33 offset:17136
	ds_load_u8 v88, v33 offset:17120
	ds_load_u8 v89, v33 offset:17088
	ds_load_u8 v90, v33 offset:17040
	ds_load_u8 v91, v33 offset:17072
	ds_load_u8 v92, v33 offset:17056
	ds_load_u8 v93, v33 offset:17024
	ds_load_u8 v94, v33 offset:16976
	ds_load_u8 v95, v33 offset:17008
	ds_load_u8 v96, v33 offset:16992
	ds_load_u8 v99, v33 offset:16960
	ds_load_u8 v100, v33 offset:16896
	ds_load_u8 v101, v33 offset:16912
	ds_load_u8 v102, v33 offset:16928
	ds_load_u8 v103, v33 offset:16944
	ds_load_u8 v104, v33 offset:17360
	ds_load_u8 v105, v33 offset:17392
	ds_load_u8 v106, v33 offset:17376
	ds_load_u8 v107, v33 offset:17344
	ds_load_u8 v108, v33 offset:17296
	ds_load_u8 v109, v33 offset:17328
	ds_load_u8 v110, v33 offset:17312
	ds_load_u8 v111, v33 offset:17280
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(29)
	v_lshlrev_b32_e32 v128, 16, v46
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v81, 16, v81
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v120, v81, v73
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v73, v89, v86, 0xc0c0004
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v129, 16, v47
	v_lshlrev_b32_e32 v130, 16, v48
	v_lshlrev_b32_e32 v131, 16, v49
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v86, v102, v103, 0xc0c0004
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v30, v120, v128 :: v_dual_mul_f32 v121, v81, v74
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v122, v81, v75
	v_mul_f32_e32 v124, v81, v77
	v_mul_f32_e32 v125, v81, v78
	v_mul_f32_e32 v126, v81, v79
	v_dual_mul_f32 v127, v81, v80 :: v_dual_and_b32 v46, 0xffff0000, v46
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_perm_b32 v74, v88, v87, 0xc0c0004
	v_perm_b32 v75, v93, v90, 0xc0c0004
	v_perm_b32 v77, v92, v91, 0xc0c0004
	v_perm_b32 v78, v99, v94, 0xc0c0004
	v_perm_b32 v79, v96, v95, 0xc0c0004
	v_perm_b32 v80, v100, v101, 0xc0c0004
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v123, v81, v76 :: v_dual_lshlrev_b32 v132, 16, v50
	v_mul_f32_e32 v82, v81, v82
	v_dual_mul_f32 v83, v81, v83 :: v_dual_lshlrev_b32 v134, 16, v52
	v_mul_f32_e32 v84, v81, v84
	v_dual_mul_f32 v57, v81, v57 :: v_dual_and_b32 v48, 0xffff0000, v48
	v_mul_f32_e32 v58, v81, v58
	v_dual_mul_f32 v59, v81, v59 :: v_dual_and_b32 v50, 0xffff0000, v50
	v_dual_mul_f32 v60, v81, v60 :: v_dual_lshlrev_b32 v133, 16, v51
	v_dual_mul_f32 v81, v85, v81 :: v_dual_and_b32 v52, 0xffff0000, v52
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v85, 16, v45
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v26, v122, v130 :: v_dual_and_b32 v45, 0xffff0000, v45
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v47, 0xffff0000, v47
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v24, v123, v131 :: v_dual_and_b32 v49, 0xffff0000, v49
	v_dual_fmac_f32 v28, v121, v129 :: v_dual_and_b32 v51, 0xffff0000, v51
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v107, v104, 0xc0c0004
	v_perm_b32 v88, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v111, v108, 0xc0c0004
	v_perm_b32 v90, v110, v109, 0xc0c0004
	v_perm_b32 v91, v115, v112, 0xc0c0004
	v_perm_b32 v92, v114, v113, 0xc0c0004
	v_perm_b32 v93, v119, v116, 0xc0c0004
	v_perm_b32 v94, v118, v117, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	v_lshl_or_b32 v75, v77, 16, v75
	v_lshl_or_b32 v74, v79, 16, v78
	v_lshl_or_b32 v73, v86, 16, v80
	v_lshl_or_b32 v80, v88, 16, v87
	v_lshl_or_b32 v79, v90, 16, v89
	v_lshl_or_b32 v78, v92, 16, v91
	v_lshl_or_b32 v77, v94, 16, v93
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v16, v81, v85
	v_dual_fmac_f32 v20, v125, v133 :: v_dual_fmac_f32 v29, v82, v46
	v_fmac_f32_e32 v31, v127, v45
	v_fmac_f32_e32 v27, v83, v47
	v_dual_fmac_f32 v25, v84, v48 :: v_dual_fmac_f32 v18, v59, v51
	v_fmac_f32_e32 v23, v57, v49
	v_fmac_f32_e32 v21, v58, v50
	v_fmac_f32_e32 v17, v60, v52
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[45:52], v[53:56], v[73:76], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[73:76], v[0:7] neg_lo:[1,1,0]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[77:80], v[45:52] neg_lo:[1,1,0]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[53:60], v[69:72], v[77:80], v[53:60] neg_lo:[1,1,0]
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v22, v124, v132 :: v_dual_fmac_f32 v19, v126, v134
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v66, v51
	v_cvt_f32_i32_e32 v76, v45
	v_cvt_f32_i32_e32 v61, v46
	v_cvt_f32_i32_e32 v62, v47
	v_cvt_f32_i32_e32 v63, v48
	v_cvt_f32_i32_e32 v64, v49
	v_cvt_f32_i32_e32 v65, v50
	v_cvt_f32_i32_e32 v67, v52
	v_cvt_f32_i32_e32 v68, v53
	v_cvt_f32_i32_e32 v69, v54
	v_cvt_f32_i32_e32 v70, v55
	v_cvt_f32_i32_e32 v71, v56
	v_cvt_f32_i32_e32 v72, v57
	v_cvt_f32_i32_e32 v73, v58
	v_cvt_f32_i32_e32 v74, v59
	v_cvt_f32_i32_e32 v75, v60
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v77, 16, v98
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v66, v77, v66 :: v_dual_lshlrev_b32 v45, 16, v97
	ds_store_b32 v44, v45 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v35 offset:17408
	ds_load_b128 v[49:52], v35 offset:17424
	ds_load_b128 v[53:56], v35 offset:17920
	ds_load_b128 v[57:60], v35 offset:17936
	v_mul_f32_e32 v76, v76, v77
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v16, v76, v45
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v64, v77, v64
	v_mul_f32_e32 v67, v77, v67
	v_mul_f32_e32 v70, v77, v70
	v_mul_f32_e32 v71, v77, v71
	v_mul_f32_e32 v62, v77, v62
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v63, v77, v63 :: v_dual_fmac_f32 v24, v64, v49
	v_mul_f32_e32 v61, v77, v61
	v_dual_mul_f32 v65, v77, v65 :: v_dual_fmac_f32 v20, v66, v51
	v_mul_f32_e32 v73, v77, v73
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v74, v77, v74 :: v_dual_fmac_f32 v25, v71, v56
	v_mul_f32_e32 v69, v77, v69
	v_mul_f32_e32 v75, v77, v75
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v19, v67, v52
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v68, v77, v68 :: v_dual_fmac_f32 v27, v70, v55
	v_mul_f32_e32 v72, v77, v72
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v28, v62, v47
	v_fmac_f32_e32 v26, v63, v48
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v22, v65, v50 :: v_dual_fmac_f32 v17, v75, v60
	v_dual_fmac_f32 v31, v68, v53 :: v_dual_fmac_f32 v30, v61, v46
	v_fmac_f32_e32 v23, v72, v57
	v_dual_fmac_f32 v21, v73, v58 :: v_dual_fmac_f32 v18, v74, v59
	v_fmac_f32_e32 v29, v69, v54
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, s28 :: v_dual_mov_b32 v1, v13
	v_dual_mov_b32 v7, v10 :: v_dual_mov_b32 v8, v9
	v_mov_b32_e32 v5, v11
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v8
	v_lshl_or_b32 v3, v12, 2, v7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s25, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v0, 0x2040, 0, vcc_lo
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s25, 5
	s_mul_i32 s2, s25, 6
	s_mul_i32 s3, s25, 7
	s_mul_i32 s4, s25, 9
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v3, v0
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s5, s25, 10
	s_mul_i32 s6, s25, 11
	s_mul_i32 s7, s25, 12
	s_mul_i32 s8, s25, 13
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v3, v12, 10, v0
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mad_u64_u32 v[0:1], null, s14, s25, v[1:2]
	s_mov_b32 s14, 0x7ffffffe
	s_mul_i32 s9, s25, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v4, 0, v3
	v_xad_u32 v6, v3, 4, 0
	v_xad_u32 v7, v3, 8, 0
	v_xad_u32 v1, v3, 12, 0
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s10, s25, 15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b32 v4, v16, v31 offset1:2
	v_xad_u32 v4, v3, 16, 0
	ds_store_2addr_stride64_b32 v6, v30, v29 offset1:2
	ds_store_2addr_stride64_b32 v7, v28, v27 offset1:2
	v_xad_u32 v6, v3, 20, 0
	ds_store_2addr_stride64_b32 v1, v26, v25 offset1:2
	v_xad_u32 v1, v3, 24, 0
	ds_store_2addr_stride64_b32 v4, v24, v23 offset1:2
	ds_store_2addr_stride64_b32 v6, v22, v21 offset1:2
	v_or3_b32 v4, v5, v14, v15
	v_xad_u32 v3, v3, 28, 0
	ds_store_2addr_stride64_b32 v1, v20, v18 offset1:2
	ds_store_2addr_stride64_b32 v3, v19, v17 offset1:2
	v_add_nc_u32_e32 v1, 0, v4
	v_xad_u32 v3, 0x404, v4, 0
	v_xad_u32 v5, 0x808, v4, 0
	v_xad_u32 v6, 0xc0c, v4, 0
	v_xad_u32 v7, 0x1010, v4, 0
	v_xad_u32 v8, 0x1414, v4, 0
	v_xad_u32 v9, 0x1818, v4, 0
	v_xad_u32 v10, 0x1c1c, v4, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	ds_load_b32 v3, v3
	ds_load_b32 v5, v5
	ds_load_b32 v6, v6
	ds_load_b32 v7, v7
	ds_load_b32 v8, v8
	ds_load_b32 v9, v9
	ds_load_b32 v10, v10
	v_xad_u32 v11, 0x2040, v4, 0
	v_xad_u32 v12, 0x2444, v4, 0
	v_xad_u32 v13, 0x2848, v4, 0
	v_xad_u32 v14, 0x2c4c, v4, 0
	v_xad_u32 v15, 0x3050, v4, 0
	v_xad_u32 v16, 0x3454, v4, 0
	v_xad_u32 v17, 0x3858, v4, 0
	v_xad_u32 v4, 0x3c5c, v4, 0
	v_lshlrev_b32_e32 v18, 2, v0
	ds_load_b32 v11, v11
	ds_load_b32 v12, v12
	ds_load_b32 v13, v13
	ds_load_b32 v14, v14
	ds_load_b32 v15, v15
	ds_load_b32 v16, v16
	ds_load_b32 v17, v17
	ds_load_b32 v4, v4
	v_add_lshl_u32 v20, v0, s0, 2
	v_add_lshl_u32 v22, v0, s1, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v1, v18, s[12:15], 0 offen
	v_add_lshl_u32 v1, v0, s25, 2
	v_lshl_add_u32 v19, s25, 3, v18
	v_lshl_add_u32 v21, s25, 4, v18
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v3, v1, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v5, v19, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v20, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v7, v21, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v8, v22, s[12:15], 0 offen
	v_add_lshl_u32 v1, v0, s2, 2
	v_add_lshl_u32 v3, v0, s3, 2
	v_add_nc_u32_e32 v2, v2, v18
	v_add_lshl_u32 v5, v0, s4, 2
	v_add_lshl_u32 v6, v0, s5, 2
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v9, v1, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v10, v3, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v11, v2, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v12, v5, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v13, v6, s[12:15], 0 offen
	v_add_lshl_u32 v1, v0, s6, 2
	v_add_lshl_u32 v2, v0, s7, 2
	v_add_lshl_u32 v3, v0, s8, 2
	v_add_lshl_u32 v5, v0, s9, 2
	v_add_lshl_u32 v0, v0, s10, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v14, v1, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v15, v2, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v16, v3, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v17, v5, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v4, v0, s[12:15], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_vgpr, 135
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5592
; TotalNumSgprs: 31
; NumVgprs: 135
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     135
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
