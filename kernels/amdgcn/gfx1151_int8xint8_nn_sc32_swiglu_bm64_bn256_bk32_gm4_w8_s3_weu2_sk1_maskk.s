	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
	v_mov_b32_e32 v135, v0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v87, 0xf0, v135
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v89, 3, v87
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s26, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s6
	v_readfirstlane_b32 s6, v0
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
	s_lshl_b32 s7, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s7
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s6
	s_sub_i32 s18, 0, s6
	v_rcp_iflag_f32_e32 v0, s8
	s_load_b256 s[8:15], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s17, v0
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s17, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_xor_b32 s10, s2, s16
	s_mul_i32 s18, s18, s17
	s_mov_b64 s[28:29], s[14:15]
	s_mul_hi_u32 s4, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s4
	s_mul_hi_u32 s4, s5, s17
	s_ashr_i32 s17, s10, 31
	s_mul_i32 s11, s4, s6
	s_add_i32 s10, s4, 1
	s_sub_i32 s5, s5, s11
	s_mov_b32 s11, 0x31027000
	s_sub_i32 s18, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_mov_b32 s39, s11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s18, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s6
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s18, s4
	.loc	1 368 26                        ; generate_amdgcn.py:368:26
	s_lshl_b32 s30, s3, 5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s6, s31, 31
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s17
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v1, s30, v89
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s3, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s4, s6, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s4, s4, 27
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s27, 1
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s3, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s6, s4
.Ltmp19:
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s6, 31
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_mul_lo_u32 v0, s34, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s18, s34, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v88, 15, v135
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 374 34 is_stmt 0              ; generate_amdgcn.py:374:34
	s_mul_i32 s3, s33, s31
	.loc	1 378 34 is_stmt 1              ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v90, v88, 4, v0
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s26, s18, v90
	v_add_nc_u32_e32 v1, s34, v0
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_dual_cndmask_b32 v2, 0x80000000, v0 :: v_dual_lshlrev_b32 v91, 5, v135
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[6:9], v2, s[36:39], 0 offen
	buffer_load_b128 v[10:13], v1, s[36:39], 0 offen
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v1, s27, v0
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v0, s27, 6, v0
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v182, v88, 9, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v2, s34, v1
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v4, s27, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 378 26 is_stmt 1              ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v103, 0x90, v182
	v_add_nc_u32_e32 v56, 0, v182
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[14:17], v1, s[36:39], 0 offen
	buffer_load_b128 v[18:21], v2, s[36:39], 0 offen
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_and_b32_e32 v1, 3, v135
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v135
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v5, s34, v4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v104, 0x110, v182
	v_add_nc_u32_e32 v57, 0, v103
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v99, 3, v1
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_mul_lo_u32 v2, s31, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v58, 0, v104
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v3, s30, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add3_u32 v100, v2, v99, s3
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v2, s30, v100
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s6, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s35, s30, 32
	v_or_b32_e32 v3, s35, v89
	v_or_b32_e32 v38, s35, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s4, s31, v3
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v3, s34, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x1
	buffer_load_b128 v[22:25], v0, s[36:39], 0 offen
	buffer_load_b128 v[26:29], v3, s[36:39], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v0, 0x80000000, v4, s4
	v_cndmask_b32_e64 v3, 0x80000000, v5, s4
	s_clause 0x1
	buffer_load_b128 v[30:33], v0, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v3, s[36:39], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v38
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v38, s35, v100
	.loc	1 374 26 is_stmt 0              ; generate_amdgcn.py:374:26
	v_bfe_i32 v2, v135, 4, 1
	v_and_b32_e32 v3, 16, v135
	buffer_load_b64 v[51:52], v0, s[8:11], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s6, 0x5f
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	v_and_b32_e32 v5, 0x90, v2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v2, 16, v88
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[53:54], v38, s[8:11], 0 offen
	v_lshlrev_b32_e32 v0, 3, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v4, 0x778, v0
	v_lshlrev_b32_e32 v0, 4, v135
	v_xor_b32_e32 v101, v5, v4
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 32, v88
	v_or_b32_e32 v5, 48, v88
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v55, 0, v101
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(8)
	v_perm_b32 v38, v10, v6, 0x5010400
	v_perm_b32 v10, v10, v6, 0x7030602
	v_perm_b32 v39, v11, v7, 0x5010400
	v_perm_b32 v11, v11, v7, 0x7030602
	v_perm_b32 v40, v12, v8, 0x5010400
	v_perm_b32 v12, v12, v8, 0x7030602
	v_perm_b32 v41, v13, v9, 0x5010400
	v_perm_b32 v42, v13, v9, 0x7030602
	v_and_b16 v6.l, 0xff, v38.l
	v_lshrrev_b32_e32 v43, 8, v38
	v_lshrrev_b32_e32 v44, 24, v38
	v_and_b16 v6.h, 0xff, v38.h
	v_and_b16 v7.l, 0xff, v10.l
	v_lshrrev_b32_e32 v38, 8, v10
	v_lshrrev_b32_e32 v45, 24, v10
	v_and_b16 v7.h, 0xff, v10.h
	v_and_b16 v8.l, 0xff, v39.l
	v_lshrrev_b32_e32 v46, 8, v39
	v_lshrrev_b32_e32 v47, 24, v39
	v_and_b16 v8.h, 0xff, v39.h
	v_and_b16 v9.l, 0xff, v11.l
	v_lshrrev_b32_e32 v39, 8, v11
	v_lshrrev_b32_e32 v48, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	v_and_b16 v10.l, 0xff, v40.l
	v_lshrrev_b32_e32 v49, 8, v40
	v_lshrrev_b32_e32 v50, 24, v40
	v_and_b16 v10.h, 0xff, v40.h
	v_and_b16 v11.l, 0xff, v12.l
	v_lshrrev_b32_e32 v40, 8, v12
	v_lshrrev_b32_e32 v59, 24, v12
	v_and_b16 v11.h, 0xff, v12.h
	v_and_b16 v12.l, 0xff, v41.l
	v_lshrrev_b32_e32 v60, 8, v41
	v_lshrrev_b32_e32 v61, 24, v41
	v_and_b16 v12.h, 0xff, v41.h
	v_and_b16 v13.l, 0xff, v42.l
	v_lshrrev_b32_e32 v41, 8, v42
	v_lshrrev_b32_e32 v62, 24, v42
	v_and_b16 v13.h, 0xff, v42.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(6)
	v_perm_b32 v42, v18, v14, 0x5010400
	v_perm_b32 v63, v18, v14, 0x7030602
	v_perm_b32 v64, v19, v15, 0x5010400
	v_perm_b32 v65, v19, v15, 0x7030602
	v_perm_b32 v66, v20, v16, 0x5010400
	v_perm_b32 v67, v20, v16, 0x7030602
	v_perm_b32 v68, v21, v17, 0x5010400
	v_perm_b32 v69, v21, v17, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v14.l, 8, v43.l
	v_lshlrev_b16 v14.h, 8, v44.l
	v_lshlrev_b16 v15.l, 8, v38.l
	v_lshlrev_b16 v15.h, 8, v45.l
	v_lshlrev_b16 v16.l, 8, v46.l
	v_lshlrev_b16 v16.h, 8, v47.l
	v_lshlrev_b16 v17.l, 8, v39.l
	v_lshlrev_b16 v17.h, 8, v48.l
	v_lshlrev_b16 v18.l, 8, v49.l
	v_lshlrev_b16 v18.h, 8, v50.l
	v_lshlrev_b16 v19.l, 8, v40.l
	v_lshlrev_b16 v19.h, 8, v59.l
	v_lshlrev_b16 v20.l, 8, v60.l
	v_lshlrev_b16 v20.h, 8, v61.l
	v_lshlrev_b16 v21.l, 8, v41.l
	v_lshlrev_b16 v21.h, 8, v62.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v38.l, 0xff, v42.l
	v_lshrrev_b32_e32 v46, 8, v42
	v_lshrrev_b32_e32 v47, 24, v42
	v_and_b16 v38.h, 0xff, v42.h
	v_and_b16 v39.l, 0xff, v63.l
	v_lshrrev_b32_e32 v48, 8, v63
	v_lshrrev_b32_e32 v49, 24, v63
	v_and_b16 v39.h, 0xff, v63.h
	v_and_b16 v40.l, 0xff, v64.l
	v_lshrrev_b32_e32 v50, 8, v64
	v_lshrrev_b32_e32 v59, 24, v64
	v_and_b16 v40.h, 0xff, v64.h
	v_and_b16 v41.l, 0xff, v65.l
	v_lshrrev_b32_e32 v60, 8, v65
	v_lshrrev_b32_e32 v61, 24, v65
	v_and_b16 v41.h, 0xff, v65.h
	v_and_b16 v42.l, 0xff, v66.l
	v_lshrrev_b32_e32 v62, 8, v66
	v_lshrrev_b32_e32 v63, 24, v66
	v_and_b16 v42.h, 0xff, v66.h
	v_and_b16 v43.l, 0xff, v67.l
	v_lshrrev_b32_e32 v64, 8, v67
	v_lshrrev_b32_e32 v65, 24, v67
	v_and_b16 v43.h, 0xff, v67.h
	v_and_b16 v44.l, 0xff, v68.l
	v_lshrrev_b32_e32 v66, 8, v68
	v_lshrrev_b32_e32 v67, 24, v68
	v_and_b16 v44.h, 0xff, v68.h
	v_and_b16 v45.l, 0xff, v69.l
	v_lshrrev_b32_e32 v68, 8, v69
	v_lshrrev_b32_e32 v70, 24, v69
	v_and_b16 v45.h, 0xff, v69.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(4)
	v_perm_b32 v69, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(2)
	v_perm_b32 v75, v34, v30, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v71, v27, v23, 0x5010400
	v_perm_b32 v27, v27, v23, 0x7030602
	v_perm_b32 v72, v28, v24, 0x5010400
	v_perm_b32 v28, v28, v24, 0x7030602
	v_perm_b32 v73, v29, v25, 0x5010400
	v_perm_b32 v74, v29, v25, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v76, v35, v31, 0x5010400
	v_perm_b32 v35, v35, v31, 0x7030602
	v_perm_b32 v77, v36, v32, 0x5010400
	v_perm_b32 v36, v36, v32, 0x7030602
	v_perm_b32 v78, v37, v33, 0x5010400
	v_perm_b32 v79, v37, v33, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v10.h, v10.h, v18.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v14.l, 8, v46.l
	v_lshlrev_b16 v15.l, 8, v48.l
	v_lshlrev_b16 v18.h, 8, v63.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v46, 8, v69
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v11.l, v11.l, v19.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v14.h, 8, v47.l
	v_lshlrev_b16 v15.h, 8, v49.l
	v_lshlrev_b16 v19.l, 8, v64.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v47, 24, v69
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v11.h, v11.h, v19.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v16.l, 8, v50.l
	v_lshlrev_b16 v19.h, 8, v65.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v48, 8, v26
	v_or_b16 v8.h, v8.h, v16.h
	v_or_b16 v12.l, v12.l, v20.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v16.h, 8, v59.l
	v_lshlrev_b16 v20.l, 8, v66.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v49, 24, v26
	v_or_b16 v13.h, v13.h, v21.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v21.h, 8, v70.l
	v_lshrrev_b32_e32 v70, 8, v75
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v12.h, v12.h, v20.h
	v_or_b16 v13.l, v13.l, v21.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v17.l, 8, v60.l
	v_lshlrev_b16 v17.h, 8, v61.l
	v_lshlrev_b16 v18.l, 8, v62.l
	v_lshlrev_b16 v20.h, 8, v67.l
	v_lshlrev_b16 v21.l, 8, v68.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v22.l, 0xff, v69.l
	v_and_b16 v22.h, 0xff, v69.h
	v_and_b16 v23.l, 0xff, v26.l
	v_and_b16 v23.h, 0xff, v26.h
	v_and_b16 v24.l, 0xff, v71.l
	v_lshrrev_b32_e32 v50, 8, v71
	v_lshrrev_b32_e32 v59, 24, v71
	v_and_b16 v24.h, 0xff, v71.h
	v_and_b16 v25.l, 0xff, v27.l
	v_lshrrev_b32_e32 v60, 8, v27
	v_lshrrev_b32_e32 v61, 24, v27
	v_and_b16 v25.h, 0xff, v27.h
	v_and_b16 v26.l, 0xff, v72.l
	v_lshrrev_b32_e32 v62, 8, v72
	v_lshrrev_b32_e32 v63, 24, v72
	v_and_b16 v26.h, 0xff, v72.h
	v_and_b16 v27.l, 0xff, v28.l
	v_lshrrev_b32_e32 v64, 8, v28
	v_lshrrev_b32_e32 v65, 24, v28
	v_and_b16 v27.h, 0xff, v28.h
	v_and_b16 v28.l, 0xff, v73.l
	v_lshrrev_b32_e32 v66, 8, v73
	v_lshrrev_b32_e32 v67, 24, v73
	v_and_b16 v28.h, 0xff, v73.h
	v_and_b16 v29.l, 0xff, v74.l
	v_lshrrev_b32_e32 v68, 8, v74
	v_lshrrev_b32_e32 v69, 24, v74
	v_and_b16 v29.h, 0xff, v74.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v30.l, 0xff, v75.l
	v_lshrrev_b32_e32 v71, 24, v75
	v_and_b16 v30.h, 0xff, v75.h
	v_and_b16 v31.l, 0xff, v34.l
	v_lshrrev_b32_e32 v72, 8, v34
	v_lshrrev_b32_e32 v73, 24, v34
	v_and_b16 v31.h, 0xff, v34.h
	v_and_b16 v32.l, 0xff, v76.l
	v_lshrrev_b32_e32 v74, 8, v76
	v_lshrrev_b32_e32 v75, 24, v76
	v_and_b16 v32.h, 0xff, v76.h
	v_and_b16 v33.l, 0xff, v35.l
	v_lshrrev_b32_e32 v76, 8, v35
	v_lshrrev_b32_e32 v80, 24, v35
	v_and_b16 v33.h, 0xff, v35.h
	v_and_b16 v34.l, 0xff, v77.l
	v_lshrrev_b32_e32 v81, 8, v77
	v_lshrrev_b32_e32 v82, 24, v77
	v_and_b16 v34.h, 0xff, v77.h
	v_and_b16 v35.l, 0xff, v36.l
	v_lshrrev_b32_e32 v77, 8, v36
	v_lshrrev_b32_e32 v83, 24, v36
	v_and_b16 v35.h, 0xff, v36.h
	v_and_b16 v36.l, 0xff, v78.l
	v_lshrrev_b32_e32 v84, 8, v78
	v_lshrrev_b32_e32 v85, 24, v78
	v_and_b16 v36.h, 0xff, v78.h
	v_lshrrev_b32_e32 v78, 8, v79
	v_lshrrev_b32_e32 v86, 24, v79
	v_or_b16 v14.l, v38.l, v14.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v56, v6
	ds_store_b16_d16_hi v56, v6 offset:32
	ds_store_b16 v56, v7 offset:64
	ds_store_b16_d16_hi v56, v7 offset:96
	ds_store_b16_d16_hi v57, v8 offset:32
	ds_store_b16 v57, v9 offset:64
	ds_store_b16_d16_hi v57, v9 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v6.h, v39.l, v15.l
	v_or_b16 v15.l, v42.h, v18.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v18.h, 8, v46.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v7.l, v39.h, v15.h
	v_or_b16 v15.h, v43.l, v19.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v19.l, 8, v47.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v7.h, v40.l, v16.l
	v_or_b16 v16.l, v43.h, v19.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v19.h, 8, v48.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v8.h, v40.h, v16.h
	v_or_b16 v16.h, v44.l, v20.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v20.l, 8, v49.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v6.l, v38.h, v14.h
	v_lshlrev_b16 v42.h, 8, v70.l
	v_and_b16 v37.l, 0xff, v79.l
	v_and_b16 v37.h, 0xff, v79.h
	v_or_b16 v9.l, v41.l, v17.l
	v_or_b16 v9.h, v41.h, v17.h
	v_or_b16 v14.h, v42.l, v18.l
	v_or_b16 v17.l, v44.h, v20.h
	v_or_b16 v17.h, v45.l, v21.l
	v_or_b16 v18.l, v45.h, v21.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v20.h, 8, v50.l
	v_lshlrev_b16 v21.l, 8, v59.l
	v_lshlrev_b16 v21.h, 8, v60.l
	v_lshlrev_b16 v38.l, 8, v61.l
	v_lshlrev_b16 v38.h, 8, v62.l
	v_lshlrev_b16 v39.l, 8, v63.l
	v_lshlrev_b16 v39.h, 8, v64.l
	v_lshlrev_b16 v40.l, 8, v65.l
	v_lshlrev_b16 v40.h, 8, v66.l
	v_lshlrev_b16 v41.l, 8, v67.l
	v_lshlrev_b16 v41.h, 8, v68.l
	v_lshlrev_b16 v42.l, 8, v69.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v43.l, 8, v71.l
	v_lshlrev_b16 v43.h, 8, v72.l
	v_lshlrev_b16 v44.l, 8, v73.l
	v_lshlrev_b16 v44.h, 8, v74.l
	v_lshlrev_b16 v45.l, 8, v75.l
	v_lshlrev_b16 v45.h, 8, v76.l
	v_lshlrev_b16 v46.l, 8, v80.l
	v_lshlrev_b16 v46.h, 8, v81.l
	v_lshlrev_b16 v47.l, 8, v82.l
	v_lshlrev_b16 v47.h, 8, v77.l
	v_lshlrev_b16 v48.l, 8, v83.l
	v_lshlrev_b16 v48.h, 8, v84.l
	v_lshlrev_b16 v49.l, 8, v85.l
	v_lshlrev_b16 v49.h, 8, v78.l
	v_lshlrev_b16 v50.l, 8, v86.l
	ds_store_b16 v56, v14 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v57, v8
	ds_store_b16 v58, v10
	ds_store_b16_d16_hi v58, v10 offset:32
	ds_store_b16 v58, v11 offset:64
	ds_store_b16_d16_hi v58, v11 offset:96
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v55, v[51:52] offset:32768
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v56, v6 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v56, v12 offset:384
	ds_store_b16_d16_hi v56, v12 offset:416
	ds_store_b16 v56, v13 offset:448
	ds_store_b16_d16_hi v56, v13 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v56, v6 offset:16416
	ds_store_b16 v56, v7 offset:16480
	ds_store_b16_d16_hi v57, v7 offset:16384
	ds_store_b16_d16_hi v57, v8 offset:16416
	ds_store_b16 v57, v9 offset:16448
	ds_store_b16_d16_hi v57, v9 offset:16480
	ds_store_b16_d16_hi v58, v14 offset:16384
	ds_store_b16 v58, v15 offset:16416
	ds_store_b16_d16_hi v58, v15 offset:16448
	ds_store_b16 v58, v16 offset:16480
	ds_store_b16_d16_hi v56, v16 offset:16768
	ds_store_b16 v56, v17 offset:16800
	ds_store_b16_d16_hi v56, v17 offset:16832
	ds_store_b16 v56, v18 offset:16864
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v6.l, v22.l, v18.h
	v_or_b16 v6.h, v22.h, v19.l
	v_or_b16 v7.l, v23.l, v19.h
	v_or_b16 v7.h, v23.h, v20.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v14.l, v30.l, v42.h
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v8.l, v24.l, v20.h
	v_or_b16 v8.h, v24.h, v21.l
	v_or_b16 v9.l, v25.l, v21.h
	v_or_b16 v9.h, v25.h, v38.l
	v_or_b16 v10.l, v26.l, v38.h
	v_or_b16 v10.h, v26.h, v39.l
	v_or_b16 v11.l, v27.l, v39.h
	v_or_b16 v11.h, v27.h, v40.l
	v_or_b16 v12.l, v28.l, v40.h
	v_or_b16 v12.h, v28.h, v41.l
	v_or_b16 v13.l, v29.l, v41.h
	v_or_b16 v13.h, v29.h, v42.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v14.h, v30.h, v43.l
	v_or_b16 v15.l, v31.l, v43.h
	v_or_b16 v15.h, v31.h, v44.l
	v_or_b16 v16.l, v32.l, v44.h
	v_or_b16 v16.h, v32.h, v45.l
	v_or_b16 v17.l, v33.l, v45.h
	v_or_b16 v17.h, v33.h, v46.l
	v_or_b16 v18.l, v34.l, v46.h
	v_or_b16 v18.h, v34.h, v47.l
	v_or_b16 v19.l, v35.l, v47.h
	v_or_b16 v19.h, v35.h, v48.l
	v_or_b16 v20.l, v36.l, v48.h
	v_or_b16 v20.h, v36.h, v49.l
	v_or_b16 v21.l, v37.l, v49.h
	v_or_b16 v21.h, v37.h, v50.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v56, v6 offset:8192
	ds_store_b16_d16_hi v56, v6 offset:8224
	ds_store_b16 v56, v7 offset:8256
	ds_store_b16_d16_hi v56, v7 offset:8288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v56, v14 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v57, v8 offset:8192
	ds_store_b16_d16_hi v57, v8 offset:8224
	ds_store_b16 v57, v9 offset:8256
	ds_store_b16_d16_hi v57, v9 offset:8288
	ds_store_b16 v58, v10 offset:8192
	ds_store_b16_d16_hi v58, v10 offset:8224
	ds_store_b16 v58, v11 offset:8256
	ds_store_b16_d16_hi v58, v11 offset:8288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v55, v[53:54] offset:34816
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v56, v15 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v56, v12 offset:8576
	ds_store_b16_d16_hi v56, v12 offset:8608
	ds_store_b16 v56, v13 offset:8640
	ds_store_b16_d16_hi v56, v13 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v56, v14 offset:24608
	ds_store_b16_d16_hi v56, v15 offset:24672
	ds_store_b16 v57, v16 offset:24576
	ds_store_b16_d16_hi v57, v16 offset:24608
	ds_store_b16 v57, v17 offset:24640
	ds_store_b16_d16_hi v57, v17 offset:24672
	ds_store_b16 v58, v18 offset:24576
	ds_store_b16_d16_hi v58, v18 offset:24608
	ds_store_b16 v58, v19 offset:24640
	ds_store_b16_d16_hi v58, v19 offset:24672
	ds_store_b16 v56, v20 offset:24960
	ds_store_b16_d16_hi v56, v20 offset:24992
	ds_store_b16 v56, v21 offset:25024
	ds_store_b16_d16_hi v56, v21 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_lshlrev_b32_e32 v36, 5, v135
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v8, 0xe00, v0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_and_b32_e32 v7, 4, v135
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v6, 8, v135
	s_mov_b32 s4, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_and_b32_e32 v9, 0x160, v36
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v8, v1, 5, v8
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow821
	v_or_b32_e32 v2, s33, v2
	v_or_b32_e32 v4, s33, v4
	s_load_b64 s[24:25], s[0:1], 0x20
	s_ashr_i32 s44, s5, 5
	v_cmp_eq_u32_e64 s0, 0, v3
	v_mul_lo_u32 v126, v2, s44
	v_mul_lo_u32 v2, v4, s44
	v_or_b32_e32 v3, s33, v88
	v_or_b32_e32 v5, s33, v5
	v_or_b32_e32 v132, s26, v135
	v_lshlrev_b32_e32 v169, 2, v87
	v_lshlrev_b32_e32 v179, 1, v135
	v_mul_lo_u32 v130, v3, s44
	v_lshlrev_b32_e32 v152, 1, v87
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:232
	scratch_store_b32 off, v87, off offset:280
	v_mul_lo_u32 v2, v5, s44
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v88, off offset:284
	scratch_store_b32 off, v2, off offset:236
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v135, 2, 1
	v_bfe_i32 v3, v135, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	v_dual_mov_b32 v164, 0 :: v_dual_and_b32 v3, 0x110, v3
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v0, 0xe00, v0
	v_and_b32_e32 v2, 0x90, v2
	v_and_b32_e32 v9, 28, v179
	v_dual_mov_b32 v239, 0 :: v_dual_add_nc_u32 v4, s34, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v1, 5, v0
	v_xor_b32_e32 v0, v2, v3
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v133, 0
	scratch_store_b32 off, v1, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v1, v0, v1
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v0, 32, v91
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v129, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v0, 0, v169, v0
	v_mov_b32_e32 v125, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v128, 0
	v_add_nc_u32_e32 v0, v0, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:264
	scratch_store_b32 off, v152, off offset:292
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v0, 0, v152
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v91, off offset:304
	scratch_store_b32 off, v89, off offset:272
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v144, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:268
	scratch_store_b32 off, v169, off offset:296
	scratch_store_b32 off, v90, off offset:276
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:248
	scratch_store_b32 off, v135, off offset:288
	v_dual_mov_b32 v237, 0 :: v_dual_and_b32 v4, 0x160, v91
	v_mov_b32_e32 v153, 0
	v_mov_b32_e32 v233, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v124, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v2, v2, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:256
	scratch_store_b32 off, v1, off offset:252
	v_xor_b32_e32 v1, 16, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:308
	scratch_store_b32 off, v1, off offset:260
	scratch_store_b32 off, v179, off offset:300
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v20, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s15, s44, 3
	s_add_i32 s1, s35, 32
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s14, 1
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s15, s15, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:108
	scratch_store_b32 off, v103, off offset:240
	scratch_store_b32 off, v104, off offset:244
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 5
	s_mov_b32 s18, s30
	s_mov_b32 s30, s35
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s35, s1, s19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v149, off offset:196
	scratch_store_b32 off, v79, off offset:60
	scratch_store_b32 off, v127, off offset:192
	scratch_store_b32 off, v128, off offset:188
	scratch_store_b32 off, v80, off offset:64
	scratch_store_b32 off, v237, off offset:184
	scratch_store_b32 off, v145, off offset:180
	scratch_store_b32 off, v81, off offset:68
	scratch_store_b32 off, v164, off offset:176
	scratch_store_b32 off, v82, off offset:72
	scratch_store_b32 off, v75, off offset:44
	scratch_store_b32 off, v235, off offset:172
	scratch_store_b32 off, v234, off offset:168
	scratch_store_b32 off, v74, off offset:48
	scratch_store_b32 off, v150, off offset:164
	scratch_store_b32 off, v173, off offset:160
	scratch_store_b32 off, v73, off offset:52
	scratch_store_b32 off, v138, off offset:156
	scratch_store_b32 off, v71, off offset:56
	scratch_store_b32 off, v239, off offset:152
	scratch_store_b32 off, v140, off offset:148
	scratch_store_b32 off, v141, off offset:144
	scratch_store_b32 off, v147, off offset:140
	scratch_store_b32 off, v136, off offset:136
	scratch_store_b32 off, v65, off
	scratch_store_b32 off, v20, off offset:4
	scratch_store_b32 off, v176, off offset:132
	scratch_store_b32 off, v183, off offset:128
	scratch_store_b32 off, v255, off offset:124
	scratch_store_b32 off, v72, off offset:32
	scratch_store_b32 off, v184, off offset:120
	scratch_store_b32 off, v207, off offset:116
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v66, off offset:28
	scratch_store_b32 off, v53, off offset:40
	scratch_store_b32 off, v52, off offset:36
	scratch_store_b32 off, v249, off offset:112
	scratch_store_b32 off, v51, off offset:8
	scratch_store_b32 off, v49, off offset:104
	scratch_store_b32 off, v48, off offset:100
	scratch_store_b32 off, v47, off offset:96
	scratch_store_b32 off, v46, off offset:92
	scratch_store_b32 off, v45, off offset:88
	scratch_store_b32 off, v44, off offset:84
	scratch_store_b32 off, v38, off offset:80
	scratch_store_b32 off, v37, off offset:76
	scratch_store_b32 off, v32, off offset:24
	scratch_store_b32 off, v31, off offset:20
	scratch_store_b32 off, v30, off offset:16
	scratch_store_b32 off, v26, off offset:12
	v_or_b32_e32 v0, s35, v99
	v_mov_b32_e32 v51, v89
	v_mov_b32_e32 v173, v90
	v_dual_mov_b32 v237, v133 :: v_dual_mov_b32 v138, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	v_dual_mov_b32 v135, v83 :: v_dual_add_nc_u32 v0, s35, v100
	v_dual_mov_b32 v235, v194 :: v_dual_mov_b32 v176, v95
	v_dual_mov_b32 v141, v86 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_mov_b32_e32 v194, v162
	v_mov_b32_e32 v162, v92
	v_dual_mov_b32 v140, v94 :: v_dual_mov_b32 v53, v97
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[9:10], v0, s[8:11], 0 offen
	v_dual_mov_b32 v52, v96 :: v_dual_mov_b32 v207, v98
	v_dual_mov_b32 v149, v99 :: v_dual_mov_b32 v150, v100
	v_dual_mov_b32 v169, v101 :: v_dual_mov_b32 v18, v123
	v_dual_mov_b32 v17, v126 :: v_dual_mov_b32 v234, v125
	v_dual_mov_b32 v37, v122 :: v_dual_mov_b32 v38, v124
	v_dual_mov_b32 v145, v146 :: v_dual_mov_b32 v146, v188
	v_dual_mov_b32 v188, v119 :: v_dual_mov_b32 v147, v120
	v_dual_mov_b32 v31, v87 :: v_dual_mov_b32 v136, v84
	v_mov_b32_e32 v20, v193
	v_dual_mov_b32 v193, v161 :: v_dual_mov_b32 v164, v175
	v_dual_mov_b32 v161, v91 :: v_dual_mov_b32 v30, v93
	v_mov_b32_e32 v32, v88
	v_dual_mov_b32 v184, v132 :: v_dual_mov_b32 v183, v130
	v_mov_b32_e32 v66, v131
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[9:10], off offset:200 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v9, off, off offset:256
	scratch_load_b32 v55, off, off offset:260
	scratch_load_b32 v54, off, off offset:252
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v175, v121 :: v_dual_add_nc_u32 v0, s49, v9
	v_xor_b32_e32 v9, 16, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, s16, v54
	v_add_nc_u32_e32 v29, s16, v55
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	s_mul_i32 s16, s35, s34
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v9, s49, v9
	ds_load_b128 v[62:65], v0 offset:512
	ds_load_b128 v[107:110], v9 offset:512
	ds_load_b128 v[111:114], v0 offset:1024
	ds_load_b128 v[115:118], v9 offset:1024
	ds_load_b128 v[199:202], v0 offset:1536
	ds_load_b128 v[203:206], v9 offset:1536
	ds_load_b128 v[33:36], v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[39:42], v19
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[47:50], v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[43:46], v29
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v0, s48, v54
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s16, s16, s26
	s_mov_b32 s49, s47
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[39:42], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[39:42], v[62:65], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[39:42], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[39:42], v[199:202], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[43:46], v[47:50], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[43:46], v[107:110], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[43:46], v[115:118], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[43:46], v[203:206], v[9:16] neg_lo:[1,1,0]
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[39:42], v19 offset:4096
	ds_load_b128 v[43:46], v29 offset:4096
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v19, s48, v55
	v_mov_b32_e32 v29, v129
	ds_load_b128 v[127:130], v0
	ds_load_b128 v[224:227], v0 offset:4096
	ds_load_b128 v[228:231], v19 offset:4096
	ds_load_b128 v[131:134], v19
	s_mov_b32 s48, s45
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[39:42], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[39:42], v[62:65], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[39:42], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[39:42], v[199:202], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[127:130], v[62:65], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[216:223], v[224:227], v[62:65], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[248:255], v[224:227], v[111:114], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[75:82], v[43:46], v[47:50], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[43:46], v[107:110], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[43:46], v[115:118], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[43:46], v[203:206], v[119:126] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[39:46], v[127:130], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[131:134], v[107:110], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[216:223], v[228:231], v[107:110], v[216:223] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[240:247], v[127:130], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[127:130], v[199:202], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[224:227], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[248:255], v[228:231], v[115:118], v[248:255] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[131:134], v[47:50], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[240:247], v[131:134], v[115:118], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[131:134], v[203:206], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[224:227], v[199:202], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[228:231], v[47:50], v[54:61] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v48, v254
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v254, v95
	v_cvt_f32_i32_e32 v95, v9
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	scratch_load_b32 v9, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[127:134], v[228:231], v[203:206], v[127:134] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v36, v73
	v_cvt_f32_i32_e32 v73, v102
	v_cvt_f32_i32_e32 v102, v16
	scratch_load_b32 v16, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v200, v248
	v_cvt_f32_i32_e32 v204, v127
	scratch_load_b32 v127, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v248, v24
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v26, v74
	v_cvt_f32_i32_e32 v74, v101
	v_cvt_f32_i32_e32 v101, v15
	scratch_load_b32 v15, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v0, v58
	v_cvt_f32_i32_e32 v63, v251
	v_cvt_f32_i32_e32 v47, v252
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v252, v79
	v_cvt_f32_i32_e32 v251, v81
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v59
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v79, v68
	v_cvt_f32_i32_e32 v81, v70
	v_cvt_f32_i32_e32 v70, v125
	v_mov_b32_e32 v125, v234
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v60
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v68, v126
	v_mov_b32_e32 v126, v17
	scratch_load_b32 v17, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v199, v249
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v61
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v249, v80
	v_cvt_f32_i32_e32 v80, v67
	v_cvt_f32_i32_e32 v67, v124
	v_mov_b32_e32 v124, v38
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v220
	v_cvt_f32_i32_e32 v50, v253
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v253, v96
	v_cvt_f32_i32_e32 v96, v10
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v59, v210
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v222
	v_cvt_f32_i32_e32 v58, v211
	v_cvt_f32_i32_e32 v211, v212
	v_cvt_f32_i32_e32 v210, v213
	v_cvt_f32_i32_e32 v60, v216
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v213, v246
	v_cvt_f32_i32_e32 v212, v247
	v_cvt_f32_i32_e32 v216, v114
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v247, v21
	v_cvt_f32_i32_e32 v246, v22
	v_cvt_f32_i32_e32 v22, v25
	v_cvt_f32_i32_e32 v114, v27
	v_cvt_f32_i32_e32 v25, v28
	v_cvt_f32_i32_e32 v21, v71
	v_cvt_f32_i32_e32 v0, v72
	v_cvt_f32_i32_e32 v28, v91
	v_cvt_f32_i32_e32 v117, v92
	v_cvt_f32_i32_e32 v118, v93
	v_cvt_f32_i32_e32 v27, v94
	v_cvt_f32_i32_e32 v34, v97
	v_cvt_f32_i32_e32 v33, v98
	v_cvt_f32_i32_e32 v91, v83
	v_cvt_f32_i32_e32 v92, v84
	v_cvt_f32_i32_e32 v93, v85
	v_cvt_f32_i32_e32 v94, v86
	v_cvt_f32_i32_e32 v72, v99
	v_cvt_f32_i32_e32 v71, v100
	v_cvt_f32_i32_e32 v97, v11
	v_cvt_f32_i32_e32 v98, v12
	v_cvt_f32_i32_e32 v99, v13
	v_cvt_f32_i32_e32 v100, v14
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v206, v45
	v_cvt_f32_i32_e32 v205, v46
	v_cvt_f32_i32_e32 v45, v221
	v_cvt_f32_i32_e32 v46, v223
	v_cvt_f32_i32_e32 v229, v42
	v_cvt_f32_i32_e32 v42, v55
	v_cvt_f32_i32_e32 v49, v57
	v_cvt_f32_i32_e32 v57, v217
	v_cvt_f32_i32_e32 v55, v219
	v_cvt_f32_i32_e32 v219, v111
	v_cvt_f32_i32_e32 v217, v113
	v_cvt_f32_i32_e32 v113, v129
	v_cvt_f32_i32_e32 v111, v132
	v_dual_mov_b32 v132, v184 :: v_dual_mov_b32 v129, v29
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v116, v103
	v_cvt_f32_i32_e32 v29, v105
	v_cvt_f32_i32_e32 v103, v119
	v_dual_mov_b32 v119, v188 :: v_dual_mov_b32 v188, v146
	v_mov_b32_e32 v146, v145
	v_cvt_f32_i32_e32 v105, v121
	v_mov_b32_e32 v121, v175
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v231, v40
	v_cvt_f32_i32_e32 v40, v44
	v_cvt_f32_i32_e32 v203, v242
	v_cvt_f32_i32_e32 v44, v255
	v_cvt_f32_i32_e32 v242, v109
	v_cvt_f32_i32_e32 v109, v131
	v_mov_b32_e32 v131, v66
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v66, v23
	v_cvt_f32_i32_e32 v35, v75
	v_cvt_f32_i32_e32 v255, v76
	v_cvt_f32_i32_e32 v65, v77
	v_cvt_f32_i32_e32 v23, v78
	v_cvt_f32_i32_e32 v76, v87
	v_cvt_f32_i32_e32 v75, v88
	v_cvt_f32_i32_e32 v78, v89
	v_cvt_f32_i32_e32 v77, v90
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v230, v41
	v_cvt_f32_i32_e32 v41, v128
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v128, off, off offset:236
	scratch_load_b32 v239, off, off offset:108
	v_cvt_f32_i32_e32 v226, v43
	v_cvt_f32_i32_e32 v43, v56
	v_cvt_f32_i32_e32 v56, v218
	v_cvt_f32_i32_e32 v218, v112
	v_cvt_f32_i32_e32 v112, v130
	v_mov_b32_e32 v130, v183
	v_cvt_f32_i32_e32 v64, v250
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v250, v82
	v_cvt_f32_i32_e32 v82, v69
	v_cvt_f32_i32_e32 v19, v106
	v_cvt_f32_i32_e32 v106, v122
	v_mov_b32_e32 v122, v37
	v_cvt_f32_i32_e32 v69, v123
	v_mov_b32_e32 v123, v18
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v61, v209
	v_cvt_f32_i32_e32 v209, v214
	v_cvt_f32_i32_e32 v214, v245
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v115, v104
	v_cvt_f32_i32_e32 v104, v120
	v_mov_b32_e32 v120, v147
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v62, v39
	v_cvt_f32_i32_e32 v39, v241
	v_cvt_f32_i32_e32 v202, v243
	v_cvt_f32_i32_e32 v243, v108
	v_cvt_f32_i32_e32 v241, v110
	v_cvt_f32_i32_e32 v110, v133
	v_mov_b32_e32 v133, v237
	v_cvt_f32_i32_e32 v108, v134
	v_mov_b32_e32 v134, v138
	v_cvt_f32_i32_e32 v201, v208
	v_cvt_f32_i32_e32 v240, v240
	v_cvt_f32_i32_e32 v208, v215
	v_cvt_f32_i32_e32 v215, v244
	v_cvt_f32_i32_e32 v244, v107
	v_cvt_f32_i32_e32 v54, v54
	v_mov_b32_e32 v175, v164
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v9, s35, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v9, s16, v16
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v10, s16, v15
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	s_add_i32 s16, s16, s27
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[11:14], v9, s[36:39], 0 offen
	buffer_load_b128 v[83:86], v10, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v223, v83, v11, 0x5010400
	v_perm_b32 v222, v83, v11, 0x7030602
	v_perm_b32 v221, v84, v12, 0x5010400
	v_perm_b32 v220, v84, v12, 0x7030602
	v_perm_b32 v12, v85, v13, 0x5010400
	v_perm_b32 v11, v85, v13, 0x7030602
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v13, s16, v16
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v10, v86, v14, 0x5010400
	v_perm_b32 v9, v86, v14, 0x7030602
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v14, s16, v15
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s16, s18, 31
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s16, s16, 27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[83:86], v13, s[36:39], 0 offen
	buffer_load_b128 v[87:90], v14, s[36:39], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s18, s18, s16
	s_ashr_i32 s18, s18, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s16, s18, s34
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s18, s44
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s14, 1
	s_cmp_lt_i32 s14, 2
	s_cselect_b32 s14, s14, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_lshl_b32 s19, s14, 13
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(0)
	v_perm_b32 v228, v87, v83, 0x5010400
	v_perm_b32 v227, v87, v83, 0x7030602
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v83, v132, s16, 1
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v225, v88, v84, 0x5010400
	v_perm_b32 v224, v88, v84, 0x7030602
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v84, v126, s18, 1
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v14, v90, v86, 0x5010400
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v13, v90, v86, 0x7030602
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v86, v128, s18, 1
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v16, v89, v85, 0x5010400
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v83, v83, s[40:43], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v15, v89, v85, 0x7030602
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	v_add_lshl_u32 v85, v127, s18, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v17, v83 offset:36864
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v83, v130, s18, 1
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	s_clause 0x3
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v87, v84, s[4:7], 0 offen
	buffer_load_u16 v88, v85, s[4:7], 0 offen
	buffer_load_u16 v89, v86, s[4:7], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v18, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v245, 16, v83
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v90, v245, v247
	s_waitcnt vmcnt(0)
	ds_load_b128 v[83:86], v18 offset:36864
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v247, 16, v88
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v181, v90, v83 :: v_dual_mul_f32 v90, v245, v246
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v246, 16, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v87, v31 :: v_dual_fmac_f32 v142, v90, v84
	v_mov_b32_e32 v90, v173
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v245, v66
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v146, v66, v85
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v245, v248
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v248, 16, v89
	v_dual_mov_b32 v89, v51 :: v_dual_mul_f32 v22, v245, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v238, v66, v86
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v246, v80
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v152, v66, v83
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v246, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v188, v66, v84
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v246, v82
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v120, v66, v85
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v246, v81
	ds_load_b128 v[79:82], v18 offset:36880
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v121, v66, v86 :: v_dual_mul_f32 v66, v247, v91
	v_mov_b32_e32 v91, v161
	v_dual_mov_b32 v161, v193 :: v_dual_mul_f32 v0, v246, v0
	v_mov_b32_e32 v193, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v88, v32 :: v_dual_fmac_f32 v151, v66, v83
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v21, v246, v21 :: v_dual_fmac_f32 v186, v0, v80
	v_mul_f32_e32 v0, v246, v36
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v192, v22, v79
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v22, v245, v24
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v36, v44, v247
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v148, v0, v81
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v246, v26
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v193, v22, v80 :: v_dual_mul_f32 v22, v245, v114
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v247, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v178, v0, v82
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v0, v247, v76 :: v_dual_fmac_f32 v187, v22, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v119, v66, v84
	v_fmac_f32_e32 v143, v0, v79
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v247, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v174, v0, v80
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v247, v78
	v_mov_b32_e32 v92, v162
	v_mov_b32_e32 v162, v194
	v_dual_mov_b32 v194, v235 :: v_dual_fmac_f32 v177, v0, v81
	v_mul_f32_e32 v0, v247, v77
	ds_load_b128 v[75:78], v18 offset:37376
	v_mul_f32_e32 v22, v245, v25
	v_dual_mul_f32 v66, v247, v93 :: v_dual_mov_b32 v93, v30
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v239, v0, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v191, v22, v82
	v_dual_fmac_f32 v189, v66, v85 :: v_dual_mul_f32 v66, v247, v94
	v_mov_b32_e32 v94, v140
	scratch_store_b32 off, v239, off offset:108 ; 4-byte Folded Spill
	v_dual_fmac_f32 v179, v66, v86 :: v_dual_mul_f32 v66, v248, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v95, v176 :: v_dual_fmac_f32 v196, v66, v83
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v66, v248, v96 :: v_dual_mov_b32 v83, v135
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v185, v66, v84 :: v_dual_mul_f32 v66, v248, v97
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v0, v248, v99 :: v_dual_mov_b32 v97, v53
	v_mov_b32_e32 v99, v149
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:40
	scratch_load_b32 v184, off, off offset:120
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v198, v66, v85 :: v_dual_fmac_f32 v195, v0, v79
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v248, v100
	v_mul_f32_e32 v66, v248, v98
	v_mov_b32_e32 v84, v136
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v232, v0, v80
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v248, v101
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:64
	scratch_load_b32 v127, off, off offset:192
	v_dual_mov_b32 v101, v169 :: v_dual_fmac_f32 v190, v0, v81
	v_mul_f32_e32 v0, v248, v102
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v81, off, off offset:68
	scratch_load_b32 v128, off, off offset:188
	scratch_load_b32 v237, off, off offset:184
	scratch_load_b32 v145, off, off offset:180
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v194, v0, v82
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v82, off, off offset:72
	scratch_load_b32 v164, off, off offset:176
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v35
	v_mov_b32_e32 v98, v207
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v35, v47, v247 :: v_dual_mov_b32 v96, v52
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v197, v66, v86
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v97, v0, v75
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v255
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v52, off, off offset:36
	scratch_load_b32 v207, off, off offset:116
	scratch_load_b32 v66, off, off offset:28
	scratch_load_b32 v255, off, off offset:124
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v98, v0, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v65
	v_mov_b32_e32 v86, v141
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v65, off, off
	scratch_load_b32 v239, off, off offset:152
	scratch_load_b32 v140, off, off offset:148
	scratch_load_b32 v141, off, off offset:144
	scratch_load_b32 v147, off, off offset:140
	scratch_load_b32 v20, off, off offset:4
	scratch_load_b32 v136, off, off offset:136
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v95, v0, v77 :: v_dual_mul_f32 v0, v245, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v0, v78
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v246, v28
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v89, v0, v75 :: v_dual_mul_f32 v0, v246, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v0, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v246, v118
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v87, v0, v77 :: v_dual_mul_f32 v0, v246, v27
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v27, v45, v246
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v88, v0, v78
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v247, v72
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v72, off, off offset:32
	scratch_load_b32 v183, off, off offset:128
	scratch_load_b32 v176, off, off offset:132
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(19)
	v_fmac_f32_e32 v81, v0, v75
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v247, v71
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:56
	scratch_load_b32 v138, off, off offset:156
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(17)
	v_fmac_f32_e32 v82, v0, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v247, v74
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v180, v21, v79
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:60
	scratch_load_b32 v149, off, off offset:196
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[21:24], v18 offset:37392
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:48
	scratch_load_b32 v234, off, off offset:168
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v79, v0, v77
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v247, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v80, v0, v78
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v248, v103
	scratch_load_b32 v103, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v52, v0, v75
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v248, v104
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v75, off, off offset:44
	scratch_load_b32 v235, off, off offset:172
	scratch_load_b32 v104, off, off offset:244
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v53, v0, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v248, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v66, v0, v77
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v248, v106
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v72, v0, v78
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v252
	v_mov_b32_e32 v100, v150
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v73, off, off offset:52
	scratch_load_b32 v150, off, off offset:164
	scratch_load_b32 v173, off, off offset:160
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v93, v0, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v249
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:8
	scratch_load_b32 v249, off, off offset:112
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v94, v0, v22
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v91, v0, v23 :: v_dual_mul_f32 v0, v245, v250
	v_fmac_f32_e32 v92, v0, v24
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v246, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v137, v0, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v246, v253
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v86, v0, v22
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v246, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v83, v0, v23 :: v_dual_mul_f32 v0, v246, v33
	v_fmac_f32_e32 v84, v0, v24
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v247, v116
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v73, v0, v21 :: v_dual_mul_f32 v0, v247, v115
	v_dual_fmac_f32 v71, v0, v22 :: v_dual_mul_f32 v0, v247, v29
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v29, v46, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v75, v0, v23
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v247, v19
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v74, v0, v24
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v248, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v236, v0, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v248, v67
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v51, v0, v22
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v248, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v65, v0, v23
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v248, v68
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v20, v0, v24
	v_add_nc_u32_e32 v0, s27, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v0, v0, s16, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_lshl_b32 s16, s14, 11
	s_add_i32 s18, s16, 0
	s_mov_b32 s16, s46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_add_i32 s46, s19, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s19, s17, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_add_i32 s47, s18, 0x8000
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_add_i32 s45, s46, 0x4000
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v0, v0, s[40:43], 0 offen
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s15
	s_mov_b32 s17, s19
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v17, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v17, off, off offset:208 ; 4-byte Folded Reload
	ds_load_b128 v[21:24], v18 offset:36864
	v_mul_f32_e32 v0, v62, v245
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v164, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v231, v245
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v239, v0, v22 :: v_dual_mul_f32 v0, v230, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v176, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v229, v245
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v170, v0, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v201, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v141, v0, v21 :: v_dual_mul_f32 v0, v61, v246
	v_fmac_f32_e32 v140, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v59, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v128, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v58, v246
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v147, v0, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v240, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v167, v0, v21 :: v_dual_mul_f32 v0, v39, v247
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v39, v48, v247
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v168, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v203, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v165, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v202, v247
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v166, v0, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v244, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v175, v0, v21 :: v_dual_mul_f32 v0, v243, v248
	v_fmac_f32_e32 v172, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v242, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v171, v0, v23 :: v_dual_mul_f32 v0, v241, v248
	v_fmac_f32_e32 v150, v0, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[21:24], v18 offset:36880
	v_mul_f32_e32 v0, v226, v245
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v237, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v40, v245
	v_dual_mul_f32 v40, v111, v248 :: v_dual_fmac_f32 v153, v0, v22
	v_mul_f32_e32 v0, v206, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v233, v0, v23 :: v_dual_mul_f32 v0, v205, v245
	v_dual_fmac_f32 v145, v0, v24 :: v_dual_mul_f32 v0, v211, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v210, v246
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v139, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v209, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v124, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v208, v246
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v127, v0, v24 :: v_dual_mul_f32 v0, v215, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v156, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v214, v247
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v123, v0, v22 :: v_dual_mul_f32 v0, v213, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v159, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v212, v247
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v122, v0, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v219, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v160, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v218, v248
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v163, v0, v22 :: v_dual_mul_f32 v0, v217, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v154, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v216, v248
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v155, v0, v24 :: v_dual_mul_f32 v0, v54, v245
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[21:24], v18 offset:37376
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v125, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v42, v245
	v_mul_f32_e32 v42, v108, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v136, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v0, v43, v245 :: v_dual_mul_f32 v43, v110, v248
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v161, v0, v23 :: v_dual_mul_f32 v0, v49, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v162, v0, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v60, v246
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v157, v0, v21 :: v_dual_mul_f32 v0, v57, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v158, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v56, v246
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v138, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v55, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v149, v0, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v200, v247
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v207, v0, v21 :: v_dual_mul_f32 v0, v199, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v234, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v64, v247
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v184, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v63, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v134, v0, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v204, v248
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v235, v0, v21 :: v_dual_mul_f32 v0, v41, v248
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v41, v109, v248
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v17, v245
	scratch_load_b32 v17, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v173, v0, v22 :: v_dual_mul_f32 v0, v113, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v249, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v112, v248
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v255, v0, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	ds_load_b128 v[21:24], v18 offset:37392
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v133, v19, v21
	.loc	1 378 26 is_stmt 1              ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v19, 24, v221
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v19.l, 8, v19.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v17, v245
	scratch_load_b32 v17, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v131, v25, v24
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v25, 24, v224
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v25.l, 8, v25.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v17, v245
	scratch_load_b32 v17, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v129, v26, v23
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v49, off, off offset:104
	scratch_load_b32 v48, off, off offset:100
	scratch_load_b32 v47, off, off offset:96
	scratch_load_b32 v46, off, off offset:92
	scratch_load_b32 v45, off, off offset:88
	scratch_load_b32 v44, off, off offset:84
	scratch_load_b32 v38, off, off offset:80
	scratch_load_b32 v37, off, off offset:76
	scratch_load_b32 v32, off, off offset:24
	scratch_load_b32 v31, off, off offset:20
	scratch_load_b32 v30, off, off offset:16
	scratch_load_b32 v26, off, off offset:12
	s_waitcnt vmcnt(11)
	v_fmac_f32_e32 v49, v27, v22
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v47, v29, v24 :: v_dual_fmac_f32 v44, v35, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v28, v17, v246
	scratch_load_b32 v17, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v32, v40, v22 :: v_dual_fmac_f32 v31, v41, v21
	v_dual_fmac_f32 v37, v39, v23 :: v_dual_fmac_f32 v48, v28, v21
	.loc	1 378 26 is_stmt 1              ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v21, 24, v220
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v26, v43, v23
	v_fmac_f32_e32 v38, v36, v24
	v_fmac_f32_e32 v30, v42, v24
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v24, 24, v225
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v21.l, 8, v21.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v24.l, 8, v24.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v17, v246
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	scratch_load_b64 v[17:18], off, off offset:200 ; 8-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v0, v245
	v_mul_f32_e32 v34, v50, v247
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v46, v33, v23
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v23, 24, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v183, v0, v22 :: v_dual_add_nc_u32 v0, s18, v101
	v_fmac_f32_e32 v45, v34, v22
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v22, 24, v228
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v23.l, 8, v23.l
	v_lshlrev_b16 v22.l, 8, v22.l
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v0, v[17:18] offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v0, 8, v223
	v_and_b16 v0.h, 0xff, v223.l
	v_lshrrev_b32_e32 v17, 24, v223
	v_lshrrev_b32_e32 v18, 24, v222
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshlrev_b16 v17.l, 8, v17.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v18.l, 8, v18.l
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v223.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v0.h, v0.h, v17.l
	v_lshrrev_b32_e32 v17, 8, v222
	v_and_b16 v17.h, 0xff, v222.l
	v_lshlrev_b16 v17.l, 8, v17.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v17.l, v17.h, v17.l
	v_and_b16 v17.h, 0xff, v222.h
	v_or_b16 v17.h, v17.h, v18.l
	v_lshrrev_b32_e32 v18, 8, v221
	v_and_b16 v18.h, 0xff, v221.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v18.l, 8, v18.l
	v_or_b16 v18.l, v18.h, v18.l
	v_and_b16 v18.h, 0xff, v221.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v18.h, v18.h, v19.l
	v_lshrrev_b32_e32 v19, 8, v220
	v_and_b16 v19.h, 0xff, v220.l
	v_lshlrev_b16 v19.l, 8, v19.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v19.l, v19.h, v19.l
	v_and_b16 v19.h, 0xff, v220.h
	v_or_b16 v19.h, v19.h, v21.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v21, 8, v228
	v_and_b16 v21.h, 0xff, v228.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v21.l, 8, v21.l
	v_or_b16 v21.l, v21.h, v21.l
	v_and_b16 v21.h, 0xff, v228.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v21.h, v21.h, v22.l
	v_lshrrev_b32_e32 v22, 8, v227
	v_and_b16 v22.h, 0xff, v227.l
	v_lshlrev_b16 v22.l, 8, v22.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v22.l, v22.h, v22.l
	v_and_b16 v22.h, 0xff, v227.h
	v_or_b16 v22.h, v22.h, v23.l
	v_lshrrev_b32_e32 v23, 8, v225
	v_and_b16 v23.h, 0xff, v225.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v23.l, 8, v23.l
	v_or_b16 v23.l, v23.h, v23.l
	v_and_b16 v23.h, 0xff, v225.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v23.h, v23.h, v24.l
	v_lshrrev_b32_e32 v24, 8, v224
	v_and_b16 v24.h, 0xff, v224.l
	v_lshlrev_b16 v24.l, 8, v24.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v24.l, v24.h, v24.l
	v_and_b16 v24.h, 0xff, v224.h
	v_or_b16 v24.h, v24.h, v25.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v25, s46, v182
	ds_store_b16 v25, v0
	ds_store_b16_d16_hi v25, v0 offset:32
	ds_store_b16 v25, v17 offset:64
	ds_store_b16_d16_hi v25, v17 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v25, v21 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v0, s46, v103
	ds_store_b16 v0, v18
	ds_store_b16_d16_hi v0, v18 offset:32
	ds_store_b16 v0, v19 offset:64
	ds_store_b16_d16_hi v0, v19 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v25, v22 offset:16448
	ds_store_b16_d16_hi v25, v21 offset:16416
	ds_store_b16_d16_hi v25, v22 offset:16480
	ds_store_b16 v0, v23 offset:16384
	ds_store_b16_d16_hi v0, v23 offset:16416
	ds_store_b16 v0, v24 offset:16448
	ds_store_b16_d16_hi v0, v24 offset:16480
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v0, 8, v12
	v_and_b16 v0.h, 0xff, v12.l
	v_lshrrev_b32_e32 v17, 24, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshlrev_b16 v12.l, 8, v17.l
	v_lshrrev_b32_e32 v17, 24, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v12.h
	v_or_b16 v0.h, v0.h, v12.l
	v_lshrrev_b32_e32 v12, 8, v11
	v_and_b16 v12.h, 0xff, v11.l
	v_and_b16 v11.l, 0xff, v11.h
	v_lshlrev_b16 v11.h, 8, v17.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v17, 8, v16
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v11.l, v11.l, v11.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v11.h, 8, v17.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v12.l, v12.h, v12.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v12.h, 0xff, v16.l
	v_lshrrev_b32_e32 v17, 24, v16
	v_or_b16 v11.h, v12.h, v11.h
	v_and_b16 v12.h, 0xff, v16.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v16.l, 8, v17.l
	v_lshrrev_b32_e32 v17, 24, v15
	v_or_b16 v12.h, v12.h, v16.l
	v_lshrrev_b32_e32 v16, 8, v15
	v_and_b16 v16.h, 0xff, v15.l
	v_and_b16 v15.l, 0xff, v15.h
	v_lshlrev_b16 v15.h, 8, v17.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v17, s46, v104
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v16.l, 8, v16.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v15.l, v15.l, v15.h
	v_or_b16 v16.l, v16.h, v16.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v17, v0
	ds_store_b16_d16_hi v17, v0 offset:32
	ds_store_b16 v17, v12 offset:64
	ds_store_b16 v17, v11 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v17, v11 offset:16384
	ds_store_b16_d16_hi v17, v12 offset:16416
	ds_store_b16 v17, v16 offset:16448
	ds_store_b16 v17, v15 offset:16480
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v0, 8, v10
	v_and_b16 v0.h, 0xff, v10.l
	v_lshrrev_b32_e32 v11, 24, v10
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v12, 24, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshlrev_b16 v10.l, 8, v11.l
	v_lshrrev_b32_e32 v11, 24, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.l, 8, v12.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v10.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v0.h, v0.h, v10.l
	v_lshrrev_b32_e32 v10, 8, v9
	v_and_b16 v10.h, 0xff, v9.l
	v_and_b16 v9.l, 0xff, v9.h
	v_lshlrev_b16 v9.h, 8, v11.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v11, 8, v14
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.l, v9.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v9.h, 8, v11.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v10.l, v10.h, v10.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v10.h, 0xff, v14.l
	v_lshrrev_b32_e32 v11, 24, v14
	v_or_b16 v9.h, v10.h, v9.h
	v_and_b16 v10.h, 0xff, v14.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v10.h, v10.h, v11.l
	v_lshrrev_b32_e32 v11, 8, v13
	v_and_b16 v11.h, 0xff, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v13.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v11.h, v11.h, v12.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v25, v0 offset:384
	ds_store_b16_d16_hi v25, v0 offset:416
	ds_store_b16 v25, v10 offset:448
	ds_store_b16 v25, v9 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v25, v9 offset:16768
	ds_store_b16_d16_hi v25, v10 offset:16800
	ds_store_b16 v25, v11 offset:16832
	ds_store_b16_d16_hi v25, v11 offset:16864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v243, v189 :: v_dual_mov_b32 v220, v152
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v179, off offset:908
	scratch_store_b32 off, v151, off offset:912
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v152, off, off offset:292
	scratch_load_b32 v169, off, off offset:296
	scratch_load_b32 v179, off, off offset:300
	scratch_load_b32 v9, off, off offset:308
	scratch_load_b32 v8, off, off offset:312
	scratch_load_b32 v135, off, off offset:288
	scratch_load_b32 v36, off, off offset:304
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v144, off offset:528
	scratch_store_b32 off, v139, off offset:532
	scratch_store_b32 off, v143, off offset:540
	scratch_store_b32 off, v148, off offset:544
	scratch_store_b32 off, v187, off offset:564
	scratch_store_b32 off, v232, off offset:536
	v_dual_mov_b32 v241, v196 :: v_dual_mov_b32 v242, v185
	scratch_store_b32 off, v142, off offset:916 ; 4-byte Folded Spill
	v_dual_mov_b32 v221, v198 :: v_dual_mov_b32 v240, v197
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v7, 4, v135
	v_and_b32_e32 v6, 8, v135
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v51, 0
	scratch_store_b32 off, v0, off offset:536 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v83, 0
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v52, 0
	v_mov_b32_e32 v195, 0
	scratch_store_b32 off, v0, off offset:908 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v75, 0
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v171, 0
	scratch_store_b32 off, v0, off offset:912 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v81, 0
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v243, 0
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v121, 0
	scratch_store_b32 off, v0, off offset:916 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v237, 0
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v162, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v170, 0
	v_mov_b32_e32 v176, 0
	v_mov_b32_e32 v164, 0
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
.LBB0_8:                                ; %Flow822
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v238, off offset:196
	scratch_store_b32 off, v49, off offset:104
	scratch_store_b32 off, v48, off offset:100
	scratch_store_b32 off, v47, off offset:96
	scratch_store_b32 off, v46, off offset:92
	scratch_store_b32 off, v45, off offset:88
	scratch_store_b32 off, v44, off offset:84
	scratch_store_b32 off, v38, off offset:80
	scratch_store_b32 off, v37, off offset:76
	scratch_store_b32 off, v32, off offset:24
	scratch_store_b32 off, v31, off offset:20
	scratch_store_b32 off, v30, off offset:16
	scratch_store_b32 off, v26, off offset:12
	scratch_store_b32 off, v51, off offset:8
	scratch_store_b32 off, v236, off offset:112
	scratch_store_b32 off, v98, off offset:176
	scratch_store_b32 off, v97, off offset:172
	scratch_store_b32 off, v96, off offset:168
	scratch_store_b32 off, v95, off offset:164
	scratch_store_b32 off, v94, off offset:160
	scratch_store_b32 off, v93, off offset:156
	scratch_store_b32 off, v92, off offset:152
	scratch_store_b32 off, v91, off offset:148
	scratch_store_b32 off, v90, off offset:144
	scratch_store_b32 off, v89, off offset:140
	scratch_store_b32 off, v88, off offset:136
	scratch_store_b32 off, v87, off offset:132
	scratch_store_b32 off, v86, off offset:128
	scratch_store_b32 off, v137, off offset:124
	scratch_store_b32 off, v84, off offset:120
	scratch_store_b32 off, v83, off offset:116
	scratch_store_b32 off, v82, off offset:72
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v81, off offset:68
	scratch_store_b32 off, v80, off offset:64
	scratch_store_b32 off, v79, off offset:60
	scratch_store_b32 off, v71, off offset:56
	scratch_store_b32 off, v73, off offset:52
	scratch_store_b32 off, v74, off offset:48
	scratch_store_b32 off, v75, off offset:44
	scratch_store_b32 off, v53, off offset:40
	scratch_store_b32 off, v52, off offset:36
	scratch_store_b32 off, v72, off offset:32
	scratch_store_b32 off, v66, off offset:28
	scratch_store_b32 off, v65, off
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v17, 0, 1, s2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s1, 1, v17
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_or_b32_e32 v38, v0, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v1, 0x110, 0, vcc_lo
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v110, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v0, v0, v1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_xor_b32_e32 v37, 16, v38
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v1, s49, v38
	v_mov_b32_e32 v245, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b32_e32 v238, v0, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v0, s49, v37
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[39:42], v1 offset:512
	ds_load_b128 v[9:12], v1 offset:1024
	ds_load_b128 v[5:8], v1 offset:1536
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[21:24], v0 offset:512
	ds_load_b128 v[13:16], v0 offset:1024
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[1:4], v0 offset:1536
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v112, 0
	v_xor_b32_e32 v197, 16, v238
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v0, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v17, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v0, s16, v238
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v50, s11 :: v_dual_mov_b32 v45, s6
	v_mov_b32_e32 v49, s10
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[107:110], v0
	ds_load_b128 v[111:114], v0 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v47, s8 :: v_dual_add_nc_u32 v0, s16, v197
	v_dual_mov_b32 v48, s9 :: v_dual_mov_b32 v43, s4
	v_mov_b32_e32 v46, s7
	v_mov_b32_e32 v44, s5
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[115:118], v0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[107:110], v[25:28], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[107:110], v[39:42], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[107:110], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[107:110], v[5:8], v[43:50] neg_lo:[1,1,0]
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[107:110], v0 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[111:114], v[25:28], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[111:114], v[39:42], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[111:114], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[111:114], v[5:8], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[115:118], v[29:32], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[115:118], v[21:24], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[115:118], v[13:16], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[115:118], v[1:4], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v143, v53
	v_cvt_f32_i32_e32 v137, v54
	v_cvt_f32_i32_e32 v115, v55
	v_cvt_f32_i32_e32 v251, v56
	v_cvt_f32_i32_e32 v142, v67
	v_cvt_f32_i32_e32 v148, v68
	v_cvt_f32_i32_e32 v139, v69
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[107:110], v[29:32], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[107:110], v[21:24], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[107:110], v[13:16], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[107:110], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v144, v70
	v_cvt_f32_i32_e32 v113, v59
	v_cvt_f32_i32_e32 v114, v60
	v_cvt_f32_i32_e32 v111, v61
	v_cvt_f32_i32_e32 v112, v62
	v_cvt_f32_i32_e32 v109, v63
	v_cvt_f32_i32_e32 v110, v64
	v_cvt_f32_i32_e32 v107, v65
	v_cvt_f32_i32_e32 v108, v66
	v_cvt_f32_i32_e32 v213, v71
	v_cvt_f32_i32_e32 v218, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v69, v75
	v_cvt_f32_i32_e32 v70, v76
	v_cvt_f32_i32_e32 v67, v77
	v_cvt_f32_i32_e32 v68, v78
	v_cvt_f32_i32_e32 v65, v79
	v_cvt_f32_i32_e32 v66, v80
	v_cvt_f32_i32_e32 v63, v81
	v_cvt_f32_i32_e32 v64, v82
	v_cvt_f32_i32_e32 v151, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v83, v85
	v_cvt_f32_i32_e32 v85, v86
	v_cvt_f32_i32_e32 v75, v87
	v_cvt_f32_i32_e32 v77, v88
	v_cvt_f32_i32_e32 v76, v89
	v_cvt_f32_i32_e32 v78, v90
	v_cvt_f32_i32_e32 v61, v91
	v_cvt_f32_i32_e32 v62, v92
	v_cvt_f32_i32_e32 v59, v93
	v_cvt_f32_i32_e32 v60, v94
	v_cvt_f32_i32_e32 v55, v95
	v_cvt_f32_i32_e32 v56, v96
	v_cvt_f32_i32_e32 v53, v97
	v_cvt_f32_i32_e32 v54, v98
	v_cvt_f32_i32_e32 v86, v99
	v_cvt_f32_i32_e32 v87, v100
	v_cvt_f32_i32_e32 v81, v101
	v_cvt_f32_i32_e32 v82, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v71, v105
	v_cvt_f32_i32_e32 v72, v106
	v_cvt_f32_i32_e32 v35, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v33, v45
	v_cvt_f32_i32_e32 v34, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v19, v48
	v_cvt_f32_i32_e32 v0, v49
	v_cvt_f32_i32_e32 v17, v50
	v_cvt_f32_i32_e32 v44, v57
	v_cvt_f32_i32_e32 v45, v58
	v_cvt_f32_i32_e32 v46, v51
	v_cvt_f32_i32_e32 v47, v52
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v87, off offset:788
	scratch_store_b32 off, v86, off offset:776
	scratch_store_b32 off, v47, off offset:768
	scratch_store_b32 off, v46, off offset:764
	scratch_store_b32 off, v85, off offset:744
	scratch_store_b32 off, v84, off offset:732
	scratch_store_b32 off, v151, off offset:728
	scratch_store_b32 off, v83, off offset:720
	scratch_store_b32 off, v148, off offset:712
	scratch_store_b32 off, v144, off offset:704
	scratch_store_b32 off, v142, off offset:696
	scratch_store_b32 off, v139, off offset:692
	scratch_store_b32 off, v82, off offset:684
	scratch_store_b32 off, v81, off offset:680
	scratch_store_b32 off, v137, off offset:676
	scratch_store_b32 off, v80, off offset:612
	scratch_store_b32 off, v79, off offset:608
	scratch_store_b32 off, v45, off offset:604
	scratch_store_b32 off, v44, off offset:600
	scratch_store_b32 off, v78, off offset:596
	scratch_store_b32 off, v77, off offset:592
	scratch_store_b32 off, v76, off offset:588
	scratch_store_b32 off, v75, off offset:584
	scratch_store_b32 off, v74, off offset:580
	scratch_store_b32 off, v73, off offset:576
	scratch_store_b32 off, v72, off offset:572
	scratch_store_b32 off, v71, off offset:568
	scratch_store_b32 off, v110, off offset:356
	scratch_store_b32 off, v70, off offset:332
	scratch_store_b32 off, v69, off offset:328
	scratch_store_b32 off, v68, off offset:324
	scratch_store_b32 off, v67, off offset:320
	s_clause 0x19                           ; 104-byte Folded Spill
	scratch_store_b32 off, v66, off offset:316
	scratch_store_b32 off, v65, off offset:312
	scratch_store_b32 off, v64, off offset:308
	scratch_store_b32 off, v63, off offset:304
	scratch_store_b32 off, v62, off offset:296
	scratch_store_b32 off, v61, off offset:292
	scratch_store_b32 off, v60, off offset:276
	scratch_store_b32 off, v59, off offset:272
	scratch_store_b32 off, v56, off offset:268
	scratch_store_b32 off, v55, off offset:264
	scratch_store_b32 off, v54, off offset:260
	scratch_store_b32 off, v53, off offset:256
	scratch_store_b32 off, v43, off offset:244
	scratch_store_b32 off, v35, off offset:240
	scratch_store_b32 off, v34, off offset:228
	scratch_store_b32 off, v33, off offset:224
	scratch_store_b32 off, v19, off offset:220
	scratch_store_b32 off, v18, off offset:216
	scratch_store_b32 off, v17, off offset:212
	scratch_store_b32 off, v0, off offset:208
	scratch_store_b32 off, v181, off offset:828
	scratch_store_b32 off, v146, off offset:200
	scratch_store_b32 off, v188, off offset:192
	scratch_store_b32 off, v121, off offset:188
	scratch_store_b32 off, v120, off offset:184
	scratch_store_b32 off, v119, off offset:180
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v0, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v0, s48, v197
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v50, s11 :: v_dual_mov_b32 v45, s6
	v_mov_b32_e32 v49, s10
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[91:94], v0 offset:4096
	ds_load_b128 v[95:98], v0
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v47, s8 :: v_dual_add_nc_u32 v0, s48, v238
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[99:102], v0 offset:4096
	ds_load_b128 v[103:106], v0
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v48, s9 :: v_dual_mov_b32 v43, s4
	v_mov_b32_e32 v46, s7
	v_mov_b32_e32 v44, s5
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[99:102], v[25:28], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[103:106], v[25:28], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[103:106], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[99:102], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[95:98], v[29:32], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[91:94], v[29:32], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[103:106], v[39:42], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[99:102], v[39:42], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[95:98], v[13:16], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[91:94], v[13:16], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[103:106], v[5:8], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[99:102], v[5:8], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[95:98], v[21:24], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[91:94], v[21:24], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[95:98], v[1:4], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v223, v52
	v_wmma_i32_16x16x16_iu8 v[43:50], v[91:94], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v212, v53
	v_cvt_f32_i32_e32 v224, v54
	v_cvt_f32_i32_e32 v93, v55
	v_cvt_f32_i32_e32 v95, v56
	v_cvt_f32_i32_e32 v94, v57
	v_cvt_f32_i32_e32 v96, v58
	v_cvt_f32_i32_e32 v91, v59
	v_cvt_f32_i32_e32 v92, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v59, v63
	v_cvt_f32_i32_e32 v60, v64
	v_cvt_f32_i32_e32 v57, v65
	v_cvt_f32_i32_e32 v58, v66
	v_cvt_f32_i32_e32 v227, v25
	v_cvt_f32_i32_e32 v228, v26
	v_cvt_f32_i32_e32 v225, v27
	v_cvt_f32_i32_e32 v226, v28
	v_cvt_f32_i32_e32 v98, v29
	v_cvt_f32_i32_e32 v100, v30
	v_cvt_f32_i32_e32 v97, v31
	v_cvt_f32_i32_e32 v99, v32
	v_cvt_f32_i32_e32 v66, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v65, v69
	v_cvt_f32_i32_e32 v67, v70
	v_cvt_f32_i32_e32 v55, v71
	v_cvt_f32_i32_e32 v56, v72
	v_cvt_f32_i32_e32 v53, v73
	v_cvt_f32_i32_e32 v54, v74
	v_cvt_f32_i32_e32 v231, v75
	v_cvt_f32_i32_e32 v181, v76
	v_cvt_f32_i32_e32 v229, v77
	v_cvt_f32_i32_e32 v185, v78
	v_cvt_f32_i32_e32 v253, v79
	v_cvt_f32_i32_e32 v254, v80
	v_cvt_f32_i32_e32 v77, v81
	v_cvt_f32_i32_e32 v78, v82
	v_cvt_f32_i32_e32 v71, v83
	v_cvt_f32_i32_e32 v72, v84
	v_cvt_f32_i32_e32 v70, v85
	v_cvt_f32_i32_e32 v73, v86
	v_cvt_f32_i32_e32 v35, v87
	v_cvt_f32_i32_e32 v52, v88
	v_cvt_f32_i32_e32 v33, v89
	v_cvt_f32_i32_e32 v34, v90
	v_cvt_f32_i32_e32 v222, v9
	v_cvt_f32_i32_e32 v64, v10
	v_cvt_f32_i32_e32 v244, v11
	v_cvt_f32_i32_e32 v187, v12
	v_cvt_f32_i32_e32 v75, v13
	v_cvt_f32_i32_e32 v76, v14
	v_cvt_f32_i32_e32 v219, v15
	v_cvt_f32_i32_e32 v74, v16
	v_cvt_f32_i32_e32 v63, v43
	v_cvt_f32_i32_e32 v69, v44
	v_cvt_f32_i32_e32 v43, v45
	v_cvt_f32_i32_e32 v44, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v19, v48
	v_cvt_f32_i32_e32 v0, v49
	v_cvt_f32_i32_e32 v17, v50
	v_cvt_f32_i32_e32 v245, v51
