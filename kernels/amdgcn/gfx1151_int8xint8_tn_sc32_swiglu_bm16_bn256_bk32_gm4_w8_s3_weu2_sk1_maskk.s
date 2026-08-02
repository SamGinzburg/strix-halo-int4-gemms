	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v34, 0xf0, v0
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v12, 3, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v13, 1, v0
	v_lshlrev_b32_e32 v17, 5, v0
	v_and_b32_e32 v19, 8, v0
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v10, 3, v34
	v_and_b32_e32 v18, 4, v0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v61, 0, v13
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s26, 15
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
	v_rcp_iflag_f32_e32 v1, s8
	s_load_b256 s[8:15], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s17, v1
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
	v_or_b32_e32 v2, s30, v10
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
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s6, 31
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_mul_lo_u32 v1, s35, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s18, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v33, 15, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v8, s30, v12
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v11, v33, 4, v1
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s7, s26, s30
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add3_u32 v1, s33, s18, v11
	v_add_nc_u32_e32 v2, s35, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_dual_cndmask_b32 v3, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[36:39], 0 offen
	buffer_load_b128 v[23:26], v2, s[36:39], 0 offen
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v2, s27, v1
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v1, s27, 6, v1
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v20, v33, 9, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v7, s35, v2
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 378 26 is_stmt 1              ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v21, 0x90, v20
	v_xor_b32_e32 v22, 0x110, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[27:30], v2, s[36:39], 0 offen
	buffer_load_b128 v[35:38], v7, s[36:39], 0 offen
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_mul_lo_u32 v2, s26, v12
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v7, 14, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s6, 63
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v8, s27, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s44, s30, 32
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v63, 0, v21
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add3_u32 v9, v2, v7, s34
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v7, s44, v10
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v14, s35, v8
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v64, 0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v2, s7, v9
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s4, s31, v7
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v7, s35, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	s_clause 0x1
	buffer_load_b128 v[39:42], v1, s[36:39], 0 offen
	buffer_load_b128 v[43:46], v7, s[36:39], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v1, 0x80000000, v8, s4
	v_cndmask_b32_e64 v7, 0x80000000, v14, s4
	s_clause 0x1
	buffer_load_b128 v[47:50], v1, s[36:39], 0 offen
	buffer_load_b128 v[51:54], v7, s[36:39], 0 offen
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 372 34 is_stmt 0              ; generate_amdgcn.py:372:34
	s_lshl_b32 s4, s26, 5
	v_lshlrev_b32_e32 v2, 4, v0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_u16 v60, v1, s[8:11], 0 offen
	.loc	1 368 21 is_stmt 1              ; generate_amdgcn.py:368:21
	v_or_b32_e32 v1, s44, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add3_u32 v1, s7, s4, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v62, 0, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0x5f
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_u16 v65, v1, s[8:11], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(8)
	v_perm_b32 v7, v23, v3, 0x5010400
	v_perm_b32 v8, v23, v3, 0x7030602
	v_perm_b32 v14, v24, v4, 0x5010400
	v_perm_b32 v15, v24, v4, 0x7030602
	v_perm_b32 v16, v25, v5, 0x5010400
	v_perm_b32 v23, v25, v5, 0x7030602
	v_perm_b32 v24, v26, v6, 0x5010400
	v_perm_b32 v25, v26, v6, 0x7030602
	v_lshrrev_b32_e32 v26, 8, v7
	v_lshrrev_b32_e32 v32, 8, v8
	v_lshrrev_b32_e32 v55, 24, v8
	v_lshrrev_b32_e32 v56, 8, v14
	v_lshrrev_b32_e32 v57, 24, v14
	v_lshrrev_b32_e32 v67, 24, v16
	v_lshrrev_b32_e32 v68, 8, v23
	v_lshrrev_b32_e32 v70, 8, v24
	v_lshrrev_b32_e32 v71, 24, v24
	v_lshrrev_b32_e32 v72, 8, v25
	v_lshrrev_b32_e32 v73, 24, v25
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(6)
	v_perm_b32 v74, v35, v27, 0x5010400
	v_perm_b32 v35, v35, v27, 0x7030602
	v_perm_b32 v75, v36, v28, 0x5010400
	v_perm_b32 v36, v36, v28, 0x7030602
	v_perm_b32 v76, v37, v29, 0x5010400
	v_perm_b32 v37, v37, v29, 0x7030602
	v_perm_b32 v77, v38, v30, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v31, 24, v7
	v_lshrrev_b32_e32 v58, 8, v15
	v_lshrrev_b32_e32 v59, 24, v15
	v_lshrrev_b32_e32 v69, 24, v23
	v_lshrrev_b32_e32 v66, 8, v16
	v_and_b16 v1.l, 0xff, v7.l
	v_and_b16 v1.h, 0xff, v7.h
	v_and_b16 v3.l, 0xff, v8.l
	v_and_b16 v4.h, 0xff, v14.h
	v_and_b16 v5.l, 0xff, v15.l
	v_and_b16 v6.l, 0xff, v16.l
	v_and_b16 v6.h, 0xff, v16.h
	v_and_b16 v7.l, 0xff, v23.l
	v_and_b16 v7.h, 0xff, v23.h
	v_and_b16 v14.h, 0xff, v25.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v78, v38, v30, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v15.l, 8, v26.l
	v_lshlrev_b16 v16.l, 8, v32.l
	v_lshlrev_b16 v16.h, 8, v55.l
	v_lshlrev_b16 v23.l, 8, v56.l
	v_lshlrev_b16 v23.h, 8, v57.l
	v_lshlrev_b16 v25.h, 8, v67.l
	v_lshlrev_b16 v26.l, 8, v68.l
	v_lshlrev_b16 v27.l, 8, v70.l
	v_lshlrev_b16 v27.h, 8, v71.l
	v_lshlrev_b16 v28.l, 8, v72.l
	v_lshlrev_b16 v28.h, 8, v73.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v29.l, 0xff, v74.l
	v_lshrrev_b32_e32 v55, 8, v74
	v_lshrrev_b32_e32 v56, 24, v74
	v_and_b16 v29.h, 0xff, v74.h
	v_lshrrev_b32_e32 v57, 8, v35
	v_and_b16 v32.l, 0xff, v36.l
	v_lshrrev_b32_e32 v67, 8, v36
	v_lshrrev_b32_e32 v68, 24, v36
	v_and_b16 v32.h, 0xff, v36.h
	v_lshrrev_b32_e32 v70, 24, v76
	v_and_b16 v36.l, 0xff, v37.l
	v_lshrrev_b32_e32 v71, 8, v37
	v_lshrrev_b32_e32 v72, 24, v37
	v_and_b16 v36.h, 0xff, v37.h
	v_and_b16 v37.l, 0xff, v77.l
	v_lshrrev_b32_e32 v73, 8, v77
	v_lshrrev_b32_e32 v74, 24, v77
	v_and_b16 v37.h, 0xff, v77.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(4)
	v_perm_b32 v77, v43, v39, 0x5010400
	v_and_b16 v3.h, 0xff, v8.h
	v_and_b16 v5.h, 0xff, v15.h
	v_and_b16 v8.l, 0xff, v24.l
	v_lshlrev_b16 v15.h, 8, v31.l
	v_lshlrev_b16 v24.l, 8, v58.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v58, 24, v35
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v4.l, 0xff, v14.l
	v_and_b16 v8.h, 0xff, v24.h
	v_lshlrev_b16 v24.h, 8, v59.l
	v_lshlrev_b16 v26.h, 8, v69.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v59, 8, v75
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v43, v43, v39, 0x7030602
	v_and_b16 v14.l, 0xff, v25.l
	v_lshlrev_b16 v25.l, 8, v66.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v66, 24, v75
	s_waitcnt vmcnt(2)
	v_perm_b32 v82, v51, v47, 0x5010400
	v_and_b16 v30.l, 0xff, v35.l
	v_and_b16 v30.h, 0xff, v35.h
	v_and_b16 v31.l, 0xff, v75.l
	v_and_b16 v31.h, 0xff, v75.h
	v_and_b16 v35.l, 0xff, v76.l
	v_lshrrev_b32_e32 v69, 8, v76
	v_and_b16 v35.h, 0xff, v76.h
	v_and_b16 v38.l, 0xff, v78.l
	v_lshrrev_b32_e32 v75, 8, v78
	v_lshrrev_b32_e32 v76, 24, v78
	v_and_b16 v38.h, 0xff, v78.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v78, v44, v40, 0x5010400
	v_perm_b32 v44, v44, v40, 0x7030602
	v_perm_b32 v79, v45, v41, 0x5010400
	v_perm_b32 v45, v45, v41, 0x7030602
	v_perm_b32 v80, v46, v42, 0x5010400
	v_perm_b32 v81, v46, v42, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v51, v51, v47, 0x7030602
	v_perm_b32 v83, v52, v48, 0x5010400
	v_perm_b32 v52, v52, v48, 0x7030602
	v_perm_b32 v84, v53, v49, 0x5010400
	v_perm_b32 v53, v53, v49, 0x7030602
	v_perm_b32 v85, v54, v50, 0x5010400
	v_perm_b32 v86, v54, v50, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v1.l, v1.l, v15.l
	v_or_b16 v3.l, v3.l, v16.l
	v_or_b16 v6.h, v6.h, v25.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v15.l, 8, v55.l
	v_lshlrev_b16 v16.l, 8, v57.l
	v_lshlrev_b16 v25.h, 8, v70.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v55, 8, v77
	v_or_b16 v1.h, v1.h, v15.h
	v_or_b16 v3.h, v3.h, v16.h
	v_or_b16 v7.l, v7.l, v26.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v15.h, 8, v56.l
	v_lshlrev_b16 v16.h, 8, v58.l
	v_lshlrev_b16 v26.l, 8, v71.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v56, 24, v77
	v_or_b16 v4.l, v4.l, v23.l
	v_or_b16 v7.h, v7.h, v26.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v23.l, 8, v59.l
	v_lshlrev_b16 v26.h, 8, v72.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v57, 8, v43
	v_or_b16 v4.h, v4.h, v23.h
	v_or_b16 v8.l, v8.l, v27.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v23.h, 8, v66.l
	v_lshlrev_b16 v27.l, 8, v73.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v58, 24, v43
	v_and_b16 v39.l, 0xff, v77.l
	v_and_b16 v39.h, 0xff, v77.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v77, 8, v82
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v5.l, v5.l, v24.l
	v_or_b16 v5.h, v5.h, v24.h
	v_or_b16 v6.l, v6.l, v25.l
	v_or_b16 v8.h, v8.h, v27.h
	v_or_b16 v14.l, v14.l, v28.l
	v_or_b16 v14.h, v14.h, v28.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v24.l, 8, v67.l
	v_lshlrev_b16 v24.h, 8, v68.l
	v_lshlrev_b16 v25.l, 8, v69.l
	v_lshlrev_b16 v27.h, 8, v74.l
	v_lshlrev_b16 v28.l, 8, v75.l
	v_lshlrev_b16 v28.h, 8, v76.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v40.l, 0xff, v43.l
	v_and_b16 v40.h, 0xff, v43.h
	v_and_b16 v41.l, 0xff, v78.l
	v_lshrrev_b32_e32 v59, 8, v78
	v_lshrrev_b32_e32 v66, 24, v78
	v_and_b16 v41.h, 0xff, v78.h
	v_and_b16 v42.l, 0xff, v44.l
	v_lshrrev_b32_e32 v67, 8, v44
	v_lshrrev_b32_e32 v68, 24, v44
	v_and_b16 v42.h, 0xff, v44.h
	v_and_b16 v43.l, 0xff, v79.l
	v_lshrrev_b32_e32 v69, 8, v79
	v_lshrrev_b32_e32 v70, 24, v79
	v_and_b16 v43.h, 0xff, v79.h
	v_and_b16 v44.l, 0xff, v45.l
	v_lshrrev_b32_e32 v71, 8, v45
	v_lshrrev_b32_e32 v72, 24, v45
	v_and_b16 v44.h, 0xff, v45.h
	v_and_b16 v45.l, 0xff, v80.l
	v_lshrrev_b32_e32 v73, 8, v80
	v_lshrrev_b32_e32 v74, 24, v80
	v_and_b16 v45.h, 0xff, v80.h
	v_and_b16 v46.l, 0xff, v81.l
	v_lshrrev_b32_e32 v75, 8, v81
	v_lshrrev_b32_e32 v76, 24, v81
	v_and_b16 v46.h, 0xff, v81.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v47.l, 0xff, v82.l
	v_lshrrev_b32_e32 v78, 24, v82
	v_and_b16 v47.h, 0xff, v82.h
	v_and_b16 v48.l, 0xff, v51.l
	v_lshrrev_b32_e32 v79, 8, v51
	v_lshrrev_b32_e32 v80, 24, v51
	v_and_b16 v48.h, 0xff, v51.h
	v_and_b16 v49.l, 0xff, v83.l
	v_lshrrev_b32_e32 v81, 8, v83
	v_lshrrev_b32_e32 v82, 24, v83
	v_and_b16 v49.h, 0xff, v83.h
	v_and_b16 v50.l, 0xff, v52.l
	v_lshrrev_b32_e32 v83, 8, v52
	v_lshrrev_b32_e32 v87, 24, v52
	v_and_b16 v50.h, 0xff, v52.h
	v_and_b16 v51.l, 0xff, v84.l
	v_lshrrev_b32_e32 v88, 8, v84
	v_lshrrev_b32_e32 v89, 24, v84
	v_and_b16 v51.h, 0xff, v84.h
	v_and_b16 v52.l, 0xff, v53.l
	v_lshrrev_b32_e32 v84, 8, v53
	v_lshrrev_b32_e32 v90, 24, v53
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.l, 0xff, v85.l
	v_lshrrev_b32_e32 v91, 8, v85
	v_lshrrev_b32_e32 v92, 24, v85
	v_and_b16 v53.h, 0xff, v85.h
	v_lshrrev_b32_e32 v85, 8, v86
	v_lshrrev_b32_e32 v93, 24, v86
	v_or_b16 v15.l, v29.l, v15.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v62, v1
	ds_store_b16_d16_hi v62, v1 offset:32
	ds_store_b16 v62, v3 offset:64
	ds_store_b16_d16_hi v62, v3 offset:96
	ds_store_b16_d16_hi v63, v4 offset:32
	ds_store_b16 v63, v5 offset:64
	ds_store_b16_d16_hi v63, v5 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v1.h, v30.l, v16.l
	v_or_b16 v16.l, v35.h, v25.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v25.h, 8, v55.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v3.l, v30.h, v16.h
	v_or_b16 v16.h, v36.l, v26.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v26.l, 8, v56.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v3.h, v31.l, v23.l
	v_or_b16 v23.l, v36.h, v26.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v26.h, 8, v57.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v4.h, v31.h, v23.h
	v_or_b16 v23.h, v37.l, v27.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v27.l, 8, v58.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v1.l, v29.h, v15.h
	v_lshlrev_b16 v35.h, 8, v77.l
	v_and_b16 v54.l, 0xff, v86.l
	v_and_b16 v54.h, 0xff, v86.h
	v_or_b16 v5.l, v32.l, v24.l
	v_or_b16 v5.h, v32.h, v24.h
	v_or_b16 v15.h, v35.l, v25.l
	v_or_b16 v24.l, v37.h, v27.h
	v_or_b16 v24.h, v38.l, v28.l
	v_or_b16 v25.l, v38.h, v28.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v27.h, 8, v59.l
	v_lshlrev_b16 v28.l, 8, v66.l
	v_lshlrev_b16 v28.h, 8, v67.l
	v_lshlrev_b16 v29.l, 8, v68.l
	v_lshlrev_b16 v29.h, 8, v69.l
	v_lshlrev_b16 v30.l, 8, v70.l
	v_lshlrev_b16 v30.h, 8, v71.l
	v_lshlrev_b16 v31.l, 8, v72.l
	v_lshlrev_b16 v31.h, 8, v73.l
	v_lshlrev_b16 v32.l, 8, v74.l
	v_lshlrev_b16 v32.h, 8, v75.l
	v_lshlrev_b16 v35.l, 8, v76.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v36.l, 8, v78.l
	v_lshlrev_b16 v36.h, 8, v79.l
	v_lshlrev_b16 v37.l, 8, v80.l
	v_lshlrev_b16 v37.h, 8, v81.l
	v_lshlrev_b16 v38.l, 8, v82.l
	v_lshlrev_b16 v38.h, 8, v83.l
	v_lshlrev_b16 v55.l, 8, v87.l
	v_lshlrev_b16 v55.h, 8, v88.l
	v_lshlrev_b16 v56.l, 8, v89.l
	v_lshlrev_b16 v56.h, 8, v84.l
	v_lshlrev_b16 v57.l, 8, v90.l
	v_lshlrev_b16 v57.h, 8, v91.l
	v_lshlrev_b16 v58.l, 8, v92.l
	v_lshlrev_b16 v58.h, 8, v85.l
	v_lshlrev_b16 v59.l, 8, v93.l
	ds_store_b16 v62, v15 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v4
	ds_store_b16 v64, v6
	ds_store_b16_d16_hi v64, v6 offset:32
	ds_store_b16 v64, v7 offset:64
	ds_store_b16_d16_hi v64, v7 offset:96
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v61, v60 offset:32768
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v62, v1 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v62, v8 offset:384
	ds_store_b16_d16_hi v62, v8 offset:416
	ds_store_b16 v62, v14 offset:448
	ds_store_b16_d16_hi v62, v14 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v62, v1 offset:16416
	ds_store_b16 v62, v3 offset:16480
	ds_store_b16_d16_hi v63, v3 offset:16384
	ds_store_b16_d16_hi v63, v4 offset:16416
	ds_store_b16 v63, v5 offset:16448
	ds_store_b16_d16_hi v63, v5 offset:16480
	ds_store_b16_d16_hi v64, v15 offset:16384
	ds_store_b16 v64, v16 offset:16416
	ds_store_b16_d16_hi v64, v16 offset:16448
	ds_store_b16 v64, v23 offset:16480
	ds_store_b16_d16_hi v62, v23 offset:16768
	ds_store_b16 v62, v24 offset:16800
	ds_store_b16_d16_hi v62, v24 offset:16832
	ds_store_b16 v62, v25 offset:16864
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v1.l, v39.l, v25.h
	v_or_b16 v1.h, v39.h, v26.l
	v_or_b16 v3.l, v40.l, v26.h
	v_or_b16 v3.h, v40.h, v27.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v15.l, v47.l, v35.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v4.l, v41.l, v27.h
	v_or_b16 v4.h, v41.h, v28.l
	v_or_b16 v5.l, v42.l, v28.h
	v_or_b16 v5.h, v42.h, v29.l
	v_or_b16 v6.l, v43.l, v29.h
	v_or_b16 v6.h, v43.h, v30.l
	v_or_b16 v7.l, v44.l, v30.h
	v_or_b16 v7.h, v44.h, v31.l
	v_or_b16 v8.l, v45.l, v31.h
	v_or_b16 v8.h, v45.h, v32.l
	v_or_b16 v14.l, v46.l, v32.h
	v_or_b16 v14.h, v46.h, v35.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v15.h, v47.h, v36.l
	v_or_b16 v16.l, v48.l, v36.h
	v_or_b16 v16.h, v48.h, v37.l
	v_or_b16 v23.l, v49.l, v37.h
	v_or_b16 v23.h, v49.h, v38.l
	v_or_b16 v24.l, v50.l, v38.h
	v_or_b16 v24.h, v50.h, v55.l
	v_or_b16 v25.l, v51.l, v55.h
	v_or_b16 v25.h, v51.h, v56.l
	v_or_b16 v26.l, v52.l, v56.h
	v_or_b16 v26.h, v52.h, v57.l
	v_or_b16 v27.l, v53.l, v57.h
	v_or_b16 v27.h, v53.h, v58.l
	v_or_b16 v28.l, v54.l, v58.h
	v_or_b16 v28.h, v54.h, v59.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v62, v1 offset:8192
	ds_store_b16_d16_hi v62, v1 offset:8224
	ds_store_b16 v62, v3 offset:8256
	ds_store_b16_d16_hi v62, v3 offset:8288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v62, v15 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v4 offset:8192
	ds_store_b16_d16_hi v63, v4 offset:8224
	ds_store_b16 v63, v5 offset:8256
	ds_store_b16_d16_hi v63, v5 offset:8288
	ds_store_b16 v64, v6 offset:8192
	ds_store_b16_d16_hi v64, v6 offset:8224
	ds_store_b16 v64, v7 offset:8256
	ds_store_b16_d16_hi v64, v7 offset:8288
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v61, v65 offset:33280
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v62, v16 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v62, v8 offset:8576
	ds_store_b16_d16_hi v62, v8 offset:8608
	ds_store_b16 v62, v14 offset:8640
	ds_store_b16_d16_hi v62, v14 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v62, v15 offset:24608
	ds_store_b16_d16_hi v62, v16 offset:24672
	ds_store_b16 v63, v23 offset:24576
	ds_store_b16_d16_hi v63, v23 offset:24608
	ds_store_b16 v63, v24 offset:24640
	ds_store_b16_d16_hi v63, v24 offset:24672
	ds_store_b16 v64, v25 offset:24576
	ds_store_b16_d16_hi v64, v25 offset:24608
	ds_store_b16 v64, v26 offset:24640
	ds_store_b16_d16_hi v64, v26 offset:24672
	ds_store_b16 v62, v27 offset:24960
	ds_store_b16_d16_hi v62, v27 offset:24992
	ds_store_b16 v62, v28 offset:25024
	ds_store_b16_d16_hi v62, v28 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b32_e32 v1, 5, v0
	v_and_b32_e32 v3, 0xe00, v2
	v_and_b32_e32 v5, 4, v0
	v_and_b32_e32 v7, 8, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v23, 0x60, v1, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr23
