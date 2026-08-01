	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 0xf0, v0
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_and_b32_e32 v6, 1, v0
	v_and_b32_e32 v11, 8, v0
	v_lshlrev_b32_e32 v2, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v12, 1, v5
	v_lshlrev_b32_e32 v13, 2, v5
	v_lshlrev_b32_e32 v14, 5, v6
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s21, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s20, 15
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
	s_ashr_i32 s17, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s19, s16, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s18, s2, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s18, s17
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s2, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s2, s2, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s4, s4, s5
	v_or_b32_e32 v15, s2, v0
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s4, s4, s6
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s19, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	v_or_b32_e32 v1, s2, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v7, 1, v5
	v_and_b32_e32 v8, 8, v0
	v_lshlrev_b32_e32 v3, 2, v5
	v_and_b32_e32 v16, 28, v2
	v_lshlrev_b32_e32 v4, 5, v6
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr16
                                        ; implicit-def: $vgpr4
.LBB0_3:                                ; %Flow58
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v10, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s24, 0
	v_bfe_i32 v9, v0, 2, 1
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	v_lshlrev_b32_e32 v8, 5, v0
	v_lshlrev_b32_e32 v10, 4, v0
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s0, s19, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:366:26 ]
	s_add_i32 s1, s16, 31
.Ltmp16:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 15, v0
	v_and_b32_e32 v8, 0x160, v8
	v_and_b32_e32 v9, 0x90, v9
	v_and_b32_e32 v18, 0xe00, v10
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s0, 24
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s20, s1, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s19, s19, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_lshr_b32 s0, s20, 27
	v_bfe_i32 v17, v0, 3, 1
	v_or_b32_e32 v19, v9, v8
	v_or3_b32 v8, v8, v18, v9
	v_or_b32_e32 v9, s14, v3
	s_add_i32 s1, s1, s0
.Ltmp21:
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v4, 1, v0
	v_bfe_i32 v16, v0, 6, 1
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:366:26 ]
	s_ashr_i32 s22, s1, 5
	v_dual_mov_b32 v31, 0 :: v_dual_and_b32 v10, 0xf70, v10
	v_and_b32_e32 v17, 0x90, v17
	v_mul_lo_u32 v32, v9, s22
	v_lshrrev_b32_e32 v9, 6, v0
.Ltmp23:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v5, 4, v5
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v1, 4, v6
	v_mul_lo_u32 v6, s16, v4
	v_and_b32_e32 v7, 0x17e, v2
	v_and_b32_e32 v16, 0x90, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_lshl_or_b32 v4, s18, 8, v4
	v_xor_b32_e32 v17, v17, v10
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v10, 2, v0
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v9, 2, v9
	s_lshl_b32 s0, s17, 8
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v5, s14, v5
	v_xor_b32_e32 v18, 16, v19
	v_add_nc_u32_e32 v38, 0, v19
	v_mov_b32_e32 v19, 0
	v_xor_b32_e32 v7, v16, v7
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v16, 28, v2
	v_subrev_nc_u32_e32 v2, s0, v4
	v_dual_mov_b32 v27, 0 :: v_dual_and_b32 v10, 0x1c0, v10
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v4, 0, v9
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v33, 0, v12
	v_mul_lo_u32 v5, s16, v5
	v_or_b32_e32 v2, 0x80, v2
	v_xor_b32_e32 v20, 16, v8
	v_add3_u32 v21, v4, v10, v14
	v_add3_u32 v22, v33, v12, v14
	.loc	1 376 34                        ; generate_amdgcn.py:376:34
	s_mul_i32 s23, s2, s16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_mad_u64_u32 v[9:10], null, s16, v2, v[1:2]
	v_lshl_add_u32 v35, v3, 1, v5
	v_mov_b32_e32 v10, 0
	v_add3_u32 v34, v6, v1, s23
	v_add_nc_u32_e32 v36, 0, v7
	v_add_nc_u32_e32 v40, 0, v8
	v_mov_b32_e32 v1, s24
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v37, 0, v17
	v_add_nc_u32_e32 v39, 0, v18
	v_add_nc_u32_e32 v41, 0, v20
	v_mov_b32_e32 v20, 0
	v_dual_mov_b32 v2, s25 :: v_dual_mov_b32 v3, s26
	v_dual_mov_b32 v4, s27 :: v_dual_mov_b32 v5, s28
	v_dual_mov_b32 v6, s29 :: v_dual_mov_b32 v7, s30
	v_mov_b32_e32 v8, s31
	v_add_nc_u32_e32 v42, v21, v16
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v43, v22, v16
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v17, 0
	.loc	1 368 26                        ; generate_amdgcn.py:368:26
	s_lshl_b32 s15, s3, 6
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s20, s19, 8
	s_mov_b32 s0, s4
	s_mov_b32 s1, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s2
	s_mov_b32 s7, s3
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s18, s2
	s_mov_b32 s19, s3
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s2
	s_mov_b32 s11, s3