.LBB0_12:
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s30, 31
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v78, off offset:904
	scratch_store_b32 off, v100, off offset:892
	scratch_store_b32 off, v75, off offset:888
	scratch_store_b32 off, v99, off offset:884
	scratch_store_b32 off, v98, off offset:880
	scratch_store_b32 off, v97, off offset:876
	scratch_store_b32 off, v96, off offset:872
	scratch_store_b32 off, v95, off offset:868
	scratch_store_b32 off, v94, off offset:864
	scratch_store_b32 off, v93, off offset:860
	scratch_store_b32 off, v74, off offset:840
	scratch_store_b32 off, v73, off offset:668
	scratch_store_b32 off, v72, off offset:664
	scratch_store_b32 off, v71, off offset:660
	scratch_store_b32 off, v70, off offset:656
	scratch_store_b32 off, v69, off offset:652
	scratch_store_b32 off, v68, off offset:648
	scratch_store_b32 off, v67, off offset:644
	scratch_store_b32 off, v66, off offset:640
	scratch_store_b32 off, v65, off offset:636
	scratch_store_b32 off, v63, off offset:632
	scratch_store_b32 off, v62, off offset:628
	scratch_store_b32 off, v61, off offset:624
	scratch_store_b32 off, v44, off offset:620
	scratch_store_b32 off, v43, off offset:616
	scratch_store_b32 off, v60, off offset:560
	scratch_store_b32 off, v59, off offset:556
	scratch_store_b32 off, v58, off offset:552
	scratch_store_b32 off, v57, off offset:548
	scratch_store_b32 off, v56, off offset:524
	scratch_store_b32 off, v55, off offset:520
	scratch_store_b32 off, v54, off offset:516
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v53, off offset:512
	scratch_store_b32 off, v52, off offset:500
	scratch_store_b32 off, v35, off offset:484
	scratch_store_b32 off, v34, off offset:476
	scratch_store_b32 off, v33, off offset:464
	scratch_store_b32 off, v114, off offset:380
	scratch_store_b32 off, v113, off offset:376
	scratch_store_b32 off, v112, off offset:364
	scratch_store_b32 off, v111, off offset:360
	scratch_store_b32 off, v109, off offset:352
	scratch_store_b32 off, v108, off offset:348
	scratch_store_b32 off, v107, off offset:344
	scratch_store_b32 off, v19, off offset:300
	scratch_store_b32 off, v18, off offset:288
	scratch_store_b32 off, v17, off offset:252
	scratch_store_b32 off, v0, off offset:248
	s_lshr_b32 s1, s1, 27
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(4)
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:232
	scratch_load_b32 v6, off, off offset:236
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s1, s30, s1
	s_mov_b32 s15, 0x31027000
	s_ashr_i32 s1, s1, 5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s4, s1, s34
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s1, s44
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v0, v130, s1, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v132, s4, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s5, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s31, s15
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 394 39                        ; generate_amdgcn.py:394:39
	v_add3_u32 v7, s26, s27, v135
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v4, v126, s1, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v3, 28, v179
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_and_b32 s13, s13, 0xffff
	scratch_store_b32 off, v7, off offset:896 ; 4-byte Folded Spill
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v7, v7, s4, 1
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v230, 0, v152
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v199, 0
	v_mov_b32_e32 v250, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v11, 0
	s_mov_b32 s4, 0
	v_mov_b32_e32 v23, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v9, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v5, v5, s1, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v2, 32, v36
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v6, v6, s1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_add3_u32 v2, 0, v169, v2
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v8, v2, v3
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v2, 0x80000000, v4 :: v_dual_cndmask_b32 v3, 0x80000000, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v4, 0x80000000, v6 :: v_dual_cndmask_b32 v5, 0x80000000, v7
	s_clause 0x3
	buffer_load_u16 v236, v0, s[12:15], 0 offen
	buffer_load_u16 v151, v2, s[12:15], 0 offen
	buffer_load_u16 v188, v3, s[12:15], 0 offen
	buffer_load_u16 v189, v4, s[12:15], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v3, 0, 1, s3
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v2, s47, v37
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s1, 1, v3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v8, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v0, v5, s[28:31], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[3:6], v230 offset:37376
	ds_load_b128 v[25:28], v230 offset:37392
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v1, s47, v38
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[66:69], v230 offset:36864
	ds_load_b128 v[12:15], v230 offset:36880
	v_mov_b32_e32 v10, 0
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[3:6], off offset:940 ; 16-byte Folded Spill
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[25:28], off offset:924 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_store_b32 off, v8, off offset:900 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v3, 0 :: v_dual_lshlrev_b32 v0, 16, v0
	ds_store_b32 v8, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[56:59], v1
	ds_load_b128 v[48:51], v1 offset:512
	ds_load_b128 v[40:43], v1 offset:1024
	ds_load_b128 v[36:39], v1 offset:1536
	ds_load_b128 v[60:63], v2
	ds_load_b128 v[52:55], v2 offset:512
	ds_load_b128 v[44:47], v2 offset:1024
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_b128 v[32:35], v2 offset:1536
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v0, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v8, s46, v238
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v28, s11 :: v_dual_add_nc_u32 v29, s46, v197
	v_mov_b32_e32 v27, s10
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[0:3], v8
	ds_load_b128 v[8:11], v8 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v26, s9 :: v_dual_mov_b32 v25, s8
	v_dual_mov_b32 v24, s7 :: v_dual_mov_b32 v23, s6
	v_dual_mov_b32 v22, s5 :: v_dual_mov_b32 v21, s4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[16:19], v29
	v_dual_mov_b32 v210, v76 :: v_dual_mov_b32 v211, v77
	v_dual_mov_b32 v200, v91 :: v_dual_mov_b32 v201, v92
	v_dual_mov_b32 v142, v115 :: v_dual_mov_b32 v31, v122
	v_dual_mov_b32 v30, v125 :: v_dual_mov_b32 v65, v123
	v_mov_b32_e32 v137, v124
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[0:3], v[56:59], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[0:3], v[48:51], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[0:3], v[40:43], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[0:3], v[36:39], v[21:28] neg_lo:[1,1,0]
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[0:3], v29 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[8:11], v[56:59], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[8:11], v[48:51], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[8:11], v[40:43], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[8:11], v[36:39], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[16:19], v[60:63], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[16:19], v[52:55], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[16:19], v[44:47], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[16:19], v[32:35], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v250, v72
	v_cvt_f32_i32_e32 v204, v73
	v_cvt_f32_i32_e32 v202, v75
	v_cvt_f32_i32_e32 v205, v86
	v_cvt_f32_i32_e32 v206, v87
	v_cvt_f32_i32_e32 v208, v88
	v_cvt_f32_i32_e32 v209, v89
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[0:3], v[60:63], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[0:3], v[52:55], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[0:3], v[44:47], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[0:3], v[32:35], v[21:28] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v74
	v_cvt_f32_i32_e32 v198, v78
	v_cvt_f32_i32_e32 v199, v79
	v_cvt_f32_i32_e32 v179, v80
	v_cvt_f32_i32_e32 v182, v81
	v_cvt_f32_i32_e32 v144, v82
	v_cvt_f32_i32_e32 v169, v83
	v_cvt_f32_i32_e32 v139, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v90
	v_cvt_f32_i32_e32 v87, v91
	v_mov_b32_e32 v91, v200
	v_cvt_f32_i32_e32 v88, v92
	v_mov_b32_e32 v92, v201
	v_cvt_f32_i32_e32 v89, v93
	v_cvt_f32_i32_e32 v83, v94
	v_cvt_f32_i32_e32 v84, v95
	v_cvt_f32_i32_e32 v81, v96
	v_cvt_f32_i32_e32 v82, v97
	v_cvt_f32_i32_e32 v79, v98
	v_cvt_f32_i32_e32 v80, v99
	v_cvt_f32_i32_e32 v75, v100
	v_cvt_f32_i32_e32 v78, v101
	v_cvt_f32_i32_e32 v96, v102
	v_cvt_f32_i32_e32 v97, v103
	v_cvt_f32_i32_e32 v98, v104
	v_cvt_f32_i32_e32 v99, v105
	v_cvt_f32_i32_e32 v90, v106
	v_cvt_f32_i32_e32 v93, v107
	v_cvt_f32_i32_e32 v94, v108
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v73, v110
	v_cvt_f32_i32_e32 v74, v111
	v_cvt_f32_i32_e32 v29, v112
	v_cvt_f32_i32_e32 v72, v113
	v_mov_b32_e32 v113, v0
	v_cvt_f32_i32_e32 v18, v114
	v_cvt_f32_i32_e32 v19, v115
	v_mov_b32_e32 v115, v142
	v_cvt_f32_i32_e32 v16, v116
	v_cvt_f32_i32_e32 v17, v117
	v_cvt_f32_i32_e32 v102, v118
	v_cvt_f32_i32_e32 v103, v119
	v_cvt_f32_i32_e32 v104, v120
	v_cvt_f32_i32_e32 v105, v121
	v_cvt_f32_i32_e32 v100, v122
	v_mov_b32_e32 v122, v31
	v_cvt_f32_i32_e32 v31, v123
	v_mov_b32_e32 v123, v65
	v_cvt_f32_i32_e32 v65, v124
	v_mov_b32_e32 v124, v137
	v_cvt_f32_i32_e32 v101, v125
	v_mov_b32_e32 v125, v30
	v_cvt_f32_i32_e32 v10, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v8, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v2, v25
	v_cvt_f32_i32_e32 v3, v26
	v_cvt_f32_i32_e32 v0, v27
	v_cvt_f32_i32_e32 v1, v28
	v_cvt_f32_i32_e32 v21, v76
	v_mov_b32_e32 v76, v210
	v_cvt_f32_i32_e32 v22, v77
	v_mov_b32_e32 v77, v211
	v_cvt_f32_i32_e32 v23, v70
	v_cvt_f32_i32_e32 v24, v71
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v105, off offset:856
	scratch_store_b32 off, v104, off offset:852
	scratch_store_b32 off, v103, off offset:848
	scratch_store_b32 off, v102, off offset:844
	scratch_store_b32 off, v101, off offset:836
	scratch_store_b32 off, v65, off offset:832
	scratch_store_b32 off, v31, off offset:824
	scratch_store_b32 off, v100, off offset:820
	scratch_store_b32 off, v24, off offset:816
	scratch_store_b32 off, v23, off offset:812
	scratch_store_b32 off, v99, off offset:808
	scratch_store_b32 off, v98, off offset:804
	scratch_store_b32 off, v97, off offset:800
	scratch_store_b32 off, v96, off offset:796
	scratch_store_b32 off, v209, off offset:792
	scratch_store_b32 off, v208, off offset:784
	scratch_store_b32 off, v206, off offset:780
	scratch_store_b32 off, v205, off offset:772
	scratch_store_b32 off, v22, off offset:760
	scratch_store_b32 off, v95, off offset:756
	scratch_store_b32 off, v21, off offset:752
	scratch_store_b32 off, v94, off offset:748
	scratch_store_b32 off, v93, off offset:740
	scratch_store_b32 off, v90, off offset:736
	scratch_store_b32 off, v204, off offset:724
	scratch_store_b32 off, v89, off offset:716
	scratch_store_b32 off, v88, off offset:708
	scratch_store_b32 off, v87, off offset:700
	scratch_store_b32 off, v86, off offset:688
	scratch_store_b32 off, v202, off offset:672
	scratch_store_b32 off, v199, off offset:508
	scratch_store_b32 off, v198, off offset:504
	s_clause 0x1e                           ; 124-byte Folded Spill
	scratch_store_b32 off, v182, off offset:496
	scratch_store_b32 off, v179, off offset:492
	scratch_store_b32 off, v169, off offset:488
	scratch_store_b32 off, v144, off offset:480
	scratch_store_b32 off, v85, off offset:472
	scratch_store_b32 off, v139, off offset:468
	scratch_store_b32 off, v84, off offset:460
	scratch_store_b32 off, v83, off offset:456
	scratch_store_b32 off, v82, off offset:452
	scratch_store_b32 off, v81, off offset:448
	scratch_store_b32 off, v80, off offset:444
	scratch_store_b32 off, v79, off offset:440
	scratch_store_b32 off, v78, off offset:436
	scratch_store_b32 off, v75, off offset:432
	scratch_store_b32 off, v74, off offset:428
	scratch_store_b32 off, v73, off offset:424
	scratch_store_b32 off, v72, off offset:420
	scratch_store_b32 off, v29, off offset:416
	scratch_store_b32 off, v19, off offset:412
	scratch_store_b32 off, v18, off offset:408
	scratch_store_b32 off, v17, off offset:404
	scratch_store_b32 off, v16, off offset:400
	scratch_store_b32 off, v11, off offset:396
	scratch_store_b32 off, v10, off offset:392
	scratch_store_b32 off, v9, off offset:388
	scratch_store_b32 off, v8, off offset:384
	scratch_store_b32 off, v3, off offset:372
	scratch_store_b32 off, v2, off offset:368
	scratch_store_b32 off, v1, off offset:340
	scratch_store_b32 off, v0, off offset:336
	scratch_store_b32 off, v20, off offset:4
	ds_load_b128 v[28:31], v230 offset:36864
	ds_load_b128 v[24:27], v230 offset:36880
	ds_load_b128 v[16:19], v230 offset:37376
	ds_load_b128 v[8:11], v230 offset:37392
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v0, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v20, v115 :: v_dual_add_nc_u32 v21, s45, v197
	v_dual_mov_b32 v137, v113 :: v_dual_mov_b32 v144, v76
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_mov_b32 s5, s4
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	ds_load_b128 v[0:3], v21 offset:4096
	ds_load_b128 v[110:113], v21
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v21, s45, v238
	v_mov_b32_e32 v169, v77
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v77, s11 :: v_dual_mov_b32 v72, s6
	v_mov_b32_e32 v76, s10
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[114:117], v21 offset:4096
	ds_load_b128 v[118:121], v21
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v75, s9 :: v_dual_mov_b32 v70, s4
	v_dual_mov_b32 v74, s8 :: v_dual_mov_b32 v71, s5
	v_mov_b32_e32 v135, v92
	v_mov_b32_e32 v73, s7
	v_mov_b32_e32 v21, v91
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[86:93], v[114:117], v[56:59], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[118:121], v[56:59], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[114:117], v[48:51], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[0:3], v[60:63], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[110:113], v[60:63], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[118:121], v[48:51], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[0:3], v[52:55], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[114:117], v[40:43], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[110:113], v[52:55], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[118:121], v[40:43], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[0:3], v[44:47], v[102:109] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v232, v78
	v_cvt_f32_i32_e32 v211, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[110:113], v[44:47], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[118:121], v[36:39], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v206, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v210, v84
	v_wmma_i32_16x16x16_iu8 v[40:47], v[110:113], v[32:35], v[40:47] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v110, v92
	v_mov_b32_e32 v92, v135
	v_wmma_i32_16x16x16_iu8 v[70:77], v[114:117], v[36:39], v[70:77] neg_lo:[1,1,0]
	v_mov_b32_e32 v113, v137
	v_mov_b32_e32 v115, v20
	v_cvt_f32_i32_e32 v114, v80
	v_cvt_f32_i32_e32 v116, v81
	v_wmma_i32_16x16x16_iu8 v[70:77], v[0:3], v[32:35], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v246, v85
	v_cvt_f32_i32_e32 v200, v86
	v_cvt_f32_i32_e32 v199, v87
	v_cvt_f32_i32_e32 v78, v88
	v_cvt_f32_i32_e32 v79, v89
	v_cvt_f32_i32_e32 v146, v90
	v_cvt_f32_i32_e32 v204, v91
	v_mov_b32_e32 v91, v21
	v_cvt_f32_i32_e32 v117, v93
	v_cvt_f32_i32_e32 v118, v56
	v_cvt_f32_i32_e32 v120, v57
	v_cvt_f32_i32_e32 v119, v58
	v_cvt_f32_i32_e32 v121, v59
	v_cvt_f32_i32_e32 v90, v60
	v_cvt_f32_i32_e32 v93, v61
	v_cvt_f32_i32_e32 v248, v62
	v_cvt_f32_i32_e32 v65, v63
	v_cvt_f32_i32_e32 v2, v94
	v_cvt_f32_i32_e32 v1, v95
	v_cvt_f32_i32_e32 v80, v96
	v_cvt_f32_i32_e32 v81, v97
	v_cvt_f32_i32_e32 v95, v98
	v_cvt_f32_i32_e32 v97, v99
	v_cvt_f32_i32_e32 v20, v100
	v_cvt_f32_i32_e32 v96, v101
	v_cvt_f32_i32_e32 v135, v48
	v_cvt_f32_i32_e32 v137, v49
	v_cvt_f32_i32_e32 v139, v50
	v_cvt_f32_i32_e32 v148, v51
	v_cvt_f32_i32_e32 v94, v52
	v_cvt_f32_i32_e32 v100, v53
	v_cvt_f32_i32_e32 v99, v54
	v_cvt_f32_i32_e32 v101, v55
	v_cvt_f32_i32_e32 v152, v102
	v_cvt_f32_i32_e32 v203, v103
	v_cvt_f32_i32_e32 v201, v104
	v_cvt_f32_i32_e32 v205, v105
	v_cvt_f32_i32_e32 v5, v106
	v_cvt_f32_i32_e32 v6, v107
	v_cvt_f32_i32_e32 v216, v108
	v_cvt_f32_i32_e32 v217, v109
	v_cvt_f32_i32_e32 v247, v40
	v_cvt_f32_i32_e32 v107, v41
	v_cvt_f32_i32_e32 v214, v42
	v_cvt_f32_i32_e32 v4, v43
	v_cvt_f32_i32_e32 v142, v44
	v_cvt_f32_i32_e32 v103, v45
	v_cvt_f32_i32_e32 v104, v46
	v_cvt_f32_i32_e32 v196, v47
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v7, v74
	v_cvt_f32_i32_e32 v21, v75
	v_cvt_f32_i32_e32 v0, v76
	v_mov_b32_e32 v76, v144
	v_cvt_f32_i32_e32 v3, v77
	v_mov_b32_e32 v77, v169
