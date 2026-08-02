	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 0xf0, v0
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_and_b32_e32 v8, 1, v0
	v_and_b32_e32 v14, 8, v0
	v_lshlrev_b32_e32 v2, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v15, 1, v5
	v_lshlrev_b32_e32 v16, 2, v5
	v_lshlrev_b32_e32 v17, 5, v8
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
	s_ashr_i32 s16, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s15, s14, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s17, s4, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s17, s16
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s4, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s4, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s5
	v_or_b32_e32 v18, s18, v0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s15, 0xff
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	v_or_b32_e32 v1, s18, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v6, 1, v5
	v_and_b32_e32 v7, 8, v0
	v_lshlrev_b32_e32 v3, 2, v5
	v_and_b32_e32 v19, 28, v2
	v_lshlrev_b32_e32 v4, 5, v8
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr4
.LBB0_3:                                ; %Flow58
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v13, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_lshl_b32 s2, s2, 4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	v_bfe_i32 v11, v0, 6, 1
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v9, 4, v8
	v_lshlrev_b32_e32 v7, 5, v0
	v_bfe_i32 v8, v0, 2, 1
	v_lshlrev_b32_e32 v12, 4, v0
	v_mov_b32_e32 v34, 0
	s_load_b256 s[4:11], s[0:1], 0x0
	v_and_b32_e32 v7, 0x160, v7
	v_and_b32_e32 v8, 0x90, v8
	v_and_b32_e32 v19, 0xe00, v12
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 15, v0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s15, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s20, s14, 31
	v_or_b32_e32 v20, v8, v7
	v_or3_b32 v7, v7, v19, v8
	v_and_b32_e32 v6, 0x17e, v2
	v_and_b32_e32 v11, 0x90, v11
.Ltmp16:
	.loc	1 368 26 is_stmt 1              ; generate_amdgcn.py:368:26
	s_lshl_b32 s1, s3, 6
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 24
	v_xor_b32_e32 v22, 16, v7
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s3, s20, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s15, s15, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s0, s3, 27
.Ltmp21:
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v10, 1, v1
	v_or_b32_e32 v1, s2, v1
	v_add_nc_u32_e32 v43, 0, v22
	v_mov_b32_e32 v22, 0
	v_xor_b32_e32 v6, v11, v6
	v_lshrrev_b32_e32 v11, 6, v0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s20, s20, s0
