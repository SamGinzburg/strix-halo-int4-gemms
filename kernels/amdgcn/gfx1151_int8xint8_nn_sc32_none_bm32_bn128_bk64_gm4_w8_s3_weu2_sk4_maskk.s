	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s14, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	v_lshlrev_b32_e32 v28, 2, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x7f
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
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
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
	s_sub_i32 s5, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s4, s5
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_xor_b32 s2, s5, s7
	s_mul_hi_u32 s9, s4, s9
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s10, s9, s8
	s_sub_i32 s4, s4, s10
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s4, s8
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s4, s11, s4
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s4, s10, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s14, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s16, s4, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s16, s2
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s7
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s5, s5, s6
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s17, 0xff
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v1, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow107
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	s_lshl_b32 s24, s5, 5
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s15, s4, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s14, 31
.Ltmp15:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s17, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s18, s1, 31
.Ltmp17:
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 1, v0
	v_bfe_i32 v6, v0, 5, 1
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 24
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s18, s18, 27
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s17, s0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s1, s18
	s_mov_b32 s0, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s26, s17, 8
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s27, s1, 5
.Ltmp24:
	.loc	1 368 26 is_stmt 1              ; generate_amdgcn.py:368:26
	s_lshl_b32 s28, s3, 6
	v_dual_mov_b32 v21, 0 :: v_dual_and_b32 v2, 0x70, v2
	v_and_b32_e32 v7, 0x37c, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_lshl_b32 s1, s16, 7
	s_mov_b32 s3, s0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v29, 3, v0
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
	v_and_b32_e32 v5, 15, v0
	v_and_b32_e32 v6, 0x90, v6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_lshl_b32 s2, s2, 7
	v_bfe_i32 v8, v0, 2, 1
	v_xor_b32_e32 v6, v6, v7
	v_or_b32_e32 v7, s24, v5
	v_or_b32_e32 v5, v2, v5
	v_or3_b32 v31, v3, v2, s15
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v23, 2, v1
	v_dual_mov_b32 v22, 0 :: v_dual_lshlrev_b32 v1, 4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v30, 0, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_or_b32_e32 v5, s28, v29
	v_or_b32_e32 v10, 16, v7
	v_mul_lo_u32 v32, v7, s27
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v42, 0, v6
	v_or_b32_e32 v2, 32, v5
	v_mul_lo_u32 v3, s25, v5
	v_add_nc_u32_e32 v5, s24, v29
	v_mul_lo_u32 v33, v10, s27
	v_or_b32_e32 v34, 2, v31
	v_mul_lo_u32 v2, s25, v2
	v_or_b32_e32 v35, 4, v31
	v_mad_u64_u32 v[26:27], null, s14, v5, v[23:24]
	v_or_b32_e32 v36, 6, v31
	v_or_b32_e32 v37, 8, v31
	v_or_b32_e32 v38, 10, v31
	v_or_b32_e32 v39, 12, v31
	v_add3_u32 v2, v2, s1, v1
	v_add3_u32 v1, v3, s1, v1
	s_mov_b32 s1, s0
	v_or_b32_e32 v40, 14, v31
	v_mov_b32_e32 v24, 0
	v_subrev_nc_u32_e32 v27, s2, v2
	v_subrev_nc_u32_e32 v41, s2, v1
	s_mov_b32 s2, s0
	v_dual_mov_b32 v15, 0 :: v_dual_lshlrev_b32 v4, 5, v0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 0x160, v4
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v18, 0
	v_and_or_b32 v4, 0x90, v8, v4
	v_lshlrev_b32_e32 v8, 4, v0
	v_mov_b32_e32 v12, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_xor_b32_e32 v9, 16, v4
	v_add_nc_u32_e32 v43, 0, v8
	v_add_nc_u32_e32 v44, 0, v4
	v_dual_mov_b32 v8, s7 :: v_dual_mov_b32 v7, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v6, s5 :: v_dual_add_nc_u32 v45, 0, v9
	v_dual_mov_b32 v5, s4 :: v_dual_mov_b32 v4, s3
	v_dual_mov_b32 v3, s2 :: v_dual_mov_b32 v2, s1
	v_mov_b32_e32 v1, s0
	v_mov_b32_e32 v9, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s29, s25, 8
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
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_add_nc_u32_e32 v46, s28, v23
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v47, s28, v26
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_add_nc_u32_e32 v48, s28, v29
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s28, 5
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s1, s28, 32
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s14, v46
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v57, v33, s0, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s27
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v56, v32, s0, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s0, s0, s25
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_dual_cndmask_b32 v49, 0x80000000, v47 :: v_dual_add_nc_u32 v46, 32, v46
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s14, v48
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v47, 32, v47
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_add_nc_u32_e32 v50, 32, v48
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b32 v54, v49, s[16:19], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v58, v31, s0, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v48, 0x80000000, v41, vcc_lo
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s14, v46
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v59, v34, s0, 1
	v_add_lshl_u32 v60, v35, s0, 1
	v_add_lshl_u32 v61, v36, s0, 1
	v_add_lshl_u32 v62, v37, s0, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v51, 0x80000000, v47, vcc_lo
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s14, v50
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	buffer_load_b128 v[46:49], v48, s[20:23], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v63, v38, s0, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v50, 0x80000000, v27, vcc_lo
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s1, 5
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b32 v55, v51, s[16:19], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	buffer_load_b128 v[50:53], v50, s[20:23], 0 offen
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s1, s27
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v66, v32, s1, 1
	v_add_lshl_u32 v67, v33, s1, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s1, s25
	.loc	1 390 22 is_stmt 0              ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v64, v39, s0, 1
	v_add_lshl_u32 v65, v40, s0, 1
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v68, v31, s1, 1
	v_add_lshl_u32 v69, v34, s1, 1
	v_add_lshl_u32 v70, v35, s1, 1
	v_add_lshl_u32 v71, v36, s1, 1
	v_add_lshl_u32 v72, v37, s1, 1
	v_add_lshl_u32 v73, v38, s1, 1
	v_add_lshl_u32 v74, v39, s1, 1
	v_add_lshl_u32 v75, v40, s1, 1
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s0, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	v_cndmask_b32_e64 v70, 0x80000000, v70, s0
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	v_cndmask_b32_e64 v72, 0x80000000, v72, s0
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	v_cndmask_b32_e64 v74, 0x80000000, v74, s0
	v_cndmask_b32_e64 v75, 0x80000000, v75, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s26, s26, -1
	s_addk_i32 s28, 0x100
	s_cmp_lg_u32 s26, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(3)
	ds_store_b32 v42, v54 offset:8192
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(2)
	ds_store_b128 v43, v[46:49]
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v42, v55 offset:9216
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v43, v[50:53] offset:4096
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v110, v56, s[4:7], 0 offen
	buffer_load_u16 v111, v57, s[4:7], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x7
	buffer_load_u16 v112, v58, s[8:11], 0 offen
	buffer_load_u16 v113, v59, s[8:11], 0 offen
	buffer_load_u16 v114, v60, s[8:11], 0 offen
	buffer_load_u16 v115, v61, s[8:11], 0 offen
	buffer_load_u16 v116, v62, s[8:11], 0 offen
	buffer_load_u16 v117, v63, s[8:11], 0 offen
	buffer_load_u16 v118, v64, s[8:11], 0 offen
	buffer_load_u16 v119, v65, s[8:11], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v120, v66, s[4:7], 0 offen
	buffer_load_u16 v121, v67, s[4:7], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x7
	buffer_load_u16 v122, v68, s[8:11], 0 offen
	buffer_load_u16 v123, v69, s[8:11], 0 offen
	buffer_load_u16 v124, v70, s[8:11], 0 offen
	buffer_load_u16 v125, v71, s[8:11], 0 offen
	buffer_load_u16 v126, v72, s[8:11], 0 offen
	buffer_load_u16 v127, v73, s[8:11], 0 offen
	buffer_load_u16 v128, v74, s[8:11], 0 offen
	buffer_load_u16 v129, v75, s[8:11], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[54:57], v44 offset:8192
	ds_load_b128 v[62:65], v44 offset:8704
	ds_load_b128 v[78:81], v45 offset:8192
	ds_load_b128 v[82:85], v45 offset:8704
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v46, v30 offset:1664
	ds_load_u8 v47, v30 offset:1920
	ds_load_u8 v48, v30 offset:1792
	ds_load_u8 v49, v30 offset:1536
	ds_load_u8 v50, v30 offset:1152
	ds_load_u8 v51, v30 offset:1408
	ds_load_u8 v52, v30 offset:1280
	ds_load_u8 v53, v30 offset:1024
	ds_load_u8 v58, v30 offset:640
	ds_load_u8 v59, v30 offset:896
	ds_load_u8 v60, v30 offset:768
	ds_load_u8 v61, v30 offset:512
	ds_load_u8 v66, v30 offset:128
	ds_load_u8 v67, v30 offset:384
	ds_load_u8 v68, v30 offset:256
	ds_load_u8 v69, v30
	ds_load_u8 v74, v30 offset:3712
	ds_load_u8 v75, v30 offset:3968
	ds_load_u8 v76, v30 offset:3840
	ds_load_u8 v77, v30 offset:3584
	ds_load_u8 v98, v30 offset:3200
	ds_load_u8 v99, v30 offset:3456
	ds_load_u8 v100, v30 offset:3328
	ds_load_u8 v101, v30 offset:3072
	ds_load_u8 v102, v30 offset:2688
	ds_load_u8 v103, v30 offset:2944
	ds_load_u8 v104, v30 offset:2816
	ds_load_u8 v105, v30 offset:2560
	ds_load_u8 v106, v30 offset:2176
	ds_load_u8 v107, v30 offset:2432
	ds_load_u8 v108, v30 offset:2304
	ds_load_u8 v109, v30 offset:2048
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[70:73], v44 offset:9216
	ds_load_b128 v[86:89], v44 offset:9728
	ds_load_b128 v[90:93], v45 offset:9216
	ds_load_b128 v[94:97], v45 offset:9728
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v130, v30 offset:5760
	ds_load_u8 v131, v30 offset:6016
	ds_load_u8 v132, v30 offset:5888
	ds_load_u8 v133, v30 offset:5632
	ds_load_u8 v134, v30 offset:5248
	ds_load_u8 v135, v30 offset:5504
	ds_load_u8 v136, v30 offset:5376
	ds_load_u8 v137, v30 offset:5120
	ds_load_u8 v138, v30 offset:4736
	ds_load_u8 v139, v30 offset:4992
	ds_load_u8 v140, v30 offset:4864
	ds_load_u8 v141, v30 offset:4608
	ds_load_u8 v142, v30 offset:4224
	ds_load_u8 v143, v30 offset:4480
	ds_load_u8 v144, v30 offset:4352
	ds_load_u8 v145, v30 offset:4096
	ds_load_u8 v146, v30 offset:7808
	ds_load_u8 v147, v30 offset:8064
	ds_load_u8 v148, v30 offset:7936
	ds_load_u8 v149, v30 offset:7680
	ds_load_u8 v150, v30 offset:7296
	ds_load_u8 v151, v30 offset:7552
	ds_load_u8 v152, v30 offset:7424
	ds_load_u8 v153, v30 offset:7168
	ds_load_u8 v154, v30 offset:6784
	ds_load_u8 v155, v30 offset:7040
	ds_load_u8 v156, v30 offset:6912
	ds_load_u8 v157, v30 offset:6656
	ds_load_u8 v158, v30 offset:6272
	ds_load_u8 v159, v30 offset:6528
	ds_load_u8 v160, v30 offset:6400
	ds_load_u8 v161, v30 offset:6144
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v46, v49, v46, 0xc0c0004
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v48, v53, v50, 0xc0c0004
	v_perm_b32 v49, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v50, v61, v58, 0xc0c0004
	v_perm_b32 v51, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v52, v69, v66, 0xc0c0004
	v_perm_b32 v53, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v58, v77, v74, 0xc0c0004
	v_perm_b32 v59, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v60, v101, v98, 0xc0c0004
	v_perm_b32 v61, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v74, v105, v102, 0xc0c0004
	v_perm_b32 v75, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v76, v109, v106, 0xc0c0004
	v_perm_b32 v77, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v102, v133, v130, 0xc0c0004
	v_perm_b32 v103, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v104, v137, v134, 0xc0c0004
	v_perm_b32 v106, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v107, v141, v138, 0xc0c0004
	v_perm_b32 v108, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v109, v145, v142, 0xc0c0004
	v_perm_b32 v130, v144, v143, 0xc0c0004
	v_lshl_or_b32 v69, v47, 16, v46
	v_lshl_or_b32 v68, v49, 16, v48
	v_lshl_or_b32 v67, v51, 16, v50
	v_lshl_or_b32 v66, v53, 16, v52
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v149, v146, 0xc0c0004
	v_perm_b32 v132, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v133, v153, v150, 0xc0c0004
	v_perm_b32 v134, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v135, v157, v154, 0xc0c0004
	v_perm_b32 v136, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v161, v158, 0xc0c0004
	v_perm_b32 v138, v160, v159, 0xc0c0004
	v_lshl_or_b32 v101, v59, 16, v58
	v_lshl_or_b32 v100, v61, 16, v60
	v_lshl_or_b32 v99, v75, 16, v74
	v_lshl_or_b32 v98, v77, 16, v76
	v_lshl_or_b32 v105, v103, 16, v102
	v_lshl_or_b32 v104, v106, 16, v104
	v_lshl_or_b32 v103, v108, 16, v107
	v_lshl_or_b32 v102, v130, 16, v109
	v_wmma_i32_16x16x16_iu8 v[46:53], v[66:69], v[54:57], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[66:69], v[62:65], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v132, 16, v131
	v_lshl_or_b32 v108, v134, 16, v133
	v_lshl_or_b32 v107, v136, 16, v135
	v_lshl_or_b32 v106, v138, 16, v137
	v_wmma_i32_16x16x16_iu8 v[62:69], v[102:105], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[102:105], v[86:89], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[98:101], v[78:81], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[98:101], v[82:85], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[106:109], v[90:93], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[106:109], v[94:97], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v79, 16, v111
	v_lshlrev_b32_e32 v78, 16, v110
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v57, v57, v79 :: v_dual_lshlrev_b32 v82, 16, v114
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v56, v56, v79 :: v_dual_lshlrev_b32 v85, 16, v117
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v59, v59, v79 :: v_dual_lshlrev_b32 v86, 16, v118
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v61, v61, v79 :: v_dual_lshlrev_b32 v88, 16, v120
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v87, 16, v119
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v58, v58, v79 :: v_dual_lshlrev_b32 v89, 16, v121
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v60, v60, v79 :: v_dual_lshlrev_b32 v93, 16, v125
	v_mul_f32_e32 v54, v54, v79
	v_mul_f32_e32 v55, v55, v79
	v_dual_mul_f32 v46, v46, v78 :: v_dual_add_nc_u32 v41, s29, v41
	v_dual_mul_f32 v48, v48, v78 :: v_dual_add_nc_u32 v27, s29, v27
	v_dual_mul_f32 v51, v51, v78 :: v_dual_lshlrev_b32 v80, 16, v112
	v_dual_mul_f32 v50, v50, v78 :: v_dual_lshlrev_b32 v81, 16, v113
	v_dual_mul_f32 v52, v52, v78 :: v_dual_lshlrev_b32 v83, 16, v115
	v_dual_mul_f32 v53, v53, v78 :: v_dual_lshlrev_b32 v84, 16, v116
	v_mul_f32_e32 v47, v47, v78
	v_mul_f32_e32 v49, v49, v78
	v_dual_mul_f32 v63, v63, v88 :: v_dual_lshlrev_b32 v90, 16, v122
	v_dual_mul_f32 v64, v64, v88 :: v_dual_lshlrev_b32 v91, 16, v123
	v_dual_mul_f32 v71, v71, v89 :: v_dual_lshlrev_b32 v92, 16, v124
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v65, v65, v88 :: v_dual_lshlrev_b32 v94, 16, v126
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v66, v66, v88 :: v_dual_lshlrev_b32 v95, 16, v127
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v73, v73, v89 :: v_dual_lshlrev_b32 v96, 16, v128
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v68, v68, v88 :: v_dual_lshlrev_b32 v97, 16, v129
	v_mul_f32_e32 v62, v62, v88
	v_dual_mul_f32 v67, v67, v88 :: v_dual_mul_f32 v70, v70, v89
	v_dual_mul_f32 v69, v69, v88 :: v_dual_mul_f32 v72, v72, v89
	v_dual_mul_f32 v74, v74, v89 :: v_dual_fmac_f32 v19, v48, v82
	v_dual_mul_f32 v75, v75, v89 :: v_dual_fmac_f32 v22, v54, v80
	v_dual_mul_f32 v76, v76, v89 :: v_dual_fmac_f32 v21, v46, v80
	v_dual_mul_f32 v77, v77, v89 :: v_dual_fmac_f32 v20, v56, v82
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v24, v47, v81 :: v_dual_fmac_f32 v17, v49, v83
	v_dual_fmac_f32 v15, v50, v84 :: v_dual_fmac_f32 v18, v57, v83
	v_dual_fmac_f32 v13, v51, v85 :: v_dual_fmac_f32 v16, v58, v84
	v_dual_fmac_f32 v11, v52, v86 :: v_dual_fmac_f32 v14, v59, v85
	v_dual_fmac_f32 v9, v53, v87 :: v_dual_fmac_f32 v12, v60, v86
	v_dual_fmac_f32 v25, v55, v81 :: v_dual_fmac_f32 v10, v61, v87
	v_dual_fmac_f32 v21, v62, v90 :: v_dual_fmac_f32 v24, v63, v91
	v_dual_fmac_f32 v19, v64, v92 :: v_dual_fmac_f32 v22, v70, v90
	v_dual_fmac_f32 v17, v65, v93 :: v_dual_fmac_f32 v20, v72, v92
	v_dual_fmac_f32 v15, v66, v94 :: v_dual_fmac_f32 v18, v73, v93
	v_dual_fmac_f32 v13, v67, v95 :: v_dual_fmac_f32 v16, v74, v94
	v_dual_fmac_f32 v11, v68, v96 :: v_dual_fmac_f32 v14, v75, v95
	v_dual_fmac_f32 v9, v69, v97 :: v_dual_fmac_f32 v12, v76, v96
	v_dual_fmac_f32 v25, v71, v91 :: v_dual_fmac_f32 v10, v77, v97
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v28
.LBB0_7:                                ; %._crit_edge
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_bfe_i32 v5, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v1, 0x3f8, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 7, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v6, 14, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v3, 0x7f, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v5, 0x440, v5
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s24, s25
	v_mul_lo_u32 v2, s25, v2
	s_add_i32 s0, s0, s15
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_bfe_i32 v4, v0, 7, 1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v1, v5, v1
	v_and_b32_e32 v5, 1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v0, 3, v0
	v_lshl_or_b32 v1, v6, 10, v1
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_add3_u32 v23, s0, v3, v2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v6, 2, v6
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s1, s25, 1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 0x380, v0
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 8, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	ds_store_b64 v2, v[21:22]
	ds_store_b64 v3, v[24:25]
	v_lshlrev_b32_e32 v2, 6, v5
	v_and_b32_e32 v3, 0x440, v4
	v_xad_u32 v4, v1, 16, 0
	v_xad_u32 v5, v1, 24, 0
	ds_store_b64 v4, v[19:20]
	ds_store_b64 v5, v[17:18]
	v_xor_b32_e32 v2, v3, v2
	v_xad_u32 v3, v1, 32, 0
	v_xad_u32 v4, v1, 40, 0
	ds_store_b64 v3, v[15:16]
	ds_store_b64 v4, v[13:14]
	v_or3_b32 v8, v0, v6, v2
	v_xad_u32 v0, v1, 48, 0
	v_xad_u32 v1, v1, 56, 0
	ds_store_b64 v0, v[11:12]
	ds_store_b64 v1, v[9:10]
	v_add_nc_u32_e32 v2, 0, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v9, 0x2020, v8, 0
	v_xad_u32 v4, 0x1010, v8, 0
	ds_load_b64 v[0:1], v2
	v_xad_u32 v2, 0x808, v8, 0
	v_xad_u32 v10, 0x2828, v8, 0
	v_xad_u32 v6, 0x1818, v8, 0
	ds_load_b64 v[2:3], v2
	ds_load_b64 v[4:5], v4
	ds_load_b64 v[6:7], v6
	v_xad_u32 v12, 0x3030, v8, 0
	v_xad_u32 v14, 0x3838, v8, 0
	ds_load_b64 v[8:9], v9
	ds_load_b64 v[10:11], v10
	ds_load_b64 v[12:13], v12
	ds_load_b64 v[14:15], v14
	v_lshlrev_b32_e32 v16, 2, v23
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s2, s25, 2
	s_mul_i32 s3, s25, 6
	s_lshl_b32 s4, s25, 3
	s_mul_i32 s5, s25, 10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v17, v23, s3, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s6, s25, 12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v16, s[12:15], 0 offen
	v_add_lshl_u32 v0, v23, s1, 2
	v_add_lshl_u32 v16, v23, s2, 2
	v_add_lshl_u32 v18, v23, s4, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s7, s25, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v19, v23, s5, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl_b32 s8, s25, 4
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v4, v16, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v6, v17, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v8, v18, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v10, v19, s[12:15], 0 offen
	v_add_lshl_u32 v0, v23, s6, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s9, s25, 18
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v23, s7, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s10, s25, 20
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, v23, s8, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s11, s25, 22
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v6, v23, s9, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s16, s25, 24
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v8, v23, s10, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s25, 26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v12, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v14, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v6, s[12:15], 0 offen
	buffer_atomic_add_f32 v5, v8, s[12:15], 0 offen
	v_add_lshl_u32 v0, v23, s11, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s17, s25, 28
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v1, v23, s16, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s18, s25, 30
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v23, s0, 2
	v_add_lshl_u32 v3, v23, s17, 2
	v_add_lshl_u32 v4, v23, s18, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v4, s[12:15], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_inst_pref_size 35
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 162
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4364
; TotalNumSgprs: 32
; NumVgprs: 162
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     162
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
