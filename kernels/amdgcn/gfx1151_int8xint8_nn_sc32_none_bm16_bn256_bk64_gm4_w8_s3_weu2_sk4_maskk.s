	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s18, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v6, 0xf0, v0
	v_and_b32_e32 v10, 8, v0
	v_lshlrev_b32_e32 v3, 1, v0
	v_lshlrev_b32_e32 v4, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v11, 1, v6
	v_lshlrev_b32_e32 v12, 2, v6
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 15
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
	s_sub_i32 s5, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s4, s18, 0xff
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s5, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s5, s5, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	v_or_b32_e32 v13, s5, v0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s4, 0xff
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_lshl_b32 s7, s29, 5
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	v_or_b32_e32 v1, s5, v0
	v_dual_mov_b32 v2, s7 :: v_dual_lshlrev_b32 v7, 1, v6
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v8, 8, v0
	v_lshlrev_b32_e32 v5, 2, v6
	v_and_b32_e32 v15, 28, v3
	v_and_b32_e32 v14, 32, v4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr15
                                        ; implicit-def: $vgpr14
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow113
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v17, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s2, s2, 4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s4, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s6, s18, 31
.Ltmp16:
	.loc	1 368 26 is_stmt 1              ; generate_amdgcn.py:368:26
	s_lshl_b32 s1, s3, 6
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 24
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s3, s6, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s4, s4, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s0, s3, 27
.Ltmp21:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 4, v6
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s6, s6, s0
.Ltmp23:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s4, 8
	s_mov_b32 s4, 0
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s19, s6, 5
	s_mov_b32 s6, s4
	v_mul_lo_u32 v2, s18, v2