.Ltmp25:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v52, s15, v35
	.loc	1 376 34                        ; generate_amdgcn.py:376:34
	v_add_nc_u32_e32 v53, s15, v34
	.loc	1 376 26 is_stmt 0              ; generate_amdgcn.py:376:26
	v_add_nc_u32_e32 v56, s15, v9
	.loc	1 386 29 is_stmt 1              ; generate_amdgcn.py:386:29
	s_ashr_i32 s23, s15, 5
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	s_add_i32 s24, s15, 32
	.loc	1 374 26 is_stmt 0              ; generate_amdgcn.py:374:26
	buffer_load_u16 v60, v52, s[0:3], 0 offen
	.loc	1 376 26 is_stmt 1              ; generate_amdgcn.py:376:26
	s_clause 0x1
	buffer_load_b128 v[44:47], v53, s[4:7], 0 offen
	buffer_load_b128 v[48:51], v56, s[4:7], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_u16 v61, v52, s[0:3], 0 offen offset:32
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_clause 0x1
	buffer_load_b128 v[52:55], v53, s[4:7], 0 offen offset:32
	buffer_load_b128 v[56:59], v56, s[4:7], 0 offen offset:32
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s25, s23, s21
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v62, v32, s23, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v63, v15, s25, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s23, s22
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(5)
	ds_store_b16 v36, v60 offset:16384
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v37, v[44:47]
	s_waitcnt vmcnt(3)
	ds_store_b128 v37, v[48:51] offset:4096
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b16 v36, v61 offset:16896
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v37, v[52:55] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v37, v[56:59] offset:12288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v44, v63, s[8:11], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v80, v62, s[16:19], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s23, s24, 5
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[60:63], v38 offset:16384
	ds_load_b128 v[64:67], v39 offset:16384
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[52:55], v40
	ds_load_b128 v[68:71], v40 offset:4096
	ds_load_b128 v[72:75], v41
	ds_load_b128 v[76:79], v41 offset:4096
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s24, s23, s21
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v45, v32, s23, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v46, v15, s24, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s23, s22
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s20, s20, -1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_addk_i32 s15, 0x100
	s_cmp_lg_u32 s20, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	ds_store_b16 v42, v44 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v83, v46, s[8:11], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v84, v45, s[16:19], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[60:63], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[68:71], v[60:63], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[72:75], v[64:67], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[76:79], v[64:67], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v85, v45
	v_cvt_f32_i32_e32 v86, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v87, v47
	v_cvt_f32_i32_e32 v88, v52
	v_cvt_f32_i32_e32 v89, v53
	v_cvt_f32_i32_e32 v90, v54
	v_cvt_f32_i32_e32 v91, v55
	v_cvt_f32_i32_e32 v92, v59
	v_cvt_f32_i32_e32 v93, v44
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	ds_load_b128 v[44:47], v33 offset:17408
	ds_load_b128 v[59:62], v33 offset:17424
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[63:66], v38 offset:16896
	ds_load_b128 v[67:70], v39 offset:16896
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[52:55], v40 offset:8192
	ds_load_b128 v[71:74], v40 offset:12288
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(5)
	v_and_b32_e32 v109, 0xffff0000, v44
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v94, 16, v80
	.loc	1 376 26                        ; generate_amdgcn.py:376:26
	ds_load_b128 v[75:78], v41 offset:8192
	ds_load_b128 v[79:82], v41 offset:12288
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v102, 16, v45
	v_lshlrev_b32_e32 v103, 16, v46
	v_lshlrev_b32_e32 v104, 16, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v88, v94, v88
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(6)
	v_lshlrev_b32_e32 v108, 16, v62
	v_and_b32_e32 v110, 0xffff0000, v45
	v_and_b32_e32 v111, 0xffff0000, v46
	v_lshlrev_b32_e32 v105, 16, v59
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v31, v88, v109
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v85, v94, v85
	v_mul_f32_e32 v86, v94, v86
	v_mul_f32_e32 v87, v94, v87
	v_mul_f32_e32 v95, v94, v48
	v_mul_f32_e32 v96, v94, v49
	v_mul_f32_e32 v97, v94, v50
	v_dual_mul_f32 v98, v94, v51 :: v_dual_mul_f32 v93, v93, v94
	v_mul_f32_e32 v89, v94, v89
	v_dual_mul_f32 v90, v94, v90 :: v_dual_lshlrev_b32 v107, 16, v61
	v_dual_mul_f32 v91, v94, v91 :: v_dual_lshlrev_b32 v106, 16, v60
	v_mul_f32_e32 v99, v94, v56
	v_mul_f32_e32 v100, v94, v57
	v_mul_f32_e32 v101, v94, v58
	v_dual_mul_f32 v92, v94, v92 :: v_dual_and_b32 v113, 0xffff0000, v59
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_lshlrev_b32_e32 v94, 16, v44
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v19, v98, v108 :: v_dual_and_b32 v112, 0xffff0000, v47
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[63:66], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[71:74], v[63:66], v[1:8] neg_lo:[1,1,0]
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v30, v85, v102 :: v_dual_and_b32 v61, 0xffff0000, v61
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[75:78], v[67:70], v[44:51] neg_lo:[1,1,0]
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v29, v89, v110 :: v_dual_and_b32 v60, 0xffff0000, v60
	v_dual_fmac_f32 v27, v90, v111 :: v_dual_and_b32 v62, 0xffff0000, v62
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[79:82], v[67:70], v[52:59] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v63, v48
	v_cvt_f32_i32_e32 v75, v44
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v26, v87, v104 :: v_dual_fmac_f32 v17, v92, v62
	v_dual_fmac_f32 v24, v95, v105 :: v_dual_fmac_f32 v21, v100, v60
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v60, v45
	v_cvt_f32_i32_e32 v62, v47
	v_cvt_f32_i32_e32 v64, v49
	v_cvt_f32_i32_e32 v65, v50
	v_cvt_f32_i32_e32 v66, v51
	v_cvt_f32_i32_e32 v67, v52
	v_cvt_f32_i32_e32 v68, v53
	v_cvt_f32_i32_e32 v69, v54
	v_cvt_f32_i32_e32 v70, v55
	v_cvt_f32_i32_e32 v71, v56
	v_cvt_f32_i32_e32 v72, v57
	v_cvt_f32_i32_e32 v73, v58
	v_cvt_f32_i32_e32 v74, v59
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v28, v86, v103 :: v_dual_fmac_f32 v25, v91, v112
	v_dual_fmac_f32 v22, v96, v106 :: v_dual_fmac_f32 v23, v99, v113
	v_fmac_f32_e32 v10, v93, v94
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v84
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v18, v101, v61
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v61, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v61, v76, v61 :: v_dual_lshlrev_b32 v44, 16, v83
	ds_store_b32 v43, v44 offset:17408
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v33 offset:17408
	ds_load_b128 v[48:51], v33 offset:17424
	ds_load_b128 v[52:55], v33 offset:17920
	ds_load_b128 v[56:59], v33 offset:17936
	v_mul_f32_e32 v66, v76, v66
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v28, v61, v46 :: v_dual_fmac_f32 v19, v66, v51
	v_dual_fmac_f32 v20, v97, v107 :: v_dual_mul_f32 v75, v75, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v67, v76, v67
	v_mul_f32_e32 v62, v76, v62
	v_mul_f32_e32 v63, v76, v63
	v_dual_mul_f32 v65, v76, v65 :: v_dual_fmac_f32 v10, v75, v44
	v_mul_f32_e32 v70, v76, v70
	v_mul_f32_e32 v64, v76, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v71, v76, v71 :: v_dual_fmac_f32 v24, v63, v48
	v_mul_f32_e32 v72, v76, v72
	v_dual_mul_f32 v73, v76, v73 :: v_dual_fmac_f32 v20, v65, v50
	v_mul_f32_e32 v74, v76, v74
	v_mul_f32_e32 v68, v76, v68
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v31, v67, v52
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v69, v76, v69 :: v_dual_fmac_f32 v26, v62, v47
	v_dual_mul_f32 v60, v76, v60 :: v_dual_fmac_f32 v25, v70, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v22, v64, v49 :: v_dual_fmac_f32 v27, v69, v54
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v23, v71, v56 :: v_dual_fmac_f32 v30, v60, v45
	v_dual_fmac_f32 v21, v72, v57 :: v_dual_fmac_f32 v18, v73, v58
	v_fmac_f32_e32 v17, v74, v59
	v_fmac_f32_e32 v29, v68, v53
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v15 :: v_dual_mov_b32 v4, v14
	v_dual_mov_b32 v7, v12 :: v_dual_mov_b32 v8, v11
	v_mov_b32_e32 v3, v13
