	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
	v_mov_b32_e32 v104, v0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v85, 0xf0, v104
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v98, 3, v85
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
	v_or_b32_e32 v1, s30, v98
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
	s_lshl_b32 s35, s27, 1
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s3, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s6, s4
.Ltmp19:
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s6, 31
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_mul_lo_u32 v0, s35, v98
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s18, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v86, 15, v104
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 372 34 is_stmt 0              ; generate_amdgcn.py:372:34
	s_mul_i32 s7, s26, s30
	.loc	1 378 34 is_stmt 1              ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v87, v86, 4, v0
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s18, v87
	v_add_nc_u32_e32 v1, s35, v0
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v2, 0x80000000, v0, vcc_lo
	.loc	1 358 19 is_stmt 1              ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v88, 3, v104
	v_or_b32_e32 v99, 0x3f0, v104
	v_or_b32_e32 v100, 0x7f0, v104
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[6:9], v2, s[36:39], 0 offen
	buffer_load_b128 v[10:13], v1, s[36:39], 0 offen
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v1, s27, v0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v3, s30, v88
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v0, s27, 6, v0
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v101, v86, 9, v98
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_or_b32_e32 v5, 48, v86
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v2, s35, v1
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v89, 3, v104
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v102, 0x90, v101
	v_add_nc_u32_e32 v54, 0, v101
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[14:17], v1, s[36:39], 0 offen
	buffer_load_b128 v[18:21], v2, s[36:39], 0 offen
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_mul_lo_u32 v1, s26, v88
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 56, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s6, 63
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v3, s27, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s44, s30, 32
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v150, 0x110, v101
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add3_u32 v90, v1, v2, s34
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v2, s44, v98
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v4, s35, v3
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v55, 0, v102
	v_add_nc_u32_e32 v56, 0, v150
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v1, s7, v90
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s4, s31, v2
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v2, s35, v0
	v_lshlrev_b32_e32 v91, 5, v104
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_clause 0x1
	buffer_load_b128 v[22:25], v0, s[36:39], 0 offen
	buffer_load_b128 v[26:29], v2, s[36:39], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v0, 0x80000000, v3, s4
	v_cndmask_b32_e64 v2, 0x80000000, v4, s4
	s_clause 0x1
	buffer_load_b128 v[30:33], v0, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v2, s[36:39], 0 offen
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e32 v0, 0x80000000, v1, vcc_lo
	.loc	1 372 34 is_stmt 0              ; generate_amdgcn.py:372:34
	s_lshl_b32 s4, s26, 5
	v_lshlrev_b32_e32 v2, 4, v104
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_or_b32_e32 v3, 16, v86
	v_or_b32_e32 v4, 32, v86
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[49:50], v0, s[8:11], 0 offen
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v0, s44, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add3_u32 v0, s7, s4, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v53, 0, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0x5f
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b64 v[51:52], v0, s[8:11], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(8)
	v_perm_b32 v1, v10, v6, 0x5010400
	v_perm_b32 v6, v10, v6, 0x7030602
	v_perm_b32 v10, v11, v7, 0x5010400
	v_perm_b32 v11, v11, v7, 0x7030602
	v_perm_b32 v38, v12, v8, 0x5010400
	v_perm_b32 v12, v12, v8, 0x7030602
	v_perm_b32 v39, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_and_b16 v0.l, 0xff, v1.l
	v_lshrrev_b32_e32 v40, 8, v1
	v_lshrrev_b32_e32 v41, 24, v1
	v_and_b16 v0.h, 0xff, v1.h
	v_and_b16 v1.l, 0xff, v6.l
	v_lshrrev_b32_e32 v42, 8, v6
	v_lshrrev_b32_e32 v43, 24, v6
	v_and_b16 v1.h, 0xff, v6.h
	v_and_b16 v6.l, 0xff, v10.l
	v_lshrrev_b32_e32 v44, 8, v10
	v_lshrrev_b32_e32 v45, 24, v10
	v_and_b16 v6.h, 0xff, v10.h
	v_lshrrev_b32_e32 v46, 8, v11
	v_and_b16 v8.l, 0xff, v38.l
	v_lshrrev_b32_e32 v48, 8, v38
	v_lshrrev_b32_e32 v57, 24, v38
	v_and_b16 v8.h, 0xff, v38.h
	v_lshrrev_b32_e32 v38, 8, v12
	v_lshrrev_b32_e32 v58, 24, v12
	v_and_b16 v10.l, 0xff, v39.l
	v_lshrrev_b32_e32 v59, 8, v39
	v_lshrrev_b32_e32 v60, 24, v39
	v_and_b16 v10.h, 0xff, v39.h
	v_lshrrev_b32_e32 v39, 8, v13
	v_lshrrev_b32_e32 v61, 24, v13
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(6)
	v_perm_b32 v62, v18, v14, 0x5010400
	v_perm_b32 v63, v18, v14, 0x7030602
	v_perm_b32 v64, v19, v15, 0x5010400
	v_perm_b32 v65, v19, v15, 0x7030602
	v_perm_b32 v66, v20, v16, 0x5010400
	v_perm_b32 v68, v21, v17, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v47, 24, v11
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v67, v20, v16, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v7.l, 0xff, v11.l
	v_and_b16 v9.l, 0xff, v12.l
	v_and_b16 v11.l, 0xff, v13.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v69, v21, v17, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v12.l, 8, v40.l
	v_lshlrev_b16 v13.l, 8, v42.l
	v_lshlrev_b16 v14.l, 8, v44.l
	v_lshlrev_b16 v15.l, 8, v46.l
	v_lshlrev_b16 v16.l, 8, v48.l
	v_lshlrev_b16 v16.h, 8, v57.l
	v_lshlrev_b16 v17.l, 8, v38.l
	v_lshlrev_b16 v17.h, 8, v58.l
	v_lshlrev_b16 v18.l, 8, v59.l
	v_lshlrev_b16 v19.l, 8, v39.l
	v_lshlrev_b16 v19.h, 8, v61.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v44, 8, v62
	v_lshrrev_b32_e32 v46, 8, v63
	v_and_b16 v38.l, 0xff, v64.l
	v_lshrrev_b32_e32 v48, 8, v64
	v_lshrrev_b32_e32 v57, 24, v64
	v_and_b16 v38.h, 0xff, v64.h
	v_and_b16 v39.l, 0xff, v65.l
	v_lshrrev_b32_e32 v58, 8, v65
	v_lshrrev_b32_e32 v59, 24, v65
	v_and_b16 v39.h, 0xff, v65.h
	v_lshrrev_b32_e32 v61, 24, v66
	v_and_b16 v42.l, 0xff, v68.l
	v_lshrrev_b32_e32 v64, 8, v68
	v_lshrrev_b32_e32 v65, 24, v68
	v_and_b16 v42.h, 0xff, v68.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(4)
	v_perm_b32 v68, v26, v22, 0x5010400
	v_and_b16 v7.h, 0xff, v11.h
	v_and_b16 v9.h, 0xff, v12.h
	v_and_b16 v11.h, 0xff, v13.h
	v_lshlrev_b16 v12.h, 8, v41.l
	v_lshlrev_b16 v13.h, 8, v43.l
	v_lshlrev_b16 v14.h, 8, v45.l
	v_lshlrev_b16 v15.h, 8, v47.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v20.l, 0xff, v62.l
	v_lshrrev_b32_e32 v45, 24, v62
	v_and_b16 v20.h, 0xff, v62.h
	v_lshrrev_b32_e32 v47, 24, v63
	v_lshrrev_b32_e32 v62, 8, v67
	v_and_b16 v21.l, 0xff, v63.l
	v_and_b16 v21.h, 0xff, v63.h
	v_lshrrev_b32_e32 v63, 24, v67
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v26, v26, v22, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(2)
	v_perm_b32 v73, v34, v30, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v18.h, 8, v60.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v40.l, 0xff, v66.l
	v_lshrrev_b32_e32 v60, 8, v66
	v_and_b16 v40.h, 0xff, v66.h
	v_and_b16 v41.l, 0xff, v67.l
	v_and_b16 v41.h, 0xff, v67.h
	v_and_b16 v43.l, 0xff, v69.l
	v_lshrrev_b32_e32 v66, 8, v69
	v_lshrrev_b32_e32 v67, 24, v69
	v_and_b16 v43.h, 0xff, v69.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v69, v27, v23, 0x5010400
	v_perm_b32 v27, v27, v23, 0x7030602
	v_perm_b32 v70, v28, v24, 0x5010400
	v_perm_b32 v28, v28, v24, 0x7030602
	v_perm_b32 v71, v29, v25, 0x5010400
	v_perm_b32 v72, v29, v25, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v74, v35, v31, 0x5010400
	v_perm_b32 v35, v35, v31, 0x7030602
	v_perm_b32 v75, v36, v32, 0x5010400
	v_perm_b32 v36, v36, v32, 0x7030602
	v_perm_b32 v76, v37, v33, 0x5010400
	v_perm_b32 v77, v37, v33, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v0.l, v0.l, v12.l
	v_or_b16 v1.l, v1.l, v13.l
	v_or_b16 v8.h, v8.h, v16.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.l, 8, v44.l
	v_lshlrev_b16 v13.l, 8, v46.l
	v_lshlrev_b16 v16.h, 8, v61.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v44, 8, v68
	v_or_b16 v0.h, v0.h, v12.h
	v_or_b16 v1.h, v1.h, v13.h
	v_or_b16 v9.l, v9.l, v17.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.h, 8, v45.l
	v_lshlrev_b16 v13.h, 8, v47.l
	v_lshlrev_b16 v17.l, 8, v62.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v45, 24, v68
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v9.h, v9.h, v17.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v14.l, 8, v48.l
	v_lshlrev_b16 v17.h, 8, v63.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v46, 8, v26
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v10.l, v10.l, v18.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v14.h, 8, v57.l
	v_lshlrev_b16 v18.l, 8, v64.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v47, 24, v26
	v_and_b16 v22.l, 0xff, v68.l
	v_and_b16 v22.h, 0xff, v68.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v68, 8, v73
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v15.l, 8, v58.l
	v_lshlrev_b16 v15.h, 8, v59.l
	v_lshlrev_b16 v16.l, 8, v60.l
	v_lshlrev_b16 v18.h, 8, v65.l
	v_lshlrev_b16 v19.l, 8, v66.l
	v_lshlrev_b16 v19.h, 8, v67.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v23.l, 0xff, v26.l
	v_and_b16 v23.h, 0xff, v26.h
	v_and_b16 v24.l, 0xff, v69.l
	v_lshrrev_b32_e32 v48, 8, v69
	v_lshrrev_b32_e32 v57, 24, v69
	v_and_b16 v24.h, 0xff, v69.h
	v_and_b16 v25.l, 0xff, v27.l
	v_lshrrev_b32_e32 v58, 8, v27
	v_lshrrev_b32_e32 v59, 24, v27
	v_and_b16 v25.h, 0xff, v27.h
	v_and_b16 v26.l, 0xff, v70.l
	v_lshrrev_b32_e32 v60, 8, v70
	v_lshrrev_b32_e32 v61, 24, v70
	v_and_b16 v26.h, 0xff, v70.h
	v_and_b16 v27.l, 0xff, v28.l
	v_lshrrev_b32_e32 v62, 8, v28
	v_lshrrev_b32_e32 v63, 24, v28
	v_and_b16 v27.h, 0xff, v28.h
	v_and_b16 v28.l, 0xff, v71.l
	v_lshrrev_b32_e32 v64, 8, v71
	v_lshrrev_b32_e32 v65, 24, v71
	v_and_b16 v28.h, 0xff, v71.h
	v_and_b16 v29.l, 0xff, v72.l
	v_lshrrev_b32_e32 v66, 8, v72
	v_lshrrev_b32_e32 v67, 24, v72
	v_and_b16 v29.h, 0xff, v72.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v30.l, 0xff, v73.l
	v_lshrrev_b32_e32 v69, 24, v73
	v_and_b16 v30.h, 0xff, v73.h
	v_and_b16 v31.l, 0xff, v34.l
	v_lshrrev_b32_e32 v70, 8, v34
	v_lshrrev_b32_e32 v71, 24, v34
	v_and_b16 v31.h, 0xff, v34.h
	v_and_b16 v32.l, 0xff, v74.l
	v_lshrrev_b32_e32 v72, 8, v74
	v_lshrrev_b32_e32 v73, 24, v74
	v_and_b16 v32.h, 0xff, v74.h
	v_and_b16 v33.l, 0xff, v35.l
	v_lshrrev_b32_e32 v74, 8, v35
	v_lshrrev_b32_e32 v78, 24, v35
	v_and_b16 v33.h, 0xff, v35.h
	v_and_b16 v34.l, 0xff, v75.l
	v_lshrrev_b32_e32 v79, 8, v75
	v_lshrrev_b32_e32 v80, 24, v75
	v_and_b16 v34.h, 0xff, v75.h
	v_and_b16 v35.l, 0xff, v36.l
	v_lshrrev_b32_e32 v75, 8, v36
	v_lshrrev_b32_e32 v81, 24, v36
	v_and_b16 v35.h, 0xff, v36.h
	v_and_b16 v36.l, 0xff, v76.l
	v_lshrrev_b32_e32 v82, 8, v76
	v_lshrrev_b32_e32 v83, 24, v76
	v_and_b16 v36.h, 0xff, v76.h
	v_lshrrev_b32_e32 v76, 8, v77
	v_lshrrev_b32_e32 v84, 24, v77
	v_or_b16 v12.l, v20.l, v12.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v54, v0
	ds_store_b16_d16_hi v54, v0 offset:32
	ds_store_b16 v54, v1 offset:64
	ds_store_b16_d16_hi v54, v1 offset:96
	ds_store_b16_d16_hi v55, v6 offset:32
	ds_store_b16 v55, v7 offset:64
	ds_store_b16_d16_hi v55, v7 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v0.h, v21.l, v13.l
	v_or_b16 v13.l, v40.h, v16.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v16.h, 8, v44.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v1.l, v21.h, v13.h
	v_or_b16 v13.h, v41.l, v17.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v17.l, 8, v45.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v1.h, v38.l, v14.l
	v_or_b16 v14.l, v41.h, v17.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v17.h, 8, v46.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v6.h, v38.h, v14.h
	v_or_b16 v14.h, v42.l, v18.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v18.l, 8, v47.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v0.l, v20.h, v12.h
	v_lshlrev_b16 v40.h, 8, v68.l
	v_and_b16 v37.l, 0xff, v77.l
	v_and_b16 v37.h, 0xff, v77.h
	v_or_b16 v7.l, v39.l, v15.l
	v_or_b16 v7.h, v39.h, v15.h
	v_or_b16 v12.h, v40.l, v16.l
	v_or_b16 v15.l, v42.h, v18.h
	v_or_b16 v15.h, v43.l, v19.l
	v_or_b16 v16.l, v43.h, v19.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v18.h, 8, v48.l
	v_lshlrev_b16 v19.l, 8, v57.l
	v_lshlrev_b16 v19.h, 8, v58.l
	v_lshlrev_b16 v20.l, 8, v59.l
	v_lshlrev_b16 v20.h, 8, v60.l
	v_lshlrev_b16 v21.l, 8, v61.l
	v_lshlrev_b16 v21.h, 8, v62.l
	v_lshlrev_b16 v38.l, 8, v63.l
	v_lshlrev_b16 v38.h, 8, v64.l
	v_lshlrev_b16 v39.l, 8, v65.l
	v_lshlrev_b16 v39.h, 8, v66.l
	v_lshlrev_b16 v40.l, 8, v67.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v41.l, 8, v69.l
	v_lshlrev_b16 v41.h, 8, v70.l
	v_lshlrev_b16 v42.l, 8, v71.l
	v_lshlrev_b16 v42.h, 8, v72.l
	v_lshlrev_b16 v43.l, 8, v73.l
	v_lshlrev_b16 v43.h, 8, v74.l
	v_lshlrev_b16 v44.l, 8, v78.l
	v_lshlrev_b16 v44.h, 8, v79.l
	v_lshlrev_b16 v45.l, 8, v80.l
	v_lshlrev_b16 v45.h, 8, v75.l
	v_lshlrev_b16 v46.l, 8, v81.l
	v_lshlrev_b16 v46.h, 8, v82.l
	v_lshlrev_b16 v47.l, 8, v83.l
	v_lshlrev_b16 v47.h, 8, v76.l
	v_lshlrev_b16 v48.l, 8, v84.l
	ds_store_b16 v54, v12 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v55, v6
	ds_store_b16 v56, v8
	ds_store_b16_d16_hi v56, v8 offset:32
	ds_store_b16 v56, v9 offset:64
	ds_store_b16_d16_hi v56, v9 offset:96
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v53, v[49:50] offset:32768
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v54, v0 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v54, v10 offset:384
	ds_store_b16_d16_hi v54, v10 offset:416
	ds_store_b16 v54, v11 offset:448
	ds_store_b16_d16_hi v54, v11 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v54, v0 offset:16416
	ds_store_b16 v54, v1 offset:16480
	ds_store_b16_d16_hi v55, v1 offset:16384
	ds_store_b16_d16_hi v55, v6 offset:16416
	ds_store_b16 v55, v7 offset:16448
	ds_store_b16_d16_hi v55, v7 offset:16480
	ds_store_b16_d16_hi v56, v12 offset:16384
	ds_store_b16 v56, v13 offset:16416
	ds_store_b16_d16_hi v56, v13 offset:16448
	ds_store_b16 v56, v14 offset:16480
	ds_store_b16_d16_hi v54, v14 offset:16768
	ds_store_b16 v54, v15 offset:16800
	ds_store_b16_d16_hi v54, v15 offset:16832
	ds_store_b16 v54, v16 offset:16864
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v0.l, v22.l, v16.h
	v_or_b16 v0.h, v22.h, v17.l
	v_or_b16 v1.l, v23.l, v17.h
	v_or_b16 v1.h, v23.h, v18.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v12.l, v30.l, v40.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v6.l, v24.l, v18.h
	v_or_b16 v6.h, v24.h, v19.l
	v_or_b16 v7.l, v25.l, v19.h
	v_or_b16 v7.h, v25.h, v20.l
	v_or_b16 v8.l, v26.l, v20.h
	v_or_b16 v8.h, v26.h, v21.l
	v_or_b16 v9.l, v27.l, v21.h
	v_or_b16 v9.h, v27.h, v38.l
	v_or_b16 v10.l, v28.l, v38.h
	v_or_b16 v10.h, v28.h, v39.l
	v_or_b16 v11.l, v29.l, v39.h
	v_or_b16 v11.h, v29.h, v40.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v12.h, v30.h, v41.l
	v_or_b16 v13.l, v31.l, v41.h
	v_or_b16 v13.h, v31.h, v42.l
	v_or_b16 v14.l, v32.l, v42.h
	v_or_b16 v14.h, v32.h, v43.l
	v_or_b16 v15.l, v33.l, v43.h
	v_or_b16 v15.h, v33.h, v44.l
	v_or_b16 v16.l, v34.l, v44.h
	v_or_b16 v16.h, v34.h, v45.l
	v_or_b16 v17.l, v35.l, v45.h
	v_or_b16 v17.h, v35.h, v46.l
	v_or_b16 v18.l, v36.l, v46.h
	v_or_b16 v18.h, v36.h, v47.l
	v_or_b16 v19.l, v37.l, v47.h
	v_or_b16 v19.h, v37.h, v48.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v54, v0 offset:8192
	ds_store_b16_d16_hi v54, v0 offset:8224
	ds_store_b16 v54, v1 offset:8256
	ds_store_b16_d16_hi v54, v1 offset:8288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v54, v12 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v55, v6 offset:8192
	ds_store_b16_d16_hi v55, v6 offset:8224
	ds_store_b16 v55, v7 offset:8256
	ds_store_b16_d16_hi v55, v7 offset:8288
	ds_store_b16 v56, v8 offset:8192
	ds_store_b16_d16_hi v56, v8 offset:8224
	ds_store_b16 v56, v9 offset:8256
	ds_store_b16_d16_hi v56, v9 offset:8288
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v53, v[51:52] offset:34816
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v54, v13 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v54, v10 offset:8576
	ds_store_b16_d16_hi v54, v10 offset:8608
	ds_store_b16 v54, v11 offset:8640
	ds_store_b16_d16_hi v54, v11 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v54, v12 offset:24608
	ds_store_b16_d16_hi v54, v13 offset:24672
	ds_store_b16 v55, v14 offset:24576
	ds_store_b16_d16_hi v55, v14 offset:24608
	ds_store_b16 v55, v15 offset:24640
	ds_store_b16_d16_hi v55, v15 offset:24672
	ds_store_b16 v56, v16 offset:24576
	ds_store_b16_d16_hi v56, v16 offset:24608
	ds_store_b16 v56, v17 offset:24640
	ds_store_b16_d16_hi v56, v17 offset:24672
	ds_store_b16 v54, v18 offset:24960
	ds_store_b16_d16_hi v54, v18 offset:24992
	ds_store_b16 v54, v19 offset:25024
	ds_store_b16_d16_hi v54, v19 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b32_e32 v158, 5, v104
	v_and_b32_e32 v6, 0xe00, v2
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_or_b32_e32 v143, 0x3f0, v104
	v_or_b32_e32 v157, 0x7f0, v104
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v0, 4, v104
	v_and_b32_e32 v1, 8, v104
	v_and_or_b32 v12, 0x60, v158, v6
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr143
                                        ; implicit-def: $vgpr157
                                        ; implicit-def: $vgpr158
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr12
.LBB0_3:                                ; %Flow790
	v_or_b32_e32 v6, s34, v86
	v_or_b32_e32 v3, s34, v3
	s_load_b64 s[24:25], s[0:1], 0x20
	s_ashr_i32 s1, s5, 5
	v_or_b32_e32 v4, s34, v4
	v_mul_lo_u32 v6, v6, s1
	v_mul_lo_u32 v3, v3, s1
	v_or_b32_e32 v5, s34, v5
	v_or_b32_e32 v244, s33, v104
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:240
	scratch_store_b32 off, v3, off offset:232
	v_mul_lo_u32 v3, v4, s1
	v_lshlrev_b32_e32 v4, 2, v85
	scratch_store_b32 off, v3, off offset:236 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, v5, s1
	v_lshlrev_b32_e32 v5, 1, v104
	scratch_store_b32 off, v3, off offset:244 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 1, v85
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v104, off offset:300
	scratch_store_b32 off, v86, off offset:228
	scratch_store_b32 off, v85, off offset:304
	scratch_store_b32 off, v3, off offset:572
	scratch_store_b32 off, v4, off offset:576
	scratch_store_b32 off, v5, off offset:580
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v104, 2, 1
	v_bfe_i32 v1, v104, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v1, 0x110, v1
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v2, 0xe00, v2
	v_and_b32_e32 v0, 0x90, v0
	v_dual_mov_b32 v118, s23 :: v_dual_and_b32 v9, 28, v5
	v_mov_b32_e32 v115, s20
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v2, 0x60, v91, v2
	v_mov_b32_e32 v113, s18
	v_xor_b32_e32 v0, v0, v1
	v_dual_mov_b32 v111, s16 :: v_dual_add_nc_u32 v6, s35, v87
	v_dual_mov_b32 v117, s22 :: v_dual_mov_b32 v116, s21
	v_mov_b32_e32 v135, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b32_e32 v1, v2, v0
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v0, 32, v91
	v_dual_mov_b32 v114, s19 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v112, s17 :: v_dual_mov_b32 v127, 0
	v_add3_u32 v0, 0, v4, v0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v160, 0
	v_mov_b32_e32 v109, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v0, v0, v9
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v147, 0
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v45, 0
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:308
	scratch_store_b32 off, v1, off offset:280
	v_xor_b32_e32 v1, 16, v1
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v59, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v91, off offset:312
	scratch_store_b32 off, v1, off offset:284
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v77, 0
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v176, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:276
	scratch_store_b32 off, v87, off offset:296
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v252, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v32, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s15, s1, 3
	s_add_i32 s0, s44, 32
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
	s_clause 0x6                            ; 32-byte Folded Spill
	scratch_store_b32 off, v0, off offset:136
	scratch_store_b32 off, v89, off offset:248
	scratch_store_b64 off, v[90:91], off offset:252
	scratch_store_b32 off, v99, off offset:260
	scratch_store_b32 off, v100, off offset:264
	scratch_store_b32 off, v101, off offset:268
	scratch_store_b32 off, v102, off offset:272
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 5
	s_mov_b32 s18, s30
	s_mov_b32 s30, s44
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s44, s0, s19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v66, off offset:60
	scratch_store_b32 off, v133, off offset:212
	scratch_store_b32 off, v47, off offset:48
	scratch_store_b32 off, v140, off offset:208
	scratch_store_b32 off, v48, off offset:52
	scratch_store_b32 off, v45, off offset:132
	scratch_store_b32 off, v44, off offset:112
	scratch_store_b32 off, v43, off offset:20
	scratch_store_b32 off, v131, off offset:204
	scratch_store_b32 off, v108, off offset:200
	scratch_store_b32 off, v162, off offset:196
	scratch_store_b32 off, v153, off offset:192
	scratch_store_b32 off, v8, off offset:40
	scratch_store_b32 off, v134, off offset:188
	scratch_store_b32 off, v250, off offset:184
	scratch_store_b32 off, v122, off offset:180
	scratch_store_b32 off, v4, off offset:44
	scratch_store_b32 off, v121, off offset:176
	scratch_store_b32 off, v164, off offset:172
	scratch_store_b32 off, v232, off offset:168
	scratch_store_b32 off, v83, off offset:128
	scratch_store_b32 off, v82, off offset:124
	scratch_store_b32 off, v81, off offset:120
	scratch_store_b32 off, v80, off offset:116
	scratch_store_b32 off, v79, off offset:108
	scratch_store_b32 off, v78, off offset:104
	scratch_store_b32 off, v77, off offset:100
	scratch_store_b32 off, v76, off offset:96
	scratch_store_b32 off, v46, off offset:56
	scratch_store_b32 off, v160, off offset:164
	scratch_store_b32 off, v124, off offset:160
	scratch_store_b32 off, v107, off offset:156
	s_clause 0x12                           ; 76-byte Folded Spill
	scratch_store_b32 off, v148, off offset:152
	scratch_store_b32 off, v39, off offset:12
	scratch_store_b32 off, v32, off offset:16
	scratch_store_b32 off, v109, off offset:148
	scratch_store_b32 off, v72, off offset:4
	scratch_store_b32 off, v71, off offset:8
	scratch_store_b32 off, v24, off
	scratch_store_b32 off, v42, off offset:92
	scratch_store_b32 off, v41, off offset:88
	scratch_store_b32 off, v38, off offset:84
	scratch_store_b32 off, v37, off offset:80
	scratch_store_b32 off, v36, off offset:76
	scratch_store_b32 off, v27, off offset:72
	scratch_store_b32 off, v26, off offset:68
	scratch_store_b32 off, v23, off offset:64
	scratch_store_b32 off, v22, off offset:36
	scratch_store_b32 off, v20, off offset:32
	scratch_store_b32 off, v19, off offset:28
	scratch_store_b32 off, v18, off offset:24
	v_or_b32_e32 v0, s44, v88
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_mad_u64_u32 v[9:10], null, s44, s26, v[90:91]
	v_mov_b32_e32 v160, v58
	v_dual_mov_b32 v148, v201 :: v_dual_mov_b32 v121, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	v_dual_mov_b32 v124, v56 :: v_dual_mov_b32 v201, v57
	v_mov_b32_e32 v109, v40
	v_dual_mov_b32 v133, v60 :: v_dual_mov_b32 v140, v61
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	v_dual_mov_b32 v232, v64 :: v_dual_mov_b32 v157, v74
	v_dual_mov_b32 v162, v139 :: v_dual_mov_b32 v163, v154
	buffer_load_b64 v[0:1], v0, s[8:11], 0 offen
	v_mov_b32_e32 v158, v110
	v_dual_mov_b32 v164, v119 :: v_dual_mov_b32 v159, v244
	v_mov_b32_e32 v108, v145
	v_mov_b32_e32 v110, v136
	v_mov_b32_e32 v136, v68
	v_dual_mov_b32 v8, v5 :: v_dual_mov_b32 v27, v98
	v_dual_mov_b32 v26, v3 :: v_dual_mov_b32 v5, v94
	v_dual_mov_b32 v4, v95 :: v_dual_mov_b32 v251, v105
	v_mov_b32_e32 v153, v51
	v_dual_mov_b32 v3, v97 :: v_dual_mov_b32 v134, v127
	v_mov_b32_e32 v127, v152
	v_dual_mov_b32 v152, v88 :: v_dual_mov_b32 v139, v75
	v_dual_mov_b32 v122, v7 :: v_dual_mov_b32 v7, v2
	v_dual_mov_b32 v143, v120 :: v_dual_mov_b32 v144, v126
	v_dual_mov_b32 v126, v132 :: v_dual_mov_b32 v131, v59
	v_dual_mov_b32 v132, v166 :: v_dual_mov_b32 v145, v135
	v_dual_mov_b32 v166, v63 :: v_dual_mov_b32 v119, v69
	v_dual_mov_b32 v135, v67 :: v_dual_mov_b32 v120, v70
	v_mov_b32_e32 v253, v92
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[0:1], off offset:216 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, s49, v86
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v0 offset:832
	ds_load_u8 v10, v0 offset:768
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v104, off, off offset:280
	scratch_load_b32 v107, off, off offset:284
	v_dual_mov_b32 v1, v252 :: v_dual_mov_b32 v252, v91
	v_mov_b32_e32 v32, v6
	v_mov_b32_e32 v6, v93
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v0 offset:960
	ds_load_u8 v11, v0 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v0 offset:576
	ds_load_u8 v12, v0 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v0 offset:704
	ds_load_u8 v13, v0 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v0 offset:320
	ds_load_u8 v10, v0 offset:256
	v_lshl_or_b32 v11, v13, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v0 offset:448
	ds_load_u8 v13, v0 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v0 offset:64
	ds_load_u8 v13, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v13, v9, 0xc0c0004
	ds_load_u8 v13, v0 offset:192
	ds_load_u8 v14, v0 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v13, 16, v9
	ds_load_u8 v13, v0 offset:1856
	ds_load_u8 v14, v0 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v0 offset:1984
	ds_load_u8 v15, v0 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v0 offset:1600
	ds_load_u8 v16, v0 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v0 offset:1664
	ds_load_u8 v17, v0 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v16, v17, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	ds_load_u8 v13, v0 offset:1280
	ds_load_u8 v14, v0 offset:1344
	v_lshl_or_b32 v15, v17, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v14, 0xc0c0004
	ds_load_u8 v14, v0 offset:1408
	ds_load_u8 v17, v0 offset:1472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v14, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v13, v0 offset:1088
	ds_load_u8 v17, v0 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v17, v13, 0xc0c0004
	ds_load_u8 v17, v0 offset:1152
	ds_load_u8 v18, v0 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v17, 16, v13
	ds_load_u8 v17, v0 offset:848
	ds_load_u8 v18, v0 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v0 offset:976
	ds_load_u8 v19, v0 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v0 offset:592
	ds_load_u8 v20, v0 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v0 offset:720
	ds_load_u8 v21, v0 offset:656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v20, 0xc0c0004
	v_lshl_or_b32 v20, v18, 16, v17
	ds_load_u8 v17, v0 offset:336
	ds_load_u8 v18, v0 offset:272
	v_lshl_or_b32 v19, v21, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v0 offset:464
	ds_load_u8 v21, v0 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v21, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v0 offset:16
	ds_load_u8 v21, v0 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v21, 0xc0c0004
	ds_load_u8 v21, v0 offset:208
	ds_load_u8 v22, v0 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v21, 16, v17
	ds_load_u8 v21, v0 offset:1872
	ds_load_u8 v22, v0 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v0 offset:2000
	ds_load_u8 v23, v0 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v0 offset:1616
	ds_load_u8 v24, v0 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v0 offset:1744
	ds_load_u8 v25, v0 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v24, 0xc0c0004
	v_lshl_or_b32 v24, v22, 16, v21
	ds_load_u8 v21, v0 offset:1360
	ds_load_u8 v22, v0 offset:1296
	v_lshl_or_b32 v23, v25, 16, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v0 offset:1488
	ds_load_u8 v25, v0 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v25, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v22, 16, v21
	ds_load_u8 v21, v0 offset:1104
	ds_load_u8 v25, v0 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v25, v21, 0xc0c0004
	ds_load_u8 v25, v0 offset:1232
	ds_load_u8 v28, v0 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v28, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v25, 16, v21
	ds_load_u8 v25, v0 offset:864
	ds_load_u8 v28, v0 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v28, v25, 0xc0c0004
	ds_load_u8 v28, v0 offset:992
	ds_load_u8 v29, v0 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v0 offset:608
	ds_load_u8 v30, v0 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v0 offset:736
	ds_load_u8 v31, v0 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	v_lshl_or_b32 v31, v28, 16, v25
	ds_load_u8 v25, v0 offset:352
	ds_load_u8 v28, v0 offset:288
	v_lshl_or_b32 v30, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v28, v25, 0xc0c0004
	ds_load_u8 v28, v0 offset:480
	ds_load_u8 v29, v0 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v28, 16, v25
	ds_load_u8 v25, v0 offset:32
	ds_load_u8 v28, v0 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v28, 0xc0c0004
	ds_load_u8 v28, v0 offset:224
	ds_load_u8 v33, v0 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v33, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v28, 16, v25
	ds_load_u8 v25, v0 offset:1888
	ds_load_u8 v33, v0 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v0 offset:2016
	ds_load_u8 v34, v0 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v0 offset:1632
	ds_load_u8 v35, v0 offset:1568
	v_lshl_or_b32 v86, v33, 16, v25
	ds_load_u8 v25, v0 offset:1376
	ds_load_u8 v33, v0 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v0 offset:1760
	ds_load_u8 v36, v0 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v35, 16, v34
	ds_load_u8 v33, v0 offset:1504
	ds_load_u8 v34, v0 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v84, v33, 16, v25
	ds_load_u8 v25, v0 offset:1120
	ds_load_u8 v33, v0 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v0 offset:1248
	ds_load_u8 v34, v0 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v33, 16, v25
	ds_load_u8 v25, v0 offset:880
	ds_load_u8 v33, v0 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v33, s49, v99
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v33, v33
	ds_load_u8 v34, v0 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v0 offset:624
	ds_load_u8 v35, v0 offset:560
	v_lshl_or_b32 v200, v33, 16, v25
	ds_load_u8 v25, v0 offset:368
	ds_load_u8 v33, v0 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v0 offset:752
	ds_load_u8 v36, v0 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v199, v35, 16, v34
	ds_load_u8 v33, v0 offset:496
	ds_load_u8 v34, v0 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v198, v33, 16, v25
	ds_load_u8 v25, v0 offset:112
	ds_load_u8 v33, v0 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v0 offset:240
	ds_load_u8 v34, v0 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v197, v33, 16, v25
	ds_load_u8 v25, v0 offset:1904
	ds_load_u8 v33, v0 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v33, s49, v100
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v33, v33
	ds_load_u8 v34, v0 offset:1968
	s_mov_b32 s49, s47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v0 offset:1648
	ds_load_u8 v35, v0 offset:1584
	v_lshl_or_b32 v223, v33, 16, v25
	ds_load_u8 v25, v0 offset:1392
	ds_load_u8 v33, v0 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v0 offset:1776
	ds_load_u8 v36, v0 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v222, v35, 16, v34
	ds_load_u8 v33, v0 offset:1520
	ds_load_u8 v34, v0 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v221, v33, 16, v25
	ds_load_u8 v25, v0 offset:1136
	ds_load_u8 v33, v0 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v0 offset:1264
	ds_load_u8 v0, v0 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v220, v0, 16, v25
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s16, v104
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s16, v107
	ds_load_b128 v[41:44], v0
	ds_load_b128 v[45:48], v25
	ds_load_b128 v[87:90], v0 offset:4096
	ds_load_b128 v[99:102], v25 offset:4096
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v0, s48, v104
	v_add_nc_u32_e32 v25, s48, v107
	v_dual_mov_b32 v107, v178 :: v_dual_mov_b32 v178, v103
	v_mov_b32_e32 v2, v96
	ds_load_b128 v[224:227], v0 offset:4096
	ds_load_b128 v[228:231], v25 offset:4096
	ds_load_b128 v[103:106], v25
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s16, s44, s35
	s_mov_b32 s48, s45
	s_add_i32 s16, s16, s33
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[9:12], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[41:44], v[17:20], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[41:44], v[28:31], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[41:44], v[197:200], v[111:118] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[13:16], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[45:48], v[21:24], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[45:48], v[83:86], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[45:48], v[220:223], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[87:90], v[9:12], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[87:90], v[17:20], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[87:90], v[28:31], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[87:90], v[197:200], v[111:118] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[99:102], v[13:16], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[99:102], v[21:24], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[83:86], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[99:102], v[220:223], v[91:98] neg_lo:[1,1,0]
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[99:102], v0
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[243:250], v[224:227], v[28:31], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[204:211], v[224:227], v[17:20], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[181:188], v[224:227], v[9:12], v[111:118] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[243:250], v[228:231], v[83:86], v[243:250] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[204:211], v[228:231], v[21:24], v[204:211] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v255, v43
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[181:188], v[228:231], v[13:16], v[181:188] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v254, v44
	v_cvt_f32_i32_e32 v44, v55
	v_cvt_f32_i32_e32 v43, v56
	v_cvt_f32_i32_e32 v25, v218
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v0, v185
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[99:102], v[28:31], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[99:102], v[9:12], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[189:196], v[99:102], v[17:20], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[103:106], v[83:86], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[99:102], v[197:200], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[103:106], v[13:16], v[168:175] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[189:196], v[103:106], v[21:24], v[189:196] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v20, v248
	v_wmma_i32_16x16x16_iu8 v[83:90], v[103:106], v[220:223], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[224:227], v[197:200], v[111:118] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v248, v72
	v_cvt_f32_i32_e32 v72, v92
	v_mov_b32_e32 v92, v253
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[99:106], v[228:231], v[220:223], v[99:106] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v221, v172
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v172, v38
	v_cvt_f32_i32_e32 v38, v95
	v_mov_b32_e32 v95, v4
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:296
	scratch_load_b32 v253, off, off offset:288
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v18, v249
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v249, v71
	v_cvt_f32_i32_e32 v71, v91
	v_dual_mov_b32 v91, v252 :: v_dual_mov_b32 v252, v1
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v15, v209
	v_cvt_f32_i32_e32 v209, v89
	v_cvt_f32_i32_e32 v89, v103
	v_mov_b32_e32 v103, v178
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v178, v35
	v_cvt_f32_i32_e32 v35, v98
	v_mov_b32_e32 v98, v27
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v224, v171
	v_cvt_f32_i32_e32 v198, v174
	v_cvt_f32_i32_e32 v197, v175
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v0, s44, v98
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v229, v191
	v_cvt_f32_i32_e32 v185, v193
	v_cvt_f32_i32_e32 v193, v236
	v_cvt_f32_i32_e32 v191, v244
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v17, v247
	v_cvt_f32_i32_e32 v236, v86
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v247, v45
	v_cvt_f32_i32_e32 v244, v46
	v_cvt_f32_i32_e32 v171, v67
	v_cvt_f32_i32_e32 v86, v68
	v_cvt_f32_i32_e32 v175, v69
	v_cvt_f32_i32_e32 v174, v70
	v_cvt_f32_i32_e32 v67, v51
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v70, v54
	v_cvt_f32_i32_e32 v46, v57
	v_cvt_f32_i32_e32 v45, v58
	v_cvt_f32_i32_e32 v31, v37
	v_cvt_f32_i32_e32 v37, v97
	v_mov_b32_e32 v97, v3
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v9, v195
	v_cvt_f32_i32_e32 v200, v196
	v_cvt_f32_i32_e32 v196, v99
	v_cvt_f32_i32_e32 v195, v100
	v_cvt_f32_i32_e32 v100, v104
	v_cvt_f32_i32_e32 v99, v105
	v_mov_b32_e32 v105, v251
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v104, v73
	v_cvt_f32_i32_e32 v251, v74
	v_cvt_f32_i32_e32 v73, v93
	v_cvt_f32_i32_e32 v74, v94
	v_dual_mov_b32 v94, v5 :: v_dual_mov_b32 v93, v6
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v22, v183
	v_cvt_f32_i32_e32 v231, v189
	v_cvt_f32_i32_e32 v230, v190
	v_cvt_f32_i32_e32 v183, v205
	v_cvt_f32_i32_e32 v13, v208
	v_cvt_f32_i32_e32 v205, v241
	v_cvt_f32_i32_e32 v190, v245
	v_cvt_f32_i32_e32 v189, v246
	v_cvt_f32_i32_e32 v208, v90
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v241, v34
	v_cvt_f32_i32_e32 v246, v47
	v_cvt_f32_i32_e32 v245, v48
	v_cvt_f32_i32_e32 v48, v212
	v_cvt_f32_i32_e32 v47, v213
	v_cvt_f32_i32_e32 v90, v219
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v226, v169
	v_cvt_f32_i32_e32 v23, v182
	v_cvt_f32_i32_e32 v182, v206
	v_cvt_f32_i32_e32 v14, v210
	v_cvt_f32_i32_e32 v206, v240
	v_cvt_f32_i32_e32 v210, v88
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v169, v40
	v_mov_b32_e32 v88, v50
	v_cvt_f32_i32_e32 v40, v75
	v_mov_b32_e32 v75, v139
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v139, off, off offset:232
	scratch_load_b32 v240, off, off offset:236
	scratch_load_b32 v154, off, off offset:244
	scratch_load_b32 v155, off, off offset:240
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v199, v173
	v_cvt_f32_i32_e32 v11, v186
	v_cvt_f32_i32_e32 v186, v204
	v_cvt_f32_i32_e32 v204, v242
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v242, v33
	v_cvt_f32_i32_e32 v173, v216
	v_cvt_f32_i32_e32 v33, v217
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v16, v211
	v_cvt_f32_i32_e32 v211, v87
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v50, v214
	v_mov_b32_e32 v87, v49
	v_cvt_f32_i32_e32 v49, v215
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v228, v192
	v_cvt_f32_i32_e32 v192, v243
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v243, v36
	v_cvt_f32_i32_e32 v36, v96
	v_dual_mov_b32 v96, v2 :: v_dual_mov_b32 v5, v8
	v_dual_mov_b32 v2, v7 :: v_dual_mov_b32 v3, v26
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v24, v181
	v_cvt_f32_i32_e32 v181, v207
	v_cvt_f32_i32_e32 v207, v239
	v_cvt_f32_i32_e32 v239, v83
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v83, v39
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v227, v168
	v_cvt_f32_i32_e32 v225, v170
	v_cvt_f32_i32_e32 v19, v184
	v_cvt_f32_i32_e32 v10, v187
	v_cvt_f32_i32_e32 v12, v188
	v_cvt_f32_i32_e32 v184, v194
	v_cvt_f32_i32_e32 v188, v237
	v_cvt_f32_i32_e32 v187, v238
	v_cvt_f32_i32_e32 v21, v250
	v_cvt_f32_i32_e32 v238, v84
	v_cvt_f32_i32_e32 v237, v85
	v_cvt_f32_i32_e32 v194, v101
	v_cvt_f32_i32_e32 v101, v106
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v106, v41
	v_cvt_f32_i32_e32 v250, v42
	v_cvt_f32_i32_e32 v39, v76
	v_cvt_f32_i32_e32 v42, v77
	v_cvt_f32_i32_e32 v41, v78
	v_cvt_f32_i32_e32 v85, v79
	v_cvt_f32_i32_e32 v84, v80
	v_cvt_f32_i32_e32 v168, v81
	v_cvt_f32_i32_e32 v170, v82
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v235, v235
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v0, s16, v4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v28, s16, v1
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	s_add_i32 s16, s16, s27
	v_mov_b32_e32 v6, v32
	v_add_nc_u32_e32 v30, s16, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[51:54], v0, s[36:39], 0 offen
	buffer_load_b128 v[55:58], v28, s[36:39], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v55, v51, 0x5010400
	v_perm_b32 v28, v55, v51, 0x7030602
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v51, s16, v1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v219, v56, v52, 0x5010400
	v_perm_b32 v218, v56, v52, 0x7030602
	v_perm_b32 v213, v57, v53, 0x5010400
	v_perm_b32 v34, v57, v53, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v55, 0x80000000, v51, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v0, v58, v54, 0x5010400
	v_perm_b32 v212, v58, v54, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[51:54], v30, s[36:39], 0 offen
	buffer_load_b128 v[55:58], v55, s[36:39], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s16, s18, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s16, s16, 27
	s_add_i32 s18, s18, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s18, s18, 5
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s16, s18, s35
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s18, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s14, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s14, 2
	s_cselect_b32 s14, s14, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_lshl_b32 s19, s14, 13
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(0)
	v_perm_b32 v223, v55, v51, 0x5010400
	v_perm_b32 v222, v55, v51, 0x7030602
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v51, v159, s16, 1
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v220, v56, v52, 0x5010400
	v_perm_b32 v30, v56, v52, 0x7030602
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v52, v139, s18, 1
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v217, v57, v53, 0x5010400
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v216, v57, v53, 0x7030602
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v53, v240, s18, 1
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v215, v58, v54, 0x5010400
	v_perm_b32 v214, v58, v54, 0x7030602
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v51, v51, s[40:43], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v54, v154, s18, 1
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	v_mov_b32_e32 v154, v163
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v253, v51 offset:36864
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v51, v155, s18, 1
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	s_clause 0x3
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v55, v52, s[4:7], 0 offen
	buffer_load_u16 v56, v53, s[4:7], 0 offen
	buffer_load_u16 v57, v54, s[4:7], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v155, off, off offset:292
	scratch_load_b32 v1, off, off offset:140
	scratch_load_b32 v4, off, off offset:136
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v240, 16, v51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v58, v240, v242
	s_waitcnt vmcnt(2)
	ds_load_b128 v[51:54], v155 offset:36864
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v242, 16, v56
	v_dual_mov_b32 v56, v124 :: v_dual_mov_b32 v7, v122
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_dual_fmac_f32 v1, v58, v51 :: v_dual_mul_f32 v58, v240, v241
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v241, 16, v55
	v_dual_mov_b32 v55, v121 :: v_dual_mul_f32 v24, v24, v240
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v241, v47
	v_mul_f32_e32 v48, v241, v48
	v_mul_f32_e32 v25, v241, v25
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v23, v23, v240
	v_mul_f32_e32 v19, v19, v240
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v95, v47, v52
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v241, v50
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v13, v13, v241
	v_dual_mul_f32 v15, v15, v241 :: v_dual_mul_f32 v22, v22, v240
	v_mul_f32_e32 v16, v16, v241
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v5, v47, v53
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v241, v49
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v14, v14, v241
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v6, v47, v54 :: v_dual_mul_f32 v47, v242, v67
	v_mov_b32_e32 v67, v135
	v_mov_b32_e32 v135, v145
	v_mov_b32_e32 v145, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v3, v47, v51
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v47, v242, v68 :: v_dual_mov_b32 v68, v136
	v_mov_b32_e32 v136, v110
	v_dual_mov_b32 v110, v158 :: v_dual_mul_f32 v17, v17, v242
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v94, v47, v52 :: v_dual_mul_f32 v47, v242, v69
	v_mov_b32_e32 v69, v119
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v21, v21, v242
	v_mul_f32_e32 v18, v18, v242
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v20, v20, v242 :: v_dual_fmac_f32 v93, v47, v53
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v47, v242, v70 :: v_dual_mov_b32 v70, v120
	v_mov_b32_e32 v120, v143
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v2, v47, v54 :: v_dual_fmac_f32 v1, v58, v52
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v58, v240, v178
	v_mov_b32_e32 v178, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v96, v58, v53
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v58, v240, v243 :: v_dual_lshlrev_b32 v243, 16, v57
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v178, v48, v51 :: v_dual_fmac_f32 v97, v58, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v58, v160 :: v_dual_mul_f32 v47, v243, v59
	v_mov_b32_e32 v57, v201
	v_mov_b32_e32 v59, v131
	v_fmac_f32_e32 v4, v47, v51
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v243, v60
	v_mov_b32_e32 v51, v153
	scratch_store_b32 off, v1, off offset:144 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, v126 :: v_dual_mov_b32 v126, v144
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v7, v47, v52
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v47, v243, v61 :: v_dual_mov_b32 v60, v133
	scratch_store_b32 off, v4, off offset:136 ; 4-byte Folded Spill
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v252, v47, v53
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v243, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v61, v140 :: v_dual_fmac_f32 v142, v47, v54
	ds_load_b128 v[47:50], v155 offset:36880
	v_mul_f32_e32 v31, v240, v31
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v103, v31, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v31, v240, v172
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v105, v31, v48
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v31, v240, v83
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v83, off, off offset:128
	scratch_load_b32 v82, off, off offset:124
	scratch_load_b32 v81, off, off offset:120
	scratch_load_b32 v80, off, off offset:116
	scratch_load_b32 v79, off, off offset:108
	scratch_load_b32 v78, off, off offset:104
	scratch_load_b32 v77, off, off offset:100
	scratch_load_b32 v76, off, off offset:96
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v77, v25, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v241, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v27, v127 :: v_dual_fmac_f32 v78, v25, v50
	v_mul_f32_e32 v25, v242, v44
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v167, v25, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v242, v43
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v76, v25, v48 :: v_dual_mul_f32 v25, v242, v46
	v_fmac_f32_e32 v161, v25, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v242, v45
	ds_load_b128 v[43:46], v155 offset:37376
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v130, v25, v50 :: v_dual_mul_f32 v25, v243, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v25, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v25, v243, v64 :: v_dual_mov_b32 v64, v232
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v92, v25, v48 :: v_dual_mul_f32 v25, v243, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v83, v25, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v243, v66
	scratch_load_b32 v66, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v151, v25, v50
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v240, v106
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v63, v166 :: v_dual_fmac_f32 v70, v25, v43
	v_mul_f32_e32 v25, v240, v250
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v75, v25, v44
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v240, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v68, v25, v45 :: v_dual_mul_f32 v25, v240, v254
	v_fmac_f32_e32 v69, v25, v46
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v241, v171
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v81, v31, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v31, v240, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v127, v134 :: v_dual_fmac_f32 v180, v25, v43
	v_mul_f32_e32 v25, v241, v86
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v82, v31, v50 :: v_dual_mul_f32 v31, v241, v173
	scratch_load_b32 v86, off, off offset:228 ; 4-byte Folded Reload
	v_dual_mov_b32 v50, v88 :: v_dual_fmac_f32 v63, v25, v44
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v241, v175
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v79, v31, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v31, v241, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:48
	scratch_load_b32 v133, off, off offset:212
	v_dual_mov_b32 v201, v148 :: v_dual_fmac_f32 v60, v25, v45
	v_dual_mul_f32 v25, v241, v174 :: v_dual_fmac_f32 v80, v31, v48
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:52
	scratch_load_b32 v140, off, off offset:208
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v33, v101, v243 :: v_dual_mov_b32 v88, v152
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v61, v25, v46
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v242, v40
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v31, v89, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v177, v25, v43
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v242, v39
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v55, v25, v44
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v242, v42
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v139, v162 :: v_dual_fmac_f32 v176, v25, v45
	v_mul_f32_e32 v25, v242, v41
	ds_load_b128 v[39:42], v155 offset:37392
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v179, v25, v46
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v243, v71
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v47, v25, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v243, v72
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v43, off, off offset:20
	scratch_load_b32 v108, off, off offset:200
	scratch_load_b32 v162, off, off offset:196
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v48, v25, v44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v44, off, off offset:112
	scratch_load_b32 v8, off, off offset:40
	scratch_load_b32 v153, off, off offset:192
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v243, v73
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v119, v164 :: v_dual_fmac_f32 v8, v25, v45
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v45, off, off offset:132
	scratch_load_b32 v4, off, off offset:44
	scratch_load_b32 v250, off, off offset:184
	scratch_load_b32 v122, off, off offset:180
	scratch_load_b32 v164, off, off offset:172
	scratch_load_b32 v134, off, off offset:188
	scratch_load_b32 v232, off, off offset:168
	v_mul_f32_e32 v25, v243, v74
	v_dual_mov_b32 v49, v87 :: v_dual_mov_b32 v74, v157
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v4, v25, v46
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v46, off, off offset:56
	scratch_load_b32 v121, off, off offset:176
	scratch_load_b32 v131, off, off offset:204
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v240, v247
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v66, v25, v39 :: v_dual_mul_f32 v25, v240, v244
	v_dual_mov_b32 v244, v159 :: v_dual_fmac_f32 v67, v25, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v240, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v64, v25, v41
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v240, v245
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v233, v25, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v241, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v58, v25, v39
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v241, v248
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v59, v25, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v241, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v56, v25, v41
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v241, v251
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v57, v25, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v242, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v50, v25, v39 :: v_dual_mul_f32 v25, v242, v84
	v_fmac_f32_e32 v51, v25, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v242, v168
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v46, v25, v41 :: v_dual_mul_f32 v25, v242, v170
	v_fmac_f32_e32 v49, v25, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v243, v38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v43, v25, v39
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v39, off, off offset:12
	scratch_load_b32 v124, off, off offset:160
	scratch_load_b32 v32, off, off offset:16
	scratch_load_b32 v107, off, off offset:156
	scratch_load_b32 v160, off, off offset:164
	scratch_load_b32 v148, off, off offset:152
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v243, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v109, v25, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v25, v243, v37 :: v_dual_mov_b32 v40, v109
	scratch_load_b32 v109, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v32, v25, v41 :: v_dual_mul_f32 v25, v243, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v25, v42
	v_add_nc_u32_e32 v25, s27, v159
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v25, v25, s16, 1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_lshl_b32 s16, s14, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s18, s16, 0
	s_mov_b32 s16, s46
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_add_i32 s46, s19, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s19, s17, 1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_add_i32 s47, s18, 0x8000
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_add_i32 s45, s46, 0x4000
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v25, v25, s[40:43], 0 offen
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s15
	s_mov_b32 s17, s19
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v253, v25 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v155 offset:36864
	v_mul_f32_e32 v25, v227, v240
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v101, off, off offset:268
	scratch_load_b32 v26, off, off offset:4
	scratch_load_b32 v89, off, off offset:248
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v110, v25, v35 :: v_dual_mul_f32 v25, v226, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v160, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v225, v240
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v122, v25, v37 :: v_dual_mul_f32 v25, v224, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v164, v25, v38 :: v_dual_mul_f32 v25, v231, v241
	v_dual_fmac_f32 v148, v25, v35 :: v_dual_mul_f32 v25, v230, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v149, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v229, v241
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v124, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v228, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v147, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v235, v242
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v145, v25, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v193, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v146, v25, v36 :: v_dual_mul_f32 v25, v188, v242
	v_fmac_f32_e32 v119, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v187, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v165, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v239, v243
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v131, v25, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v238, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v134, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v237, v243
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v232, v25, v37 :: v_dual_mul_f32 v25, v236, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v162, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[35:38], v155 offset:36880
	v_mul_f32_e32 v25, v221, v240
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v234, v25, v35 :: v_dual_mul_f32 v25, v199, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v198, v240
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v203, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v197, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v154, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v185, v241
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v129, v25, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v184, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v202, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v9, v241
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v45, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v200, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v156, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v207, v242
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v125, v25, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v206, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v74, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v205, v242
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v132, v25, v37 :: v_dual_mul_f32 v25, v204, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v128, v25, v38 :: v_dual_mul_f32 v25, v211, v243
	v_fmac_f32_e32 v138, v25, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v25, v210, v243 :: v_dual_mov_b32 v166, v132
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v141, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v209, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v136, v25, v37 :: v_dual_mul_f32 v25, v208, v243
	v_fmac_f32_e32 v137, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[35:38], v155 offset:37376
	v_mul_f32_e32 v25, v100, v243
	scratch_load_b32 v100, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v140, v19, v38 :: v_dual_mul_f32 v19, v186, v241
	v_dual_fmac_f32 v127, v24, v35 :: v_dual_mul_f32 v24, v10, v240
	v_fmac_f32_e32 v120, v23, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v23, v12, v240
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v107, v19, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v183, v241
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v133, v22, v37 :: v_dual_fmac_f32 v250, v19, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v182, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v27, v19, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v19, v181, v241 :: v_dual_mov_b32 v152, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v139, v19, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v192, v242
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v121, v19, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v191, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v1, v19, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v19, v190, v242 :: v_dual_mov_b32 v132, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v108, v19, v37 :: v_dual_mul_f32 v19, v189, v242
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v1, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v153, v19, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v196, v243
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v123, v19, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v35, v99, v243
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v99, off, off offset:260
	scratch_load_b64 v[9:10], off, off offset:252
	v_mul_f32_e32 v19, v195, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v44, v19, v36 :: v_dual_mul_f32 v19, v194, v243
	v_dual_fmac_f32 v126, v19, v37 :: v_dual_mul_f32 v19, v102, v243
	scratch_load_b32 v102, off, off offset:272 ; 4-byte Folded Reload
	v_fmac_f32_e32 v201, v19, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v11, v240
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v22, v1, v240
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v90, v9
	ds_load_b128 v[9:12], v155 offset:37392
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v26, v22, v9 :: v_dual_fmac_f32 v109, v24, v11
	scratch_store_b32 off, v26, off offset:4 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:4
	scratch_load_b32 v22, off, off offset:8
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v22, v19, v10
	scratch_store_b32 off, v22, off offset:8 ; 4-byte Folded Spill
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v71, off, off offset:8
	scratch_load_b32 v42, off, off offset:92
	scratch_load_b32 v41, off, off offset:88
	scratch_load_b32 v38, off, off offset:84
	scratch_load_b32 v37, off, off offset:80
	scratch_load_b32 v36, off, off offset:76
	scratch_load_b32 v27, off, off offset:72
	scratch_load_b32 v26, off, off offset:68
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v42, v23, v12
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v41, v15, v10 :: v_dual_fmac_f32 v38, v13, v9
	scratch_load_b32 v13, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v36, v14, v11 :: v_dual_fmac_f32 v27, v20, v10
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v26, v17, v9 :: v_dual_fmac_f32 v37, v16, v12
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v14, 24, v223
	v_lshrrev_b32_e32 v15, 24, v222
	v_lshrrev_b32_e32 v16, 24, v220
	v_lshrrev_b32_e32 v17, 24, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v14.l, 8, v14.l
	v_lshlrev_b16 v15.l, 8, v15.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v16.l, 8, v16.l
	v_lshlrev_b16 v17.l, 8, v17.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v13, v18, v11
	scratch_store_b32 off, v13, off         ; 4-byte Folded Spill
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v23, off, off offset:64
	scratch_load_b32 v24, off, off
	scratch_load_b32 v22, off, off offset:36
	scratch_load_b32 v20, off, off offset:32
	scratch_load_b32 v19, off, off offset:28
	scratch_load_b32 v18, off, off offset:24
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v13, 24, v218
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v13.l, 8, v13.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v23, v21, v12
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v22, v25, v10
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v20, v31, v9
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v18, v35, v11 :: v_dual_add_nc_u32 v9, s18, v89
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	scratch_load_b64 v[10:11], off, off offset:216 ; 8-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v19, v33, v12
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v12, 24, v219
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v12.l, 8, v12.l
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v9, v[10:11] offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v9, 8, v29
	v_and_b16 v9.h, 0xff, v29.l
	v_lshrrev_b32_e32 v10, 24, v29
	v_lshrrev_b32_e32 v11, 24, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v29.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v9.h, v10.l
	v_lshrrev_b32_e32 v10, 8, v28
	v_and_b16 v10.h, 0xff, v28.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v28.h
	v_or_b16 v10.h, v10.h, v11.l
	v_lshrrev_b32_e32 v11, 8, v219
	v_and_b16 v11.h, 0xff, v219.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v219.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v11.h, v11.h, v12.l
	v_lshrrev_b32_e32 v12, 8, v218
	v_and_b16 v12.h, 0xff, v218.l
	v_lshlrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v12.l, v12.h, v12.l
	v_and_b16 v12.h, 0xff, v218.h
	v_or_b16 v12.h, v12.h, v13.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v13, 8, v223
	v_and_b16 v13.h, 0xff, v223.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v13.l, 8, v13.l
	v_or_b16 v13.l, v13.h, v13.l
	v_and_b16 v13.h, 0xff, v223.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v13.h, v13.h, v14.l
	v_lshrrev_b32_e32 v14, 8, v222
	v_and_b16 v14.h, 0xff, v222.l
	v_lshlrev_b16 v14.l, 8, v14.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v14.l, v14.h, v14.l
	v_and_b16 v14.h, 0xff, v222.h
	v_or_b16 v14.h, v14.h, v15.l
	v_lshrrev_b32_e32 v15, 8, v220
	v_and_b16 v15.h, 0xff, v220.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v15.l, 8, v15.l
	v_or_b16 v15.l, v15.h, v15.l
	v_and_b16 v15.h, 0xff, v220.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v15.h, v15.h, v16.l
	v_lshrrev_b32_e32 v16, 8, v30
	v_and_b16 v16.h, 0xff, v30.l
	v_lshlrev_b16 v16.l, 8, v16.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v16.l, v16.h, v16.l
	v_and_b16 v16.h, 0xff, v30.h
	v_or_b16 v16.h, v16.h, v17.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v17, s46, v101
	ds_store_b16 v17, v9
	ds_store_b16_d16_hi v17, v9 offset:32
	ds_store_b16 v17, v10 offset:64
	ds_store_b16_d16_hi v17, v10 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v17, v13 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v9, s46, v102
	ds_store_b16 v9, v11
	ds_store_b16_d16_hi v9, v11 offset:32
	ds_store_b16 v9, v12 offset:64
	ds_store_b16_d16_hi v9, v12 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v17, v14 offset:16448
	ds_store_b16_d16_hi v17, v13 offset:16416
	ds_store_b16_d16_hi v17, v14 offset:16480
	ds_store_b16 v9, v15 offset:16384
	ds_store_b16_d16_hi v9, v15 offset:16416
	ds_store_b16 v9, v16 offset:16448
	ds_store_b16_d16_hi v9, v16 offset:16480
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v9, 8, v213
	v_and_b16 v9.h, 0xff, v213.l
	v_lshrrev_b32_e32 v10, 24, v213
	v_lshrrev_b32_e32 v11, 24, v34
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v12, 24, v217
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v9.l, 8, v9.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v13, 24, v216
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v10.l, 8, v10.l
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.l, 8, v12.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v213.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v13.l, 8, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v9.h, v9.h, v10.l
	v_lshrrev_b32_e32 v10, 8, v34
	v_and_b16 v10.h, 0xff, v34.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v34.h
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v11, 8, v217
	v_and_b16 v11.h, 0xff, v217.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v217.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v11.h, v11.h, v12.l
	v_lshrrev_b32_e32 v12, 8, v216
	v_and_b16 v12.h, 0xff, v216.l
	v_lshlrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v12.l, v12.h, v12.l
	v_and_b16 v12.h, 0xff, v216.h
	v_or_b16 v12.h, v12.h, v13.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v13, s46, v150
	ds_store_b16 v13, v9
	ds_store_b16_d16_hi v13, v9 offset:32
	ds_store_b16 v13, v10 offset:64
	ds_store_b16_d16_hi v13, v10 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v13, v11 offset:16384
	ds_store_b16_d16_hi v13, v11 offset:16416
	ds_store_b16 v13, v12 offset:16448
	ds_store_b16_d16_hi v13, v12 offset:16480
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v9, 8, v0
	v_lshrrev_b32_e32 v10, 24, v0
	v_and_b16 v9.h, 0xff, v0.l
	v_and_b16 v0.l, 0xff, v0.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v11, 24, v215
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v0.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v212
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v12, 24, v214
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v9.l, v9.h, v9.l
	v_or_b16 v0.l, v0.l, v0.h
	v_lshlrev_b16 v0.h, 8, v10.l
	v_and_b16 v9.h, 0xff, v212.l
	v_lshrrev_b32_e32 v10, 24, v212
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v0.h, v9.h, v0.h
	v_and_b16 v9.h, 0xff, v212.h
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v9.h, v10.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v10, 8, v215
	v_and_b16 v10.h, 0xff, v215.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v215.h
	v_or_b16 v10.h, v10.h, v11.l
	v_lshrrev_b32_e32 v11, 8, v214
	v_and_b16 v11.h, 0xff, v214.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v214.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v11.h, v11.h, v12.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v17, v9 offset:384
	ds_store_b16 v17, v0 offset:416
	ds_store_b16_d16_hi v17, v0 offset:448
	ds_store_b16_d16_hi v17, v9 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v17, v10 offset:16768
	ds_store_b16_d16_hi v17, v10 offset:16800
	ds_store_b16 v17, v11 offset:16832
	ds_store_b16_d16_hi v17, v11 offset:16864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v159, off, off offset:144
	scratch_load_b32 v117, off, off offset:140
	scratch_load_b32 v104, off, off offset:300
	scratch_load_b32 v158, off, off offset:312
	scratch_load_b32 v12, off, off offset:308
	v_mov_b32_e32 v157, v100
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v74, off offset:564
	scratch_store_b32 off, v45, off offset:132
	scratch_store_b32 off, v156, off offset:568
	scratch_store_b32 off, v130, off offset:916
	scratch_store_b32 off, v142, off offset:920
	scratch_store_b32 off, v178, off offset:924
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v143, v99 :: v_dual_and_b32 v0, 4, v104
	v_and_b32_e32 v1, 8, v104
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	scratch_store_b32 off, v9, off offset:924 ; 4-byte Folded Spill
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v146, 0
	scratch_store_b32 off, v2, off offset:920 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v179, 0
	scratch_store_b32 off, v9, off offset:564 ; 4-byte Folded Spill
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v140, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v43, 0
	scratch_store_b32 off, v9, off offset:568 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v2, off offset:136 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v177, 0
	scratch_store_b32 off, v2, off offset:916 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v110, 0
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v135, 0
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	scratch_store_b32 off, v9, off offset:132 ; 4-byte Folded Spill
.LBB0_8:                                ; %Flow791
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v9, s49, v86
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v6, off offset:420
	scratch_store_b32 off, v5, off offset:416
	scratch_store_b32 off, v3, off offset:412
	scratch_store_b32 off, v2, off offset:408
	scratch_store_b32 off, v7, off offset:404
	scratch_store_b32 off, v252, off offset:400
	scratch_store_b32 off, v105, off offset:384
	scratch_store_b32 off, v103, off offset:380
	scratch_store_b32 off, v44, off offset:112
	scratch_store_b32 off, v71, off offset:8
	scratch_store_b32 off, v72, off offset:4
	scratch_store_b32 off, v42, off offset:92
	scratch_store_b32 off, v41, off offset:88
	scratch_store_b32 off, v38, off offset:84
	scratch_store_b32 off, v37, off offset:80
	scratch_store_b32 off, v36, off offset:76
	scratch_store_b32 off, v27, off offset:72
	scratch_store_b32 off, v26, off offset:68
	scratch_store_b32 off, v23, off offset:64
	scratch_store_b32 off, v24, off
	scratch_store_b32 off, v22, off offset:36
	scratch_store_b32 off, v20, off offset:32
	scratch_store_b32 off, v19, off offset:28
	scratch_store_b32 off, v18, off offset:24
	scratch_store_b32 off, v97, off offset:812
	scratch_store_b32 off, v96, off offset:808
	scratch_store_b32 off, v95, off offset:772
	scratch_store_b32 off, v94, off offset:748
	scratch_store_b32 off, v93, off offset:424
	scratch_store_b32 off, v92, off offset:396
	scratch_store_b32 off, v91, off offset:392
	scratch_store_b32 off, v151, off offset:388
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v83, off offset:128
	scratch_store_b32 off, v82, off offset:124
	scratch_store_b32 off, v81, off offset:120
	scratch_store_b32 off, v80, off offset:116
	scratch_store_b32 off, v79, off offset:108
	scratch_store_b32 off, v78, off offset:104
	scratch_store_b32 off, v77, off offset:100
	scratch_store_b32 off, v76, off offset:96
	scratch_store_b32 off, v75, off offset:376
	scratch_store_b32 off, v70, off offset:372
	scratch_store_b32 off, v69, off offset:368
	scratch_store_b32 off, v68, off offset:364
	scratch_store_b32 off, v67, off offset:360
	scratch_store_b32 off, v66, off offset:60
	scratch_store_b32 off, v233, off offset:356
	scratch_store_b32 off, v64, off offset:352
	scratch_store_b32 off, v63, off offset:348
	scratch_store_b32 off, v180, off offset:344
	scratch_store_b32 off, v61, off offset:340
	scratch_store_b32 off, v60, off offset:336
	scratch_store_b32 off, v59, off offset:332
	scratch_store_b32 off, v58, off offset:328
	scratch_store_b32 off, v57, off offset:324
	scratch_store_b32 off, v56, off offset:320
	scratch_store_b32 off, v55, off offset:316
	scratch_store_b32 off, v177, off offset:312
	scratch_store_b32 off, v179, off offset:308
	scratch_store_b32 off, v176, off offset:296
	scratch_store_b32 off, v51, off offset:292
	scratch_store_b32 off, v50, off offset:288
	scratch_store_b32 off, v49, off offset:284
	scratch_store_b32 off, v46, off offset:56
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v48, off offset:52
	scratch_store_b32 off, v47, off offset:48
	scratch_store_b32 off, v4, off offset:44
	scratch_store_b32 off, v8, off offset:40
	scratch_store_b32 off, v40, off offset:280
	scratch_store_b32 off, v43, off offset:20
	scratch_store_b32 off, v39, off offset:12
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v40, 0
	ds_load_u8_d16 v206, v9
	ds_load_u8_d16 v194, v9 offset:16
	ds_load_u8_d16 v82, v9 offset:32
	ds_load_u8_d16 v81, v9 offset:48
	ds_load_u8_d16 v207, v9 offset:64
	ds_load_u8_d16 v200, v9 offset:80
	ds_load_u8_d16 v19, v9 offset:96
	ds_load_u8_d16 v83, v9 offset:112
	ds_load_u8_d16 v225, v9 offset:128
	ds_load_u8_d16 v226, v9 offset:192
	ds_load_u8_d16 v208, v9 offset:144
	ds_load_u8_d16 v209, v9 offset:208
	ds_load_u8_d16 v170, v9 offset:160
	ds_load_u8_d16 v171, v9 offset:224
	ds_load_u8_d16 v2, v9 offset:240
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v245, v9 offset:512
	ds_load_u8_d16 v247, v9 offset:576
	ds_load_u8_d16 v213, v9 offset:528
	ds_load_u8_d16 v214, v9 offset:592
	ds_load_u8_d16 v182, v9 offset:544
	ds_load_u8_d16 v183, v9 offset:608
	ds_load_u8_d16 v17, v9 offset:624
	ds_load_u8_d16 v18, v9 offset:560
	ds_load_u8_d16 v233, v9 offset:640
	ds_load_u8_d16 v252, v9 offset:704
	ds_load_u8_d16 v215, v9 offset:656
	ds_load_u8_d16 v216, v9 offset:720
	ds_load_u8_d16 v184, v9 offset:672
	ds_load_u8_d16 v185, v9 offset:736
	ds_load_u8_d16 v20, v9 offset:752
	ds_load_u8_d16 v21, v9 offset:688
	ds_load_u8_d16 v28, v9 offset:768
	ds_load_u8_d16 v29, v9 offset:832
	ds_load_u8_d16 v218, v9 offset:784
	ds_load_u8_d16 v220, v9 offset:848
	ds_load_u8_d16 v192, v9 offset:800
	ds_load_u8_d16 v193, v9 offset:864
	ds_load_u8_d16 v26, v9 offset:880
	ds_load_u8_d16 v27, v9 offset:816
	ds_load_u8_d16 v30, v9 offset:896
	ds_load_u8_d16 v3, v9 offset:960
	ds_load_u8_d16 v231, v9 offset:1024
	ds_load_u8_d16 v222, v9 offset:912
	ds_load_u8_d16 v224, v9 offset:976
	ds_load_u8_d16 v195, v9 offset:928
	ds_load_u8_d16 v196, v9 offset:992
	ds_load_u8_d16 v31, v9 offset:944
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v10, s49, v143
	ds_load_u8_d16 v242, v9 offset:1344
	ds_load_u8_d16 v243, v9 offset:1408
	ds_load_u8_d16 v227, v9 offset:1296
	ds_load_u8_d16 v228, v9 offset:1360
	ds_load_u8_d16 v186, v9 offset:1312
	ds_load_u8_d16 v187, v9 offset:1376
	ds_load_u8_d16 v22, v9 offset:1392
	ds_load_u8_d16 v23, v9 offset:1328
	ds_load_u8_d16 v114, v9 offset:1472
	ds_load_u8_d16 v248, v9 offset:1536
	ds_load_u8_d16 v229, v9 offset:1424
	ds_load_u8_d16 v230, v9 offset:1488
	ds_load_u8_d16 v188, v9 offset:1440
	ds_load_u8_d16 v189, v9 offset:1504
	ds_load_u8_d16 v24, v9 offset:1520
	ds_load_u8_d16 v25, v9 offset:1456
	ds_load_u8_d16 v115, v9 offset:1600
	ds_load_u8_d16 v251, v9 offset:1664
	ds_load_u8_d16 v112, v9 offset:1552
	ds_load_u8_d16 v113, v9 offset:1616
	ds_load_u8_d16 v197, v9 offset:1568
	ds_load_u8_d16 v198, v9 offset:1632
	ds_load_u8_d16 v35, v9 offset:1648
	ds_load_u8_d16 v168, v9 offset:1584
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v4, v9 offset:1728
	ds_load_u8_d16 v1, v9 offset:1792
	ds_load_u8_d16 v246, v9 offset:1680
	ds_load_u8_d16 v249, v9 offset:1744
	ds_load_u8_d16 v130, v9 offset:1696
	ds_load_u8_d16 v150, v9 offset:1760
	ds_load_u8_d16 v180, v9 offset:1776
	ds_load_u8_d16 v181, v9 offset:1712
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v11, s49, v157
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v66, 0
	s_waitcnt lgkmcnt(62)
	scratch_store_b32 off, v2, off offset:16 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v9 offset:176
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v69, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v79, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:192 ; 4-byte Folded Spill
	ds_load_u8_d16 v237, v9 offset:256
	ds_load_u8_d16 v238, v9 offset:320
	ds_load_u8_d16 v33, v9 offset:272
	ds_load_u8_d16 v210, v9 offset:336
	ds_load_u8_d16 v172, v9 offset:288
	ds_load_u8_d16 v173, v9 offset:352
	ds_load_u8_d16 v2, v9 offset:368
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v13, 0
	s_mov_b32 s4, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v16, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:196 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v9 offset:304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:200 ; 4-byte Folded Spill
	ds_load_u8_d16 v240, v9 offset:384
	ds_load_u8_d16 v241, v9 offset:448
	ds_load_u8_d16 v211, v9 offset:400
	ds_load_u8_d16 v212, v9 offset:464
	ds_load_u8_d16 v174, v9 offset:416
	ds_load_u8_d16 v176, v9 offset:480
	ds_load_u8_d16 v2, v9 offset:496
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:204 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v9 offset:432
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:208 ; 4-byte Folded Spill
	ds_load_u8_d16 v163, v9 offset:1088
	ds_load_u8_d16 v235, v9 offset:1152
	ds_load_u8_d16 v217, v9 offset:1040
	ds_load_u8_d16 v219, v9 offset:1104
	ds_load_u8_d16 v175, v9 offset:1056
	ds_load_u8_d16 v177, v9 offset:1120
	ds_load_u8_d16 v2, v9 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:212 ; 4-byte Folded Spill
	ds_load_u8_d16 v105, v9 offset:1072
	ds_load_u8_d16 v236, v9 offset:1216
	ds_load_u8_d16 v239, v9 offset:1280
	ds_load_u8_d16 v221, v9 offset:1168
	ds_load_u8_d16 v223, v9 offset:1232
	ds_load_u8_d16 v178, v9 offset:1184
	ds_load_u8_d16 v179, v9 offset:1248
	ds_load_u8_d16 v106, v9 offset:1264
	ds_load_u8_d16 v2, v9 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:216 ; 4-byte Folded Spill
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v2, 0x110, 0, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v0, v0, v2
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v7, v9 offset:1856
	ds_load_u8_d16 v2, v9 offset:1920
	ds_load_u8_d16 v254, v9 offset:1808
	ds_load_u8_d16 v255, v9 offset:1872
	ds_load_u8_d16 v204, v9 offset:1824
	ds_load_u8_d16 v205, v9 offset:1888
	ds_load_u8_d16 v190, v9 offset:1904
	ds_load_u8_d16 v191, v9 offset:1840
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v155, v12, v0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v8, v9 offset:1984
	ds_load_u8_d16 v5, v9 offset:1936
	ds_load_u8_d16 v6, v9 offset:2000
	ds_load_u8_d16 v34, v9 offset:1952
	ds_load_u8_d16 v0, v9 offset:2016
	ds_load_u8_d16 v116, v10
	ds_load_u8_d16 v169, v11
	ds_load_u8_d16 v199, v9 offset:1968
	v_mov_b32_e32 v9, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v12, 0, 1, s2
	v_mov_b32_e32 v11, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v253, 16, v155
	v_mov_b32_e32 v10, 0
	scratch_store_b32 off, v9, off offset:140 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s0, 1, v12
	v_mov_b32_e32 v12, 0
	scratch_store_b32 off, v9, off offset:144 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:168 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:176 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:148 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:156 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:164 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:172 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:152 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:160 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:180 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:184 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:188 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	v_perm_b32 v9, v28, v29, 0xc0c0004
	v_perm_b32 v10, v30, v3, 0xc0c0004
	v_perm_b32 v11, v245, v247, 0xc0c0004
	v_perm_b32 v12, v233, v252, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v63, v10, 16, v9
	v_perm_b32 v9, v237, v238, 0xc0c0004
	v_perm_b32 v10, v240, v241, 0xc0c0004
	v_lshl_or_b32 v62, v12, 16, v11
	v_perm_b32 v11, v213, v214, 0xc0c0004
	v_perm_b32 v12, v215, v216, 0xc0c0004
	s_mov_b32 s7, s4
	v_lshl_or_b32 v61, v10, 16, v9
	v_perm_b32 v9, v206, v207, 0xc0c0004
	v_perm_b32 v10, v225, v226, 0xc0c0004
	v_lshl_or_b32 v78, v12, 16, v11
	v_perm_b32 v11, v182, v183, 0xc0c0004
	v_perm_b32 v12, v184, v185, 0xc0c0004
	s_mov_b32 s8, s4
	v_lshl_or_b32 v60, v10, 16, v9
	v_perm_b32 v9, v218, v220, 0xc0c0004
	v_perm_b32 v10, v222, v224, 0xc0c0004
	v_lshl_or_b32 v94, v12, 16, v11
	v_perm_b32 v11, v18, v17, 0xc0c0004
	v_perm_b32 v12, v21, v20, 0xc0c0004
	s_mov_b32 s9, s4
	v_lshl_or_b32 v79, v10, 16, v9
	v_perm_b32 v9, v33, v210, 0xc0c0004
	v_perm_b32 v10, v211, v212, 0xc0c0004
	v_lshl_or_b32 v102, v12, 16, v11
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v13, s16, v155
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v77, v10, 16, v9
	v_perm_b32 v9, v194, v200, 0xc0c0004
	v_perm_b32 v10, v208, v209, 0xc0c0004
	v_dual_mov_b32 v43, s11 :: v_dual_mov_b32 v40, s8
	v_dual_mov_b32 v42, s10 :: v_dual_mov_b32 v41, s9
	v_mov_b32_e32 v38, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v76, v10, 16, v9
	v_perm_b32 v9, v192, v193, 0xc0c0004
	v_perm_b32 v10, v195, v196, 0xc0c0004
	v_dual_mov_b32 v39, s7 :: v_dual_mov_b32 v36, s4
	v_mov_b32_e32 v37, s5
	v_mov_b16_e64 v144.l, v81.l
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v95, v10, 16, v9
	v_perm_b32 v9, v172, v173, 0xc0c0004
	v_perm_b32 v10, v174, v176, 0xc0c0004
	v_mov_b16_e64 v151.l, v82.l
	v_mov_b16_e64 v156.l, v83.l
	v_perm_b32 v104, v246, v249, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v10, 16, v9
	v_perm_b32 v9, v82, v19, 0xc0c0004
	v_perm_b32 v10, v170, v171, 0xc0c0004
	v_lshl_or_b32 v92, v10, 16, v9
	v_perm_b32 v9, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v31, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:196
	scratch_load_b32 v10, off, off offset:200
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:204
	scratch_load_b32 v11, off, off offset:208
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:16
	scratch_load_b32 v11, off, off offset:192
	v_perm_b32 v9, v81, v83, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v10, 16, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[9:12], v13
	ds_load_b128 v[13:16], v13 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[9:12], v[60:63], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[13:16], v[60:63], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[9:12], v[76:79], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[13:16], v[76:79], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[9:12], v[92:95], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[13:16], v[92:95], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[9:12], v[100:103], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v9, v1, v7, 0xc0c0004
	v_perm_b32 v10, v2, v8, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[36:43], v[13:16], v[100:103], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v11, v248, v115, 0xc0c0004
	v_perm_b32 v13, v251, v4, 0xc0c0004
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v100, s16, v253
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v239, v242, 0xc0c0004
	v_perm_b32 v10, v243, v114, 0xc0c0004
	v_lshl_or_b32 v11, v13, 16, v11
	v_perm_b32 v13, v235, v236, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v231, v163, 0xc0c0004
	v_lshl_or_b32 v9, v13, 16, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[13:16], v100
	ds_load_b128 v[100:103], v100 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[13:16], v[9:12], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[100:103], v[9:12], v[52:59] neg_lo:[1,1,0]
	v_perm_b32 v9, v254, v255, 0xc0c0004
	v_perm_b32 v10, v5, v6, 0xc0c0004
	v_perm_b32 v11, v112, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v142, v54
	v_cvt_f32_i32_e32 v118, v55
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v227, v228, 0xc0c0004
	v_perm_b32 v10, v229, v230, 0xc0c0004
	v_lshl_or_b32 v11, v104, 16, v11
	v_perm_b32 v104, v221, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v217, v219, 0xc0c0004
	v_lshl_or_b32 v9, v104, 16, v9
	v_perm_b32 v104, v130, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[13:16], v[9:12], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[100:103], v[9:12], v[68:75] neg_lo:[1,1,0]
	v_perm_b32 v9, v204, v205, 0xc0c0004
	v_perm_b32 v10, v34, v0, 0xc0c0004
	v_perm_b32 v11, v197, v198, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v186, v187, 0xc0c0004
	v_perm_b32 v10, v188, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v11, v104, 16, v11
	v_perm_b32 v104, v178, v179, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v175, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v104, 16, v9
	v_perm_b32 v104, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[76:83], v[13:16], v[9:12], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[100:103], v[9:12], v[84:91] neg_lo:[1,1,0]
	v_perm_b32 v9, v191, v190, 0xc0c0004
	v_perm_b32 v10, v199, v169, 0xc0c0004
	v_perm_b32 v11, v168, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v54, v88
	v_cvt_f32_i32_e32 v55, v89
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v23, v22, 0xc0c0004
	v_perm_b32 v10, v25, v24, 0xc0c0004
	v_lshl_or_b32 v11, v104, 16, v11
	scratch_load_b32 v104, off, off offset:216 ; 4-byte Folded Reload
	v_lshl_or_b32 v10, v10, 16, v9
	scratch_load_b32 v9, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v104, v104, v106, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v105, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v104, 16, v9
	scratch_load_b32 v104, off, off offset:300 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[36:43], v[100:103], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v102, v56
	v_cvt_f32_i32_e32 v56, v86
	scratch_load_b32 v86, off, off offset:228 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[92:99], v[13:16], v[9:12], v[92:99] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v52
	v_cvt_f32_i32_e32 v103, v57
	v_cvt_f32_i32_e32 v100, v58
	v_cvt_f32_i32_e32 v101, v59
	v_cvt_f32_i32_e32 v58, v84
	scratch_store_b32 off, v9, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v53
	v_cvt_f32_i32_e32 v59, v85
	v_cvt_f32_i32_e32 v57, v87
	v_cvt_f32_i32_e32 v52, v90
	v_cvt_f32_i32_e32 v53, v91
	scratch_store_b32 off, v9, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v60
	v_cvt_f32_i32_e32 v60, v74
	v_cvt_f32_i32_e32 v74, v97
	v_cvt_f32_i32_e32 v15, v36
	v_cvt_f32_i32_e32 v16, v37
	scratch_store_b32 off, v9, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v61
	v_cvt_f32_i32_e32 v61, v75
	v_cvt_f32_i32_e32 v75, v94
	v_cvt_f32_i32_e32 v13, v38
	v_cvt_f32_i32_e32 v14, v39
	scratch_store_b32 off, v9, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v62
	v_cvt_f32_i32_e32 v62, v72
	v_cvt_f32_i32_e32 v72, v83
	v_mov_b16_e64 v83.l, v156.l
	v_cvt_f32_i32_e32 v11, v40
	scratch_store_b32 off, v9, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v63
	v_cvt_f32_i32_e32 v63, v73
	v_cvt_f32_i32_e32 v73, v96
	v_cvt_f32_i32_e32 v12, v41
	v_cvt_f32_i32_e32 v10, v42
	scratch_store_b32 off, v9, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v64
	v_cvt_f32_i32_e32 v64, v70
	v_cvt_f32_i32_e32 v70, v82
	v_mov_b16_e64 v82.l, v151.l
	v_cvt_f32_i32_e32 v42, v46
	scratch_store_b32 off, v9, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v65
	v_cvt_f32_i32_e32 v65, v71
	v_cvt_f32_i32_e32 v71, v81
	v_mov_b16_e64 v81.l, v144.l
	v_cvt_f32_i32_e32 v41, v48
	scratch_store_b32 off, v9, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v66
	v_cvt_f32_i32_e32 v66, v68
	v_cvt_f32_i32_e32 v68, v99
	v_cvt_f32_i32_e32 v36, v49
	v_cvt_f32_i32_e32 v37, v50
	scratch_store_b32 off, v9, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v67
	v_cvt_f32_i32_e32 v67, v69
	v_cvt_f32_i32_e32 v69, v80
	v_cvt_f32_i32_e32 v80, v98
	v_cvt_f32_i32_e32 v38, v51
	scratch_store_b32 off, v9, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v76
	v_cvt_f32_i32_e32 v76, v95
	v_cvt_f32_i32_e32 v39, v44
	v_cvt_f32_i32_e32 v40, v45
	scratch_store_b32 off, v9, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v77
	v_cvt_f32_i32_e32 v77, v78
	v_cvt_f32_i32_e32 v78, v92
	scratch_store_b32 off, v9, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v79
	v_cvt_f32_i32_e32 v79, v93
	scratch_store_b32 off, v9, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v43
	v_cvt_f32_i32_e32 v43, v47
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v43, off offset:1032
	scratch_store_b32 off, v42, off offset:1028
	scratch_store_b32 off, v41, off offset:892
	scratch_store_b32 off, v80, off offset:832
	scratch_store_b32 off, v79, off offset:828
	scratch_store_b32 off, v78, off offset:824
	scratch_store_b32 off, v40, off offset:820
	scratch_store_b32 off, v39, off offset:816
	scratch_store_b32 off, v77, off offset:804
	scratch_store_b32 off, v76, off offset:800
	scratch_store_b32 off, v75, off offset:796
	scratch_store_b32 off, v74, off offset:792
	scratch_store_b32 off, v73, off offset:788
	scratch_store_b32 off, v38, off offset:784
	scratch_store_b32 off, v37, off offset:780
	scratch_store_b32 off, v36, off offset:776
	scratch_store_b32 off, v72, off offset:768
	scratch_store_b32 off, v71, off offset:764
	scratch_store_b32 off, v70, off offset:760
	scratch_store_b32 off, v69, off offset:756
	scratch_store_b32 off, v68, off offset:752
	scratch_store_b32 off, v118, off offset:544
	scratch_store_b32 off, v142, off offset:540
	scratch_store_b32 off, v103, off offset:536
	scratch_store_b32 off, v102, off offset:532
	scratch_store_b32 off, v101, off offset:528
	scratch_store_b32 off, v100, off offset:524
	scratch_store_b32 off, v67, off offset:520
	scratch_store_b32 off, v66, off offset:516
	scratch_store_b32 off, v65, off offset:512
	scratch_store_b32 off, v64, off offset:508
	scratch_store_b32 off, v63, off offset:504
	s_clause 0x12                           ; 76-byte Folded Spill
	scratch_store_b32 off, v62, off offset:500
	scratch_store_b32 off, v61, off offset:496
	scratch_store_b32 off, v60, off offset:492
	scratch_store_b32 off, v59, off offset:488
	scratch_store_b32 off, v58, off offset:484
	scratch_store_b32 off, v57, off offset:480
	scratch_store_b32 off, v56, off offset:476
	scratch_store_b32 off, v55, off offset:472
	scratch_store_b32 off, v54, off offset:468
	scratch_store_b32 off, v53, off offset:464
	scratch_store_b32 off, v52, off offset:460
	scratch_store_b32 off, v16, off offset:456
	scratch_store_b32 off, v15, off offset:452
	scratch_store_b32 off, v14, off offset:448
	scratch_store_b32 off, v13, off offset:444
	scratch_store_b32 off, v12, off offset:440
	scratch_store_b32 off, v11, off offset:436
	scratch_store_b32 off, v10, off offset:432
	scratch_store_b32 off, v9, off offset:428
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v10, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v43, s11 :: v_dual_add_nc_u32 v10, s48, v155
	v_dual_mov_b32 v42, s10 :: v_dual_add_nc_u32 v9, s48, v253
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[92:95], v10 offset:4096
	ds_load_b128 v[96:99], v10
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v11, v28, v29, 0xc0c0004
	v_perm_b32 v3, v30, v3, 0xc0c0004
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(0)
	ds_load_b128 v[84:87], v9 offset:4096
	ds_load_b128 v[88:91], v9
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v9, v245, v247, 0xc0c0004
	v_perm_b32 v13, v233, v252, 0xc0c0004
	v_perm_b32 v14, v237, v238, 0xc0c0004
	v_perm_b32 v15, v240, v241, 0xc0c0004
	v_lshl_or_b32 v12, v3, 16, v11
	v_perm_b32 v3, v206, v207, 0xc0c0004
	v_lshl_or_b32 v11, v13, 16, v9
	v_perm_b32 v9, v225, v226, 0xc0c0004
	v_lshl_or_b32 v10, v15, 16, v14
	v_dual_mov_b32 v41, s9 :: v_dual_mov_b32 v40, s8
	v_dual_mov_b32 v39, s7 :: v_dual_mov_b32 v38, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 16, v3
	v_dual_mov_b32 v37, s5 :: v_dual_mov_b32 v36, s4
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v1, v1, v7, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v2, v2, v8, 0xc0c0004
	v_perm_b32 v3, v248, v115, 0xc0c0004
	v_perm_b32 v4, v251, v4, 0xc0c0004
	v_perm_b32 v7, v239, v242, 0xc0c0004
	v_perm_b32 v8, v243, v114, 0xc0c0004
	v_perm_b32 v13, v231, v163, 0xc0c0004
	v_perm_b32 v28, v235, v236, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[96:99], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v2, 16, v1
	v_lshl_or_b32 v15, v4, 16, v3
	v_lshl_or_b32 v14, v8, 16, v7
	v_lshl_or_b32 v13, v28, 16, v13
	v_perm_b32 v1, v218, v220, 0xc0c0004
	v_perm_b32 v2, v222, v224, 0xc0c0004
	v_perm_b32 v3, v213, v214, 0xc0c0004
	v_perm_b32 v4, v215, v216, 0xc0c0004
	v_perm_b32 v7, v33, v210, 0xc0c0004
	v_perm_b32 v8, v211, v212, 0xc0c0004
	v_perm_b32 v28, v194, v200, 0xc0c0004
	v_perm_b32 v29, v208, v209, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[52:59], v[92:95], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v30, v112, v113, 0xc0c0004
	v_perm_b32 v33, v246, v249, 0xc0c0004
	v_lshl_or_b32 v12, v2, 16, v1
	v_lshl_or_b32 v11, v4, 16, v3
	v_lshl_or_b32 v10, v8, 16, v7
	v_lshl_or_b32 v9, v29, 16, v28
	v_perm_b32 v60, v227, v228, 0xc0c0004
	v_perm_b32 v61, v229, v230, 0xc0c0004
	v_perm_b32 v62, v217, v219, 0xc0c0004
	v_perm_b32 v63, v221, v223, 0xc0c0004
	v_lshl_or_b32 v102, v33, 16, v30
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[88:91], v[13:16], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[84:87], v[13:16], v[52:59] neg_lo:[1,1,0]
	v_perm_b32 v13, v192, v193, 0xc0c0004
	v_perm_b32 v14, v195, v196, 0xc0c0004
	v_perm_b32 v15, v182, v183, 0xc0c0004
	v_perm_b32 v16, v184, v185, 0xc0c0004
	v_perm_b32 v19, v82, v19, 0xc0c0004
	v_perm_b32 v30, v170, v171, 0xc0c0004
	v_perm_b32 v28, v254, v255, 0xc0c0004
	v_perm_b32 v29, v5, v6, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[96:99], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v61, 16, v60
	v_lshl_or_b32 v100, v63, 16, v62
	v_wmma_i32_16x16x16_iu8 v[60:67], v[92:95], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v14, 16, v13
	v_lshl_or_b32 v11, v16, 16, v15
	v_lshl_or_b32 v9, v30, 16, v19
	v_perm_b32 v14, v197, v198, 0xc0c0004
	v_perm_b32 v15, v130, v150, 0xc0c0004
	v_perm_b32 v16, v186, v187, 0xc0c0004
	v_perm_b32 v19, v188, v189, 0xc0c0004
	v_lshl_or_b32 v103, v29, 16, v28
	v_perm_b32 v28, v172, v173, 0xc0c0004
	v_lshl_or_b32 v172, v15, 16, v14
	v_perm_b32 v14, v18, v17, 0xc0c0004
	v_lshl_or_b32 v171, v19, 16, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:196
	scratch_load_b32 v17, off, off offset:200
	v_perm_b32 v29, v174, v176, 0xc0c0004
	v_perm_b32 v15, v21, v20, 0xc0c0004
	v_perm_b32 v21, v81, v83, 0xc0c0004
	v_perm_b32 v13, v204, v205, 0xc0c0004
	v_perm_b32 v0, v34, v0, 0xc0c0004
	v_lshl_or_b32 v10, v29, 16, v28
	v_perm_b32 v28, v175, v177, 0xc0c0004
	v_perm_b32 v29, v178, v179, 0xc0c0004
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_lshl_or_b32 v173, v0, 16, v13
	v_wmma_i32_16x16x16_iu8 v[68:75], v[96:99], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[92:95], v[9:12], v[36:43] neg_lo:[1,1,0]
	scratch_load_b32 v9, off, off offset:212 ; 4-byte Folded Reload
	v_lshl_or_b32 v170, v29, 16, v28
	v_perm_b32 v0, v27, v26, 0xc0c0004
	v_perm_b32 v13, v31, v116, 0xc0c0004
	v_perm_b32 v27, v181, v180, 0xc0c0004
	v_perm_b32 v25, v25, v24, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[84:87], v[100:103], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[170:173], v[76:83] neg_lo:[1,1,0]
	v_lshl_or_b32 v20, v13, 16, v0
	v_perm_b32 v0, v191, v190, 0xc0c0004
	v_lshl_or_b32 v22, v25, 16, v22
	v_wmma_i32_16x16x16_iu8 v[1:8], v[88:91], v[100:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[88:91], v[170:173], v[68:75] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v156, v46
	v_cvt_f32_i32_e32 v103, v47
	v_cvt_f32_i32_e32 v47, v80
	v_cvt_f32_i32_e32 v100, v1
	v_cvt_f32_i32_e32 v101, v2
	v_cvt_f32_i32_e32 v118, v68
	v_cvt_f32_i32_e32 v142, v69
	v_cvt_f32_i32_e32 v102, v70
	v_cvt_f32_i32_e32 v144, v71
	v_cvt_f32_i32_e32 v69, v72
	v_cvt_f32_i32_e32 v70, v73
	v_cvt_f32_i32_e32 v68, v74
	v_cvt_f32_i32_e32 v71, v75
	v_cvt_f32_i32_e32 v46, v83
	v_cvt_f32_i32_e32 v111, v44
	s_waitcnt vmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:204
	scratch_load_b32 v18, off, off offset:208
	s_waitcnt vmcnt(2)
	v_perm_b32 v28, v105, v9, 0xc0c0004
	scratch_load_b32 v9, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:16
	scratch_load_b32 v19, off, off offset:192
	s_waitcnt vmcnt(2)
	v_perm_b32 v29, v9, v106, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v19, v18, 0xc0c0004
	v_lshl_or_b32 v19, v15, 16, v14
	v_lshl_or_b32 v18, v17, 16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v17, v26, 16, v21
	v_perm_b32 v21, v199, v169, 0xc0c0004
	v_perm_b32 v26, v168, v35, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[96:99], v[17:20], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v24, v21, 16, v0
	v_lshl_or_b32 v23, v27, 16, v26
	v_lshl_or_b32 v21, v29, 16, v28
	v_wmma_i32_16x16x16_iu8 v[36:43], v[92:95], v[17:20], v[36:43] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v97, v45
	v_cvt_f32_i32_e32 v92, v51
	v_cvt_f32_i32_e32 v98, v3
	v_wmma_i32_16x16x16_iu8 v[9:16], v[88:91], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[84:87], v[21:24], v[36:43] neg_lo:[1,1,0]
	scratch_load_b32 v86, off, off offset:228 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v89, v48
	v_cvt_f32_i32_e32 v91, v49
	v_cvt_f32_i32_e32 v90, v50
	v_cvt_f32_i32_e32 v84, v52
	v_cvt_f32_i32_e32 v87, v53
	v_cvt_f32_i32_e32 v85, v54
	v_cvt_f32_i32_e32 v88, v55
	v_cvt_f32_i32_e32 v55, v56
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v53, v58
	v_cvt_f32_i32_e32 v54, v59
	v_cvt_f32_i32_e32 v99, v4
	v_cvt_f32_i32_e32 v94, v5
	v_cvt_f32_i32_e32 v96, v6
	v_cvt_f32_i32_e32 v93, v7
	v_cvt_f32_i32_e32 v95, v8
	v_cvt_f32_i32_e32 v58, v60
	v_cvt_f32_i32_e32 v60, v61
	v_cvt_f32_i32_e32 v57, v62
	v_cvt_f32_i32_e32 v59, v63
	v_cvt_f32_i32_e32 v51, v64
	v_cvt_f32_i32_e32 v52, v65
	v_cvt_f32_i32_e32 v49, v66
	v_cvt_f32_i32_e32 v50, v67
	v_cvt_f32_i32_e32 v62, v76
	v_cvt_f32_i32_e32 v63, v77
	v_cvt_f32_i32_e32 v61, v78
	v_cvt_f32_i32_e32 v64, v79
	v_cvt_f32_i32_e32 v48, v81
	v_cvt_f32_i32_e32 v45, v82
	v_cvt_f32_i32_e32 v74, v9
	v_cvt_f32_i32_e32 v75, v10
	v_cvt_f32_i32_e32 v72, v11
	v_cvt_f32_i32_e32 v73, v12
	v_cvt_f32_i32_e32 v66, v13
	v_cvt_f32_i32_e32 v67, v14
	v_cvt_f32_i32_e32 v65, v15
	v_cvt_f32_i32_e32 v151, v16
	v_cvt_f32_i32_e32 v14, v36
	v_cvt_f32_i32_e32 v15, v37
	v_cvt_f32_i32_e32 v16, v38
	v_cvt_f32_i32_e32 v13, v39
	v_cvt_f32_i32_e32 v11, v40
	v_cvt_f32_i32_e32 v12, v41
	v_cvt_f32_i32_e32 v9, v42
	v_cvt_f32_i32_e32 v10, v43
.LBB0_12:
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(3)
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:240
	scratch_load_b32 v3, off, off offset:580
	scratch_load_b32 v4, off, off offset:576
	scratch_load_b32 v6, off, off offset:244
	scratch_load_b32 v5, off, off offset:236
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 27
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v91, off offset:1004
	scratch_store_b32 off, v16, off offset:928
	scratch_store_b32 off, v96, off offset:912
	scratch_store_b32 off, v95, off offset:908
	scratch_store_b32 off, v94, off offset:904
	scratch_store_b32 off, v93, off offset:900
	scratch_store_b32 off, v92, off offset:896
	scratch_store_b32 off, v64, off offset:888
	scratch_store_b32 off, v63, off offset:884
	scratch_store_b32 off, v62, off offset:880
	scratch_store_b32 off, v61, off offset:876
	scratch_store_b32 off, v15, off offset:872
	scratch_store_b32 off, v60, off offset:868
	scratch_store_b32 off, v14, off offset:864
	scratch_store_b32 off, v59, off offset:860
	scratch_store_b32 off, v58, off offset:856
	scratch_store_b32 off, v57, off offset:852
	scratch_store_b32 off, v88, off offset:848
	scratch_store_b32 off, v87, off offset:844
	scratch_store_b32 off, v84, off offset:840
	scratch_store_b32 off, v13, off offset:836
	scratch_store_b32 off, v56, off offset:744
	scratch_store_b32 off, v55, off offset:740
	scratch_store_b32 off, v54, off offset:736
	scratch_store_b32 off, v53, off offset:732
	scratch_store_b32 off, v52, off offset:664
	scratch_store_b32 off, v51, off offset:660
	scratch_store_b32 off, v50, off offset:652
	scratch_store_b32 off, v49, off offset:632
	scratch_store_b32 off, v48, off offset:600
	scratch_store_b32 off, v47, off offset:596
	scratch_store_b32 off, v46, off offset:592
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v45, off offset:584
	scratch_store_b32 off, v12, off offset:560
	scratch_store_b32 off, v11, off offset:556
	scratch_store_b32 off, v10, off offset:552
	scratch_store_b32 off, v9, off offset:548
	s_ashr_i32 s0, s0, 5
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s14
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s4, s0, s35
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s5, -1, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v2, 32, v158
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v1, v244, s4, 1
	v_mov_b32_e32 v206, v97
	s_mov_b32 s31, s15
	s_and_b32 s29, s29, 0xffff
	.loc	1 394 39                        ; generate_amdgcn.py:394:39
	s_waitcnt vmcnt(6)
	v_add3_u32 v7, s33, s27, v104
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v111, off offset:1124
	scratch_store_b32 off, v103, off offset:1104
	scratch_store_b32 off, v142, off offset:1100
	scratch_store_b32 off, v118, off offset:1096
	scratch_store_b32 off, v144, off offset:1092
	scratch_store_b32 off, v102, off offset:1048
	scratch_store_b32 off, v100, off offset:1044
	scratch_store_b32 off, v98, off offset:1040
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v233, 0
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	s_waitcnt vmcnt(6)
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v9, s47, v86
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v10, s47, v143
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v11, s47, v157
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v46, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v22, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v59, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v43, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v0, v0, s0, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v3, 28, v3
	s_waitcnt vmcnt(3)
	v_add3_u32 v2, 0, v4, v2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	scratch_load_b32 v4, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v5, v5, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add_lshl_u32 v6, v6, s0, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_add_nc_u32_e32 v12, v2, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v3, 0x80000000, v5, vcc_lo
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v12, v1 offset:36864
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v4, v4, s0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v2, 0x80000000, v4, vcc_lo
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1116 ; 4-byte Folded Spill
	buffer_load_u16 v0, v2, s[12:15], 0 offen
	v_mov_b32_e32 v2, 0
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1112 ; 4-byte Folded Spill
	buffer_load_u16 v0, v3, s[12:15], 0 offen
	scratch_store_b32 off, v7, off offset:1036 ; 4-byte Folded Spill
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v7, v7, s4, 1
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1108 ; 4-byte Folded Spill
	buffer_load_u16 v0, v4, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1120 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v0, v5, s[28:31], 0 offen
	scratch_store_b32 off, v2, off offset:192 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:216 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:268 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:196 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:200 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:208 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:212 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:260 ; 4-byte Folded Spill
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v175, 0, v1
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v0, 16, v0
	ds_load_b128 v[17:20], v175 offset:36864
	ds_load_b128 v[13:16], v175 offset:36880
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v1, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[1:4], v175 offset:37376
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[1:4], off offset:1072 ; 16-byte Folded Spill
	ds_load_b128 v[1:4], v175 offset:37392
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[1:4], off offset:1056 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_store_b32 off, v12, off offset:1052 ; 4-byte Folded Spill
	ds_store_b32 v12, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v170, v9
	ds_load_u8_d16 v231, v9 offset:16
	ds_load_u8_d16 v0, v9 offset:32
	v_mov_b32_e32 v12, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1208 ; 4-byte Folded Spill
	ds_load_u8_d16 v100, v9 offset:48
	ds_load_u8_d16 v173, v9 offset:64
	ds_load_u8_d16 v112, v9 offset:80
	ds_load_u8_d16 v0, v9 offset:96
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1212 ; 4-byte Folded Spill
	ds_load_u8_d16 v102, v9 offset:112
	ds_load_u8_d16 v169, v9 offset:128
	ds_load_u8_d16 v0, v9 offset:192
	ds_load_u8_d16 v113, v9 offset:144
	ds_load_u8_d16 v163, v9 offset:208
	ds_load_u8_d16 v1, v9 offset:160
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1216 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:224
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1220 ; 4-byte Folded Spill
	ds_load_u8_d16 v7, v9 offset:240
	ds_load_u8_d16 v8, v9 offset:176
	ds_load_u8_d16 v168, v9 offset:256
	ds_load_u8_d16 v254, v9 offset:320
	ds_load_u8_d16 v219, v9 offset:272
	ds_load_u8_d16 v241, v9 offset:336
	ds_load_u8_d16 v1, v9 offset:288
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1244 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1252 ; 4-byte Folded Spill
	ds_load_u8_d16 v222, v9 offset:368
	ds_load_u8_d16 v223, v9 offset:304
	ds_load_u8_d16 v255, v9 offset:384
	ds_load_u8_d16 v185, v9 offset:448
	ds_load_u8_d16 v242, v9 offset:400
	ds_load_u8_d16 v243, v9 offset:464
	ds_load_u8_d16 v1, v9 offset:416
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1260 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:480
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1268 ; 4-byte Folded Spill
	ds_load_u8_d16 v225, v9 offset:496
	ds_load_u8_d16 v227, v9 offset:432
	ds_load_u8_d16 v188, v9 offset:512
	ds_load_u8_d16 v190, v9 offset:576
	ds_load_u8_d16 v235, v9 offset:528
	ds_load_u8_d16 v236, v9 offset:592
	ds_load_u8_d16 v1, v9 offset:544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1272 ; 4-byte Folded Spill
	ds_load_u8_d16 v31, v9 offset:608
	ds_load_u8_d16 v1, v9 offset:624
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1132 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:560
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1136 ; 4-byte Folded Spill
	ds_load_u8_d16 v191, v9 offset:640
	ds_load_u8_d16 v194, v9 offset:704
	ds_load_u8_d16 v237, v9 offset:656
	ds_load_u8_d16 v238, v9 offset:720
	ds_load_u8_d16 v215, v9 offset:672
	ds_load_u8_d16 v217, v9 offset:736
	ds_load_u8_d16 v1, v9 offset:752
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1144 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:688
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1152 ; 4-byte Folded Spill
	ds_load_u8_d16 v200, v9 offset:768
	ds_load_u8_d16 v103, v9 offset:832
	ds_load_u8_d16 v245, v9 offset:784
	ds_load_u8_d16 v246, v9 offset:848
	ds_load_u8_d16 v2, v9 offset:800
	ds_load_u8_d16 v4, v9 offset:864
	ds_load_u8_d16 v1, v9 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1180 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1184 ; 4-byte Folded Spill
	ds_load_u8_d16 v104, v9 offset:896
	ds_load_u8_d16 v204, v9 offset:960
	ds_load_u8_d16 v176, v9 offset:1024
	ds_load_u8_d16 v249, v9 offset:912
	ds_load_u8_d16 v143, v9 offset:976
	ds_load_u8_d16 v221, v9 offset:928
	ds_load_u8_d16 v220, v9 offset:992
	ds_load_u8_d16 v1, v9 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1196 ; 4-byte Folded Spill
	ds_load_u8_d16 v177, v9 offset:1088
	ds_load_u8_d16 v178, v9 offset:1152
	ds_load_u8_d16 v239, v9 offset:1040
	ds_load_u8_d16 v142, v9 offset:1104
	ds_load_u8_d16 v1, v9 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1240 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1248 ; 4-byte Folded Spill
	ds_load_u8_d16 v224, v9 offset:1136
	ds_load_u8_d16 v226, v9 offset:1072
	ds_load_u8_d16 v181, v9 offset:1216
	ds_load_u8_d16 v198, v9 offset:1280
	ds_load_u8_d16 v247, v9 offset:1168
	ds_load_u8_d16 v248, v9 offset:1232
	ds_load_u8_d16 v1, v9 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1256 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1264 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1088 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1128 ; 4-byte Folded Spill
	ds_load_u8_d16 v184, v9 offset:1344
	ds_load_u8_d16 v144, v9 offset:1408
	ds_load_u8_d16 v251, v9 offset:1296
	ds_load_u8_d16 v252, v9 offset:1360
	ds_load_u8_d16 v29, v9 offset:1312
	ds_load_u8_d16 v30, v9 offset:1376
	ds_load_u8_d16 v1, v9 offset:1392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1140 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1148 ; 4-byte Folded Spill
	ds_load_u8_d16 v193, v9 offset:1472
	ds_load_u8_d16 v186, v9 offset:1536
	ds_load_u8_d16 v199, v9 offset:1424
	ds_load_u8_d16 v34, v9 offset:1488
	ds_load_u8_d16 v1, v9 offset:1440
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1276 ; 4-byte Folded Spill
	ds_load_u8_d16 v216, v9 offset:1504
	ds_load_u8_d16 v1, v9 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1156 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1160 ; 4-byte Folded Spill
	ds_load_u8_d16 v189, v9 offset:1600
	ds_load_u8_d16 v187, v9 offset:1664
	ds_load_u8_d16 v171, v9 offset:1552
	ds_load_u8_d16 v172, v9 offset:1616
	ds_load_u8_d16 v3, v9 offset:1568
	ds_load_u8_d16 v218, v9 offset:1632
	ds_load_u8_d16 v1, v9 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1188 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1584
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1192 ; 4-byte Folded Spill
	ds_load_u8_d16 v192, v9 offset:1728
	ds_load_u8_d16 v195, v9 offset:1792
	ds_load_u8_d16 v33, v9 offset:1680
	ds_load_u8_d16 v174, v9 offset:1744
	ds_load_u8_d16 v130, v9 offset:1696
	ds_load_u8_d16 v240, v9 offset:1760
	ds_load_u8_d16 v1, v9 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1200 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1204 ; 4-byte Folded Spill
	ds_load_u8_d16 v197, v9 offset:1856
	ds_load_u8_d16 v196, v9 offset:1920
	ds_load_u8_d16 v179, v9 offset:1808
	ds_load_u8_d16 v180, v9 offset:1872
	ds_load_u8_d16 v157, v9 offset:1824
	ds_load_u8_d16 v228, v9 offset:1888
	ds_load_u8_d16 v1, v9 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1224 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1228 ; 4-byte Folded Spill
	ds_load_u8_d16 v158, v9 offset:1984
	ds_load_u8_d16 v182, v9 offset:1936
	ds_load_u8_d16 v183, v9 offset:2000
	ds_load_u8_d16 v229, v9 offset:1952
	ds_load_u8_d16 v230, v9 offset:2016
	ds_load_u8_d16 v1, v10
	ds_load_u8_d16 v5, v11
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:1232 ; 4-byte Folded Spill
	ds_load_u8_d16 v5, v9 offset:1968
	v_mov_b32_e32 v9, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:1236 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	scratch_load_b32 v5, off, off offset:1272 ; 4-byte Folded Reload
	v_perm_b32 v23, v235, v236, 0xc0c0004
	v_perm_b32 v24, v237, v238, 0xc0c0004
	v_dual_mov_b32 v211, v70 :: v_dual_mov_b32 v210, v69
	v_perm_b32 v9, v200, v103, 0xc0c0004
	v_perm_b32 v10, v104, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v69, v24, 16, v23
	v_perm_b32 v11, v188, v190, 0xc0c0004
	v_perm_b32 v21, v191, v194, 0xc0c0004
	v_perm_b32 v22, v249, v143, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v168, v254, 0xc0c0004
	v_perm_b32 v10, v255, v185, 0xc0c0004
	v_lshl_or_b32 v11, v21, 16, v11
	v_perm_b32 v21, v169, v0, 0xc0c0004
	v_dual_mov_b32 v209, v68 :: v_dual_mov_b32 v208, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v170, v173, 0xc0c0004
	v_perm_b32 v24, v215, v217, 0xc0c0004
	v_dual_mov_b32 v105, v85 :: v_dual_mov_b32 v114, v99
	s_mov_b32 s5, s4
	v_lshl_or_b32 v9, v21, 16, v9
	v_perm_b32 v21, v245, v246, 0xc0c0004
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	v_lshl_or_b32 v70, v22, 16, v21
	v_perm_b32 v21, v219, v241, 0xc0c0004
	v_perm_b32 v22, v242, v243, 0xc0c0004
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b32_e32 v115, v101
	v_dual_mov_b32 v207, v66 :: v_dual_mov_b32 v214, v73
	v_lshl_or_b32 v68, v22, 16, v21
	v_perm_b32 v21, v231, v112, 0xc0c0004
	v_perm_b32 v22, v113, v163, 0xc0c0004
	v_dual_mov_b32 v213, v72 :: v_dual_mov_b32 v150, v75
	v_dual_mov_b32 v111, v74 :: v_dual_mov_b32 v116, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v67, v22, 16, v21
	v_perm_b32 v21, v2, v4, 0xc0c0004
	v_perm_b32 v22, v221, v220, 0xc0c0004
	v_dual_mov_b32 v205, v90 :: v_dual_mov_b32 v106, v65
	v_mov_b32_e32 v212, v71
	v_lshl_or_b32 v86, v22, 16, v21
	s_waitcnt vmcnt(0)
	v_perm_b32 v23, v5, v31, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1244
	scratch_load_b32 v6, off, off offset:1252
	v_lshl_or_b32 v85, v24, 16, v23
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v5, v6, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1260
	scratch_load_b32 v6, off, off offset:1268
	s_waitcnt vmcnt(0)
	v_perm_b32 v22, v5, v6, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1208
	scratch_load_b32 v6, off, off offset:1212
	v_lshl_or_b32 v84, v22, 16, v21
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v5, v6, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1216
	scratch_load_b32 v6, off, off offset:1220
	s_waitcnt vmcnt(0)
	v_perm_b32 v22, v5, v6, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1180
	scratch_load_b32 v6, off, off offset:1184
	v_lshl_or_b32 v83, v22, 16, v21
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v6, v5, 0xc0c0004
	scratch_load_b32 v5, off, off offset:1196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v22, v5, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1132
	scratch_load_b32 v6, off, off offset:1136
	v_lshl_or_b32 v94, v22, 16, v21
	v_perm_b32 v21, v223, v222, 0xc0c0004
	v_perm_b32 v22, v227, v225, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v22, 16, v21
	v_perm_b32 v21, v100, v102, 0xc0c0004
	v_perm_b32 v22, v8, v7, 0xc0c0004
	v_lshl_or_b32 v91, v22, 16, v21
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v21, s46, v155
	ds_load_b128 v[95:98], v21
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt vmcnt(0)
	v_perm_b32 v23, v6, v5, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1144
	scratch_load_b32 v6, off, off offset:1152
	s_waitcnt vmcnt(0)
	v_perm_b32 v24, v6, v5, 0xc0c0004
	v_mov_b16_e32 v5.l, v100.l
	v_mov_b16_e32 v6.l, v102.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[99:102], v21 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v93, v24, 16, v23
	v_dual_mov_b32 v28, s11 :: v_dual_mov_b32 v27, s10
	v_mov_b32_e32 v24, s7
	v_dual_mov_b32 v26, s9 :: v_dual_mov_b32 v25, s8
	v_dual_mov_b32 v22, s5 :: v_dual_mov_b32 v23, s6
	v_mov_b32_e32 v21, s4
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[95:98], v[9:12], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[95:98], v[67:70], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[99:102], v[9:12], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[99:102], v[67:70], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[95:98], v[83:86], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[83:86], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[95:98], v[91:94], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[99:102], v[91:94], v[21:28] neg_lo:[1,1,0]
	v_mov_b16_e32 v100.l, v5.l
	scratch_load_b32 v5, off, off offset:1276 ; 4-byte Folded Reload
	v_perm_b32 v9, v195, v197, 0xc0c0004
	v_perm_b32 v10, v196, v158, 0xc0c0004
	v_perm_b32 v11, v186, v189, 0xc0c0004
	v_perm_b32 v91, v187, v192, 0xc0c0004
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v95, s46, v253
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v99, v33, v174, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v198, v184, 0xc0c0004
	v_perm_b32 v10, v144, v193, 0xc0c0004
	v_lshl_or_b32 v11, v91, 16, v11
	v_perm_b32 v91, v178, v181, 0xc0c0004
	v_mov_b16_e32 v102.l, v6.l
	v_mov_b32_e32 v101, v115
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v176, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v91, 16, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[91:94], v95
	ds_load_b128 v[95:98], v95 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[91:94], v[9:12], v[35:42] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[95:98], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_perm_b32 v9, v179, v180, 0xc0c0004
	v_perm_b32 v10, v182, v183, 0xc0c0004
	v_perm_b32 v11, v171, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v251, v252, 0xc0c0004
	v_perm_b32 v10, v199, v34, 0xc0c0004
	v_lshl_or_b32 v11, v99, 16, v11
	v_perm_b32 v99, v247, v248, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v239, v142, 0xc0c0004
	v_lshl_or_b32 v9, v99, 16, v9
	v_perm_b32 v99, v130, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[91:94], v[9:12], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[95:98], v[9:12], v[59:66] neg_lo:[1,1,0]
	v_perm_b32 v9, v157, v228, 0xc0c0004
	v_perm_b32 v10, v229, v230, 0xc0c0004
	v_perm_b32 v11, v3, v218, 0xc0c0004
	v_cvt_f32_i32_e32 v233, v51
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v29, v30, 0xc0c0004
	v_lshl_or_b32 v11, v99, 16, v11
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v5, v216, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1240
	scratch_load_b32 v6, off, off offset:1248
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v5, v6, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1256
	scratch_load_b32 v6, off, off offset:1264
	s_waitcnt vmcnt(0)
	v_perm_b32 v99, v5, v6, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1224
	scratch_load_b32 v6, off, off offset:1228
	v_lshl_or_b32 v9, v99, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[91:94], v[9:12], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[95:98], v[9:12], v[75:82] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v118, v74
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v51, v76
	v_mov_b32_e32 v74, v111
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v6, v5, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1232
	scratch_load_b32 v6, off, off offset:1236
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v6, v5, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1188
	scratch_load_b32 v6, off, off offset:1192
	v_lshl_or_b32 v12, v10, 16, v9
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v6, v5, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1200
	scratch_load_b32 v6, off, off offset:1204
	s_waitcnt vmcnt(0)
	v_perm_b32 v99, v6, v5, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1140
	scratch_load_b32 v6, off, off offset:1148
	v_lshl_or_b32 v11, v99, 16, v11
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v6, v5, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1156
	scratch_load_b32 v6, off, off offset:1160
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v6, v5, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1088
	scratch_load_b32 v6, off, off offset:1128
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v226, v224, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v99, v6, v5, 0xc0c0004
	v_cvt_f32_i32_e32 v5, v56
	v_cvt_f32_i32_e32 v56, v64
	v_cvt_f32_i32_e32 v64, v70
	v_mov_b32_e32 v70, v211
	v_lshl_or_b32 v9, v99, 16, v9
	scratch_store_b32 off, v5, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v71
	v_mov_b32_e32 v99, v114
	v_mov_b32_e32 v71, v212
	v_wmma_i32_16x16x16_iu8 v[83:90], v[91:94], v[9:12], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[95:98], v[9:12], v[21:28] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v52
	v_cvt_f32_i32_e32 v97, v43
	v_cvt_f32_i32_e32 v98, v44
	v_cvt_f32_i32_e32 v95, v45
	v_cvt_f32_i32_e32 v96, v46
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:192
	scratch_store_b32 off, v5, off offset:260
	v_cvt_f32_i32_e32 v9, v53
	v_cvt_f32_i32_e32 v93, v47
	v_cvt_f32_i32_e32 v94, v48
	v_cvt_f32_i32_e32 v91, v49
	v_cvt_f32_i32_e32 v92, v50
	scratch_store_b32 off, v9, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v54
	v_cvt_f32_i32_e32 v53, v65
	v_mov_b32_e32 v65, v106
	v_cvt_f32_i32_e32 v54, v66
	v_mov_b32_e32 v66, v207
	scratch_store_b32 off, v9, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v55
	v_cvt_f32_i32_e32 v55, v63
	v_cvt_f32_i32_e32 v63, v69
	v_mov_b32_e32 v69, v210
	v_cvt_f32_i32_e32 v106, v73
	scratch_store_b32 off, v9, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v57
	v_cvt_f32_i32_e32 v57, v61
	v_cvt_f32_i32_e32 v61, v67
	v_mov_b32_e32 v67, v208
	v_cvt_f32_i32_e32 v208, v72
	scratch_store_b32 off, v9, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v58
	v_cvt_f32_i32_e32 v58, v62
	v_cvt_f32_i32_e32 v62, v68
	v_mov_b32_e32 v68, v209
	v_mov_b32_e32 v72, v213
	scratch_store_b32 off, v9, off offset:212 ; 4-byte Folded Spill
	v_mov_b32_e32 v73, v214
	v_cvt_f32_i32_e32 v50, v75
	v_mov_b32_e32 v75, v150
	v_cvt_f32_i32_e32 v47, v77
	v_cvt_f32_i32_e32 v48, v78
	v_cvt_f32_i32_e32 v45, v79
	v_cvt_f32_i32_e32 v46, v80
	v_cvt_f32_i32_e32 v43, v81
	v_cvt_f32_i32_e32 v44, v82
	v_cvt_f32_i32_e32 v80, v83
	v_cvt_f32_i32_e32 v81, v84
	v_cvt_f32_i32_e32 v82, v85
	v_mov_b32_e32 v85, v105
	v_cvt_f32_i32_e32 v83, v86
	v_cvt_f32_i32_e32 v76, v87
	v_cvt_f32_i32_e32 v77, v88
	v_cvt_f32_i32_e32 v78, v89
	v_mov_b32_e32 v89, v116
	v_cvt_f32_i32_e32 v79, v90
	v_mov_b32_e32 v90, v205
	v_cvt_f32_i32_e32 v49, v21
	v_cvt_f32_i32_e32 v52, v22
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v11, v25
	v_cvt_f32_i32_e32 v12, v26
	v_cvt_f32_i32_e32 v10, v27
	v_cvt_f32_i32_e32 v9, v28
	v_cvt_f32_i32_e32 v24, v37
	v_cvt_f32_i32_e32 v25, v38
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v38, v40
	v_cvt_f32_i32_e32 v28, v41
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v26, v35
	v_cvt_f32_i32_e32 v27, v36
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v38, off offset:1024
	scratch_store_b32 off, v37, off offset:1020
	scratch_store_b32 off, v28, off offset:1016
	scratch_store_b32 off, v118, off offset:1012
	scratch_store_b32 off, v106, off offset:1008
	scratch_store_b32 off, v83, off offset:1000
	scratch_store_b32 off, v82, off offset:996
	scratch_store_b32 off, v81, off offset:992
	scratch_store_b32 off, v80, off offset:988
	scratch_store_b32 off, v79, off offset:984
	scratch_store_b32 off, v78, off offset:980
	scratch_store_b32 off, v77, off offset:976
	scratch_store_b32 off, v76, off offset:972
	scratch_store_b32 off, v27, off offset:968
	scratch_store_b32 off, v26, off offset:964
	scratch_store_b32 off, v25, off offset:960
	scratch_store_b32 off, v24, off offset:956
	scratch_store_b32 off, v64, off offset:952
	scratch_store_b32 off, v63, off offset:948
	scratch_store_b32 off, v62, off offset:944
	scratch_store_b32 off, v61, off offset:940
	scratch_store_b32 off, v233, off offset:936
	scratch_store_b32 off, v23, off offset:932
	scratch_store_b32 off, v98, off offset:728
	scratch_store_b32 off, v97, off offset:724
	scratch_store_b32 off, v96, off offset:720
	scratch_store_b32 off, v95, off offset:716
	scratch_store_b32 off, v94, off offset:712
	scratch_store_b32 off, v93, off offset:708
	scratch_store_b32 off, v92, off offset:704
	scratch_store_b32 off, v91, off offset:700
	scratch_store_b32 off, v60, off offset:696
	s_clause 0x17                           ; 96-byte Folded Spill
	scratch_store_b32 off, v59, off offset:692
	scratch_store_b32 off, v58, off offset:688
	scratch_store_b32 off, v57, off offset:684
	scratch_store_b32 off, v56, off offset:680
	scratch_store_b32 off, v55, off offset:676
	scratch_store_b32 off, v54, off offset:672
	scratch_store_b32 off, v53, off offset:668
	scratch_store_b32 off, v52, off offset:656
	scratch_store_b32 off, v51, off offset:648
	scratch_store_b32 off, v50, off offset:644
	scratch_store_b32 off, v49, off offset:640
	scratch_store_b32 off, v48, off offset:636
	scratch_store_b32 off, v47, off offset:628
	scratch_store_b32 off, v46, off offset:624
	scratch_store_b32 off, v45, off offset:620
	scratch_store_b32 off, v44, off offset:616
	scratch_store_b32 off, v43, off offset:612
	scratch_store_b32 off, v22, off offset:608
	scratch_store_b32 off, v21, off offset:604
	scratch_store_b32 off, v12, off offset:588
	scratch_store_b32 off, v11, off offset:580
	scratch_store_b32 off, v10, off offset:576
	scratch_store_b32 off, v9, off offset:572
	scratch_store_b32 off, v32, off offset:16
	ds_load_b128 v[35:38], v175 offset:36864
	ds_load_b128 v[25:28], v175 offset:36880
	ds_load_b128 v[21:24], v175 offset:37376
	ds_load_b128 v[9:12], v175 offset:37392
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v40, v253 :: v_dual_mov_b32 v5, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v32, off offset:224
	scratch_store_b32 off, v6, off offset:264
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v114, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v32, off offset:248
	scratch_store_b32 off, v6, off offset:272
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v253, 0
	scratch_store_b32 off, v5, off offset:276 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[9:12], off offset:1164 ; 16-byte Folded Spill
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v61, 0
	scratch_store_b32 off, v32, off offset:252 ; 4-byte Folded Spill
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v233, v117
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v205, v159
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v10, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v39, s45, v40
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v41, v200, v103, 0xc0c0004
	v_perm_b32 v42, v104, v204, 0xc0c0004
	v_perm_b32 v43, v191, v194, 0xc0c0004
	v_mov_b32_e32 v204, v208
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[103:106], v39 offset:4096
	ds_load_b128 v[114:117], v39
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v39, v188, v190, 0xc0c0004
	v_perm_b32 v0, v169, v0, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b32_e32 v188, v65
	v_lshl_or_b32 v65, v43, 16, v39
	v_perm_b32 v39, v170, v173, 0xc0c0004
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v40, s45, v155
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v44, v168, v254, 0xc0c0004
	v_perm_b32 v45, v255, v185, 0xc0c0004
	v_perm_b32 v55, v196, v158, 0xc0c0004
	v_lshl_or_b32 v63, v0, 16, v39
	v_perm_b32 v0, v195, v197, 0xc0c0004
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[207:210], v40 offset:4096
	ds_load_b128 v[211:214], v40
	v_mov_b32_e32 v190, v66
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_lshl_or_b32 v66, v42, 16, v41
	v_lshl_or_b32 v64, v45, 16, v44
	v_dual_mov_b32 v46, s11 :: v_dual_mov_b32 v39, s4
	v_dual_mov_b32 v44, s9 :: v_dual_mov_b32 v197, v74
	v_mov_b32_e32 v41, s6
	v_perm_b32 v58, v198, v184, 0xc0c0004
	v_lshl_or_b32 v74, v55, 16, v0
	v_dual_mov_b32 v194, v73 :: v_dual_mov_b32 v191, v70
	v_perm_b32 v0, v245, v246, 0xc0c0004
	v_mov_b32_e32 v118, v67
	v_perm_b32 v67, v249, v143, 0xc0c0004
	v_perm_b32 v70, v219, v241, 0xc0c0004
	v_mov_b32_e32 v198, v75
	v_perm_b32 v75, v242, v243, 0xc0c0004
	v_perm_b32 v76, v231, v112, 0xc0c0004
	v_perm_b32 v77, v113, v163, 0xc0c0004
	v_lshl_or_b32 v82, v67, 16, v0
	v_perm_b32 v0, v179, v180, 0xc0c0004
	v_lshl_or_b32 v80, v75, 16, v70
	v_perm_b32 v75, v182, v183, 0xc0c0004
	v_lshl_or_b32 v79, v77, 16, v76
	v_perm_b32 v76, v171, v172, 0xc0c0004
	v_perm_b32 v78, v239, v142, 0xc0c0004
	v_perm_b32 v83, v247, v248, 0xc0c0004
	v_lshl_or_b32 v171, v75, 16, v0
	v_perm_b32 v0, v2, v4, 0xc0c0004
	scratch_load_b32 v2, off, off offset:1272 ; 4-byte Folded Reload
	v_mov_b32_e32 v112, v85
	v_lshl_or_b32 v168, v83, 16, v78
	v_perm_b32 v33, v33, v174, 0xc0c0004
	v_perm_b32 v29, v29, v30, 0xc0c0004
	v_perm_b32 v77, v251, v252, 0xc0c0004
	v_perm_b32 v34, v199, v34, 0xc0c0004
	v_perm_b32 v60, v176, v177, 0xc0c0004
	v_lshl_or_b32 v170, v33, 16, v76
	v_perm_b32 v33, v221, v220, 0xc0c0004
	v_perm_b32 v61, v178, v181, 0xc0c0004
	v_lshl_or_b32 v169, v34, 16, v77
	v_perm_b32 v34, v215, v217, 0xc0c0004
	v_mov_b32_e32 v45, s10
	v_lshl_or_b32 v98, v33, 16, v0
	v_perm_b32 v33, v3, v218, 0xc0c0004
	v_perm_b32 v0, v157, v228, 0xc0c0004
	v_dual_mov_b32 v43, s8 :: v_dual_mov_b32 v42, s7
	v_dual_mov_b32 v40, s5 :: v_dual_mov_b32 v5, v68
	v_perm_b32 v56, v186, v189, 0xc0c0004
	v_perm_b32 v57, v187, v192, 0xc0c0004
	v_perm_b32 v59, v144, v193, 0xc0c0004
	v_mov_b32_e32 v193, v72
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[211:214], v[63:66], v[39:46] neg_lo:[1,1,0]
	v_lshl_or_b32 v73, v57, 16, v56
	v_lshl_or_b32 v72, v59, 16, v58
	v_dual_mov_b32 v192, v71 :: v_dual_mov_b32 v189, v69
	v_lshl_or_b32 v71, v61, 16, v60
	v_perm_b32 v68, v235, v236, 0xc0c0004
	v_perm_b32 v69, v237, v238, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[207:210], v[63:66], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[114:117], v[71:74], v[47:54] neg_lo:[1,1,0]
	v_perm_b32 v172, v226, v224, 0xc0c0004
	v_lshl_or_b32 v81, v69, 16, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[103:106], v[71:74], v[55:62] neg_lo:[1,1,0]
	v_dual_mov_b32 v113, v89 :: v_dual_mov_b32 v142, v90
	v_cvt_f32_i32_e32 v111, v53
	v_wmma_i32_16x16x16_iu8 v[63:70], v[211:214], v[79:82], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[207:210], v[79:82], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v150, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[63:70], v[114:117], v[168:171], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[103:106], v[168:171], v[71:78] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v12, v63
	v_cvt_f32_i32_e32 v53, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v54, v76
	s_waitcnt vmcnt(0)
	v_perm_b32 v31, v2, v31, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1244
	scratch_load_b32 v4, off, off offset:1252
	v_lshl_or_b32 v97, v34, 16, v31
	v_perm_b32 v31, v229, v230, 0xc0c0004
	v_perm_b32 v34, v130, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v179, v31, 16, v0
	v_lshl_or_b32 v178, v34, 16, v33
	v_perm_b32 v33, v223, v222, 0xc0c0004
	v_perm_b32 v34, v227, v225, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v34, 16, v33
	s_waitcnt vmcnt(0)
	v_perm_b32 v83, v2, v4, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1260
	scratch_load_b32 v4, off, off offset:1268
	s_waitcnt vmcnt(0)
	v_perm_b32 v84, v2, v4, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1208
	scratch_load_b32 v4, off, off offset:1212
	v_lshl_or_b32 v96, v84, 16, v83
	s_waitcnt vmcnt(0)
	v_perm_b32 v85, v2, v4, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1216
	scratch_load_b32 v4, off, off offset:1220
	s_waitcnt vmcnt(0)
	v_perm_b32 v86, v2, v4, 0xc0c0004
	scratch_load_b32 v2, off, off offset:1276 ; 4-byte Folded Reload
	v_lshl_or_b32 v95, v86, 16, v85
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[79:86], v[211:214], v[95:98], v[39:46] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v2, v216, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1240
	scratch_load_b32 v3, off, off offset:1248
	v_lshl_or_b32 v177, v30, 16, v29
	s_waitcnt vmcnt(0)
	v_perm_b32 v87, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1256
	scratch_load_b32 v3, off, off offset:1264
	s_waitcnt vmcnt(0)
	v_perm_b32 v88, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1180
	scratch_load_b32 v2, off, off offset:1184
	v_lshl_or_b32 v176, v88, 16, v87
	v_wmma_i32_16x16x16_iu8 v[87:94], v[207:210], v[95:98], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[79:86], v[114:117], v[176:179], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[103:106], v[176:179], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v253, v79
	v_cvt_f32_i32_e32 v63, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v76, v89
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v2, v0, 0xc0c0004
	scratch_load_b32 v2, off, off offset:1196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1132
	scratch_load_b32 v2, off, off offset:1136
	v_lshl_or_b32 v183, v29, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1144
	scratch_load_b32 v2, off, off offset:1152
	s_waitcnt vmcnt(0)
	v_perm_b32 v31, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1224
	scratch_load_b32 v2, off, off offset:1228
	v_mov_b32_e32 v1, v99
	v_perm_b32 v99, v100, v102, 0xc0c0004
	v_perm_b32 v100, v8, v7, 0xc0c0004
	v_lshl_or_b32 v182, v31, 16, v30
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v180, v100, 16, v99
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v2, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1232
	scratch_load_b32 v3, off, off offset:1236
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1188
	scratch_load_b32 v3, off, off offset:1192
	v_lshl_or_b32 v187, v29, 16, v0
	v_cvt_f32_i32_e32 v0, v47
	v_cvt_f32_i32_e32 v47, v93
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v48
	v_cvt_f32_i32_e32 v48, v94
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v50
	v_cvt_f32_i32_e32 v50, v92
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v65
	v_mov_b32_e32 v65, v188
	v_mov_b32_e32 v75, v198
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v66
	v_mov_b32_e32 v66, v190
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v82
	v_cvt_f32_i32_e32 v82, v84
	v_cvt_f32_i32_e32 v84, v86
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1200
	scratch_load_b32 v3, off, off offset:1204
	s_waitcnt vmcnt(0)
	v_perm_b32 v31, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1140
	scratch_load_b32 v3, off, off offset:1148
	v_lshl_or_b32 v186, v31, 16, v30
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1156
	scratch_load_b32 v3, off, off offset:1160
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1088
	scratch_load_b32 v3, off, off offset:1128
	v_lshl_or_b32 v185, v34, 16, v33
	s_waitcnt vmcnt(0)
	v_perm_b32 v173, v3, v2, 0xc0c0004
	v_mov_b32_e32 v2, v101
	v_wmma_i32_16x16x16_iu8 v[95:102], v[211:214], v[180:183], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[207:210], v[180:183], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v184, v173, 16, v172
	v_mov_b32_e32 v208, v204
	v_cvt_f32_i32_e32 v214, v49
	v_cvt_f32_i32_e32 v211, v51
	v_cvt_f32_i32_e32 v209, v57
	v_wmma_i32_16x16x16_iu8 v[95:102], v[114:117], v[184:187], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[103:106], v[184:187], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v114, v52
	v_cvt_f32_i32_e32 v105, v55
	v_cvt_f32_i32_e32 v106, v56
	v_cvt_f32_i32_e32 v210, v58
	v_cvt_f32_i32_e32 v57, v59
	v_cvt_f32_i32_e32 v213, v60
	v_cvt_f32_i32_e32 v55, v61
	v_cvt_f32_i32_e32 v56, v62
	v_cvt_f32_i32_e32 v58, v64
	v_cvt_f32_i32_e32 v116, v67
	v_mov_b32_e32 v67, v118
	v_cvt_f32_i32_e32 v118, v68
	v_mov_b32_e32 v68, v5
	v_cvt_f32_i32_e32 v212, v69
	v_mov_b32_e32 v69, v189
	v_cvt_f32_i32_e32 v115, v70
	v_mov_b32_e32 v70, v191
	v_cvt_f32_i32_e32 v59, v71
	v_mov_b32_e32 v71, v192
	v_cvt_f32_i32_e32 v60, v72
	v_mov_b32_e32 v72, v193
	v_cvt_f32_i32_e32 v61, v73
	v_mov_b32_e32 v73, v194
	v_cvt_f32_i32_e32 v62, v74
	v_mov_b32_e32 v74, v197
	v_cvt_f32_i32_e32 v51, v77
	v_cvt_f32_i32_e32 v52, v78
	v_cvt_f32_i32_e32 v5, v80
	v_cvt_f32_i32_e32 v207, v81
	v_cvt_f32_i32_e32 v81, v83
	v_cvt_f32_i32_e32 v83, v85
	v_mov_b32_e32 v85, v112
	v_cvt_f32_i32_e32 v64, v88
	v_mov_b32_e32 v89, v113
	v_cvt_f32_i32_e32 v77, v90
	v_mov_b32_e32 v90, v142
	v_cvt_f32_i32_e32 v49, v91
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v91, v96
	v_cvt_f32_i32_e32 v9, v97
	v_cvt_f32_i32_e32 v0, v98
	v_cvt_f32_i32_e32 v86, v99
	v_mov_b32_e32 v99, v1
	v_cvt_f32_i32_e32 v87, v100
	v_cvt_f32_i32_e32 v6, v101
	v_mov_b32_e32 v101, v2
	v_cvt_f32_i32_e32 v93, v102
	v_cvt_f32_i32_e32 v78, v39
	v_cvt_f32_i32_e32 v79, v40
	v_cvt_f32_i32_e32 v80, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v11, v43
	v_cvt_f32_i32_e32 v32, v44
	v_cvt_f32_i32_e32 v10, v45
	v_cvt_f32_i32_e32 v39, v46
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
.LBB0_16:
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	scratch_load_b32 v0, off, off offset:1120 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v193.l, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v47, off offset:1160
	scratch_store_b32 off, v114, off offset:1156
	scratch_store_b32 off, v150, off offset:1152
	scratch_store_b32 off, v111, off offset:1148
	scratch_store_b32 off, v118, off offset:1144
	scratch_store_b32 off, v210, off offset:1140
	scratch_store_b32 off, v32, off offset:1136
	scratch_store_b32 off, v11, off offset:1132
	scratch_store_b32 off, v10, off offset:1128
	scratch_store_b32 off, v39, off offset:1088
	v_dual_mov_b32 v111, v80 :: v_dual_mov_b32 v4, v77
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v77, off, off offset:748
	scratch_load_b32 v1, off, off offset:1124
	scratch_load_b32 v142, off, off offset:920
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_mov_b16_e64 v255.l, v193.l
	v_mov_b16_e64 v254.l, v193.l
	v_mov_b32_e32 v118, v211
	v_dual_mov_b32 v252, v106 :: v_dual_mov_b32 v219, v212
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:564
	scratch_load_b32 v32, off, off offset:176
	v_dual_mov_b32 v242, v50 :: v_dual_mov_b32 v247, v56
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_mov_b16_e64 v183.l, v193.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v80, off, off offset:772
	scratch_load_b32 v159, off, off offset:924
	scratch_load_b32 v158, off, off offset:412
	scratch_load_b32 v50, off, off offset:832
	scratch_load_b32 v96, off, off offset:396
	v_mov_b32_e32 v114, v116
	v_dual_mov_b32 v240, v9 :: v_dual_mov_b32 v9, v91
	scratch_load_b32 v91, off, off offset:380 ; 4-byte Folded Reload
	v_mov_b32_e32 v7, v93
	v_dual_mov_b32 v237, v42 :: v_dual_mov_b32 v8, v253
	v_mov_b32_e32 v223, v58
	v_dual_mov_b32 v221, v86 :: v_dual_mov_b32 v184, v51
	v_dual_mov_b32 v241, v49 :: v_dual_mov_b32 v182, v52
	v_dual_mov_b32 v245, v54 :: v_dual_mov_b32 v248, v57
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s44, 31
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s14
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s0, s0, 27
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s31, s15
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s0, s44, s0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s34, s34, s27
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s4, s0, s35
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s1, -1, 0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v117, off, off offset:424
	scratch_load_b32 v95, off, off offset:392
	v_mov_b32_e32 v243, v83
	scratch_load_b32 v94, off, off offset:388 ; 4-byte Folded Reload
	v_mov_b32_e32 v236, v79
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v79, off, off offset:416
	scratch_load_b32 v92, off, off offset:384
	scratch_load_b32 v144, off, off offset:136
	scratch_load_b32 v112, off, off offset:132
	scratch_load_b32 v93, off, off offset:128
	scratch_load_b32 v113, off, off offset:568
	scratch_load_b32 v98, off, off offset:916
	v_dual_mov_b32 v251, v105 :: v_dual_mov_b32 v130, v166
	v_dual_mov_b32 v163, v233 :: v_dual_mov_b32 v100, v88
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v88, off, off offset:120
	scratch_load_b32 v103, off, off offset:112
	scratch_load_b32 v86, off, off offset:104
	v_mov_b32_e32 v222, v12
	v_mov_b32_e32 v166, v82
	scratch_load_b32 v82, off, off offset:96 ; 4-byte Folded Reload
	v_mov_b32_e32 v246, v55
	v_dual_mov_b32 v10, v53 :: v_dual_mov_b32 v231, v59
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(25)
	v_mov_b16_e64 v193.h, v0.l
	scratch_load_b32 v0, off, off offset:1116 ; 4-byte Folded Reload
	v_mov_b32_e32 v235, v78
	scratch_load_b32 v78, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v41, v65, v193
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v255.h, v0.l
	scratch_load_b32 v0, off, off offset:1112 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v50, v50, v193 :: v_dual_mul_f32 v29, v1, v255
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v1, off, off offset:1104 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v57, v50, v15, v93
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v168, v29, v35, v110
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v1, v255
	scratch_load_b32 v1, off, off offset:1044 ; 4-byte Folded Reload
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_mov_b16_e64 v254.h, v0.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v206, v255
	v_mul_f32_e32 v31, v156, v255
	scratch_load_b32 v156, off, off offset:808 ; 4-byte Folded Reload
	v_mov_b32_e32 v238, v60
	v_mul_f32_e32 v34, v101, v254
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v211, v31, v37, v122
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v197, v34, v36, v149
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v1, v254
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v33, v0, v36, v160
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1108
	scratch_load_b32 v1, off, off offset:1040
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v2, v39, v35, v148
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v183.h, v0.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v29, v1, v254
	scratch_load_b32 v1, off, off offset:1100 ; 4-byte Folded Reload
	v_dual_mul_f32 v0, v99, v254 :: v_dual_mov_b32 v11, v81
	scratch_load_b32 v81, off, off offset:812 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v102, v29, v37, v124
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v29, v74, v193
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v210, v30, v38, v164
	v_fma_f32 v101, v0, v38, v147
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1048
	scratch_load_b32 v74, off, off offset:400
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v194, v29, v35, v131
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v29, off, off offset:820 ; 4-byte Folded Reload
	v_mov_b32_e32 v3, v76
	scratch_load_b32 v76, off, off offset:408 ; 4-byte Folded Reload
	v_mov_b32_e32 v220, v84
	v_dual_mov_b32 v229, v48 :: v_dual_mov_b32 v228, v62
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v30, v1, v183
	scratch_load_b32 v1, off, off offset:1096 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v29, v29, v255
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v1, v183
	scratch_load_b32 v1, off, off offset:1092 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v97, v31, v35, v145
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v31, v72, v193
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v116, v30, v36, v146
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v30, v73, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v196, v31, v37, v232
	v_fma_f32 v195, v30, v38, v162
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v30, off, off offset:816 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v169, v0, v183 :: v_dual_mul_f32 v0, v75, v193
	scratch_load_b32 v75, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v150, v0, v36, v134
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v36, v32, v254
	scratch_load_b32 v32, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v29, v29, v18, v205
	v_mov_b32_e32 v0, v6
	v_mov_b32_e32 v6, v87
	scratch_load_b32 v87, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v177, v205, v29, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v34, v1, v183
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v1, off, off offset:1032 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v99, v34, v38, v165
	v_fma_f32 v34, v169, v37, v119
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v169, v36, v18, v80
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v37, v32, v254
	scratch_load_b32 v32, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v83, v37, v17, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v253, v159, v83, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v31, v1, v255
	scratch_load_b32 v1, off, off offset:1028 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v39, v31, v20, v81
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v176, v81, v39, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v35, v1, v255
	v_mov_b32_e32 v1, v63
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v31, v35, v19, v156
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v32, v254
	scratch_load_b32 v32, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v173, v156, v31, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v171, v35, v20, v78
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v32, v254
	scratch_load_b32 v32, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v170, v36, v19, v79
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v32, v183
	scratch_load_b32 v32, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v174, v37, v18, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v159, v77, v174, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v38, v32, v183
	scratch_load_b32 v32, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v172, v38, v17, v158
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v158, v158, v172, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v32, v183
	scratch_load_b32 v32, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v179, v40, v20, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v216, v76, v179, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v35, v32, v183
	scratch_load_b32 v32, off, off offset:828 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v84, v35, v19, v117
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v156, v117, v84, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v32, v193
	scratch_load_b32 v32, off, off offset:824 ; 4-byte Folded Reload
	v_mul_f32_e32 v30, v30, v255
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v18, v36, v18, v75
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v75, v18, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v32, v193
	scratch_load_b32 v32, off, off offset:800 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v30, v30, v17, v233
	v_mov_b32_e32 v233, v209
	v_fma_f32 v17, v37, v17, v144
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v37, v90, v255 :: v_dual_mov_b32 v90, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v178, v163, v30, s2
	v_cndmask_b32_e64 v84, v144, v17, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v104, v37, v27, v203
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v37, v70, v183
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_load_b32 v17, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v212, v37, v26, v106
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v37, v67, v193
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v38, v32, v193
	scratch_load_b32 v32, off, off offset:796 ; 4-byte Folded Reload
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v17, v17, s0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v32, v193
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v32, off, off offset:1004 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v40, v19, v74
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v35, v32, v255
	scratch_load_b32 v32, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v198, v35, v26, v135
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v35, v89, v255
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v38, v20, v142
	scratch_load_b32 v89, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v199, v35, v25, v234
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v144, v142, v20, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v36, v32, v255
	scratch_load_b32 v32, off, off offset:912 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v200, v36, v28, v154
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v38, v32, v254
	scratch_load_b32 v32, off, off offset:904 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v105, v38, v26, v202
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v38, v69, v183
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v239, v38, v25, v125
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v38, v66, v193
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v32, v254
	scratch_load_b32 v32, off, off offset:908 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v204, v40, v25, v129
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v40, v71, v183
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v215, v40, v28, v128
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v40, v151, v193
	scratch_load_b32 v151, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v128, v128, v215, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v35, v32, v254
	scratch_load_b32 v32, off, off offset:900 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v206, v35, v28, v113
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v35, v68, v183
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v32, v254
	scratch_load_b32 v32, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v209, v36, v27, v112
	v_fma_f32 v36, v35, v27, v130
	v_fma_f32 v35, v37, v26, v141
	v_fma_f32 v37, v38, v25, v138
	v_fma_f32 v38, v40, v28, v137
	v_fma_f32 v40, v41, v27, v136
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v25, off, off offset:776
	scratch_load_b32 v26, off, off offset:892
	scratch_load_b32 v27, off, off offset:780
	scratch_load_b32 v28, off, off offset:156
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v255
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v27, v27, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v27, v15, v88
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v27, off, off offset:764 ; 4-byte Folded Reload
	v_mul_f32_e32 v25, v25, v255
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v180, v88, v44, s2
	v_mov_b32_e32 v88, v154
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v41, v25, v14, v92
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v25, off, off offset:784 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v188, v92, v41, s2
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v92, v136 :: v_dual_mul_f32 v27, v27, v183
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v49, v27, v14, v82
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v27, off, off offset:788 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v255
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v142, v82, v49, s2
	v_mov_b32_e32 v49, v146
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v25, v16, v89
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v25, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v26, v13, v91
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v26, off, off offset:148 ; 4-byte Folded Reload
	v_mul_f32_e32 v28, v28, v254
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v181, v89, v43, s2
	v_cndmask_b32_e64 v185, v91, v42, s2
	v_mov_b32_e32 v91, v135
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v28, v14, v151
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v28, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v135, v134, v150, s2
	v_cndmask_b32_e64 v134, v131, v194, s2
	v_cndmask_b32_e64 v217, v151, v45, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v27, v27, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v55, v27, v13, v95
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v78, v171, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v254
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v46, v26, v13, v87
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v26, off, off offset:152 ; 4-byte Folded Reload
	v_mul_f32_e32 v25, v25, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v25, v16, v86
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v25, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v28, v28, v183
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v51, v28, v13, v167
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:752
	scratch_load_b32 v13, off, off offset:844
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v26, v26, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v48, v26, v15, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v26, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v25, v25, v183
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v52, v25, v16, v98
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v25, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v157, v98, v52, s2
	v_cndmask_b32_e64 v52, v110, v168, s2
	v_cndmask_b32_e64 v168, v112, v209, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v53, v26, v15, v161
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v15, v85, v255
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v25, v25, v193
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v61, v15, v23, v133
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v15, off, off offset:884 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v54, v25, v14, v96
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:840
	scratch_load_b32 v25, off, off offset:928
	v_mov_b32_e32 v218, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v96, v54, s2
	v_mov_b32_e32 v96, v141
	v_cndmask_b32_e64 v54, v122, v211, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v15, v15, v183
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v25, v25, v193
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v66, v15, v22, v132
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v15, off, off offset:864 ; 4-byte Folded Reload
	v_mul_f32_e32 v14, v14, v255
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v73, v25, v23, v126
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v80, v169, s2
	v_cndmask_b32_e64 v131, v132, v66, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v59, v14, v21, v127
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v15, v15, v193
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v71, v15, v21, v123
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_load_b32 v15, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v14, v14, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v63, v14, v21, v107
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:852 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v254
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v65, v14, v23, v152
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:876 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v69, v14, v23, v108
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_load_b32 v14, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v28, v28, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v112, v108, v69, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v56, v28, v16, v94
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v16, off, off offset:868 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v79, v170, s2
	v_mov_b32_e32 v79, v162
	v_cndmask_b32_e64 v162, v74, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v150, v79, v195, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v254
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v62, v16, v22, v250
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v16, off, off offset:880 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v67, v16, v21, v121
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v16, off, off offset:836 ; 4-byte Folded Reload
	v_mul_f32_e32 v13, v13, v255
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v58, v13, v22, v120
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:848 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v16, v193
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v72, v16, v24, v201
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_load_b32 v16, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v13, v13, v255
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v14, v14, s0, 1
	v_add_lshl_u32 v15, v15, s0, 1
	v_mov_b32_e32 v78, v232
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v60, v13, v24, v140
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:860 ; 4-byte Folded Reload
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v14, 0x80000000, v14 :: v_dual_cndmask_b32 v15, 0x80000000, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v154, v78, v196, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v16, v16, s0, 1
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v64, v13, v24, v139
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:888 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v183
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v68, v13, v24, v153
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:872 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v70, v13, v22, v103
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v13, v244, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v103, v70, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	buffer_load_u16 v13, v13, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_lshlrev_b32 v13, 16, v13
	s_clause 0x3
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v117, off, off offset:1052 ; 4-byte Folded Reload
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v155, 16, v15
	v_lshlrev_b32_e32 v230, 16, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	ds_store_b32 v117, v13 offset:36864
	scratch_load_b32 v13, off, off offset:968 ; 4-byte Folded Reload
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v26, 16, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v13, v230
	scratch_load_b32 v13, off, off offset:964 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v79, v240, v26
	v_mul_f32_e32 v70, v236, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v13, v230
	scratch_load_b32 v13, off, off offset:960 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v13, v230
	scratch_load_b32 v13, off, off offset:956 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v13, v230 :: v_dual_lshlrev_b32 v85, 16, v16
	scratch_load_b32 v13, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v89, v221, v26 :: v_dual_mul_f32 v66, v218, v85
	v_mul_f32_e32 v69, v3, v85
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v13, v155
	scratch_load_b32 v13, off, off offset:936 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v13, v155
	scratch_load_b32 v13, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v13, v155
	scratch_load_b32 v13, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v24, v13, v155
	scratch_load_b32 v13, off, off offset:944 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v13, v85
	scratch_load_b32 v13, off, off offset:940 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v13, v85
	scratch_load_b32 v13, off, off offset:952 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v13, v85
	scratch_load_b32 v13, off, off offset:948 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v13, v85
	scratch_load_b32 v13, off, off offset:992 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v13, v26
	scratch_load_b32 v13, off, off offset:988 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v13, v26
	scratch_load_b32 v13, off, off offset:1000 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v13, v26
	scratch_load_b32 v13, off, off offset:996 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v13, v26
	ds_load_b128 v[13:16], v175 offset:36864
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v187, v17, v14, v177
	v_fma_f32 v186, v18, v13, v178
	v_mov_b32_e32 v18, v167
	v_fma_f32 v169, v19, v16, v176
	v_fma_f32 v244, v30, v14, v159
	v_mov_b32_e32 v17, v161
	v_fma_f32 v161, v31, v13, v158
	v_fma_f32 v19, v39, v16, v216
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v93, v57, s2
	v_mov_b32_e32 v57, v147
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v12, v22, v13, v253
	v_fma_f32 v13, v75, v13, v84
	scratch_store_b32 off, v19, off offset:164 ; 4-byte Folded Spill
	v_fma_f32 v19, v50, v15, v156
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v163, v17, v53, s2
	v_cndmask_b32_e64 v141, v18, v51, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	scratch_store_b32 off, v13, off offset:152 ; 4-byte Folded Spill
	v_fma_f32 v13, v74, v14, v29
	v_fma_f32 v170, v20, v15, v173
	v_fma_f32 v179, v21, v14, v25
	v_mov_b32_e32 v74, v148
	v_fma_f32 v232, v23, v16, v27
	scratch_store_b32 off, v13, off offset:156 ; 4-byte Folded Spill
	v_fma_f32 v13, v77, v15, v162
	scratch_store_b32 off, v19, off offset:160 ; 4-byte Folded Spill
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v39, v208, v85
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v167, v24, v15, v28
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v95, v55, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	scratch_store_b32 off, v13, off offset:136 ; 4-byte Folded Spill
	v_fma_f32 v13, v76, v16, v144
	v_mov_b32_e32 v55, v149
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v149, v87, v46, s2
	v_cndmask_b32_e64 v148, v86, v47, s2
	v_cndmask_b32_e64 v147, v32, v48, s2
	scratch_store_b32 off, v13, off offset:148 ; 4-byte Folded Spill
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v13, off, off offset:1024 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v94, v56, s2
	v_dual_mov_b32 v94, v137 :: v_dual_mov_b32 v87, v203
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v75, v207, v85
	v_mov_b32_e32 v95, v138
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v74, v2, s2
	v_cndmask_b32_e64 v51, v160, v33, s2
	v_cndmask_b32_e64 v53, v164, v210, s2
	v_cndmask_b32_e64 v164, v119, v34, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v77, v100, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v208, v49, v116, s2
	v_cndmask_b32_e64 v116, v92, v40, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v92, v0, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v119, v96, v35, s2
	v_cndmask_b32_e64 v35, v113, v206, s2
	v_cndmask_b32_e64 v32, v120, v58, s2
	v_cndmask_b32_e64 v58, v127, v59, s2
	v_cndmask_b32_e64 v59, v140, v60, s2
	v_cndmask_b32_e64 v60, v133, v61, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v61, v233, v230
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v13, v230
	scratch_load_b32 v13, off, off offset:1020 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v13, v230
	scratch_load_b32 v13, off, off offset:932 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v13, v230
	scratch_load_b32 v13, off, off offset:1016 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v13, v230
	scratch_load_b32 v13, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v13, v155
	scratch_load_b32 v13, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v13, v155
	scratch_load_b32 v13, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v13, v155
	scratch_load_b32 v13, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v24, v13, v155
	scratch_load_b32 v13, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v13, v85
	scratch_load_b32 v13, off, off offset:1012 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v13, v85
	scratch_load_b32 v13, off, off offset:1008 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v13, v85
	scratch_load_b32 v13, off, off offset:976 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v44, v13, v26
	scratch_load_b32 v13, off, off offset:972 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v13, v26
	scratch_load_b32 v13, off, off offset:980 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v13, v26
	scratch_load_b32 v13, off, off offset:984 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v13, v26
	ds_load_b128 v[13:16], v175 offset:36880
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v191, v18, v13, v185
	v_fma_f32 v171, v22, v13, v149
	v_fma_f32 v151, v24, v15, v147
	v_mov_b32_e32 v24, v145
	v_fma_f32 v145, v41, v13, v141
	v_fma_f32 v137, v45, v13, v50
	v_fma_f32 v13, v46, v15, v30
	v_fma_f32 v192, v17, v14, v188
	v_fma_f32 v172, v21, v14, v217
	v_fma_f32 v146, v39, v14, v142
	v_fma_f32 v86, v43, v15, v163
	scratch_store_b32 off, v13, off offset:96 ; 4-byte Folded Spill
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	scratch_load_b32 v13, off, off offset:1036 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v136, v47, v16, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v57, v101, s2
	v_cndmask_b32_e64 v39, v124, v102, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v45, v222, v155
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v189, v20, v15, v180
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v57, v8, v85
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v138, v44, v14, v83
	v_mov_b32_e32 v102, v123
	v_fma_f32 v190, v19, v16, v181
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v124, v130, v36, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v36, v118, v230
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v174, v23, v16, v148
	v_mov_b32_e32 v23, v165
	v_fma_f32 v165, v42, v16, v157
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v205, v24, v97, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v42, v214, v230
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v197, s2
	v_cndmask_b32_e64 v197, v23, v99, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v44, v223, v155 :: v_dual_mov_b32 v101, v201
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v201, v106, v212, s2
	v_cndmask_b32_e64 v102, v102, v71, s2
	v_cndmask_b32_e64 v31, v31, v136, s3
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v13, v13, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	buffer_load_u16 v13, v13, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[17:20], v175 offset:37376
	ds_load_b128 v[13:16], v175 offset:37392
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:276 ; 4-byte Folded Reload
	ds_store_b32 v117, v21 offset:36864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v117, v94, v38, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v2, v230
	scratch_load_b32 v2, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v34, v2, v230
	scratch_load_b32 v2, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v2, v230
	scratch_load_b32 v2, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v2, v155
	scratch_load_b32 v2, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v2, v155
	scratch_load_b32 v2, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v2, v85
	scratch_load_b32 v2, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v8, off, off offset:1156 ; 4-byte Folded Reload
	ds_load_b128 v[21:24], v175 offset:36864
	v_mul_f32_e32 v56, v5, v85
	scratch_load_b32 v0, off, off offset:1140 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v80, v33, v22, v51
	v_mov_b32_e32 v33, v125
	v_fma_f32 v81, v34, v21, v52
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v95, v37, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v82, v41, v24, v53
	v_mov_b32_e32 v41, v129
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v194, v33, v239, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v93, v42, v23, v54
	v_fma_f32 v125, v44, v22, v55
	v_fma_f32 v129, v45, v21, v48
	v_fma_f32 v49, v46, v24, v43
	v_fma_f32 v46, v47, v23, v39
	v_fma_f32 v210, v57, v21, v205
	v_fma_f32 v203, v75, v23, v164
	v_fma_f32 v122, v77, v21, v134
	v_fma_f32 v5, v79, v23, v154
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v41, v204, s2
	v_cndmask_b32_e64 v57, v234, v199, s2
	v_cndmask_b32_e64 v75, v87, v104, s2
	v_cndmask_b32_e64 v44, v202, v105, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v42, v114, v155
	v_mul_f32_e32 v45, v115, v155
	v_mul_f32_e32 v77, v166, v85
	v_mul_f32_e32 v79, v220, v85
	v_mul_f32_e32 v87, v243, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v202, v139, v64, s2
	v_cndmask_b32_e64 v114, v153, v68, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v64, v228, v155
	v_mul_f32_e32 v68, v4, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v82, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v71, v235, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v49, s3
	v_cndmask_b32_e64 v39, v39, v46, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v43
	v_mul_f32_e32 v46, 0xbfb8aa3b, v39
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v78, v2, v26
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v2, v74, v24, v197
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v88, v200, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v33, v8, v230
	scratch_load_b32 v8, off, off offset:1152 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v211, v56, v22, v208
	v_fma_f32 v160, v78, v24, v150
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v91, v198, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v78, v11, v85
	v_mul_f32_e32 v88, v6, v26
	v_mul_f32_e32 v91, v7, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v198, v152, v65, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v65, v90, v155
	scratch_load_b32 v11, off, off offset:1136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v37, v8, v230
	scratch_load_b32 v8, off, off offset:1148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v38, v8, v230
	scratch_load_b32 v8, off, off offset:1144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v76, v9, v26 :: v_dual_mul_f32 v41, v8, v155
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v123, v76, v22, v135
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[21:24], v175 offset:36880
	v_mul_f32_e32 v76, v219, v155
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v95, v36, v21, v57
	v_mov_b32_e32 v36, v107
	v_fma_f32 v94, v33, v22, v56
	v_fma_f32 v97, v38, v23, v75
	v_fma_f32 v115, v41, v22, v44
	v_fma_f32 v47, v42, v21, v40
	v_fma_f32 v42, v45, v24, v35
	v_fma_f32 v209, v77, v22, v201
	v_fma_f32 v204, v78, v21, v194
	v_fma_f32 v130, v87, v23, v124
	v_fma_f32 v107, v88, v22, v119
	v_fma_f32 v106, v89, v21, v34
	v_fma_f32 v105, v91, v24, v117
	v_fma_f32 v104, v92, v23, v116
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v250, v62, s2
	v_cndmask_b32_e64 v199, v36, v63, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v36, v252, v230
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v101, v101, v72, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v62, v238, v155
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v96, v37, v24, v74
	v_fma_f32 v37, v76, v23, v168
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v72, v237, v26
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v196, v79, v24, v128
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[21:24], v175 offset:37376
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v126, v73, s2
	v_cndmask_b32_e64 v126, v121, v67, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v41, v251, v230
	v_mul_f32_e32 v63, v231, v155
	v_mul_f32_e32 v67, v1, v85
	v_mul_f32_e32 v45, v0, v230
	v_mul_f32_e32 v73, v111, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v47, s3
	v_cndmask_b32_e64 v35, v35, v42, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1160
	scratch_load_b32 v9, off, off offset:164
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v106, s3
	v_cndmask_b32_e64 v104, v116, v104, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v77, v41, v21, v58
	v_fma_f32 v41, v63, v21, v199
	v_fma_f32 v195, v67, v21, v126
	v_fma_f32 v89, v71, v21, v102
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v51, v80, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v76, v36, v22, v32
	v_fma_f32 v78, v45, v24, v59
	v_fma_f32 v45, v62, v22, v38
	v_fma_f32 v200, v66, v22, v131
	v_fma_f32 v91, v70, v22, v103
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v61, v61, v23, v60
	v_fma_f32 v206, v65, v23, v198
	v_fma_f32 v118, v69, v23, v112
	v_fma_f32 v87, v73, v23, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v36, v64, v24, v202
	v_fma_f32 v127, v68, v24, v114
	v_fma_f32 v88, v72, v24, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v76, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v45, s3
	v_cndmask_b32_e64 v33, v33, v87, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v21
	v_rcp_f32_e32 v24, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v23, v24, 1.0
	v_fmac_f32_e32 v24, v51, v24
	v_div_scale_f32 v51, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v62, v51, v24
	v_fma_f32 v63, -v23, v62, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v24
	v_fma_f32 v23, -v23, v62, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v24, v62
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v52, v81, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v92, v23, v22, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v24
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v54, v93, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, null, v51, v51, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v62, v52
	v_fma_f32 v63, -v52, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v24, v51, v24
	v_mul_f32_e32 v64, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v52, v64, v63
	v_fmac_f32_e32 v64, v65, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v64, v63
	v_div_fmas_f32 v52, v52, v62, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v62, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v62, v62
	v_ldexp_f32 v62, v62, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v63, null, v62, v62, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v63
	v_fma_f32 v65, -v63, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v53, v62, v53
	v_div_fixup_f32 v93, v52, v51, v24
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v56, v94, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v66, v65, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v67, -v63, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v64
	v_fma_f32 v63, -v63, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v63, v63, v64, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v94, v63, v62, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v57, v95, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v21
	v_rcp_f32_e32 v54, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v23, v54, 1.0
	v_fmac_f32_e32 v54, v64, v54
	v_div_scale_f32 v64, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v64, v54
	v_fma_f32 v66, -v23, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v54
	v_fma_f32 v23, -v23, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v54, v65
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v95, v23, v22, v21
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v74, v96, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v51, v51
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v51, v51, v52
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, null, v51, v51, v24
	v_rcp_f32_e32 v54, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v52, v54, 1.0
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, vcc_lo, v24, v51, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v56, v54
	v_fma_f32 v65, -v52, v64, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v65, v54
	v_fma_f32 v52, -v52, v64, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v52, v52, v54, v64
	v_div_fixup_f32 v96, v52, v51, v24
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v75, v97, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v54, 0xbfb8aa3b, v53 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v53
	v_exp_f32_e32 v54, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v54, v54, v56
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v54, 1.0, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v56, null, v54, v54, v53
	v_rcp_f32_e32 v57, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v56, v57, 1.0
	v_fmac_f32_e32 v57, v62, v57
	v_div_scale_f32 v62, vcc_lo, v53, v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v63, v62, v57
	v_fma_f32 v64, -v56, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v57
	v_fma_f32 v56, -v56, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v56, v56, v57, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v97, v56, v54, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v53, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v21
	v_rcp_f32_e32 v57, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v23, v57, 1.0
	v_fmac_f32_e32 v57, v62, v57
	v_div_scale_f32 v62, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v63, v62, v57
	v_fma_f32 v64, -v23, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v57
	v_fma_f32 v23, -v23, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v57, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v98, v23, v22, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v58, v77, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v21
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v51, v51, v52
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, null, v51, v51, v24
	v_rcp_f32_e32 v57, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v52, v57, 1.0
	v_fmac_f32_e32 v57, v62, v57
	v_div_scale_f32 v62, vcc_lo, v24, v51, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v63, v62, v57
	v_fma_f32 v64, -v52, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v57
	v_fma_f32 v52, -v52, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v52, v52, v57, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v99, v52, v51, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v59, v78, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v51
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v53, v53, v54
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, null, v53, v53, v32
	v_rcp_f32_e32 v56, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v54, v56, 1.0
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v32, v53, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v62, v57, v56
	v_fma_f32 v63, -v54, v62, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v56
	v_fma_f32 v54, -v54, v62, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v54, v54, v56, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v100, v54, v53, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v60, v61, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v23
	v_fma_f32 v57, -v23, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v58, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v23, v58, v57
	v_fmac_f32_e32 v58, v62, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v58, v57
	v_div_fmas_f32 v23, v23, v56, v58
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v108, v23, v22, v21
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b32 v21, off, off offset:744
	scratch_load_b32 v22, off, off offset:8
	scratch_load_b128 v[218:221], off, off offset:1164
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v51
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v52
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v52, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v52, v52, v51
	v_rcp_f32_e32 v56, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v24, v56, 1.0
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v51, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v57, v56
	v_fma_f32 v59, -v24, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v56
	v_fma_f32 v24, -v24, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v56, v24, v56, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v82, v56, v52, v51
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:740
	scratch_load_b32 v52, off, off offset:4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v32
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v53
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v53, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v53, v53, v32
	v_rcp_f32_e32 v54, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v24, v54, 1.0
	v_fmac_f32_e32 v54, v57, v54
	v_div_scale_f32 v57, vcc_lo, v32, v53, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v57, v54
	v_fma_f32 v59, -v24, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v54
	v_fma_f32 v24, -v24, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v54, v24, v54, v58
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v58, v213, v230
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v81, v54, v53, v32
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:736
	scratch_load_b32 v53, off, off offset:92
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v21, v21, v255
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, v21, v219, v22
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v22, v21, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[21:24], v175 offset:37392
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v58, v58, v22, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v57, v58, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v58, v58
	v_ldexp_f32 v58, v58, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v59, null, v58, v58, v57
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v51, v51, v255
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v60, v59
	v_fma_f32 v61, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v57, v58, v57
	v_mul_f32_e32 v62, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v59, v62, v61
	v_fmac_f32_e32 v62, v63, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v62, v61
	v_div_fmas_f32 v59, v59, v60, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v80, v59, v58, v57
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v57, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(3)
	v_fma_f32 v51, v51, v218, v52
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v58, v246, v230
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v52, v51, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v52, v248, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v52, v52, v21, v51
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v51, v52, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v51
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v51
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v32, v32, v255
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v52, v52
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, v32, v221, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v53, v32, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v53, v247, v230
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v52, v52, v56
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v53, v53, v24, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v53, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v56, null, v52, v52, v51
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v53, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v60, v56
	v_fma_f32 v61, -v56, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v51, v52, v51
	v_mul_f32_e32 v62, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v56, v62, v61
	v_fmac_f32_e32 v62, v63, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v56, v62, v61
	v_div_fmas_f32 v56, v56, v60, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v32
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v53, v53, v54
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, null, v53, v53, v32
	v_rcp_f32_e32 v60, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v54, v60, 1.0
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v32, v53, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v62, v61, v60
	v_fma_f32 v63, -v54, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v60
	v_fma_f32 v54, -v54, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v60, v62
	v_div_fixup_f32 v79, v54, v53, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v48, v129, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v48, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v57, v57, v255
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v57, v57, v220, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v109, v57, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v109, v56, v52, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v55, v125, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v58, v58, v23, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v57, v58, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v57
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v57
	v_exp_f32_e32 v58, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v58, v58, v59
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v58, 1.0, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v59, null, v58, v58, v57
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v57, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v62, v61, v60
	v_fma_f32 v63, -v59, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v60
	v_fma_f32 v59, -v59, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v59, v59, v60, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v110, v59, v58, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v51
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v52, v52, v55
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v52, 1.0, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v55, null, v52, v52, v51
	v_rcp_f32_e32 v56, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v55, v56, 1.0
	v_fmac_f32_e32 v56, v60, v56
	v_div_scale_f32 v60, vcc_lo, v51, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v61, v60, v56
	v_fma_f32 v62, -v55, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v62, v56
	v_fma_f32 v55, -v55, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v55, v55, v56, v61
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v111, v55, v52, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v32
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v48, v48, v53
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, null, v48, v48, v32
	v_rcp_f32_e32 v54, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v53, v54, 1.0
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, vcc_lo, v32, v48, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v60, v56, v54
	v_fma_f32 v61, -v53, v60, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v54
	v_fma_f32 v53, -v53, v60, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v53, v53, v54, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v113, v53, v48, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v44, v115, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v43 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v32
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v49, v49, v54
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v49, 1.0, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, null, v49, v49, v43
	v_rcp_f32_e32 v56, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v54, v56, 1.0
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v43, v49, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v57, v56
	v_fma_f32 v59, -v54, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v56
	v_fma_f32 v54, -v54, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v54, v54, v56, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v115, v54, v49, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, 0xbfb8aa3b, v40 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v39
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v46, v46, v51
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v51, null, v46, v46, v39
	v_rcp_f32_e32 v52, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v51, v52, 1.0
	v_fmac_f32_e32 v52, v55, v52
	v_div_scale_f32 v55, vcc_lo, v39, v46, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v55, v52
	v_fma_f32 v57, -v51, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v52
	v_fma_f32 v51, -v51, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v51, v52, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v125, v51, v46, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v39, 0xbfb8aa3b, v35 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v32
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v48
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v44, v44, v32
	v_rcp_f32_e32 v52, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v48, v52, 1.0
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v32, v44, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v53, v52
	v_fma_f32 v56, -v48, v55, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v52
	v_fma_f32 v48, -v48, v55, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v52, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v129, v48, v44, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v168, v37, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v43, v43
	v_ldexp_f32 v43, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v43, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v52, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v52, vcc_lo, v40, v43, v40
	v_mul_f32_e32 v53, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v47, v53, v52
	v_fmac_f32_e32 v53, v54, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v53, v52
	v_div_fmas_f32 v47, v47, v49, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v168, v47, v43, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v40, 0xbfb8aa3b, v38 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v39, v39, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v42
	v_fma_f32 v49, -v42, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v49, v46
	v_div_scale_f32 v49, vcc_lo, v35, v39, v35
	v_mul_f32_e32 v51, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v42, v51, v49
	v_fmac_f32_e32 v51, v52, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v51, v49
	v_div_fmas_f32 v42, v42, v46, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v175, v42, v39, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v199, v41, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, 0xbfb8aa3b, v35
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v44
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v37, v37, v32
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v44, v46, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, vcc_lo, v32, v37, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v46
	v_fma_f32 v51, -v44, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v51, v46
	v_fma_f32 v44, -v44, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v44, v44, v46, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v199, v44, v37, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v202, v36, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v38
	v_mul_f32_e32 v36, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v40, v40, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v43
	v_fma_f32 v46, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, vcc_lo, v38, v40, v38
	v_mul_f32_e32 v47, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v43, v47, v46
	v_fmac_f32_e32 v47, v48, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v47, v46
	v_div_fmas_f32 v43, v43, v45, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v202, v43, v40, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v198, v206, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v35 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v39, v39, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v45, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v45, v42
	v_div_scale_f32 v45, vcc_lo, v35, v39, v35
	v_mul_f32_e32 v46, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v41, v46, v45
	v_fmac_f32_e32 v46, v47, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v46, v45
	v_div_fmas_f32 v41, v41, v42, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v206, v41, v39, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	scratch_load_b32 v35, off, off offset:88 ; 4-byte Folded Reload
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v32
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v36, v36, v37
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v36, v36, v32
	v_rcp_f32_e32 v42, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v37, v42, 1.0
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v32, v36, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v42
	v_fma_f32 v46, -v37, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v42
	v_fma_f32 v37, -v37, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v42, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v198, v37, v36, v32
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v32, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v38
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v42
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v40, v40, v38
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v38, v40, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v212, v42, v40, v38
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v32, v32, v219, v35
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v35, v32, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v35, v245, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v35, v35, v22, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v35, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v32
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v32
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v35, v35, v32
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, vcc_lo, v32, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v39, v37
	v_fma_f32 v43, -v36, v41, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v43, v37
	v_fma_f32 v36, -v36, v41, v39
	scratch_load_b32 v39, off, off offset:84 ; 4-byte Folded Reload
	v_div_fmas_f32 v36, v36, v37, v41
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v37, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v78, v36, v35, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v208, v211, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v32
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v37, v254
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v37, v37, v218, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v39, v37, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v39, v10, v155
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v39, v39, v21, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v39, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v39, v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v37, v39, v37
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v41, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v41, -v41, v45, v44
	scratch_load_b32 v44, off, off offset:80 ; 4-byte Folded Reload
	v_div_fmas_f32 v41, v41, v43, v45
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v43, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v77, v41, v39, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v43, v43, v221, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v44, v43, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v44, v182, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v44, v44, v24, v43
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v44, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v43
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v45
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v44, v44, v43
	v_rcp_f32_e32 v46, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v45, v46, 1.0
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v43, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v47, v46
	v_fma_f32 v49, -v45, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v46
	v_fma_f32 v45, -v45, v48, v47
	scratch_load_b32 v47, off, off offset:76 ; 4-byte Folded Reload
	v_div_fmas_f32 v45, v45, v46, v48
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v46, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v76, v45, v44, v43
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v46, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v46, v46, v220, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v47, v184, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v47, v47, v23, v46
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v48
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v47, v47, v46
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v48, v49, 1.0
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, vcc_lo, v46, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v52, v51, v49
	v_fma_f32 v53, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v49
	v_fma_f32 v48, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v49, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v75, v48, v47, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v32
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v35, v35, v32
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, vcc_lo, v32, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v39, v38, v37
	v_fma_f32 v40, -v36, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v37
	v_fma_f32 v36, -v36, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v39
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v205, v210, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v205, v36, v35, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v37
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v194, v204, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v35, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v38, v38
	v_ldexp_f32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v38, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v37, v38, v37
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v197, v2, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v40
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v41, v41, v42
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v41, v41, v40
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v40, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v164, v203, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v203, v39, v38, v37
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v44, v44
	v_ldexp_f32 v44, v44, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v44, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v43, v44, v43
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v45, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	v_div_fmas_f32 v45, v45, v46, v48
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v201, v209, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v201, v42, v41, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v197, v45, v44, v43
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v47, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v47, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v49, v48
	v_fma_f32 v51, -v48, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, vcc_lo, v46, v47, v46
	v_mul_f32_e32 v52, v51, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v48, v52, v51
	v_fmac_f32_e32 v52, v53, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v48, v52, v51
	v_div_fmas_f32 v48, v48, v49, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v132, v48, v47, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v35, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v38, -v36, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, vcc_lo, v32, v35, v32
	v_mul_f32_e32 v39, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v36, v39, v38
	v_fmac_f32_e32 v39, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v36, v39, v38
	v_div_fmas_f32 v36, v36, v37, v39
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v128, v196, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v37
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v39
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v38, v38, v37
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v37, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v40, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v124, v130, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v130, v39, v38, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v40
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v41, v41, v42
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v41, v41, v40
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v40, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v131, v200, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v131, v36, v35, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v114, v127, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v128, v42, v41, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v44, 0xbfb8aa3b, v43 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v32
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v43
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v45
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v44, v44, v43
	v_rcp_f32_e32 v46, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v45, v46, 1.0
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v43, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v47, v46
	v_fma_f32 v49, -v45, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v46
	v_fma_f32 v45, -v45, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v45, v45, v46, v48
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v126, v195, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v126, v45, v44, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v48
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v47, v47, v46
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v48, v49, 1.0
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, vcc_lo, v46, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v52, v51, v49
	v_fma_f32 v53, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v49
	v_fma_f32 v48, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v49, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v124, v48, v47, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v32
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v35, v35, v32
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, vcc_lo, v32, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v39, v38, v37
	v_fma_f32 v40, -v36, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v37
	v_fma_f32 v36, -v36, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v39
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v112, v118, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v112, v36, v35, v32
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:600
	scratch_load_b32 v35, off, off offset:72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v38, v38
	v_ldexp_f32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v38, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v37, v38, v37
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v32, v32, v183
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, v32, v219, v35
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v35, v32, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v35, v242, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v35, v35, v22, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v35, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v32
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v32
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v35, v35, v32
	v_rcp_f32_e32 v40, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v36, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v32, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v36, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v36, -v36, v42, v41
	scratch_load_b32 v41, off, off offset:68 ; 4-byte Folded Reload
	v_div_fmas_f32 v36, v36, v40, v42
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v40, off, off offset:596 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v114, v36, v35, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v135, v123, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v40, v40, v183
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v40, v40, v218, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v41, v40, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v41, v241, v85
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v41, v41, v21, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v41, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v41, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v40, v41, v40
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	scratch_load_b32 v44, off, off offset:64 ; 4-byte Folded Reload
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v43, off, off offset:592 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v74, v42, v41, v40
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v43, v43, v221, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v44, v43, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v44, v229, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v44, v44, v24, v43
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v44, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v43
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v45
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v44, v44, v43
	v_rcp_f32_e32 v46, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v45, v46, 1.0
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v43, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v47, v46
	v_fma_f32 v49, -v45, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v46
	v_fma_f32 v45, -v45, v48, v47
	scratch_load_b32 v47, off, off          ; 4-byte Folded Reload
	v_div_fmas_f32 v45, v45, v46, v48
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v46, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v73, v45, v44, v43
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v46, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v46, v46, v220, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v47, v0, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v154, v5, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v47, v47, v23, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v48
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v47, v47, v46
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v48, v49, 1.0
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, vcc_lo, v46, v47, v46
	v_div_fixup_f32 v127, v39, v38, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v52, v51, v49
	v_fma_f32 v53, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v49
	v_fma_f32 v48, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v49, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v72, v48, v47, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v32
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v35, v35, v32
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, vcc_lo, v32, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v39, v38, v37
	v_fma_f32 v40, -v36, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v37
	v_fma_f32 v36, -v36, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v39
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v134, v122, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v118, v36, v35, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v37
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v150, v160, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v35, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v38, v38
	v_ldexp_f32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v38, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v37, v38, v37
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v32
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v35, v35, v32
	v_rcp_f32_e32 v40, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v36, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v32, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v36, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v36, -v36, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v36, v36, v40, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v0
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v41
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v40, v40, v0
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v0, v40, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v119, v107, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v41, v42, v44
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v44, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v41
	v_fma_f32 v46, -v41, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, vcc_lo, v43, v44, v43
	v_mul_f32_e32 v47, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v41, v47, v46
	v_fmac_f32_e32 v47, v48, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v47, v46
	v_div_fmas_f32 v45, v41, v45, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v46, v46, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v48, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v34, v46, v34
	v_mul_f32_e32 v49, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v41, v49, v48
	v_fmac_f32_e32 v49, v51, v47
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v41, -v41, v49, v48
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v48, off, off offset:700 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v41, v47, v49
	v_div_fixup_f32 v41, v39, v38, v37
	v_div_fixup_f32 v38, v42, v40, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v117, v105, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v39, v36, v35, v32
	v_div_fixup_f32 v35, v47, v46, v34
	v_div_fixup_f32 v37, v45, v44, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v45.h, v193.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v32, 0xbfb8aa3b, v0
	scratch_load_b32 v47, off, off offset:364 ; 4-byte Folded Reload
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v0
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v34
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v32, v32, v0
	v_rcp_f32_e32 v36, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v34, v36, 1.0
	v_fmac_f32_e32 v36, v40, v36
	v_div_scale_f32 v40, vcc_lo, v0, v32, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v40, v36
	v_fma_f32 v43, -v34, v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v36
	v_fma_f32 v34, -v34, v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v34, v34, v36, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v104
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v104
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v36, v36, v40
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v105, 1.0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v105, v105, v104
	v_rcp_f32_e32 v40, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v36, v40, 1.0
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, vcc_lo, v104, v105, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v40
	v_fma_f32 v44, -v36, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v44, v40
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v44.h, v193.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v36, v43, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v42.h, v193.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v36, v40, v43
	v_div_fixup_f32 v40, v34, v32, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v177, v187, s3
	v_cndmask_b32_e64 v32, v178, v186, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v34.h, v193.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v36, v105, v104
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v31, v31, v40
	v_mul_f32_e32 v0, v0, v92
	v_mul_f32_e32 v32, v32, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v34.l, v0.h
	v_mov_b16_e32 v42.l, v32.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s0, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v0, v34, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v176, v169, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v42, v32, v42, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v173, v170, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v0, v94
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v0.l, 0x7fff, v42.h, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v95
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v42.h, v193.l
	v_cndmask_b16 v0.h, 0x7fff, v34.h, vcc_lo
	v_mov_b16_e32 v42.l, v43.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v188, v192, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v32.h
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_cmp_o_f32_e64 s0, v32, v32
	v_and_b32_e32 v42, 1, v42
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v34, v34, v96
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v43, v42, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v185, v191, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v32, v44, 0x7fff
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v43, v97
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v34.h
	v_mov_b16_e64 v43.h, v193.l
	v_mov_b16_e32 v45.l, v32.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v32, v32
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v43, v34, v43, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v181, v190, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v32, v45, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v180, v189, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v71.h, 0x7fff, v43.h, s1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v46, v34, v98
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v34.l, 0x7fff, v44.h, s0
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v44, off, off offset:376
	scratch_load_b128 v[5:8], off, off offset:1072
	v_cndmask_b16 v34.h, 0x7fff, v42.h, vcc_lo
	v_mov_b16_e64 v42.h, v193.l
	v_mov_b16_e32 v42.l, v46.h
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_cndmask_b16 v71.l, 0x7fff, v45.h, s4
	scratch_load_b32 v45, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v99
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v32, v32
	v_add3_u32 v42, v46, v42, 0x7fff
	scratch_load_b32 v46, off, off offset:368 ; 4-byte Folded Reload
	v_cndmask_b16 v67.h, 0x7fff, v42.h, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v48, v48, v230 :: v_dual_mul_f32 v43, v43, v255
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, v43, v6, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v44, v43, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v44, v44, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v5, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v45, v44, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v18, v43
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v43, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v43, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v230
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v17, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v45, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v32.h
	v_mov_b16_e64 v45.h, v193.l
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v45, v32, v45, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v44, v108
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v43.h
	v_mov_b16_e64 v44.h, v193.l
	v_cndmask_b16 v67.l, 0x7fff, v45.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s4, v32, v32
	scratch_load_b32 v45, off, off offset:60 ; 4-byte Folded Reload
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v44, v43, v44, 0x7fff
	v_mov_b16_e32 v43.l, v32.h
	v_mov_b16_e64 v43.h, v193.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.h, 0x7fff, v44.h, s1
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v44, off, off offset:360
	scratch_load_b128 v[1:4], off, off offset:1056
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v68.l, 0x7fff, v43.h, s4
	v_mov_b16_e64 v43.h, v193.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v8, v46
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v46, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v46, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v46, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v46, v46, v7, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v47, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v47, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v47, v20, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v47, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v47, off, off offset:716 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v32.h
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v63.h, 0x7fff, v43.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v25, v179, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v43, v111
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v255
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v2, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v44, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:532 ; 4-byte Folded Reload
	v_mul_f32_e32 v47, v47, v230
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v47, v19, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	scratch_load_b32 v47, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v46, v81
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v46, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v44, v44, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v1, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v45, v44, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v14, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v230
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v13, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v45, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v42.h
	v_mov_b16_e64 v45.h, v193.l
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v45, v42, v45, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v44, v109
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v32.h
	v_mov_b16_e64 v44.h, v193.l
	v_cndmask_b16 v63.l, 0x7fff, v45.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v42, v42
	v_mov_b16_e64 v45.h, v193.l
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v32, v44, 0x7fff
	v_mov_b16_e32 v32.l, v42.h
	v_mov_b16_e64 v32.h, v193.l
	v_cndmask_b16 v64.h, 0x7fff, v44.h, s1
	v_mov_b16_e64 v44.h, v193.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v32, 1, v32
	v_cmp_o_f32_e64 s1, v43, v43
	v_add3_u32 v32, v42, v32, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v64.l, 0x7fff, v32.h, s4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v42, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v42, v4, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v47, v42, s2
	scratch_load_b32 v47, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v46, v46, v255
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, v46, v3, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v47, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v47, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v47, v16, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v47, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v48, v15, v46
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v48, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v79
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	scratch_load_b32 v47, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v42.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v46, v110
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_mov_b16_e64 v46.h, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v44, 1, v44
	v_mov_b16_e32 v45.l, v32.h
	v_cmp_o_f32_e64 s0, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v44, v42, v44, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v253, v12, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v65.h, 0x7fff, v44.h, vcc_lo
	v_mov_b16_e64 v44.h, v193.l
	v_add3_u32 v45, v32, v45, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v42, v113
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v43.h
	v_mov_b16_e64 v42.h, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v65.l, 0x7fff, v45.h, s0
	v_mov_b16_e32 v46.l, v32.h
	v_cmp_o_f32_e64 s4, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v42, 1, v42
	v_mov_b16_e64 v45.h, v193.l
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v43, v42, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v27, v232, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v32, v46, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v28, v167, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v66.h, 0x7fff, v42.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v43, v115
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v217, v172, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v66.l, 0x7fff, v46.h, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v125
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v46.h, v193.l
	v_mov_b16_e32 v44.l, v43.h
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v129
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v32.h
	v_cmp_o_f32_e64 s0, v32, v32
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v42, v42
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v149, v171, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v32, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v69.h, 0x7fff, v44.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v43, v168
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v42.h
	v_mov_b16_e64 v43.h, v193.l
	scratch_load_b32 v44, off, off offset:348 ; 4-byte Folded Reload
	v_cndmask_b16 v69.l, 0x7fff, v45.h, s0
	scratch_load_b32 v45, off, off offset:344 ; 4-byte Folded Reload
	v_mov_b16_e32 v46.l, v32.h
	v_and_b32_e32 v43, 1, v43
	v_cmp_o_f32_e64 s4, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v43, v42, v43, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v148, v174, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v32, v46, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v43.h, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v175
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v43.h, v193.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v147, v151, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v70.l, 0x7fff, v46.h, s4
	scratch_load_b32 v46, off, off offset:340 ; 4-byte Folded Reload
	v_mov_b16_e32 v43.l, v42.h
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v43
	v_cmp_o_f32_e64 s0, v32, v32
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v43, v42, v43, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v59.h, 0x7fff, v43.h, vcc_lo
	v_mov_b16_e64 v43.h, v193.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v48, v48, v155
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v42, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v42, v6, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v44, v42, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v44, v44, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v5, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v45, v44, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v18, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v42, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v155
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v17, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v45, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v32.h
	v_mov_b16_e64 v45.h, v193.l
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v45, v32, v45, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v44, v206
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v42.h
	v_mov_b16_e64 v44.h, v193.l
	v_cndmask_b16 v59.l, 0x7fff, v45.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s4, v32, v32
	scratch_load_b32 v45, off, off offset:328 ; 4-byte Folded Reload
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v44, v42, v44, 0x7fff
	v_mov_b16_e32 v42.l, v32.h
	v_mov_b16_e64 v42.h, v193.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v60.h, 0x7fff, v44.h, s1
	scratch_load_b32 v44, off, off offset:332 ; 4-byte Folded Reload
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v32, v42, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v60.l, 0x7fff, v42.h, s4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v8, v46
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v46, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v46, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v46, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v46, v46, v7, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v47, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v47, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v47, v20, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v47, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v47, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v32.h
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v55.h, 0x7fff, v43.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v159, v244, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v43, v205 :: v_dual_mul_f32 v32, v32, v254
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v2, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v44, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:500 ; 4-byte Folded Reload
	v_mul_f32_e32 v47, v47, v155
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v47, v19, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	scratch_load_b32 v47, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v46, v212
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v46, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v44, v44, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v1, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v45, v44, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v14, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v155
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v13, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v45, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v42.h
	v_mov_b16_e64 v45.h, v193.l
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v45, v42, v45, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v44, v77
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v32.h
	v_mov_b16_e64 v44.h, v193.l
	v_cndmask_b16 v55.l, 0x7fff, v45.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v42, v42
	v_mov_b16_e64 v45.h, v193.l
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v32, v44, 0x7fff
	v_mov_b16_e32 v32.l, v42.h
	v_mov_b16_e64 v32.h, v193.l
	v_cndmask_b16 v56.h, 0x7fff, v44.h, s1
	v_mov_b16_e64 v44.h, v193.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v32, 1, v32
	v_cmp_o_f32_e64 s1, v43, v43
	v_add3_u32 v32, v42, v32, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v56.l, 0x7fff, v32.h, s4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v42, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v42, v4, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v47, v42, s2
	scratch_load_b32 v47, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v46, v46, v254
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, v46, v3, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v47, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v47, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v47, v16, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v47, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v48, v15, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	scratch_load_b32 v47, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v42.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v46, v75
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_mov_b16_e64 v46.h, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v44, 1, v44
	v_mov_b16_e32 v45.l, v32.h
	v_cmp_o_f32_e64 s0, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v44, v42, v44, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v158, v161, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v57.h, 0x7fff, v44.h, vcc_lo
	v_mov_b16_e64 v44.h, v193.l
	v_add3_u32 v45, v32, v45, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v42, v203
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v43.h
	v_mov_b16_e64 v42.h, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v57.l, 0x7fff, v45.h, s0
	v_mov_b16_e32 v46.l, v32.h
	v_cmp_o_f32_e64 s4, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v42, 1, v42
	v_mov_b16_e64 v45.h, v193.l
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v42, v43, v42, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v216, v9, s3
	scratch_load_b32 v9, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v32, v46, 0x7fff
	v_cndmask_b16 v58.h, 0x7fff, v42.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v43, v201
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v142, v146, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v58.l, 0x7fff, v46.h, s4
	v_mov_b16_e64 v46.h, v193.l
	v_mov_b16_e32 v44.l, v43.h
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v44, 1, v44
	v_cmp_o_f32_e64 s1, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v141, v145, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v61.h, 0x7fff, v44.h, vcc_lo
	scratch_load_b32 v44, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v32, v156, v9, s3
	scratch_load_b32 v9, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v32.h
	v_cmp_o_f32_e64 s0, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v32, v45, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v43, v131
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v42.h
	v_mov_b16_e64 v43.h, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b16 v61.l, 0x7fff, v45.h, s0
	scratch_load_b32 v45, off, off offset:312 ; 4-byte Folded Reload
	v_mov_b16_e32 v46.l, v32.h
	v_and_b32_e32 v43, 1, v43
	v_cmp_o_f32_e64 s4, v32, v32
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v43, v42, v43, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v157, v165, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v32, v46, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v62.h, 0x7fff, v43.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v130
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v43.h, v193.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v163, v86, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v62.l, 0x7fff, v46.h, s4
	scratch_load_b32 v46, off, off offset:308 ; 4-byte Folded Reload
	v_mov_b16_e32 v43.l, v42.h
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v32, v32, v128 :: v_dual_and_b32 v43, 1, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v32, v32
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v43, v42, v43, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v51.h, 0x7fff, v43.h, vcc_lo
	v_mov_b16_e64 v43.h, v193.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v29, v29, v9, s3
	scratch_load_b32 v9, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v29, v29, v118 :: v_dual_mul_f32 v42, v42, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v42, v6, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v44, v42, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v28, v84, v9, s3
	scratch_load_b32 v9, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v28, v28, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v29.h
	v_mov_b16_e64 v41.h, v193.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v29, v41, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v44, v44, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v5, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v45, v44, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:648 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v27, v144, v9, s3
	scratch_load_b32 v9, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v27, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v103, v91, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v45, v45, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v18, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v126
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v42, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v25, v162, v9, s3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:96
	scratch_load_b32 v53, off, off offset:52
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v25, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.l, v27.h
	v_mov_b16_e64 v38.h, v193.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v27, v38, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v45, v45, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v17, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v45, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v32.h
	v_mov_b16_e64 v45.h, v193.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v32, v45, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v44, v124
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v42.h
	v_mov_b16_e64 v44.h, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v51.l, 0x7fff, v45.h, s0
	v_cmp_o_f32_e64 s4, v32, v32
	scratch_load_b32 v45, off, off offset:288 ; 4-byte Folded Reload
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v42, v44, 0x7fff
	v_mov_b16_e32 v42.l, v32.h
	v_mov_b16_e64 v42.h, v193.l
	v_cndmask_b16 v52.h, 0x7fff, v44.h, s1
	scratch_load_b32 v44, off, off offset:292 ; 4-byte Folded Reload
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v32, v42, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v52.l, 0x7fff, v42.h, s4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v183
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v8, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v46, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v46, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v46, v183
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v46, v46, v7, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v47, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v47, v85
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v47, v20, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v47, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v47, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v112
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v32.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v183
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v2, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v44, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:468 ; 4-byte Folded Reload
	v_mul_f32_e32 v47, v47, v85
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v47, v19, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v47.h, v193.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v46, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v46, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v44, v44, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v1, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v45, v44, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v14, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:620 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v85
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v13, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v45, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v42.h
	v_mov_b16_e64 v45.h, v193.l
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v45, v42, v45, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v44, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v32.h
	v_mov_b16_e64 v44.h, v193.l
	v_mov_b16_e32 v47.l, v42.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v42, v42
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v44, v32, v44, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v31.h
	v_add3_u32 v49, v42, v47, 0x7fff
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:284
	scratch_load_b32 v47, off, off offset:56
	v_cndmask_b16 v48.h, 0x7fff, v44.h, s1
	v_cmp_o_f32_e64 s1, v29, v29
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e64 v29.h, v193.l
	v_mov_b16_e64 v44.h, v193.l
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s4
	v_cmp_o_f32_e64 s4, v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v46, v46, v183 :: v_dual_and_b32 v29, 1, v29
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v32, v32, v183
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v32, v32, v4, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v42, v32, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v46, v3, v47
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v46, off, off offset:616 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v47, v42, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v47, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v46, v46, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v46, v46, v16, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v47, v85
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v46, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v46, v47, v15, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v47.h, 0x7fff, v43.h, vcc_lo
	v_mov_b16_e64 v43.h, v193.l
	v_cndmask_b16 v47.l, 0x7fff, v45.h, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v46, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v32.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v72
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v73
	scratch_load_b32 v73, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v43
	v_cmp_o_f32_e64 s0, v42, v42
	v_add3_u32 v43, v32, v43, 0x7fff
	v_mov_b16_e32 v32.l, v42.h
	v_mov_b16_e64 v32.h, v193.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v42, v32, 0x7fff
	v_add3_u32 v42, v28, v29, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v50, v137, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v28.l, 0x7fff, v32.h, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v83, v138, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v29.h, 0x7fff, v41.h, s1
	v_cmp_o_f32_e64 s0, v25, v25
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v27, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v102, v89, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v32, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v32.l, v25.h
	v_mov_b16_e64 v32.h, v193.l
	v_cndmask_b16 v29.l, 0x7fff, v42.h, s4
	v_mov_b16_e32 v42.l, v27.h
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e64 v42.h, v193.l
	v_and_b32_e32 v32, 1, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v30, v9, s3
	scratch_load_b32 v50, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v41, v25, v32, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v32.h, 0x7fff, v38.h, vcc_lo
	v_mov_b16_e64 v38.h, v193.l
	v_add3_u32 v42, v27, v42, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v41.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v25, 0xbfb8aa3b, v35 :: v_dual_and_b32 v38, 1, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v37, v37
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v43, v36
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_and_b32_e32 v27, 1, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v39
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v31, v27, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v27, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v30, v37, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v41, v25, v41
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	scratch_load_b32 v25, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v30.h, 0x7fff, v38.h, s0
	v_cmp_o_f32_e64 s0, v31, v31
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v31, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v46, v46, v35
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v30.l, 0x7fff, v42.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, s1, v35, v46, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v38
	v_div_scale_f32 v37, null, v40, v40, v39
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	scratch_load_b32 v41, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v45, v37
	v_fma_f32 v42, -v37, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, vcc_lo, v39, v40, v39
	v_mul_f32_e32 v49, v42, v45
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v27, v27, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v27, v6, v53
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v38, v43, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v53, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v43, v27, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v27, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v53, -v37, v49, v42
	v_fmac_f32_e32 v49, v53, v45
	v_mul_f32_e32 v53, v54, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v37, v49, v42
	v_fma_f32 v42, -v38, v53, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v45, v49
	v_fmac_f32_e32 v53, v42, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v36.h
	v_mov_b16_e64 v45.h, v193.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v37, v37, v40, v39
	v_fma_f32 v38, -v38, v53, v54
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v40.h, v193.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v38, v43, v53
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v33
	scratch_load_b32 v53, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v38, v46, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v46, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v31, v31, v193
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v25, s27, v25
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	s_waitcnt vmcnt(3)
	v_lshrrev_b32_e32 v41, 1, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s5
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v5, v31, v5, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v101, v88, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v50, v50, v5, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v5
	v_cndmask_b32_e64 v42, 0, 0x42800000, s4
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v31
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_ldexp_f32 v42, v42, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v72, v27, v26
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v27, s27, 4, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v5, v72, v18, v6
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v18, s27, 5, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v6, v5, s3
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[5:6], null, s27, 48, v[25:26]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v6, off, off offset:640 ; 4-byte Folded Reload
	s_mov_b32 s27, 0x31027000
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v72, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v37, v37
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v40, v37, v40, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v46, v46, v193
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v49, v6, v26
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v6, s34, s33, v41
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v49, v17, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v49, v54
	scratch_load_b32 v54, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v36, v41, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v36, 1.0, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v50, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v50, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v42.h, v193.l
	v_cndmask_b16 v44.l, 0x7fff, v41.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v36, v36, v31
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v17, 0x80, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v49, v38
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v35, v45, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v43, v39
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v35.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v38, v38, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v39, v43, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v45
	v_fmac_f32_e32 v43, v49, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v35, v41, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v45, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s1, v33, v38, v33
	v_mul_f32_e32 v72, v49, v42
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v8, v46, v8, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, vcc_lo, v31, v36, v31
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v50, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v54, v8, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v37, v46, v43
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v7, v50, v7, v53
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v50, off, off offset:608 ; 4-byte Folded Reload
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v39, v37, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v53, v7, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v53, off, off offset:604 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v37, v54, v43
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v54, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v50, v50, v26
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v50, v20, v8
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v53, v53, v26
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v50, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v54, v54, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v20, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v39, v37, v46
	scratch_load_b32 v46, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v39, v11, v26
	scratch_load_b32 v11, off, off offset:1132 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v53, v19, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v53, -v45, v72, v49
	v_div_fmas_f32 v20, v20, v43, v37
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v35, v35
	scratch_load_b32 v35, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v72, v53, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v19, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v20, v20, v36, v31
	scratch_load_b32 v36, off, off offset:24 ; 4-byte Folded Reload
	v_fma_f32 v37, -v45, v72, v49
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v8, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.h, 0x7fff, v40.h, s0
	v_cndmask_b16 v20.l, 0x7fff, v41.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v37, v42, v72
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v8, v8
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(3)
	v_fma_f32 v9, v54, v218, v46
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v43, v11, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v46, v9, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v19, v43, v21, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v21, v37, v38, v33
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v38, off, off offset:20
	scratch_load_b32 v43, off, off offset:580
	scratch_load_b32 v33, off, off offset:548
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v19, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v7, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v8.h
	v_mov_b16_e64 v21.h, v193.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v8, v21, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v8, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.h, 0x7fff, v21.h, s4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v43, v43, v26
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v33, v33, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v11, v33, v220, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v33, off, off offset:1088 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v36, v11, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v8, v8, v193
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v8, v8, v221, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v35, v8, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v26
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v24, v33, v24, v8
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v33, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v50, v50, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v24, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v10, v50, v219, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v73, v10, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v22, v39, v22, v10
	scratch_load_b32 v39, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v22, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v22, 0xbfb8aa3b, v9 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v31, 0, 0x42800000, s0
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v7.h
	v_mov_b16_e64 v19.h, v193.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v10 :: v_dual_and_b32 v19, 1, v19
	v_exp_f32_e32 v21, v31
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v19, v7, v19, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v21, v21, v35
	v_ldexp_f32 v22, v22, v31
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v31, off, off offset:1128 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_add_f32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v21, v21, v9
	v_div_scale_f32 v40, s4, v9, v21, v9
	v_div_scale_f32 v24, null, v22, v22, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v35, v24
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v26
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v31, v23, v11
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v31, off, off offset:436 ; 4-byte Folded Reload
	v_mul_f32_e32 v33, v33, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v23, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v2, v33, v2, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v24, v35, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v23, v36
	v_fmac_f32_e32 v35, v33, v35
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v39, v2, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v37
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, s1, v10, v22, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v36, v23, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v39, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v23, v33, v23
	v_fma_f32 v45, -v24, v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v33, v37
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v45, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v24, -v24, v41, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v33, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v193
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v1, v31, v1, v38
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v24, v24, v35, v41
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v38, v1, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v38, off, off offset:588 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v8
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v10, v24, v22, v10
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v13, v43, v13, v1
	scratch_load_b32 v24, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v31, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v13, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v31, v37
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v37, v40, v23
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v36, v37, v40
	v_div_scale_f32 v43, null, v31, v31, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v42, v23
	v_div_scale_f32 v42, null, v33, v33, v11
	v_fma_f32 v36, -v36, v37, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v39, v42
	v_div_fmas_f32 v23, v36, v23, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v9, v23, v21, v9
	v_fma_f32 v13, -v42, v39, 1.0
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v21, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v9
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v39, v13, v39
	v_div_scale_f32 v13, s0, v11, v33, v11
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v9, v13, v39 :: v_dual_mul_f32 v38, v38, v26
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v14, v38, v14, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v38, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v14, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v14, vcc_lo, v8, v31, v8
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v35, -v43, v38, 1.0
	v_fma_f32 v10, -v42, v9, v13
	v_fmac_f32_e32 v38, v35, v38
	scratch_load_b32 v35, off, off offset:16 ; 4-byte Folded Reload
	v_fmac_f32_e32 v9, v10, v39
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:572
	scratch_load_b32 v23, off, off offset:428
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v22, v14, v38
	v_fma_f32 v13, -v42, v9, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v21, v21, v193
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v3, v21, v3, v35
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v43, v22, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v10, v26 :: v_dual_mul_f32 v23, v23, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v35, v3, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v22, v21, v38
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v21, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v4, v23, v4, v24
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v43, v22, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v24, v4, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v14, v14, v38, v22
	s_mov_b32 vcc_lo, s0
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v10, v10, v16, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v9, v13, v39, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v2.h
	v_mov_b16_e64 v13.h, v193.l
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v10, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v14, v31, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e64 v10.h, v193.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v9, v9, v33, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v7, 1, v13
	v_cndmask_b16 v12.l, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v8, 1, v10
	v_add3_u32 v7, v2, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v10.l, v4.h
	v_add3_u32 v8, v1, v8, 0x7fff
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s1, v4, v4
	v_and_b32_e32 v10, 1, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v21, v21, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v15, v21, v15, v3
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v15, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v9.h, v193.l
	v_mov_b16_e32 v9.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v3, v9, 0x7fff
	v_add3_u32 v9, v4, v10, 0x7fff
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 16, v1
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v3.h, 0x7fff, v9.h, s1
	v_cmp_eq_u32_e64 s3, 0, v1
	v_cndmask_b16 v1.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s0
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v2, v71, v0, s3
	v_cndmask_b32_e64 v0, v0, v71, s3
	v_cndmask_b32_e64 v37, v30, v29, s3
	v_cndmask_b32_e64 v29, v29, v30, s3
	v_cndmask_b32_e64 v39, v44, v32, s3
	v_cndmask_b32_e64 v30, v32, v44, s3
	v_cndmask_b32_e64 v41, v1, v20, s3
	v_cndmask_b32_e64 v1, v20, v1, s3
	v_mov_b32_e32 v20, 0x5410
	v_mov_b32_e32 v32, 0x7632
	v_cndmask_b32_e64 v19, v60, v56, s3
	v_cndmask_b32_e64 v7, v34, v67, s3
	v_cndmask_b32_e64 v9, v68, v64, s3
	v_cndmask_b32_e64 v11, v63, v65, s3
	v_cndmask_b32_e64 v14, v66, v70, s3
	v_cndmask_b32_e64 v16, v69, v59, s3
	v_cndmask_b32_e64 v4, v67, v34, s3
	v_cndmask_b32_e64 v23, v55, v57, s3
	v_cndmask_b32_e64 v8, v64, v68, s3
	v_cndmask_b32_e64 v10, v65, v63, s3
	v_cndmask_b32_e64 v26, v58, v62, s3
	v_cndmask_b32_e64 v33, v61, v51, s3
	v_cndmask_b32_e64 v13, v70, v66, s3
	v_cndmask_b32_e64 v15, v59, v69, s3
	v_cndmask_b32_e64 v35, v52, v48, s3
	v_cndmask_b32_e64 v36, v28, v47, s3
	v_cndmask_b32_e64 v28, v47, v28, s3
	v_cndmask_b32_e64 v21, v56, v60, s3
	v_cndmask_b32_e64 v22, v57, v55, s3
	v_cndmask_b32_e64 v24, v62, v58, s3
	v_cndmask_b32_e64 v31, v51, v61, s3
	v_cndmask_b32_e64 v34, v48, v52, s3
	v_cndmask_b32_e64 v43, v3, v12, s3
	v_cndmask_b32_e64 v3, v12, v3, s3
	v_permlanex16_b32 v12, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, 0x1054, v20, s3
	v_cndmask_b32_e64 v20, 0x3276, v32, s3
	v_permlanex16_b32 v32, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v20, v20, 8, v20
	v_permlanex16_b32 v47, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v19, 0x760076, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v19, v19, 4, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v42, 0x5040504, v0
	v_and_b32_e32 v44, 0x7060706, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v12, v2, v42
	v_perm_b32 v1, v12, v2, v44
	v_perm_b32 v2, v7, v4, v42
	v_perm_b32 v3, v7, v4, v44
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v4, v6, v25, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v7, v9, v8, v42
	v_perm_b32 v8, v9, v8, v44
	v_perm_b32 v9, v11, v10, v42
	v_perm_b32 v10, v11, v10, v44
	v_perm_b32 v11, v14, v13, v42
	v_perm_b32 v12, v14, v13, v44
	v_perm_b32 v13, v16, v15, v42
	v_perm_b32 v14, v16, v15, v44
	v_add_lshl_u32 v15, v6, v27, 1
	v_perm_b32 v19, v32, v21, v42
	v_perm_b32 v20, v32, v21, v44
	v_perm_b32 v21, v23, v22, v42
	v_perm_b32 v22, v23, v22, v44
	v_perm_b32 v28, v26, v24, v42
	v_perm_b32 v29, v26, v24, v44
	v_perm_b32 v30, v33, v31, v42
	v_perm_b32 v31, v33, v31, v44
	v_perm_b32 v32, v35, v34, v42
	v_perm_b32 v33, v35, v34, v44
	v_perm_b32 v34, v38, v36, v42
	v_perm_b32 v35, v38, v36, v44
	v_perm_b32 v36, v40, v37, v42
	v_perm_b32 v37, v40, v37, v44
	v_perm_b32 v38, v45, v39, v42
	v_perm_b32 v39, v45, v39, v44
	v_perm_b32 v40, v46, v41, v42
	v_perm_b32 v41, v46, v41, v44
	v_perm_b32 v42, v47, v43, v42
	v_perm_b32 v43, v47, v43, v44
	s_clause 0x2
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	buffer_store_b128 v[7:10], v4, s[24:27], 0 offen offset:256
	buffer_store_b128 v[11:14], v15, s[24:27], 0 offen
	v_add_lshl_u32 v0, v17, v27, 1
	v_add_lshl_u32 v1, v6, v18, 1
	v_add_lshl_u32 v2, v17, v18, 1
	v_add_lshl_u32 v3, v6, v5, 1
	v_add_lshl_u32 v4, v17, v5, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v1, s[24:27], 0 offen
	buffer_store_b128 v[32:35], v2, s[24:27], 0 offen
	buffer_store_b128 v[36:39], v3, s[24:27], 0 offen
	buffer_store_b128 v[40:43], v4, s[24:27], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1284
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 1284
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 53332
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 1284
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 1284
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 458
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