.Ltmp25:
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v16, 3, v6
	v_bfe_i32 v6, v0, 2, 1
	v_bfe_i32 v7, v0, 3, 1
	v_bfe_i32 v8, v0, 6, 1
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	s_mul_i32 s7, s2, s18
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
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 15, v0
	v_mov_b32_e32 v17, 0
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v15, 0x60, v4
	v_add_nc_u32_e32 v36, 0, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v22, 1, v1
	v_lshl_or_b32 v18, v1, 9, v16
	v_mov_b32_e32 v30, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_add3_u32 v27, v2, v22, s7
	s_mov_b32 s7, s4
	v_and_b32_e32 v9, 0x17e, v3
	v_and_b32_e32 v6, 0x90, v6
	v_lshlrev_b32_e32 v14, 4, v0
	v_and_b32_e32 v7, 0x110, v7
	v_and_b32_e32 v8, 0x90, v8
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v5, 4, v1
	v_or_b32_e32 v1, s2, v1
	v_and_b32_e32 v14, 0xe00, v14
	v_xor_b32_e32 v7, v6, v7
	v_xor_b32_e32 v8, v8, v9
	v_lshrrev_b32_e32 v9, 6, v0
	v_and_or_b32 v6, 0x160, v4, v6
	v_mul_lo_u32 v2, s29, v16
	v_or3_b32 v7, v15, v14, v7
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v14, 2, v0
	v_and_b32_e32 v9, 2, v9
	v_xor_b32_e32 v20, 0x110, v18
	v_xor_b32_e32 v21, 16, v6
	v_mul_lo_u32 v35, v1, s19
	v_and_b32_e32 v1, 0x1c0, v14
	v_dual_mov_b32 v31, 0 :: v_dual_and_b32 v14, 32, v4
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v4, 0, v9
	v_xor_b32_e32 v19, 0x90, v18
	v_xor_b32_e32 v23, 16, v7
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v15, 28, v3
	v_add_nc_u32_e32 v40, 0, v20
	v_add_nc_u32_e32 v42, 0, v21
	v_mov_b32_e32 v21, 0
	v_add3_u32 v25, v36, v11, v14
	v_mov_b32_e32 v20, 0
	v_add3_u32 v24, v4, v1, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v9, v2, v5, s5
	s_mov_b32 s5, s4
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v37, 0, v8
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v41, 0, v6
	v_add_nc_u32_e32 v43, 0, v7
	v_dual_mov_b32 v1, s4 :: v_dual_add_nc_u32 v38, 0, v18
	v_add_nc_u32_e32 v39, 0, v19
	v_add_nc_u32_e32 v44, 0, v23
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_add_nc_u32 v45, v24, v15
	v_add_nc_u32_e32 v46, v25, v15
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v23, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s28, s29, 5
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
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s6, s6, s1
	v_or_b32_e32 v49, s6, v22
	v_or_b32_e32 v50, s6, v16
	s_or_b32 s5, s6, 32
	v_mad_u64_u32 v[47:48], null, s6, s29, v[9:10]
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v51, s6, v27
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v48, s5, v22
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e64 s0, s18, v49
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v50
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v52, s5, v16
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v53, s5, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 374 26 is_stmt 0              ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v49, 0x80000000, v51, s0
	.loc	1 369 27 is_stmt 1              ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e64 s0, s18, v48
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v48, s29, v47
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v50, 0x80000000, v47, vcc_lo
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v47, s28, v47
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	buffer_load_u16 v71, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v63, 0x80000000, v53, s0
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s18, v52
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v51, 0x80000000, v48, vcc_lo
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v55, s29, v47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v56, 0x80000000, v47, s0
	s_clause 0x1
	buffer_load_b128 v[47:50], v50, s[24:27], 0 offen
	buffer_load_b128 v[51:54], v51, s[24:27], 0 offen
	v_cndmask_b32_e64 v59, 0x80000000, v55, s0
	s_clause 0x1
	buffer_load_b128 v[55:58], v56, s[24:27], 0 offen
	buffer_load_b128 v[59:62], v59, s[24:27], 0 offen
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	buffer_load_u16 v72, v63, s[20:23], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s6, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s6, s0, s29
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v63, v35, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v64, v13, s6, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s19
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s5, 5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v73, 0x80000000, v63 :: v_dual_cndmask_b32 v74, 0x80000000, v64
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s5, s0, s29
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s19
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s4, 1
	s_cmp_lg_u32 s4, s3
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(3)
	v_perm_b32 v63, v51, v47, 0x5010400
	v_perm_b32 v51, v51, v47, 0x7030602
	v_perm_b32 v64, v52, v48, 0x5010400
	v_perm_b32 v52, v52, v48, 0x7030602
	v_perm_b32 v65, v53, v49, 0x5010400
	v_perm_b32 v53, v53, v49, 0x7030602
	v_perm_b32 v66, v54, v50, 0x5010400
	v_perm_b32 v67, v54, v50, 0x7030602
	v_and_b16 v47.l, 0xff, v63.l
	v_lshrrev_b32_e32 v68, 8, v63
	v_lshrrev_b32_e32 v69, 24, v63
	v_and_b16 v47.h, 0xff, v63.h
	v_and_b16 v48.l, 0xff, v51.l
	v_lshrrev_b32_e32 v63, 8, v51
	v_lshrrev_b32_e32 v70, 24, v51
	v_and_b16 v48.h, 0xff, v51.h
	v_and_b16 v49.l, 0xff, v64.l
	v_lshrrev_b32_e32 v75, 8, v64
	v_lshrrev_b32_e32 v76, 24, v64
	v_and_b16 v49.h, 0xff, v64.h
	v_and_b16 v50.l, 0xff, v52.l
	v_lshrrev_b32_e32 v64, 8, v52
	v_lshrrev_b32_e32 v77, 24, v52
	v_and_b16 v50.h, 0xff, v52.h
	v_and_b16 v51.l, 0xff, v65.l
	v_lshrrev_b32_e32 v78, 8, v65
	v_lshrrev_b32_e32 v79, 24, v65
	v_and_b16 v51.h, 0xff, v65.h
	v_and_b16 v52.l, 0xff, v53.l
	v_lshrrev_b32_e32 v65, 8, v53
	v_lshrrev_b32_e32 v80, 24, v53
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.l, 0xff, v66.l
	v_lshrrev_b32_e32 v81, 8, v66
	v_lshrrev_b32_e32 v82, 24, v66
	v_and_b16 v53.h, 0xff, v66.h
	v_and_b16 v54.l, 0xff, v67.l
	v_lshrrev_b32_e32 v66, 8, v67
	v_lshrrev_b32_e32 v83, 24, v67
	v_and_b16 v54.h, 0xff, v67.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v67, v59, v55, 0x5010400
	v_perm_b32 v84, v59, v55, 0x7030602
	v_perm_b32 v85, v60, v56, 0x5010400
	v_perm_b32 v86, v60, v56, 0x7030602
	v_perm_b32 v87, v61, v57, 0x5010400
	v_perm_b32 v88, v61, v57, 0x7030602
	v_perm_b32 v89, v62, v58, 0x5010400
	v_perm_b32 v90, v62, v58, 0x7030602
	v_lshlrev_b16 v55.l, 8, v68.l
	v_lshlrev_b16 v57.l, 8, v75.l
	v_lshrrev_b32_e32 v75, 8, v67
	v_lshlrev_b16 v55.h, 8, v69.l
	v_lshlrev_b16 v57.h, 8, v76.l
	v_lshrrev_b32_e32 v76, 24, v67
	v_lshlrev_b16 v56.l, 8, v63.l
	v_lshlrev_b16 v58.h, 8, v77.l
	v_lshrrev_b32_e32 v77, 8, v84
	v_lshlrev_b16 v56.h, 8, v70.l
	v_lshlrev_b16 v59.l, 8, v78.l
	v_lshrrev_b32_e32 v78, 24, v84
	v_lshlrev_b16 v58.l, 8, v64.l
	v_lshlrev_b16 v59.h, 8, v79.l
	v_lshlrev_b16 v60.l, 8, v65.l
	v_lshlrev_b16 v60.h, 8, v80.l
	v_lshlrev_b16 v61.l, 8, v81.l
	v_lshlrev_b16 v61.h, 8, v82.l
	v_lshlrev_b16 v62.l, 8, v66.l
	v_lshlrev_b16 v62.h, 8, v83.l
	v_and_b16 v63.l, 0xff, v67.l
	v_and_b16 v63.h, 0xff, v67.h
	v_and_b16 v64.l, 0xff, v84.l
	v_and_b16 v64.h, 0xff, v84.h
	v_and_b16 v65.l, 0xff, v85.l
	v_lshrrev_b32_e32 v79, 8, v85
	v_lshrrev_b32_e32 v80, 24, v85
	v_and_b16 v65.h, 0xff, v85.h
	v_and_b16 v66.l, 0xff, v86.l
	v_lshrrev_b32_e32 v81, 8, v86
	v_lshrrev_b32_e32 v82, 24, v86
	v_and_b16 v66.h, 0xff, v86.h
	v_and_b16 v67.l, 0xff, v87.l
	v_lshrrev_b32_e32 v83, 8, v87
	v_lshrrev_b32_e32 v84, 24, v87
	v_and_b16 v67.h, 0xff, v87.h
	v_and_b16 v68.l, 0xff, v88.l
	v_lshrrev_b32_e32 v85, 8, v88
	v_lshrrev_b32_e32 v86, 24, v88
	v_and_b16 v68.h, 0xff, v88.h
	v_and_b16 v69.l, 0xff, v89.l
	v_lshrrev_b32_e32 v87, 8, v89
	v_lshrrev_b32_e32 v88, 24, v89
	v_and_b16 v69.h, 0xff, v89.h
	v_lshrrev_b32_e32 v89, 8, v90
	v_lshrrev_b32_e32 v91, 24, v90
	v_or_b16 v47.l, v47.l, v55.l
	v_lshlrev_b16 v55.l, 8, v75.l
	v_or_b16 v47.h, v47.h, v55.h
	v_lshlrev_b16 v55.h, 8, v76.l
	v_or_b16 v48.l, v48.l, v56.l
	v_lshlrev_b16 v56.l, 8, v77.l
	v_or_b16 v48.h, v48.h, v56.h
	v_lshlrev_b16 v56.h, 8, v78.l
	v_and_b16 v70.l, 0xff, v90.l
	v_and_b16 v70.h, 0xff, v90.h
	v_or_b16 v49.l, v49.l, v57.l
	v_or_b16 v49.h, v49.h, v57.h
	v_or_b16 v50.l, v50.l, v58.l
	v_or_b16 v50.h, v50.h, v58.h
	v_or_b16 v51.l, v51.l, v59.l
	v_or_b16 v51.h, v51.h, v59.h
	v_or_b16 v52.l, v52.l, v60.l
	v_or_b16 v52.h, v52.h, v60.h
	v_or_b16 v53.l, v53.l, v61.l
	v_or_b16 v53.h, v53.h, v61.h
	v_or_b16 v54.l, v54.l, v62.l
	v_or_b16 v54.h, v54.h, v62.h
	v_lshlrev_b16 v57.l, 8, v79.l
	v_lshlrev_b16 v57.h, 8, v80.l
	v_lshlrev_b16 v58.l, 8, v81.l
	v_lshlrev_b16 v58.h, 8, v82.l
	v_lshlrev_b16 v59.l, 8, v83.l
	v_lshlrev_b16 v59.h, 8, v84.l
	v_lshlrev_b16 v60.l, 8, v85.l
	v_lshlrev_b16 v60.h, 8, v86.l
	v_lshlrev_b16 v61.l, 8, v87.l
	v_lshlrev_b16 v61.h, 8, v88.l
	v_lshlrev_b16 v62.l, 8, v89.l
	v_lshlrev_b16 v62.h, 8, v91.l
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_store_b16 v37, v71 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v38, v47
	ds_store_b16_d16_hi v38, v47 offset:32
	ds_store_b16 v38, v48 offset:64
	ds_store_b16_d16_hi v38, v48 offset:96
	ds_store_b16 v39, v49
	ds_store_b16_d16_hi v39, v49 offset:32
	ds_store_b16 v39, v50 offset:64
	ds_store_b16_d16_hi v39, v50 offset:96
	ds_store_b16 v40, v51
	ds_store_b16_d16_hi v40, v51 offset:32
	ds_store_b16 v40, v52 offset:64
	ds_store_b16_d16_hi v40, v52 offset:96
	ds_store_b16 v38, v53 offset:384
	ds_store_b16_d16_hi v38, v53 offset:416
	ds_store_b16 v38, v54 offset:448
	ds_store_b16_d16_hi v38, v54 offset:480
	v_or_b16 v47.l, v63.l, v55.l
	v_or_b16 v47.h, v63.h, v55.h
	v_or_b16 v48.l, v64.l, v56.l
	v_or_b16 v48.h, v64.h, v56.h
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v49.l, v65.l, v57.l
	v_or_b16 v49.h, v65.h, v57.h
	v_or_b16 v50.l, v66.l, v58.l
	v_or_b16 v50.h, v66.h, v58.h
	v_or_b16 v51.l, v67.l, v59.l
	v_or_b16 v51.h, v67.h, v59.h
	v_or_b16 v52.l, v68.l, v60.l
	v_or_b16 v52.h, v68.h, v60.h
	v_or_b16 v53.l, v69.l, v61.l
	v_or_b16 v53.h, v69.h, v61.h
	v_or_b16 v54.l, v70.l, v62.l
	v_or_b16 v54.h, v70.h, v62.h
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v37, v72 offset:16896
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v38, v47 offset:8192
	ds_store_b16_d16_hi v38, v47 offset:8224
	ds_store_b16 v38, v48 offset:8256
	ds_store_b16_d16_hi v38, v48 offset:8288
	ds_store_b16 v39, v49 offset:8192
	ds_store_b16_d16_hi v39, v49 offset:8224
	ds_store_b16 v39, v50 offset:8256
	ds_store_b16_d16_hi v39, v50 offset:8288
	ds_store_b16 v40, v51 offset:8192
	ds_store_b16_d16_hi v40, v51 offset:8224
	ds_store_b16 v40, v52 offset:8256
	ds_store_b16_d16_hi v40, v52 offset:8288
	ds_store_b16 v38, v53 offset:8576
	ds_store_b16_d16_hi v38, v53 offset:8608
	ds_store_b16 v38, v54 offset:8640
	ds_store_b16_d16_hi v38, v54 offset:8672
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v47, v74, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v83, v73, s[8:11], 0 offen
	v_add_lshl_u32 v48, v35, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v49, v13, s5, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[63:66], v41 offset:16384
	ds_load_b128 v[67:70], v42 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[55:58], v43
	ds_load_b128 v[71:74], v43 offset:4096
	ds_load_b128 v[75:78], v44
	ds_load_b128 v[79:82], v44 offset:4096
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v45, v47 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_u16 v86, v49, s[12:15], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v87, v48, s[8:11], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[47:54], v[55:58], v[63:66], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[71:74], v[63:66], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[75:78], v[67:70], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[79:82], v[67:70], v[55:62] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v88, v48
	v_cvt_f32_i32_e32 v89, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v90, v50
	v_cvt_f32_i32_e32 v91, v55
	v_cvt_f32_i32_e32 v92, v56
	v_cvt_f32_i32_e32 v93, v57
	v_cvt_f32_i32_e32 v94, v58
	v_cvt_f32_i32_e32 v95, v62
	v_cvt_f32_i32_e32 v96, v47
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[47:50], v36 offset:17408
	ds_load_b128 v[62:65], v36 offset:17424
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[66:69], v41 offset:16896
	ds_load_b128 v[70:73], v42 offset:16896
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[55:58], v43 offset:8192
	ds_load_b128 v[74:77], v43 offset:12288
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(5)
	v_lshlrev_b32_e32 v105, 16, v48
	s_waitcnt lgkmcnt(4)
	v_lshlrev_b32_e32 v108, 16, v62
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v97, 16, v83
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[78:81], v44 offset:8192
	ds_load_b128 v[82:85], v44 offset:12288
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v112, 0xffff0000, v47
	v_lshlrev_b32_e32 v106, 16, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v98, v97, v51 :: v_dual_lshlrev_b32 v107, 16, v50
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v109, 16, v63
	v_lshlrev_b32_e32 v110, 16, v64
	v_and_b32_e32 v114, 0xffff0000, v49
	v_and_b32_e32 v116, 0xffff0000, v62
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v26, v98, v108 :: v_dual_mul_f32 v91, v97, v91
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v93, v97, v93
	v_mul_f32_e32 v88, v97, v88
	v_mul_f32_e32 v89, v97, v89
	v_mul_f32_e32 v90, v97, v90
	v_dual_mul_f32 v99, v97, v52 :: v_dual_mul_f32 v96, v96, v97
	v_mul_f32_e32 v100, v97, v53
	v_mul_f32_e32 v101, v97, v54
	v_mul_f32_e32 v92, v97, v92
	v_mul_f32_e32 v94, v97, v94
	v_mul_f32_e32 v102, v97, v59
	v_mul_f32_e32 v103, v97, v60
	v_mul_f32_e32 v104, v97, v61
	v_mul_f32_e32 v95, v97, v95
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v97, 16, v47
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v34, v91, v112 :: v_dual_lshlrev_b32 v111, 16, v65
	v_dual_fmac_f32 v24, v99, v109 :: v_dual_and_b32 v113, 0xffff0000, v48
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v20, v101, v111 :: v_dual_and_b32 v115, 0xffff0000, v50
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[55:58], v[66:69], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[74:77], v[66:69], v[1:8] neg_lo:[1,1,0]
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v33, v88, v105 :: v_dual_and_b32 v64, 0xffff0000, v64
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[78:81], v[70:73], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[82:85], v[70:73], v[55:62] neg_lo:[1,1,0]
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v32, v92, v113 :: v_dual_and_b32 v63, 0xffff0000, v63
	v_dual_fmac_f32 v30, v93, v114 :: v_dual_and_b32 v65, 0xffff0000, v65
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v69, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v70, v55
	v_cvt_f32_i32_e32 v78, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v29, v90, v107 :: v_dual_fmac_f32 v18, v95, v65
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v65, v50
	v_cvt_f32_i32_e32 v66, v51
	v_cvt_f32_i32_e32 v67, v52
	v_cvt_f32_i32_e32 v68, v53
	v_cvt_f32_i32_e32 v71, v56
	v_cvt_f32_i32_e32 v72, v57
	v_cvt_f32_i32_e32 v73, v58
	v_cvt_f32_i32_e32 v74, v59
	v_cvt_f32_i32_e32 v75, v60
	v_cvt_f32_i32_e32 v76, v61
	v_cvt_f32_i32_e32 v77, v62
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v31, v89, v106 :: v_dual_fmac_f32 v28, v94, v115
	v_fmac_f32_e32 v17, v96, v97
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v79, 16, v87
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v19, v104, v64
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v64, v49
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v47, 16, v86
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v69, v79, v69
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v23, v103, v63
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v63, v48
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v64, v79, v64
	ds_store_b32 v46, v47 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v36 offset:17408
	ds_load_b128 v[51:54], v36 offset:17424
	ds_load_b128 v[55:58], v36 offset:17920
	ds_load_b128 v[59:62], v36 offset:17936
	v_mul_f32_e32 v67, v79, v67
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v31, v64, v49 :: v_dual_fmac_f32 v24, v67, v52
	v_dual_fmac_f32 v21, v100, v110 :: v_dual_mul_f32 v78, v78, v79
	v_dual_fmac_f32 v25, v102, v116 :: v_dual_mul_f32 v66, v79, v66
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v65, v79, v65
	v_dual_mul_f32 v68, v79, v68 :: v_dual_fmac_f32 v17, v78, v47
	v_mul_f32_e32 v70, v79, v70
	v_mul_f32_e32 v72, v79, v72
	v_mul_f32_e32 v63, v79, v63
	v_mul_f32_e32 v73, v79, v73
	v_dual_mul_f32 v74, v79, v74 :: v_dual_fmac_f32 v21, v68, v53
	v_mul_f32_e32 v75, v79, v75
	v_mul_f32_e32 v77, v79, v77
	v_mul_f32_e32 v71, v79, v71
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v26, v66, v51
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v76, v79, v76 :: v_dual_fmac_f32 v29, v65, v50
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v34, v70, v55
	v_fmac_f32_e32 v20, v69, v54
	v_dual_fmac_f32 v30, v72, v57 :: v_dual_fmac_f32 v33, v63, v48
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v28, v73, v58 :: v_dual_fmac_f32 v25, v74, v59
	v_fmac_f32_e32 v23, v75, v60
	v_dual_fmac_f32 v19, v76, v61 :: v_dual_fmac_f32 v18, v77, v62
	v_fmac_f32_e32 v32, v71, v56
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, s28 :: v_dual_mov_b32 v1, v13
	v_dual_mov_b32 v7, v11 :: v_dual_mov_b32 v8, v10
	v_mov_b32_e32 v5, v12