.LBB0_16:
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v32.l, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v146, off offset:996
	scratch_store_b32 off, v117, off offset:992
	scratch_store_b32 off, v110, off offset:988
	scratch_store_b32 off, v97, off offset:984
	scratch_store_b32 off, v95, off offset:980
	scratch_store_b32 off, v96, off offset:976
	scratch_store_b32 off, v20, off offset:972
	scratch_store_b32 off, v3, off offset:968
	scratch_store_b32 off, v7, off offset:964
	scratch_store_b32 off, v6, off offset:960
	scratch_store_b32 off, v5, off offset:956
	scratch_store_b32 off, v0, off offset:920
	v_mov_b16_e64 v33.h, v188.l
	v_mov_b16_e64 v34.h, v151.l
	v_mov_b16_e64 v32.h, v189.l
	v_mov_b16_e32 v33.l, v32.l
	v_mov_b32_e32 v5, v2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v2, off, off offset:892 ; 4-byte Folded Reload
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_mov_b16_e32 v34.l, v32.l
	scratch_load_b32 v182, off, off offset:912 ; 4-byte Folded Reload
	v_mov_b16_e64 v35.h, v236.l
	v_mov_b16_e32 v35.l, v32.l
	v_dual_mov_b32 v215, v21 :: v_dual_mul_f32 v40, v228, v34
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v41, v227, v34 :: v_dual_mul_f32 v46, v185, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v0, v223, v35
	v_mul_f32_e32 v21, v245, v35
	v_mul_f32_e32 v23, v212, v35
	v_mul_f32_e32 v22, v224, v35
	scratch_load_b32 v185, off, off offset:916 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v36, v0, v29, v239
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v226, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v37, v21, v28, v164
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v21, v225, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v38, v22, v31, v170
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v22, v181, v33
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v42, v0, v31, v147
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v64, v32
	v_mul_f32_e32 v60, v253, v33
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v43, v21, v30, v128
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v47, v229, v33
	v_mul_f32_e32 v21, v222, v32
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v223, v0, v29, v172
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:768 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v44, v22, v29, v168
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v22, v187, v32
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v105, off, off offset:196
	scratch_load_b32 v102, off, off offset:188
	scratch_load_b32 v64, off, off offset:184
	scratch_load_b32 v20, off, off offset:180
	v_mov_b32_e32 v187, v104
	scratch_load_b32 v104, off, off offset:200 ; 4-byte Folded Reload
	v_mov_b32_e32 v151, v232
	scratch_load_b32 v232, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v188, v60, v24, v156
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v60, off, off offset:840
	scratch_load_b32 v49, off, off offset:744
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v225, v21, v28, v175
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v21, off, off offset:676
	scratch_load_b32 v106, off, off offset:828
	scratch_load_b32 v54, off, off offset:680
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v39, v23, v30, v176
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v23, v231, v33
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v41, v41, v28, v141
	v_fma_f32 v226, v22, v31, v150
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v22, v143, v35
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v40, v40, v29, v140
	v_fma_f32 v224, v47, v30, v165
	v_mov_b32_e32 v146, v103
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v103, off, off offset:192
	scratch_load_b32 v112, off, off offset:564
	scratch_load_b32 v181, off, off offset:908
	v_dual_mov_b32 v143, v233 :: v_dual_mov_b32 v110, v107
	v_mov_b32_e32 v253, v80
	scratch_load_b32 v107, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v59, v254, v33
	v_mov_b32_e32 v179, v243
	v_mov_b32_e32 v169, v221
	scratch_load_b32 v111, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 386 29 is_stmt 1              ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s35, 31
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v189, v59, v25, v123
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s1, s1, 27
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s14
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s1, s35, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s31, s15
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s1, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v226, v150, v226, s2
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s1, s44
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s4, s1, s34
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s5, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v156, v156, v188, s2
	s_and_b32 vcc_lo, s3, s5
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s33, s33, s27
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	v_mov_b32_e32 v144, v78
	s_waitcnt vmcnt(19)
	v_dual_mov_b32 v254, v81 :: v_dual_mul_f32 v57, v2, v34
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v2, off, off offset:880 ; 4-byte Folded Reload
	v_mov_b32_e32 v117, v72
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(17)
	v_mul_f32_e32 v0, v0, v35
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v45, v23, v28, v167
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v23, v244, v32
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v46, v46, v31, v166
	v_mov_b32_e32 v244, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v227, v23, v30, v171
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v23, off, off offset:712 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(13)
	v_fma_f32 v30, v22, v68, v104
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(12)
	v_fma_f32 v228, v57, v25, v232
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v60, v60, v32 :: v_dual_mul_f32 v21, v21, v35
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v56, v54, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v31, v21, v69, v105
	v_fma_f32 v56, v56, v68, v221
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v169, v169, v56, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v58, v2, v34
	scratch_load_b32 v2, off, off offset:884 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v28, v0, v67, v185
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v57, v2, v34
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v2, off, off offset:876
	scratch_load_b32 v22, off, off offset:732
	scratch_load_b32 v29, off, off offset:696
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v0, v35 :: v_dual_mul_f32 v23, v23, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v231, v57, v27, v127
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v57, v77, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v48, v23, v67, v103
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:728
	scratch_load_b32 v21, off, off offset:692
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v22, v22, v33 :: v_dual_mul_f32 v47, v29, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v29, v0, v66, v106
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:704 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v52, v22, v67, v20
	v_fma_f32 v47, v47, v66, v220
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v197, v106, v29, s2
	v_mov_b32_e32 v106, v195
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v23, v23, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v51, v23, v66, v182
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v23, off, off offset:684 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v50, v0, v69, v102
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:720 ; 4-byte Folded Reload
	v_mul_f32_e32 v21, v21, v34
	v_mul_f32_e32 v53, v49, v33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v49, v21, v68, v64
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v21, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v0, v0, v68, v243
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v68, v57, v26, v159
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:572
	scratch_load_b32 v109, off, off offset:540
	v_mul_f32_e32 v23, v23, v32
	v_mov_b32_e32 v243, v71
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v61, v23, v69, v240
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:864
	scratch_load_b32 v22, off, off offset:776
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v21, v21, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v55, v21, v67, v242
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v21, off, off offset:868 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v57, v57, v32
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v85, v57, v15, v194
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v23, v23, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v23, v26, v233
	scratch_load_b32 v233, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v229, v58, v24, v233
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v58, v2, v34
	scratch_load_b32 v2, off, off offset:904 ; 4-byte Folded Reload
	v_mul_f32_e32 v21, v21, v35
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v202, v58, v26, v124
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v58, v76, v32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v72, v21, v25, v153
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v21, off, off offset:860 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v62, v2, v33
	scratch_load_b32 v2, off, off offset:888 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v3, v62, v27, v122
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v62, v219, v32 :: v_dual_mul_f32 v21, v21, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v71, v62, v26, v154
	v_fma_f32 v21, v21, v24, v237
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v26, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v59, v2, v32 :: v_dual_mov_b32 v2, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v67, v59, v24, v160
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v24, v251, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v182, v51, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v24, v13, v193
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v24, off, off offset:604 ; 4-byte Folded Reload
	v_mul_f32_e32 v22, v22, v32
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v53, v53, v69, v181
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v69, v60, v27, v155
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v20, v52, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v54, v22, v66, v241
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v22, off, off offset:872 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v66, v58, v25, v163
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v115, v35
	v_mov_b32_e32 v115, v242
	v_mov_b32_e32 v242, v70
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v73, v26, v14, v112
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v26, off, off offset:592 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v63, v25, v12, v192
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v213, v34
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v179, v0, s2
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v0, v132, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v181, v53, s2
	v_mov_b32_e32 v20, v186
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v75, v25, v12, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v24, v24, v35
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v70, v24, v15, v191
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v24, off, off offset:580 ; 4-byte Folded Reload
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v22, v22, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v22, v22, v27, v145
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v27, v218, v34
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v74, v27, v13, v186
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:584
	scratch_load_b32 v25, off, off offset:576
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v24, v24, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v76, v24, v15, v178
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v24, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v79, v27, v12, v109
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:568
	scratch_load_b32 v108, off, off offset:536
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v25, v25, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v77, v25, v14, v111
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v25, off, off offset:588 ; 4-byte Folded Reload
	v_mul_f32_e32 v26, v26, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v78, v26, v13, v174
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v24, v24, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v80, v24, v15, v107
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:648
	scratch_load_b32 v24, off, off offset:612
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v27, v27, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v84, v27, v14, v190
	v_mov_b32_e32 v27, v241
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v81, v25, v14, v177
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:624 ; 4-byte Folded Reload
	v_mov_b32_e32 v25, v240
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v15, v15, v34
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fma_f32 v240, v15, v17, v158
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v15, off, off offset:660 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v15, v15, v33
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v95, v15, v16, v207
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:620
	scratch_load_b32 v26, off, off offset:608
	v_mul_f32_e32 v14, v14, v35
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v24, v24, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v89, v14, v18, v161
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:664 ; 4-byte Folded Reload
	v_mov_b32_e32 v245, v83
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v161, v89, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v15, v15, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v213, v15, v19, v255
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v83, v26, v12, v195
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v12, v92, v35
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v33
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	scratch_load_b32 v15, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v82, v24, v13, v108
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v13, v91, v35
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v86, v12, v17, v136
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v12, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v218, v14, v17, v234
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:632
	scratch_load_b32 v24, off, off offset:616
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v87, v13, v16, v125
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v195, v104, v30, s2
	v_mov_b32_e32 v104, v193
	v_cndmask_b32_e64 v193, v220, v47, s2
	v_cndmask_b32_e64 v26, v115, v55, s2
	v_cndmask_b32_e64 v87, v125, v87, s2
	v_cndmask_b32_e64 v86, v136, v86, s2
	v_cndmask_b32_e64 v181, v104, v62, s2
	v_cndmask_b32_e64 v62, v107, v80, s2
	v_mov_b32_e32 v80, v167
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v15, v15, s1, 1
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v12, v12, v35
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_mul_f32 v14, v14, v32
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v24, v24, v32 :: v_dual_mul_f32 v13, v13, v34
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v88, v12, v19, v162
	v_fma_f32 v212, v14, v16, v235
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:232
	scratch_load_b32 v12, off, off offset:644
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v91, v13, v16, v157
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v219, v24, v18, v249
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v185, v28, s2
	v_cndmask_b32_e64 v185, v105, v31, s2
	v_cndmask_b32_e64 v88, v162, v88, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v14, v14, s1, 1
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v12, v12, v34
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v34
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v92, v12, v19, v149
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v12, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v241, v13, v18, v138
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v12, v12, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v96, v12, v19, v134
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v12, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v13, v13, v33
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v134, v134, v96, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v97, v13, v18, v184
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v13, v126, s1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v132, v184, v97, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_mul_f32 v12, v12, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v98, v12, v17, v173
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v12, v130, s1, 1
	v_mov_b32_e32 v105, v194
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v194, v103, v48, s2
	v_mov_b32_e32 v103, v192
	v_cndmask_b32_e64 v192, v102, v50, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x3
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v126, off, off offset:900 ; 4-byte Folded Reload
	v_mov_b32_e32 v102, v191
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v191, v64, v49, s2
	v_cndmask_b32_e64 v28, v27, v54, s2
	v_cndmask_b32_e64 v54, v25, v61, s2
	v_cndmask_b32_e64 v61, v177, v81, s2
	v_cndmask_b32_e64 v220, v102, v70, s2
	v_cndmask_b32_e64 v81, v239, v36, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v186, 16, v12
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v12, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_store_b32 v126, v0 offset:36864
	scratch_load_b32 v0, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v12, v186
	scratch_load_b32 v12, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v64, 16, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v0, v186 :: v_dual_lshlrev_b32 v27, 16, v15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v97, v243, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v12, v186
	scratch_load_b32 v12, off, off offset:780 ; 4-byte Folded Reload
	v_mul_f32_e32 v18, v250, v186
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v104, v4, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v12, v64
	scratch_load_b32 v12, off, off offset:772 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v29, v12, v64
	scratch_load_b32 v12, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v30, v12, v64 :: v_dual_lshlrev_b32 v49, 16, v14
	scratch_load_b32 v12, off, off offset:784 ; 4-byte Folded Reload
	v_mov_b32_e32 v102, v168
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v96, v201, v49 :: v_dual_mul_f32 v31, v12, v64
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v12, off, off offset:800 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v12, v49
	scratch_load_b32 v12, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v12, v49
	scratch_load_b32 v12, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v12, v49
	scratch_load_b32 v12, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v51, v12, v49
	scratch_load_b32 v12, off, off offset:848 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v52, v12, v27
	scratch_load_b32 v12, off, off offset:844 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v53, v12, v27
	scratch_load_b32 v12, off, off offset:852 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v12, v27
	scratch_load_b32 v12, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v12, v27
	ds_load_b128 v[12:15], v230 offset:36864
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v222, v0, v13, v24
	v_mov_b32_e32 v0, v190
	v_fma_f32 v238, v29, v12, v193
	v_fma_f32 v6, v53, v12, v28
	v_fma_f32 v251, v19, v13, v194
	v_fma_f32 v190, v17, v15, v185
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v0, v84, s2
	v_mov_b32_e32 v0, v174
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v236, v47, v13, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v106, v83, s2
	v_mov_b32_e32 v83, v172
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	scratch_store_b32 off, v6, off offset:192 ; 4-byte Folded Spill
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v174, v20, v74, s2
	v_mov_b32_e32 v20, v166
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v179, v18, v14, v195
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v166, v83, v223, s2
	v_cndmask_b32_e64 v223, v80, v45, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v45, v121, v64
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v52, v13, v26
	v_mov_b32_e32 v13, v180
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v180, v103, v63, s2
	v_cndmask_b32_e64 v63, v109, v79, s2
	v_mov_b32_e32 v79, v170
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v221, v16, v12, v197
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v16, v113, v186 :: v_dual_mov_b32 v113, v163
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v208, v48, v12, v59
	v_mov_b32_e32 v12, v178
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v115, v0, v78, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:672 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v250, v31, v14, v191
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v108, v82, s2
	v_cndmask_b32_e64 v172, v12, v76, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v12, off, off offset:760 ; 4-byte Folded Reload
	v_mov_b32_e32 v82, v171
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v171, v111, v77, s2
	v_mov_b32_e32 v111, v155
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v209, v50, v15, v58
	scratch_store_b32 off, v6, off offset:196 ; 4-byte Folded Spill
	v_fma_f32 v6, v55, v14, v169
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v178, v112, v73, s2
	v_cndmask_b32_e64 v25, v13, v75, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v198, v30, v15, v192
	v_fma_f32 v252, v51, v14, v57
	scratch_store_b32 off, v6, off offset:184 ; 4-byte Folded Spill
	v_fma_f32 v6, v56, v15, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v105, v85, s2
	v_cndmask_b32_e64 v83, v79, v38, s2
	v_cndmask_b32_e64 v79, v141, v41, s2
	v_mov_b32_e32 v112, v160
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v41, v116, v186
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v160, v20, v46, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v46, v119, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v163, v82, v227, s2
	v_cndmask_b32_e64 v82, v164, v37, s2
	v_cndmask_b32_e64 v84, v176, v39, s2
	v_cndmask_b32_e64 v85, v140, v40, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v40, v151, v186
	v_mul_f32_e32 v103, v247, v27
	v_mul_f32_e32 v105, v214, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v150, v113, v66, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v113, v187, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v124, v202, s2
	v_cndmask_b32_e64 v202, v123, v189, s2
	v_cndmask_b32_e64 v141, v159, v68, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v12, v186
	scratch_load_b32 v12, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v12, v186
	scratch_load_b32 v12, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v12, v64
	scratch_load_b32 v12, off, off offset:688 ; 4-byte Folded Reload
	v_mul_f32_e32 v0, v0, v186
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v12, v64
	scratch_load_b32 v12, off, off offset:716 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v12, v64
	scratch_load_b32 v12, off, off offset:708 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v12, v64
	scratch_load_b32 v12, off, off offset:740 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v12, v49
	scratch_load_b32 v12, off, off offset:736 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v70, v12, v49
	scratch_load_b32 v12, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v12, v49
	scratch_load_b32 v12, off, off offset:748 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v12, v49
	scratch_load_b32 v12, off, off offset:824 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v12, v27
	scratch_load_b32 v12, off, off offset:820 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v12, v27
	scratch_load_b32 v12, off, off offset:832 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v12, v27
	scratch_load_b32 v12, off, off offset:836 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v78, v12, v27
	ds_load_b128 v[12:15], v230 offset:36880
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v7, v75, v13, v31
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v75, v135, v49
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v51, v0, v13, v181
	v_fma_f32 v0, v77, v14, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_store_b32 off, v6, off offset:188 ; 4-byte Folded Spill
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v52, v16, v12, v180
	v_fma_f32 v53, v17, v15, v220
	v_fma_f32 v182, v18, v14, v178
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_fma_f32 v0, v78, v15, v30
	v_fma_f32 v177, v19, v13, v174
	v_fma_f32 v48, v48, v12, v25
	v_fma_f32 v50, v50, v15, v172
	v_fma_f32 v170, v55, v14, v171
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v55, v56, v13, v115
	v_fma_f32 v168, v70, v12, v63
	v_fma_f32 v56, v74, v14, v61
	v_fma_f32 v6, v76, v12, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v147, v42, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v42, v114, v186
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v167, v73, v15, v62
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	ds_load_b128 v[16:19], v230 offset:37376
	ds_load_b128 v[12:15], v230 offset:37392
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v128, v43, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v43, v120, v64 :: v_dual_mul_f32 v78, v139, v49
	v_mul_f32_e32 v73, v137, v49
	v_mul_f32_e32 v76, v148, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v148, v234, v218, s2
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, v0, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v126, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v230 offset:36864
	v_mov_b32_e32 v0, v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v165, v175, v225, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v4, off, off offset:996 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v155, v0, v224, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v211, v186
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v80, v45, v39, v74
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v111, v69, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v69, v101, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v225, v102, v44, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v102, v110, v27
	v_mul_f32_e32 v44, v118, v64
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v106, v0, v37, v81
	v_fma_f32 v107, v40, v36, v82
	v_fma_f32 v110, v43, v37, v85
	v_fma_f32 v211, v73, v37, v225
	v_dual_mov_b32 v40, v154 :: v_dual_mul_f32 v43, v100, v49
	v_fma_f32 v154, v102, v37, v166
	v_mov_b32_e32 v37, v153
	v_fma_f32 v108, v41, v39, v83
	v_fma_f32 v109, v42, v38, v84
	v_fma_f32 v130, v44, v36, v79
	v_fma_f32 v77, v46, v38, v70
	v_fma_f32 v114, v75, v36, v223
	v_fma_f32 v227, v76, v39, v160
	v_fma_f32 v224, v78, v38, v155
	v_fma_f32 v153, v103, v36, v165
	v_fma_f32 v176, v104, v39, v226
	v_fma_f32 v151, v105, v38, v163
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v37, v72, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[36:39], v230 offset:36880
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v237, v21, s2
	v_cndmask_b32_e64 v104, v145, v22, s2
	v_cndmask_b32_e64 v105, v143, v23, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v21, v206, v186
	v_mul_f32_e32 v22, v246, v186
	v_mul_f32_e32 v23, v210, v186
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v145, v122, v3, s2
	v_cndmask_b32_e64 v143, v207, v95, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v95, v205, v49
	v_mul_f32_e32 v41, v65, v64
	v_mul_f32_e32 v111, v142, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v112, v67, s2
	v_cndmask_b32_e64 v67, v127, v231, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v112, v196, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v232, v228, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v42, v248, v64 :: v_dual_mul_f32 v65, v94, v49
	v_dual_mul_f32 v72, v99, v49 :: v_dual_mul_f32 v99, v244, v27
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v122, v21, v36, v103
	v_fma_f32 v123, v22, v39, v104
	v_fma_f32 v124, v23, v38, v105
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[20:23], v230 offset:37376
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v73, v41, v39, v67
	v_fma_f32 v159, v69, v39, v145
	v_fma_f32 v175, v112, v39, v45
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v39, v200, v186
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v40, v71, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v40, v93, v64
	v_mul_f32_e32 v3, v90, v64
	v_mul_f32_e32 v76, v146, v27
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v68, v42, v38, v66
	v_fma_f32 v206, v43, v37, v202
	v_fma_f32 v188, v65, v36, v156
	v_fma_f32 v147, v72, v38, v141
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v173, v98, s2
	v_cndmask_b32_e64 v69, v158, v240, s2
	v_cndmask_b32_e64 v65, v157, v91, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v42, v2, v186
	v_mul_f32_e32 v43, v144, v186
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v139, v40, v37, v75
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v235, v212, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v72, v1, v64
	v_mul_f32_e32 v90, v5, v64
	v_mul_f32_e32 v94, v152, v49
	v_mul_f32_e32 v98, v242, v27
	v_dual_mul_f32 v0, v245, v186 :: v_dual_mul_f32 v93, v203, v49
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v164, v76, v37, v150
	v_fma_f32 v137, v111, v36, v46
	v_fma_f32 v135, v113, v38, v44
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v38, v199, v186
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v111, v39, v20, v87
	v_fma_f32 v112, v42, v23, v88
	v_fma_f32 v76, v72, v21, v69
	v_fma_f32 v72, v90, v20, v65
	v_fma_f32 v157, v94, v20, v143
	v_fma_f32 v42, v98, v20, v40
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v81, v106, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v101, v38, v21, v86
	v_fma_f32 v113, v43, v22, v89
	v_fma_f32 v199, v93, v21, v148
	v_fma_f32 v43, v97, v21, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v233, v229, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v121, v0, v37, v102
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v138, v241, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v100, v117, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v78, v3, v36, v71
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v249, v219, s2
	v_cndmask_b32_e64 v3, v149, v92, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v92, v253, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v140, v96, v22, v132
	v_fma_f32 v38, v100, v22, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v255, v213, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v1, v92, v22, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v91, v254, v64
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v144, v95, v23, v134
	v_fma_f32 v39, v99, v23, v37
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v83, v108, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v2, v91, v23, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v79, v130, s3
	v_cndmask_b32_e64 v66, v66, v68, s3
	v_cndmask_b32_e64 v75, v75, v139, s3
	v_cndmask_b32_e64 v0, v0, v1, s3
	v_cndmask_b32_e64 v2, v3, v2, s3
	v_cndmask_b32_e64 v46, v46, v137, s3
	v_cndmask_b32_e64 v37, v37, v39, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v21, v21, v22
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_mul_f32_e32 v3, 0xbfb8aa3b, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v38, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.h, v32.l
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_mul_f32 v68, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v81, v23
	v_div_scale_f32 v81, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v81, v23
	v_fma_f32 v91, -v22, v90, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v23
	v_fma_f32 v22, -v22, v90, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v23, v90
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v82, v107, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v119, v22, v21, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v84, v109, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v81, v81, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v82, null, v81, v81, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v82
	v_fma_f32 v91, -v82, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v23, v81, v23
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v82, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v92, v91
	v_div_fmas_f32 v82, v82, v90, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v90, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v120, v82, v81, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v102, v121, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, 0xbfb8aa3b, v23
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v90, v90
	v_ldexp_f32 v90, v90, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v90, 1.0, v90
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v91, null, v90, v90, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v83, v90, v83
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v94, v93
	v_fmac_f32_e32 v94, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v121, v91, v90, v83
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v103, v122, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v84, v22
	v_fma_f32 v92, -v22, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v92, v84
	v_div_scale_f32 v92, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v93, v92, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v22, v93, v92
	v_fmac_f32_e32 v93, v94, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v93, v92
	v_div_fmas_f32 v22, v22, v84, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v122, v22, v21, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v104, v123, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v82
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v81, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v82, null, v81, v81, v23
	v_rcp_f32_e32 v84, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v82, v84, 1.0
	v_fmac_f32_e32 v84, v92, v84
	v_div_scale_f32 v92, vcc_lo, v23, v81, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v84
	v_fma_f32 v94, -v82, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v84
	v_fma_f32 v82, -v82, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v84, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v123, v82, v81, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v105, v124, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v81, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v84, v84, v90
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v84, 1.0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v90, null, v84, v84, v83
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v90, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v83, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v22
	v_fma_f32 v92, -v22, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v20, v21, v20
	v_div_fixup_f32 v124, v90, v84, v83
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v86, v101, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v93, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v22, v93, v92
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v93, v92
	v_div_fmas_f32 v22, v22, v91, v93
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v125, v22, v21, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v87, v111, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v83
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v82
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v81, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v82, null, v81, v81, v23
	v_rcp_f32_e32 v91, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v82, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v23, v81, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v82, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v82, -v82, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v91, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v126, v82, v81, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v88, v112, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	v_mul_f32_e32 v81, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v84, v84
	v_ldexp_f32 v84, v84, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v84, 1.0, v84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v86, null, v84, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v86
	v_fma_f32 v91, -v86, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v83, v84, v83
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v86, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v86, v92, v91
	v_div_fmas_f32 v86, v86, v90, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v127, v86, v84, v83
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v89, v113, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v87, v22
	v_fma_f32 v90, -v22, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v91, v90, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v22, v91, v90
	v_fmac_f32_e32 v91, v92, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v91, v90
	v_div_fmas_f32 v22, v22, v87, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v23
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v82
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v87, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v81, null, v87, v87, v23
	v_rcp_f32_e32 v82, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v81, v82, 1.0
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, vcc_lo, v23, v87, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v88, v82
	v_div_fixup_f32 v128, v22, v21, v20
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v20, off, off offset:560 ; 4-byte Folded Reload
	v_mul_f32_e32 v21, v204, v186
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v91, -v81, v90, v88
	v_fmac_f32_e32 v90, v91, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v81, v90, v88
	v_div_fmas_f32 v88, v81, v82, v90
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v113, v88, v87, v23
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v87, v4, v186
	scratch_load_b32 v4, off, off offset:992 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v86
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v82
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v89, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v81, null, v89, v89, v86
	v_rcp_f32_e32 v82, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v81, v82, 1.0
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v86, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v82
	v_fma_f32 v90, -v81, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v90, v82
	v_fma_f32 v81, -v81, v84, v83
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v90, v81, v82, v84
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	ds_load_b128 v[81:84], v230 offset:37392
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v112, v90, v89, v86
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v86, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v89, v4, v186
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:988
	scratch_load_b32 v23, off, off offset:556
	v_mul_f32_e32 v20, v20, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v20, v20, v9, v183
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v183, v20, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, v21, v82, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v21, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v91, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v22, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v22, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v22, -v22, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v22, v22, v91, v93
	v_div_fixup_f32 v111, v22, v21, v20
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v20, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v86, v86, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v86, v86, v11, v131
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v131, v86, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v89, v89, v84, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v86, v89, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v89, 0xbfb8aa3b, v86
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v21, v4, v186
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v23, v23, v35
	scratch_load_b32 v4, off, off offset:980 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v23, v8, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v133, v23, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v87, v87, v81, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v87, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v88, null, v87, v87, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v88, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v23, v87, v23
	v_mul_f32_e32 v93, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v88, v93, v92
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v93, v92
	v_div_fmas_f32 v88, v88, v91, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v89
	v_cndmask_b32_e64 v89, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v20, v20, v35 :: v_dual_fmac_f32 v89, 0xbfb8aa3b, v86
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v20, v20, v10, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v89, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v129, v20, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v129, v88, v87, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v85, v110, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v21, v21, v83, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v85, 0xbfb8aa3b, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v89, v89, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v21, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v89, 1.0, v89
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v90, null, v89, v89, v86
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v90, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v86, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v110, v90, v89, v86
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v86, 0xbfb8aa3b, v79 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v91, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v22, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v22, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v22, -v22, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v91, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v130, v22, v21, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v85, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v74, v80, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v23
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v85, v85
	v_ldexp_f32 v85, v85, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v85, 1.0, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v87, null, v85, v85, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v87
	v_fma_f32 v91, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, vcc_lo, v23, v85, v23
	v_mul_f32_e32 v92, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v87, v92, v91
	v_fmac_f32_e32 v92, v93, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v87, v92, v91
	v_div_fmas_f32 v87, v87, v88, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v131, v87, v85, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v86, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v70, v77, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v86, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v70, 0xbfb8aa3b, v23
	v_exp_f32_e32 v86, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v86, v86, v88
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v86, 1.0, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v88, null, v86, v86, v79
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v79, v86, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v133, v88, v86, v79
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v74, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v22, v74, 1.0
	v_fmac_f32_e32 v74, v80, v74
	v_div_scale_f32 v80, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v80, v74
	v_fma_f32 v90, -v22, v89, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v74
	v_fma_f32 v22, -v22, v89, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v74, v89
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v139, v22, v21, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v71, v78, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v70, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v74
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v70, v70, v23
	v_rcp_f32_e32 v77, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v74, v77, 1.0
	v_fmac_f32_e32 v77, v80, v77
	v_div_scale_f32 v80, vcc_lo, v23, v70, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v80, v77
	v_fma_f32 v87, -v74, v85, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v87, v77
	v_fma_f32 v74, -v74, v85, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v74, v77, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v77, 0xbfb8aa3b, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v142, v74, v70, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v77
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v67, v73, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v67, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v75
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v77, v77, v79
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v77, 1.0, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v79, null, v77, v77, v75
	v_rcp_f32_e32 v80, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v79, v80, 1.0
	v_fmac_f32_e32 v80, v85, v80
	v_div_scale_f32 v85, vcc_lo, v75, v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v86, v85, v80
	v_fma_f32 v87, -v79, v86, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v80
	v_fma_f32 v79, -v79, v86, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v79, v79, v80, v86
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v146, v79, v77, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v71, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v22, v71, 1.0
	v_fmac_f32_e32 v71, v78, v71
	v_div_scale_f32 v78, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v78, v71
	v_fma_f32 v85, -v22, v80, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v85, v71
	v_fma_f32 v22, -v22, v80, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v71, v80
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v149, v22, v21, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v69, v76, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v23
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, null, v67, v67, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v73, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v73, vcc_lo, v23, v67, v23
	v_mul_f32_e32 v74, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v70, v74, v73
	v_fmac_f32_e32 v74, v78, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v74, v73
	v_div_fmas_f32 v70, v70, v71, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v158, v70, v67, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v65, v72, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v68, 0xbfb8aa3b, v66 :: v_dual_mul_f32 v65, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, null, v68, v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v71
	v_fma_f32 v74, -v71, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v66, v68, v66
	v_mul_f32_e32 v75, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v71, v75, v74
	v_fmac_f32_e32 v75, v77, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v75, v74
	v_div_fmas_f32 v71, v71, v73, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v162, v71, v68, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v22
	v_fma_f32 v73, -v22, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v73, v69
	v_div_scale_f32 v73, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v74, v73, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v22, v74, v73
	v_fmac_f32_e32 v74, v75, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v74, v73
	v_div_fmas_f32 v22, v22, v69, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v200, v22, v21, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, null, v65, v65, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v67
	v_fma_f32 v70, -v67, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v23, v65, v23
	v_mul_f32_e32 v72, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v67, v72, v70
	v_fmac_f32_e32 v72, v73, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v72, v70
	v_div_fmas_f32 v67, v67, v69, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v204, v67, v65, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v3, v3
	v_ldexp_f32 v3, v3, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v3, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v66
	v_fma_f32 v69, -v66, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v2, v3, v2
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v66, v70, v69
	v_fmac_f32_e32 v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v70, v69
	v_div_fmas_f32 v66, v66, v68, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v161, v66, v3, v2
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:524
	scratch_load_b32 v3, off, off offset:104
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v20
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v1, v1, v0
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v22, v21
	v_fma_f32 v69, -v20, v68, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v21
	v_fma_f32 v20, -v20, v68, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v20, v20, v21, v68
	v_div_fixup_f32 v207, v20, v1, v0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v225, v211, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v1, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v2, v2, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v2, v2, v9, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v3, v2, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v3, off, off offset:984 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v3, v64
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v3, v3, v82, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v3, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v3, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v3, v3
	v_ldexp_f32 v3, v3, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v3, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v23, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v2, v3, v2
	v_mul_f32_e32 v65, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v21, v65, v23
	v_fmac_f32_e32 v65, v66, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v21, -v21, v65, v23
	scratch_load_b32 v23, off, off offset:100 ; 4-byte Folded Reload
	v_div_fmas_f32 v21, v21, v22, v65
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v22, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v109, v21, v3, v2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v22, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v22, v22, v8, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v23, v22, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v23, v4, v64
	scratch_load_b32 v4, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v23, v81, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v23, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v65, null, v23, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v22, v23, v22
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v65, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v65, -v65, v68, v67
	scratch_load_b32 v67, off, off offset:96 ; 4-byte Folded Reload
	v_div_fmas_f32 v65, v65, v66, v68
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v66, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v108, v65, v23, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v66, v66, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v66, v66, v11, v67
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v67, v66, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v67, v4, v64
	scratch_load_b32 v4, off, off offset:972 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v67, v67, v84, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v66, v67, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v67, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v70, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v66, v67, v66
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v68, -v68, v71, v70
	scratch_load_b32 v70, off, off offset:92 ; 4-byte Folded Reload
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v69, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v107, v68, v67, v66
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v69, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v69, v69, v10, v70
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v70, v69, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v70, v4, v64
	scratch_load_b32 v4, off, off offset:956 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v70, v70, v83, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, null, v70, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v73, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v69, v70, v69
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v71, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v74, v73
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v106, v71, v70, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v3, v2
	v_fma_f32 v20, -v2, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, v20, v3
	v_div_scale_f32 v20, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v21, v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v2, v21, v20
	v_fmac_f32_e32 v21, v22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v21, v20
	v_div_fmas_f32 v2, v2, v3, v21
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v223, v114, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v205, v2, v1, v0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v3
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v156, v188, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v3
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v21
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v20, v20, v3
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v3, v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v23, v22
	v_fma_f32 v66, -v21, v65, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v22
	v_fma_f32 v21, -v21, v65, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v22, v65
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v160, v227, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v203, v21, v20, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v65
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v65, null, v23, v23, v22
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v65, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v65, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v65, v65, v66, v68
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v155, v224, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v67, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v70, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v66, v67, v66
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v71, v70
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v202, v206, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v202, v65, v23, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v160, v68, v67, v66
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, null, v70, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v73, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v69, v70, v69
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v71, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v74, v73
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v155, v71, v70, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v3, v2
	v_fma_f32 v20, -v2, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, v20, v3
	v_div_scale_f32 v20, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v21, v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v2, v21, v20
	v_fmac_f32_e32 v21, v22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v21, v20
	v_div_fmas_f32 v2, v2, v3, v21
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v145, v159, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v3
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v21
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v20, v20, v3
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v3, v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v23, v22
	v_fma_f32 v66, -v21, v65, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v22
	v_fma_f32 v21, -v21, v65, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v22, v65
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v141, v147, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v147, v21, v20, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v65
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v65, null, v23, v23, v22
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v65, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v65, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v65, v65, v66, v68
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v148, v199, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v148, v2, v1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v134, v144, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v145, v65, v23, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v66
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v67, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v70, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v66, v67, v66
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v68, v71, v70
	v_fmac_f32_e32 v71, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v71, v70
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v143, v157, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v143, v68, v67, v66
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, null, v70, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v73, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v69, v70, v69
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v71, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v74, v73
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v141, v71, v70, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v3, v2
	v_fma_f32 v20, -v2, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, v20, v3
	v_div_scale_f32 v20, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v21, v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v2, v21, v20
	v_fmac_f32_e32 v21, v22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v21, v20
	v_div_fmas_f32 v2, v2, v3, v21
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v132, v140, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v3
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v21
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v20, v20, v3
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v3, v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v23, v22
	v_fma_f32 v66, -v21, v65, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v22
	v_fma_f32 v21, -v21, v65, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v21, v21, v22, v65
	v_div_fixup_f32 v65, v2, v1, v0
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:500
	scratch_load_b32 v1, off, off offset:88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v3, v21, v20, v3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v33
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, v0, v9, v1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v1, v0, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v1, off, off offset:960 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v1, v1, v82, v0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v22, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v2, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v23, v22
	v_fma_f32 v67, -v2, v66, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v22
	v_fma_f32 v2, -v2, v66, v23
	scratch_load_b32 v23, off, off offset:84 ; 4-byte Folded Reload
	v_div_fmas_f32 v2, v2, v22, v66
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v22, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v1, v2, v1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v166, v154, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v22, v33
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v22, v22, v8, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v23, v22, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v23, v4, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v4, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v23, v81, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v23, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v66
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v23, v23, v22
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v66, -v66, v69, v68
	scratch_load_b32 v68, off, off offset:80 ; 4-byte Folded Reload
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v67, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v66, v23, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v67, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v67, v67, v11, v68
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v68, v67, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v68, v217, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v68, v68, v84, v67
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v67, v68, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v67
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v69
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v68, v68, v67
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v67, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v71, v70
	v_fma_f32 v73, -v69, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v70
	v_fma_f32 v69, -v69, v72, v71
	scratch_load_b32 v71, off, off offset:76 ; 4-byte Folded Reload
	v_div_fmas_f32 v69, v69, v70, v72
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v70, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v103, v69, v68, v67
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v70, v70, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v70, v70, v10, v71
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v71, v70, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v71, v216, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v71, v71, v83, v70
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v70, v71, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v70
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v70
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v72
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v71, v71, v70
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v70, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v72, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v102, v72, v71, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v2
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v21
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v20, v20, v2
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v2, v20, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v23, v22
	v_fma_f32 v67, -v21, v66, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v22
	v_fma_f32 v21, -v21, v66, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v22, v66
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v165, v153, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v21, v20, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v226, v176, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v23, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v22, v23, v22
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v66, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v67
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, null, v21, v21, v20
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v67, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v163, v151, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, null, v69, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v72, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v68, v69, v68
	v_mul_f32_e32 v73, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v70, v73, v72
	v_fmac_f32_e32 v73, v74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v73, v72
	v_div_fmas_f32 v70, v70, v71, v73
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v150, v164, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v72, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v71
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v72, v72, v73
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v75, 1.0, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v75, v75, v71
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v71, v75, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v74, v73
	v_fma_f32 v77, -v72, v76, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v73
	v_fma_f32 v72, -v72, v76, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v76, v72, v73, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v72, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v46
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v72, v72, v73
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v77, 1.0, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v77, v77, v46
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v46, v77, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v74, v73
	v_fma_f32 v79, -v72, v78, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v73
	v_fma_f32 v72, -v72, v78, v74
	v_div_fixup_f32 v74, v66, v23, v22
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v78, v72, v73, v78
	v_div_fixup_f32 v72, v67, v21, v20
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v45, v175, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v73, v70, v69, v68
	v_div_fixup_f32 v68, v76, v75, v71
	v_div_fixup_f32 v67, v78, v77, v46
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:168
	scratch_load_b32 v77, off, off offset:164
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v45, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v45, v23
	v_div_scale_f32 v45, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v46, v45, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v22, v46, v45
	v_fmac_f32_e32 v46, v66, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v44, v135, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v22, v46, v45
	v_div_fmas_f32 v22, v22, v23, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v66
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v66
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v44
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v69, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v69, v69, v66
	v_rcp_f32_e32 v44, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v23, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v66, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v70, -v23, v46, v45
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v46, v70, v44
	v_div_fixup_f32 v70, v22, v21, v20
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v24, v222, s3
	v_cndmask_b32_e64 v21, v197, v221, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.h, v32.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v23, v46, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v20, v20, v119 :: v_dual_mul_f32 v21, v21, v120
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v71, v23, v44, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v20.h
	v_mov_b16_e32 v23.l, v21.h
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cmp_o_f32_e64 s1, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v22, 1, v22
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v22, v20, v22, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v185, v190, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v23, v21, v23, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v195, v179, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v44.h, 0x7fff, v22.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v44.l, 0x7fff, v23.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v21, v122
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v181, v51, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.h, v32.l
	v_mov_b16_e32 v23.l, v20.h
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_mov_b16_e32 v45.l, v21.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v22, v123
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v21, v21
	v_and_b32_e32 v23, 1, v23
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v51, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v45
	v_cmp_o_f32_e64 s4, v22, v22
	v_add3_u32 v23, v20, v23, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v180, v52, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v21, v45, 0x7fff
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e32 v21.h, v32.l
	v_mov_b16_e32 v45.h, v32.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v20, v20, v124 :: v_dual_and_b32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v20.h
	v_cmp_o_f32_e64 s5, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v21, v22, v21, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v220, v53, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v22, v125
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v75, v20, v45, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v46.h, s1
	v_cndmask_b16 v46.h, 0x7fff, v21.h, s4
	v_mov_b16_e32 v21.h, v32.l
	v_mov_b16_e32 v21.l, v22.h
	v_cndmask_b16 v45.h, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v23, off, off offset:176
	scratch_load_b128 v[116:119], off, off offset:940
	v_cndmask_b16 v46.l, 0x7fff, v75.h, s5
	v_and_b32_e32 v21, 1, v21
	scratch_load_b32 v75, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v178, v182, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v21, v22, v21, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v22, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v126
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v98.h, 0x7fff, v21.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s1, v20, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v51, v51, v27
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v22, v35
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v22, v22, v117, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v23, v22, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v23, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v23, v35
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v23, v23, v116, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v75, v23, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v75, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v186
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v75, v75, v17, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v75, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v75, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v22, v127
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v22, v22
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v75, v75, v16, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v75, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v75.l, v20.h
	v_mov_b16_e32 v75.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v75, v20, v75, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v23, v128
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v22.h
	v_mov_b16_e32 v23.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v98.l, 0x7fff, v75.h, s1
	v_cmp_o_f32_e64 s5, v20, v20
	scratch_load_b32 v75, off, off offset:156 ; 4-byte Folded Reload
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v22, v23, 0x7fff
	v_mov_b16_e32 v22.l, v20.h
	v_mov_b16_e32 v22.h, v32.l
	v_cndmask_b16 v99.h, 0x7fff, v23.h, s4
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v23, off, off offset:160
	scratch_load_b128 v[85:88], off, off offset:924
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v22, v20, v22, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v20, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v99.l, 0x7fff, v22.h, s5
	v_mov_b16_e32 v22.h, v32.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v20, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v20, v119, v76
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v76, v20, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v76, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v76, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v76, v76, v118, v77
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v77, v76, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v77, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v77, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v77, v77, v19, v20
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v77, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v77, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v20.h
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v20, v22, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v20, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v20, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v20, v86, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v23, v20, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v23, off, off offset:352 ; 4-byte Folded Reload
	v_mul_f32_e32 v77, v77, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v77, v77, v18, v76
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v76, v77, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v77, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v76, v112
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v76, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v21, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v23, v23, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v23, v23, v85, v75
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v75, v23, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v75, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v77, v77, v186
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v75, v75, v13, v20
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v75, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v75, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v20, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v186
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v75, v75, v12, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v75, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v75.l, v21.h
	v_mov_b16_e32 v75.h, v32.l
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v75, v21, v75, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v23, v129
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v20.h
	v_mov_b16_e32 v23.h, v32.l
	v_cmp_o_f32_e64 s5, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v20, v23, 0x7fff
	v_mov_b16_e32 v20.l, v21.h
	v_mov_b16_e32 v20.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v94.h, 0x7fff, v23.h, s4
	v_mov_b16_e32 v23.h, v32.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v21, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v94.l, 0x7fff, v20.h, s5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v21, v35
	v_mul_f32_e32 v35, v76, v35
	scratch_load_b32 v76, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v21, v21, v88, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v76, v21, s2
	scratch_load_b32 v76, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v35, v35, v87, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v76, v35, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v76, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v76, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v76, v76, v15, v21
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v76, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v76, v77, v14, v35
	scratch_load_b32 v77, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v21, v110
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v35, v76, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v35.h, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v35.l, 0x7fff, v75.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v194, v251, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v21.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v76, v130
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v75.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v22, v131
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v23, 1, v23
	v_mov_b16_e32 v75.l, v20.h
	v_cmp_o_f32_e64 s1, v20, v20
	v_mov_b16_e32 v76.h, v32.l
	v_cmp_o_f32_e64 s4, v22, v22
	v_add3_u32 v23, v21, v23, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v193, v238, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v95.h, 0x7fff, v23.h, vcc_lo
	v_mov_b16_e32 v23.h, v32.l
	v_add3_u32 v75, v20, v75, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v21, v133
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e32 v21.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v95.l, 0x7fff, v75.h, s1
	v_mov_b16_e32 v76.l, v20.h
	v_cmp_o_f32_e64 s5, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v21, 1, v21
	v_mov_b16_e32 v75.h, v32.l
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v22, v21, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v192, v198, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v76, v20, v76, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v191, v250, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v96.h, 0x7fff, v21.h, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v22, v139
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v174, v177, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v96.l, 0x7fff, v76.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v142
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v76.h, v32.l
	v_mov_b16_e32 v23.l, v22.h
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v21, v146
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v75.l, v20.h
	v_cmp_o_f32_e64 s1, v20, v20
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v21, v21
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v22, v23, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v25, v48, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v75, v20, v75, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v97.h, 0x7fff, v23.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v22, v149
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e32 v22.h, v32.l
	scratch_load_b32 v23, off, off offset:144 ; 4-byte Folded Reload
	v_cndmask_b16 v97.l, 0x7fff, v75.h, s1
	scratch_load_b32 v75, off, off offset:140 ; 4-byte Folded Reload
	v_mov_b16_e32 v76.l, v20.h
	v_and_b32_e32 v22, 1, v22
	v_cmp_o_f32_e64 s5, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v76, 1, v76
	v_add3_u32 v22, v21, v22, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v172, v50, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v76, v20, v76, 0x7fff
	v_cndmask_b16 v100.h, 0x7fff, v22.h, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v21, v158
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.h, v32.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v171, v170, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v100.l, 0x7fff, v76.h, s5
	scratch_load_b32 v76, off, off offset:136 ; 4-byte Folded Reload
	v_mov_b16_e32 v22.l, v21.h
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v22
	v_cmp_o_f32_e64 s1, v20, v20
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v22, v21, v22, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v21, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v90.h, 0x7fff, v22.h, vcc_lo
	v_mov_b16_e32 v22.h, v32.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v21, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v21, v21, v117, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v23, v21, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v23, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v23, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v23, v23, v116, v75
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v75, v23, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v75, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v75, v75, v17, v21
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v75, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v75, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v21, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v21, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v64
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v75, v75, v16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v75, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v75.l, v20.h
	v_mov_b16_e32 v75.h, v32.l
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v75, v20, v75, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v23, v204
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v21.h
	v_mov_b16_e32 v23.h, v32.l
	v_cndmask_b16 v90.l, 0x7fff, v75.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s5, v20, v20
	scratch_load_b32 v75, off, off offset:124 ; 4-byte Folded Reload
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v21, v23, 0x7fff
	v_mov_b16_e32 v21.l, v20.h
	v_mov_b16_e32 v21.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v91.h, 0x7fff, v23.h, s4
	scratch_load_b32 v23, off, off offset:128 ; 4-byte Folded Reload
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v20, v21, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v20, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v91.l, 0x7fff, v21.h, s5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v20, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v20, v119, v76
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v76, v20, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v76, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v76, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v76, v76, v118, v77
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v77, v76, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v77, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v77, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v77, v77, v19, v20
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v77, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v77, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v20.h
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v20, v22, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v20, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v20, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v20, v86, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v23, v20, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v23, off, off offset:312 ; 4-byte Folded Reload
	v_mul_f32_e32 v77, v77, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v77, v77, v18, v76
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v76, v77, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v77, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v76, v207
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v76, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v21, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v23, v23, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v23, v23, v85, v75
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v75, v23, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v75, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v75, v75, v13, v20
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v75, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v75, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v20, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v64
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v75, v75, v12, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v75, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v75.l, v21.h
	v_mov_b16_e32 v75.h, v32.l
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v75, v21, v75, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v23, v108
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v20.h
	v_mov_b16_e32 v23.h, v32.l
	v_cmp_o_f32_e64 s5, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v20, v23, 0x7fff
	v_mov_b16_e32 v20.l, v21.h
	v_mov_b16_e32 v20.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v21, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v21, v34
	v_mul_f32_e32 v34, v76, v34
	scratch_load_b32 v76, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v21, v21, v88, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v76, v21, s2
	scratch_load_b32 v76, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v87, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v76, v34, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v76, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v76, v64
	v_mul_f32_e32 v64, v77, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v76, v76, v15, v21
	v_fma_f32 v64, v64, v14, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v76, s3
	v_cndmask_b32_e64 v76, v34, v64, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v64.h, 0x7fff, v23.h, s4
	v_mov_b16_e32 v23.h, v32.l
	v_cndmask_b16 v64.l, 0x7fff, v20.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v21, v21, v107 :: v_dual_mul_f32 v20, v76, v106
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v34.h, 0x7fff, v22.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v60, v236, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v34.l, 0x7fff, v75.h, s1
	v_mov_b16_e32 v23.l, v21.h
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_cmp_o_f32_e64 s1, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v22, v22, v205 :: v_dual_and_b32 v23, 1, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v23, v21, v23, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v59, v208, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.l, v20.h
	v_mov_b16_e32 v59.h, v32.l
	v_and_b32_e32 v59, 1, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v59, v20, v59, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v21, v203
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v58, v209, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v58.l, v22.h
	v_mov_b16_e32 v58.h, v32.l
	v_cmp_o_f32_e64 s5, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v21, v202
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v58, 1, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v58, v22, v58, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v57, v252, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v57.l, v20.h
	v_mov_b16_e32 v57.h, v32.l
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v57, 1, v57
	v_add3_u32 v60, v20, v57, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v22, v160
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e32 v22.h, v32.l
	v_cndmask_b16 v57.h, 0x7fff, v23.h, vcc_lo
	v_mov_b16_e32 v23.h, v32.l
	v_mov_b16_e32 v23.l, v20.h
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b16 v57.l, 0x7fff, v59.h, s1
	v_cmp_o_f32_e64 s1, v20, v20
	v_and_b32_e32 v23, 1, v23
	v_cndmask_b16 v58.l, 0x7fff, v60.h, s5
	v_add3_u32 v22, v21, v22, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v115, v55, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v60.h, v32.l
	v_add3_u32 v23, v20, v23, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v63, v168, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v59.h, 0x7fff, v22.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v21, v155
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v62, v167, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v59.l, 0x7fff, v23.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.h, v32.l
	v_mov_b16_e32 v23.l, v21.h
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v22, v147
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v60.l, v20.h
	v_cmp_o_f32_e64 s1, v20, v20
	v_and_b32_e32 v23, 1, v23
	scratch_load_b32 v62, off, off offset:68 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s4, v22, v22
	v_and_b32_e32 v60, 1, v60
	v_add3_u32 v23, v21, v23, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v61, v56, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v61, v20, v60, 0x7fff
	scratch_load_b32 v60, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v21, v145
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e32 v21.h, v32.l
	v_cmp_o_f32_e64 s5, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v22, v21, 0x7fff
	v_mov_b16_e32 v22.l, v20.h
	v_mov_b16_e32 v22.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v20, v22, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v20, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v61.l, 0x7fff, v22.h, s5
	v_mov_b16_e32 v22.h, v32.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v20, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v20, v117, v60
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v60, v20, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v60, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v60, v60, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v60, v60, v116, v62
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v62, v60, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v17, v20
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v62, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v20.h
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v22, v20, v22, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v16, v60
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v60, v62, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v60.h, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:276
	scratch_load_b32 v23, off, off offset:64
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v60.l, 0x7fff, v61.h, s1
	v_cndmask_b16 v61.h, 0x7fff, v21.h, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v62, v141
	scratch_load_b32 v62, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v21, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v20, v20, v33
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, v20, v119, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v23, v20, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v23, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v23, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v23, v23, v118, v62
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v62, v23, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v19, v20
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v62, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v20, v20
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v18, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v62, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.l, v21.h
	v_mov_b16_e32 v62.h, v32.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v23, v3
	scratch_load_b32 v23, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v62, 1, v62
	v_cmp_o_f32_e64 s5, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v63, v21, v62, 0x7fff
	v_mov_b16_e32 v21.l, v20.h
	v_mov_b16_e32 v21.h, v32.l
	scratch_load_b32 v62, off, off offset:52 ; 4-byte Folded Reload
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v20, v21, 0x7fff
	v_mov_b16_e32 v20.l, v3.h
	v_mov_b16_e32 v20.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v3, v20, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v3, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v63.l, 0x7fff, v20.h, s5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v20, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v3, v3, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v3, v3, v86, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v23, v3, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v23, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v23, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v23, v23, v85, v62
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v62, v23, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v13, v3
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v62, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v3, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.h, v32.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v3.l, v1.h
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v12, v23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v62, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v62.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v62.l, 0x7fff, v63.h, s1
	v_cndmask_b16 v63.h, 0x7fff, v21.h, s4
	scratch_load_b32 v21, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v20, v20, v33
	scratch_load_b32 v22, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v23, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.h, v32.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v1, v1, v33
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v1, v1, v88, v21
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v22, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v21, v1, s2
	scratch_load_b32 v21, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v20, v87, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v21, v20, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v21, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v21, v49
	scratch_load_b32 v49, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v21, v21, v15, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v21, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v21, v22, v14, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v28, v4, s3
	scratch_load_b32 v4, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v103
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v21, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e32 v21.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v1, v1
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v20, v102
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v1.h
	v_mov_b16_e32 v20.h, v32.l
	v_mov_b16_e32 v23.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s5, v0, v0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v20, v1, v20, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v1, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v23, v0, v23, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v21.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v3.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v22, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.h, v32.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v49, v49, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v1, v26, v1, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v1, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v1.h, 0x7fff, v20.h, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v54, v4, s3
	scratch_load_b32 v4, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v1.l, 0x7fff, v23.h, s5
	v_mov_b16_e32 v22.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v41, v43, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v2, v22, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v20, v72
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v2, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v21, v169, v4, s3
	scratch_load_b32 v4, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v21, v73
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v3.h
	v_mov_b16_e32 v21.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v3, v21, 0x7fff
	v_mov_b16_e32 v3.l, v2.h
	v_mov_b16_e32 v3.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v3, v2, v3, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v22.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v20.h
	v_mov_b16_e32 v24.h, v32.l
	v_cndmask_b16 v2.l, 0x7fff, v21.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v31, v7, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v20, v20
	v_and_b32_e32 v24, 1, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v47, v6, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v20, v24, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v21, v68
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v40, v42, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v25, v25
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v22, v67
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v3.l, 0x7fff, v24.h, s1
	v_cmp_o_f32_e64 s1, v20, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v25, v25, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v26.l, v20.h
	v_mov_b16_e32 v26.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v21
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v33, 1.0, v25 :: v_dual_and_b32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v24
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v31, v20, v26, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v24, v20
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v33, v33, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v26, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v24, v26, 1.0
	v_fmac_f32_e32 v26, v40, v26
	v_div_scale_f32 v40, vcc_lo, v23, v33, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v25, v30, v4, s3
	scratch_load_b32 v4, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v30, null, v20, v20, v21
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v25, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v30
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.l, v42.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v38, 1, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v25, -v30, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v25, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v28, v29, v4, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v29, v71, v69, v66
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v28, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v28, v40, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v24, v28, v40
	v_fmac_f32_e32 v28, v25, v26
	v_div_scale_f32 v25, s4, v21, v20, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v24, v28, v40
	v_mul_f32_e32 v40, v25, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v47, v24, v26, v28
	.loc	1 448 18 is_stmt 1              ; generate_amdgcn.py:448:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:284
	scratch_load_b32 v28, off, off offset:280
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v24, -v30, v40, v25
	s_mov_b32 vcc_lo, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v42, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v47, v33, v23
	scratch_load_b32 v47, off, off offset:32 ; 4-byte Folded Reload
	v_fmac_f32_e32 v40, v24, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v22.h
	v_mov_b16_e32 v24.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v25, -v30, v40, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v30, 1, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v39, v25, v41, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v30, v22, v30, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v31.l, 0x7fff, v30.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_mul_f32_e32 v22, 0xbfb8aa3b, v36
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v30, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v42, v38, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:240
	scratch_load_b32 v42, off, off offset:36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s4
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_waitcnt vmcnt(5)
	v_mul_lo_u32 v26, s27, v26
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b32_e32 v48, 1, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[24:25], null, s27, 48, v[26:27]
	v_add3_u32 v25, s33, s26, v48
	scratch_load_b32 v48, off, off offset:40 ; 4-byte Folded Reload
	v_lshl_add_u32 v29, s27, 4, v26
	v_lshl_add_u32 v28, s27, 5, v26
	s_mov_b32 s27, 0x31027000
	v_add_lshl_u32 v26, v25, v26, 1
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v40, v30, v32
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v30, 0x80, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v38, v38, v32
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v4, v38, v116, v42
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v32.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v42, v4, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v41
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v49, v16, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v38, v42
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v43, v41, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v49, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v16, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v38, v38, v37
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v5, v40, v117, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v48, v5, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v48, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.l, 0x7fff, v41.h, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v41, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v40, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v49, v49, v27
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v48, v48, v27 :: v_dual_mul_f32 v41, v41, v32
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v17, v48, v17, v5
	scratch_load_b32 v48, off, off offset:28 ; 4-byte Folded Reload
	v_fma_f32 v7, v41, v119, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v17, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v17, v40, v42
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, vcc_lo, v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v47, v7, s2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v5, v23 :: v_dual_add_f32 v16, 1.0, v17
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v39, v20, v21
	v_rcp_f32_e32 v20, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v51, v19, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v39.h, v32.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v16, v16, v36
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v17
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v19, s3
	scratch_load_b32 v19, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v23, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.l, v5.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v33, v20, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.h, v32.l
	v_mov_b16_e32 v39.l, v4.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v20, v40, v20 :: v_dual_and_b32 v17, 1, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v21, v23, 1.0
	v_mul_f32_e32 v41, v42, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v17, v5, v17, 0x7fff
	v_add3_u32 v39, v4, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v23, v40, v23
	v_div_scale_f32 v40, s1, v36, v16, v36
	v_fma_f32 v47, -v33, v41, v42
	v_fmac_f32_e32 v41, v47, v20
	scratch_load_b32 v47, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v43, v43, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v33, v41, v42
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v42, v215, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v33, v20, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v6, v43, v118, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v43, v40, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v48, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v21, v43, v40
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v48, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v18, v49, v18, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v43, v50, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v18, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v21, v43, v40
	v_div_fixup_f32 v18, v20, v38, v37
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v40, off, off offset:372
	scratch_load_b32 v20, off, off offset:248
	scratch_load_b32 v37, off, off offset:8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v21, v23, v43
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v23, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v7, v18
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v18, off, off offset:964 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v21, v16, v36
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:12
	scratch_load_b32 v43, off, off offset:368
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.l, v7.h
	v_mov_b16_e32 v16.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v7, v16, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v48, v48, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v40, v40, v27
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v20, v20, v32
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v23, v23, v32 :: v_dual_mul_f32 v18, v18, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v8, v23, v8, v19
	scratch_load_b32 v23, off, off offset:16 ; 4-byte Folded Reload
	v_fma_f32 v9, v48, v9, v47
	s_waitcnt vmcnt(2)
	v_fma_f32 v10, v20, v10, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v20, off, off offset:920 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v19, v8, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v43, v43, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v47, v9, s2
	v_cndmask_b32_e64 v10, v21, v10, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v21, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v33, v42, v82, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v33, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v5.h, 0x7fff, v17.h, vcc_lo
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v17, v18, v81, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v6.h
	v_mov_b16_e32 v18.h, v32.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v17, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v9 :: v_dual_and_b32 v4, 1, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v5.l, 0x7fff, v39.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v8
	scratch_load_b32 v39, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v6, v4, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v18, v19
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v19, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v17, v18, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v18, off, off offset:968 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v7, 1.0, v17 :: v_dual_mul_f32 v20, v20, v27
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v19, v19, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v11, v19, v11, v23
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v23, v11, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v23, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v18, v18, v27 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v8
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v21, v21, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v17, v18, v84, v11
	v_fma_f32 v18, v20, v83, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v7, v7, v9
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v19, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v17, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v10, v10, v18, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v17, v20
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v21, v21, v86, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v33, 0xbfb8aa3b, v11 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v18, v19, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v37, v21, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, s5, v9, v7, v9
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, s4
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v11
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v13, v40, v13, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v10
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v33, v33
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v21, v13, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v36, v36
	v_ldexp_f32 v33, v33, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, s4, v8, v18, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v36, v36, v42
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v33, 1.0, v33 :: v_dual_add_f32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v33, v33, v11
	v_rcp_f32_e32 v40, v42
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v23, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v23, v85, v39
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v20, v17, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v39, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v17, v23, v17
	v_div_scale_f32 v23, null, v18, v18, v8
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v12, v43, v12, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v39, v37, v17
	v_rcp_f32_e32 v38, v23
	v_div_scale_f32 v43, null, v36, v36, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v19, v12, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v20, v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v39, v47, v17
	v_fma_f32 v48, -v23, v38, 1.0
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v39, v37
	v_fmac_f32_e32 v38, v48, v38
	scratch_load_b32 v48, off, off offset:4 ; 4-byte Folded Reload
	v_div_fmas_f32 v17, v20, v17, v39
	v_mul_f32_e32 v37, v41, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v19, -v43, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v7, v17, v7, v9
	v_fma_f32 v20, -v23, v37, v41
	v_fma_f32 v9, -v42, v40, 1.0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v17, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v47, v19, v47
	v_div_scale_f32 v19, s5, v10, v36, v10
	v_dual_fmac_f32 v37, v20, v38 :: v_dual_fmac_f32 v40, v9, v40
	v_div_scale_f32 v9, s1, v11, v33, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v39, v19, v47
	v_fma_f32 v21, -v23, v37, v41
	scratch_load_b32 v41, off, off          ; 4-byte Folded Reload
	v_mul_f32_e32 v23, v9, v40
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v13, v7
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.h, v32.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v21, v38, v37
	v_fma_f32 v38, -v43, v39, v19
	v_fma_f32 v37, -v42, v23, v9
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v7, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v21, v18, v8
	v_fmac_f32_e32 v39, v38, v47
	v_fmac_f32_e32 v23, v37, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:340
	scratch_load_b32 v20, off, off offset:208
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v12, v8
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v43, v39, v19
	v_fma_f32 v9, -v42, v23, v9
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v19, v97, v90, s0
	v_cndmask_b32_e64 v21, v91, v64, s0
	v_cndmask_b32_e64 v38, v31, v2, s0
	v_cndmask_b32_e64 v2, v2, v31, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v9, v9, v40, v23
	s_mov_b32 vcc_lo, s5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v23, v57, v34, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v18, v18, v47, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v9, v9, v33, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v32.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v18, v36, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v16.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b32_e64 v39, v22, v3, s0
	v_cndmask_b32_e64 v3, v3, v22, s0
	v_dual_mov_b32 v22, 0x7632 :: v_dual_and_b32 v11, 1, v11
	v_cndmask_b32_e64 v33, v58, v60, s0
	v_cndmask_b32_e64 v36, v0, v62, s0
	v_cndmask_b32_e64 v0, v62, v0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v8, v11, 0x7fff
	v_cndmask_b32_e64 v18, v90, v97, s0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v17, v17, v32
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v17, v17, v88, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v48, v17, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v20, v32
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v20, v87, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v41, v20, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v41, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s2, v8, v8
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v41, v27
	v_mul_f32_e32 v27, v37, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v37, v1, v63, s0
	v_cndmask_b32_e64 v1, v63, v1, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v14, v41, v14, v20
	v_fma_f32 v15, v27, v15, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v27, v34, v57, s0
	v_cndmask_b32_e64 v34, v61, v59, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v20, v14, s3
	v_cndmask_b32_e64 v12, v17, v15, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v17, v96, v100, s0
	v_cndmask_b32_e64 v15, v100, v96, s0
	v_cndmask_b32_e64 v20, v64, v91, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v10, v14, v10 :: v_dual_mul_f32 v9, v12, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.l, v7.h
	v_mov_b16_e32 v12.h, v32.l
	v_mov_b16_e32 v14.h, v32.l
	v_mov_b16_e32 v14.l, v10.h
	v_mov_b16_e32 v13.l, v9.h
	v_cmp_o_f32_e64 s3, v9, v9
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e64 s4, v10, v10
	v_and_b32_e32 v11, 1, v14
	v_and_b32_e32 v13, 1, v13
	v_cndmask_b32_e64 v14, v35, v95, s0
	v_add3_u32 v12, v7, v12, 0x7fff
	v_cndmask_b32_e64 v32, v60, v58, s0
	v_add3_u32 v7, v10, v11, 0x7fff
	v_add3_u32 v8, v9, v13, 0x7fff
	v_cndmask_b32_e64 v10, v45, v98, s0
	v_cndmask_b16 v4.h, 0x7fff, v12.h, s1
	v_cndmask_b32_e64 v12, v99, v94, s0
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s4
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s3
	v_cndmask_b32_e64 v8, v44, v46, s0
	v_cndmask_b32_e64 v40, v4, v5, s0
	v_cndmask_b32_e64 v4, v5, v4, s0
	v_mov_b32_e32 v5, 0x5410
	v_cndmask_b32_e64 v41, v6, v16, s0
	v_cndmask_b32_e64 v6, v16, v6, s0
	v_cndmask_b32_e64 v16, 0x3276, v22, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v5, 0x1054, v5, s0
	v_cndmask_b32_e64 v7, v46, v44, s0
	v_cndmask_b32_e64 v9, v98, v45, s0
	v_lshl_or_b32 v16, v16, 8, v16
	v_cndmask_b32_e64 v13, v95, v35, s0
	v_lshl_or_b32 v5, v5, 8, v5
	v_cndmask_b32_e64 v35, v59, v61, s0
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v16, 0x760076, v16
	v_permlanex16_b32 v10, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x540054, v5
	v_cndmask_b32_e64 v11, v94, v99, s0
	v_permlanex16_b32 v12, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v16, v16, 4, v16
	v_permlanex16_b32 v14, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_permlanex16_b32 v17, v17, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v44, 0x7060706, v16
	v_permlanex16_b32 v22, v27, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v43, 0x5040504, v5
	v_permlanex16_b32 v27, v33, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v35, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v8, v7, v43
	v_perm_b32 v1, v8, v7, v44
	v_perm_b32 v2, v10, v9, v43
	v_perm_b32 v3, v10, v9, v44
	v_permlanex16_b32 v46, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v12, v11, v43
	v_perm_b32 v5, v12, v11, v44
	v_perm_b32 v6, v14, v13, v43
	v_perm_b32 v7, v14, v13, v44
	v_perm_b32 v8, v17, v15, v43
	v_perm_b32 v9, v17, v15, v44
	v_perm_b32 v10, v19, v18, v43
	v_perm_b32 v11, v19, v18, v44
	v_perm_b32 v16, v27, v32, v43
	v_perm_b32 v17, v27, v32, v44
	v_add_lshl_u32 v27, v25, v29, 1
	v_perm_b32 v12, v21, v20, v43
	v_perm_b32 v13, v21, v20, v44
	v_perm_b32 v14, v22, v23, v43
	v_perm_b32 v15, v22, v23, v44
	s_clause 0x2
	buffer_store_b128 v[0:3], v26, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v26, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v27, s[24:27], 0 offen
	v_add_lshl_u32 v0, v30, v29, 1
	v_perm_b32 v18, v31, v34, v43
	v_perm_b32 v19, v31, v34, v44
	v_add_lshl_u32 v1, v25, v28, 1
	v_perm_b32 v20, v33, v36, v43
	v_perm_b32 v21, v33, v36, v44
	v_perm_b32 v22, v35, v37, v43
	v_perm_b32 v23, v35, v37, v44
	v_add_lshl_u32 v2, v30, v28, 1
	v_perm_b32 v31, v42, v38, v43
	v_perm_b32 v32, v42, v38, v44
	v_perm_b32 v33, v45, v39, v43
	v_perm_b32 v34, v45, v39, v44
	v_add_lshl_u32 v3, v25, v24, 1
	v_perm_b32 v35, v46, v40, v43
	v_perm_b32 v36, v46, v40, v44
	v_perm_b32 v37, v47, v41, v43
	v_perm_b32 v38, v47, v41, v44
	v_add_lshl_u32 v4, v30, v24, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[24:27], 0 offen
	buffer_store_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_store_b128 v[31:34], v3, s[24:27], 0 offen
	buffer_store_b128 v[35:38], v4, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1004
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 1004
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 41432
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 1004
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 1004
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 340
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
