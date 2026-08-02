	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v95, 0xf0, v0
	v_lshrrev_b32_e32 v15, 3, v0
	v_or_b32_e32 v17, 0x3f0, v0
	v_and_b32_e32 v19, 4, v0
	v_lshlrev_b32_e32 v16, 2, v0
	v_lshrrev_b32_e32 v13, 3, v95
	v_lshlrev_b32_e32 v18, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v62, 0, v16
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s26, 31
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
	s_lshr_b32 s10, s10, 27
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
	v_or_b32_e32 v2, s30, v13
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
	s_lshl_b32 s34, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s6, 31
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_mul_lo_u32 v1, s35, v13
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
	v_or_b32_e32 v4, s30, v15
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v14, v33, 4, v1
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s7, s26, s30
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add3_u32 v1, s33, s18, v14
	v_add_nc_u32_e32 v2, s35, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_dual_cndmask_b32 v3, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_clause 0x1
	buffer_load_b128 v[5:8], v3, s[36:39], 0 offen
	buffer_load_b128 v[24:27], v2, s[36:39], 0 offen
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v2, s27, v1
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v1, s27, 6, v1
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v21, v33, 9, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v3, s35, v2
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 378 26 is_stmt 1              ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v22, 0x90, v21
	v_add_nc_u32_e32 v63, 0, v21
	v_xor_b32_e32 v23, 0x110, v21
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v4
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[28:31], v2, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v3, s[36:39], 0 offen
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_mul_lo_u32 v2, s26, v15
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 28, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s6, 63
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v4, s27, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s44, s30, 32
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v64, 0, v22
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add3_u32 v9, v2, v3, s34
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v3, s44, v13
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v10, s35, v4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v65, 0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v2, s7, v9
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s4, s31, v3
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v3, s35, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x1
	buffer_load_b128 v[38:41], v1, s[36:39], 0 offen
	buffer_load_b128 v[42:45], v3, s[36:39], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v1, 0x80000000, v4, s4
	v_cndmask_b32_e64 v3, 0x80000000, v10, s4
	s_clause 0x1
	buffer_load_b128 v[46:49], v1, s[36:39], 0 offen
	buffer_load_b128 v[50:53], v3, s[36:39], 0 offen
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 372 34 is_stmt 0              ; generate_amdgcn.py:372:34
	s_lshl_b32 s4, s26, 5
	v_lshlrev_b32_e32 v3, 4, v0
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 16, v33
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b32 v61, v1, s[8:11], 0 offen
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v1, s44, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add3_u32 v1, s7, s4, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_and_b32 v20, 8, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0x5f
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b32 v66, v1, s[8:11], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(8)
	v_perm_b32 v2, v24, v5, 0x5010400
	v_perm_b32 v5, v24, v5, 0x7030602
	v_perm_b32 v10, v25, v6, 0x5010400
	v_perm_b32 v11, v25, v6, 0x7030602
	v_perm_b32 v12, v26, v7, 0x5010400
	v_perm_b32 v24, v26, v7, 0x7030602
	v_perm_b32 v25, v27, v8, 0x5010400
	v_perm_b32 v26, v27, v8, 0x7030602
	v_lshrrev_b32_e32 v27, 8, v2
	v_lshrrev_b32_e32 v54, 8, v5
	v_lshrrev_b32_e32 v56, 8, v10
	v_lshrrev_b32_e32 v58, 8, v11
	v_lshrrev_b32_e32 v67, 24, v12
	v_lshrrev_b32_e32 v71, 24, v25
	v_lshrrev_b32_e32 v72, 8, v26
	v_lshrrev_b32_e32 v73, 24, v26
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(6)
	v_perm_b32 v74, v34, v28, 0x5010400
	v_perm_b32 v34, v34, v28, 0x7030602
	v_perm_b32 v77, v36, v30, 0x5010400
	v_perm_b32 v78, v36, v30, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v32, 24, v2
	v_lshrrev_b32_e32 v55, 24, v5
	v_lshrrev_b32_e32 v57, 24, v10
	v_lshrrev_b32_e32 v59, 24, v11
	v_lshrrev_b32_e32 v68, 8, v24
	v_lshrrev_b32_e32 v60, 8, v12
	v_lshrrev_b32_e32 v69, 24, v24
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v75, v35, v29, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v70, 8, v25
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v79, v37, v31, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v1.l, 0xff, v2.l
	v_and_b16 v2.l, 0xff, v5.l
	v_and_b16 v5.l, 0xff, v10.l
	v_and_b16 v6.l, 0xff, v11.l
	v_and_b16 v7.l, 0xff, v12.l
	v_and_b16 v7.h, 0xff, v12.h
	v_and_b16 v8.l, 0xff, v24.l
	v_and_b16 v10.l, 0xff, v25.l
	v_and_b16 v11.l, 0xff, v26.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v76, v35, v29, 0x7030602
	v_perm_b32 v80, v37, v31, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v12.l, 8, v27.l
	v_lshlrev_b16 v24.l, 8, v54.l
	v_lshlrev_b16 v25.l, 8, v56.l
	v_lshlrev_b16 v26.l, 8, v58.l
	v_lshlrev_b16 v27.h, 8, v67.l
	v_lshlrev_b16 v29.h, 8, v71.l
	v_lshlrev_b16 v30.l, 8, v72.l
	v_lshlrev_b16 v30.h, 8, v73.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v56, 8, v74
	v_lshrrev_b32_e32 v58, 8, v34
	v_lshrrev_b32_e32 v71, 24, v77
	v_and_b16 v37.l, 0xff, v78.l
	v_lshrrev_b32_e32 v72, 8, v78
	v_lshrrev_b32_e32 v73, 24, v78
	v_and_b16 v37.h, 0xff, v78.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(4)
	v_perm_b32 v78, v42, v38, 0x5010400
	v_and_b16 v1.h, 0xff, v2.h
	v_and_b16 v2.h, 0xff, v5.h
	v_and_b16 v5.h, 0xff, v10.h
	v_and_b16 v6.h, 0xff, v11.h
	v_and_b16 v8.h, 0xff, v24.h
	v_and_b16 v10.h, 0xff, v25.h
	v_and_b16 v11.h, 0xff, v26.h
	v_lshlrev_b16 v12.h, 8, v32.l
	v_lshlrev_b16 v24.h, 8, v55.l
	v_lshlrev_b16 v25.h, 8, v57.l
	v_lshlrev_b16 v26.h, 8, v59.l
	v_lshlrev_b16 v28.l, 8, v68.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v57, 24, v74
	v_lshrrev_b32_e32 v59, 24, v34
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v27.l, 8, v60.l
	v_lshlrev_b16 v28.h, 8, v69.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v60, 8, v75
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v42, v42, v38, 0x7030602
	v_lshlrev_b16 v29.l, 8, v70.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v31.l, 0xff, v74.l
	v_and_b16 v31.h, 0xff, v74.h
	v_lshrrev_b32_e32 v67, 24, v75
	v_lshrrev_b32_e32 v74, 8, v79
	s_waitcnt vmcnt(2)
	v_perm_b32 v83, v50, v46, 0x5010400
	v_and_b16 v32.l, 0xff, v34.l
	v_and_b16 v32.h, 0xff, v34.h
	v_and_b16 v34.l, 0xff, v75.l
	v_and_b16 v34.h, 0xff, v75.h
	v_and_b16 v35.l, 0xff, v76.l
	v_lshrrev_b32_e32 v68, 8, v76
	v_lshrrev_b32_e32 v69, 24, v76
	v_and_b16 v35.h, 0xff, v76.h
	v_and_b16 v36.l, 0xff, v77.l
	v_lshrrev_b32_e32 v70, 8, v77
	v_and_b16 v36.h, 0xff, v77.h
	v_and_b16 v54.l, 0xff, v79.l
	v_lshrrev_b32_e32 v75, 24, v79
	v_and_b16 v54.h, 0xff, v79.h
	v_and_b16 v55.l, 0xff, v80.l
	v_lshrrev_b32_e32 v76, 8, v80
	v_lshrrev_b32_e32 v77, 24, v80
	v_and_b16 v55.h, 0xff, v80.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v79, v43, v39, 0x5010400
	v_perm_b32 v43, v43, v39, 0x7030602
	v_perm_b32 v80, v44, v40, 0x5010400
	v_perm_b32 v44, v44, v40, 0x7030602
	v_perm_b32 v81, v45, v41, 0x5010400
	v_perm_b32 v82, v45, v41, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v50, v50, v46, 0x7030602
	v_perm_b32 v84, v51, v47, 0x5010400
	v_perm_b32 v51, v51, v47, 0x7030602
	v_perm_b32 v85, v52, v48, 0x5010400
	v_perm_b32 v52, v52, v48, 0x7030602
	v_perm_b32 v86, v53, v49, 0x5010400
	v_perm_b32 v87, v53, v49, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v1.l, v1.l, v12.l
	v_or_b16 v2.l, v2.l, v24.l
	v_or_b16 v7.h, v7.h, v27.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.l, 8, v56.l
	v_lshlrev_b16 v24.l, 8, v58.l
	v_lshlrev_b16 v27.h, 8, v71.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v56, 8, v78
	v_or_b16 v1.h, v1.h, v12.h
	v_or_b16 v2.h, v2.h, v24.h
	v_or_b16 v8.l, v8.l, v28.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.h, 8, v57.l
	v_lshlrev_b16 v24.h, 8, v59.l
	v_lshlrev_b16 v28.l, 8, v72.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v57, 24, v78
	v_or_b16 v5.l, v5.l, v25.l
	v_or_b16 v8.h, v8.h, v28.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v25.l, 8, v60.l
	v_lshlrev_b16 v28.h, 8, v73.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v58, 8, v42
	v_or_b16 v5.h, v5.h, v25.h
	v_or_b16 v10.l, v10.l, v29.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v25.h, 8, v67.l
	v_lshlrev_b16 v29.l, 8, v74.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v59, 24, v42
	v_and_b16 v38.l, 0xff, v78.l
	v_and_b16 v38.h, 0xff, v78.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v78, 8, v83
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v6.l, v6.l, v26.l
	v_or_b16 v6.h, v6.h, v26.h
	v_or_b16 v7.l, v7.l, v27.l
	v_or_b16 v10.h, v10.h, v29.h
	v_or_b16 v11.l, v11.l, v30.l
	v_or_b16 v11.h, v11.h, v30.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v26.l, 8, v68.l
	v_lshlrev_b16 v26.h, 8, v69.l
	v_lshlrev_b16 v27.l, 8, v70.l
	v_lshlrev_b16 v29.h, 8, v75.l
	v_lshlrev_b16 v30.l, 8, v76.l
	v_lshlrev_b16 v30.h, 8, v77.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v39.l, 0xff, v42.l
	v_and_b16 v39.h, 0xff, v42.h
	v_and_b16 v40.l, 0xff, v79.l
	v_lshrrev_b32_e32 v60, 8, v79
	v_lshrrev_b32_e32 v67, 24, v79
	v_and_b16 v40.h, 0xff, v79.h
	v_and_b16 v41.l, 0xff, v43.l
	v_lshrrev_b32_e32 v68, 8, v43
	v_lshrrev_b32_e32 v69, 24, v43
	v_and_b16 v41.h, 0xff, v43.h
	v_and_b16 v42.l, 0xff, v80.l
	v_lshrrev_b32_e32 v70, 8, v80
	v_lshrrev_b32_e32 v71, 24, v80
	v_and_b16 v42.h, 0xff, v80.h
	v_and_b16 v43.l, 0xff, v44.l
	v_lshrrev_b32_e32 v72, 8, v44
	v_lshrrev_b32_e32 v73, 24, v44
	v_and_b16 v43.h, 0xff, v44.h
	v_and_b16 v44.l, 0xff, v81.l
	v_lshrrev_b32_e32 v74, 8, v81
	v_lshrrev_b32_e32 v75, 24, v81
	v_and_b16 v44.h, 0xff, v81.h
	v_and_b16 v45.l, 0xff, v82.l
	v_lshrrev_b32_e32 v76, 8, v82
	v_lshrrev_b32_e32 v77, 24, v82
	v_and_b16 v45.h, 0xff, v82.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v46.l, 0xff, v83.l
	v_lshrrev_b32_e32 v79, 24, v83
	v_and_b16 v46.h, 0xff, v83.h
	v_and_b16 v47.l, 0xff, v50.l
	v_lshrrev_b32_e32 v80, 8, v50
	v_lshrrev_b32_e32 v81, 24, v50
	v_and_b16 v47.h, 0xff, v50.h
	v_and_b16 v48.l, 0xff, v84.l
	v_lshrrev_b32_e32 v82, 8, v84
	v_lshrrev_b32_e32 v83, 24, v84
	v_and_b16 v48.h, 0xff, v84.h
	v_and_b16 v49.l, 0xff, v51.l
	v_lshrrev_b32_e32 v84, 8, v51
	v_lshrrev_b32_e32 v88, 24, v51
	v_and_b16 v49.h, 0xff, v51.h
	v_and_b16 v50.l, 0xff, v85.l
	v_lshrrev_b32_e32 v89, 8, v85
	v_lshrrev_b32_e32 v90, 24, v85
	v_and_b16 v50.h, 0xff, v85.h
	v_and_b16 v51.l, 0xff, v52.l
	v_lshrrev_b32_e32 v85, 8, v52
	v_lshrrev_b32_e32 v91, 24, v52
	v_and_b16 v51.h, 0xff, v52.h
	v_and_b16 v52.l, 0xff, v86.l
	v_lshrrev_b32_e32 v92, 8, v86
	v_lshrrev_b32_e32 v93, 24, v86
	v_and_b16 v52.h, 0xff, v86.h
	v_lshrrev_b32_e32 v86, 8, v87
	v_lshrrev_b32_e32 v94, 24, v87
	v_or_b16 v12.l, v31.l, v12.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v1
	ds_store_b16_d16_hi v63, v1 offset:32
	ds_store_b16 v63, v2 offset:64
	ds_store_b16_d16_hi v63, v2 offset:96
	ds_store_b16_d16_hi v64, v5 offset:32
	ds_store_b16 v64, v6 offset:64
	ds_store_b16_d16_hi v64, v6 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v1.h, v32.l, v24.l
	v_or_b16 v24.l, v36.h, v27.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v27.h, 8, v56.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v2.l, v32.h, v24.h
	v_or_b16 v24.h, v37.l, v28.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v28.l, 8, v57.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v2.h, v34.l, v25.l
	v_or_b16 v25.l, v37.h, v28.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v28.h, 8, v58.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v5.h, v34.h, v25.h
	v_or_b16 v25.h, v54.l, v29.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v29.l, 8, v59.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v1.l, v31.h, v12.h
	v_lshlrev_b16 v36.h, 8, v78.l
	v_and_b16 v53.l, 0xff, v87.l
	v_and_b16 v53.h, 0xff, v87.h
	v_or_b16 v6.l, v35.l, v26.l
	v_or_b16 v6.h, v35.h, v26.h
	v_or_b16 v12.h, v36.l, v27.l
	v_or_b16 v26.l, v54.h, v29.h
	v_or_b16 v26.h, v55.l, v30.l
	v_or_b16 v27.l, v55.h, v30.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v29.h, 8, v60.l
	v_lshlrev_b16 v30.l, 8, v67.l
	v_lshlrev_b16 v30.h, 8, v68.l
	v_lshlrev_b16 v31.l, 8, v69.l
	v_lshlrev_b16 v31.h, 8, v70.l
	v_lshlrev_b16 v32.l, 8, v71.l
	v_lshlrev_b16 v32.h, 8, v72.l
	v_lshlrev_b16 v34.l, 8, v73.l
	v_lshlrev_b16 v34.h, 8, v74.l
	v_lshlrev_b16 v35.l, 8, v75.l
	v_lshlrev_b16 v35.h, 8, v76.l
	v_lshlrev_b16 v36.l, 8, v77.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v37.l, 8, v79.l
	v_lshlrev_b16 v37.h, 8, v80.l
	v_lshlrev_b16 v54.l, 8, v81.l
	v_lshlrev_b16 v54.h, 8, v82.l
	v_lshlrev_b16 v55.l, 8, v83.l
	v_lshlrev_b16 v55.h, 8, v84.l
	v_lshlrev_b16 v56.l, 8, v88.l
	v_lshlrev_b16 v56.h, 8, v89.l
	v_lshlrev_b16 v57.l, 8, v90.l
	v_lshlrev_b16 v57.h, 8, v85.l
	v_lshlrev_b16 v58.l, 8, v91.l
	v_lshlrev_b16 v58.h, 8, v92.l
	v_lshlrev_b16 v59.l, 8, v93.l
	v_lshlrev_b16 v59.h, 8, v86.l
	v_lshlrev_b16 v60.l, 8, v94.l
	ds_store_b16 v63, v12 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v64, v5
	ds_store_b16 v65, v7
	ds_store_b16_d16_hi v65, v7 offset:32
	ds_store_b16 v65, v8 offset:64
	ds_store_b16_d16_hi v65, v8 offset:96
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v62, v61 offset:32768
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v63, v1 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v10 offset:384
	ds_store_b16_d16_hi v63, v10 offset:416
	ds_store_b16 v63, v11 offset:448
	ds_store_b16_d16_hi v63, v11 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v63, v1 offset:16416
	ds_store_b16 v63, v2 offset:16480
	ds_store_b16_d16_hi v64, v2 offset:16384
	ds_store_b16_d16_hi v64, v5 offset:16416
	ds_store_b16 v64, v6 offset:16448
	ds_store_b16_d16_hi v64, v6 offset:16480
	ds_store_b16_d16_hi v65, v12 offset:16384
	ds_store_b16 v65, v24 offset:16416
	ds_store_b16_d16_hi v65, v24 offset:16448
	ds_store_b16 v65, v25 offset:16480
	ds_store_b16_d16_hi v63, v25 offset:16768
	ds_store_b16 v63, v26 offset:16800
	ds_store_b16_d16_hi v63, v26 offset:16832
	ds_store_b16 v63, v27 offset:16864
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v1.l, v38.l, v27.h
	v_or_b16 v1.h, v38.h, v28.l
	v_or_b16 v2.l, v39.l, v28.h
	v_or_b16 v2.h, v39.h, v29.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v12.l, v46.l, v36.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v5.l, v40.l, v29.h
	v_or_b16 v5.h, v40.h, v30.l
	v_or_b16 v6.l, v41.l, v30.h
	v_or_b16 v6.h, v41.h, v31.l
	v_or_b16 v7.l, v42.l, v31.h
	v_or_b16 v7.h, v42.h, v32.l
	v_or_b16 v8.l, v43.l, v32.h
	v_or_b16 v8.h, v43.h, v34.l
	v_or_b16 v10.l, v44.l, v34.h
	v_or_b16 v10.h, v44.h, v35.l
	v_or_b16 v11.l, v45.l, v35.h
	v_or_b16 v11.h, v45.h, v36.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v12.h, v46.h, v37.l
	v_or_b16 v24.l, v47.l, v37.h
	v_or_b16 v24.h, v47.h, v54.l
	v_or_b16 v25.l, v48.l, v54.h
	v_or_b16 v25.h, v48.h, v55.l
	v_or_b16 v26.l, v49.l, v55.h
	v_or_b16 v26.h, v49.h, v56.l
	v_or_b16 v27.l, v50.l, v56.h
	v_or_b16 v27.h, v50.h, v57.l
	v_or_b16 v28.l, v51.l, v57.h
	v_or_b16 v28.h, v51.h, v58.l
	v_or_b16 v29.l, v52.l, v58.h
	v_or_b16 v29.h, v52.h, v59.l
	v_or_b16 v30.l, v53.l, v59.h
	v_or_b16 v30.h, v53.h, v60.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v1 offset:8192
	ds_store_b16_d16_hi v63, v1 offset:8224
	ds_store_b16 v63, v2 offset:8256
	ds_store_b16_d16_hi v63, v2 offset:8288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v63, v12 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v64, v5 offset:8192
	ds_store_b16_d16_hi v64, v5 offset:8224
	ds_store_b16 v64, v6 offset:8256
	ds_store_b16_d16_hi v64, v6 offset:8288
	ds_store_b16 v65, v7 offset:8192
	ds_store_b16_d16_hi v65, v7 offset:8224
	ds_store_b16 v65, v8 offset:8256
	ds_store_b16_d16_hi v65, v8 offset:8288
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v62, v66 offset:33792
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v63, v24 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v10 offset:8576
	ds_store_b16_d16_hi v63, v10 offset:8608
	ds_store_b16 v63, v11 offset:8640
	ds_store_b16_d16_hi v63, v11 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v63, v12 offset:24608
	ds_store_b16_d16_hi v63, v24 offset:24672
	ds_store_b16 v64, v25 offset:24576
	ds_store_b16_d16_hi v64, v25 offset:24608
	ds_store_b16 v64, v26 offset:24640
	ds_store_b16_d16_hi v64, v26 offset:24672
	ds_store_b16 v65, v27 offset:24576
	ds_store_b16_d16_hi v65, v27 offset:24608
	ds_store_b16 v65, v28 offset:24640
	ds_store_b16_d16_hi v65, v28 offset:24672
	ds_store_b16 v63, v29 offset:24960
	ds_store_b16_d16_hi v63, v29 offset:24992
	ds_store_b16 v63, v30 offset:25024
	ds_store_b16_d16_hi v63, v30 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b32_e32 v2, 5, v0
	v_and_b32_e32 v5, 0xe00, v3
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_or_b32_e32 v1, 0x3f0, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v25, 4, v0
	v_and_b32_e32 v26, 8, v0
	s_mov_b32 s4, 0
	v_and_or_b32 v24, 0x60, v2, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr24