.LBB0_3:                                ; %Flow214
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v3, s34, v33
	s_ashr_i32 s1, s5, 5
	v_or_b32_e32 v67, s33, v0
	v_lshlrev_b32_e32 v16, 2, v34
	v_and_b32_e32 v15, 28, v13
	v_mul_lo_u32 v68, v3, s1
	v_lshlrev_b32_e32 v14, 1, v34
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v2, 0xe00, v2
	v_and_b32_e32 v1, 0x90, v1
	v_and_b32_e32 v3, 0x110, v3
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v24, s35, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v23, 0x60, v17, v2
	v_and_b32_e32 v2, 32, v17
	v_xor_b32_e32 v1, v1, v3
	v_add_nc_u32_e32 v27, s27, v67
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v29, 0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v28, 0, v16, v2
	v_or_b32_e32 v25, v23, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v26, 16, v25
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_add_nc_u32_e32 v28, v28, v15
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s50, s1, 3
	s_add_i32 s48, s44, 32
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s49, 1
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s47, 0, 0x8200
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s50, s50, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s0, s30
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s18, s17, 5
	s_mov_b32 s30, s44
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s44, s48, s18
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s18, s0, 31
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v32, s44, v12
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s18, s18, 27
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_mad_u64_u32 v[30:31], null, s44, s26, v[9:10]
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s0, s0, s18
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s19, s44, s35
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s19, s19, s33
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v32
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s20, s0, s35
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	s_add_i32 s18, s19, s27
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v32, v67, s20, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v31, v68, s0, 1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v74, s44, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v32, v32, s[40:43], 0 offen
	s_mov_b32 s0, s15
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v75, s19, v11
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v69, s0, v33
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s31, v74
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v76, s19, v24
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v74, s18, v11
	v_add_nc_u32_e32 v77, s18, v24
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v70, s16, v25
	v_cndmask_b32_e64 v75, 0x80000000, v75, s0
	v_cndmask_b32_e64 v76, 0x80000000, v76, s0
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v74, 0x80000000, v74, s0
	v_cndmask_b32_e64 v82, 0x80000000, v77, s0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[121:124], v75, s[36:39], 0 offen
	buffer_load_b128 v[125:128], v76, s[36:39], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v156, v31, s[4:7], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[129:132], v74, s[36:39], 0 offen
	buffer_load_b128 v[133:136], v82, s[36:39], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v81, v27, s20, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v71, s16, v26
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v72, s14, v25
	v_add_nc_u32_e32 v73, s14, v26
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[77:80], v70
	ds_load_b128 v[93:96], v70 offset:4096
	ds_load_b128 v[101:104], v71
	ds_load_b128 v[105:108], v71 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v70, v69 offset:208
	ds_load_u8 v71, v69 offset:240
	ds_load_u8 v83, v69 offset:224
	ds_load_u8 v84, v69 offset:192
	ds_load_u8 v89, v69 offset:144
	ds_load_u8 v90, v69 offset:176
	ds_load_u8 v91, v69 offset:160
	ds_load_u8 v92, v69 offset:128
	ds_load_u8 v97, v69 offset:80
	ds_load_u8 v98, v69 offset:112
	ds_load_u8 v99, v69 offset:96
	ds_load_u8 v100, v69 offset:64
	ds_load_u8 v137, v69
	ds_load_u8 v138, v69 offset:16
	ds_load_u8 v139, v69 offset:32
	ds_load_u8 v140, v69 offset:48
	ds_load_u8 v141, v69 offset:464
	ds_load_u8 v142, v69 offset:496
	ds_load_u8 v143, v69 offset:480
	ds_load_u8 v144, v69 offset:448
	ds_load_u8 v145, v69 offset:400
	ds_load_u8 v146, v69 offset:432
	ds_load_u8 v147, v69 offset:416
	ds_load_u8 v148, v69 offset:384
	ds_load_u8 v149, v69 offset:336
	ds_load_u8 v150, v69 offset:368
	ds_load_u8 v151, v69 offset:352
	ds_load_u8 v152, v69 offset:320
	ds_load_u8 v153, v69 offset:272
	ds_load_u8 v154, v69 offset:304
	ds_load_u8 v155, v69 offset:288
	ds_load_u8 v69, v69 offset:256
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[85:88], v72
	ds_load_b128 v[109:112], v72 offset:4096
	ds_load_b128 v[113:116], v73
	ds_load_b128 v[117:120], v73 offset:4096
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v72, 0x80000000, v81, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v73, v100, v97, 0xc0c0004
	v_perm_b32 v74, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v75, v137, v138, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v76, v139, v140, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v81, v144, v141, 0xc0c0004
	v_perm_b32 v82, v143, v142, 0xc0c0004
	v_lshl_or_b32 v138, v74, 16, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s49, 1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v137, v76, 16, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s0, 2
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v144, v82, 16, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s49, s0, 0
	s_mov_b32 s16, s46
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_lshl_b32 s18, s49, 9
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v69, v153, 0xc0c0004
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_lshl_b32 s19, s49, 13
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_add_i32 s18, s18, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_add_i32 s46, s19, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s17, 1
	s_mov_b32 s15, s47
	s_mov_b32 s14, s45
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_add_i32 s47, s18, 0x8000
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_add_i32 s45, s46, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s50
	s_mov_b32 s17, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v31, 16, v32
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v32, v84, v70, 0xc0c0004
	v_perm_b32 v70, v83, v71, 0xc0c0004
	v_perm_b32 v71, v92, v89, 0xc0c0004
	v_perm_b32 v83, v148, v145, 0xc0c0004
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v28, v31 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v31, v72, s[40:43], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v72, v91, v90, 0xc0c0004
	v_perm_b32 v84, v147, v146, 0xc0c0004
	v_perm_b32 v89, v152, v149, 0xc0c0004
	v_perm_b32 v90, v151, v150, 0xc0c0004
	v_perm_b32 v91, v155, v154, 0xc0c0004
	v_lshl_or_b32 v140, v70, 16, v32
	v_lshl_or_b32 v139, v72, 16, v71
	v_lshl_or_b32 v143, v84, 16, v83
	v_lshl_or_b32 v142, v90, 16, v89
	v_lshl_or_b32 v141, v91, 16, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[137:140], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[137:140], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[85:92], v[93:96], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[101:104], v[141:144], v[69:76] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[77:84], v[113:116], v[141:144], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[109:112], v[137:140], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[85:92], v[105:108], v[141:144], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v109, 16, v156
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v157, s18, v13
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v158, s46, v20
	v_add_nc_u32_e32 v160, s46, v22
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[93:100], v[117:120], v[141:144], v[93:100] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v103, v87
	v_cvt_f32_i32_e32 v104, v88
	v_cvt_f32_i32_e32 v107, v91
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(1)
	v_perm_b32 v112, v134, v130, 0x5010400
	v_perm_b32 v113, v134, v130, 0x7030602
	v_perm_b32 v114, v135, v131, 0x5010400
	v_perm_b32 v115, v135, v131, 0x7030602
	v_perm_b32 v116, v136, v132, 0x5010400
	v_perm_b32 v117, v136, v132, 0x7030602
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v134, v109, v70
	v_mul_f32_e32 v135, v109, v69
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v136, v78, v109
	v_mul_f32_e32 v137, v77, v109
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v138, v109, v72
	v_dual_mul_f32 v139, v109, v71 :: v_dual_mul_f32 v140, v80, v109
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v141, v79, v109 :: v_dual_mul_f32 v142, v109, v74
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v143, v109, v73
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v144, v82, v109
	v_mul_f32_e32 v145, v81, v109
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v146, v109, v76
	v_dual_mul_f32 v147, v109, v75 :: v_dual_mul_f32 v148, v84, v109
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v149, v83, v109
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[69:72], v29 offset:33792
	ds_load_b128 v[73:76], v29 offset:33808
	ds_load_b128 v[77:80], v29 offset:34304
	ds_load_b128 v[81:84], v29 offset:34320
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v101, v85
	v_cvt_f32_i32_e32 v102, v86
	v_cvt_f32_i32_e32 v105, v89
	v_cvt_f32_i32_e32 v106, v90
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v85, v125, v121, 0x5010400
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v60, v135, v69
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v150, v109, v102 :: v_dual_add_nc_u32 v159, s46, v21
	v_dual_mul_f32 v151, v109, v101 :: v_dual_fmac_f32 v56, v139, v71
	v_mul_f32_e32 v154, v109, v104
	v_mul_f32_e32 v155, v109, v103
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v161, v95, v109 :: v_dual_mul_f32 v162, v109, v106
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v163, v109, v105
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v164, v98, v109
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v166, v109, v92 :: v_dual_mul_f32 v169, v99, v109
	v_dual_mul_f32 v167, v109, v107 :: v_dual_mul_f32 v152, v94, v109
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v153, v93, v109 :: v_dual_fmac_f32 v48, v147, v75
	v_dual_mul_f32 v156, v96, v109 :: v_dual_fmac_f32 v61, v134, v70
	v_dual_mul_f32 v165, v97, v109 :: v_dual_fmac_f32 v42, v154, v80
	v_dual_mul_f32 v168, v100, v109 :: v_dual_fmac_f32 v57, v138, v72
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v52, v143, v73 :: v_dual_fmac_f32 v53, v142, v74
	v_dual_fmac_f32 v49, v146, v76 :: v_dual_fmac_f32 v44, v151, v77
	v_dual_fmac_f32 v40, v155, v79 :: v_dual_fmac_f32 v45, v150, v78
	v_dual_fmac_f32 v38, v163, v81 :: v_dual_fmac_f32 v39, v162, v82
	v_dual_fmac_f32 v37, v167, v83 :: v_dual_fmac_f32 v36, v166, v84
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v86, v125, v121, 0x7030602
	v_perm_b32 v87, v126, v122, 0x5010400
	v_perm_b32 v88, v126, v122, 0x7030602
	v_perm_b32 v89, v127, v123, 0x5010400
	v_perm_b32 v90, v127, v123, 0x7030602
	v_perm_b32 v91, v128, v124, 0x5010400
	v_perm_b32 v108, v128, v124, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v110, v133, v129, 0x5010400
	v_perm_b32 v111, v133, v129, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v32.l, 0xff, v85.l
	v_lshrrev_b32_e32 v118, 8, v85
	v_lshrrev_b32_e32 v119, 24, v85
	v_and_b16 v32.h, 0xff, v85.h
	v_and_b16 v85.l, 0xff, v86.l
	v_lshrrev_b32_e32 v120, 8, v86
	v_lshrrev_b32_e32 v121, 24, v86
	v_and_b16 v85.h, 0xff, v86.h
	v_and_b16 v86.l, 0xff, v87.l
	v_lshrrev_b32_e32 v122, 8, v87
	v_lshrrev_b32_e32 v123, 24, v87
	v_and_b16 v86.h, 0xff, v87.h
	v_and_b16 v87.l, 0xff, v88.l
	v_lshrrev_b32_e32 v124, 8, v88
	v_lshrrev_b32_e32 v125, 24, v88
	v_and_b16 v87.h, 0xff, v88.h
	v_and_b16 v88.l, 0xff, v89.l
	v_lshrrev_b32_e32 v126, 8, v89
	v_lshrrev_b32_e32 v127, 24, v89
	v_and_b16 v88.h, 0xff, v89.h
	v_and_b16 v89.l, 0xff, v90.l
	v_lshrrev_b32_e32 v128, 8, v90
	v_lshrrev_b32_e32 v129, 24, v90
	v_and_b16 v89.h, 0xff, v90.h
	v_and_b16 v90.l, 0xff, v91.l
	v_lshrrev_b32_e32 v130, 8, v91
	v_lshrrev_b32_e32 v131, 24, v91
	v_and_b16 v90.h, 0xff, v91.h
	v_and_b16 v91.l, 0xff, v108.l
	v_lshrrev_b32_e32 v132, 8, v108
	v_lshrrev_b32_e32 v133, 24, v108
	v_and_b16 v91.h, 0xff, v108.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v92.l, 0xff, v110.l
	v_lshrrev_b32_e32 v108, 8, v110
	v_lshrrev_b32_e32 v109, 24, v110
	v_and_b16 v92.h, 0xff, v110.h
	v_and_b16 v93.l, 0xff, v111.l
	v_lshrrev_b32_e32 v110, 8, v111
	v_lshrrev_b32_e32 v170, 24, v111
	v_and_b16 v93.h, 0xff, v111.h
	v_and_b16 v94.l, 0xff, v112.l
	v_lshrrev_b32_e32 v111, 8, v112
	v_lshrrev_b32_e32 v171, 24, v112
	v_and_b16 v94.h, 0xff, v112.h
	v_and_b16 v95.l, 0xff, v113.l
	v_lshrrev_b32_e32 v112, 8, v113
	v_lshrrev_b32_e32 v172, 24, v113
	v_and_b16 v95.h, 0xff, v113.h
	v_and_b16 v96.l, 0xff, v114.l
	v_lshrrev_b32_e32 v113, 8, v114
	v_lshrrev_b32_e32 v173, 24, v114
	v_and_b16 v96.h, 0xff, v114.h
	v_and_b16 v97.l, 0xff, v115.l
	v_lshrrev_b32_e32 v114, 8, v115
	v_lshrrev_b32_e32 v174, 24, v115
	v_and_b16 v97.h, 0xff, v115.h
	v_lshrrev_b32_e32 v115, 8, v116
	v_lshrrev_b32_e32 v175, 24, v116
	v_and_b16 v98.l, 0xff, v116.l
	v_and_b16 v98.h, 0xff, v116.h
	v_lshrrev_b32_e32 v116, 8, v117
	v_lshrrev_b32_e32 v176, 24, v117
	v_lshlrev_b16 v108.h, 8, v109.l
	v_lshlrev_b16 v109.l, 8, v110.l
	v_lshlrev_b16 v110.l, 8, v111.l
	v_lshlrev_b16 v111.l, 8, v112.l
	v_lshlrev_b16 v112.l, 8, v113.l
	v_lshlrev_b16 v113.l, 8, v114.l
	v_lshlrev_b16 v114.l, 8, v115.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v100.l, 8, v118.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v114.h, 8, v175.l
	v_and_b16 v99.l, 0xff, v117.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v100.h, 8, v119.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v115.l, 8, v116.l
	v_and_b16 v99.h, 0xff, v117.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v101.l, 8, v120.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v115.h, 8, v176.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v101.h, 8, v121.l
	v_lshlrev_b16 v102.l, 8, v122.l
	v_lshlrev_b16 v102.h, 8, v123.l
	v_lshlrev_b16 v103.l, 8, v124.l
	v_lshlrev_b16 v103.h, 8, v125.l
	v_lshlrev_b16 v104.l, 8, v126.l
	v_lshlrev_b16 v104.h, 8, v127.l
	v_lshlrev_b16 v105.l, 8, v128.l
	v_lshlrev_b16 v105.h, 8, v129.l
	v_lshlrev_b16 v106.l, 8, v130.l
	v_lshlrev_b16 v106.h, 8, v131.l
	v_lshlrev_b16 v107.l, 8, v132.l
	v_lshlrev_b16 v107.h, 8, v133.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v108.l, 8, v108.l
	v_lshlrev_b16 v109.h, 8, v170.l
	v_lshlrev_b16 v110.h, 8, v171.l
	v_lshlrev_b16 v111.h, 8, v172.l
	v_lshlrev_b16 v112.h, 8, v173.l
	v_lshlrev_b16 v113.h, 8, v174.l
	v_or_b16 v98.l, v98.l, v114.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v32.l, v32.l, v100.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v98.h, v98.h, v114.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v32.h, v32.h, v100.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v99.l, v99.l, v115.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v85.l, v85.l, v101.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v99.h, v99.h, v115.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v85.h, v85.h, v101.h
	v_or_b16 v86.l, v86.l, v102.l
	v_or_b16 v86.h, v86.h, v102.h
	v_or_b16 v87.l, v87.l, v103.l
	v_or_b16 v87.h, v87.h, v103.h
	v_or_b16 v88.l, v88.l, v104.l
	v_or_b16 v88.h, v88.h, v104.h
	v_or_b16 v89.l, v89.l, v105.l
	v_or_b16 v89.h, v89.h, v105.h
	v_or_b16 v90.l, v90.l, v106.l
	v_or_b16 v90.h, v90.h, v106.h
	v_or_b16 v91.l, v91.l, v107.l
	v_or_b16 v91.h, v91.h, v107.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v92.l, v92.l, v108.l
	v_or_b16 v92.h, v92.h, v108.h
	v_or_b16 v93.l, v93.l, v109.l
	v_or_b16 v93.h, v93.h, v109.h
	v_or_b16 v94.l, v94.l, v110.l
	v_or_b16 v94.h, v94.h, v110.h
	v_or_b16 v95.l, v95.l, v111.l
	v_or_b16 v95.h, v95.h, v111.h
	v_or_b16 v96.l, v96.l, v112.l
	v_or_b16 v96.h, v96.h, v112.h
	v_or_b16 v97.l, v97.l, v113.l
	v_or_b16 v97.h, v97.h, v113.h
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v28, v31 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v29 offset:33792
	ds_load_b128 v[73:76], v29 offset:33808
	ds_load_b128 v[77:80], v29 offset:34304
	ds_load_b128 v[81:84], v29 offset:34320
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_store_b16 v157, v30 offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v158, v32
	ds_store_b16_d16_hi v158, v32 offset:32
	ds_store_b16 v158, v85 offset:64
	ds_store_b16_d16_hi v158, v85 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v158, v92 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v159, v86
	ds_store_b16_d16_hi v159, v86 offset:32
	ds_store_b16 v159, v87 offset:64
	ds_store_b16_d16_hi v159, v87 offset:96
	ds_store_b16 v160, v88
	ds_store_b16_d16_hi v160, v88 offset:32
	ds_store_b16 v160, v89 offset:64
	ds_store_b16_d16_hi v160, v89 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v158, v93 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v158, v90 offset:384
	ds_store_b16_d16_hi v158, v90 offset:416
	ds_store_b16 v158, v91 offset:448
	ds_store_b16_d16_hi v158, v91 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v158, v92 offset:16416
	ds_store_b16_d16_hi v158, v93 offset:16480
	ds_store_b16 v159, v94 offset:16384
	ds_store_b16_d16_hi v159, v94 offset:16416
	ds_store_b16 v159, v95 offset:16448
	ds_store_b16_d16_hi v159, v95 offset:16480
	ds_store_b16 v160, v96 offset:16384
	ds_store_b16_d16_hi v160, v96 offset:16416
	ds_store_b16 v160, v97 offset:16448
	ds_store_b16_d16_hi v160, v97 offset:16480
	ds_store_b16 v158, v98 offset:16768
	ds_store_b16_d16_hi v158, v98 offset:16800
	ds_store_b16 v158, v99 offset:16832
	ds_store_b16_d16_hi v158, v99 offset:16864
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(36)
	v_dual_fmac_f32 v35, v137, v69 :: v_dual_fmac_f32 v66, v136, v70
	v_dual_fmac_f32 v64, v141, v71 :: v_dual_fmac_f32 v65, v140, v72
	s_waitcnt lgkmcnt(35)
	v_dual_fmac_f32 v62, v145, v73 :: v_dual_fmac_f32 v63, v144, v74
	v_dual_fmac_f32 v58, v149, v75 :: v_dual_fmac_f32 v59, v148, v76
	s_waitcnt lgkmcnt(34)
	v_dual_fmac_f32 v54, v153, v77 :: v_dual_fmac_f32 v55, v152, v78
	v_dual_fmac_f32 v50, v161, v79 :: v_dual_fmac_f32 v51, v156, v80
	s_waitcnt lgkmcnt(33)
	v_dual_fmac_f32 v46, v165, v81 :: v_dual_fmac_f32 v47, v164, v82
	v_fmac_f32_e32 v41, v169, v83
	v_fmac_f32_e32 v43, v168, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v17
	v_mov_b32_e32 v5, v18
	v_mov_b32_e32 v7, v19
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s47, 0, 0x8200
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v35, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 378 26 is_stmt 1              ; generate_amdgcn.py:378:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v27, s15, v33
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v5, 0x90, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v4, v27
	ds_load_u8_d16 v6, v27 offset:16
	ds_load_u8_d16 v2, v27 offset:32
	ds_load_u8_d16 v3, v27 offset:48
	ds_load_u8_d16 v18, v27 offset:64
	ds_load_u8_d16 v20, v27 offset:80
	ds_load_u8_d16 v17, v27 offset:96
	ds_load_u8_d16 v19, v27 offset:112
	ds_load_u8_d16 v30, v27 offset:128
	ds_load_u8_d16 v32, v27 offset:144
	ds_load_u8_d16 v29, v27 offset:160
	ds_load_u8_d16 v31, v27 offset:176
	ds_load_u8_d16 v87, v27 offset:192
	ds_load_u8_d16 v104, v27 offset:208
	ds_load_u8_d16 v86, v27 offset:224
	ds_load_u8_d16 v103, v27 offset:240
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v69, 0, 1, s2
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v7, 0x110, 0, vcc_lo
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v76, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s0, 1, v69
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v21, v5, v7
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v7, v27 offset:256
	ds_load_u8_d16 v9, v27 offset:272
	ds_load_u8_d16 v5, v27 offset:288
	ds_load_u8_d16 v8, v27 offset:304
	ds_load_u8_d16 v11, v27 offset:320
	ds_load_u8_d16 v13, v27 offset:336
	ds_load_u8_d16 v10, v27 offset:352
	ds_load_u8_d16 v12, v27 offset:368
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v78, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b32_e32 v135, v23, v21
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v22, v27 offset:384
	ds_load_u8_d16 v24, v27 offset:400
	ds_load_u8_d16 v21, v27 offset:416
	ds_load_u8_d16 v23, v27 offset:432
	ds_load_u8_d16 v26, v27 offset:448
	ds_load_u8_d16 v28, v27 offset:464
	ds_load_u8_d16 v25, v27 offset:480
	ds_load_u8_d16 v27, v27 offset:496
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v136, 16, v135
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v71, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v85, v30, v32, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v88, v29, v31, 0xc0c0004
	v_perm_b32 v89, v18, v20, 0xc0c0004
	v_perm_b32 v90, v17, v19, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v81, s16, v135
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v115, v88, 16, v85
	v_lshl_or_b32 v114, v90, 16, v89
	v_dual_mov_b32 v95, s11 :: v_dual_mov_b32 v90, s6
	v_dual_mov_b32 v94, s10 :: v_dual_add_nc_u32 v73, s16, v136
	v_mov_b32_e32 v92, s8
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[77:80], v81 offset:4096
	ds_load_b128 v[96:99], v81
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v82, v87, v104, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v83, v86, v103, 0xc0c0004
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[69:72], v73 offset:4096
	ds_load_b128 v[73:76], v73
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v81, v4, v6, 0xc0c0004
	v_dual_mov_b32 v93, s9 :: v_dual_mov_b32 v88, s4
	v_lshl_or_b32 v116, v83, 16, v82
	v_perm_b32 v82, v2, v3, 0xc0c0004
	v_mov_b32_e32 v91, s7
	v_mov_b32_e32 v89, s5
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v83, v22, v24, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v85, v21, v23, 0xc0c0004
	v_lshl_or_b32 v113, v82, 16, v81
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v81, v26, v28, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v82, v25, v27, 0xc0c0004
	v_perm_b32 v100, v11, v13, 0xc0c0004
	v_perm_b32 v101, v10, v12, 0xc0c0004
	v_perm_b32 v102, v7, v9, 0xc0c0004
	v_perm_b32 v117, v5, v8, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[96:99], v[113:116], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v82, 16, v81
	v_lshl_or_b32 v98, v85, 16, v83
	v_lshl_or_b32 v97, v101, 16, v100
	v_lshl_or_b32 v96, v117, 16, v102
	v_wmma_i32_16x16x16_iu8 v[88:95], v[77:80], v[113:116], v[88:95] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[73:76], v[96:99], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[69:72], v[96:99], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v81, v107
	v_cvt_f32_i32_e32 v82, v108
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v75, v109
	v_cvt_f32_i32_e32 v79, v110
	v_cvt_f32_i32_e32 v76, v111
	v_cvt_f32_i32_e32 v80, v112
	v_cvt_f32_i32_e32 v73, v88
	v_cvt_f32_i32_e32 v77, v89
	v_cvt_f32_i32_e32 v74, v90
	v_cvt_f32_i32_e32 v78, v91
	v_cvt_f32_i32_e32 v69, v92
	v_cvt_f32_i32_e32 v71, v93
	v_cvt_f32_i32_e32 v70, v94
	v_cvt_f32_i32_e32 v72, v95
	v_cvt_f32_i32_e32 v83, v105
	v_cvt_f32_i32_e32 v85, v106
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v90, 0
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
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v84, s14, v136
	v_add_nc_u32_e32 v94, s14, v135
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v95, v87, v104, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v96, v86, v103, 0xc0c0004
	v_dual_mov_b32 v110, s11 :: v_dual_mov_b32 v105, s6
	v_perm_b32 v98, v29, v31, 0xc0c0004
	v_perm_b32 v99, v18, v20, 0xc0c0004
	v_perm_b32 v100, v17, v19, 0xc0c0004
	v_mov_b32_e32 v109, s10
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[86:89], v84 offset:4096
	ds_load_b128 v[90:93], v84
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v84, v30, v32, 0xc0c0004
	v_mov_b32_e32 v107, s8
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[17:20], v94 offset:4096
	ds_load_b128 v[29:32], v94
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v4, v4, v6, 0xc0c0004
	v_perm_b32 v2, v2, v3, 0xc0c0004
	v_lshl_or_b32 v97, v96, 16, v95
	v_lshl_or_b32 v96, v98, 16, v84
	v_lshl_or_b32 v95, v100, 16, v99
	v_dual_mov_b32 v108, s9 :: v_dual_mov_b32 v103, s4
	v_lshl_or_b32 v94, v2, 16, v4
	v_mov_b32_e32 v106, s7
	v_mov_b32_e32 v104, s5
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v25, v27, 0xc0c0004
	v_perm_b32 v22, v22, v24, 0xc0c0004
	v_perm_b32 v21, v21, v23, 0xc0c0004
	v_perm_b32 v11, v11, v13, 0xc0c0004
	v_perm_b32 v10, v10, v12, 0xc0c0004
	v_perm_b32 v23, v7, v9, 0xc0c0004
	v_perm_b32 v24, v5, v8, 0xc0c0004
	v_lshl_or_b32 v13, v25, 16, v26
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[29:32], v[94:97], v[103:110] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v21, 16, v22
	v_lshl_or_b32 v11, v10, 16, v11
	v_lshl_or_b32 v10, v24, 16, v23
	v_wmma_i32_16x16x16_iu8 v[103:110], v[17:20], v[94:97], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[90:93], v[10:13], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[86:89], v[10:13], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v102, v3
	v_cvt_f32_i32_e32 v99, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v101, v5
	v_cvt_f32_i32_e32 v97, v6
	v_cvt_f32_i32_e32 v100, v7
	v_cvt_f32_i32_e32 v95, v8
	v_cvt_f32_i32_e32 v98, v9
	v_cvt_f32_i32_e32 v93, v103
	v_cvt_f32_i32_e32 v96, v104
	v_cvt_f32_i32_e32 v91, v105
	v_cvt_f32_i32_e32 v94, v106
	v_cvt_f32_i32_e32 v89, v107
	v_cvt_f32_i32_e32 v92, v108
	v_cvt_f32_i32_e32 v88, v109
	v_cvt_f32_i32_e32 v90, v110
	v_cvt_f32_i32_e32 v84, v2