.Ltmp23:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s15, 8
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s15, s20, 5
.Ltmp25:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v4, 4, v5
	v_mul_lo_u32 v5, s14, v3
	v_mul_lo_u32 v35, v1, s15
	v_dual_mov_b32 v30, 0 :: v_dual_lshlrev_b32 v1, 2, v0
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v11, 2, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_or_b32 v3, s17, 8, v3
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v36, 0, v15
	s_lshl_b32 s0, s16, 8
	v_bfe_i32 v13, v0, 3, 1
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v1, 0x1c0, v1
	v_add_nc_u32_e32 v11, 0, v11
	v_subrev_nc_u32_e32 v3, s0, v3
	v_and_b32_e32 v19, 28, v2
	v_add3_u32 v24, v36, v15, v17
	v_and_b32_e32 v12, 0xf70, v12
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v13, 0x90, v13
	v_xor_b32_e32 v21, 16, v20
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v40, 0, v20
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v45, v24, v19
	v_mov_b32_e32 v24, 0
	v_add3_u32 v23, v11, v1, v17
	v_or_b32_e32 v1, 0x80, v3
	v_xor_b32_e32 v8, v13, v12
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v2, s2, v4
	.loc	1 376 34                        ; generate_amdgcn.py:376:34
	s_mul_i32 s21, s18, s14
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_mad_u64_u32 v[11:12], null, s14, v1, v[9:10]
	v_add3_u32 v37, v5, v9, s21
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v38, 0, v6
	v_add_nc_u32_e32 v39, 0, v8
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v42, 0, v7
	v_mad_u64_u32 v[12:13], null, s14, v2, v[10:11]
	v_mov_b32_e32 v1, s36
	v_mov_b32_e32 v13, 0
	v_dual_mov_b32 v2, s37 :: v_dual_add_nc_u32 v41, 0, v21
	v_dual_mov_b32 v3, s38 :: v_dual_mov_b32 v4, s39
	v_dual_mov_b32 v5, s40 :: v_dual_mov_b32 v6, s41
	v_dual_mov_b32 v7, s42 :: v_dual_mov_b32 v8, s43
	v_add_nc_u32_e32 v44, v23, v19
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_add_nc_u32_e32 v46, s1, v10
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v47, s1, v12
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_add_nc_u32_e32 v48, s1, v9
	.loc	1 376 34                        ; generate_amdgcn.py:376:34
	v_add_nc_u32_e32 v49, s1, v37
	.loc	1 376 26 is_stmt 0              ; generate_amdgcn.py:376:26
	v_add_nc_u32_e32 v50, s1, v11
	.loc	1 369 27 is_stmt 1              ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s14, v46
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_add_nc_u32_e32 v46, 32, v46
	s_add_i32 s24, s1, 32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_dual_cndmask_b32 v51, 0x80000000, v47 :: v_dual_add_nc_u32 v54, 32, v50
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s14, v48
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_add_nc_u32_e32 v48, 32, v48
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v47, 32, v47
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e64 s0, s14, v46
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_cndmask_b32_e32 v52, 0x80000000, v49, vcc_lo
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s14, v48
	.loc	1 376 34                        ; generate_amdgcn.py:376:34
	v_add_nc_u32_e32 v49, 32, v49
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v55, 0x80000000, v47, s0
	buffer_load_u16 v62, v51, s[16:19], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s1, 5
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	v_cndmask_b32_e32 v58, 0x80000000, v54, vcc_lo
	v_cndmask_b32_e32 v56, 0x80000000, v49, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[46:49], v52, s[4:7], 0 offen
	buffer_load_b128 v[50:53], v50, s[4:7], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_u16 v63, v55, s[16:19], 0 offen
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_clause 0x1
	buffer_load_b128 v[54:57], v56, s[4:7], 0 offen
	buffer_load_b128 v[58:61], v58, s[4:7], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v64, v35, s0, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s15
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s26, s0, s25
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v65, v18, s26, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s24, 5
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(5)
	ds_store_b16 v38, v62 offset:16384
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v39, v[46:49]
	s_waitcnt vmcnt(3)
	ds_store_b128 v39, v[50:53] offset:4096
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b16 v38, v63 offset:16896
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v39, v[54:57] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[58:61] offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v82, v64, s[20:23], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v46, v65, s[8:11], 0 offen
	.loc	1 390 40 is_stmt 0              ; generate_amdgcn.py:390:40
	s_mul_i32 s24, s0, s25
	.loc	1 387 34 is_stmt 1              ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s15
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v48, v18, s24, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v47, v35, s0, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[62:65], v40 offset:16384
	ds_load_b128 v[66:69], v41 offset:16384
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[54:57], v42
	ds_load_b128 v[70:73], v42 offset:4096
	ds_load_b128 v[74:77], v43
	ds_load_b128 v[78:81], v43 offset:4096
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s3, s3, -1
	s_addk_i32 s1, 0x100
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s3, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v96, 16, v82
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_waitcnt vmcnt(0)
	ds_store_b16 v44, v46 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_u16 v85, v48, s[8:11], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v86, v47, s[20:23], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[46:53], v[54:57], v[62:65], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[70:73], v[62:65], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[74:77], v[66:69], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[66:69], v[54:61] neg_lo:[1,1,0]
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[77:80], v43 offset:8192
	ds_load_b128 v[81:84], v43 offset:12288
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v87, v47
	v_cvt_f32_i32_e32 v88, v48
	v_cvt_f32_i32_e32 v89, v49
	v_cvt_f32_i32_e32 v90, v54
	v_cvt_f32_i32_e32 v91, v55
	v_cvt_f32_i32_e32 v92, v56
	v_cvt_f32_i32_e32 v93, v57
	v_cvt_f32_i32_e32 v94, v61
	v_cvt_f32_i32_e32 v95, v46
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[46:49], v36 offset:17408
	ds_load_b128 v[61:64], v36 offset:17424
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[65:68], v40 offset:16896
	ds_load_b128 v[69:72], v41 offset:16896
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[54:57], v42 offset:8192
	ds_load_b128 v[73:76], v42 offset:12288
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v87, v96, v87
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v104, 16, v47
	v_lshlrev_b32_e32 v105, 16, v48
	v_lshlrev_b32_e32 v107, 16, v61
	v_lshlrev_b32_e32 v109, 16, v63
	v_and_b32_e32 v111, 0xffff0000, v46
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v33, v87, v104
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v88, v96, v88
	v_mul_f32_e32 v90, v96, v90
	v_mul_f32_e32 v89, v96, v89
	v_mul_f32_e32 v97, v96, v50
	v_mul_f32_e32 v98, v96, v51
	v_mul_f32_e32 v91, v96, v91
	v_mul_f32_e32 v92, v96, v92
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v27, v97, v107 :: v_dual_lshlrev_b32 v106, 16, v49
	v_dual_fmac_f32 v31, v88, v105 :: v_dual_lshlrev_b32 v108, 16, v62
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v99, v96, v52 :: v_dual_and_b32 v112, 0xffff0000, v47
	v_dual_mul_f32 v100, v96, v53 :: v_dual_mul_f32 v95, v95, v96
	v_mul_f32_e32 v93, v96, v93
	v_mul_f32_e32 v101, v96, v58
	v_mul_f32_e32 v102, v96, v59
	v_mul_f32_e32 v103, v96, v60
	v_mul_f32_e32 v94, v96, v94
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v96, 16, v46
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v29, v89, v106 :: v_dual_lshlrev_b32 v110, 16, v64
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v113, 0xffff0000, v48
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v25, v98, v108
	v_dual_fmac_f32 v32, v91, v112 :: v_dual_and_b32 v63, 0xffff0000, v63
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v114, 0xffff0000, v49
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[46:53], v[54:57], v[65:68], v[1:8] neg_lo:[1,1,0]
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v34, v90, v111 :: v_dual_and_b32 v115, 0xffff0000, v61
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[54:61], v[73:76], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[77:80], v[69:72], v[46:53] neg_lo:[1,1,0]
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v23, v99, v109 :: v_dual_and_b32 v62, 0xffff0000, v62
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[54:61], v[81:84], v[69:72], v[54:61] neg_lo:[1,1,0]
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v21, v103, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v63, v48
	v_cvt_f32_i32_e32 v67, v52
	v_cvt_f32_i32_e32 v77, v46
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v13, v95, v96 :: v_dual_fmac_f32 v22, v100, v110
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v65, v50
	v_cvt_f32_i32_e32 v66, v51
	v_cvt_f32_i32_e32 v68, v53
	v_cvt_f32_i32_e32 v69, v54
	v_cvt_f32_i32_e32 v70, v55
	v_cvt_f32_i32_e32 v71, v56
	v_cvt_f32_i32_e32 v72, v57
	v_cvt_f32_i32_e32 v73, v58
	v_cvt_f32_i32_e32 v74, v59
	v_cvt_f32_i32_e32 v75, v60
	v_cvt_f32_i32_e32 v76, v61
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v78, 16, v86
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_and_b32_e32 v64, 0xffff0000, v64
	v_lshlrev_b32_e32 v46, 16, v85
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v30, v92, v113 :: v_dual_mul_f32 v63, v78, v63
	v_fmac_f32_e32 v24, v102, v62
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v62, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v77, v77, v78 :: v_dual_fmac_f32 v20, v94, v64
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v64, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v67, v78, v67
	ds_store_b32 v45, v46 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v36 offset:17408
	ds_load_b128 v[50:53], v36 offset:17424
	ds_load_b128 v[54:57], v36 offset:17920
	ds_load_b128 v[58:61], v36 offset:17936
	v_mul_f32_e32 v62, v78, v62
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v33, v62, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v68, v78, v68
	v_dual_mul_f32 v71, v78, v71 :: v_dual_fmac_f32 v28, v93, v114
	v_dual_mul_f32 v65, v78, v65 :: v_dual_fmac_f32 v26, v101, v115
	v_mul_f32_e32 v69, v78, v69
	v_mul_f32_e32 v64, v78, v64
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v66, v78, v66 :: v_dual_fmac_f32 v23, v67, v52
	v_mul_f32_e32 v72, v78, v72
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v73, v78, v73 :: v_dual_fmac_f32 v34, v69, v54
	v_mul_f32_e32 v74, v78, v74
	v_mul_f32_e32 v76, v78, v76
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v22, v68, v53 :: v_dual_mul_f32 v75, v78, v75
	v_fmac_f32_e32 v30, v71, v56
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v70, v78, v70
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v13, v77, v46
	v_fmac_f32_e32 v31, v63, v48
	v_fmac_f32_e32 v27, v65, v50
	v_fmac_f32_e32 v29, v64, v49
	v_dual_fmac_f32 v25, v66, v51 :: v_dual_fmac_f32 v28, v72, v57
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v26, v73, v58
	v_dual_fmac_f32 v24, v74, v59 :: v_dual_fmac_f32 v21, v75, v60
	v_fmac_f32_e32 v32, v70, v55
	v_fmac_f32_e32 v20, v76, v61
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v18 :: v_dual_mov_b32 v6, v15
	v_dual_mov_b32 v7, v14 :: v_dual_mov_b32 v4, v17
	v_mov_b32_e32 v3, v16