.LBB0_3:                                ; %Flow406
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v5, s34, v33
	v_or_b32_e32 v4, s34, v4
	s_ashr_i32 s1, s5, 5
	v_or_b32_e32 v106, s33, v0
	v_lshlrev_b32_e32 v11, 2, v95
	v_mul_lo_u32 v107, v5, s1
	v_mul_lo_u32 v104, v4, s1
	v_lshlrev_b32_e32 v12, 1, v0
	v_lshlrev_b32_e32 v10, 1, v95
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 2, 1
	v_bfe_i32 v2, v0, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	v_dual_mov_b32 v35, 0 :: v_dual_and_b32 v2, 0x110, v2
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v3, 0xe00, v3
	v_and_b32_e32 v1, 0x90, v1
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v29, 28, v12
	v_add_nc_u32_e32 v28, s27, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v24, 0x60, v18, v3
	v_xor_b32_e32 v1, v1, v2
	.loc	1 378 34 is_stmt 1              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v25, s35, v14
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v78, 0
	v_mov_b32_e32 v90, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v26, v24, v1
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v1, 32, v18
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v50, 0
	v_xor_b32_e32 v27, 16, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v30, 0, v11, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v29, v30, v29
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v30, 0, v10
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v51, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s50, s1, 3
	s_add_i32 s48, s44, 32
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s49, 1
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s47, 0, 0x8400
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s50, s50, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s21, s17, 5
	s_mov_b32 s18, s15
	s_mov_b32 s0, s30
	s_mov_b32 s30, s44
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s44, s48, s21
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v31, s18, v33
	v_add_nc_u32_e32 v32, s18, v17
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s18, s0, 31
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v34, s44, v15
	s_mov_b32 s19, s16
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_mad_u64_u32 v[108:109], null, s44, s26, v[9:10]
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s18, s18, 27
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v99, s19, v26
	v_add_nc_u32_e32 v100, s19, v27
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	s_mul_i32 s19, s44, s35
	.loc	1 386 29 is_stmt 1              ; generate_amdgcn.py:386:29
	s_add_i32 s0, s0, s18
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v103, s44, v13
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s19, s19, s33
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v34
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s18, s0, 5
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v105, s19, v14
	v_add_nc_u32_e32 v109, s19, v25
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	s_add_i32 s19, s19, s27
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s18, s1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v110, v107, s18, 1
	v_add_lshl_u32 v111, v104, s18, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s18, s18, s35
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s31, v103
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v34, s19, v14
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v112, v106, s18, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	s_mov_b32 s20, s14
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v114, 0x80000000, v34, s0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v110, 0x80000000, v110 :: v_dual_cndmask_b32 v111, 0x80000000, v111
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b32 v34, v108, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[132:135], v99
	ds_load_b128 v[140:143], v99 offset:4096
	ds_load_b128 v[172:175], v100
	ds_load_b128 v[176:179], v100 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v108, v31 offset:96
	ds_load_u8 v115, v31 offset:64
	ds_load_u8 v116, v31
	ds_load_u8 v117, v31 offset:16
	ds_load_u8 v118, v31 offset:32
	ds_load_u8 v119, v31 offset:112
	ds_load_u8 v120, v31 offset:80
	ds_load_u8 v121, v31 offset:48
	ds_load_u8 v122, v31 offset:800
	ds_load_u8 v123, v31 offset:768
	ds_load_u8 v124, v31 offset:864
	ds_load_u8 v125, v31 offset:416
	ds_load_u8 v126, v31 offset:384
	ds_load_u8 v127, v31 offset:480
	ds_load_u8 v128, v31 offset:448
	ds_load_u8 v129, v31 offset:496
	ds_load_u8 v130, v31 offset:464
	ds_load_u8 v131, v31 offset:432
	ds_load_u8 v136, v31 offset:400
	ds_load_u8 v137, v31 offset:288
	ds_load_u8 v138, v31 offset:256
	ds_load_u8 v139, v31 offset:352
	ds_load_u8 v144, v31 offset:320
	ds_load_u8 v145, v31 offset:368
	ds_load_u8 v146, v31 offset:336
	ds_load_u8 v147, v31 offset:304
	ds_load_u8 v148, v31 offset:272
	ds_load_u8 v149, v31 offset:160
	ds_load_u8 v150, v31 offset:128
	ds_load_u8 v151, v31 offset:224
	ds_load_u8 v152, v31 offset:192
	ds_load_u8 v153, v31 offset:240
	ds_load_u8 v154, v31 offset:208
	ds_load_u8 v155, v31 offset:176
	ds_load_u8 v156, v31 offset:144
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v99, 0x80000000, v112, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v112, v31 offset:928
	ds_load_u8 v157, v31 offset:896
	ds_load_u8 v158, v31 offset:992
	ds_load_u8 v159, v31 offset:960
	ds_load_u8 v32, v32
	ds_load_u8 v160, v31 offset:976
	ds_load_u8 v161, v31 offset:944
	ds_load_u8 v162, v31 offset:912
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v101, s20, v26
	v_add_nc_u32_e32 v102, s20, v27
	.loc	1 384 43 is_stmt 0              ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v103, s19, v25
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	buffer_load_u16 v216, v99, s[40:43], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v163, v31 offset:832
	ds_load_u8 v168, v31 offset:880
	ds_load_u8 v169, v31 offset:848
	ds_load_u8 v170, v31 offset:816
	ds_load_u8 v171, v31 offset:784
	ds_load_u8 v204, v31 offset:672
	ds_load_u8 v205, v31 offset:640
	ds_load_u8 v206, v31 offset:736
	ds_load_u8 v207, v31 offset:704
	ds_load_u8 v208, v31 offset:752
	ds_load_u8 v209, v31 offset:720
	ds_load_u8 v210, v31 offset:688
	ds_load_u8 v211, v31 offset:656
	ds_load_u8 v212, v31 offset:544
	ds_load_u8 v213, v31 offset:512
	ds_load_u8 v214, v31 offset:608
	ds_load_u8 v215, v31 offset:576
	ds_load_u8 v217, v31 offset:624
	ds_load_u8 v218, v31 offset:592
	ds_load_u8 v219, v31 offset:560
	ds_load_u8 v31, v31 offset:528
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[164:167], v101
	ds_load_b128 v[180:183], v101 offset:4096
	ds_load_b128 v[184:187], v102
	ds_load_b128 v[99:102], v102 offset:4096
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v113, v28, s18, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[188:191], v105, s[36:39], 0 offen
	buffer_load_b128 v[192:195], v109, s[36:39], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v105, v110, s[4:7], 0 offen
	buffer_load_u16 v221, v111, s[4:7], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[196:199], v114, s[36:39], 0 offen
	buffer_load_b128 v[200:203], v103, s[36:39], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v220, 0x80000000, v113, vcc_lo
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v103, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(53)
	v_perm_b32 v109, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v110, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v111, v144, v139, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v113, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v114, v152, v151, 0xc0c0004
	v_perm_b32 v108, v115, v108, 0xc0c0004
	v_perm_b32 v115, v116, v118, 0xc0c0004
	v_perm_b32 v127, v136, v131, 0xc0c0004
	v_perm_b32 v128, v130, v129, 0xc0c0004
	v_perm_b32 v129, v148, v147, 0xc0c0004
	v_perm_b32 v130, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v131, v156, v155, 0xc0c0004
	v_perm_b32 v136, v154, v153, 0xc0c0004
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_perm_b32 v117, v117, v121, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v112, v157, v112, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v116, v159, v158, 0xc0c0004
	v_perm_b32 v118, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v122, v163, v124, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v123, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v124, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v125, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v126, v215, v214, 0xc0c0004
	v_perm_b32 v120, v162, v161, 0xc0c0004
	v_perm_b32 v32, v160, v32, 0xc0c0004
	v_perm_b32 v121, v171, v170, 0xc0c0004
	v_perm_b32 v137, v169, v168, 0xc0c0004
	v_perm_b32 v138, v211, v210, 0xc0c0004
	v_perm_b32 v139, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v31, v31, v219, 0xc0c0004
	v_perm_b32 v144, v218, v217, 0xc0c0004
	v_lshl_or_b32 v159, v109, 16, v103
	v_lshl_or_b32 v158, v111, 16, v110
	v_lshl_or_b32 v157, v114, 16, v113
	v_lshl_or_b32 v156, v108, 16, v115
	v_lshl_or_b32 v211, v128, 16, v127
	v_lshl_or_b32 v210, v130, 16, v129
	v_lshl_or_b32 v209, v136, 16, v131
	v_lshl_or_b32 v208, v119, 16, v117
	v_lshl_or_b32 v207, v116, 16, v112
	v_lshl_or_b32 v206, v122, 16, v118
	v_lshl_or_b32 v205, v124, 16, v123
	v_lshl_or_b32 v204, v126, 16, v125
	v_lshl_or_b32 v215, v32, 16, v120
	v_lshl_or_b32 v214, v137, 16, v121
	v_lshl_or_b32 v213, v139, 16, v138
	v_lshl_or_b32 v212, v144, 16, v31
	v_wmma_i32_16x16x16_iu8 v[108:115], v[132:135], v[156:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[140:143], v[156:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[132:135], v[208:211], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[140:143], v[208:211], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[164:167], v[156:159], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[180:183], v[156:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[164:167], v[208:211], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[180:183], v[208:211], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[184:187], v[204:207], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[99:102], v[204:207], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[184:187], v[212:215], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[99:102], v[212:215], v[164:171] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s49, 1
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v99, v140
	v_cvt_f32_i32_e32 v140, v144
	v_cvt_f32_i32_e32 v144, v148
	v_cvt_f32_i32_e32 v148, v152
	v_cvt_f32_i32_e32 v152, v156
	v_cvt_f32_i32_e32 v156, v160
	v_cvt_f32_i32_e32 v160, v164
	v_cvt_f32_i32_e32 v164, v168
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[108:115], v[172:175], v[204:207], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[176:179], v[204:207], v[116:123] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s18, 2
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[124:131], v[172:175], v[212:215], v[124:131] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s49, s18, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[132:139], v[176:179], v[212:215], v[132:139] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v100, v141
	v_cvt_f32_i32_e32 v101, v142
	v_cvt_f32_i32_e32 v102, v143
	v_cvt_f32_i32_e32 v141, v145
	v_cvt_f32_i32_e32 v142, v146
	v_cvt_f32_i32_e32 v143, v147
	v_cvt_f32_i32_e32 v145, v149
	v_cvt_f32_i32_e32 v146, v150
	v_cvt_f32_i32_e32 v147, v151
	v_cvt_f32_i32_e32 v149, v153
	v_cvt_f32_i32_e32 v150, v154
	v_cvt_f32_i32_e32 v151, v155
	v_cvt_f32_i32_e32 v153, v157
	v_cvt_f32_i32_e32 v154, v158
	v_cvt_f32_i32_e32 v155, v159
	v_cvt_f32_i32_e32 v157, v161
	v_cvt_f32_i32_e32 v158, v162
	v_cvt_f32_i32_e32 v159, v163
	v_cvt_f32_i32_e32 v161, v165
	v_cvt_f32_i32_e32 v162, v166
	v_cvt_f32_i32_e32 v163, v167
	v_cvt_f32_i32_e32 v165, v169
	v_cvt_f32_i32_e32 v166, v170
	v_cvt_f32_i32_e32 v167, v171
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v169, v120
	v_cvt_f32_i32_e32 v170, v121
	v_cvt_f32_i32_e32 v171, v122
	v_cvt_f32_i32_e32 v172, v123
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_lshl_b32 s18, s49, 10
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_lshl_b32 s19, s49, 13
	s_mov_b32 s16, s46
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_add_i32 s18, s18, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_add_i32 s46, s19, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
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
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v31, 16, v216
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(4)
	v_perm_b32 v32, v192, v188, 0x5010400
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v29, v31 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v168, v220, s[40:43], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v103, v192, v188, 0x7030602
	v_perm_b32 v120, v193, v189, 0x5010400
	v_perm_b32 v121, v193, v189, 0x7030602
	v_perm_b32 v122, v194, v190, 0x5010400
	v_perm_b32 v123, v194, v190, 0x7030602
	v_perm_b32 v173, v195, v191, 0x5010400
	v_perm_b32 v174, v195, v191, 0x7030602
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v176, 16, v221
	v_lshlrev_b32_e32 v175, 16, v105
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(1)
	v_perm_b32 v177, v200, v196, 0x5010400
	v_perm_b32 v178, v200, v196, 0x7030602
	v_perm_b32 v179, v201, v197, 0x5010400
	v_perm_b32 v180, v201, v197, 0x7030602
	v_perm_b32 v181, v202, v198, 0x5010400
	v_perm_b32 v182, v202, v198, 0x7030602
	v_perm_b32 v183, v203, v199, 0x5010400
	v_perm_b32 v184, v203, v199, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v31.l, 0xff, v32.l
	v_lshrrev_b32_e32 v185, 8, v32
	v_lshrrev_b32_e32 v186, 24, v32
	v_and_b16 v31.h, 0xff, v32.h
	v_and_b16 v32.l, 0xff, v103.l
	v_lshrrev_b32_e32 v187, 8, v103
	v_lshrrev_b32_e32 v188, 24, v103
	v_and_b16 v32.h, 0xff, v103.h
	v_and_b16 v103.l, 0xff, v120.l
	v_lshrrev_b32_e32 v189, 8, v120
	v_lshrrev_b32_e32 v190, 24, v120
	v_and_b16 v103.h, 0xff, v120.h
	v_and_b16 v105.l, 0xff, v121.l
	v_lshrrev_b32_e32 v191, 8, v121
	v_lshrrev_b32_e32 v192, 24, v121
	v_and_b16 v105.h, 0xff, v121.h
	v_and_b16 v120.l, 0xff, v122.l
	v_lshrrev_b32_e32 v193, 8, v122
	v_lshrrev_b32_e32 v194, 24, v122
	v_and_b16 v120.h, 0xff, v122.h
	v_and_b16 v121.l, 0xff, v123.l
	v_lshrrev_b32_e32 v195, 8, v123
	v_lshrrev_b32_e32 v196, 24, v123
	v_and_b16 v121.h, 0xff, v123.h
	v_and_b16 v122.l, 0xff, v173.l
	v_lshrrev_b32_e32 v197, 8, v173
	v_lshrrev_b32_e32 v198, 24, v173
	v_and_b16 v122.h, 0xff, v173.h
	v_and_b16 v123.l, 0xff, v174.l
	v_lshrrev_b32_e32 v173, 8, v174
	v_lshrrev_b32_e32 v199, 24, v174
	v_and_b16 v123.h, 0xff, v174.h
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v152, v152, v176
	v_dual_mul_f32 v205, v102, v175 :: v_dual_add_nc_u32 v222, s18, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v212, v175, v114 :: v_dual_add_nc_u32 v225, s46, v23
	v_mul_f32_e32 v174, v175, v109
	v_dual_mul_f32 v200, v175, v108 :: v_dual_mul_f32 v201, v100, v175
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v202, v99, v175
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v203, v175, v111
	v_mul_f32_e32 v204, v175, v110
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v206, v101, v175 :: v_dual_mul_f32 v207, v175, v113
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v208, v175, v112
	v_mul_f32_e32 v211, v175, v115
	v_mul_f32_e32 v215, v175, v117
	v_dual_mul_f32 v216, v175, v116 :: v_dual_mul_f32 v217, v145, v175
	v_dual_mul_f32 v219, v175, v119 :: v_dual_mul_f32 v230, v176, v129
	v_dual_mul_f32 v220, v175, v118 :: v_dual_mul_f32 v149, v149, v175
	ds_load_b128 v[99:102], v30 offset:34816
	ds_load_b128 v[108:111], v30 offset:34832
	ds_load_b128 v[112:115], v30 offset:35328
	ds_load_b128 v[116:119], v30 offset:35344
	v_dual_mul_f32 v170, v175, v170 :: v_dual_mul_f32 v227, v176, v124
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v210, v140, v175 :: v_dual_add_nc_u32 v223, s46, v21
	v_dual_mul_f32 v209, v141, v175 :: v_dual_add_nc_u32 v224, s46, v22
	v_dual_mul_f32 v213, v143, v175 :: v_dual_mul_f32 v154, v154, v176
	v_dual_mul_f32 v214, v142, v175 :: v_dual_mul_f32 v169, v175, v169
	v_dual_mul_f32 v218, v144, v175 :: v_dual_mul_f32 v153, v153, v176
	v_dual_mul_f32 v221, v147, v175 :: v_dual_mul_f32 v156, v156, v176
	v_mul_f32_e32 v226, v146, v175
	v_dual_mul_f32 v148, v148, v175 :: v_dual_mul_f32 v155, v155, v176
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v172, v175, v172 :: v_dual_mul_f32 v229, v176, v126
	v_dual_mul_f32 v171, v175, v171 :: v_dual_mul_f32 v158, v158, v176
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v151, v151, v175 :: v_dual_mul_f32 v234, v176, v133
	v_dual_mul_f32 v150, v150, v175 :: v_dual_mul_f32 v231, v176, v128
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v175, v176, v125
	v_dual_mul_f32 v228, v176, v127 :: v_dual_mul_f32 v157, v157, v176
	v_dual_mul_f32 v232, v176, v131 :: v_dual_mul_f32 v159, v159, v176
	v_dual_mul_f32 v233, v176, v130 :: v_dual_mul_f32 v162, v162, v176
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v235, v176, v132 :: v_dual_fmac_f32 v42, v219, v115
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v161, v161, v176 :: v_dual_mul_f32 v236, v176, v135
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v237, v176, v134 :: v_dual_mul_f32 v166, v166, v176
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v163, v163, v176 :: v_dual_mul_f32 v238, v176, v137
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v239, v176, v136 :: v_dual_fmac_f32 v36, v171, v118
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v165, v165, v176 :: v_dual_mul_f32 v240, v176, v139
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v241, v176, v138 :: v_dual_fmac_f32 v38, v169, v116
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v167, v167, v176 :: v_dual_fmac_f32 v84, v200, v99
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v92, v227, v99 :: v_dual_fmac_f32 v89, v228, v102
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v160, v160, v176 :: v_dual_fmac_f32 v81, v203, v102
	v_dual_mul_f32 v164, v164, v176 :: v_dual_fmac_f32 v77, v207, v109
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v85, v174, v100 :: v_dual_fmac_f32 v80, v204, v101
	v_dual_fmac_f32 v76, v208, v108 :: v_dual_fmac_f32 v49, v211, v111
	v_dual_fmac_f32 v48, v212, v110 :: v_dual_fmac_f32 v45, v215, v113
	v_dual_fmac_f32 v44, v216, v112 :: v_dual_fmac_f32 v39, v170, v117
	v_dual_fmac_f32 v40, v220, v114 :: v_dual_fmac_f32 v93, v175, v100
	v_dual_fmac_f32 v37, v172, v119 :: v_dual_fmac_f32 v88, v229, v101
	v_dual_fmac_f32 v71, v231, v108 :: v_dual_fmac_f32 v72, v230, v109
	v_dual_fmac_f32 v67, v233, v110 :: v_dual_fmac_f32 v68, v232, v111
	v_dual_fmac_f32 v62, v235, v112 :: v_dual_fmac_f32 v63, v234, v113
	v_dual_fmac_f32 v59, v237, v114 :: v_dual_fmac_f32 v60, v236, v115
	v_dual_fmac_f32 v53, v239, v116 :: v_dual_fmac_f32 v54, v238, v117
	v_dual_fmac_f32 v52, v241, v118 :: v_dual_fmac_f32 v51, v240, v119
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v143, 24, v178
	v_and_b16 v127.l, 0xff, v180.l
	v_lshrrev_b32_e32 v146, 8, v180
	v_lshrrev_b32_e32 v147, 24, v180
	v_and_b16 v127.h, 0xff, v180.h
	v_lshrrev_b32_e32 v180, 8, v183
	v_and_b16 v124.l, 0xff, v177.l
	v_lshrrev_b32_e32 v140, 8, v177
	v_lshrrev_b32_e32 v141, 24, v177
	v_and_b16 v124.h, 0xff, v177.h
	v_and_b16 v128.l, 0xff, v181.l
	v_lshrrev_b32_e32 v176, 8, v181
	v_lshrrev_b32_e32 v177, 24, v181
	v_and_b16 v128.h, 0xff, v181.h
	v_lshrrev_b32_e32 v181, 24, v183
	v_and_b16 v125.l, 0xff, v178.l
	v_lshrrev_b32_e32 v142, 8, v178
	v_and_b16 v125.h, 0xff, v178.h
	v_and_b16 v126.l, 0xff, v179.l
	v_lshrrev_b32_e32 v144, 8, v179
	v_lshrrev_b32_e32 v145, 24, v179
	v_and_b16 v126.h, 0xff, v179.h
	v_and_b16 v129.l, 0xff, v182.l
	v_lshrrev_b32_e32 v178, 8, v182
	v_lshrrev_b32_e32 v179, 24, v182
	v_and_b16 v129.h, 0xff, v182.h
	v_lshrrev_b32_e32 v182, 8, v184
	v_and_b16 v130.l, 0xff, v183.l
	v_and_b16 v130.h, 0xff, v183.h
	v_lshrrev_b32_e32 v183, 24, v184
	v_lshlrev_b16 v141.h, 8, v143.l
	v_lshlrev_b16 v143.l, 8, v146.l
	v_lshlrev_b16 v146.l, 8, v180.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v132.l, 8, v185.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v146.h, 8, v181.l
	v_and_b16 v131.l, 0xff, v184.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v132.h, 8, v186.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v143.h, 8, v147.l
	v_lshlrev_b16 v147.l, 8, v182.l
	v_and_b16 v131.h, 0xff, v184.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v133.l, 8, v187.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v147.h, 8, v183.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v133.h, 8, v188.l
	v_lshlrev_b16 v134.l, 8, v189.l
	v_lshlrev_b16 v134.h, 8, v190.l
	v_lshlrev_b16 v135.l, 8, v191.l
	v_lshlrev_b16 v135.h, 8, v192.l
	v_lshlrev_b16 v136.l, 8, v193.l
	v_lshlrev_b16 v136.h, 8, v194.l
	v_lshlrev_b16 v137.l, 8, v195.l
	v_lshlrev_b16 v137.h, 8, v196.l
	v_lshlrev_b16 v138.l, 8, v197.l
	v_lshlrev_b16 v138.h, 8, v198.l
	v_lshlrev_b16 v139.l, 8, v173.l
	v_lshlrev_b16 v139.h, 8, v199.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v140.l, 8, v140.l
	v_lshlrev_b16 v140.h, 8, v141.l
	v_lshlrev_b16 v141.l, 8, v142.l
	v_lshlrev_b16 v142.l, 8, v144.l
	v_lshlrev_b16 v142.h, 8, v145.l
	v_lshlrev_b16 v144.l, 8, v176.l
	v_lshlrev_b16 v144.h, 8, v177.l
	v_lshlrev_b16 v145.l, 8, v178.l
	v_lshlrev_b16 v145.h, 8, v179.l
	v_or_b16 v130.l, v130.l, v146.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v31.l, v31.l, v132.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v130.h, v130.h, v146.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v31.h, v31.h, v132.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v131.l, v131.l, v147.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v32.l, v32.l, v133.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v131.h, v131.h, v147.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v32.h, v32.h, v133.h
	v_or_b16 v103.l, v103.l, v134.l
	v_or_b16 v103.h, v103.h, v134.h
	v_or_b16 v105.l, v105.l, v135.l
	v_or_b16 v105.h, v105.h, v135.h
	v_or_b16 v120.l, v120.l, v136.l
	v_or_b16 v120.h, v120.h, v136.h
	v_or_b16 v121.l, v121.l, v137.l
	v_or_b16 v121.h, v121.h, v137.h
	v_or_b16 v122.l, v122.l, v138.l
	v_or_b16 v122.h, v122.h, v138.h
	v_or_b16 v123.l, v123.l, v139.l
	v_or_b16 v123.h, v123.h, v139.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v124.l, v124.l, v140.l
	v_or_b16 v124.h, v124.h, v140.h
	v_or_b16 v125.l, v125.l, v141.l
	v_or_b16 v125.h, v125.h, v141.h
	v_or_b16 v126.l, v126.l, v142.l
	v_or_b16 v126.h, v126.h, v142.h
	v_or_b16 v127.l, v127.l, v143.l
	v_or_b16 v127.h, v127.h, v143.h
	v_or_b16 v128.l, v128.l, v144.l
	v_or_b16 v128.h, v128.h, v144.h
	v_or_b16 v129.l, v129.l, v145.l
	v_or_b16 v129.h, v129.h, v145.h
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v99, 16, v168
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v29, v99 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[99:102], v30 offset:34816
	ds_load_b128 v[108:111], v30 offset:34832
	ds_load_b128 v[112:115], v30 offset:35328
	ds_load_b128 v[116:119], v30 offset:35344
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_store_b32 v222, v34 offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v223, v31
	ds_store_b16_d16_hi v223, v31 offset:32
	ds_store_b16 v223, v32 offset:64
	ds_store_b16_d16_hi v223, v32 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v223, v124 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v224, v103
	ds_store_b16_d16_hi v224, v103 offset:32
	ds_store_b16 v224, v105 offset:64
	ds_store_b16_d16_hi v224, v105 offset:96
	ds_store_b16 v225, v120
	ds_store_b16_d16_hi v225, v120 offset:32
	ds_store_b16 v225, v121 offset:64
	ds_store_b16_d16_hi v225, v121 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v223, v125 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v223, v122 offset:384
	ds_store_b16_d16_hi v223, v122 offset:416
	ds_store_b16 v223, v123 offset:448
	ds_store_b16_d16_hi v223, v123 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v223, v124 offset:16416
	ds_store_b16_d16_hi v223, v125 offset:16480
	ds_store_b16 v224, v126 offset:16384
	ds_store_b16_d16_hi v224, v126 offset:16416
	ds_store_b16 v224, v127 offset:16448
	ds_store_b16_d16_hi v224, v127 offset:16480
	ds_store_b16 v225, v128 offset:16384
	ds_store_b16_d16_hi v225, v128 offset:16416
	ds_store_b16 v225, v129 offset:16448
	ds_store_b16_d16_hi v225, v129 offset:16480
	ds_store_b16 v223, v130 offset:16768
	ds_store_b16_d16_hi v223, v130 offset:16800
	ds_store_b16 v223, v131 offset:16832
	ds_store_b16_d16_hi v223, v131 offset:16864
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(36)
	v_dual_fmac_f32 v35, v202, v99 :: v_dual_fmac_f32 v94, v201, v100
	v_dual_fmac_f32 v90, v206, v101 :: v_dual_fmac_f32 v91, v205, v102
	s_waitcnt lgkmcnt(35)
	v_dual_fmac_f32 v86, v210, v108 :: v_dual_fmac_f32 v87, v209, v109
	v_dual_fmac_f32 v82, v214, v110 :: v_dual_fmac_f32 v83, v213, v111
	s_waitcnt lgkmcnt(34)
	v_dual_fmac_f32 v78, v218, v112 :: v_dual_fmac_f32 v79, v217, v113
	v_dual_fmac_f32 v50, v226, v114 :: v_dual_fmac_f32 v75, v221, v115
	s_waitcnt lgkmcnt(33)
	v_dual_fmac_f32 v46, v148, v116 :: v_dual_fmac_f32 v47, v149, v117
	v_fmac_f32_e32 v96, v155, v102
	v_dual_fmac_f32 v41, v150, v118 :: v_dual_fmac_f32 v98, v153, v100
	v_dual_fmac_f32 v43, v151, v119 :: v_dual_fmac_f32 v74, v157, v109
	v_dual_fmac_f32 v97, v152, v99 :: v_dual_fmac_f32 v66, v161, v113
	v_dual_fmac_f32 v95, v154, v101 :: v_dual_fmac_f32 v70, v159, v111
	v_dual_fmac_f32 v73, v156, v108 :: v_dual_fmac_f32 v64, v163, v115
	v_dual_fmac_f32 v69, v158, v110 :: v_dual_fmac_f32 v58, v165, v117
	v_dual_fmac_f32 v65, v160, v112 :: v_dual_fmac_f32 v56, v167, v119
	v_fmac_f32_e32 v61, v162, v114
	v_fmac_f32_e32 v57, v164, v116
	v_fmac_f32_e32 v55, v166, v118
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v17 :: v_dual_mov_b32 v2, v18
	v_dual_mov_b32 v25, v19 :: v_dual_mov_b32 v26, v20
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s47, 0, 0x8400
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v35, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v113, s15, v33
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v25
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v31, v113
	ds_load_u8_d16 v3, v113 offset:16
	ds_load_u8_d16 v99, v113 offset:32
	ds_load_u8_d16 v4, v113 offset:48
	ds_load_u8_d16 v27, v113 offset:64
	ds_load_u8_d16 v28, v113 offset:96
	ds_load_u8_d16 v5, v113 offset:112
	ds_load_u8_d16 v6, v113 offset:80
	ds_load_u8_d16 v115, v113 offset:128
	ds_load_u8_d16 v117, v113 offset:160
	ds_load_u8_d16 v114, v113 offset:192
	ds_load_u8_d16 v116, v113 offset:224
	ds_load_u8_d16 v14, v113 offset:240
	ds_load_u8_d16 v15, v113 offset:208
	ds_load_u8_d16 v16, v113 offset:176
	ds_load_u8_d16 v17, v113 offset:144
	ds_load_u8_d16 v123, v113 offset:256
	ds_load_u8_d16 v125, v113 offset:288
	ds_load_u8_d16 v122, v113 offset:320
	ds_load_u8_d16 v124, v113 offset:352
	ds_load_u8_d16 v18, v113 offset:368
	ds_load_u8_d16 v19, v113 offset:336
	ds_load_u8_d16 v21, v113 offset:304
	ds_load_u8_d16 v23, v113 offset:272
	ds_load_u8_d16 v131, v113 offset:384
	ds_load_u8_d16 v133, v113 offset:416
	ds_load_u8_d16 v130, v113 offset:448
	ds_load_u8_d16 v132, v113 offset:480
	ds_load_u8_d16 v29, v113 offset:496
	ds_load_u8_d16 v30, v113 offset:464
	ds_load_u8_d16 v100, v113 offset:432
	ds_load_u8_d16 v101, v113 offset:400
	ds_load_u8_d16 v109, v113 offset:512
	ds_load_u8_d16 v112, v113 offset:544
	ds_load_u8_d16 v108, v113 offset:576
	ds_load_u8_d16 v110, v113 offset:608
	ds_load_u8_d16 v7, v113 offset:624
	ds_load_u8_d16 v8, v113 offset:592
	ds_load_u8_d16 v9, v113 offset:560
	ds_load_u8_d16 v13, v113 offset:528
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v111, s15, v1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v138, 0, 1, s2
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v32, 0x90, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v26
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v119, v113 offset:640
	ds_load_u8_d16 v121, v113 offset:672
	ds_load_u8_d16 v118, v113 offset:704
	ds_load_u8_d16 v120, v113 offset:736
	ds_load_u8_d16 v20, v113 offset:752
	ds_load_u8_d16 v22, v113 offset:720
	ds_load_u8_d16 v25, v113 offset:688
	ds_load_u8_d16 v26, v113 offset:656
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v168, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s0, 1, v138
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v34, 0x110, 0, vcc_lo
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v156, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v105, v32, v34
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v127, v113 offset:768
	ds_load_u8_d16 v129, v113 offset:800
	ds_load_u8_d16 v126, v113 offset:832
	ds_load_u8_d16 v128, v113 offset:864
	ds_load_u8_d16 v32, v113 offset:880
	ds_load_u8_d16 v34, v113 offset:848
	ds_load_u8_d16 v102, v113 offset:816
	ds_load_u8_d16 v103, v113 offset:784
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v155, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b32_e32 v213, v24, v105
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v135, v113 offset:896
	ds_load_u8_d16 v137, v113 offset:928
	ds_load_u8_d16 v134, v113 offset:960
	ds_load_u8_d16 v136, v113 offset:992
	ds_load_u8_d16 v24, v111
	ds_load_u8_d16 v105, v113 offset:976
	ds_load_u8_d16 v111, v113 offset:944
	ds_load_u8_d16 v113, v113 offset:912
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v167, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v214, 16, v213
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v139, 0
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
	v_add_nc_u32_e32 v139, s16, v213
	v_add_nc_u32_e32 v138, s16, v214
	ds_load_b128 v[154:157], v139 offset:4096
	ds_load_b128 v[159:162], v139
	ds_load_b128 v[146:149], v138 offset:4096
	ds_load_b128 v[150:153], v138
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v138, v123, v125, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v142, v122, v124, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v163, v135, v137, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v164, v134, v136, 0xc0c0004
	v_perm_b32 v140, v131, v133, 0xc0c0004
	v_perm_b32 v141, v130, v132, 0xc0c0004
	v_perm_b32 v143, v115, v117, 0xc0c0004
	v_perm_b32 v144, v114, v116, 0xc0c0004
	v_lshl_or_b32 v183, v142, 16, v138
	v_perm_b32 v138, v31, v99, 0xc0c0004
	v_perm_b32 v139, v27, v28, 0xc0c0004
	v_lshl_or_b32 v192, v164, 16, v163
	v_perm_b32 v163, v101, v100, 0xc0c0004
	v_perm_b32 v164, v30, v29, 0xc0c0004
	v_perm_b32 v185, v23, v21, 0xc0c0004
	v_perm_b32 v186, v19, v18, 0xc0c0004
	v_perm_b32 v187, v17, v16, 0xc0c0004
	v_perm_b32 v188, v15, v14, 0xc0c0004
	v_perm_b32 v193, v3, v4, 0xc0c0004
	v_perm_b32 v197, v6, v5, 0xc0c0004
	v_lshl_or_b32 v184, v141, 16, v140
	v_lshl_or_b32 v182, v144, 16, v143
	v_lshl_or_b32 v181, v139, 16, v138
	v_dual_mov_b32 v145, s11 :: v_dual_mov_b32 v142, s8
	v_dual_mov_b32 v144, s10 :: v_dual_mov_b32 v143, s9
	v_dual_mov_b32 v141, s7 :: v_dual_mov_b32 v140, s6
	v_dual_mov_b32 v139, s5 :: v_dual_mov_b32 v138, s4
	v_perm_b32 v173, v127, v129, 0xc0c0004
	v_perm_b32 v174, v126, v128, 0xc0c0004
	v_perm_b32 v175, v119, v121, 0xc0c0004
	v_perm_b32 v176, v118, v120, 0xc0c0004
	v_perm_b32 v177, v109, v112, 0xc0c0004
	v_perm_b32 v178, v108, v110, 0xc0c0004
	v_lshl_or_b32 v196, v164, 16, v163
	v_lshl_or_b32 v195, v186, 16, v185
	v_lshl_or_b32 v194, v188, 16, v187
	v_lshl_or_b32 v193, v197, 16, v193
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v163, v113, v111, 0xc0c0004
	v_perm_b32 v164, v105, v24, 0xc0c0004
	v_perm_b32 v197, v103, v102, 0xc0c0004
	v_perm_b32 v198, v34, v32, 0xc0c0004
	v_perm_b32 v199, v26, v25, 0xc0c0004
	v_perm_b32 v200, v22, v20, 0xc0c0004
	v_perm_b32 v201, v13, v9, 0xc0c0004
	v_perm_b32 v202, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[165:172], v[159:162], v[181:184], v[138:145] neg_lo:[1,1,0]
	v_lshl_or_b32 v191, v174, 16, v173
	v_lshl_or_b32 v190, v176, 16, v175
	v_lshl_or_b32 v189, v178, 16, v177
	v_wmma_i32_16x16x16_iu8 v[173:180], v[154:157], v[181:184], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[181:188], v[159:162], v[193:196], v[138:145] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v164, 16, v163
	v_lshl_or_b32 v161, v198, 16, v197
	v_lshl_or_b32 v160, v200, 16, v199
	v_lshl_or_b32 v159, v202, 16, v201
	v_wmma_i32_16x16x16_iu8 v[138:145], v[154:157], v[193:196], v[138:145] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[165:172], v[150:153], v[189:192], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[173:180], v[146:149], v[189:192], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[181:188], v[150:153], v[159:162], v[181:188] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[146:149], v[159:162], v[138:145] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v189, v167
	v_cvt_f32_i32_e32 v190, v168
	v_cvt_f32_i32_e32 v154, v169
	v_cvt_f32_i32_e32 v168, v170
	v_cvt_f32_i32_e32 v156, v171
	v_cvt_f32_i32_e32 v171, v172
	v_cvt_f32_i32_e32 v162, v173
	v_cvt_f32_i32_e32 v172, v174
	v_cvt_f32_i32_e32 v170, v175
	v_cvt_f32_i32_e32 v174, v176
	v_cvt_f32_i32_e32 v155, v177
	v_cvt_f32_i32_e32 v169, v178
	v_cvt_f32_i32_e32 v167, v179
	v_cvt_f32_i32_e32 v173, v180
	v_cvt_f32_i32_e32 v163, v181
	v_cvt_f32_i32_e32 v164, v182
	v_cvt_f32_i32_e32 v160, v183
	v_cvt_f32_i32_e32 v161, v184
	v_cvt_f32_i32_e32 v152, v185
	v_cvt_f32_i32_e32 v153, v186
	v_cvt_f32_i32_e32 v150, v187
	v_cvt_f32_i32_e32 v151, v188
	v_cvt_f32_i32_e32 v148, v138
	v_cvt_f32_i32_e32 v149, v139
	v_cvt_f32_i32_e32 v146, v140
	v_cvt_f32_i32_e32 v147, v141
	v_cvt_f32_i32_e32 v140, v142
	v_cvt_f32_i32_e32 v141, v143
	v_cvt_f32_i32_e32 v139, v144
	v_cvt_f32_i32_e32 v138, v145
	v_cvt_f32_i32_e32 v157, v165
	v_cvt_f32_i32_e32 v159, v166
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x18                           ; 100-byte Folded Spill
	scratch_store_b32 off, v174, off offset:188
	scratch_store_b32 off, v190, off offset:184
	scratch_store_b32 off, v173, off offset:180
	scratch_store_b32 off, v172, off offset:176
	scratch_store_b32 off, v171, off offset:172
	scratch_store_b32 off, v170, off offset:168
	scratch_store_b32 off, v189, off offset:164
	scratch_store_b32 off, v169, off offset:160
	scratch_store_b32 off, v168, off offset:156
	scratch_store_b32 off, v167, off offset:152
	scratch_store_b32 off, v162, off offset:148
	scratch_store_b32 off, v156, off offset:144
	scratch_store_b32 off, v155, off offset:140
	scratch_store_b32 off, v153, off offset:68
	scratch_store_b32 off, v152, off offset:64
	scratch_store_b32 off, v151, off offset:52
	scratch_store_b32 off, v150, off offset:48
	scratch_store_b32 off, v149, off offset:32
	scratch_store_b32 off, v148, off offset:24
	scratch_store_b32 off, v147, off offset:20
	scratch_store_b32 off, v146, off offset:16
	scratch_store_b32 off, v141, off offset:12
	scratch_store_b32 off, v140, off offset:8
	scratch_store_b32 off, v139, off offset:4
	scratch_store_b32 off, v138, off
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v138, 0
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
	v_add_nc_u32_e32 v139, s14, v213
	v_add_nc_u32_e32 v138, s14, v214
	ds_load_b128 v[150:153], v139 offset:4096
	ds_load_b128 v[165:168], v139
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v31, v31, v99, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v27, v27, v28, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v140, v131, v133, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v141, v130, v132, 0xc0c0004
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[130:133], v138 offset:4096
	ds_load_b128 v[146:149], v138
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v28, v134, v136, 0xc0c0004
	v_lshl_or_b32 v169, v27, 16, v31
	v_perm_b32 v27, v135, v137, 0xc0c0004
	v_perm_b32 v123, v123, v125, 0xc0c0004
	v_perm_b32 v122, v122, v124, 0xc0c0004
	v_perm_b32 v115, v115, v117, 0xc0c0004
	v_perm_b32 v114, v114, v116, 0xc0c0004
	v_lshl_or_b32 v137, v28, 16, v27
	v_perm_b32 v27, v101, v100, 0xc0c0004
	v_perm_b32 v28, v30, v29, 0xc0c0004
	v_perm_b32 v21, v23, v21, 0xc0c0004
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_perm_b32 v16, v17, v16, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v3, v3, v4, 0xc0c0004
	v_perm_b32 v15, v6, v5, 0xc0c0004
	v_lshl_or_b32 v172, v141, 16, v140
	v_dual_mov_b32 v145, s11 :: v_dual_mov_b32 v142, s8
	v_lshl_or_b32 v171, v122, 16, v123
	v_lshl_or_b32 v170, v114, 16, v115
	v_dual_mov_b32 v144, s10 :: v_dual_mov_b32 v143, s9
	v_dual_mov_b32 v141, s7 :: v_dual_mov_b32 v140, s6
	v_dual_mov_b32 v139, s5 :: v_dual_mov_b32 v138, s4
	v_perm_b32 v31, v127, v129, 0xc0c0004
	v_perm_b32 v99, v126, v128, 0xc0c0004
	v_perm_b32 v122, v119, v121, 0xc0c0004
	v_perm_b32 v123, v118, v120, 0xc0c0004
	v_perm_b32 v109, v109, v112, 0xc0c0004
	v_perm_b32 v108, v108, v110, 0xc0c0004
	v_lshl_or_b32 v6, v28, 16, v27
	v_lshl_or_b32 v5, v18, 16, v21
	v_lshl_or_b32 v4, v14, 16, v16
	v_lshl_or_b32 v3, v15, 16, v3
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v21, v113, v111, 0xc0c0004
	v_perm_b32 v23, v105, v24, 0xc0c0004
	v_perm_b32 v27, v103, v102, 0xc0c0004
	v_perm_b32 v28, v34, v32, 0xc0c0004
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_perm_b32 v22, v22, v20, 0xc0c0004
	v_perm_b32 v9, v13, v9, 0xc0c0004
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[165:168], v[169:172], v[138:145] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v99, 16, v31
	v_lshl_or_b32 v135, v123, 16, v122
	v_lshl_or_b32 v134, v108, 16, v109
	v_wmma_i32_16x16x16_iu8 v[122:129], v[150:153], v[169:172], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[165:168], v[3:6], v[138:145] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v23, 16, v21
	v_lshl_or_b32 v23, v28, 16, v27
	v_lshl_or_b32 v22, v22, 16, v25
	v_lshl_or_b32 v21, v7, 16, v9
	v_wmma_i32_16x16x16_iu8 v[138:145], v[150:153], v[3:6], v[138:145] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[146:149], v[134:137], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[130:133], v[134:137], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[146:149], v[21:24], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[130:133], v[21:24], v[138:145] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v177, v115
	v_cvt_f32_i32_e32 v170, v116
	v_cvt_f32_i32_e32 v178, v117
	v_cvt_f32_i32_e32 v171, v118
	v_cvt_f32_i32_e32 v179, v119
	v_cvt_f32_i32_e32 v172, v120
	v_cvt_f32_i32_e32 v180, v121
	v_cvt_f32_i32_e32 v173, v122
	v_cvt_f32_i32_e32 v181, v123
	v_cvt_f32_i32_e32 v174, v124
	v_cvt_f32_i32_e32 v182, v125
	v_cvt_f32_i32_e32 v175, v126
	v_cvt_f32_i32_e32 v183, v127
	v_cvt_f32_i32_e32 v176, v128
	v_cvt_f32_i32_e32 v184, v129
	v_cvt_f32_i32_e32 v190, v13
	v_cvt_f32_i32_e32 v191, v14
	v_cvt_f32_i32_e32 v188, v15
	v_cvt_f32_i32_e32 v189, v16
	v_cvt_f32_i32_e32 v152, v17
	v_cvt_f32_i32_e32 v153, v18
	v_cvt_f32_i32_e32 v150, v19
	v_cvt_f32_i32_e32 v151, v20
	v_cvt_f32_i32_e32 v148, v138
	v_cvt_f32_i32_e32 v149, v139
	v_cvt_f32_i32_e32 v146, v140
	v_cvt_f32_i32_e32 v147, v141
	v_cvt_f32_i32_e32 v140, v142
	v_cvt_f32_i32_e32 v141, v143
	v_cvt_f32_i32_e32 v138, v144
	v_cvt_f32_i32_e32 v139, v145
	v_cvt_f32_i32_e32 v158, v114
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
	s_waitcnt lgkmcnt(62)
	v_add_lshl_u32 v3, v107, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(60)
	v_add_lshl_u32 v4, v106, s4, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s5, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 394 39                        ; generate_amdgcn.py:394:39
	v_add3_u32 v216, s33, s27, v0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_waitcnt lgkmcnt(56)
	v_add_lshl_u32 v6, v104, s0, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v5, 28, v12
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt lgkmcnt(27)
	v_add_lshl_u32 v7, v216, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v2, 32, v2
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v4, v4, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v153, off offset:120
	scratch_store_b32 off, v152, off offset:116
	scratch_store_b32 off, v151, off offset:100
	scratch_store_b32 off, v150, off offset:96
	scratch_store_b32 off, v149, off offset:76
	scratch_store_b32 off, v148, off offset:72
	scratch_store_b32 off, v147, off offset:60
	scratch_store_b32 off, v146, off offset:56
	scratch_store_b32 off, v141, off offset:44
	scratch_store_b32 off, v140, off offset:40
	scratch_store_b32 off, v139, off offset:36
	scratch_store_b32 off, v138, off offset:28
	v_mov_b32_e32 v194, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_add3_u32 v2, 0, v11, v2
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v185, 0, v10
	s_waitcnt lgkmcnt(25)
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v9, s47, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v187, v2, v5
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_dual_cndmask_b32 v5, 0x80000000, v7 :: v_dual_cndmask_b32 v2, 0x80000000, v6
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v215, v3, s[12:15], 0 offen
	buffer_load_u16 v217, v2, s[12:15], 0 offen
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v10, s47, v1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v1, 0, 1, s3
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v195, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v1
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v168, 0
	s_waitcnt lgkmcnt(11)
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v17, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v212, 0
	v_mov_b32_e32 v18, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v187, v4 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v2, v5, s[28:31], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[25:28], v185 offset:34816
	ds_load_b128 v[13:16], v185 offset:34832
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[5:8], v185 offset:35328
	ds_load_b128 v[1:4], v185 offset:35344
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v187, v11 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v120, v9
	ds_load_u8_d16 v239, v9 offset:16
	ds_load_u8_d16 v122, v9 offset:32
	ds_load_u8_d16 v242, v9 offset:48
	ds_load_u8_d16 v118, v9 offset:64
	ds_load_u8_d16 v119, v9 offset:96
	ds_load_u8_d16 v243, v9 offset:112
	ds_load_u8_d16 v244, v9 offset:80
	ds_load_u8_d16 v131, v9 offset:128
	ds_load_u8_d16 v133, v9 offset:160
	ds_load_u8_d16 v129, v9 offset:192
	ds_load_u8_d16 v132, v9 offset:224
	ds_load_u8_d16 v247, v9 offset:240
	ds_load_u8_d16 v249, v9 offset:208
	ds_load_u8_d16 v251, v9 offset:176
	ds_load_u8_d16 v252, v9 offset:144
	ds_load_u8_d16 v139, v9 offset:256
	ds_load_u8_d16 v141, v9 offset:288
	ds_load_u8_d16 v137, v9 offset:320
	ds_load_u8_d16 v140, v9 offset:352
	ds_load_u8_d16 v255, v9 offset:368
	ds_load_u8_d16 v99, v9 offset:336
	ds_load_u8_d16 v101, v9 offset:304
	ds_load_u8_d16 v102, v9 offset:272
	ds_load_u8_d16 v143, v9 offset:384
	ds_load_u8_d16 v145, v9 offset:416
	ds_load_u8_d16 v142, v9 offset:448
	ds_load_u8_d16 v144, v9 offset:480
	ds_load_u8_d16 v108, v9 offset:496
	ds_load_u8_d16 v110, v9 offset:464
	ds_load_u8_d16 v112, v9 offset:432
	ds_load_u8_d16 v113, v9 offset:400
	ds_load_u8_d16 v115, v9 offset:512
	ds_load_u8_d16 v117, v9 offset:544
	ds_load_u8_d16 v114, v9 offset:576
	ds_load_u8_d16 v116, v9 offset:608
	ds_load_u8_d16 v218, v9 offset:624
	ds_load_u8_d16 v238, v9 offset:592
	ds_load_u8_d16 v240, v9 offset:560
	ds_load_u8_d16 v241, v9 offset:528
	ds_load_u8_d16 v123, v9 offset:640
	ds_load_u8_d16 v125, v9 offset:672
	ds_load_u8_d16 v121, v9 offset:704
	ds_load_u8_d16 v124, v9 offset:736
	ds_load_u8_d16 v245, v9 offset:752
	ds_load_u8_d16 v246, v9 offset:720
	ds_load_u8_d16 v248, v9 offset:688
	ds_load_u8_d16 v250, v9 offset:656
	ds_load_u8_d16 v127, v9 offset:768
	ds_load_u8_d16 v130, v9 offset:800
	ds_load_u8_d16 v126, v9 offset:832
	ds_load_u8_d16 v128, v9 offset:864
	ds_load_u8_d16 v253, v9 offset:880
	ds_load_u8_d16 v254, v9 offset:848
	ds_load_u8_d16 v34, v9 offset:816
	ds_load_u8_d16 v100, v9 offset:784
	ds_load_u8_d16 v135, v9 offset:896
	ds_load_u8_d16 v138, v9 offset:928
	ds_load_u8_d16 v134, v9 offset:960
	ds_load_u8_d16 v136, v9 offset:992
	ds_load_u8_d16 v103, v10
	ds_load_u8_d16 v105, v9 offset:976
	ds_load_u8_d16 v109, v9 offset:944
	ds_load_u8_d16 v111, v9 offset:912
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v9, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v17, v143, v145, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v18, v142, v144, 0xc0c0004
	v_perm_b32 v19, v139, v141, 0xc0c0004
	v_perm_b32 v20, v137, v140, 0xc0c0004
	v_perm_b32 v21, v131, v133, 0xc0c0004
	v_perm_b32 v22, v129, v132, 0xc0c0004
	v_lshl_or_b32 v32, v18, 16, v17
	v_perm_b32 v17, v120, v122, 0xc0c0004
	v_perm_b32 v18, v118, v119, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v146, s46, v213
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v31, v20, 16, v19
	v_lshl_or_b32 v30, v22, 16, v21
	v_lshl_or_b32 v29, v18, 16, v17
	v_dual_mov_b32 v24, s11 :: v_dual_mov_b32 v21, s8
	v_mov_b32_e32 v23, s10
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[9:12], v146
	ds_load_b128 v[165:168], v146 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v146, v113, v112, 0xc0c0004
	v_perm_b32 v147, v110, v108, 0xc0c0004
	v_perm_b32 v148, v102, v101, 0xc0c0004
	v_perm_b32 v149, v99, v255, 0xc0c0004
	v_perm_b32 v150, v252, v251, 0xc0c0004
	v_perm_b32 v151, v249, v247, 0xc0c0004
	v_perm_b32 v152, v239, v242, 0xc0c0004
	v_perm_b32 v153, v244, v243, 0xc0c0004
	v_dual_mov_b32 v22, s9 :: v_dual_mov_b32 v19, s6
	v_dual_mov_b32 v20, s7 :: v_dual_mov_b32 v17, s4
	v_mov_b32_e32 v18, s5
	v_mov_b32_e32 v162, v154
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v154, s46, v214
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v198, v147, 16, v146
	v_lshl_or_b32 v197, v149, 16, v148
	v_lshl_or_b32 v196, v151, 16, v150
	v_lshl_or_b32 v195, v153, 16, v152
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[9:12], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[227:234], v[165:168], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[9:12], v[195:198], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[165:168], v[195:198], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v29, v127, v130, 0xc0c0004
	v_perm_b32 v30, v126, v128, 0xc0c0004
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[9:12], v154
	ds_load_b128 v[165:168], v154 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v155, v135, v138, 0xc0c0004
	v_perm_b32 v156, v134, v136, 0xc0c0004
	v_lshl_or_b32 v31, v30, 16, v29
	v_perm_b32 v29, v123, v125, 0xc0c0004
	v_perm_b32 v30, v121, v124, 0xc0c0004
	v_perm_b32 v154, v254, v253, 0xc0c0004
	v_lshl_or_b32 v32, v156, 16, v155
	v_perm_b32 v155, v114, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v115, v117, 0xc0c0004
	v_lshl_or_b32 v29, v155, 16, v29
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[9:12], v[29:32], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[227:234], v[165:168], v[29:32], v[227:234] neg_lo:[1,1,0]
	v_perm_b32 v29, v111, v109, 0xc0c0004
	v_perm_b32 v30, v105, v103, 0xc0c0004
	v_perm_b32 v31, v100, v34, 0xc0c0004
	v_cvt_f32_i32_e32 v202, v221
	v_cvt_f32_i32_e32 v205, v222
	v_cvt_f32_i32_e32 v196, v223
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v250, v248, 0xc0c0004
	v_perm_b32 v30, v246, v245, 0xc0c0004
	v_lshl_or_b32 v31, v154, 16, v31
	v_perm_b32 v154, v238, v218, 0xc0c0004
	v_cvt_f32_i32_e32 v200, v224
	v_cvt_f32_i32_e32 v198, v227
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v241, v240, 0xc0c0004
	v_cvt_f32_i32_e32 v204, v228
	v_cvt_f32_i32_e32 v203, v229
	v_cvt_f32_i32_e32 v206, v230
	v_cvt_f32_i32_e32 v195, v231
	v_lshl_or_b32 v29, v154, 16, v29
	v_mov_b32_e32 v154, v162
	v_cvt_f32_i32_e32 v199, v232
	v_cvt_f32_i32_e32 v197, v233
	v_cvt_f32_i32_e32 v201, v234
	v_wmma_i32_16x16x16_iu8 v[146:153], v[9:12], v[29:32], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[165:168], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v207, v225
	v_cvt_f32_i32_e32 v208, v226
	v_cvt_f32_i32_e32 v209, v219
	v_cvt_f32_i32_e32 v211, v146
	v_cvt_f32_i32_e32 v212, v147
	v_cvt_f32_i32_e32 v167, v148
	v_cvt_f32_i32_e32 v168, v149
	v_cvt_f32_i32_e32 v146, v150
	v_cvt_f32_i32_e32 v155, v151
	v_cvt_f32_i32_e32 v32, v152
	v_cvt_f32_i32_e32 v31, v153
	v_cvt_f32_i32_e32 v29, v17
	v_cvt_f32_i32_e32 v30, v18
	v_cvt_f32_i32_e32 v17, v19
	v_cvt_f32_i32_e32 v18, v20
	v_cvt_f32_i32_e32 v11, v21
	v_cvt_f32_i32_e32 v12, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v210, v220
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v146, off offset:136
	scratch_store_b32 off, v32, off offset:132
	scratch_store_b32 off, v31, off offset:128
	scratch_store_b32 off, v30, off offset:124
	scratch_store_b32 off, v29, off offset:112
	scratch_store_b32 off, v18, off offset:108
	scratch_store_b32 off, v17, off offset:104
	scratch_store_b32 off, v12, off offset:92
	scratch_store_b32 off, v11, off offset:88
	scratch_store_b32 off, v10, off offset:84
	scratch_store_b32 off, v9, off offset:80
	ds_load_b128 v[29:32], v185 offset:34816
	ds_load_b128 v[21:24], v185 offset:34832
	ds_load_b128 v[17:20], v185 offset:35328
	ds_load_b128 v[9:12], v185 offset:35344
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v147, 0
	v_mov_b32_e32 v146, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v143, v143, v145, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v142, v142, v144, 0xc0c0004
	v_perm_b32 v139, v139, v141, 0xc0c0004
	v_perm_b32 v137, v137, v140, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v146, s45, v214
	v_add_nc_u32_e32 v151, s45, v213
	ds_load_b128 v[147:150], v146 offset:4096
	ds_load_b128 v[219:222], v146
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_lshl_or_b32 v234, v142, 16, v143
	v_lshl_or_b32 v233, v137, 16, v139
	v_mov_b32_e32 v146, s11
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[223:226], v151 offset:4096
	ds_load_b128 v[227:230], v151
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v131, v131, v133, 0xc0c0004
	v_perm_b32 v129, v129, v132, 0xc0c0004
	v_perm_b32 v120, v120, v122, 0xc0c0004
	v_perm_b32 v118, v118, v119, 0xc0c0004
	v_dual_mov_b32 v145, s10 :: v_dual_mov_b32 v144, s9
	v_mov_b32_e32 v143, s8
	v_lshl_or_b32 v232, v129, 16, v131
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v231, v118, 16, v120
	v_dual_mov_b32 v142, s7 :: v_dual_mov_b32 v141, s6
	v_dual_mov_b32 v140, s5 :: v_dual_mov_b32 v139, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v122, v135, v138, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v129, v134, v136, 0xc0c0004
	v_perm_b32 v127, v127, v130, 0xc0c0004
	v_perm_b32 v126, v126, v128, 0xc0c0004
	v_perm_b32 v123, v123, v125, 0xc0c0004
	v_perm_b32 v124, v121, v124, 0xc0c0004
	v_perm_b32 v125, v115, v117, 0xc0c0004
	v_perm_b32 v128, v114, v116, 0xc0c0004
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v108, v110, v108, 0xc0c0004
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_perm_b32 v99, v99, v255, 0xc0c0004
	v_perm_b32 v102, v252, v251, 0xc0c0004
	v_perm_b32 v110, v249, v247, 0xc0c0004
	v_perm_b32 v113, v239, v242, 0xc0c0004
	v_perm_b32 v130, v244, v243, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[227:230], v[231:234], v[139:146] neg_lo:[1,1,0]
	v_mov_b32_e32 v138, v154
	v_lshl_or_b32 v154, v129, 16, v122
	v_lshl_or_b32 v153, v126, 16, v127
	v_lshl_or_b32 v152, v124, 16, v123
	v_lshl_or_b32 v151, v128, 16, v125
	v_wmma_i32_16x16x16_iu8 v[122:129], v[223:226], v[231:234], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v234, v108, 16, v112
	v_lshl_or_b32 v233, v99, 16, v101
	v_lshl_or_b32 v232, v110, 16, v102
	v_lshl_or_b32 v231, v130, 16, v113
	v_perm_b32 v99, v111, v109, 0xc0c0004
	v_perm_b32 v101, v105, v103, 0xc0c0004
	v_perm_b32 v34, v100, v34, 0xc0c0004
	v_perm_b32 v100, v254, v253, 0xc0c0004
	v_perm_b32 v103, v250, v248, 0xc0c0004
	v_perm_b32 v105, v246, v245, 0xc0c0004
	v_perm_b32 v108, v241, v240, 0xc0c0004
	v_perm_b32 v109, v238, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[130:137], v[227:230], v[231:234], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v101, 16, v99
	v_lshl_or_b32 v101, v100, 16, v34
	v_lshl_or_b32 v100, v105, 16, v103
	v_lshl_or_b32 v99, v109, 16, v108
	v_wmma_i32_16x16x16_iu8 v[139:146], v[223:226], v[231:234], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[219:222], v[151:154], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[147:150], v[151:154], v[122:129] neg_lo:[1,1,0]
	v_mov_b32_e32 v154, v138
	v_wmma_i32_16x16x16_iu8 v[130:137], v[219:222], v[99:102], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[147:150], v[99:102], v[139:146] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v194, v114
	v_cvt_f32_i32_e32 v233, v115
	v_cvt_f32_i32_e32 v231, v116
	v_cvt_f32_i32_e32 v236, v117
	v_cvt_f32_i32_e32 v223, v118
	v_cvt_f32_i32_e32 v230, v119
	v_cvt_f32_i32_e32 v226, v120
	v_cvt_f32_i32_e32 v234, v121
	v_cvt_f32_i32_e32 v227, v122
	v_cvt_f32_i32_e32 v235, v123
	v_cvt_f32_i32_e32 v232, v124
	v_cvt_f32_i32_e32 v237, v125
	v_cvt_f32_i32_e32 v219, v126
	v_cvt_f32_i32_e32 v228, v127
	v_cvt_f32_i32_e32 v222, v128
	v_cvt_f32_i32_e32 v229, v129
	v_cvt_f32_i32_e32 v220, v130
	v_cvt_f32_i32_e32 v224, v131
	v_cvt_f32_i32_e32 v221, v132
	v_cvt_f32_i32_e32 v225, v133
	v_cvt_f32_i32_e32 v192, v134
	v_cvt_f32_i32_e32 v193, v135
	v_cvt_f32_i32_e32 v169, v136
	v_cvt_f32_i32_e32 v186, v137
	v_cvt_f32_i32_e32 v165, v139
	v_cvt_f32_i32_e32 v166, v140
	v_cvt_f32_i32_e32 v156, v141
	v_cvt_f32_i32_e32 v162, v142
	v_cvt_f32_i32_e32 v148, v143
	v_cvt_f32_i32_e32 v149, v144
	v_cvt_f32_i32_e32 v147, v145
	v_cvt_f32_i32_e32 v146, v146
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
	s_mul_i32 s34, s34, s27
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s0, s35
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(13)
	v_add_lshl_u32 v34, v107, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v99, v106, s1, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s4, -1, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(12)
	v_add_lshl_u32 v100, v104, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v107.l, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	v_mov_b16_e64 v107.h, v217.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v106, s27, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v213.h, v107.l
	v_mov_b16_e64 v214.h, v107.l
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	buffer_load_u16 v99, v99, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v215.h, v107.l
	v_mov_b16_e64 v217.h, v107.l
	v_mov_b16_e64 v218.h, v107.l
	s_and_b32 s25, s25, 0xffff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v33, v191, v107
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, v33, v30, v98
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v98, v98, v33, s2
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v99, 16, v99
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v240, v34, s[12:15], 0 offen
	buffer_load_u16 v239, v100, s[12:15], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v34, v216, s1, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v187, v99 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v116, off, off offset:164
	scratch_load_b32 v132, off, off offset:168
	scratch_load_b32 v119, off, off offset:156
	scratch_load_b32 v124, off, off offset:144
	scratch_load_b32 v128, off, off offset:148
	scratch_load_b32 v135, off, off offset:160
	scratch_load_b32 v140, off, off offset:152
	scratch_load_b32 v136, off, off offset:140
	scratch_load_b32 v123, off, off offset:172
	scratch_load_b32 v127, off, off offset:176
	scratch_load_b32 v115, off, off offset:184
	scratch_load_b32 v131, off, off offset:188
	scratch_load_b32 v139, off, off offset:180
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v216.h, v107.l
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v238, v34, s[28:31], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v34, 0xf0, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v99, 1, v34
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_mov_b16_e64 v34.h, v215.l
	v_mov_b16_e32 v34.l, v107.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v100, v164, v107
	v_mul_f32_e32 v101, v163, v107
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v104, s34, s33, v99
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v99, v190, v107
	v_dual_mul_f32 v102, v189, v107 :: v_dual_mul_f32 v111, v159, v34
	v_dual_mul_f32 v103, v188, v107 :: v_dual_mul_f32 v112, v157, v34
	v_mul_f32_e32 v109, v177, v34
	v_mul_f32_e32 v110, v158, v34
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v99, v99, v29, v97
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v101, v101, v25, v92
	v_fma_f32 v100, v100, v26, v93
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v102, v102, v32, v96
	v_fma_f32 v103, v103, v31, v95
	v_fma_f32 v30, v109, v30, v94
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v25, v112, v25, v84
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v105, v161, v107 :: v_dual_mul_f32 v114, v170, v34
	v_dual_mul_f32 v108, v160, v107 :: v_dual_mul_f32 v113, v178, v34
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v97, v97, v99, s2
	v_cndmask_b32_e64 v99, v93, v100, s2
	v_cndmask_b32_e64 v100, v92, v101, s2
	v_cndmask_b32_e64 v101, v96, v102, s2
	v_cndmask_b32_e64 v102, v95, v103, s2
	v_cndmask_b32_e64 v103, v94, v30, s2
	v_cndmask_b32_e64 v30, v84, v25, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v108, v108, v27, v88
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v32, v113, v32, v91
	v_fma_f32 v31, v114, v31, v90
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v105, v105, v28, v89
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v29, v110, v29, v35
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v26, v111, v26, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v88, v88, v108, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v118, v171, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v89, v105, s2
	v_cndmask_b32_e64 v105, v35, v29, s2
	v_cndmask_b32_e64 v29, v85, v26, s2
	v_cndmask_b32_e64 v85, v90, v31, s2
	v_cndmask_b32_e64 v84, v91, v32, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v25, 16, v240
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v121, v180, v34
	v_mul_f32_e32 v122, v172, v34
	v_mul_f32_e32 v130, v174, v34
	v_mul_f32_e32 v117, v179, v34
	v_dual_mul_f32 v129, v182, v34 :: v_dual_mul_f32 v92, v204, v25
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v113, v121, v24, v83
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(13)
	v_mul_f32_e32 v116, v116, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v114, v122, v23, v82
	v_fma_f32 v122, v130, v19, v50
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(12)
	v_mul_f32_e32 v132, v132, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v108, v83, v113, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(11)
	v_mul_f32_e32 v119, v119, v34
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v27, v116, v27, v80
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v113, v50, v122, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v123, v123, v34 :: v_dual_mul_f32 v122, v233, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v109, v117, v22, v87
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v128, v128, v34
	v_mul_f32_e32 v135, v135, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v116, v123, v16, v49
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v121, v129, v20, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v87, v109, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v87, v207, v25
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v123, v132, v7, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v120, v154, v34
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v125, v181, v34
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v127, v127, v34
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v133, v183, v34 :: v_dual_mul_f32 v94, v206, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v40, v123, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v40, v202, v25
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v112, v119, v14, v77
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v136, v136, v34 :: v_dual_mul_f32 v93, v198, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v119, v128, v5, v44
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v132, v237, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v128, v135, v2, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v77, v112, s2
	v_cndmask_b32_e64 v112, v75, v121, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v75, 16, v239
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v110, v118, v21, v86
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v115, v115, v34
	v_dual_mul_f32 v124, v124, v34 :: v_dual_mul_f32 v123, v194, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v126, v173, v34
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v131, v131, v34
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v139, v139, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v117, v125, v18, v79
	v_fma_f32 v125, v133, v10, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v80, v27, s2
	v_cndmask_b32_e64 v91, v86, v110, s2
	v_cndmask_b32_e64 v80, v49, v116, s2
	v_cndmask_b32_e64 v116, v39, v128, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v39, v205, v25
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v111, v120, v13, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v86, v208, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v120, v127, v6, v45
	v_fma_f32 v127, v136, v1, v38
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v138, v176, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v109, v82, v114, s2
	v_cndmask_b32_e64 v110, v79, v117, s2
	v_cndmask_b32_e64 v114, v47, v125, s2
	v_cndmask_b32_e64 v117, v38, v127, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v38, v209, v25
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v28, v115, v28, v81
	v_fma_f32 v115, v124, v15, v48
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v125, v231, v25
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v118, v126, v17, v78
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v128, v234, v25
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v124, v131, v8, v42
	v_fma_f32 v131, v139, v4, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v137, v184, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v76, v111, s2
	v_cndmask_b32_e64 v111, v78, v118, s2
	v_cndmask_b32_e64 v78, v45, v120, s2
	v_cndmask_b32_e64 v120, v37, v131, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v131, v227, v25
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v130, v138, v11, v41
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v134, v175, v34
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v34, v140, v34 :: v_dual_mul_f32 v95, v203, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v44, v119, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v119, v41, v130, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v130, v235, v25
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v129, v137, v12, v43
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v34, v34, v3, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v81, v28, s2
	v_cndmask_b32_e64 v81, v48, v115, s2
	v_cndmask_b32_e64 v82, v42, v124, s2
	v_cndmask_b32_e64 v118, v43, v129, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v129, v226, v25
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v126, v134, v9, v46
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	ds_load_b128 v[47:50], v185 offset:34816
	ds_load_b128 v[41:44], v185 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v121, v36, v34, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v37, v210, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v115, v46, v126, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v124, v236, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v45, v200, v25
	v_mul_f32_e32 v46, v196, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v126, v230, v25
	v_mul_f32_e32 v127, v223, v25
	v_dual_mul_f32 v133, v232, v25 :: v_dual_mul_f32 v142, v211, v75
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v96, v199, v25 :: v_dual_mul_f32 v141, v212, v75
	v_dual_mul_f32 v134, v195, v25 :: v_dual_mul_f32 v143, v224, v75
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v135, v228, v25
	v_dual_mul_f32 v136, v219, v25 :: v_dual_mul_f32 v145, v225, v75
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v137, v201, v25 :: v_dual_mul_f32 v144, v220, v75
	v_mul_f32_e32 v138, v197, v25
	ds_load_b128 v[33:36], v185 offset:35328
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v139, v229, v25 :: v_dual_mov_b32 v208, v147
	v_dual_mul_f32 v140, v222, v25 :: v_dual_mov_b32 v211, v149
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[25:28], v185 offset:35344
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v147, v46, v41, v76
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v209, v146 :: v_dual_lshlrev_b32 v46, 16, v238
	v_mov_b32_e32 v210, v148
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v42, v77
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v187, v46 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v38, v38, v47, v30
	v_fma_f32 v37, v37, v48, v29
	v_fma_f32 v40, v40, v49, v32
	v_fma_f32 v39, v39, v50, v31
	v_fma_f32 v148, v93, v33, v79
	v_fma_f32 v149, v95, v35, v83
	v_fma_f32 v150, v94, v36, v82
	v_fma_f32 v142, v142, v47, v100
	v_fma_f32 v141, v141, v48, v99
	v_fma_f32 v151, v96, v26, v116
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[93:96], v185 offset:34816
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v158, v77, v45, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[45:48], v185 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v152, v29, v37, s3
	v_cndmask_b32_e64 v153, v30, v38, s3
	v_cndmask_b32_e64 v154, v31, v39, s3
	v_cndmask_b32_e64 v157, v32, v40, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[37:40], v185 offset:35328
	ds_load_b128 v[29:32], v185 offset:35344
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v86, v86, v44, v80
	v_fma_f32 v87, v87, v43, v81
	v_fma_f32 v92, v92, v34, v78
	v_fma_f32 v134, v134, v25, v117
	v_fma_f32 v138, v138, v27, v121
	v_fma_f32 v137, v137, v28, v120
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v147, v76, v147, s3
	v_cndmask_b32_e64 v159, v80, v86, s3
	v_cndmask_b32_e64 v80, v99, v141, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v146, v221, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v160, v81, v87, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v76, v123, v93, v105
	v_fma_f32 v99, v122, v94, v103
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v92, v78, v92, s3
	v_cndmask_b32_e64 v87, v79, v148, s3
	v_cndmask_b32_e64 v86, v82, v150, s3
	v_cndmask_b32_e64 v82, v116, v151, s3
	v_cndmask_b32_e64 v77, v117, v134, s3
	v_cndmask_b32_e64 v81, v120, v137, s3
	v_cndmask_b32_e64 v79, v121, v138, s3
	v_cndmask_b32_e64 v78, v100, v142, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v100, v125, v95, v85
	v_fma_f32 v116, v124, v96, v84
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v117, v127, v45, v91
	v_fma_f32 v120, v126, v46, v90
	v_fma_f32 v121, v129, v47, v109
	v_fma_f32 v122, v128, v48, v108
	v_fma_f32 v93, v144, v93, v97
	v_fma_f32 v94, v143, v94, v98
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v99, v103, v99, s3
	v_cndmask_b32_e64 v76, v105, v76, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v123, v131, v37, v111
	v_fma_f32 v124, v130, v38, v110
	v_fma_f32 v125, v133, v39, v113
	v_fma_f32 v126, v132, v40, v112
	v_fma_f32 v95, v146, v95, v102
	v_fma_f32 v96, v145, v96, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v84, v116, s3
	v_cndmask_b32_e64 v100, v85, v100, s3
	v_cndmask_b32_e64 v105, v90, v120, s3
	v_cndmask_b32_e64 v116, v91, v117, s3
	v_cndmask_b32_e64 v108, v108, v122, s3
	v_cndmask_b32_e64 v109, v109, v121, s3
	v_cndmask_b32_e64 v91, v98, v94, s3
	v_cndmask_b32_e64 v90, v97, v93, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v93, 0xbfb8aa3b, v76 :: v_dual_mul_f32 v94, 0xbfb8aa3b, v99
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v127, v136, v29, v115
	v_fma_f32 v128, v135, v30, v114
	v_fma_f32 v129, v140, v31, v119
	v_fma_f32 v130, v139, v32, v118
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v110, v124, s3
	v_cndmask_b32_e64 v111, v111, v123, s3
	v_cndmask_b32_e64 v112, v112, v126, s3
	v_cndmask_b32_e64 v113, v113, v125, s3
	v_cndmask_b32_e64 v85, v101, v96, s3
	v_cndmask_b32_e64 v84, v102, v95, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v95, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v96, 0xbfb8aa3b, v103
	v_mul_f32_e32 v97, 0xbfb8aa3b, v116
	v_dual_mul_f32 v101, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v102, 0xbfb8aa3b, v108
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v93
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v114, v114, v128, s3
	v_cndmask_b32_e64 v115, v115, v127, s3
	v_cndmask_b32_e64 v117, v118, v130, s3
	v_cndmask_b32_e64 v118, v119, v129, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v98, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v119, 0xbfb8aa3b, v111
	v_dual_mul_f32 v120, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v121, 0xbfb8aa3b, v113
	v_dual_mul_f32 v122, 0xbfb8aa3b, v112 :: v_dual_mul_f32 v123, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v94, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v96
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v95
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v97
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v102
	v_dual_mul_f32 v124, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v129, 0xbfb8aa3b, v84
	v_dual_mul_f32 v125, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v126, 0xbfb8aa3b, v117
	v_dual_mul_f32 v127, 0xbfb8aa3b, v90 :: v_dual_mul_f32 v128, 0xbfb8aa3b, v91
	v_dual_mul_f32 v130, 0xbfb8aa3b, v85 :: v_dual_fmac_f32 v93, 0xbfb8aa3b, v76
	v_cndmask_b32_e64 v96, 0, 0x42800000, s1
	v_cndmask_b32_e64 v95, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v98
	v_cndmask_b32_e64 v97, 0, 0x42800000, s6
	v_cndmask_b32_e64 v102, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v101
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v120
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v119
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v122
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v121
	v_dual_fmac_f32 v94, 0xbfb8aa3b, v99 :: v_dual_fmac_f32 v95, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v98, 0, 0x42800000, s5
	v_cndmask_b32_e64 v101, 0, 0x42800000, s8
	v_cndmask_b32_e64 v120, 0, 0x42800000, s9
	v_cndmask_b32_e64 v119, 0, 0x42800000, s10
	v_cndmask_b32_e64 v122, 0, 0x42800000, s11
	v_cndmask_b32_e64 v121, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v124
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v123
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v126
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v125
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v128
	v_dual_fmac_f32 v96, 0xbfb8aa3b, v103 :: v_dual_fmac_f32 v97, 0xbfb8aa3b, v116
	v_dual_fmac_f32 v102, 0xbfb8aa3b, v108 :: v_dual_fmac_f32 v101, 0xbfb8aa3b, v109
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v93, v93
	v_cndmask_b32_e64 v124, 0, 0x42800000, s13
	v_cndmask_b32_e64 v123, 0, 0x42800000, s14
	v_cndmask_b32_e64 v126, 0, 0x42800000, s15
	v_cndmask_b32_e64 v125, 0, 0x42800000, s16
	v_cndmask_b32_e64 v128, 0, 0x42800000, s17
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v127
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v130
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v129
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v98, 0xbfb8aa3b, v105 :: v_dual_fmac_f32 v119, 0xbfb8aa3b, v111
	v_dual_fmac_f32 v120, 0xbfb8aa3b, v110 :: v_dual_fmac_f32 v121, 0xbfb8aa3b, v113
	v_dual_fmac_f32 v122, 0xbfb8aa3b, v112 :: v_dual_fmac_f32 v123, 0xbfb8aa3b, v115
	v_exp_f32_e32 v96, v96
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v102, v102
	v_cndmask_b32_e64 v127, 0, 0x42800000, s18
	v_cndmask_b32_e64 v130, 0, 0x42800000, s19
	v_cndmask_b32_e64 v129, 0, 0x42800000, s20
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s7
	v_dual_fmac_f32 v124, 0xbfb8aa3b, v114 :: v_dual_fmac_f32 v129, 0xbfb8aa3b, v84
	v_dual_fmac_f32 v126, 0xbfb8aa3b, v117 :: v_dual_fmac_f32 v125, 0xbfb8aa3b, v118
	v_dual_fmac_f32 v128, 0xbfb8aa3b, v91 :: v_dual_fmac_f32 v127, 0xbfb8aa3b, v90
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v121, v121
	v_ldexp_f32 v94, v94, v131
	v_ldexp_f32 v93, v93, v132
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v142, 0, 0xffffffc0, s12
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v123, v123
	v_exp_f32_e32 v125, v125
	v_exp_f32_e32 v128, v128
	v_ldexp_f32 v96, v96, v133
	v_ldexp_f32 v95, v95, v134
	v_fmac_f32_e32 v130, 0xbfb8aa3b, v85
	v_ldexp_f32 v97, v97, v136
	v_ldexp_f32 v102, v102, v137
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v93, 1.0, v93 :: v_dual_add_f32 v94, 1.0, v94
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v144, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v148, 0, 0xffffffc0, s17
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v129, v129
	v_ldexp_f32 v98, v98, v135
	v_ldexp_f32 v101, v101, v138
	v_ldexp_f32 v120, v120, v139
	v_ldexp_f32 v119, v119, v140
	v_ldexp_f32 v122, v122, v141
	v_ldexp_f32 v121, v121, v142
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v95, 1.0, v95
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v130, v130
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v96, 1.0, v96 :: v_dual_add_f32 v97, 1.0, v97
	v_dual_add_f32 v102, 1.0, v102 :: v_dual_add_f32 v119, 1.0, v119
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v131, null, v94, v94, v99
	v_div_scale_f32 v133, null, v93, v93, v76
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v83, v149, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s19
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, s20
	v_ldexp_f32 v124, v124, v143
	v_ldexp_f32 v123, v123, v144
	v_ldexp_f32 v125, v125, v146
	v_ldexp_f32 v128, v128, v148
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v98, 1.0, v98 :: v_dual_add_f32 v101, 1.0, v101
	v_dual_add_f32 v120, 1.0, v120 :: v_dual_add_f32 v121, 1.0, v121
	v_dual_add_f32 v122, 1.0, v122 :: v_dual_add_f32 v123, 1.0, v123
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v135, null, v96, v96, v103
	v_div_scale_f32 v137, null, v95, v95, v100
	v_div_scale_f32 v141, null, v97, v97, v116
	v_div_scale_f32 v143, null, v102, v102, v108
	v_rcp_f32_e32 v177, v131
	v_rcp_f32_e32 v178, v133
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v126, v126, v145
	v_ldexp_f32 v127, v127, v149
	v_ldexp_f32 v130, v130, v150
	v_ldexp_f32 v129, v129, v151
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v124, 1.0, v124 :: v_dual_add_f32 v125, 1.0, v125
	v_add_f32_e32 v128, 1.0, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v139, null, v98, v98, v105
	v_div_scale_f32 v145, null, v101, v101, v109
	v_div_scale_f32 v148, null, v120, v120, v110
	v_div_scale_f32 v161, null, v122, v122, v112
	v_div_scale_f32 v163, null, v121, v121, v113
	v_rcp_f32_e32 v179, v135
	v_rcp_f32_e32 v180, v137
	v_rcp_f32_e32 v182, v141
	v_rcp_f32_e32 v183, v143
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v126, 1.0, v126 :: v_dual_add_f32 v127, 1.0, v127
	v_add_f32_e32 v129, 1.0, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v150, null, v119, v119, v111
	v_div_scale_f32 v164, null, v124, v124, v114
	v_div_scale_f32 v170, null, v123, v123, v115
	v_div_scale_f32 v172, null, v125, v125, v118
	v_div_scale_f32 v173, null, v128, v128, v91
	v_rcp_f32_e32 v181, v139
	v_rcp_f32_e32 v184, v145
	v_rcp_f32_e32 v185, v148
	v_rcp_f32_e32 v188, v161
	v_rcp_f32_e32 v189, v163
	v_fma_f32 v200, -v131, v177, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v130, 1.0, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v201, -v133, v178, 1.0
	v_div_scale_f32 v171, null, v126, v126, v117
	v_div_scale_f32 v174, null, v127, v127, v90
	v_rcp_f32_e32 v187, v150
	v_rcp_f32_e32 v190, v164
	v_rcp_f32_e32 v191, v170
	v_rcp_f32_e32 v195, v172
	v_rcp_f32_e32 v196, v173
	v_fma_f32 v202, -v135, v179, 1.0
	v_fma_f32 v203, -v137, v180, 1.0
	v_fmac_f32_e32 v177, v200, v177
	v_div_scale_f32 v175, null, v130, v130, v85
	v_fma_f32 v200, -v141, v182, 1.0
	v_dual_fmac_f32 v178, v201, v178 :: v_dual_fmac_f32 v179, v202, v179
	v_fma_f32 v201, -v143, v183, 1.0
	v_div_scale_f32 v176, null, v129, v129, v84
	v_rcp_f32_e32 v194, v171
	v_rcp_f32_e32 v197, v174
	v_rcp_f32_e32 v198, v175
	v_fma_f32 v204, -v139, v181, 1.0
	v_fma_f32 v202, -v145, v184, 1.0
	v_fmac_f32_e32 v180, v203, v180
	v_fma_f32 v203, -v148, v185, 1.0
	v_dual_fmac_f32 v182, v200, v182 :: v_dual_fmac_f32 v183, v201, v183
	v_fma_f32 v200, -v161, v188, 1.0
	v_fma_f32 v201, -v163, v189, 1.0
	v_div_scale_f32 v132, vcc_lo, v99, v94, v99
	v_div_scale_f32 v134, s6, v76, v93, v76
	v_rcp_f32_e32 v199, v176
	v_fmac_f32_e32 v181, v204, v181
	v_fma_f32 v204, -v150, v187, 1.0
	v_dual_fmac_f32 v184, v202, v184 :: v_dual_fmac_f32 v185, v203, v185
	v_fma_f32 v202, -v164, v190, 1.0
	v_fma_f32 v203, -v170, v191, 1.0
	v_dual_fmac_f32 v188, v200, v188 :: v_dual_fmac_f32 v189, v201, v189
	v_fma_f32 v200, -v172, v195, 1.0
	v_fma_f32 v201, -v173, v196, 1.0
	v_dual_fmac_f32 v187, v204, v187 :: v_dual_fmac_f32 v190, v202, v190
	v_fma_f32 v204, -v171, v194, 1.0
	v_fma_f32 v202, -v174, v197, 1.0
	v_fmac_f32_e32 v191, v203, v191
	v_fma_f32 v203, -v175, v198, 1.0
	v_dual_fmac_f32 v195, v200, v195 :: v_dual_fmac_f32 v196, v201, v196
	v_dual_mul_f32 v200, v132, v177 :: v_dual_mul_f32 v201, v134, v178
	v_fmac_f32_e32 v194, v204, v194
	v_fma_f32 v204, -v176, v199, 1.0
	v_dual_fmac_f32 v197, v202, v197 :: v_dual_fmac_f32 v198, v203, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v202, -v131, v200, v132
	v_fma_f32 v203, -v133, v201, v134
	v_div_scale_f32 v136, s7, v103, v96, v103
	v_dual_fmac_f32 v199, v204, v199 :: v_dual_fmac_f32 v200, v202, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v201, v203, v178
	v_div_scale_f32 v138, s8, v100, v95, v100
	v_div_scale_f32 v140, s9, v105, v98, v105
	v_fma_f32 v131, -v131, v200, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v133, -v133, v201, v134
	v_mul_f32_e32 v134, v136, v179
	v_div_scale_f32 v144, s5, v108, v102, v108
	v_div_fmas_f32 v131, v131, v177, v200
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v200, -v135, v134, v136
	v_mul_f32_e32 v177, v138, v180
	v_div_fmas_f32 v133, v133, v178, v201
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v142, s10, v116, v97, v116
	v_fmac_f32_e32 v134, v200, v179
	v_fma_f32 v178, -v137, v177, v138
	v_div_scale_f32 v151, s0, v111, v119, v111
	v_div_fixup_f32 v94, v131, v94, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v135, -v135, v134, v136
	v_fmac_f32_e32 v177, v178, v180
	v_div_scale_f32 v149, s1, v110, v120, v110
	v_div_fixup_f32 v93, v133, v93, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v134, v135, v179, v134
	v_mul_f32_e32 v135, v140, v181
	v_fma_f32 v137, -v137, v177, v138
	v_mul_f32_e32 v138, v144, v183
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v96, v134, v96, v103
	v_div_scale_f32 v202, s12, v113, v121, v113
	v_div_fmas_f32 v137, v137, v180, v177
	v_mul_f32_e32 v180, v151, v187
	v_fma_f32 v131, -v139, v135, v140
	v_fma_f32 v103, -v143, v138, v144
	v_mul_f32_e32 v179, v142, v182
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v96, v154, v96 :: v_dual_fmac_f32 v135, v131, v181
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v138, v103, v183
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v131, -v141, v179, v142
	v_fma_f32 v103, -v150, v180, v151
	v_mul_f32_e32 v177, v149, v185
	v_fma_f32 v76, -v139, v135, v140
	v_div_scale_f32 v146, s4, v109, v101, v109
	v_fmac_f32_e32 v179, v131, v182
	v_div_scale_f32 v201, s6, v117, v126, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v135, v76, v181, v135
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v76, -v141, v179, v142
	v_dual_mul_f32 v205, v202, v189 :: v_dual_fmac_f32 v180, v103, v187
	v_div_scale_f32 v136, s17, v90, v127, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v142, v76, v182, v179
	v_fma_f32 v76, -v148, v177, v149
	v_dual_mul_f32 v99, v146, v184 :: v_dual_mul_f32 v140, v201, v194
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v182.h, v107.l
	v_mov_b16_e64 v216.l, v96.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v177, v76, v185
	v_fma_f32 v76, -v163, v205, v202
	v_mul_f32_e32 v179, v136, v197
	v_div_scale_f32 v204, s11, v112, v122, v112
	v_div_scale_f32 v203, s13, v114, v124, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v205, v76, v189
	v_fma_f32 v76, -v171, v140, v201
	v_div_scale_f32 v132, s14, v115, v123, v115
	v_mul_f32_e32 v133, v204, v188
	v_fma_f32 v134, -v145, v99, v146
	v_fmac_f32_e32 v140, v76, v194
	v_fma_f32 v76, -v174, v179, v136
	v_div_scale_f32 v200, s15, v118, v125, v118
	v_div_scale_f32 v178, s16, v91, v128, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v179, v76, v197
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v76, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v139, v203, v190 :: v_dual_mul_f32 v168, v168, v75
	v_mul_f32_e32 v131, v132, v191
	v_fmac_f32_e32 v99, v134, v184
	v_fma_f32 v134, -v161, v133, v204
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v93, v153, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v103, -v164, v139, v203
	v_div_fixup_f32 v98, v135, v98, v105
	v_mul_f32_e32 v181, v200, v195
	v_fma_f32 v145, -v145, v99, v146
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v146.h, v107.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v133, v134, v188
	v_fma_f32 v134, -v170, v131, v132
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v213.l, v93.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v141, v178, v196
	v_fmac_f32_e32 v139, v103, v190
	v_fma_f32 v161, -v161, v133, v204
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v204.h, v107.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v131, v134, v191
	v_fma_f32 v134, -v173, v141, v178
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v98, v158, v98
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v103, -v172, v181, v200
	v_fma_f32 v143, -v143, v138, v144
	v_fma_f32 v132, -v170, v131, v132
	v_fmac_f32_e32 v141, v134, v196
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v170.h, v107.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v181, v103, v195
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v148, -v148, v177, v149
	v_fma_f32 v150, -v150, v180, v151
	v_fma_f32 v163, -v163, v205, v202
	v_fma_f32 v172, -v172, v181, v200
	v_fma_f32 v171, -v171, v140, v201
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v103.h, v107.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v97, v142, v97, v116
	v_fma_f32 v136, -v174, v179, v136
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v144.h, v107.l
	v_mov_b16_e64 v218.l, v98.h
	v_mov_b16_e64 v202.h, v107.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v97, v147, v97
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v149.h, v107.l
	v_mov_b16_e64 v201.h, v107.l
	v_cmp_o_f32_e64 s8, v98, v98
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v50, v168, v50, v89
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v217.l, v97.h
	v_cmp_o_f32_e64 s9, v97, v97
	v_mov_b16_e64 v134.h, v107.l
	v_mov_b16_e64 v151.h, v107.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v89, v50, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v206, v76, v107
	scratch_load_b32 v76, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v200, v206, v22, v74
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v173, v141, v178
	v_div_scale_f32 v173, s7, v85, v130, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v74, v200, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v174, v173, v198 :: v_dual_mul_f32 v207, v76, v107
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v76, s27, 4, v106
	s_mov_b32 s27, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v178, v207, v21, v73
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v152, v94
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v94, v137, v95, v100
	v_div_fmas_f32 v95, v143, v183, v138
	s_mov_b32 vcc_lo, s4
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v178, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v99, v145, v184, v99
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v214.l, v21.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v100, v148, v185, v177
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v95, v95, v102, v108
	v_div_fmas_f32 v102, v150, v187, v180
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v100, v100, v120, v110
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v94, v157, v94
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v99, v99, v101, v109
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v101, 1, v214
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v105, v161, v188, v133
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v92, v92, v100
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v164, -v164, v139, v203
	s_mov_b32 vcc_lo, s12
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v95, v159, v95 :: v_dual_and_b32 v108, 1, v213
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v109, v163, v189, v205
	s_mov_b32 vcc_lo, s13
	v_div_fixup_f32 v102, v102, v119, v111
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v215.l, v94.h
	v_and_b32_e32 v110, 1, v216
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v111, v164, v190, v139
	s_mov_b32 vcc_lo, s14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v21, v21
	v_add3_u32 v21, v21, v101, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v101, v105, v122, v112
	v_div_fmas_f32 v100, v132, v191, v131
	s_mov_b32 vcc_lo, s6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v93, v93
	v_add3_u32 v93, v93, v108, 0x7fff
	v_mov_b16_e32 v103.l, v95.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v87, v87, v102
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v102, v171, v194, v140
	s_mov_b32 vcc_lo, s15
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v96, v96
	v_and_b32_e32 v105, 1, v215
	v_add3_u32 v96, v96, v110, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v110, v111, v124, v114
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v86, v86, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v101, v172, v195, v181
	s_mov_b32 vcc_lo, s16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.l, 0x7fff, v93.h, s1
	v_and_b32_e32 v93, 1, v103
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v103, v22, v196, v141
	s_mov_b32 vcc_lo, s17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v94, v94
	v_add3_u32 v94, v94, v105, 0x7fff
	v_mov_b16_e64 v182.l, v92.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v100, v100, v123, v115
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v144.l, v87.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v102, v102, v126, v117
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v105, v82, v110
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v82, v136, v197, v179
	v_div_fixup_f32 v108, v109, v121, v113
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s10, v95, v95
	v_mov_b16_e64 v146.l, v86.h
	v_cndmask_b16 v22.l, 0x7fff, v94.h, s5
	v_and_b32_e32 v94, 1, v182
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v100, v77, v100
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v93, v95, v93, 0x7fff
	v_and_b32_e32 v95, 1, v144
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v81, v81, v102
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v82, v82, v127, v90
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v111, 1, v217
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v83, v83, v108
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v109, 1, v218
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s4
	v_cmp_o_f32_e64 s4, v92, v92
	v_cmp_o_f32_e64 s1, v87, v87
	v_and_b32_e32 v90, 1, v146
	v_add3_u32 v92, v92, v94, 0x7fff
	v_mov_b16_e64 v204.l, v100.h
	v_add3_u32 v87, v87, v95, 0x7fff
	v_mov_b16_e64 v202.l, v81.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v94, v78, v82
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v97, v97, v111, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v101, v101, v125, v118
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v149.l, v83.h
	v_add3_u32 v98, v98, v109, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_add3_u32 v78, v86, v90, 0x7fff
	v_and_b32_e32 v86, 1, v204
	v_cndmask_b16 v82.l, 0x7fff, v87.h, s1
	v_and_b32_e32 v87, 1, v202
	v_mov_b16_e64 v201.l, v94.h
	v_cndmask_b16 v77.l, 0x7fff, v97.h, s9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v97, v79, v101
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v79.h, 0x7fff, v93.h, s10
	v_and_b32_e32 v93, 1, v149
	v_cndmask_b16 v77.h, 0x7fff, v98.h, s8
	v_cmp_o_f32_e64 s8, v100, v100
	v_cmp_o_f32_e64 s9, v81, v81
	v_add3_u32 v86, v100, v86, 0x7fff
	v_add3_u32 v81, v81, v87, 0x7fff
	v_and_b32_e32 v87, 1, v201
	v_cndmask_b16 v22.h, 0x7fff, v96.h, s0
	v_cmp_o_f32_e64 s0, v83, v83
	v_add3_u32 v83, v83, v93, 0x7fff
	v_cndmask_b16 v83.l, 0x7fff, v86.h, s8
	v_add3_u32 v86, v94, v87, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v87, v193, v75
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v78.h, 0x7fff, v78.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v91, v103, v128, v91
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v151.l, v105.h
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v46, v87, v46, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v87, -v175, v174, v173
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v203.h, v107.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v80, v80, v91
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v91, 1, v151
	v_mov_b16_e64 v203.l, v97.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v174, v87, v198
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v105, v105
	v_mov_b16_e64 v170.l, v80.h
	v_add3_u32 v90, v105, v91, 0x7fff
	v_and_b32_e32 v91, 1, v203
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v87, -v175, v174, v173
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v82.h, 0x7fff, v92.h, s4
	v_cndmask_b16 v78.l, 0x7fff, v83.h, s0
	v_and_b32_e32 v92, 1, v170
	v_cndmask_b16 v83.h, 0x7fff, v90.h, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v87, v87, v198, v174
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v90, v97, v91, 0x7fff
	v_cmp_o_f32_e64 s4, v80, v80
	v_add3_u32 v91, v80, v92, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v74, v46, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v85, v87, v130, v85
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v99, v160, v99
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v80.h, 0x7fff, v81.h, s9
	v_cndmask_b16 v81.h, 0x7fff, v91.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v91, v192, v75 :: v_dual_mul_f32 v50, v50, v85
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v134.l, v99.h
	v_cmp_o_f32_e64 s6, v99, v99
	v_cmp_o_f32_e64 s1, v94, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v45, v91, v45, v73
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v91, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v96, 1, v134
	v_cndmask_b16 v81.l, 0x7fff, v86.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v167, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v96, v99, v96, 0x7fff
	v_mov_b16_e32 v86.h, v107.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v79.l, 0x7fff, v96.h, s6
	v_cmp_o_f32_e64 s6, v97, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v80.l, 0x7fff, v90.h, s6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v90, s0, v84, v129, v84
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v92, v90, v199 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v46
	v_fma_f32 v74, -v176, v92, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v45, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v92, v74, v199
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v73
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v49, v167, v49, v88
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v89, -v176, v92, v90
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v90, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v74
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v88, v49, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v45, v87
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v89, v89, v199, v92
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s5
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, s5
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v87, 1.0, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v84, v89, v129, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v73 :: v_dual_mul_f32 v49, v49, v84
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v84.l, v50.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v74, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v84.h, v107.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v86.l, v49.h
	v_and_b32_e32 v45, 1, v84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v84, null, v87, v87, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v74, v74, v85
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v85, 1, v86
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v86, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v50, v45, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v50, 1.0, v74
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v74, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v89, null, v50, v50, v73
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v90, v90, v107
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v24, v90, v24, v70
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:96
	scratch_load_b32 v88, off, off offset:64
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v70, v24, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v70, v186, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v48, v70, v48, v24
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, s0, v73, v50, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v48, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v86, v86, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v14, v86, v14, v72
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v86, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v72, v14, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, vcc_lo, v46, v87, v46
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v90, v90, v107
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v88, v88, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v90, v23, v69
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v13, v88, v13, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v88, -v84, v74, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v69, v23, s2
	v_cndmask_b32_e64 v13, v71, v13, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v74, v88, v74
	v_fma_f32 v88, -v89, v86, 1.0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v71, v155, v75
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v69, v169, v75 :: v_dual_mul_f32 v92, v72, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v86, v88, v86
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v71, v42, v14
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v47, v69, v47, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v24
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v84, v92, v72
	v_mul_f32_e32 v88, v70, v86
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v42, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v71, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v92, v48, v74
	v_fma_f32 v48, -v89, v88, v70
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v47, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v84, v92, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v48, v86
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v48, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v42, v74, v92
	v_fma_f32 v69, -v89, v88, v70
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	v_exp_f32_e32 v47, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v42, v87, v46
	v_div_fmas_f32 v69, v69, v86, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v14, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v69, v50, v73
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:52
	scratch_load_b32 v69, off, off offset:48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v14, v14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v42, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.h, v107.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v71, v71, v75
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v50, v50, v107
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v69, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v50, v16, v68
	v_fma_f32 v15, v69, v15, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v67, v15, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v67, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v91, v91, v75
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v41, v91, v41, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v13, v41, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v46, v13, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v14.h
	v_mov_b16_e32 v13.h, v107.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v41, v47, v41
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v46.h
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v42, v42, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v13, v14, v13, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v68, v16, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v85, v49, v85, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v71, v44, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v48, v46, v48, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, null, v42, v42, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v45.l, 0x7fff, v85.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v44, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v50, v70
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v46, v46
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v46, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.l, 0x7fff, v48.h, s0
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v67, v67, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v18, v67, v18, v66
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v67, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v66, v18, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v66, v166, v75
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v38, v66, v38, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v38, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v16, v16, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v44, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v16, v43, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v41, v41, v24
	v_div_scale_f32 v68, vcc_lo, v24, v41, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v16, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v47
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v46, v46, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v19, v46, v19, v61
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v69, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v61, v19, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v69, v49
	v_fma_f32 v69, -v70, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v43, v68, v49 :: v_dual_fmac_f32 v50, v69, v50
	v_div_scale_f32 v69, s1, v23, v42, v23
	v_fma_f32 v66, -v47, v43, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v66, v49
	v_fma_f32 v16, -v47, v43, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v16, v16, v49, v43
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v16, v16, v41, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v14, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v67, v67, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v17, v67, v17, v65
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v67, v69, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v65, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v70, v67, v69
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v65, v165, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v67, v38, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v37, v65, v37, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v70, v67, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v37, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s4
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v38, v50, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v44, v44, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v38, v42, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v24, v37
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v20, v44, v20, v64
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v15, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v14.h
	v_mov_b16_e32 v23.h, v107.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v23, 1, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v17
	v_ldexp_f32 v16, v24, v16
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v23, v14, v23, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v14, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v37
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.l, v15.h
	v_mov_b16_e32 v37.h, v107.l
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v16, v16, v18
	v_div_scale_f32 v47, vcc_lo, v18, v16, v18
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v38, v41
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_and_b32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v37, v15, v37, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v24, v24, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v42, v42, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v5, v42, v5, v62
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v62, v5, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v107
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v43, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v14, v6, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v41, v38, 1.0
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s1, v17, v24, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v63, v6, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v38, v14, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v64, v20, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v20, v162, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v46, v47, v38
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v20, v20, v40, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v40, off, off offset:112 ; 4-byte Folded Reload
	v_mul_f32_e32 v44, v44, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v20, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v20, v156, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v20, v20, v39, v19
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v41, v46, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v20, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v39, v38
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v44, v34, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v20, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v41, v46, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v38, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v20, v16, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v19
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.h, v107.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v16
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v16, v39, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v6.h
	v_mov_b16_e32 v18.h, v107.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v6, v18, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v40, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v33, v40, v33, v5
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v40, v48, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v43, v40, v48
	v_fmac_f32_e32 v40, v34, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v43, v40, v48
	v_div_fmas_f32 v38, v38, v42, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:104
	scratch_load_b32 v39, off, off offset:16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v14
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v38, v24, v17
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.l, 0x7fff, v37.h, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v37, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v5, v5, v17 :: v_dual_mul_f32 v40, v40, v75
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v39, v107
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v37, v107
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v39, v7, v59
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v39, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s4
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v8, v37, v8, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v59, v6, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v60, v8, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v35, v40, v35, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v34, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v35, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v34, v41
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v39, v75
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v36, v39, v36, v7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v36, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v15, 1.0, v33
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v16, v16, v19
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v35, v35, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v34, v33
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v9, v35, v9, v57
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v35, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v57, v9, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v36, v36, v107
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v15, v15, v14
	v_div_scale_f32 v37, vcc_lo, v14, v15, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v10, v36, v10, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v24, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v58, v10, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v17, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v24, v38, v24
	v_fma_f32 v38, -v33, v34, 1.0
	v_mul_f32_e32 v8, v37, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s1, v19, v16, v19
	v_fma_f32 v41, -v17, v8, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v42, v38, v34
	v_fmac_f32_e32 v8, v41, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v33, v42, v38
	v_fma_f32 v17, -v17, v8, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v39, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v5.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v8, v17, v24, v8
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v17, -v33, v42, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v24, v211, v75
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v8, v15, v14
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v14, v210, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v17, v34, v42
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v15, v24, v30, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v5, v20, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v7, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v17, v16, v19
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v5, v14, v29, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v10, v15, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e32 v10.h, v107.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.h, v107.l
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v16, off, off offset:12
	scratch_load_b32 v19, off, off offset:28
	scratch_load_b32 v30, off, off offset:92
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v6.h
	v_and_b32_e32 v10, 1, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v9, v5, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v10, v7, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v6, v14, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v9, 0, 0x42800000, s0
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s4
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v19, v19, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v11, v19, v11, v55
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v208, v75
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v55, v11, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v107
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v12, v14, v12, v56
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v14, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v9, 0xbfb8aa3b, v8 :: v_dual_mul_f32 v16, v16, v107
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v56, v12, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v9, v9
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v2, v16, v2, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v5
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v16, v19, v31, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v54, v2, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v11, v11, v16, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v9, v9, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v209, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v24, 0xbfb8aa3b, v11 :: v_dual_add_f32 v9, 1.0, v9
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v17, v17, v32, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, s1, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v12, v17, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v12
	v_exp_f32_e32 v16, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v107
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v1, v14, v1, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v53, v1, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v15, v15, v20
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v9, v9, v8
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v17, v20
	v_div_scale_f32 v19, null, v15, v15, v5
	v_div_scale_f32 v32, s4, v5, v15, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v14, v19
	v_fma_f32 v29, -v20, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v30, v30, v75 :: v_dual_fmac_f32 v17, v29, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v11
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v26, v30, v26, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v19, v14, 1.0
	v_mul_f32_e32 v33, v31, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v24
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v26, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v14, v29, v14
	v_fma_f32 v36, -v20, v33, v31
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v36, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v16, v16, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v29, v32, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v20, v33, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v19, v29, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v20, v17, v33
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v34, v14
	v_div_scale_f32 v34, null, v24, v24, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v8, v17, v9, v8
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v35, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v19, -v19, v29, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v31, v34
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v9, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v8
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v25, v35, v25, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v16, v16, v12
	v_div_fmas_f32 v14, v19, v14, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v25, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v30, v35
	v_fma_f32 v20, -v34, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v31, v20, v31
	v_fma_f32 v19, -v35, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v19, v30
	v_div_fixup_f32 v5, v14, v15, v5
	v_div_scale_f32 v15, s0, v11, v24, v11
	v_div_scale_f32 v14, vcc_lo, v12, v16, v12
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v5, v15, v31
	v_mul_f32_e32 v17, v14, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v34, v5, v15
	v_fmac_f32_e32 v5, v8, v31
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:80
	scratch_load_b32 v19, off, off
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v15, -v34, v5, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v8, v8, v75
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v19, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v4, v19, v4, v51
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v51, v4, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v8, v8, v28, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v9, v9, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v3, v9, v3, v52
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v9, -v35, v17, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v52, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v17, v9, v30
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v9, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v35, v17, v14
	v_div_fmas_f32 v14, v14, v30, v17
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v5, v15, v31, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v15.l, v2.h
	v_mov_b16_e32 v15.h, v107.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v14, v16, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v5, v24, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v11, 0x7632 :: v_dual_mul_f32 v4, v4, v8
	v_mov_b16_e32 v8.h, v107.l
	v_cndmask_b16 v10.l, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v9, v9, v27, v3
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v9, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e32 v9.h, v107.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v5, 1, v15
	v_and_b32_e32 v6, 1, v9
	v_mov_b16_e32 v9.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v8.l, v3.h
	v_add3_u32 v5, v2, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v1, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v7, 1, v8
	v_and_b32_e32 v8, 1, v9
	v_mov_b32_e32 v9, 0x5410
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v2, v4, v8, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_dual_cndmask_b32 v2, v21, v77 :: v_dual_cndmask_b32 v5, v22, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v11, v11, 8, v11
	v_cndmask_b32_e32 v7, v82, v83, vcc_lo
	v_cndmask_b32_e32 v12, v78, v80, vcc_lo
	v_cndmask_b32_e32 v14, v13, v81, vcc_lo
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v11, 0x760076, v11
	v_cndmask_b32_e32 v13, v81, v13, vcc_lo
	v_dual_cndmask_b32 v16, v45, v23 :: v_dual_cndmask_b32 v17, v3, v18
	v_dual_cndmask_b32 v3, v18, v3 :: v_dual_cndmask_b32 v18, v0, v10
	v_cndmask_b32_e32 v0, v10, v0, vcc_lo
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v10, v11, 4, v11
	v_dual_cndmask_b32 v1, v77, v21 :: v_dual_cndmask_b32 v4, v79, v22
	v_cndmask_b32_e32 v6, v83, v82, vcc_lo
	v_dual_cndmask_b32 v8, v80, v78 :: v_dual_cndmask_b32 v15, v23, v45
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 0x5040504, v9
	v_and_b32_e32 v20, 0x7060706, v10
	v_permlanex16_b32 v13, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v19
	v_perm_b32 v1, v2, v1, v20
	v_perm_b32 v2, v5, v4, v19
	v_perm_b32 v3, v5, v4, v20
	v_perm_b32 v4, v7, v6, v19
	v_perm_b32 v5, v7, v6, v20
	v_perm_b32 v6, v11, v8, v19
	v_perm_b32 v7, v11, v8, v20
	v_perm_b32 v8, v12, v14, v19
	v_perm_b32 v9, v12, v14, v20
	v_perm_b32 v10, v13, v15, v19
	v_perm_b32 v11, v13, v15, v20
	v_perm_b32 v12, v16, v17, v19
	v_perm_b32 v13, v16, v17, v20
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v16, v104, v106, 1
	v_add_lshl_u32 v17, v104, v76, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v14, v21, v18, v19
	v_perm_b32 v15, v21, v18, v20
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v16, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v17, s[24:27], 0 offen offset:256
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 196
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 196
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25512
; TotalNumSgprs: 53
; NumVgprs: 256
; ScratchSize: 196
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 53
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 196
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 48
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