.LBB0_12:
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 27
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s14
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s31, s15
	.loc	1 390 40 is_stmt 0              ; generate_amdgcn.py:390:40
	s_mul_i32 s4, s0, s35
	.loc	1 387 34 is_stmt 1              ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(29)
	v_add_lshl_u32 v2, v68, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(28)
	v_add_lshl_u32 v3, v67, s4, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s0, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v1, 32, v1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 394 39                        ; generate_amdgcn.py:394:39
	v_add3_u32 v138, s33, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_add3_u32 v1, 0, v16, v1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_and_b32 s13, s13, 0xffff
	s_waitcnt lgkmcnt(19)
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v87, 0, v14
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v3, v3, s[28:31], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v4, v138, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(17)
	v_add_nc_u32_e32 v86, v1, v15
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v137, v2, s[12:15], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v2, 0, 1, s3
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v17, s47, v33
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v110, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v2
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v105, 0
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v106, 0 :: v_dual_lshlrev_b32 v1, 16, v3
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v86, v1 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v1, v3, s[28:31], 0 offen
	v_mov_b32_e32 v103, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[13:16], v87 offset:33792
	ds_load_b128 v[9:12], v87 offset:33808
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[5:8], v87 offset:34304
	ds_load_b128 v[1:4], v87 offset:34320
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v86, v18 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v153, v17
	ds_load_u8_d16 v154, v17 offset:16
	ds_load_u8_d16 v147, v17 offset:32
	ds_load_u8_d16 v149, v17 offset:48
	ds_load_u8_d16 v160, v17 offset:64
	ds_load_u8_d16 v162, v17 offset:80
	ds_load_u8_d16 v159, v17 offset:96
	ds_load_u8_d16 v161, v17 offset:112
	ds_load_u8_d16 v164, v17 offset:128
	ds_load_u8_d16 v166, v17 offset:144
	ds_load_u8_d16 v163, v17 offset:160
	ds_load_u8_d16 v165, v17 offset:176
	ds_load_u8_d16 v168, v17 offset:192
	ds_load_u8_d16 v170, v17 offset:208
	ds_load_u8_d16 v167, v17 offset:224
	ds_load_u8_d16 v169, v17 offset:240
	ds_load_u8_d16 v140, v17 offset:256
	ds_load_u8_d16 v142, v17 offset:272
	ds_load_u8_d16 v139, v17 offset:288
	ds_load_u8_d16 v141, v17 offset:304
	ds_load_u8_d16 v144, v17 offset:320
	ds_load_u8_d16 v146, v17 offset:336
	ds_load_u8_d16 v143, v17 offset:352
	ds_load_u8_d16 v145, v17 offset:368
	ds_load_u8_d16 v150, v17 offset:384
	ds_load_u8_d16 v152, v17 offset:400
	ds_load_u8_d16 v148, v17 offset:416
	ds_load_u8_d16 v151, v17 offset:432
	ds_load_u8_d16 v156, v17 offset:448
	ds_load_u8_d16 v158, v17 offset:464
	ds_load_u8_d16 v155, v17 offset:480
	ds_load_u8_d16 v157, v17 offset:496
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
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
	v_add_nc_u32_e32 v18, s46, v135
	v_add_nc_u32_e32 v17, s46, v136
	ds_load_b128 v[112:115], v18 offset:4096
	ds_load_b128 v[116:119], v18
	ds_load_b128 v[104:107], v17 offset:4096
	ds_load_b128 v[108:111], v17
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v17, v164, v166, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v21, v163, v165, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v19, v168, v170, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v20, v167, v169, 0xc0c0004
	v_perm_b32 v22, v160, v162, 0xc0c0004
	v_perm_b32 v23, v159, v161, 0xc0c0004
	v_lshl_or_b32 v122, v21, 16, v17
	v_perm_b32 v17, v153, v154, 0xc0c0004
	v_perm_b32 v18, v147, v149, 0xc0c0004
	v_lshl_or_b32 v123, v20, 16, v19
	v_lshl_or_b32 v121, v23, 16, v22
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v124, v156, v158, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v125, v155, v157, 0xc0c0004
	v_lshl_or_b32 v120, v18, 16, v17
	v_dual_mov_b32 v24, s11 :: v_dual_mov_b32 v21, s8
	v_dual_mov_b32 v23, s10 :: v_dual_mov_b32 v22, s9
	v_dual_mov_b32 v20, s7 :: v_dual_mov_b32 v19, s6
	v_dual_mov_b32 v18, s5 :: v_dual_mov_b32 v17, s4
	v_perm_b32 v126, v150, v152, 0xc0c0004
	v_perm_b32 v127, v148, v151, 0xc0c0004
	v_perm_b32 v128, v144, v146, 0xc0c0004
	v_perm_b32 v129, v143, v145, 0xc0c0004
	v_perm_b32 v130, v140, v142, 0xc0c0004
	v_perm_b32 v131, v139, v141, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[116:119], v[120:123], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v119, v125, 16, v124
	v_lshl_or_b32 v118, v127, 16, v126
	v_lshl_or_b32 v117, v129, 16, v128
	v_lshl_or_b32 v116, v131, 16, v130
	v_wmma_i32_16x16x16_iu8 v[17:24], v[112:115], v[120:123], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[108:111], v[116:119], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[104:107], v[116:119], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v113, v27
	v_cvt_f32_i32_e32 v117, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v106, v29
	v_cvt_f32_i32_e32 v112, v30
	v_cvt_f32_i32_e32 v109, v31
	v_cvt_f32_i32_e32 v114, v32
	v_cvt_f32_i32_e32 v110, v17
	v_cvt_f32_i32_e32 v115, v18
	v_cvt_f32_i32_e32 v111, v19
	v_cvt_f32_i32_e32 v116, v20
	v_cvt_f32_i32_e32 v104, v21
	v_cvt_f32_i32_e32 v107, v22
	v_cvt_f32_i32_e32 v105, v23
	v_cvt_f32_i32_e32 v108, v24
	v_cvt_f32_i32_e32 v118, v25
	v_cvt_f32_i32_e32 v119, v26