.LBB0_7:                                ; %._crit_edge
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 7, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_or3_b32 v3, v3, v4, v19
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	v_lshl_or_b32 v5, v0, 2, v6
	v_cndmask_b32_e64 v2, 0x2040, 0, vcc_lo
	v_xad_u32 v4, 0x808, v3, 0
	v_xad_u32 v8, 0x1818, v3, 0
	v_xad_u32 v9, 0x1c1c, v3, 0
	v_xad_u32 v10, 0x2040, v3, 0
	v_xor_b32_e32 v2, v5, v2
	v_xad_u32 v11, 0x2444, v3, 0
	v_xad_u32 v12, 0x2848, v3, 0
	v_xad_u32 v14, 0x3050, v3, 0
	v_xad_u32 v15, 0x3454, v3, 0
	v_lshl_or_b32 v2, v0, 10, v2
	v_xad_u32 v16, 0x3858, v3, 0
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s25, 3
	s_mul_i32 s1, s25, 5
	v_mad_u64_u32 v[0:1], null, s2, s25, v[1:2]
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v5, 0, v2
	v_xad_u32 v1, v2, 12, 0
	v_xad_u32 v6, v2, 4, 0
	v_xad_u32 v7, v2, 8, 0
	ds_store_2addr_stride64_b32 v5, v13, v34 offset1:2
	ds_store_2addr_stride64_b32 v6, v33, v32 offset1:2
	ds_store_2addr_stride64_b32 v7, v31, v30 offset1:2
	v_xad_u32 v5, v2, 16, 0
	ds_store_2addr_stride64_b32 v1, v29, v28 offset1:2
	v_xad_u32 v1, v2, 24, 0
	v_xad_u32 v6, v2, 20, 0
	v_xad_u32 v2, v2, 28, 0
	ds_store_2addr_stride64_b32 v5, v27, v26 offset1:2
	ds_store_2addr_stride64_b32 v6, v25, v24 offset1:2
	ds_store_2addr_stride64_b32 v1, v23, v21 offset1:2
	ds_store_2addr_stride64_b32 v2, v22, v20 offset1:2
	v_add_nc_u32_e32 v1, 0, v3
	v_xad_u32 v2, 0x404, v3, 0
	v_xad_u32 v5, 0xc0c, v3, 0
	v_xad_u32 v6, 0x1010, v3, 0
	v_xad_u32 v7, 0x1414, v3, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	ds_load_b32 v2, v2
	ds_load_b32 v4, v4
	ds_load_b32 v5, v5
	ds_load_b32 v6, v6
	ds_load_b32 v7, v7
	ds_load_b32 v8, v8
	ds_load_b32 v9, v9
	v_xad_u32 v13, 0x2c4c, v3, 0
	v_xad_u32 v3, 0x3c5c, v3, 0
	v_lshlrev_b32_e32 v17, 2, v0
	ds_load_b32 v10, v10
	ds_load_b32 v11, v11
	ds_load_b32 v12, v12
	ds_load_b32 v13, v13
	ds_load_b32 v14, v14
	ds_load_b32 v15, v15
	ds_load_b32 v16, v16
	ds_load_b32 v3, v3
	v_add_lshl_u32 v19, v0, s0, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s3, s25, 6
	s_mul_i32 s4, s25, 7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_add_u32 v18, s25, 3, v17
	v_lshl_add_u32 v20, s25, 4, v17
	v_add_lshl_u32 v21, v0, s1, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s5, s25, 9
	s_mul_i32 s6, s25, 10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v1, v17, s[12:15], 0 offen
	v_add_lshl_u32 v1, v0, s25, 2
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v1, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v18, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v5, v19, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v6, v20, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v7, v21, s[12:15], 0 offen
	v_add_lshl_u32 v1, v0, s3, 2
	v_add_lshl_u32 v2, v0, s4, 2
	v_lshl_add_u32 v4, s25, 5, v17
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s7, s25, 11
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, v0, s5, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s8, s25, 12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v6, v0, s6, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s9, s25, 13
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v8, v1, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v9, v2, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v10, v4, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v11, v5, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v12, v6, s[12:15], 0 offen
	v_add_lshl_u32 v1, v0, s7, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s10, s25, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v0, s8, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s11, s25, 15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, v0, s9, 2
	v_add_lshl_u32 v5, v0, s10, 2
	v_add_lshl_u32 v0, v0, s11, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v13, v1, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v14, v2, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v15, v4, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v16, v5, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v3, v0, s[12:15], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 26
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 116
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3252
; TotalNumSgprs: 46
; NumVgprs: 116
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 46
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     116
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