.LBB0_7:                                ; %._crit_edge
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 7, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v8
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_lshl_or_b32 v4, v0, 2, v7
	v_cndmask_b32_e64 v3, 0x2040, 0, vcc_lo
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s29, 3
	s_mul_i32 s1, s29, 5
	s_mul_i32 s3, s29, 6
	s_mul_i32 s4, s29, 7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v3, v4, v3
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s5, s29, 9
	s_mul_i32 s6, s29, 10
	s_mul_i32 s7, s29, 11
	s_mul_i32 s8, s29, 12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v3, v0, 10, v3
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mad_u64_u32 v[0:1], null, s2, s29, v[1:2]
	s_mul_i32 s9, s29, 13
	s_mul_i32 s10, s29, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v4, 0, v3
	v_xad_u32 v6, v3, 4, 0
	v_xad_u32 v7, v3, 8, 0
	v_xad_u32 v1, v3, 12, 0
	ds_store_2addr_stride64_b32 v4, v17, v34 offset1:2
	ds_store_2addr_stride64_b32 v6, v33, v32 offset1:2
	ds_store_2addr_stride64_b32 v7, v31, v30 offset1:2
	v_xad_u32 v4, v3, 16, 0
	v_xad_u32 v6, v3, 20, 0
	ds_store_2addr_stride64_b32 v1, v29, v28 offset1:2
	v_xad_u32 v1, v3, 24, 0
	ds_store_2addr_stride64_b32 v4, v26, v25 offset1:2
	ds_store_2addr_stride64_b32 v6, v24, v23 offset1:2
	v_or3_b32 v4, v5, v14, v15
	v_xad_u32 v3, v3, 28, 0
	ds_store_2addr_stride64_b32 v1, v21, v19 offset1:2
	ds_store_2addr_stride64_b32 v3, v20, v18 offset1:2
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
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s11, s29, 15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v1, v18, s[16:19], 0 offen
	v_add_lshl_u32 v1, v0, s29, 2
	v_lshl_add_u32 v19, s29, 3, v18
	v_lshl_add_u32 v21, s29, 4, v18
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v3, v1, s[16:19], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v5, v19, s[16:19], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v20, s[16:19], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v7, v21, s[16:19], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v8, v22, s[16:19], 0 offen
	v_add_lshl_u32 v1, v0, s3, 2
	v_add_lshl_u32 v3, v0, s4, 2
	v_add_nc_u32_e32 v2, v2, v18
	v_add_lshl_u32 v5, v0, s5, 2
	v_add_lshl_u32 v6, v0, s6, 2
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v9, v1, s[16:19], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v10, v3, s[16:19], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v11, v2, s[16:19], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v12, v5, s[16:19], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v13, v6, s[16:19], 0 offen
	v_add_lshl_u32 v1, v0, s7, 2
	v_add_lshl_u32 v2, v0, s8, 2
	v_add_lshl_u32 v3, v0, s9, 2
	v_add_lshl_u32 v5, v0, s10, 2
	v_add_lshl_u32 v0, v0, s11, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v14, v1, s[16:19], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v15, v2, s[16:19], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v16, v3, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v17, v5, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v4, v0, s[16:19], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_inst_pref_size 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 117
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4748
; TotalNumSgprs: 32
; NumVgprs: 117
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     117
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