.LBB0_14:
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_b128 v[29:32], v87 offset:33792
	ds_load_b128 v[25:28], v87 offset:33808
	ds_load_b128 v[21:24], v87 offset:34304
	ds_load_b128 v[17:20], v87 offset:34320
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v125, 0
	v_mov_b32_e32 v120, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v103, s45, v136
	v_add_nc_u32_e32 v120, s45, v135
	ds_load_b128 v[128:131], v103 offset:4096
	ds_load_b128 v[132:135], v103
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v103, v164, v166, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v123, v163, v165, 0xc0c0004
	v_perm_b32 v124, v160, v162, 0xc0c0004
	v_perm_b32 v125, v159, v161, 0xc0c0004
	v_mov_b32_e32 v166, s11
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v121, v168, v170, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v122, v167, v169, 0xc0c0004
	v_mov_b32_e32 v165, s10
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[167:170], v120 offset:4096
	ds_load_b128 v[171:174], v120
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_lshl_or_b32 v177, v123, 16, v103
	v_perm_b32 v103, v153, v154, 0xc0c0004
	v_perm_b32 v120, v147, v149, 0xc0c0004
	v_lshl_or_b32 v178, v122, 16, v121
	v_lshl_or_b32 v176, v125, 16, v124
	v_dual_mov_b32 v164, s9 :: v_dual_mov_b32 v163, s8
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v175, v120, 16, v103
	v_dual_mov_b32 v162, s7 :: v_dual_mov_b32 v161, s6
	v_dual_mov_b32 v160, s5 :: v_dual_mov_b32 v159, s4
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v103, v156, v158, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v136, v155, v157, 0xc0c0004
	v_perm_b32 v147, v150, v152, 0xc0c0004
	v_perm_b32 v148, v148, v151, 0xc0c0004
	v_perm_b32 v144, v144, v146, 0xc0c0004
	v_perm_b32 v143, v143, v145, 0xc0c0004
	v_perm_b32 v145, v140, v142, 0xc0c0004
	v_perm_b32 v139, v139, v141, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[171:174], v[175:178], v[159:166] neg_lo:[1,1,0]
	v_lshl_or_b32 v142, v136, 16, v103
	v_lshl_or_b32 v141, v148, 16, v147
	v_lshl_or_b32 v140, v143, 16, v144
	v_lshl_or_b32 v139, v139, 16, v145
	v_wmma_i32_16x16x16_iu8 v[159:166], v[167:170], v[175:178], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[132:135], v[139:142], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[128:131], v[139:142], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v103, v120
	v_cvt_f32_i32_e32 v131, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v129, v122
	v_cvt_f32_i32_e32 v134, v123
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v128, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v132, v127
	v_cvt_f32_i32_e32 v124, v159
	v_cvt_f32_i32_e32 v130, v160
	v_cvt_f32_i32_e32 v127, v161
	v_cvt_f32_i32_e32 v133, v162
	v_cvt_f32_i32_e32 v120, v163
	v_cvt_f32_i32_e32 v123, v164
	v_cvt_f32_i32_e32 v121, v165
	v_cvt_f32_i32_e32 v125, v166