.LBB0_7:                                ; %._crit_edge
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 7, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v8
	v_or3_b32 v3, v3, v4, v16
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	v_lshl_or_b32 v5, v0, 2, v7
	v_cndmask_b32_e64 v2, 0x2040, 0, vcc_lo
	v_xad_u32 v4, 0x808, v3, 0
	v_xad_u32 v8, 0x1818, v3, 0
	v_xad_u32 v9, 0x1c1c, v3, 0
	v_xad_u32 v11, 0x2444, v3, 0
	v_xor_b32_e32 v2, v5, v2
	v_xad_u32 v12, 0x2848, v3, 0
	v_xad_u32 v13, 0x2c4c, v3, 0
	v_xad_u32 v14, 0x3050, v3, 0
	v_xad_u32 v15, 0x3454, v3, 0
	v_lshl_or_b32 v2, v0, 10, v2
	v_xad_u32 v16, 0x3858, v3, 0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s21, 3
	s_mul_i32 s1, s21, 5
	s_mul_i32 s2, s21, 6
	v_mad_u64_u32 v[0:1], null, s14, s21, v[1:2]
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v5, 0, v2
	v_xad_u32 v1, v2, 12, 0
	v_xad_u32 v6, v2, 4, 0
	v_xad_u32 v7, v2, 8, 0
	ds_store_2addr_stride64_b32 v5, v10, v31 offset1:2
	ds_store_2addr_stride64_b32 v6, v30, v29 offset1:2
	ds_store_2addr_stride64_b32 v7, v28, v27 offset1:2
	v_xad_u32 v5, v2, 16, 0
	ds_store_2addr_stride64_b32 v1, v26, v25 offset1:2
	v_xad_u32 v1, v2, 24, 0
	v_xad_u32 v6, v2, 20, 0
	v_xad_u32 v2, v2, 28, 0
	ds_store_2addr_stride64_b32 v5, v24, v23 offset1:2
	ds_store_2addr_stride64_b32 v6, v22, v21 offset1:2
	ds_store_2addr_stride64_b32 v1, v20, v18 offset1:2
	ds_store_2addr_stride64_b32 v2, v19, v17 offset1:2
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
	v_xad_u32 v10, 0x2040, v3, 0
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
	s_mov_b32 s14, 0x7ffffffe
	v_lshl_add_u32 v18, s21, 3, v17
	v_add_lshl_u32 v19, v0, s0, 2
	v_lshl_add_u32 v20, s21, 4, v17
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s3, s21, 7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v21, v0, s1, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v1, v17, s[12:15], 0 offen
	v_add_lshl_u32 v1, v0, s21, 2
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
	v_add_lshl_u32 v1, v0, s2, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s21, 9
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v0, s3, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s5, s21, 10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_add_u32 v4, s21, 5, v17
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s6, s21, 11
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v5, v0, s4, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s7, s21, 12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v6, v0, s5, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s8, s21, 13
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
	v_add_lshl_u32 v1, v0, s6, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s9, s21, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v2, v0, s7, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s10, s21, 15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v4, v0, s8, 2
	v_add_lshl_u32 v5, v0, s9, 2
	v_add_lshl_u32 v0, v0, s10, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_inst_pref_size 25
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 114
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3168
; TotalNumSgprs: 34
; NumVgprs: 114
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     114
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