.LBB0_16:
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
	v_mul_lo_u32 v33, s27, v33
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s34, s34, s27
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s0, s35
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v68, v68, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v67, v67, s1, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s0, -1, 0
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v135, v138, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v136, 16, v0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v135, 0x80000000, v135, vcc_lo
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v34, 1, v34
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v67, v67, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v68, v68, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v33, s34, s33, v33
	s_mov_b32 s15, 0x76543210
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_lshlrev_b32 v67, 16, v67
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	ds_store_b32 v86, v67 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v67, v135, s[28:31], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v135.l, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_mov_b16_e64 v135.h, v137.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v137, 0x7632 :: v_dual_mul_f32 v138, v102, v135
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v145, v75, v135
	v_mul_f32_e32 v148, v77, v135
	v_mul_f32_e32 v149, v73, v135
	v_mul_f32_e32 v78, v78, v135
	v_mul_f32_e32 v150, v74, v135
	v_mul_f32_e32 v151, v71, v135
	v_mul_f32_e32 v72, v72, v135
	v_mul_f32_e32 v153, v70, v135
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v9, v145, v9, v52
	v_fma_f32 v5, v149, v5, v44
	v_fma_f32 v6, v148, v6, v45
	v_fma_f32 v7, v150, v7, v40
	v_fma_f32 v8, v78, v8, v42
	v_fma_f32 v2, v151, v2, v39
	v_fma_f32 v3, v153, v3, v37
	v_fma_f32 v4, v72, v4, v36
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v141, v83, v135
	v_mul_f32_e32 v144, v79, v135
	v_mul_f32_e32 v146, v80, v135
	v_mul_f32_e32 v147, v76, v135
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v92, v92, v135
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v52, v9, s2
	v_cndmask_b32_e64 v45, v45, v6, s2
	v_cndmask_b32_e64 v44, v44, v5, s2
	v_cndmask_b32_e64 v42, v42, v8, s2
	v_cndmask_b32_e64 v40, v40, v7, s2
	v_cndmask_b32_e64 v39, v39, v2, s2
	v_cndmask_b32_e64 v36, v36, v4, s2
	v_cndmask_b32_e64 v37, v37, v3, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[2:5], v87 offset:33792
	ds_load_b128 v[6:9], v87 offset:33808
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v139, v84, v135
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v140, v85, v135
	v_mul_f32_e32 v142, v82, v135
	v_mul_f32_e32 v143, v81, v135
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v100, v100, v135
	v_mul_f32_e32 v89, v89, v135
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v152, v69, v135
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v13, v141, v13, v60
	v_fma_f32 v10, v144, v10, v53
	v_fma_f32 v11, v147, v11, v48
	v_fma_f32 v12, v146, v12, v49
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v18, v92, v18, v47
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v90, v90, v135
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v29, v139, v29, v35
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v15, v143, v15, v56
	v_fma_f32 v16, v142, v16, v57
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v26, v100, v26, v63
	v_fma_f32 v17, v89, v17, v46
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v78, v152, v1, v38
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v1, v33, v34, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v60, v13, s2
	v_cndmask_b32_e64 v53, v53, v10, s2
	v_cndmask_b32_e64 v49, v49, v12, s2
	v_cndmask_b32_e64 v48, v48, v11, s2
	v_cndmask_b32_e64 v18, v47, v18, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v47, 16, v68
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v14, v140, v14, v61
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	ds_load_b128 v[10:13], v87 offset:34304
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v20, v90, v20, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v35, v29, s2
	v_cndmask_b32_e64 v35, v57, v16, s2
	v_cndmask_b32_e64 v33, v61, v14, s2
	v_cndmask_b32_e64 v56, v56, v15, s2
	v_cndmask_b32_e64 v26, v63, v26, s2
	v_cndmask_b32_e64 v46, v46, v17, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v63, v114, v47
	ds_load_b128 v[14:17], v87 offset:34320
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v43, v20, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v43, v118, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v84.h, v135.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v63, v63, v9, v49
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v97, v97, v135
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v72, v110, v47
	v_mul_f32_e32 v89, v116, v47
	v_mul_f32_e32 v90, v111, v47
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v2, v34
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v63, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v68, v115, v47
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v25, v97, v25, v62
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v97, v108, v47
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v72, v72, v10, v44
	v_fma_f32 v68, v68, v11, v45
	v_fma_f32 v90, v90, v12, v40
	v_fma_f32 v89, v89, v13, v42
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v98, v98, v135
	v_mul_f32_e32 v93, v93, v135
	v_mul_f32_e32 v94, v94, v135
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v97, v97, v17, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v91, v91, v135
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v28, v98, v28, v59
	v_fma_f32 v21, v93, v21, v54
	v_fma_f32 v24, v94, v24, v51
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v78, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v93, v107, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v89, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v94, v104, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v97, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v98, v105, v47
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v91, v23, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v51, v24, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v91, v133, v47
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v93, v93, v15, v39
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v99, v99, v135
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v76.h, v135.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v88, v88, v135
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v59, v28, s2
	v_cndmask_b32_e64 v21, v54, v21, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v31, v99, v31, v64
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v54, v117, v47
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v19, v88, v19, v41
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v59, v112, v47
	v_mul_f32_e32 v60, v106, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v64, v31, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v64, v109, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v41, v19, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v54, v54, v5, v35
	v_fma_f32 v60, v60, v6, v52
	v_fma_f32 v59, v59, v7, v53
	v_fma_f32 v64, v64, v8, v48
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v95, v95, v135
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v62, v25, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v62, v122, v47
	v_mul_f32_e32 v78, v130, v47
	v_mul_f32_e32 v99, v125, v47
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v27, v95, v27, v58
	v_fma_f32 v30, v138, v30, v66
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v50, v23, s2
	v_cndmask_b32_e64 v34, v34, v43, s3
	v_cndmask_b32_e64 v43, v53, v59, s3
	v_cndmask_b32_e64 v27, v58, v27, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v58, v129, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v66, v30, s2
	v_cndmask_b32_e64 v48, v48, v64, s3
	v_cndmask_b32_e64 v39, v39, v93, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v81.h, v135.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v51, v103, v47
	v_mul_f32_e32 v92, v127, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v54, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v88, v124, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v52, v60, s3
	v_cndmask_b32_e64 v45, v45, v68, s3
	v_cndmask_b32_e64 v44, v44, v72, s3
	v_cndmask_b32_e64 v40, v40, v90, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v73.h, v135.l
	v_mov_b16_e64 v70.h, v135.l
	v_mov_b16_e64 v102.h, v135.l
	v_mov_b16_e64 v85.h, v135.l
	v_mov_b16_e64 v83.h, v135.l
	v_mov_b16_e64 v82.h, v135.l
	v_mov_b16_e64 v80.h, v135.l
	v_mov_b16_e64 v79.h, v135.l
	v_mov_b16_e64 v77.h, v135.l
	v_mov_b16_e64 v75.h, v135.l
	v_mov_b16_e64 v74.h, v135.l
	v_mov_b16_e64 v71.h, v135.l
	v_mov_b16_e64 v69.h, v135.l
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v67
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v67, v94, v14, v38
	v_fma_f32 v94, v98, v16, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v86, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v87 offset:34304
	ds_load_b128 v[14:17], v87 offset:34320
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v67, s3
	v_cndmask_b32_e64 v37, v37, v94, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[6:9], v87 offset:33808
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v13, v91, v13, v24
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v17, v99, v17, v20
	v_fma_f32 v12, v92, v12, v23
	v_fma_f32 v10, v88, v10, v21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v6, v62, v6, v25
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v24, v13, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v96, v96, v135
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v20, v17, s3
	v_cndmask_b32_e64 v12, v23, v12, s3
	v_cndmask_b32_e64 v10, v21, v10, s3
	v_cndmask_b32_e64 v6, v25, v6, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v22, v96, v22, v55
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v96, v120, v47
	v_mul_f32_e32 v101, v101, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v55, v22, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v14, v96, v14, v46
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v55, v113, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v11, v78, v11, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v46, v14, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v41, v119, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v55, v55, v4, v56
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v22, v11, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v6
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v41, v41, v3, v33
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[2:5], v87 offset:33792
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v32, v101, v32, v65
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v46
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v41, s3
	v_cndmask_b32_e64 v41, v56, v55, s3
	v_cndmask_b32_e64 v32, v65, v32, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v65, v132, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s13
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s4
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v9, v65, v9, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v28, v9, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v46
	v_mul_f32_e32 v28, 0xbfb8aa3b, v12
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v4, v58, v4, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	v_mul_f32_e32 v25, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v31, v4, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v46, v46, v64
	v_cndmask_b32_e64 v28, 0, 0x42800000, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v20, 0xbfb8aa3b, v4
	v_ldexp_f32 v22, v22, v55
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s5
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v28, 0xbfb8aa3b, v12 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v9
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v93, null, v46, v46, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v94, s13, v17, v46, v17
	v_rcp_f32_e32 v112, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v4
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v25, v25, v56
	v_ldexp_f32 v20, v20, v53
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v57, v134, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_add_f32 v20, 1.0, v20
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v5, v57, v5, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v56, null, v20, v20, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v32, v5, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v100, v56
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v117, -v56, v100, 1.0
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v95, v123, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v100, v117, v100
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v66, v126, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v15, v95, v15, v18
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v8, v66, v8, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v18, v15, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v27, v8, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v57
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v61, v128, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v128, -v93, v112, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v57, s2, v4, v20, v4
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v50, v131, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v112, v128, v112
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v117, v57, v100
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v3, v50, v3, v30
	v_fma_f32 v7, v61, v7, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, s7
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v30, v3, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v30, 0xbfb8aa3b, v14 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v26, v7, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v10
	v_ldexp_f32 v28, v28, v61
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v30
	v_exp_f32_e32 v27, v27
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v64, null, v24, v24, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v30, 0, 0x42800000, s12
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s12
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v105, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s8
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v27, v27, v58
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v87, null, v28, v28, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v27, 1.0, v27 :: v_dual_fmac_f32 v26, 0xbfb8aa3b, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v61, s4, v6, v22, v6
	v_rcp_f32_e32 v109, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v66, null, v27, v27, v11
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v26, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v133, -v56, v117, v57
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v30, v30, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v106, v66
	v_div_scale_f32 v63, s5, v9, v25, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_dual_fmac_f32 v117, v133, v100 :: v_dual_add_f32 v30, 1.0, v30
	v_fma_f32 v125, -v87, v109, 1.0
	v_div_scale_f32 v88, s10, v12, v28, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v26, v26, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v91, null, v30, v30, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v122, -v66, v106, 1.0
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v47, v121, v47 :: v_dual_add_f32 v26, 1.0, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v121, -v64, v105, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v111, v91
	v_fmac_f32_e32 v106, v122, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v16, v47, v16, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v26, v26, v10
	v_fmac_f32_e32 v105, v121, v105
	v_div_scale_f32 v72, s8, v10, v26, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v19, v16, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v107, v68
	v_fma_f32 v127, -v91, v111, 1.0
	v_fmac_f32_e32 v109, v125, v109
	v_div_scale_f32 v92, s12, v14, v30, v14
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v32, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v128, v94, v112 :: v_dual_mul_f32 v125, v88, v109
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v123, -v68, v107, 1.0
	v_fma_f32 v143, -v87, v125, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v146, -v93, v128, v94
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, s14
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v125, v143, v109 :: v_dual_fmac_f32 v128, v146, v112
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v16
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v2, v51, v2, v29
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v32, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v29, v2, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v21, v21, v51
	v_mul_f32_e32 v18, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v29
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v32, v32, v65
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v29, 0, 0x42800000, s9
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v55, s1, v5, v21, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v13
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v65, s6, v8, v24, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v29, v29
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v95, null, v32, v32, v16
	v_mul_f32_e32 v121, v65, v105
	v_div_scale_f32 v96, s14, v16, v32, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v18, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v113, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fma_f32 v139, -v64, v121, v65
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v29, v29, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v60, null, v22, v22, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v121, v139, v105
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v103, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v18, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v129, -v95, v113, 1.0
	v_div_scale_f32 v78, null, v29, v29, v13
	v_div_scale_f32 v86, s9, v13, v29, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v108, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v119, -v60, v103, 1.0
	v_fmac_f32_e32 v113, v129, v113
	v_div_scale_f32 v51, null, v18, v18, v2
	v_div_scale_f32 v53, s0, v2, v18, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v129, v96, v113
	v_rcp_f32_e32 v98, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v124, -v78, v108, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v147, -v95, v129, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v108, v124, v108
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v129, v147, v113
	v_fma_f32 v115, -v51, v98, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v124, v86, v108
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v98, v115, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v142, -v78, v124, v86
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v107, v123, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v115, v53, v98 :: v_dual_fmac_f32 v124, v142, v108
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v131, -v51, v115, v53
	v_fmac_f32_e32 v115, v131, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v19, v19, v47
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v19, v19, v3
	v_div_scale_f32 v50, vcc_lo, v3, v19, v3
	v_rcp_f32_e32 v97, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v114, -v47, v97, 1.0
	v_fmac_f32_e32 v97, v114, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v31, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v114, v50, v97
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v130, -v47, v114, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, s11
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v114, v130, v97 :: v_dual_fmac_f32 v31, 0xbfb8aa3b, v15
	v_div_scale_f32 v67, s7, v11, v27, v11
	v_fma_f32 v47, -v47, v114, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v31, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v122, v67, v106
	v_fma_f32 v50, -v51, v115, v53
	v_fma_f32 v53, -v56, v117, v57
	v_div_fmas_f32 v47, v47, v97, v114
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v140, -v66, v122, v67
	v_fmac_f32_e32 v103, v119, v103
	v_div_fmas_f32 v50, v50, v98, v115
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v31, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v62, null, v25, v25, v9
	v_dual_fmac_f32 v122, v140, v106 :: v_dual_mul_f32 v119, v61, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v104, v62
	v_div_fixup_f32 v2, v50, v18, v2
	v_mul_f32_e32 v123, v72, v107
	v_fma_f32 v135, -v60, v119, v61
	v_div_scale_f32 v89, null, v31, v31, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v34, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v141, -v68, v123, v72
	v_fma_f32 v57, -v64, v121, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v110, v89
	v_fma_f32 v120, -v62, v104, 1.0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v85.l, v2.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v65, -v95, v129, v96
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v64, -v93, v128, v94
	v_fmac_f32_e32 v104, v120, v104
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v126, -v89, v110, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v23, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v120, v63, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v110, v126, v110
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v138, -v62, v120, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v120, v138, v104 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v7
	v_fma_f32 v56, -v62, v120, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, null, v21, v21, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v99, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v58, null, v23, v23, v7
	v_div_scale_f32 v59, s3, v7, v23, v7
	v_rcp_f32_e32 v101, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v116, -v54, v99, 1.0
	v_fmac_f32_e32 v99, v116, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v118, -v58, v101, 1.0
	v_dual_mul_f32 v116, v55, v99 :: v_dual_fmac_f32 v101, v118, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v132, -v54, v116, v55
	v_mul_f32_e32 v118, v59, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v116, v132, v99
	v_fma_f32 v134, -v58, v118, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v54, v116, v55
	v_fmac_f32_e32 v118, v134, v101
	v_div_scale_f32 v90, s11, v15, v31, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v51, v51, v99, v116
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v54, -v58, v118, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v126, v90, v110
	v_div_fixup_f32 v3, v47, v19, v3
	v_div_fmas_f32 v19, v53, v100, v117
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v51, v21, v5
	v_fma_f32 v144, -v89, v126, v90
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v33, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v111, v127, v111
	v_div_fmas_f32 v18, v54, v101, v118
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v126, v144, v110
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v102.l, v3.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v119, v135, v103
	v_div_fixup_f32 v4, v19, v20, v4
	v_mul_f32_e32 v127, v92, v111
	v_fma_f32 v58, -v66, v122, v67
	v_div_fixup_f32 v7, v18, v23, v7
	v_fma_f32 v55, -v60, v119, v61
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v41, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v145, -v91, v127, v92
	v_fma_f32 v60, -v78, v124, v86
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v35, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v55, v103, v119
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v127, v145, v111
	v_div_fmas_f32 v19, v56, v104, v120
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v21, v22, v6
	v_fmac_f32_e32 v123, v141, v107
	v_div_fmas_f32 v18, v57, v105, v121
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v61, -v87, v125, v88
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v52, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v68, v123, v72
	v_div_fmas_f32 v20, v58, v106, v122
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v9, v19, v25, v9
	v_fma_f32 v62, -v89, v126, v90
	v_div_fmas_f32 v19, v59, v107, v123
	s_mov_b32 vcc_lo, s9
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v84.l, v5.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v60, v108, v124
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v11, v20, v27, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v63, -v91, v127, v92
	v_div_fmas_f32 v22, v61, v109, v125
	s_mov_b32 vcc_lo, s11
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v43, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v23, v62, v110, v126
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v8, v18, v24, v8
	v_div_fixup_f32 v10, v19, v26, v10
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v19, 1, v84
	v_mov_b16_e32 v81.l, v6.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v13, v21, v29, v13
	v_div_fmas_f32 v21, v63, v111, v127
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v82.l, v7.h
	v_cmp_o_f32_e64 s2, v5, v5
	v_and_b32_e32 v18, 1, v102
	v_mov_b16_e32 v83.l, v4.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v9, v49, v9 :: v_dual_mul_f32 v8, v48, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v5, v5, v19, 0x7fff
	v_and_b32_e32 v19, 1, v81
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v13, v42, v13
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v14, v21, v30, v14
	s_mov_b32 vcc_lo, s13
	v_div_fixup_f32 v12, v22, v28, v12
	v_div_fmas_f32 v22, v64, v112, v128
	s_mov_b32 vcc_lo, s14
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v2, v20, 0x7fff
	v_and_b32_e32 v20, 1, v82
	v_cmp_o_f32_e64 s0, v3, v3
	v_add3_u32 v3, v3, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v6, v6
	v_and_b32_e32 v18, 1, v83
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v11, v45, v11 :: v_dual_mul_f32 v10, v44, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v80.l, v9.h
	v_mov_b16_e32 v79.l, v8.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v15, v23, v31, v15
	v_div_fmas_f32 v23, v65, v113, v129
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v6, v19, 0x7fff
	v_mov_b16_e32 v75.l, v13.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v38, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v7, v7
	v_add3_u32 v7, v7, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v4, v4, v18, 0x7fff
	v_mov_b16_e32 v77.l, v11.h
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v15, v39, v15 :: v_dual_and_b32 v2, 1, v80
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v76.l, v10.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v22, v46, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v18, 1, v79
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v23, v32, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v7.l, 0x7fff, v6.h, s5
	v_and_b32_e32 v6, 1, v75
	v_mov_b16_e32 v71.l, v14.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v40, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s6, v9, v9
	v_cmp_o_f32_e64 s7, v8, v8
	v_cmp_o_f32_e64 s1, v13, v13
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s3
	v_and_b32_e32 v4, 1, v77
	v_add3_u32 v2, v9, v2, 0x7fff
	v_and_b32_e32 v9, 1, v76
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v36, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v8, v8, v18, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v37, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v13, v6, 0x7fff
	v_and_b32_e32 v13, 1, v71
	v_mov_b16_e32 v73.l, v12.h
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s4
	v_cmp_eq_u32_e64 s4, 0, v136
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cmp_o_f32_e64 s0, v10, v10
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s2
	v_mov_b16_e32 v74.l, v15.h
	v_add3_u32 v4, v11, v4, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_and_b32_e32 v11, 1, v73
	v_add3_u32 v9, v10, v9, 0x7fff
	v_mov_b16_e32 v70.l, v17.h
	v_cndmask_b16 v2.l, 0x7fff, v8.h, s7
	v_mov_b16_e32 v69.l, v16.h
	v_cndmask_b32_e64 v10, v7, v3, s4
	v_cndmask_b32_e64 v3, v3, v7, s4
	v_cndmask_b32_e64 v0, 0x1054, v0, s4
	v_cndmask_b32_e64 v7, 0x3276, v137, s4
	v_cmp_o_f32_e64 s2, v12, v12
	v_and_b32_e32 v8, 1, v74
	v_add3_u32 v11, v12, v11, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s0
	v_and_b32_e32 v9, 1, v70
	v_cndmask_b32_e64 v12, v2, v5, s4
	v_cndmask_b32_e64 v2, v5, v2, s4
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s1
	v_and_b32_e32 v6, 1, v69
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v7, v7, 8, v7
	v_cmp_o_f32_e64 s3, v15, v15
	v_cmp_o_f32_e64 s5, v14, v14
	v_cmp_o_f32_e64 s6, v17, v17
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v8, v15, v8, 0x7fff
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v11.h, s2
	v_add3_u32 v9, v17, v9, 0x7fff
	v_permlanex16_b32 v11, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v2, v16, v6, 0x7fff
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v6, 0x760076, v7
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v8.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s6
	v_cndmask_b16 v7.l, 0x7fff, v2.h, s7
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v2, v6, 4, v6
	v_cndmask_b32_e64 v9, v8, v4, s4
	v_cndmask_b32_e64 v4, v4, v8, s4
	v_cndmask_b32_e64 v6, v5, v7, s4
	v_permlanex16_b32 v3, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x5040504, v0
	v_and_b32_e32 v13, 0x7060706, v2
	v_cndmask_b32_e64 v14, v7, v5, s4
	v_permlanex16_b32 v7, v4, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v6, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v3, v10, v0
	v_perm_b32 v3, v3, v10, v13
	v_perm_b32 v4, v11, v12, v0
	v_perm_b32 v5, v11, v12, v13
	v_perm_b32 v6, v7, v9, v0
	v_perm_b32 v7, v7, v9, v13
	v_perm_b32 v8, v15, v14, v0
	v_perm_b32 v9, v15, v14, v13
	s_clause 0x1
	buffer_store_b128 v[2:5], v1, s[24:27], 0 offen
	buffer_store_b128 v[6:9], v1, s[24:27], 0 offen offset:256
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 179
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16308
; TotalNumSgprs: 53
; NumVgprs: 179
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 53
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     179
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
