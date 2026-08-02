	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s14, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v91, 0xf0, v0
	v_lshlrev_b32_e32 v108, 2, v0
	v_and_b32_e32 v42, 15, v0
	v_or_b32_e32 v110, 0x3f0, v0
	v_lshlrev_b32_e32 v111, 5, v0
	v_lshrrev_b32_e32 v3, 3, v91
	v_and_b32_e32 v2, 28, v108
	v_and_b32_e32 v112, 4, v0
	v_and_b32_e32 v113, 8, v0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v54, 0, v108
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v117, v42, 9, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v118, 0x90, v117
	v_add_nc_u32_e32 v55, 0, v117
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s26, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s12, s4, 2
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v119, 0x110, v117
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v56, 0, v118
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v57, 0, v119
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s15, s13, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s13, s13, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s13
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s17, s16
	s_xor_b32 s12, s2, s16
	s_cvt_f32_u32 s18, s17
	s_ashr_i32 s12, s12, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 3, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s6, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_abs_i32 s7, s2
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_mul_lo_u32 v1, s26, v1
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s18
	s_mul_hi_u32 s6, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s6
	s_mul_hi_u32 s6, s7, s18
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s13, s6, s17
	s_add_i32 s18, s6, 1
	s_sub_i32 s13, s7, s13
	s_mov_b32 s7, 0x31027000
	s_sub_i32 s19, s13, s17
	s_cmp_ge_u32 s13, s17
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_mov_b32 s23, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s18, s18, s6
	s_cselect_b32 s6, s19, s13
	s_add_i32 s13, s18, 1
	s_cmp_ge_u32 s6, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s13, s13, s18
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s35, s27, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s13, s13, s12
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_mul_lo_u32 v4, s35, v3
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s12, s13, s12
	.loc	1 368 26                        ; generate_amdgcn.py:368:26
	s_lshl_b32 s30, s3, 5
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s3, s12, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s14, 31
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s3
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s3, s35, s30
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v109, v42, 4, v4
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s12, 8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s13, s14, 31
.Ltmp15:
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add3_u32 v41, v1, v2, s34
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add3_u32 v1, s33, s3, v109
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s13, 27
.Ltmp17:
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_mov_b32 s22, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s14, s2
.Ltmp19:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 31
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v4, s35, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v1, s2
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 63
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s12, s26, s30
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[5:8], v5, s[20:23], 0 offen
	buffer_load_b128 v[9:12], v4, s[20:23], 0 offen
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v4, s27, v1
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v1, s27, 6, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_lshl_b32 s15, s26, 5
	v_add_nc_u32_e32 v2, s12, v41
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v13, s35, v4
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 378 34 is_stmt 1              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v22, s35, v1
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add3_u32 v21, s12, s15, v41
	.loc	1 372 26 is_stmt 0              ; generate_amdgcn.py:372:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v17, 0x80000000, v13, s2
	v_lshlrev_b32_e32 v3, 4, v0
	s_clause 0x1
	buffer_load_b128 v[13:16], v4, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v4, 0x80000000, v1, s3
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v1, s27, v1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v25, 0x80000000, v22, s3
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e64 v37, 0x80000000, v21, s3
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[21:24], v4, s[20:23], 0 offen
	buffer_load_b128 v[25:28], v25, s[20:23], 0 offen
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v4, s35, v1
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	buffer_load_b32 v58, v37, s[4:7], 0 offen
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x5f
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	s_clause 0x1
	buffer_load_b128 v[29:32], v1, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v4, s[20:23], 0 offen
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b32 v53, v2, s[4:7], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 16, v42
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(8)
	v_perm_b32 v2, v9, v5, 0x5010400
	v_perm_b32 v5, v9, v5, 0x7030602
	v_perm_b32 v9, v10, v6, 0x5010400
	v_perm_b32 v10, v10, v6, 0x7030602
	v_perm_b32 v37, v11, v7, 0x5010400
	v_perm_b32 v11, v11, v7, 0x7030602
	v_perm_b32 v38, v12, v8, 0x5010400
	v_perm_b32 v12, v12, v8, 0x7030602
	v_and_b16 v1.l, 0xff, v2.l
	v_lshrrev_b32_e32 v39, 8, v2
	v_lshrrev_b32_e32 v40, 24, v2
	v_and_b16 v1.h, 0xff, v2.h
	v_and_b16 v2.l, 0xff, v5.l
	v_lshrrev_b32_e32 v43, 8, v5
	v_lshrrev_b32_e32 v44, 24, v5
	v_and_b16 v2.h, 0xff, v5.h
	v_and_b16 v5.l, 0xff, v9.l
	v_lshrrev_b32_e32 v45, 8, v9
	v_lshrrev_b32_e32 v46, 24, v9
	v_and_b16 v5.h, 0xff, v9.h
	v_lshrrev_b32_e32 v47, 8, v10
	v_lshrrev_b32_e32 v48, 24, v10
	v_and_b16 v7.l, 0xff, v37.l
	v_lshrrev_b32_e32 v49, 8, v37
	v_lshrrev_b32_e32 v50, 24, v37
	v_and_b16 v7.h, 0xff, v37.h
	v_lshrrev_b32_e32 v37, 8, v11
	v_lshrrev_b32_e32 v51, 24, v11
	v_and_b16 v9.l, 0xff, v38.l
	v_lshrrev_b32_e32 v52, 8, v38
	v_lshrrev_b32_e32 v59, 24, v38
	v_and_b16 v9.h, 0xff, v38.h
	v_lshrrev_b32_e32 v38, 8, v12
	v_lshrrev_b32_e32 v60, 24, v12
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(6)
	v_perm_b32 v61, v17, v13, 0x5010400
	v_perm_b32 v62, v17, v13, 0x7030602
	v_perm_b32 v63, v18, v14, 0x5010400
	v_perm_b32 v64, v18, v14, 0x7030602
	v_perm_b32 v65, v19, v15, 0x5010400
	v_perm_b32 v66, v19, v15, 0x7030602
	v_perm_b32 v67, v20, v16, 0x5010400
	v_perm_b32 v68, v20, v16, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(4)
	v_perm_b32 v69, v25, v21, 0x5010400
	v_perm_b32 v70, v25, v21, 0x7030602
	v_perm_b32 v71, v26, v22, 0x5010400
	v_perm_b32 v72, v26, v22, 0x7030602
	v_perm_b32 v73, v27, v23, 0x5010400
	v_perm_b32 v74, v27, v23, 0x7030602
	v_perm_b32 v75, v28, v24, 0x5010400
	v_perm_b32 v76, v28, v24, 0x7030602
	v_and_b16 v6.l, 0xff, v10.l
	v_and_b16 v6.h, 0xff, v10.h
	v_and_b16 v8.l, 0xff, v11.l
	v_and_b16 v8.h, 0xff, v11.h
	v_and_b16 v10.l, 0xff, v12.l
	v_and_b16 v10.h, 0xff, v12.h
	v_lshlrev_b16 v11.l, 8, v39.l
	v_lshlrev_b16 v11.h, 8, v40.l
	v_lshlrev_b16 v12.l, 8, v43.l
	v_lshlrev_b16 v12.h, 8, v44.l
	v_lshlrev_b16 v13.l, 8, v45.l
	v_lshlrev_b16 v13.h, 8, v46.l
	v_lshlrev_b16 v14.l, 8, v47.l
	v_lshlrev_b16 v14.h, 8, v48.l
	v_lshlrev_b16 v15.l, 8, v49.l
	v_lshlrev_b16 v15.h, 8, v50.l
	v_lshlrev_b16 v16.l, 8, v37.l
	v_lshlrev_b16 v16.h, 8, v51.l
	v_lshlrev_b16 v17.l, 8, v52.l
	v_lshlrev_b16 v17.h, 8, v59.l
	v_lshlrev_b16 v18.l, 8, v38.l
	v_lshlrev_b16 v18.h, 8, v60.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v19.l, 0xff, v61.l
	v_lshrrev_b32_e32 v45, 8, v61
	v_lshrrev_b32_e32 v46, 24, v61
	v_and_b16 v19.h, 0xff, v61.h
	v_and_b16 v20.l, 0xff, v62.l
	v_lshrrev_b32_e32 v47, 8, v62
	v_lshrrev_b32_e32 v48, 24, v62
	v_and_b16 v20.h, 0xff, v62.h
	v_and_b16 v21.l, 0xff, v63.l
	v_lshrrev_b32_e32 v49, 8, v63
	v_lshrrev_b32_e32 v50, 24, v63
	v_and_b16 v21.h, 0xff, v63.h
	v_and_b16 v22.l, 0xff, v64.l
	v_lshrrev_b32_e32 v51, 8, v64
	v_lshrrev_b32_e32 v52, 24, v64
	v_and_b16 v22.h, 0xff, v64.h
	v_and_b16 v23.l, 0xff, v65.l
	v_lshrrev_b32_e32 v59, 8, v65
	v_lshrrev_b32_e32 v60, 24, v65
	v_and_b16 v23.h, 0xff, v65.h
	v_and_b16 v24.l, 0xff, v66.l
	v_lshrrev_b32_e32 v61, 8, v66
	v_lshrrev_b32_e32 v62, 24, v66
	v_and_b16 v24.h, 0xff, v66.h
	v_and_b16 v25.l, 0xff, v67.l
	v_lshrrev_b32_e32 v63, 8, v67
	v_lshrrev_b32_e32 v64, 24, v67
	v_and_b16 v25.h, 0xff, v67.h
	v_and_b16 v26.l, 0xff, v68.l
	v_lshrrev_b32_e32 v65, 8, v68
	v_lshrrev_b32_e32 v66, 24, v68
	v_and_b16 v26.h, 0xff, v68.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v27.l, 0xff, v69.l
	v_lshrrev_b32_e32 v67, 8, v69
	v_lshrrev_b32_e32 v68, 24, v69
	v_and_b16 v27.h, 0xff, v69.h
	v_and_b16 v28.l, 0xff, v70.l
	v_lshrrev_b32_e32 v69, 8, v70
	v_lshrrev_b32_e32 v77, 24, v70
	v_and_b16 v28.h, 0xff, v70.h
	v_and_b16 v37.l, 0xff, v71.l
	v_lshrrev_b32_e32 v70, 8, v71
	v_lshrrev_b32_e32 v78, 24, v71
	v_and_b16 v37.h, 0xff, v71.h
	v_and_b16 v38.l, 0xff, v72.l
	v_lshrrev_b32_e32 v71, 8, v72
	v_lshrrev_b32_e32 v79, 24, v72
	v_and_b16 v38.h, 0xff, v72.h
	v_and_b16 v39.l, 0xff, v73.l
	v_lshrrev_b32_e32 v72, 8, v73
	v_lshrrev_b32_e32 v80, 24, v73
	v_and_b16 v39.h, 0xff, v73.h
	v_and_b16 v40.l, 0xff, v74.l
	v_lshrrev_b32_e32 v73, 8, v74
	v_lshrrev_b32_e32 v81, 24, v74
	v_and_b16 v40.h, 0xff, v74.h
	v_and_b16 v43.l, 0xff, v75.l
	v_lshrrev_b32_e32 v74, 8, v75
	v_lshrrev_b32_e32 v82, 24, v75
	v_and_b16 v43.h, 0xff, v75.h
	v_and_b16 v44.l, 0xff, v76.l
	v_lshrrev_b32_e32 v75, 8, v76
	v_lshrrev_b32_e32 v83, 24, v76
	v_and_b16 v44.h, 0xff, v76.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(1)
	v_perm_b32 v76, v33, v29, 0x5010400
	v_perm_b32 v84, v33, v29, 0x7030602
	v_perm_b32 v85, v34, v30, 0x5010400
	v_perm_b32 v86, v34, v30, 0x7030602
	v_perm_b32 v87, v35, v31, 0x5010400
	v_perm_b32 v88, v35, v31, 0x7030602
	v_perm_b32 v89, v36, v32, 0x5010400
	v_perm_b32 v90, v36, v32, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v1.l, v1.l, v11.l
	v_or_b16 v2.l, v2.l, v12.l
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v7.h, v7.h, v15.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v11.l, 8, v45.l
	v_lshlrev_b16 v12.l, 8, v47.l
	v_lshlrev_b16 v15.l, 8, v59.l
	v_lshlrev_b16 v15.h, 8, v60.l
	v_lshrrev_b32_e32 v59, 8, v76
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v1.h, v1.h, v11.h
	v_or_b16 v2.h, v2.h, v12.h
	v_or_b16 v5.h, v5.h, v13.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v11.h, 8, v46.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v5.l, v5.l, v13.l
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v8.h, v8.h, v16.h
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.h, 8, v48.l
	v_lshlrev_b16 v13.l, 8, v49.l
	v_lshlrev_b16 v13.h, 8, v50.l
	v_lshlrev_b16 v14.l, 8, v51.l
	v_lshlrev_b16 v14.h, 8, v52.l
	v_lshlrev_b16 v16.l, 8, v61.l
	v_lshlrev_b16 v16.h, 8, v62.l
	v_lshlrev_b16 v17.l, 8, v63.l
	v_lshlrev_b16 v17.h, 8, v64.l
	v_lshlrev_b16 v18.l, 8, v65.l
	v_lshlrev_b16 v18.h, 8, v66.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v29.l, 8, v67.l
	v_lshlrev_b16 v29.h, 8, v68.l
	v_lshlrev_b16 v30.l, 8, v69.l
	v_lshlrev_b16 v30.h, 8, v77.l
	v_lshlrev_b16 v31.l, 8, v70.l
	v_lshlrev_b16 v32.l, 8, v71.l
	v_lshlrev_b16 v33.l, 8, v72.l
	v_lshlrev_b16 v34.l, 8, v73.l
	v_lshlrev_b16 v35.l, 8, v74.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v45.l, 0xff, v76.l
	v_lshrrev_b32_e32 v60, 24, v76
	v_lshrrev_b32_e32 v61, 8, v84
	v_lshrrev_b32_e32 v62, 24, v84
	v_lshrrev_b32_e32 v63, 8, v85
	v_lshrrev_b32_e32 v64, 24, v85
	v_lshrrev_b32_e32 v65, 8, v86
	v_lshrrev_b32_e32 v66, 24, v86
	v_lshrrev_b32_e32 v67, 8, v87
	v_lshrrev_b32_e32 v68, 24, v87
	v_lshrrev_b32_e32 v69, 8, v88
	v_lshrrev_b32_e32 v70, 24, v88
	v_lshrrev_b32_e32 v71, 8, v89
	v_lshrrev_b32_e32 v72, 24, v89
	v_lshrrev_b32_e32 v73, 8, v90
	v_lshrrev_b32_e32 v74, 24, v90
	v_or_b16 v11.l, v19.l, v11.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v55, v1
	ds_store_b16_d16_hi v55, v1 offset:32
	ds_store_b16 v55, v2 offset:64
	ds_store_b16_d16_hi v55, v2 offset:96
	ds_store_b16_d16_hi v56, v5 offset:32
	ds_store_b16 v56, v6 offset:64
	ds_store_b16_d16_hi v56, v6 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v1.h, v20.l, v12.l
	v_or_b16 v12.l, v23.h, v15.h
	v_lshlrev_b16 v23.h, 8, v59.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v33.h, 8, v80.l
	v_lshlrev_b16 v31.h, 8, v78.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v1.l, v19.h, v11.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v32.h, 8, v79.l
	v_lshlrev_b16 v34.h, 8, v81.l
	v_lshlrev_b16 v35.h, 8, v82.l
	v_lshlrev_b16 v36.l, 8, v75.l
	v_lshlrev_b16 v36.h, 8, v83.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v45.h, 0xff, v76.h
	v_and_b16 v46.l, 0xff, v84.l
	v_and_b16 v46.h, 0xff, v84.h
	v_and_b16 v47.l, 0xff, v85.l
	v_and_b16 v47.h, 0xff, v85.h
	v_and_b16 v48.l, 0xff, v86.l
	v_and_b16 v48.h, 0xff, v86.h
	v_and_b16 v49.l, 0xff, v87.l
	v_and_b16 v49.h, 0xff, v87.h
	v_and_b16 v50.l, 0xff, v88.l
	v_and_b16 v50.h, 0xff, v88.h
	v_and_b16 v51.l, 0xff, v89.l
	v_and_b16 v51.h, 0xff, v89.h
	v_and_b16 v52.l, 0xff, v90.l
	v_and_b16 v52.h, 0xff, v90.h
	v_or_b16 v2.l, v20.h, v12.h
	v_or_b16 v2.h, v21.l, v13.l
	v_or_b16 v5.h, v21.h, v13.h
	v_or_b16 v6.l, v22.l, v14.l
	v_or_b16 v6.h, v22.h, v14.h
	v_or_b16 v11.h, v23.l, v15.l
	v_or_b16 v12.h, v24.l, v16.l
	v_or_b16 v13.l, v24.h, v16.h
	v_or_b16 v13.h, v25.l, v17.l
	v_or_b16 v14.l, v25.h, v17.h
	v_or_b16 v14.h, v26.l, v18.l
	v_or_b16 v15.l, v26.h, v18.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v15.h, v27.l, v29.l
	v_or_b16 v16.l, v27.h, v29.h
	v_or_b16 v16.h, v28.l, v30.l
	v_or_b16 v17.l, v28.h, v30.h
	v_or_b16 v17.h, v37.l, v31.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v24.l, 8, v60.l
	v_lshlrev_b16 v24.h, 8, v61.l
	v_lshlrev_b16 v25.l, 8, v62.l
	v_lshlrev_b16 v25.h, 8, v63.l
	v_lshlrev_b16 v26.l, 8, v64.l
	v_lshlrev_b16 v26.h, 8, v65.l
	v_lshlrev_b16 v27.l, 8, v66.l
	v_lshlrev_b16 v27.h, 8, v67.l
	v_lshlrev_b16 v28.l, 8, v68.l
	v_lshlrev_b16 v28.h, 8, v69.l
	v_lshlrev_b16 v29.l, 8, v70.l
	v_lshlrev_b16 v29.h, 8, v71.l
	v_lshlrev_b16 v30.l, 8, v72.l
	v_lshlrev_b16 v30.h, 8, v73.l
	v_lshlrev_b16 v31.l, 8, v74.l
	ds_store_b16 v55, v11 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v56, v5
	ds_store_b16 v57, v7
	ds_store_b16_d16_hi v57, v7 offset:32
	ds_store_b16 v57, v8 offset:64
	ds_store_b16_d16_hi v57, v8 offset:96
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v54, v53 offset:32768
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v55, v1 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v55, v9 offset:384
	ds_store_b16_d16_hi v55, v9 offset:416
	ds_store_b16 v55, v10 offset:448
	ds_store_b16_d16_hi v55, v10 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v55, v1 offset:16416
	ds_store_b16 v55, v2 offset:16480
	ds_store_b16_d16_hi v56, v2 offset:16384
	ds_store_b16_d16_hi v56, v5 offset:16416
	ds_store_b16 v56, v6 offset:16448
	ds_store_b16_d16_hi v56, v6 offset:16480
	ds_store_b16_d16_hi v57, v11 offset:16384
	ds_store_b16 v57, v12 offset:16416
	ds_store_b16_d16_hi v57, v12 offset:16448
	ds_store_b16 v57, v13 offset:16480
	ds_store_b16_d16_hi v55, v13 offset:16768
	ds_store_b16 v55, v14 offset:16800
	ds_store_b16_d16_hi v55, v14 offset:16832
	ds_store_b16 v55, v15 offset:16864
	v_or_b16 v1.l, v45.l, v23.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v19.h, v39.l, v33.l
	v_or_b16 v20.l, v39.h, v33.h
	v_or_b16 v18.l, v37.h, v31.h
	v_or_b16 v20.h, v40.l, v34.l
	v_or_b16 v18.h, v38.l, v32.l
	v_or_b16 v19.l, v38.h, v32.h
	v_or_b16 v21.l, v40.h, v34.h
	v_or_b16 v21.h, v43.l, v35.l
	v_or_b16 v22.l, v43.h, v35.h
	v_or_b16 v22.h, v44.l, v36.l
	v_or_b16 v23.l, v44.h, v36.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v55, v15 offset:8192
	ds_store_b16 v55, v16 offset:8224
	ds_store_b16_d16_hi v55, v16 offset:8256
	ds_store_b16 v55, v17 offset:8288
	ds_store_b16 v56, v18 offset:8224
	ds_store_b16_d16_hi v56, v18 offset:8256
	ds_store_b16 v56, v19 offset:8288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v1.h, v45.h, v24.l
	v_or_b16 v2.l, v46.l, v24.h
	v_or_b16 v2.h, v46.h, v25.l
	v_or_b16 v5.l, v47.l, v25.h
	v_or_b16 v5.h, v47.h, v26.l
	v_or_b16 v6.l, v48.l, v26.h
	v_or_b16 v6.h, v48.h, v27.l
	v_or_b16 v7.l, v49.l, v27.h
	v_or_b16 v7.h, v49.h, v28.l
	v_or_b16 v8.l, v50.l, v28.h
	v_or_b16 v8.h, v50.h, v29.l
	v_or_b16 v9.l, v51.l, v29.h
	v_or_b16 v9.h, v51.h, v30.l
	v_or_b16 v10.l, v52.l, v30.h
	v_or_b16 v10.h, v52.h, v31.l
	ds_store_b16 v55, v1 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v56, v17 offset:8192
	ds_store_b16_d16_hi v57, v19 offset:8192
	ds_store_b16 v57, v20 offset:8224
	ds_store_b16_d16_hi v57, v20 offset:8256
	ds_store_b16 v57, v21 offset:8288
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_store_b32 v54, v58 offset:33792
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v55, v2 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v55, v21 offset:8576
	ds_store_b16 v55, v22 offset:8608
	ds_store_b16_d16_hi v55, v22 offset:8640
	ds_store_b16 v55, v23 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v55, v1 offset:24608
	ds_store_b16_d16_hi v55, v2 offset:24672
	ds_store_b16 v56, v5 offset:24576
	ds_store_b16_d16_hi v56, v5 offset:24608
	ds_store_b16 v56, v6 offset:24640
	ds_store_b16_d16_hi v56, v6 offset:24672
	ds_store_b16 v57, v7 offset:24576
	ds_store_b16_d16_hi v57, v7 offset:24608
	ds_store_b16 v57, v8 offset:24640
	ds_store_b16_d16_hi v57, v8 offset:24672
	ds_store_b16 v55, v9 offset:24960
	ds_store_b16_d16_hi v55, v9 offset:24992
	ds_store_b16 v55, v10 offset:25024
	ds_store_b16_d16_hi v55, v10 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b32_e32 v2, 5, v0
	v_and_b32_e32 v5, 0xe00, v3
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_or_b32_e32 v1, 0x3f0, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v17, 4, v0
	v_and_b32_e32 v19, 8, v0
	s_mov_b32 s10, 0
	v_and_or_b32 v120, 0x60, v2, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr120
.LBB0_3:                                ; %Flow406
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v5, s34, v42
	v_or_b32_e32 v4, s34, v4
	s_ashr_i32 s1, s13, 5
	v_or_b32_e32 v115, s33, v0
	v_lshlrev_b32_e32 v132, 2, v91
	v_mul_lo_u32 v116, v5, s1
	v_mul_lo_u32 v114, v4, s1
	v_lshlrev_b32_e32 v133, 1, v0
	v_lshlrev_b32_e32 v131, 1, v91
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s44, s30, 32
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 2, 1
	v_bfe_i32 v2, v0, 3, 1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v3, 0xe00, v3
	v_and_b32_e32 v1, 0x90, v1
	v_and_b32_e32 v2, 0x110, v2
	v_and_b32_e32 v9, 28, v133
	v_add_nc_u32_e32 v124, s27, v115
	v_and_or_b32 v120, 0x60, v111, v3
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v121, s35, v109
	v_xor_b32_e32 v1, v1, v2
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v88, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b32_e32 v122, v120, v1
	v_and_b32_e32 v1, 32, v111
	v_add_nc_u32_e32 v126, 0, v131
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v84, 0
	v_add3_u32 v10, 0, v132, v1
	v_mov_b32_e32 v1, s12
	v_xor_b32_e32 v123, 16, v122
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v8, s19 :: v_dual_add_nc_u32 v125, v10, v9
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v51, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s48, s1, 3
	s_add_i32 s11, s44, 32
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s31, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s47, 0, 0x8400
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s48, s48, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s15, s0
	s_mov_b32 s14, s30
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s18, s13, 5
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v25, s15, v42
	v_add_nc_u32_e32 v26, s15, v110
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s15, s14, 31
	s_mov_b32 s16, s12
	s_mov_b32 s30, s44
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s44, s11, s18
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s15, s15, 27
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v11, s16, v122
	v_add_nc_u32_e32 v12, s16, v123
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	s_mul_i32 s16, s44, s35
	.loc	1 386 29 is_stmt 1              ; generate_amdgcn.py:386:29
	s_add_i32 s14, s14, s15
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s16, s16, s33
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s14, s14, 5
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v195, s16, v109
	v_add_nc_u32_e32 v199, s16, v121
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	s_add_i32 s16, s16, s27
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v28, v116, s14, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s14, s1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v211, v114, s14, 1
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_mad_u64_u32 v[9:10], null, s44, s26, v[41:42]
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s14, s14, s35
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v212, 0x80000000, v28 :: v_dual_cndmask_b32 v211, 0x80000000, v211
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v30, v115, s14, 1
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v213, v124, s14, 1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	buffer_load_b32 v127, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[195:198], v195, s[20:23], 0 offen
	buffer_load_b128 v[199:202], v199, s[20:23], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v220, v212, s[36:39], 0 offen
	buffer_load_u16 v221, v211, s[36:39], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v173, v25 offset:928
	ds_load_u8 v174, v25 offset:896
	ds_load_u8 v175, v25 offset:992
	ds_load_u8 v177, v25 offset:960
	ds_load_u8 v158, v26
	ds_load_u8 v159, v25 offset:976
	ds_load_u8 v162, v25 offset:944
	ds_load_u8 v164, v25 offset:912
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v26, 0x80000000, v30 :: v_dual_cndmask_b32 v219, 0x80000000, v213
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[17:20], v11
	ds_load_b128 v[21:24], v11 offset:4096
	ds_load_b128 v[13:16], v12
	ds_load_b128 v[9:12], v12 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v136, v25 offset:96
	ds_load_u8 v137, v25 offset:64
	ds_load_u8 v138, v25
	ds_load_u8 v129, v25 offset:16
	ds_load_u8 v139, v25 offset:32
	ds_load_u8 v130, v25 offset:112
	ds_load_u8 v135, v25 offset:80
	ds_load_u8 v134, v25 offset:48
	ds_load_u8 v141, v25 offset:800
	ds_load_u8 v143, v25 offset:768
	ds_load_u8 v151, v25 offset:416
	ds_load_u8 v153, v25 offset:384
	ds_load_u8 v154, v25 offset:480
	ds_load_u8 v155, v25 offset:448
	ds_load_u8 v140, v25 offset:496
	ds_load_u8 v142, v25 offset:464
	ds_load_u8 v144, v25 offset:432
	ds_load_u8 v145, v25 offset:400
	ds_load_u8 v43, v25 offset:288
	ds_load_u8 v160, v25 offset:256
	ds_load_u8 v161, v25 offset:352
	ds_load_u8 v163, v25 offset:320
	ds_load_u8 v146, v25 offset:368
	ds_load_u8 v147, v25 offset:336
	ds_load_u8 v148, v25 offset:304
	ds_load_u8 v149, v25 offset:272
	ds_load_u8 v165, v25 offset:160
	ds_load_u8 v167, v25 offset:128
	ds_load_u8 v168, v25 offset:224
	ds_load_u8 v170, v25 offset:192
	ds_load_u8 v150, v25 offset:240
	ds_load_u8 v152, v25 offset:208
	ds_load_u8 v156, v25 offset:176
	ds_load_u8 v157, v25 offset:144
	s_mov_b32 s17, s10
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v128, v26, s[40:43], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v27, s17, v122
	v_add_nc_u32_e32 v29, s17, v123
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v183, v25 offset:864
	ds_load_u8 v184, v25 offset:832
	ds_load_u8 v166, v25 offset:880
	ds_load_u8 v169, v25 offset:848
	ds_load_u8 v171, v25 offset:816
	ds_load_u8 v172, v25 offset:784
	ds_load_u8 v187, v25 offset:672
	ds_load_u8 v188, v25 offset:640
	ds_load_u8 v189, v25 offset:736
	ds_load_u8 v190, v25 offset:704
	ds_load_u8 v176, v25 offset:752
	ds_load_u8 v178, v25 offset:720
	ds_load_u8 v179, v25 offset:688
	ds_load_u8 v180, v25 offset:656
	ds_load_u8 v191, v25 offset:544
	ds_load_u8 v192, v25 offset:512
	ds_load_u8 v193, v25 offset:608
	ds_load_u8 v194, v25 offset:576
	ds_load_u8 v181, v25 offset:624
	ds_load_u8 v182, v25 offset:592
	ds_load_u8 v185, v25 offset:560
	ds_load_u8 v186, v25 offset:528
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[33:36], v27
	ds_load_b128 v[37:40], v27 offset:4096
	ds_load_b128 v[25:28], v29
	ds_load_b128 v[29:32], v29 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v153, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v43, v160, v43, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v154, v163, v161, 0xc0c0004
	v_perm_b32 v136, v137, v136, 0xc0c0004
	v_perm_b32 v137, v138, v139, 0xc0c0004
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_perm_b32 v140, v142, v140, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v155, v167, v165, 0xc0c0004
	v_perm_b32 v142, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v160, v170, v168, 0xc0c0004
	v_perm_b32 v145, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v147, v152, v150, 0xc0c0004
	v_perm_b32 v130, v135, v130, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v146, v157, v156, 0xc0c0004
	v_perm_b32 v129, v129, v134, 0xc0c0004
	v_perm_b32 v138, v174, v173, 0xc0c0004
	v_perm_b32 v139, v177, v175, 0xc0c0004
	v_perm_b32 v141, v143, v141, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v143, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v161, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v163, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v165, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v167, v194, v193, 0xc0c0004
	v_perm_b32 v134, v164, v162, 0xc0c0004
	v_perm_b32 v135, v159, v158, 0xc0c0004
	v_perm_b32 v148, v172, v171, 0xc0c0004
	v_perm_b32 v149, v169, v166, 0xc0c0004
	v_perm_b32 v150, v180, v179, 0xc0c0004
	v_perm_b32 v152, v178, v176, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v156, v186, v185, 0xc0c0004
	v_perm_b32 v157, v182, v181, 0xc0c0004
	v_lshl_or_b32 v177, v153, 16, v151
	v_lshl_or_b32 v176, v154, 16, v43
	v_lshl_or_b32 v175, v160, 16, v155
	v_lshl_or_b32 v174, v136, 16, v137
	v_lshl_or_b32 v214, v140, 16, v144
	v_lshl_or_b32 v213, v145, 16, v142
	v_lshl_or_b32 v212, v147, 16, v146
	v_lshl_or_b32 v211, v130, 16, v129
	v_lshl_or_b32 v193, v139, 16, v138
	v_lshl_or_b32 v192, v143, 16, v141
	v_lshl_or_b32 v191, v163, 16, v161
	v_lshl_or_b32 v190, v167, 16, v165
	v_lshl_or_b32 v218, v135, 16, v134
	v_lshl_or_b32 v217, v149, 16, v148
	v_lshl_or_b32 v216, v152, 16, v150
	v_lshl_or_b32 v215, v157, 16, v156
	v_wmma_i32_16x16x16_iu8 v[142:149], v[21:24], v[174:177], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[17:20], v[211:214], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[17:20], v[174:177], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[21:24], v[211:214], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[174:177], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[37:40], v[174:177], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[37:40], v[211:214], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[142:149], v[9:12], v[190:193], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[13:16], v[215:218], v[150:157] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[174:181], v[33:36], v[211:214], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[134:141], v[13:16], v[190:193], v[134:141] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[190:193], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[29:32], v[190:193], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[29:32], v[215:218], v[182:189] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v151, v151
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[174:181], v[25:28], v[215:218], v[174:181] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v15, v23
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v140, v140
	v_wmma_i32_16x16x16_iu8 v[158:165], v[9:12], v[215:218], v[158:165] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v13, v21
	v_cvt_f32_i32_e32 v21, v170
	v_cvt_f32_i32_e32 v170, v178
	v_cvt_f32_i32_e32 v178, v186
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s31, 1
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v9, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s14, 2
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v10, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s31, s14, 0
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v11, v19
	v_cvt_f32_i32_e32 v12, v20
	v_cvt_f32_i32_e32 v14, v22
	v_cvt_f32_i32_e32 v16, v24
	v_cvt_f32_i32_e32 v17, v166
	v_cvt_f32_i32_e32 v18, v167
	v_cvt_f32_i32_e32 v19, v168
	v_cvt_f32_i32_e32 v20, v169
	v_cvt_f32_i32_e32 v22, v171
	v_cvt_f32_i32_e32 v23, v172
	v_cvt_f32_i32_e32 v24, v173
	v_cvt_f32_i32_e32 v166, v174
	v_cvt_f32_i32_e32 v167, v175
	v_cvt_f32_i32_e32 v168, v176
	v_cvt_f32_i32_e32 v169, v177
	v_cvt_f32_i32_e32 v171, v179
	v_cvt_f32_i32_e32 v172, v180
	v_cvt_f32_i32_e32 v173, v181
	v_cvt_f32_i32_e32 v174, v182
	v_cvt_f32_i32_e32 v175, v183
	v_cvt_f32_i32_e32 v176, v184
	v_cvt_f32_i32_e32 v177, v185
	v_cvt_f32_i32_e32 v179, v187
	v_cvt_f32_i32_e32 v180, v188
	v_cvt_f32_i32_e32 v181, v189
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v182, v134
	v_cvt_f32_i32_e32 v183, v135
	v_cvt_f32_i32_e32 v184, v136
	v_cvt_f32_i32_e32 v185, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_lshl_b32 s15, s31, 10
	s_mov_b32 s12, s46
	s_add_i32 s15, s15, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s13, 1
	s_mov_b32 s0, s47
	s_mov_b32 s10, s45
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_add_i32 s47, s15, 0x8000
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(3)
	v_perm_b32 v30, v201, v197, 0x5010400
	v_perm_b32 v31, v201, v197, 0x7030602
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v197, 16, v221
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v28, v200, v196, 0x5010400
	v_perm_b32 v29, v200, v196, 0x7030602
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v196, 16, v220
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v26, v199, v195, 0x5010400
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v151, v197, v151
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v203, s16, v109
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v216, v15, v196 :: v_dual_add_nc_u32 v207, s16, v121
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v214, v196, v140
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[203:206], v203, s[20:23], 0 offen
	buffer_load_b128 v[207:210], v207, s[20:23], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v146, v196, v146 :: v_dual_lshlrev_b32 v25, 16, v128
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v27, v199, v195, 0x7030602
	v_perm_b32 v32, v202, v198, 0x5010400
	v_perm_b32 v33, v202, v198, 0x7030602
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v125, v25 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v186, v219, s[40:43], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v128, 8, v26
	v_lshrrev_b32_e32 v129, 24, v26
	v_lshrrev_b32_e32 v130, 8, v27
	v_lshrrev_b32_e32 v134, 24, v27
	v_lshrrev_b32_e32 v135, 8, v28
	v_lshrrev_b32_e32 v136, 24, v28
	v_lshrrev_b32_e32 v137, 8, v29
	v_lshrrev_b32_e32 v187, 24, v29
	v_lshrrev_b32_e32 v188, 8, v30
	v_lshrrev_b32_e32 v189, 24, v30
	v_lshrrev_b32_e32 v190, 8, v31
	v_lshrrev_b32_e32 v191, 24, v31
	v_lshrrev_b32_e32 v192, 8, v32
	v_lshrrev_b32_e32 v193, 24, v32
	v_lshrrev_b32_e32 v194, 8, v33
	v_lshrrev_b32_e32 v195, 24, v33
	s_lshl_b32 s16, s31, 13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v185, v196, v185 :: v_dual_add_nc_u32 v222, s15, v108
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_add_i32 s46, s16, 0
	v_and_b16 v25.l, 0xff, v26.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v218, v196, v142 :: v_dual_add_nc_u32 v223, s46, v117
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v224, s46, v118
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v220, v17, v196 :: v_dual_add_nc_u32 v225, s46, v119
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v25.h, 0xff, v26.h
	v_and_b16 v26.l, 0xff, v27.l
	v_and_b16 v26.h, 0xff, v27.h
	v_and_b16 v27.l, 0xff, v28.l
	v_and_b16 v27.h, 0xff, v28.h
	v_and_b16 v28.l, 0xff, v29.l
	v_and_b16 v28.h, 0xff, v29.h
	v_and_b16 v29.l, 0xff, v30.l
	v_and_b16 v29.h, 0xff, v30.h
	v_and_b16 v30.l, 0xff, v31.l
	v_and_b16 v30.h, 0xff, v31.h
	v_and_b16 v31.l, 0xff, v32.l
	v_and_b16 v31.h, 0xff, v32.h
	v_and_b16 v32.l, 0xff, v33.l
	v_and_b16 v32.h, 0xff, v33.h
	v_lshlrev_b16 v128.h, 8, v134.l
	v_lshlrev_b16 v129.h, 8, v136.l
	v_lshlrev_b16 v130.h, 8, v187.l
	v_lshlrev_b16 v134.l, 8, v188.l
	v_lshlrev_b16 v134.h, 8, v189.l
	v_lshlrev_b16 v135.h, 8, v191.l
	v_lshlrev_b16 v136.l, 8, v192.l
	v_lshlrev_b16 v136.h, 8, v193.l
	v_lshlrev_b16 v137.h, 8, v195.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v183, v196, v183
	v_dual_mul_f32 v182, v196, v182 :: v_dual_mul_f32 v187, v10, v196
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v188, v9, v196
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v184, v196, v184
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v189, v12, v196
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v191, v196, v139 :: v_dual_mul_f32 v228, v19, v196
	v_mul_f32_e32 v192, v196, v138
	v_dual_mul_f32 v195, v196, v141 :: v_dual_mul_f32 v230, v21, v196
	v_mul_f32_e32 v217, v196, v143
	v_mul_f32_e32 v226, v196, v144
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v193, v14, v196 :: v_dual_mul_f32 v150, v197, v150
	v_dual_mul_f32 v215, v16, v196 :: v_dual_mul_f32 v166, v166, v197
	v_dual_mul_f32 v219, v18, v196 :: v_dual_mul_f32 v168, v168, v197
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v221, v196, v145 :: v_dual_mul_f32 v152, v197, v152
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v227, v20, v196 :: v_dual_mul_f32 v154, v197, v154
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v147, v196, v147 :: v_dual_mul_f32 v170, v170, v197
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v229, v22, v196 :: v_dual_mul_f32 v172, v172, v197
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v149, v196, v149 :: v_dual_mul_f32 v156, v197, v156
	v_dual_mul_f32 v148, v196, v148 :: v_dual_mul_f32 v167, v167, v197
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v231, v24, v196 :: v_dual_mul_f32 v158, v197, v158
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v155, v197, v155 :: v_dual_mul_f32 v174, v174, v197
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v171, v171, v197 :: v_dual_mul_f32 v160, v197, v160
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v159, v197, v159 :: v_dual_mul_f32 v176, v176, v197
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v175, v175, v197 :: v_dual_mul_f32 v162, v197, v162
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v163, v197, v163 :: v_dual_mul_f32 v178, v178, v197
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v179, v179, v197 :: v_dual_mul_f32 v164, v197, v164
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_add_i32 s45, s46, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s48
	s_mov_b32 s13, s14
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v26.h, v26.h, v128.h
	v_or_b16 v27.h, v27.h, v129.h
	v_or_b16 v28.h, v28.h, v130.h
	v_or_b16 v29.l, v29.l, v134.l
	v_or_b16 v29.h, v29.h, v134.h
	v_or_b16 v30.h, v30.h, v135.h
	v_or_b16 v31.l, v31.l, v136.l
	v_or_b16 v31.h, v31.h, v136.h
	v_or_b16 v32.h, v32.h, v137.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(1)
	v_perm_b32 v34, v207, v203, 0x5010400
	v_perm_b32 v35, v207, v203, 0x7030602
	v_perm_b32 v36, v208, v204, 0x5010400
	v_perm_b32 v37, v208, v204, 0x7030602
	v_perm_b32 v38, v209, v205, 0x5010400
	v_perm_b32 v39, v209, v205, 0x7030602
	v_perm_b32 v40, v210, v206, 0x5010400
	v_perm_b32 v43, v210, v206, 0x7030602
	v_and_b16 v33.l, 0xff, v34.l
	v_lshrrev_b32_e32 v198, 8, v34
	v_lshrrev_b32_e32 v199, 24, v34
	v_and_b16 v33.h, 0xff, v34.h
	v_and_b16 v34.l, 0xff, v35.l
	v_lshrrev_b32_e32 v200, 8, v35
	v_lshrrev_b32_e32 v201, 24, v35
	v_and_b16 v34.h, 0xff, v35.h
	v_and_b16 v35.l, 0xff, v36.l
	v_lshrrev_b32_e32 v202, 8, v36
	v_lshrrev_b32_e32 v203, 24, v36
	v_and_b16 v35.h, 0xff, v36.h
	v_and_b16 v36.l, 0xff, v37.l
	v_lshrrev_b32_e32 v204, 8, v37
	v_lshrrev_b32_e32 v205, 24, v37
	v_and_b16 v36.h, 0xff, v37.h
	v_and_b16 v37.l, 0xff, v38.l
	v_lshrrev_b32_e32 v206, 8, v38
	v_lshrrev_b32_e32 v207, 24, v38
	v_and_b16 v37.h, 0xff, v38.h
	v_and_b16 v38.l, 0xff, v39.l
	v_lshrrev_b32_e32 v208, 8, v39
	v_lshrrev_b32_e32 v209, 24, v39
	v_and_b16 v38.h, 0xff, v39.h
	v_and_b16 v39.l, 0xff, v40.l
	v_lshrrev_b32_e32 v210, 8, v40
	v_lshrrev_b32_e32 v211, 24, v40
	v_and_b16 v39.h, 0xff, v40.h
	v_and_b16 v40.l, 0xff, v43.l
	v_lshrrev_b32_e32 v212, 8, v43
	v_lshrrev_b32_e32 v213, 24, v43
	v_and_b16 v40.h, 0xff, v43.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v43.l, 8, v128.l
	v_lshlrev_b16 v43.h, 8, v129.l
	v_lshlrev_b16 v128.l, 8, v130.l
	v_lshlrev_b16 v129.l, 8, v135.l
	v_lshlrev_b16 v130.l, 8, v137.l
	v_lshlrev_b16 v135.l, 8, v190.l
	v_lshlrev_b16 v137.l, 8, v194.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v190, v11, v196
	v_mul_f32_e32 v194, v13, v196
	v_mul_f32_e32 v196, v23, v196
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v126 offset:34816
	ds_load_b128 v[13:16], v126 offset:34832
	ds_load_b128 v[17:20], v126 offset:35328
	ds_load_b128 v[21:24], v126 offset:35344
	v_mul_f32_e32 v153, v197, v153
	v_mul_f32_e32 v157, v197, v157
	v_mul_f32_e32 v161, v197, v161
	v_mul_f32_e32 v165, v197, v165
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v169, v169, v197
	v_mul_f32_e32 v173, v173, v197
	v_mul_f32_e32 v177, v177, v197
	v_mul_f32_e32 v181, v181, v197
	v_mul_f32_e32 v180, v180, v197
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v144.l, 8, v210.l
	v_lshlrev_b16 v144.h, 8, v211.l
	v_lshlrev_b16 v145.l, 8, v212.l
	v_lshlrev_b16 v145.h, 8, v213.l
	v_lshlrev_b16 v138.l, 8, v198.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v93, v182, v9 :: v_dual_fmac_f32 v90, v185, v12
	v_fmac_f32_e32 v101, v150, v9
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v186
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v94, v183, v10 :: v_dual_fmac_f32 v89, v184, v11
	v_dual_fmac_f32 v78, v217, v18 :: v_dual_fmac_f32 v85, v192, v13
	v_fmac_f32_e32 v46, v149, v24
	v_dual_fmac_f32 v86, v191, v14 :: v_dual_fmac_f32 v81, v214, v15
	v_dual_fmac_f32 v82, v195, v16 :: v_dual_fmac_f32 v77, v218, v17
	v_dual_fmac_f32 v98, v153, v12 :: v_dual_fmac_f32 v49, v226, v19
	v_fmac_f32_e32 v68, v157, v16
	v_dual_fmac_f32 v75, v221, v20 :: v_dual_fmac_f32 v62, v158, v17
	v_dual_fmac_f32 v48, v147, v22 :: v_dual_fmac_f32 v45, v148, v23
	v_dual_fmac_f32 v102, v151, v10 :: v_dual_fmac_f32 v47, v146, v21
	v_dual_fmac_f32 v60, v161, v20 :: v_dual_fmac_f32 v97, v152, v11
	v_dual_fmac_f32 v71, v154, v13 :: v_dual_fmac_f32 v72, v155, v14
	v_fmac_f32_e32 v67, v156, v15
	v_fmac_f32_e32 v63, v159, v18
	v_fmac_f32_e32 v59, v160, v19
	v_dual_fmac_f32 v53, v162, v21 :: v_dual_fmac_f32 v54, v163, v22
	v_dual_fmac_f32 v52, v164, v23 :: v_dual_fmac_f32 v51, v165, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v125, v9 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v126 offset:34816
	ds_load_b128 v[13:16], v126 offset:34832
	ds_load_b128 v[17:20], v126 offset:35328
	ds_load_b128 v[21:24], v126 offset:35344
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v138.h, 8, v199.l
	v_lshlrev_b16 v139.l, 8, v200.l
	v_lshlrev_b16 v139.h, 8, v201.l
	v_lshlrev_b16 v140.l, 8, v202.l
	v_lshlrev_b16 v140.h, 8, v203.l
	v_lshlrev_b16 v141.l, 8, v204.l
	v_lshlrev_b16 v141.h, 8, v205.l
	v_lshlrev_b16 v142.l, 8, v206.l
	v_lshlrev_b16 v142.h, 8, v207.l
	v_lshlrev_b16 v143.l, 8, v208.l
	v_lshlrev_b16 v143.h, 8, v209.l
	v_or_b16 v39.l, v39.l, v144.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v25.l, v25.l, v43.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v39.h, v39.h, v144.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v25.h, v25.h, v43.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v40.l, v40.l, v145.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v44, v188, v9 :: v_dual_fmac_f32 v103, v187, v10
	v_fmac_f32_e32 v104, v168, v11
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v99, v190, v11 :: v_dual_fmac_f32 v74, v171, v14
	v_dual_fmac_f32 v100, v189, v12 :: v_dual_fmac_f32 v95, v194, v13
	v_fmac_f32_e32 v70, v173, v16
	v_dual_fmac_f32 v96, v193, v14 :: v_dual_fmac_f32 v91, v216, v15
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v66, v175, v18
	v_dual_fmac_f32 v92, v215, v16 :: v_dual_fmac_f32 v87, v220, v17
	v_fmac_f32_e32 v64, v177, v20
	v_dual_fmac_f32 v88, v219, v18 :: v_dual_fmac_f32 v83, v228, v19
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v58, v179, v22
	v_dual_fmac_f32 v84, v227, v20 :: v_dual_fmac_f32 v79, v230, v21
	v_fmac_f32_e32 v56, v181, v24
	v_fmac_f32_e32 v80, v229, v22
	v_fmac_f32_e32 v50, v196, v23
	v_fmac_f32_e32 v76, v231, v24
	v_dual_fmac_f32 v106, v166, v9 :: v_dual_fmac_f32 v107, v167, v10
	v_fmac_f32_e32 v105, v169, v12
	v_fmac_f32_e32 v73, v170, v13
	v_fmac_f32_e32 v69, v172, v15
	v_fmac_f32_e32 v65, v174, v17
	v_fmac_f32_e32 v61, v176, v19
	v_fmac_f32_e32 v57, v178, v21
	v_fmac_f32_e32 v55, v180, v23
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v26.l, v26.l, v128.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v40.h, v40.h, v145.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v27.l, v27.l, v129.l
	v_or_b16 v28.l, v28.l, v130.l
	v_or_b16 v30.l, v30.l, v135.l
	v_or_b16 v32.l, v32.l, v137.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v33.l, v33.l, v138.l
	v_or_b16 v33.h, v33.h, v138.h
	v_or_b16 v34.l, v34.l, v139.l
	v_or_b16 v34.h, v34.h, v139.h
	v_or_b16 v35.l, v35.l, v140.l
	v_or_b16 v35.h, v35.h, v140.h
	v_or_b16 v36.l, v36.l, v141.l
	v_or_b16 v36.h, v36.h, v141.h
	v_or_b16 v37.l, v37.l, v142.l
	v_or_b16 v37.h, v37.h, v142.h
	v_or_b16 v38.l, v38.l, v143.l
	v_or_b16 v38.h, v38.h, v143.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_store_b32 v222, v127 offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v223, v25
	ds_store_b16_d16_hi v223, v25 offset:32
	ds_store_b16 v223, v26 offset:64
	ds_store_b16_d16_hi v223, v26 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v223, v33 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v224, v27
	ds_store_b16_d16_hi v224, v27 offset:32
	ds_store_b16 v224, v28 offset:64
	ds_store_b16_d16_hi v224, v28 offset:96
	ds_store_b16 v225, v29
	ds_store_b16_d16_hi v225, v29 offset:32
	ds_store_b16 v225, v30 offset:64
	ds_store_b16_d16_hi v225, v30 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v223, v34 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v223, v31 offset:384
	ds_store_b16_d16_hi v223, v31 offset:416
	ds_store_b16 v223, v32 offset:448
	ds_store_b16_d16_hi v223, v32 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v223, v33 offset:16416
	ds_store_b16_d16_hi v223, v34 offset:16480
	ds_store_b16 v224, v35 offset:16384
	ds_store_b16_d16_hi v224, v35 offset:16416
	ds_store_b16 v224, v36 offset:16448
	ds_store_b16_d16_hi v224, v36 offset:16480
	ds_store_b16 v225, v37 offset:16384
	ds_store_b16_d16_hi v225, v37 offset:16416
	ds_store_b16 v225, v38 offset:16448
	ds_store_b16_d16_hi v225, v38 offset:16480
	ds_store_b16 v223, v39 offset:16768
	ds_store_b16_d16_hi v223, v39 offset:16800
	ds_store_b16 v223, v40 offset:16832
	ds_store_b16_d16_hi v223, v40 offset:16864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v110 :: v_dual_mov_b32 v2, v111
	v_mov_b32_e32 v17, v112
	v_mov_b32_e32 v19, v113
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s47, 0, 0x8400
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v44, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v38, s0, v42
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v17
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v27, v38
	ds_load_u8_d16 v3, v38 offset:16
	ds_load_u8_d16 v30, v38 offset:32
	ds_load_u8_d16 v4, v38 offset:48
	ds_load_u8_d16 v23, v38 offset:64
	ds_load_u8_d16 v24, v38 offset:96
	ds_load_u8_d16 v5, v38 offset:112
	ds_load_u8_d16 v6, v38 offset:80
	ds_load_u8_d16 v122, v38 offset:128
	ds_load_u8_d16 v124, v38 offset:160
	ds_load_u8_d16 v121, v38 offset:192
	ds_load_u8_d16 v123, v38 offset:224
	ds_load_u8_d16 v11, v38 offset:240
	ds_load_u8_d16 v12, v38 offset:208
	ds_load_u8_d16 v13, v38 offset:176
	ds_load_u8_d16 v14, v38 offset:144
	ds_load_u8_d16 v129, v38 offset:256
	ds_load_u8_d16 v34, v38 offset:288
	ds_load_u8_d16 v128, v38 offset:320
	ds_load_u8_d16 v130, v38 offset:352
	ds_load_u8_d16 v15, v38 offset:368
	ds_load_u8_d16 v16, v38 offset:336
	ds_load_u8_d16 v18, v38 offset:304
	ds_load_u8_d16 v20, v38 offset:272
	ds_load_u8_d16 v136, v38 offset:384
	ds_load_u8_d16 v138, v38 offset:416
	ds_load_u8_d16 v135, v38 offset:448
	ds_load_u8_d16 v137, v38 offset:480
	ds_load_u8_d16 v25, v38 offset:496
	ds_load_u8_d16 v26, v38 offset:464
	ds_load_u8_d16 v31, v38 offset:432
	ds_load_u8_d16 v32, v38 offset:400
	ds_load_u8_d16 v112, v38 offset:512
	ds_load_u8_d16 v118, v38 offset:544
	ds_load_u8_d16 v111, v38 offset:576
	ds_load_u8_d16 v113, v38 offset:608
	ds_load_u8_d16 v7, v38 offset:624
	ds_load_u8_d16 v8, v38 offset:592
	ds_load_u8_d16 v9, v38 offset:560
	ds_load_u8_d16 v10, v38 offset:528
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v40, s0, v1
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v169, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v28, 0x90, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v19
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v125, v38 offset:640
	ds_load_u8_d16 v127, v38 offset:672
	ds_load_u8_d16 v33, v38 offset:704
	ds_load_u8_d16 v126, v38 offset:736
	ds_load_u8_d16 v17, v38 offset:752
	ds_load_u8_d16 v19, v38 offset:720
	ds_load_u8_d16 v21, v38 offset:688
	ds_load_u8_d16 v22, v38 offset:656
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v162, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v29, 0x110, 0, vcc_lo
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v170, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v39, v28, v29
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v36, v38 offset:768
	ds_load_u8_d16 v134, v38 offset:800
	ds_load_u8_d16 v35, v38 offset:832
	ds_load_u8_d16 v37, v38 offset:864
	ds_load_u8_d16 v28, v38 offset:880
	ds_load_u8_d16 v29, v38 offset:848
	ds_load_u8_d16 v43, v38 offset:816
	ds_load_u8_d16 v108, v38 offset:784
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v174, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b32_e32 v213, v120, v39
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v139, v38 offset:896
	ds_load_u8_d16 v141, v38 offset:928
	ds_load_u8_d16 v120, v38 offset:960
	ds_load_u8_d16 v140, v38 offset:992
	ds_load_u8_d16 v109, v40
	ds_load_u8_d16 v110, v38 offset:976
	ds_load_u8_d16 v117, v38 offset:944
	ds_load_u8_d16 v119, v38 offset:912
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v39, 0, 1, s2
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v164, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v214, 16, v213
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v154, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s0, 1, v39
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v38, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s16, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v143, s12, v213
	v_add_nc_u32_e32 v142, s12, v214
	ds_load_b128 v[154:157], v143 offset:4096
	ds_load_b128 v[159:162], v143
	ds_load_b128 v[38:41], v142 offset:4096
	ds_load_b128 v[150:153], v142
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v142, v129, v34, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v146, v128, v130, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v163, v139, v141, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v164, v120, v140, 0xc0c0004
	v_perm_b32 v144, v136, v138, 0xc0c0004
	v_perm_b32 v145, v135, v137, 0xc0c0004
	v_perm_b32 v147, v122, v124, 0xc0c0004
	v_perm_b32 v148, v121, v123, 0xc0c0004
	v_lshl_or_b32 v183, v146, 16, v142
	v_perm_b32 v142, v27, v30, 0xc0c0004
	v_perm_b32 v143, v23, v24, 0xc0c0004
	v_lshl_or_b32 v192, v164, 16, v163
	v_perm_b32 v163, v32, v31, 0xc0c0004
	v_perm_b32 v164, v26, v25, 0xc0c0004
	v_perm_b32 v185, v20, v18, 0xc0c0004
	v_perm_b32 v186, v16, v15, 0xc0c0004
	v_perm_b32 v187, v14, v13, 0xc0c0004
	v_perm_b32 v188, v12, v11, 0xc0c0004
	v_perm_b32 v193, v3, v4, 0xc0c0004
	v_perm_b32 v197, v6, v5, 0xc0c0004
	v_lshl_or_b32 v184, v145, 16, v144
	v_lshl_or_b32 v182, v148, 16, v147
	v_lshl_or_b32 v181, v143, 16, v142
	v_dual_mov_b32 v149, s23 :: v_dual_mov_b32 v146, s20
	v_dual_mov_b32 v148, s22 :: v_dual_mov_b32 v147, s21
	v_dual_mov_b32 v145, s19 :: v_dual_mov_b32 v144, s18
	v_dual_mov_b32 v143, s17 :: v_dual_mov_b32 v142, s16
	v_perm_b32 v173, v36, v134, 0xc0c0004
	v_perm_b32 v174, v35, v37, 0xc0c0004
	v_perm_b32 v175, v125, v127, 0xc0c0004
	v_perm_b32 v176, v33, v126, 0xc0c0004
	v_perm_b32 v177, v112, v118, 0xc0c0004
	v_perm_b32 v178, v111, v113, 0xc0c0004
	v_lshl_or_b32 v196, v164, 16, v163
	v_lshl_or_b32 v195, v186, 16, v185
	v_lshl_or_b32 v194, v188, 16, v187
	v_lshl_or_b32 v193, v197, 16, v193
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v163, v119, v117, 0xc0c0004
	v_perm_b32 v164, v110, v109, 0xc0c0004
	v_perm_b32 v197, v108, v43, 0xc0c0004
	v_perm_b32 v198, v29, v28, 0xc0c0004
	v_perm_b32 v199, v22, v21, 0xc0c0004
	v_perm_b32 v200, v19, v17, 0xc0c0004
	v_perm_b32 v201, v10, v9, 0xc0c0004
	v_perm_b32 v202, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[165:172], v[159:162], v[181:184], v[142:149] neg_lo:[1,1,0]
	v_lshl_or_b32 v191, v174, 16, v173
	v_lshl_or_b32 v190, v176, 16, v175
	v_lshl_or_b32 v189, v178, 16, v177
	v_wmma_i32_16x16x16_iu8 v[173:180], v[154:157], v[181:184], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[181:188], v[159:162], v[193:196], v[142:149] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v164, 16, v163
	v_lshl_or_b32 v161, v198, 16, v197
	v_lshl_or_b32 v160, v200, 16, v199
	v_lshl_or_b32 v159, v202, 16, v201
	v_wmma_i32_16x16x16_iu8 v[142:149], v[154:157], v[193:196], v[142:149] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[165:172], v[150:153], v[189:192], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[173:180], v[38:41], v[189:192], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[181:188], v[150:153], v[159:162], v[181:188] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[38:41], v[159:162], v[142:149] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v189, v167
	v_cvt_f32_i32_e32 v41, v168
	v_cvt_f32_i32_e32 v156, v169
	v_cvt_f32_i32_e32 v169, v170
	v_cvt_f32_i32_e32 v162, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v167, v173
	v_cvt_f32_i32_e32 v173, v174
	v_cvt_f32_i32_e32 v171, v175
	v_cvt_f32_i32_e32 v175, v176
	v_cvt_f32_i32_e32 v157, v177
	v_cvt_f32_i32_e32 v170, v178
	v_cvt_f32_i32_e32 v168, v179
	v_cvt_f32_i32_e32 v174, v180
	v_cvt_f32_i32_e32 v163, v181
	v_cvt_f32_i32_e32 v164, v182
	v_cvt_f32_i32_e32 v160, v183
	v_cvt_f32_i32_e32 v161, v184
	v_cvt_f32_i32_e32 v154, v185
	v_cvt_f32_i32_e32 v155, v186
	v_cvt_f32_i32_e32 v152, v187
	v_cvt_f32_i32_e32 v153, v188
	v_cvt_f32_i32_e32 v150, v142
	v_cvt_f32_i32_e32 v151, v143
	v_cvt_f32_i32_e32 v143, v144
	v_cvt_f32_i32_e32 v144, v145
	v_cvt_f32_i32_e32 v40, v146
	v_cvt_f32_i32_e32 v142, v147
	v_cvt_f32_i32_e32 v39, v148
	v_cvt_f32_i32_e32 v38, v149
	v_cvt_f32_i32_e32 v145, v165
	v_cvt_f32_i32_e32 v159, v166
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x18                           ; 100-byte Folded Spill
	scratch_store_b32 off, v145, off offset:188
	scratch_store_b32 off, v175, off offset:184
	scratch_store_b32 off, v174, off offset:180
	scratch_store_b32 off, v173, off offset:176
	scratch_store_b32 off, v172, off offset:172
	scratch_store_b32 off, v171, off offset:168
	scratch_store_b32 off, v189, off offset:164
	scratch_store_b32 off, v170, off offset:160
	scratch_store_b32 off, v169, off offset:156
	scratch_store_b32 off, v168, off offset:152
	scratch_store_b32 off, v167, off offset:148
	scratch_store_b32 off, v162, off offset:144
	scratch_store_b32 off, v156, off offset:140
	scratch_store_b32 off, v155, off offset:68
	scratch_store_b32 off, v154, off offset:64
	scratch_store_b32 off, v153, off offset:52
	scratch_store_b32 off, v152, off offset:48
	scratch_store_b32 off, v151, off offset:32
	scratch_store_b32 off, v150, off offset:24
	scratch_store_b32 off, v144, off offset:20
	scratch_store_b32 off, v143, off offset:16
	scratch_store_b32 off, v142, off offset:12
	scratch_store_b32 off, v40, off offset:8
	scratch_store_b32 off, v39, off offset:4
	scratch_store_b32 off, v38, off
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v38, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_mov_b32 s12, 0
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v39, s10, v213
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v40, v136, v138, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v142, v135, v137, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v38, s10, v214
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_lshl_or_b32 v172, v142, 16, v40
	v_perm_b32 v27, v27, v30, 0xc0c0004
	v_perm_b32 v23, v23, v24, 0xc0c0004
	v_mov_b32_e32 v149, s19
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[135:138], v38 offset:4096
	ds_load_b128 v[150:153], v38
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v38, v128, v130, 0xc0c0004
	v_mov_b32_e32 v128, v157
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[154:157], v39 offset:4096
	ds_load_b128 v[165:168], v39
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_lshl_or_b32 v169, v23, 16, v27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v23, v139, v141, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v24, v120, v140, 0xc0c0004
	v_perm_b32 v34, v129, v34, 0xc0c0004
	v_perm_b32 v122, v122, v124, 0xc0c0004
	v_perm_b32 v121, v121, v123, 0xc0c0004
	v_perm_b32 v18, v20, v18, 0xc0c0004
	v_lshl_or_b32 v176, v24, 16, v23
	v_perm_b32 v23, v32, v31, 0xc0c0004
	v_perm_b32 v24, v26, v25, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_perm_b32 v16, v14, v13, 0xc0c0004
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_perm_b32 v3, v3, v4, 0xc0c0004
	v_perm_b32 v4, v6, v5, 0xc0c0004
	v_lshl_or_b32 v171, v38, 16, v34
	v_lshl_or_b32 v170, v121, 16, v122
	v_dual_mov_b32 v148, s18 :: v_dual_mov_b32 v147, s17
	v_dual_mov_b32 v146, s16 :: v_dual_mov_b32 v145, s15
	v_dual_mov_b32 v144, s14 :: v_dual_mov_b32 v143, s13
	v_mov_b32_e32 v142, s12
	v_perm_b32 v27, v36, v134, 0xc0c0004
	v_perm_b32 v30, v35, v37, 0xc0c0004
	v_perm_b32 v34, v125, v127, 0xc0c0004
	v_perm_b32 v33, v33, v126, 0xc0c0004
	v_perm_b32 v35, v112, v118, 0xc0c0004
	v_perm_b32 v36, v111, v113, 0xc0c0004
	v_lshl_or_b32 v14, v24, 16, v23
	v_lshl_or_b32 v13, v15, 16, v18
	v_lshl_or_b32 v12, v11, 16, v16
	v_lshl_or_b32 v11, v4, 16, v3
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v15, v119, v117, 0xc0c0004
	v_perm_b32 v16, v110, v109, 0xc0c0004
	v_perm_b32 v20, v108, v43, 0xc0c0004
	v_perm_b32 v23, v29, v28, 0xc0c0004
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v19, v19, v17, 0xc0c0004
	v_perm_b32 v22, v10, v9, 0xc0c0004
	v_perm_b32 v24, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[165:168], v[169:172], v[142:149] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v30, 16, v27
	v_lshl_or_b32 v174, v33, 16, v34
	v_lshl_or_b32 v173, v36, 16, v35
	v_wmma_i32_16x16x16_iu8 v[30:37], v[154:157], v[169:172], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[165:168], v[11:14], v[142:149] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v16, 16, v15
	v_lshl_or_b32 v17, v23, 16, v20
	v_lshl_or_b32 v16, v19, 16, v21
	v_lshl_or_b32 v15, v24, 16, v22
	v_wmma_i32_16x16x16_iu8 v[142:149], v[154:157], v[11:14], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[150:153], v[173:176], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[30:37], v[135:138], v[173:176], v[30:37] neg_lo:[1,1,0]
	v_mov_b32_e32 v157, v128
	v_wmma_i32_16x16x16_iu8 v[3:10], v[150:153], v[15:18], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[135:138], v[15:18], v[142:149] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v177, v121
	v_cvt_f32_i32_e32 v170, v122
	v_cvt_f32_i32_e32 v178, v123
	v_cvt_f32_i32_e32 v171, v124
	v_cvt_f32_i32_e32 v179, v125
	v_cvt_f32_i32_e32 v172, v126
	v_cvt_f32_i32_e32 v180, v127
	v_cvt_f32_i32_e32 v173, v30
	v_cvt_f32_i32_e32 v181, v31
	v_cvt_f32_i32_e32 v174, v32
	v_cvt_f32_i32_e32 v182, v33
	v_cvt_f32_i32_e32 v175, v34
	v_cvt_f32_i32_e32 v183, v35
	v_cvt_f32_i32_e32 v176, v36
	v_cvt_f32_i32_e32 v184, v37
	v_cvt_f32_i32_e32 v190, v3
	v_cvt_f32_i32_e32 v191, v4
	v_cvt_f32_i32_e32 v188, v5
	v_cvt_f32_i32_e32 v189, v6
	v_cvt_f32_i32_e32 v154, v7
	v_cvt_f32_i32_e32 v155, v8
	v_cvt_f32_i32_e32 v152, v9
	v_cvt_f32_i32_e32 v153, v10
	v_cvt_f32_i32_e32 v150, v142
	v_cvt_f32_i32_e32 v151, v143
	v_cvt_f32_i32_e32 v143, v144
	v_cvt_f32_i32_e32 v144, v145
	v_cvt_f32_i32_e32 v40, v146
	v_cvt_f32_i32_e32 v142, v147
	v_cvt_f32_i32_e32 v38, v148
	v_cvt_f32_i32_e32 v39, v149
	v_cvt_f32_i32_e32 v158, v120
.LBB0_12:
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 27
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s10
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s31, s11
	.loc	1 390 40 is_stmt 0              ; generate_amdgcn.py:390:40
	s_mul_i32 s4, s0, s35
	.loc	1 387 34 is_stmt 1              ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(62)
	v_add_lshl_u32 v3, v116, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt lgkmcnt(60)
	v_add_lshl_u32 v4, v115, s4, 1
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
	v_add_lshl_u32 v6, v114, s0, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v5, 28, v133
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt lgkmcnt(27)
	v_add_lshl_u32 v7, v216, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v2, 32, v2
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v4, v4, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_and_b32 s9, s9, 0xffff
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v155, off offset:120
	scratch_store_b32 off, v154, off offset:116
	scratch_store_b32 off, v153, off offset:100
	scratch_store_b32 off, v152, off offset:96
	scratch_store_b32 off, v151, off offset:76
	scratch_store_b32 off, v150, off offset:72
	scratch_store_b32 off, v144, off offset:60
	scratch_store_b32 off, v143, off offset:56
	scratch_store_b32 off, v142, off offset:44
	scratch_store_b32 off, v40, off offset:40
	scratch_store_b32 off, v39, off offset:36
	scratch_store_b32 off, v38, off offset:28
	v_mov_b32_e32 v194, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_add3_u32 v2, 0, v132, v2
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v185, 0, v131
	s_waitcnt lgkmcnt(25)
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v9, s47, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v187, v2, v5
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_dual_cndmask_b32 v5, 0x80000000, v7 :: v_dual_cndmask_b32 v2, 0x80000000, v6
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v215, v3, s[8:11], 0 offen
	buffer_load_u16 v217, v2, s[8:11], 0 offen
	s_waitcnt lgkmcnt(24)
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
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	s_waitcnt lgkmcnt(10)
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v17, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s12, 0
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
	ds_load_u8_d16 v129, v9
	ds_load_u8_d16 v239, v9 offset:16
	ds_load_u8_d16 v131, v9 offset:32
	ds_load_u8_d16 v242, v9 offset:48
	ds_load_u8_d16 v127, v9 offset:64
	ds_load_u8_d16 v128, v9 offset:96
	ds_load_u8_d16 v243, v9 offset:112
	ds_load_u8_d16 v244, v9 offset:80
	ds_load_u8_d16 v140, v9 offset:128
	ds_load_u8_d16 v142, v9 offset:160
	ds_load_u8_d16 v138, v9 offset:192
	ds_load_u8_d16 v141, v9 offset:224
	ds_load_u8_d16 v247, v9 offset:240
	ds_load_u8_d16 v249, v9 offset:208
	ds_load_u8_d16 v251, v9 offset:176
	ds_load_u8_d16 v252, v9 offset:144
	ds_load_u8_d16 v148, v9 offset:256
	ds_load_u8_d16 v33, v9 offset:288
	ds_load_u8_d16 v146, v9 offset:320
	ds_load_u8_d16 v149, v9 offset:352
	ds_load_u8_d16 v255, v9 offset:368
	ds_load_u8_d16 v108, v9 offset:336
	ds_load_u8_d16 v110, v9 offset:304
	ds_load_u8_d16 v111, v9 offset:272
	ds_load_u8_d16 v35, v9 offset:384
	ds_load_u8_d16 v37, v9 offset:416
	ds_load_u8_d16 v34, v9 offset:448
	ds_load_u8_d16 v36, v9 offset:480
	ds_load_u8_d16 v117, v9 offset:496
	ds_load_u8_d16 v119, v9 offset:464
	ds_load_u8_d16 v121, v9 offset:432
	ds_load_u8_d16 v122, v9 offset:400
	ds_load_u8_d16 v124, v9 offset:512
	ds_load_u8_d16 v126, v9 offset:544
	ds_load_u8_d16 v123, v9 offset:576
	ds_load_u8_d16 v125, v9 offset:608
	ds_load_u8_d16 v218, v9 offset:624
	ds_load_u8_d16 v238, v9 offset:592
	ds_load_u8_d16 v240, v9 offset:560
	ds_load_u8_d16 v241, v9 offset:528
	ds_load_u8_d16 v132, v9 offset:640
	ds_load_u8_d16 v134, v9 offset:672
	ds_load_u8_d16 v130, v9 offset:704
	ds_load_u8_d16 v133, v9 offset:736
	ds_load_u8_d16 v245, v9 offset:752
	ds_load_u8_d16 v246, v9 offset:720
	ds_load_u8_d16 v248, v9 offset:688
	ds_load_u8_d16 v250, v9 offset:656
	ds_load_u8_d16 v136, v9 offset:768
	ds_load_u8_d16 v139, v9 offset:800
	ds_load_u8_d16 v135, v9 offset:832
	ds_load_u8_d16 v137, v9 offset:864
	ds_load_u8_d16 v253, v9 offset:880
	ds_load_u8_d16 v254, v9 offset:848
	ds_load_u8_d16 v43, v9 offset:816
	ds_load_u8_d16 v109, v9 offset:784
	ds_load_u8_d16 v144, v9 offset:896
	ds_load_u8_d16 v147, v9 offset:928
	ds_load_u8_d16 v143, v9 offset:960
	ds_load_u8_d16 v145, v9 offset:992
	ds_load_u8_d16 v112, v10
	ds_load_u8_d16 v113, v9 offset:976
	ds_load_u8_d16 v118, v9 offset:944
	ds_load_u8_d16 v120, v9 offset:912
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v9, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v17, v35, v37, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v18, v34, v36, 0xc0c0004
	v_perm_b32 v19, v148, v33, 0xc0c0004
	v_perm_b32 v20, v146, v149, 0xc0c0004
	v_perm_b32 v21, v140, v142, 0xc0c0004
	v_perm_b32 v22, v138, v141, 0xc0c0004
	v_lshl_or_b32 v32, v18, 16, v17
	v_perm_b32 v17, v129, v131, 0xc0c0004
	v_perm_b32 v18, v127, v128, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v38, s46, v213
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v31, v20, 16, v19
	v_lshl_or_b32 v30, v22, 16, v21
	v_lshl_or_b32 v29, v18, 16, v17
	v_dual_mov_b32 v24, s19 :: v_dual_mov_b32 v21, s16
	v_mov_b32_e32 v23, s18
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[9:12], v38
	ds_load_b128 v[165:168], v38 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v39, v122, v121, 0xc0c0004
	v_perm_b32 v40, v119, v117, 0xc0c0004
	v_perm_b32 v150, v111, v110, 0xc0c0004
	v_perm_b32 v151, v108, v255, 0xc0c0004
	v_perm_b32 v152, v252, v251, 0xc0c0004
	v_perm_b32 v153, v249, v247, 0xc0c0004
	v_perm_b32 v154, v239, v242, 0xc0c0004
	v_perm_b32 v155, v244, v243, 0xc0c0004
	v_dual_mov_b32 v22, s17 :: v_dual_mov_b32 v19, s14
	v_dual_mov_b32 v20, s15 :: v_dual_mov_b32 v17, s12
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v38, s46, v214
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v198, v40, 16, v39
	v_lshl_or_b32 v197, v151, 16, v150
	v_lshl_or_b32 v196, v153, 16, v152
	v_lshl_or_b32 v195, v155, 16, v154
	v_mov_b32_e32 v40, v157
	v_mov_b32_e32 v18, s13
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v162, v144, v147, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v143, v145, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[9:12], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[227:234], v[165:168], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[9:12], v[195:198], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[165:168], v[195:198], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v29, v136, v139, 0xc0c0004
	v_perm_b32 v30, v135, v137, 0xc0c0004
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[9:12], v38
	ds_load_b128 v[165:168], v38 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v32, v39, 16, v162
	v_perm_b32 v39, v123, v125, 0xc0c0004
	v_lshl_or_b32 v31, v30, 16, v29
	v_perm_b32 v29, v132, v134, 0xc0c0004
	v_perm_b32 v30, v130, v133, 0xc0c0004
	v_perm_b32 v38, v254, v253, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v124, v126, 0xc0c0004
	v_lshl_or_b32 v29, v39, 16, v29
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[9:12], v[29:32], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[227:234], v[165:168], v[29:32], v[227:234] neg_lo:[1,1,0]
	v_perm_b32 v29, v120, v118, 0xc0c0004
	v_perm_b32 v30, v113, v112, 0xc0c0004
	v_perm_b32 v31, v109, v43, 0xc0c0004
	v_cvt_f32_i32_e32 v202, v221
	v_cvt_f32_i32_e32 v205, v222
	v_cvt_f32_i32_e32 v196, v223
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v250, v248, 0xc0c0004
	v_perm_b32 v30, v246, v245, 0xc0c0004
	v_lshl_or_b32 v31, v38, 16, v31
	v_perm_b32 v38, v238, v218, 0xc0c0004
	v_cvt_f32_i32_e32 v200, v224
	v_cvt_f32_i32_e32 v198, v227
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v241, v240, 0xc0c0004
	v_cvt_f32_i32_e32 v204, v228
	v_cvt_f32_i32_e32 v203, v229
	v_cvt_f32_i32_e32 v206, v230
	v_cvt_f32_i32_e32 v195, v231
	v_lshl_or_b32 v29, v38, 16, v29
	v_cvt_f32_i32_e32 v199, v232
	v_cvt_f32_i32_e32 v197, v233
	v_cvt_f32_i32_e32 v201, v234
	v_cvt_f32_i32_e32 v207, v225
	v_wmma_i32_16x16x16_iu8 v[150:157], v[9:12], v[29:32], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[165:168], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v208, v226
	v_cvt_f32_i32_e32 v209, v219
	v_cvt_f32_i32_e32 v210, v220
	v_cvt_f32_i32_e32 v211, v150
	v_cvt_f32_i32_e32 v212, v151
	v_cvt_f32_i32_e32 v167, v152
	v_cvt_f32_i32_e32 v168, v153
	v_cvt_f32_i32_e32 v38, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v32, v156
	v_cvt_f32_i32_e32 v31, v157
	v_mov_b32_e32 v157, v40
	v_cvt_f32_i32_e32 v29, v17
	v_cvt_f32_i32_e32 v30, v18
	v_cvt_f32_i32_e32 v17, v19
	v_cvt_f32_i32_e32 v18, v20
	v_cvt_f32_i32_e32 v11, v21
	v_cvt_f32_i32_e32 v12, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v38, off offset:136
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
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v38, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v39, s45, v213
	ds_load_b128 v[223:226], v39 offset:4096
	ds_load_b128 v[227:230], v39
	v_add_nc_u32_e32 v38, s45, v214
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v35, v35, v37, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v34, v34, v36, 0xc0c0004
	v_perm_b32 v33, v148, v33, 0xc0c0004
	v_perm_b32 v36, v146, v149, 0xc0c0004
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[151:154], v38 offset:4096
	ds_load_b128 v[219:222], v38
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v37, v140, v142, 0xc0c0004
	v_perm_b32 v38, v138, v141, 0xc0c0004
	v_lshl_or_b32 v234, v34, 16, v35
	v_lshl_or_b32 v233, v36, 16, v33
	v_perm_b32 v33, v129, v131, 0xc0c0004
	v_perm_b32 v34, v127, v128, 0xc0c0004
	v_lshl_or_b32 v232, v38, 16, v37
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v131, v144, v147, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v138, v143, v145, 0xc0c0004
	v_perm_b32 v136, v136, v139, 0xc0c0004
	v_lshl_or_b32 v231, v34, 16, v33
	v_dual_mov_b32 v40, s19 :: v_dual_mov_b32 v37, s16
	v_dual_mov_b32 v39, s18 :: v_dual_mov_b32 v38, s17
	v_dual_mov_b32 v36, s15 :: v_dual_mov_b32 v35, s14
	v_dual_mov_b32 v34, s13 :: v_dual_mov_b32 v33, s12
	v_perm_b32 v135, v135, v137, 0xc0c0004
	v_perm_b32 v132, v132, v134, 0xc0c0004
	v_perm_b32 v133, v130, v133, 0xc0c0004
	v_perm_b32 v134, v124, v126, 0xc0c0004
	v_perm_b32 v137, v123, v125, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v117, v119, v117, 0xc0c0004
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v108, v108, v255, 0xc0c0004
	v_perm_b32 v111, v252, v251, 0xc0c0004
	v_perm_b32 v119, v249, v247, 0xc0c0004
	v_perm_b32 v122, v239, v242, 0xc0c0004
	v_perm_b32 v139, v244, v243, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[227:230], v[231:234], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v150, v138, 16, v131
	v_lshl_or_b32 v149, v135, 16, v136
	v_lshl_or_b32 v148, v133, 16, v132
	v_lshl_or_b32 v147, v137, 16, v134
	v_wmma_i32_16x16x16_iu8 v[131:138], v[223:226], v[231:234], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v234, v117, 16, v121
	v_lshl_or_b32 v233, v108, 16, v110
	v_lshl_or_b32 v232, v119, 16, v111
	v_lshl_or_b32 v231, v139, 16, v122
	v_perm_b32 v108, v120, v118, 0xc0c0004
	v_perm_b32 v110, v113, v112, 0xc0c0004
	v_perm_b32 v43, v109, v43, 0xc0c0004
	v_perm_b32 v109, v254, v253, 0xc0c0004
	v_perm_b32 v112, v250, v248, 0xc0c0004
	v_perm_b32 v113, v246, v245, 0xc0c0004
	v_perm_b32 v117, v241, v240, 0xc0c0004
	v_perm_b32 v118, v238, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[139:146], v[227:230], v[231:234], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v110, 16, v108
	v_lshl_or_b32 v110, v109, 16, v43
	v_lshl_or_b32 v109, v113, 16, v112
	v_lshl_or_b32 v108, v118, 16, v117
	v_wmma_i32_16x16x16_iu8 v[33:40], v[223:226], v[231:234], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[219:222], v[147:150], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[151:154], v[147:150], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[219:222], v[108:111], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[151:154], v[108:111], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v194, v123
	v_cvt_f32_i32_e32 v233, v124
	v_cvt_f32_i32_e32 v231, v125
	v_cvt_f32_i32_e32 v236, v126
	v_cvt_f32_i32_e32 v223, v127
	v_cvt_f32_i32_e32 v230, v128
	v_cvt_f32_i32_e32 v226, v129
	v_cvt_f32_i32_e32 v234, v130
	v_cvt_f32_i32_e32 v227, v131
	v_cvt_f32_i32_e32 v235, v132
	v_cvt_f32_i32_e32 v232, v133
	v_cvt_f32_i32_e32 v237, v134
	v_cvt_f32_i32_e32 v219, v135
	v_cvt_f32_i32_e32 v228, v136
	v_cvt_f32_i32_e32 v222, v137
	v_cvt_f32_i32_e32 v229, v138
	v_cvt_f32_i32_e32 v220, v139
	v_cvt_f32_i32_e32 v224, v140
	v_cvt_f32_i32_e32 v221, v141
	v_cvt_f32_i32_e32 v225, v142
	v_cvt_f32_i32_e32 v192, v143
	v_cvt_f32_i32_e32 v193, v144
	v_cvt_f32_i32_e32 v169, v145
	v_cvt_f32_i32_e32 v186, v146
	v_cvt_f32_i32_e32 v165, v33
	v_cvt_f32_i32_e32 v166, v34
	v_cvt_f32_i32_e32 v156, v35
	v_cvt_f32_i32_e32 v162, v36
	v_cvt_f32_i32_e32 v150, v37
	v_cvt_f32_i32_e32 v151, v38
	v_cvt_f32_i32_e32 v38, v39
	v_cvt_f32_i32_e32 v39, v40
.LBB0_16:
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s44, 31
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s10
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s0, s0, 27
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s31, s11
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s0, s44, s0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(13)
	v_mov_b16_e64 v43.h, v215.l
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s34, s34, s27
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s0, s35
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v33, v116, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v34, v115, s1, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s4, -1, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v35, v114, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v116.l, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_mov_b16_e64 v116.h, v217.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v115, s27, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_mov_b16_e32 v43.l, v116.l
	v_mov_b32_e32 v241, v38
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_mul_f32 v36, v163, v116
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(12)
	v_dual_mul_f32 v38, v188, v116 :: v_dual_mul_f32 v109, v159, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v40, v160, v116 :: v_dual_mul_f32 v111, v178, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v36, v36, v25, v101
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v38, v38, v31, v104
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v215.h, v116.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v40, v40, v27, v97
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v214.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v101, v101, v36, s2
	v_cndmask_b32_e64 v104, v104, v38, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v218.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v97, v97, v40, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v217.h, v116.l
	v_mov_b16_e64 v213.h, v116.l
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v108, v158, v43
	v_dual_mov_b32 v242, v39 :: v_dual_mul_f32 v39, v161, v116
	v_mul_f32_e32 v112, v170, v43
	v_mul_f32_e32 v42, v177, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v39, v39, v28, v98
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v31, v112, v31, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v98, v98, v39, s2
	v_cndmask_b32_e64 v99, v99, v31, s2
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v240, v33, s[8:11], 0 offen
	buffer_load_u16 v239, v35, s[8:11], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v33, v216, s1, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v187, v34 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v110, off, off offset:188
	scratch_load_b32 v131, off, off offset:184
	scratch_load_b32 v123, off, off offset:172
	scratch_load_b32 v127, off, off offset:176
	scratch_load_b32 v139, off, off offset:180
	scratch_load_b32 v120, off, off offset:140
	scratch_load_b32 v119, off, off offset:156
	scratch_load_b32 v124, off, off offset:144
	scratch_load_b32 v128, off, off offset:148
	scratch_load_b32 v113, off, off offset:164
	scratch_load_b32 v132, off, off offset:168
	scratch_load_b32 v135, off, off offset:160
	scratch_load_b32 v140, off, off offset:152
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_mul_f32 v34, v190, v116
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v37, v189, v116
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v35, v164, v116 :: v_dual_mul_f32 v118, v171, v43
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v238, v33, s[28:31], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v33, 0xf0, v0
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v34, v34, v29, v106
	v_fma_f32 v29, v108, v29, v44
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v35, v35, v26, v102
	v_fma_f32 v26, v109, v26, v94
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v33, 1, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v106, v106, v34, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v216.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v102, v35, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add3_u32 v114, s34, s33, v33
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v33, v191, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v33, v33, v30, v107
	v_fma_f32 v30, v42, v30, v103
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v107, v107, v33, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v103, v103, v30, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[33:36], v185 offset:35328
	s_waitcnt vmcnt(13)
	v_mul_f32_e32 v110, v110, v43
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v37, v37, v32, v105
	v_fma_f32 v32, v111, v32, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v25, v110, v25, v93
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v105, v105, v37, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v100, v100, v32, s2
	v_cndmask_b32_e64 v30, v93, v25, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v120, v120, v43 :: v_dual_lshlrev_b32 v25, 16, v240
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v126, v173, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v119, v119, v43
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v128, v128, v43
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v42, v118, v21, v95
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v108, v120, v13, v85
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v118, v126, v17, v87
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v122, v172, v43
	v_mul_f32_e32 v130, v174, v43
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v124, v124, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v85, v108, s2
	v_cndmask_b32_e64 v108, v87, v118, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v118, v233, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v109, v119, v14, v86
	v_fma_f32 v119, v128, v5, v77
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v131, v131, v43
	v_mul_f32_e32 v87, v200, v25
	v_mul_f32_e32 v41, v41, v43
	v_mul_f32_e32 v127, v127, v43
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v77, v119, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v119, v194, v25
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v111, v122, v23, v91
	v_fma_f32 v122, v130, v19, v83
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v86, v109, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v113, v113, v43
	v_mul_f32_e32 v123, v123, v43
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v138, v176, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v109, v83, v122, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v83, v205, v25
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v112, v124, v15, v81
	v_fma_f32 v124, v131, v8, v75
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v139, v139, v43 :: v_dual_mul_f32 v86, v202, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v28, v41, v28, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v81, v112, s2
	v_cndmask_b32_e64 v81, v75, v124, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v124, v234, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v120, v127, v6, v78
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v117, v179, v43
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v130, v138, v11, v50
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v90, v28, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v90, v196, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v78, v120, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v120, v236, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v27, v113, v27, v89
	v_fma_f32 v113, v123, v16, v82
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v138, v197, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v131, v139, v4, v46
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v121, v180, v43 :: v_dual_mul_f32 v122, v230, v25
	v_mul_f32_e32 v134, v175, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v135, v135, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v82, v113, s2
	v_cndmask_b32_e64 v113, v46, v131, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v46, v209, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v41, v117, v22, v96
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v125, v181, v43
	v_mul_f32_e32 v133, v183, v43
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v110, v121, v24, v92
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v89, v27, s2
	v_cndmask_b32_e64 v89, v96, v41, s2
	v_cndmask_b32_e64 v96, v91, v111, s2
	v_cndmask_b32_e64 v112, v50, v130, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v91, v208, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v126, v134, v9, v79
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v130, v237, v25
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v128, v135, v2, v48
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v129, v182, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v132, v132, v43
	v_dual_mul_f32 v136, v157, v43 :: v_dual_mul_f32 v93, v204, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v137, v184, v43 :: v_dual_mul_f32 v134, v195, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v43, v140, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v85, v92, v110, s2
	v_cndmask_b32_e64 v111, v79, v126, s2
	v_cndmask_b32_e64 v79, v48, v128, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v92, v207, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v117, v125, v18, v88
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v128, v206, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v125, v133, v10, v80
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v127, v136, v1, v47
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v136, v219, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v3, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v95, v95, v42, s2
	v_cndmask_b32_e64 v110, v80, v125, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v125, v226, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v123, v132, v7, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v132, v44, v29, s2
	v_cndmask_b32_e64 v88, v88, v117, s2
	v_cndmask_b32_e64 v80, v47, v127, s2
	v_cndmask_b32_e64 v117, v45, v43, s2
	v_cndmask_b32_e64 v82, v49, v123, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[47:50], v185 offset:34816
	ds_load_b128 v[41:44], v185 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v94, v26, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v140, v222, v25 :: v_dual_lshlrev_b32 v75, 16, v239
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v45, v210, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v126, v235, v25
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v121, v129, v20, v84
	v_fma_f32 v129, v137, v12, v76
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v123, v223, v25
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v94, v198, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v127, v227, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v84, v84, v121, s2
	v_cndmask_b32_e64 v76, v76, v129, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v121, v231, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v129, v203, v25 :: v_dual_mul_f32 v144, v220, v75
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v131, v232, v25 :: v_dual_mul_f32 v142, v211, v75
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v133, v199, v25 :: v_dual_mul_f32 v146, v221, v75
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v135, v228, v25 :: v_dual_mov_b32 v208, v150
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v137, v201, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v139, v229, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v141, v212, v75
	ds_load_b128 v[25:28], v185 offset:35344
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v46, v46, v47, v30
	v_fma_f32 v45, v45, v48, v29
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v90, v90, v41, v38
	v_fma_f32 v87, v87, v42, v37
	v_fma_f32 v147, v92, v43, v40
	v_fma_f32 v148, v91, v44, v39
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v91, 16, v238
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v149, v94, v33, v77
	v_fma_f32 v150, v93, v34, v78
	v_fma_f32 v142, v142, v47, v101
	v_fma_f32 v141, v141, v48, v102
	v_mov_b32_e32 v209, v151
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v151, v29, v45, s3
	v_cndmask_b32_e64 v152, v30, v46, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v187, v91 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[91:94], v185 offset:34816
	ds_load_b128 v[45:48], v185 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v157, v37, v87, s3
	v_cndmask_b32_e64 v158, v38, v90, s3
	v_cndmask_b32_e64 v148, v39, v148, s3
	v_cndmask_b32_e64 v147, v40, v147, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[37:40], v185 offset:35328
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v86, v86, v49, v32
	v_fma_f32 v83, v83, v50, v31
	v_fma_f32 v129, v129, v35, v82
	v_fma_f32 v134, v134, v25, v80
	v_fma_f32 v133, v133, v26, v79
	v_fma_f32 v138, v138, v27, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v153, v31, v83, s3
	v_cndmask_b32_e64 v154, v32, v86, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[29:32], v185 offset:35344
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v87, v77, v149, s3
	v_cndmask_b32_e64 v83, v82, v129, s3
	v_cndmask_b32_e64 v82, v79, v133, s3
	v_cndmask_b32_e64 v77, v80, v134, s3
	v_cndmask_b32_e64 v79, v117, v138, s3
	v_cndmask_b32_e64 v80, v102, v141, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v102, v118, v92, v103
	v_fma_f32 v117, v120, v94, v100
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v118, v123, v45, v95
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v128, v128, v36, v81
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v123, v126, v38, v88
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v137, v137, v28, v113
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v120, v125, v47, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v100, v100, v117, s3
	v_cndmask_b32_e64 v90, v78, v150, s3
	v_cndmask_b32_e64 v117, v88, v123, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v145, v225, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v81, v128, s3
	v_cndmask_b32_e64 v81, v113, v137, s3
	v_cndmask_b32_e64 v78, v101, v142, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v101, v119, v91, v132
	v_fma_f32 v113, v121, v93, v99
	v_fma_f32 v121, v124, v48, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v95, v95, v118, s3
	v_cndmask_b32_e64 v96, v96, v120, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v120, 0xbfb8aa3b, v117
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v94, v145, v94, v105
	v_fma_f32 v119, v122, v46, v89
	v_fma_f32 v91, v144, v91, v106
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v101, v132, v101, s3
	v_cndmask_b32_e64 v99, v99, v113, s3
	v_cndmask_b32_e64 v113, v85, v121, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v143, v224, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v85, v105, v94, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v94, 0xbfb8aa3b, v95
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v129, v139, v32, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v103, v102, s3
	v_cndmask_b32_e64 v103, v89, v119, s3
	v_cndmask_b32_e64 v88, v106, v91, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v106, 0xbfb8aa3b, v113
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v92, v143, v92, v107
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v119, v76, v129, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v101
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v122, v127, v37, v108
	v_fma_f32 v124, v131, v39, v109
	v_fma_f32 v125, v130, v40, v84
	v_fma_f32 v126, v136, v29, v111
	v_fma_f32 v127, v135, v30, v110
	v_fma_f32 v93, v146, v93, v104
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v107, v92, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v91, 0xbfb8aa3b, v102 :: v_dual_mul_f32 v92, 0xbfb8aa3b, v99
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v76
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v128, v140, v31, v112
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v108, v108, v122, s3
	v_cndmask_b32_e64 v118, v84, v125, s3
	v_cndmask_b32_e64 v109, v109, v124, s3
	v_cndmask_b32_e64 v110, v110, v127, s3
	v_cndmask_b32_e64 v111, v111, v126, s3
	v_cndmask_b32_e64 v84, v104, v93, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v93, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v104, 0xbfb8aa3b, v103
	v_mul_f32_e32 v126, 0xbfb8aa3b, v119
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_cndmask_b32_e64 v76, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v92
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v112, v112, v128, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v105, 0xbfb8aa3b, v96 :: v_dual_mul_f32 v128, 0xbfb8aa3b, v89
	v_dual_mul_f32 v107, 0xbfb8aa3b, v108 :: v_dual_mul_f32 v130, 0xbfb8aa3b, v85
	v_dual_mul_f32 v122, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v123, 0xbfb8aa3b, v111
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v101
	v_mul_f32_e32 v124, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v93
	v_cndmask_b32_e64 v92, 0, 0x42800000, s4
	v_mul_f32_e32 v121, 0xbfb8aa3b, v109
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v104
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v94
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v106
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v120
	v_cndmask_b32_e64 v93, 0, 0x42800000, s1
	v_cndmask_b32_e64 v104, 0, 0x42800000, s5
	v_mul_f32_e32 v125, 0xbfb8aa3b, v112
	v_cndmask_b32_e64 v94, 0, 0x42800000, s6
	v_cndmask_b32_e64 v106, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v105
	v_cndmask_b32_e64 v120, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v107
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v122
	v_dual_fmac_f32 v91, 0xbfb8aa3b, v102 :: v_dual_fmac_f32 v92, 0xbfb8aa3b, v99
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v121
	v_exp_f32_e32 v76, v76
	v_dual_mul_f32 v127, 0xbfb8aa3b, v88 :: v_dual_fmac_f32 v94, 0xbfb8aa3b, v95
	v_dual_mul_f32 v129, 0xbfb8aa3b, v84 :: v_dual_fmac_f32 v106, 0xbfb8aa3b, v113
	v_cndmask_b32_e64 v105, 0, 0x42800000, s8
	v_cndmask_b32_e64 v107, 0, 0x42800000, s10
	v_cndmask_b32_e64 v122, 0, 0x42800000, s11
	v_cndmask_b32_e64 v121, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v124
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v123
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v126
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v128
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v93, 0xbfb8aa3b, v100 :: v_dual_fmac_f32 v122, 0xbfb8aa3b, v118
	v_fmac_f32_e32 v104, 0xbfb8aa3b, v103
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v125
	v_fmac_f32_e32 v120, 0xbfb8aa3b, v117
	v_exp_f32_e32 v91, v91
	v_cndmask_b32_e64 v124, 0, 0x42800000, s13
	v_cndmask_b32_e64 v123, 0, 0x42800000, s14
	v_cndmask_b32_e64 v126, 0, 0x42800000, s15
	v_cndmask_b32_e64 v125, 0, 0x42800000, s16
	v_cndmask_b32_e64 v128, 0, 0x42800000, s17
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v127
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v130
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v105, 0xbfb8aa3b, v96 :: v_dual_fmac_f32 v124, 0xbfb8aa3b, v110
	v_dual_fmac_f32 v107, 0xbfb8aa3b, v108 :: v_dual_fmac_f32 v126, 0xbfb8aa3b, v119
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v106, v106
	v_ldexp_f32 v76, v76, v132
	v_fmac_f32_e32 v121, 0xbfb8aa3b, v109
	v_cndmask_b32_e64 v127, 0, 0x42800000, s18
	v_cndmask_b32_e64 v130, 0, 0x42800000, s19
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v129
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s7
	v_dual_fmac_f32 v123, 0xbfb8aa3b, v111 :: v_dual_fmac_f32 v128, 0xbfb8aa3b, v89
	v_dual_fmac_f32 v125, 0xbfb8aa3b, v112 :: v_dual_fmac_f32 v130, 0xbfb8aa3b, v85
	v_exp_f32_e32 v104, v104
	v_exp_f32_e32 v105, v105
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v107, v107
	v_exp_f32_e32 v122, v122
	v_ldexp_f32 v91, v91, v131
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v121, v121
	v_cndmask_b32_e64 v129, 0, 0x42800000, s20
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
	v_ldexp_f32 v93, v93, v133
	v_ldexp_f32 v92, v92, v134
	v_ldexp_f32 v94, v94, v136
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v88
	v_ldexp_f32 v106, v106, v137
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v91, 1.0, v91 :: v_dual_add_f32 v92, 1.0, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v144, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, s17
	v_dual_fmac_f32 v129, 0xbfb8aa3b, v84 :: v_dual_add_f32 v106, 1.0, v106
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v130, v130
	v_ldexp_f32 v104, v104, v135
	v_ldexp_f32 v105, v105, v138
	v_ldexp_f32 v120, v120, v139
	v_ldexp_f32 v107, v107, v140
	v_ldexp_f32 v122, v122, v141
	v_ldexp_f32 v121, v121, v142
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v93, 1.0, v93 :: v_dual_add_f32 v104, 1.0, v104
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v127, v127
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v131, null, v91, v91, v102
	v_div_scale_f32 v133, null, v76, v76, v101
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, s19
	v_exp_f32_e32 v129, v129
	v_ldexp_f32 v124, v124, v143
	v_ldexp_f32 v123, v123, v144
	v_ldexp_f32 v125, v125, v146
	v_ldexp_f32 v128, v128, v149
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v105, 1.0, v105 :: v_dual_add_f32 v120, 1.0, v120
	v_dual_add_f32 v107, 1.0, v107 :: v_dual_add_f32 v122, 1.0, v122
	v_dual_add_f32 v121, 1.0, v121 :: v_dual_add_f32 v124, 1.0, v124
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v135, null, v93, v93, v100
	v_div_scale_f32 v137, null, v92, v92, v99
	v_div_scale_f32 v141, null, v94, v94, v95
	v_div_scale_f32 v143, null, v106, v106, v113
	v_rcp_f32_e32 v177, v131
	v_rcp_f32_e32 v178, v133
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s20
	v_ldexp_f32 v126, v126, v145
	v_ldexp_f32 v127, v127, v150
	v_ldexp_f32 v130, v130, v159
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v123, 1.0, v123
	v_dual_add_f32 v125, 1.0, v125 :: v_dual_add_f32 v128, 1.0, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v139, null, v104, v104, v103
	v_div_scale_f32 v145, null, v105, v105, v96
	v_div_scale_f32 v149, null, v120, v120, v117
	v_div_scale_f32 v161, null, v122, v122, v118
	v_div_scale_f32 v163, null, v121, v121, v109
	v_rcp_f32_e32 v179, v135
	v_rcp_f32_e32 v180, v137
	v_rcp_f32_e32 v182, v141
	v_rcp_f32_e32 v183, v143
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v129, v129, v160
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v126, 1.0, v126 :: v_dual_add_f32 v127, 1.0, v127
	v_add_f32_e32 v130, 1.0, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v159, null, v107, v107, v108
	v_div_scale_f32 v164, null, v124, v124, v110
	v_div_scale_f32 v170, null, v123, v123, v111
	v_div_scale_f32 v173, null, v128, v128, v89
	v_rcp_f32_e32 v181, v139
	v_rcp_f32_e32 v184, v145
	v_rcp_f32_e32 v185, v149
	v_rcp_f32_e32 v188, v161
	v_rcp_f32_e32 v189, v163
	v_fma_f32 v200, -v131, v177, 1.0
	v_fma_f32 v201, -v133, v178, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v129, 1.0, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v172, null, v125, v125, v112
	v_div_scale_f32 v175, null, v130, v130, v85
	v_rcp_f32_e32 v187, v159
	v_rcp_f32_e32 v190, v164
	v_rcp_f32_e32 v191, v170
	v_rcp_f32_e32 v196, v173
	v_fma_f32 v202, -v135, v179, 1.0
	v_fma_f32 v203, -v137, v180, 1.0
	v_fmac_f32_e32 v177, v200, v177
	v_fma_f32 v200, -v141, v182, 1.0
	v_fmac_f32_e32 v178, v201, v178
	v_fma_f32 v201, -v143, v183, 1.0
	v_div_scale_f32 v171, null, v126, v126, v119
	v_rcp_f32_e32 v195, v172
	v_rcp_f32_e32 v198, v175
	v_fma_f32 v204, -v139, v181, 1.0
	v_dual_fmac_f32 v179, v202, v179 :: v_dual_fmac_f32 v182, v200, v182
	v_fma_f32 v202, -v145, v184, 1.0
	v_fmac_f32_e32 v180, v203, v180
	v_fma_f32 v203, -v149, v185, 1.0
	v_fma_f32 v200, -v161, v188, 1.0
	v_fmac_f32_e32 v183, v201, v183
	v_fma_f32 v201, -v163, v189, 1.0
	v_div_scale_f32 v134, s6, v101, v76, v101
	v_div_scale_f32 v174, null, v127, v127, v88
	v_rcp_f32_e32 v194, v171
	v_dual_fmac_f32 v181, v204, v181 :: v_dual_fmac_f32 v184, v202, v184
	v_fma_f32 v204, -v159, v187, 1.0
	v_fma_f32 v202, -v164, v190, 1.0
	v_fmac_f32_e32 v185, v203, v185
	v_fma_f32 v203, -v170, v191, 1.0
	v_fmac_f32_e32 v189, v201, v189
	v_fma_f32 v201, -v173, v196, 1.0
	v_div_scale_f32 v132, vcc_lo, v102, v91, v102
	v_div_scale_f32 v136, s7, v100, v93, v100
	v_div_scale_f32 v176, null, v129, v129, v84
	v_rcp_f32_e32 v197, v174
	v_dual_fmac_f32 v187, v204, v187 :: v_dual_fmac_f32 v196, v201, v196
	v_fmac_f32_e32 v188, v200, v188
	v_fma_f32 v200, -v172, v195, 1.0
	v_fmac_f32_e32 v191, v203, v191
	v_fma_f32 v203, -v175, v198, 1.0
	v_mul_f32_e32 v201, v134, v178
	v_rcp_f32_e32 v199, v176
	v_fmac_f32_e32 v195, v200, v195
	v_div_scale_f32 v144, s5, v113, v106, v113
	v_fmac_f32_e32 v198, v203, v198
	v_fma_f32 v203, -v133, v201, v134
	v_fma_f32 v204, -v171, v194, 1.0
	v_fmac_f32_e32 v190, v202, v190
	v_fma_f32 v202, -v174, v197, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v200, v132, v177 :: v_dual_fmac_f32 v201, v203, v178
	v_fmac_f32_e32 v194, v204, v194
	v_fma_f32 v204, -v176, v199, 1.0
	v_div_scale_f32 v138, s8, v99, v92, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v133, -v133, v201, v134
	v_dual_mul_f32 v134, v136, v179 :: v_dual_fmac_f32 v197, v202, v197
	v_fma_f32 v202, -v131, v200, v132
	v_fmac_f32_e32 v199, v204, v199
	v_div_scale_f32 v140, s9, v103, v104, v103
	v_div_scale_f32 v146, s4, v96, v105, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v200, v202, v177
	v_div_scale_f32 v160, s0, v108, v107, v108
	v_div_scale_f32 v142, s10, v95, v94, v95
	v_fma_f32 v131, -v131, v200, v132
	v_div_scale_f32 v150, s1, v117, v120, v117
	v_div_scale_f32 v202, s12, v109, v121, v109
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v131, v131, v177, v200
	v_fma_f32 v200, -v135, v134, v136
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v177, v138, v180
	v_div_fmas_f32 v133, v133, v178, v201
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v134, v200, v179
	v_div_fixup_f32 v91, v131, v91, v102
	v_fma_f32 v178, -v137, v177, v138
	v_mul_f32_e32 v102, v146, v184
	v_div_scale_f32 v201, s6, v119, v126, v119
	v_fma_f32 v135, -v135, v134, v136
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v177, v178, v180
	v_div_fixup_f32 v101, v133, v76, v101
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v168, v168, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v136, s17, v88, v127, v88
	v_div_fmas_f32 v134, v135, v179, v134
	v_mul_f32_e32 v135, v140, v181
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v203, s13, v110, v124, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v93, v134, v93, v100
	v_fma_f32 v131, -v139, v135, v140
	v_fma_f32 v134, -v145, v102, v146
	v_div_scale_f32 v204, s11, v118, v122, v118
	v_div_scale_f32 v132, s14, v111, v123, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v135, v131, v181 :: v_dual_fmac_f32 v102, v134, v184
	v_div_scale_f32 v200, s15, v112, v125, v112
	v_mul_f32_e32 v133, v204, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v139, v135, v140
	v_mul_f32_e32 v140, v201, v194
	v_fma_f32 v137, -v137, v177, v138
	v_dual_mul_f32 v138, v144, v183 :: v_dual_mul_f32 v205, v202, v189
	v_div_scale_f32 v178, s16, v89, v128, v89
	v_div_fmas_f32 v137, v137, v180, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v100, -v143, v138, v144
	v_dual_mul_f32 v179, v142, v182 :: v_dual_mul_f32 v180, v160, v187
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v134, -v161, v133, v204
	v_fmac_f32_e32 v138, v100, v183
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v131, -v141, v179, v142
	v_div_fmas_f32 v135, v76, v181, v135
	v_fma_f32 v100, -v159, v180, v160
	v_mul_f32_e32 v177, v150, v185
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v179, v131, v182
	v_mul_f32_e32 v131, v132, v191
	v_dual_fmac_f32 v180, v100, v187 :: v_dual_fmac_f32 v133, v134, v188
	v_fma_f32 v143, -v143, v138, v144
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v76, -v141, v179, v142
	v_mul_f32_e32 v141, v178, v196
	v_fma_f32 v134, -v170, v131, v132
	v_fma_f32 v145, -v145, v102, v146
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v146.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v142, v76, v182, v179
	v_fma_f32 v76, -v149, v177, v150
	v_mul_f32_e32 v179, v136, v197
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v159, -v159, v180, v160
	v_div_fixup_f32 v94, v142, v94, v95
	v_fmac_f32_e32 v177, v76, v185
	v_fma_f32 v76, -v163, v205, v202
	v_mul_f32_e32 v181, v200, v195
	v_fma_f32 v161, -v161, v133, v204
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v94, v158, v94
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v149, -v149, v177, v150
	v_fmac_f32_e32 v205, v76, v189
	v_fma_f32 v76, -v171, v140, v201
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v204.h, v116.l
	v_mov_b16_e64 v217.l, v94.h
	v_mov_b16_e64 v182.h, v116.l
	v_cmp_o_f32_e64 s9, v94, v94
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v140, v76, v194
	v_fma_f32 v76, -v174, v179, v136
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v150.h, v116.l
	v_mov_b16_e64 v160.h, v116.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v50, v168, v50, v98
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v171, -v171, v140, v201
	v_fmac_f32_e32 v179, v76, v197
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v76, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v139, v203, v190
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v98, v50, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v144.h, v116.l
	v_mov_b16_e64 v201.h, v116.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v206, v76, v116
	scratch_load_b32 v76, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v100, -v164, v139, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v139, v100, v190
	v_fma_f32 v100, -v172, v181, v200
	v_fma_f32 v164, -v164, v139, v203
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v181, v100, v195
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v100.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v131, v134, v191
	v_fma_f32 v134, -v173, v141, v178
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v203.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v172, -v172, v181, v200
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v200, v206, v22, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v141, v134, v196
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v134.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v74, v200, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v173, v141, v178
	v_div_scale_f32 v173, s7, v85, v130, v85
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v207, v76, v116
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v76, s27, 4, v115
	s_mov_b32 s27, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v178, v207, v21, v73
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v151, v91
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v91, v137, v92, v99
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v92, v152, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v99, v143, v183, v138
	s_mov_b32 vcc_lo, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v214.l, v21.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v102, v145, v184, v102
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v213.l, v92.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v99, v99, v106, v113
	v_div_fmas_f32 v95, v149, v185, v177
	v_div_fixup_f32 v96, v102, v105, v96
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v102, 1, v214
	v_and_b32_e32 v105, 1, v213
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v99, v148, v99
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v95, v95, v120, v117
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v92, v92
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v92, v92, v105, 0x7fff
	v_mov_b16_e32 v100.l, v99.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v90, v90, v95
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v163, -v163, v205, v202
	v_div_fixup_f32 v101, v135, v104, v103
	v_div_fmas_f32 v103, v159, v187, v180
	s_mov_b32 vcc_lo, s11
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v21, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v104, v161, v188, v133
	s_mov_b32 vcc_lo, s12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v21, v21, v102, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v92.h, s1
	v_and_b32_e32 v92, 1, v100
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v132, -v170, v131, v132
	v_div_fmas_f32 v106, v163, v189, v205
	s_mov_b32 vcc_lo, s13
	v_div_fixup_f32 v103, v103, v107, v108
	v_div_fmas_f32 v108, v164, v190, v139
	s_mov_b32 vcc_lo, s14
	v_div_fixup_f32 v102, v104, v122, v118
	v_div_fmas_f32 v95, v132, v191, v131
	s_mov_b32 vcc_lo, s6
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v87, v87, v103
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v103, v171, v194, v140
	s_mov_b32 vcc_lo, s15
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v86, v86, v102
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v102, v172, v195, v181
	s_mov_b32 vcc_lo, s16
	v_div_fixup_f32 v95, v95, v123, v111
	v_div_fmas_f32 v100, v22, v196, v141
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v170.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v105, v106, v121, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v96, v147, v96 :: v_dual_mul_f32 v95, v77, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v89, v100, v128, v89
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v167, v75
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v182.l, v90.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v83, v83, v105
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v204.l, v95.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v93, v153, v93
	v_mul_f32_e32 v80, v80, v89
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v102, v102, v125, v112
	s_mov_b32 vcc_lo, s17
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v134.l, v96.h
	v_mov_b16_e64 v216.l, v93.h
	v_mov_b16_e64 v170.l, v80.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v91, v154, v91
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v93, v93
	v_mov_b16_e64 v146.l, v86.h
	v_and_b32_e32 v107, 1, v216
	v_mov_b16_e64 v150.l, v83.h
	v_mov_b16_e64 v215.l, v91.h
	v_cmp_o_f32_e64 s5, v91, v91
	v_cmp_o_f32_e64 s10, v99, v99
	v_add3_u32 v93, v93, v107, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v107, v108, v124, v110
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v104, 1, v215
	v_and_b32_e32 v108, 1, v217
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s4
	v_cmp_o_f32_e64 s4, v90, v90
	v_cndmask_b16 v22.h, 0x7fff, v93.h, s0
	v_add3_u32 v91, v91, v104, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v104, v82, v107
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v136, -v174, v179, v136
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v94, v94, v108, 0x7fff
	v_and_b32_e32 v93, 1, v134
	v_cndmask_b16 v22.l, 0x7fff, v91.h, s5
	v_and_b32_e32 v91, 1, v182
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v82, v136, v197, v179
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v160.l, v104.h
	v_cndmask_b16 v77.l, 0x7fff, v94.h, s9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v94, v79, v102
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v92, v99, v92, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v82, v82, v127, v88
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v88, 1, v146
	v_add3_u32 v90, v90, v91, 0x7fff
	v_and_b32_e32 v91, 1, v150
	v_and_b32_e32 v89, 1, v160
	v_mov_b16_e64 v203.l, v94.h
	v_cmp_o_f32_e64 s6, v96, v96
	v_cmp_o_f32_e64 s0, v83, v83
	v_add3_u32 v93, v96, v93, 0x7fff
	v_cmp_o_f32_e64 s5, v104, v104
	v_cndmask_b16 v79.h, 0x7fff, v92.h, s10
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v92, v78, v82
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v78, v86, v88, 0x7fff
	v_add3_u32 v83, v83, v91, 0x7fff
	v_add3_u32 v88, v104, v89, 0x7fff
	v_and_b32_e32 v89, 1, v203
	v_cndmask_b16 v79.l, 0x7fff, v93.h, s6
	v_cmp_o_f32_e64 s6, v94, v94
	v_cndmask_b16 v82.h, 0x7fff, v90.h, s4
	v_cndmask_b16 v78.l, 0x7fff, v83.h, s0
	v_and_b32_e32 v90, 1, v170
	v_cndmask_b16 v83.h, 0x7fff, v88.h, s5
	v_add3_u32 v88, v94, v89, 0x7fff
	v_mov_b16_e64 v144.l, v87.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v103, v103, v126, v119
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v80, v80
	v_add3_u32 v89, v80, v90, 0x7fff
	v_cndmask_b16 v80.l, 0x7fff, v88.h, s6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v88, s0, v84, v129, v84
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v101, v157, v101
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v99, 1, v144
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v81, v81, v103
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v90, v88, v199
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v202.h, v116.l
	v_mov_b16_e64 v218.l, v101.h
	v_cmp_o_f32_e64 s1, v87, v87
	v_add3_u32 v87, v87, v99, 0x7fff
	v_mov_b16_e64 v202.l, v81.h
	v_cmp_o_f32_e64 s8, v101, v101
	v_and_b32_e32 v106, 1, v218
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_and_b32_e32 v86, 1, v204
	v_cndmask_b16 v82.l, 0x7fff, v87.h, s1
	v_and_b32_e32 v87, 1, v202
	v_add3_u32 v101, v101, v106, 0x7fff
	v_mov_b16_e64 v201.l, v92.h
	v_cmp_o_f32_e64 s9, v81, v81
	v_add3_u32 v86, v95, v86, 0x7fff
	v_add3_u32 v81, v81, v87, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v101.h, s8
	v_cmp_o_f32_e64 s8, v95, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v174, v173, v198 :: v_dual_and_b32 v87, 1, v201
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v78.h, 0x7fff, v78.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v83.l, 0x7fff, v86.h, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v86, v92, v87, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v87, v193, v75
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v80.h, 0x7fff, v81.h, s9
	v_cndmask_b16 v81.h, 0x7fff, v89.h, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v178, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v89, v192, v75
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v46, v87, v46, v74
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v87, -v175, v174, v173
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v49, v167, v49, v97
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v92, v92
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v45, v89, v45, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v74, v46, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v74, -v176, v90, v88
	v_fmac_f32_e32 v174, v87, v198
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v97, v49, s3
	v_cndmask_b32_e64 v73, v73, v45, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v81.l, 0x7fff, v86.h, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v90, v74, v199
	v_fma_f32 v87, -v175, v174, v173
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v86.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v73
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v91, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v88, -v176, v90, v88
	v_div_fmas_f32 v87, v87, v198, v174
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v88, v88, v199, v90
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v90, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v85, v87, v130, v85
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v84, v88, v129, v84
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v50, v50, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v49, v49, v84
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v84.h, v116.l
	v_mov_b16_e32 v84.l, v50.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v74, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_mov_b16_e32 v86.l, v49.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v74, v74, v85
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v85, 1, v86
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v86, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v90, v90, v116
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v48, v70, v48, v24
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v48, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v86, v86, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v14, v86, v14, v72
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v72, v14, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v90, v90, v116
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v88, v88, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v90, v23, v69
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v13, v88, v13, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v69, v23, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v69, v169, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v71, v13, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v71, v155, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v47, v69, v47, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v24
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v71, v42, v14
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v71, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v47, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v42, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v46
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v45, v45, v87
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v87, 1.0, v45
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v84, null, v87, v87, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v50, v45, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v50, 1.0, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v74, v84
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v89, null, v50, v50, v73
	v_div_scale_f32 v72, vcc_lo, v46, v87, v46
	v_div_scale_f32 v70, s0, v73, v50, v73
	v_rcp_f32_e32 v86, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v84, v74, 1.0
	v_fmac_f32_e32 v74, v88, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v89, v86, 1.0
	v_mul_f32_e32 v92, v72, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v88, v86
	v_fma_f32 v48, -v84, v92, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v88, v70, v86
	v_fmac_f32_e32 v92, v48, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v89, v88, v70
	v_fma_f32 v42, -v84, v92, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v88, v48, v86
	v_div_fmas_f32 v42, v42, v74, v92
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v69, -v89, v88, v70
	v_div_fixup_f32 v42, v42, v87, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v69, v69, v86, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v14, v42
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v69, v50, v73
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:52
	scratch_load_b32 v69, off, off offset:48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v42, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.h, v116.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v71, v71, v75 :: v_dual_mul_f32 v50, v50, v116
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v69, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v85, v49, v85, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v50, v16, v68
	v_fma_f32 v15, v69, v15, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v45.l, 0x7fff, v85.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v67, v15, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v67, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v91, v91, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v41, v91, v41, v13
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v13, v41, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v46, v13, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v14.h
	v_mov_b16_e32 v13.h, v116.l
	v_mov_b16_e32 v48.l, v46.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v13, 1, v13
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v13, v14, v13, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v68, v16, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v48, v46, v48, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s0
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v71, v44, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v46, v46
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v46, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v44, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.l, 0x7fff, v48.h, s0
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v67, v67, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v18, v67, v18, v66
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v67, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v66, v18, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v66, v166, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v47
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v38, v66, v38, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v38, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v41, v47, v41
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v44, 0xbfb8aa3b, v18 :: v_dual_add_f32 v41, 1.0, v41
	v_ldexp_f32 v42, v42, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v16, v16, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v41, v41, v24
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, vcc_lo, v24, v41, v24
	v_rcp_f32_e32 v49, v47
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v16, v43, v15
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, null, v42, v42, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v44, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v46, v46, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v16, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v50, v70
	v_fma_f32 v69, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v19, v46, v19, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v69, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v61, v19, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
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
	v_mul_f32_e32 v67, v67, v116
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v17
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v38, v42, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v24, v37
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v44, v44, v116 :: v_dual_mul_f32 v15, v15, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v14.h
	v_mov_b16_e32 v23.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v20, v44, v20, v64
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
	v_mov_b16_e32 v37.h, v116.l
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v16, v16, v18
	v_div_scale_f32 v47, vcc_lo, v18, v16, v18
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v38, v41
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v24, v24, v17
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v42, v42, v116
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v5, v42, v5, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v62, v5, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v116
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v43, v42, 1.0
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v14, v6, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v41, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s1, v17, v24, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v63, v6, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v38, v14, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v64, v20, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v20, v162, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v46, v47, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v20, v20, v40, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v40, off, off offset:112 ; 4-byte Folded Reload
	v_mul_f32_e32 v44, v44, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v20, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v20, v156, v75
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v20, v20, v39, v19
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v41, v46, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v20, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v39, v38
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v44, v34, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v20, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v41, v46, v47
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v38, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v20, v16, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v19
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v39
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v16, v39, v18
	v_mul_f32_e32 v49, 0xbfb8aa3b, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v6.h
	v_mov_b16_e32 v18.h, v116.l
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v49
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s4
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v18, v6, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v40, v75
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v33, v40, v33, v5
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v40, v48, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.l, v15.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v43, v40, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v40, v34, v42 :: v_dual_and_b32 v37, 1, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v37, v15, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v43, v40, v48
	v_div_fmas_f32 v38, v38, v42, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:104
	scratch_load_b32 v39, off, off offset:16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v38, v24, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.l, 0x7fff, v37.h, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v37, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v5.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v14 :: v_dual_and_b32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v49
	v_ldexp_f32 v33, v34, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v15, 1.0, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v16, v16, v19
	v_div_scale_f32 v17, null, v15, v15, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v34, v33
	v_rcp_f32_e32 v24, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v17, v24, 1.0
	v_fmac_f32_e32 v24, v38, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s1, v19, v16, v19
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v5, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v42, v38, v34
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v40, v40, v75 :: v_dual_mul_f32 v39, v39, v116
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v37, v116
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v39, v7, v59
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v39, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v8, v37, v8, v60
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, vcc_lo, v14, v15, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v59, v6, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v7, v60, v8, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v8, v37, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v35, v40, v35, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v17, v8, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v35, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v8, v41, v24
	v_fma_f32 v17, -v17, v8, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v8, v17, v24, v8
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v24, v209, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v8, v8, v15, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v39, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v36, v39, v36, v7
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v33, v42, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v36, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v39, v34
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v14, v208, v75 :: v_dual_mul_f32 v7, v7, v8
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v35, v35, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v17, -v33, v42, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v9, v35, v9, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v17, v34, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v35, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v57, v9, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v17, v16, v19
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v19, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v5, v14, v29, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.h, v116.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v9, v5, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v36, v36, v116
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v10, v36, v10, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v58, v10, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v35, v35, v75
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v15, v24, v30, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v30, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v19, v19, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v10, v15, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v11, v19, v11, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v241, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v55, v11, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v16
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v9, 0, 0x42800000, s0
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v6.h
	v_and_b32_e32 v10, 1, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	v_exp_f32_e32 v15, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v10, v7, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v9, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v6, v14, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v15, v15, v20
	v_ldexp_f32 v9, v9, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v242, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v9, v9, v8
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v12, v14, v12, v56
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v14, off, off offset:8 ; 4-byte Folded Reload
	v_mul_f32_e32 v16, v16, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v56, v12, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v2, v16, v2, v54
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v16, v19, v31, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, s1, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v17, v17, v32, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v54, v2, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v11, v11, v16, s3
	v_cndmask_b32_e64 v12, v12, v17, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v17, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v15, v15, v5
	v_div_scale_f32 v32, s4, v5, v15, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v20, v17, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v17, v29, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v12 :: v_dual_mul_f32 v33, v31, v17
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v16, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v20, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v11 :: v_dual_fmac_f32 v33, v36, v17
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v20, v33, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v116
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v1, v14, v1, v53
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v14, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v53, v1, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v25, v35, v25, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v19, v14, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v25, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v14, v29, v14
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v30, v30, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v17, v20, v17, v33
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v16, v16, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v29, v32, v14
	s_mov_b32 vcc_lo, s4
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v26, v30, v26, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v17, v9, v8
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v9, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v19, v29, v32
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v26, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v29, v34, v14
	v_div_scale_f32 v34, null, v24, v24, v11
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v16, v16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v34
	v_fma_f32 v19, -v19, v29, v32
	v_rcp_f32_e32 v30, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v14, v19, v14, v29
	v_fma_f32 v20, -v34, v31, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v5, v14, v15, v5
	v_div_scale_f32 v14, vcc_lo, v12, v16, v12
	v_fma_f32 v19, -v35, v30, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v31, v20, v31
	v_div_scale_f32 v15, s0, v11, v24, v11
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v5, v15, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v34, v5, v15
	v_fmac_f32_e32 v5, v8, v31
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v8, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v30, v19, v30
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v19, off, off          ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v15, -v34, v5, v15
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v9, v9, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v17, v14, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v3, v9, v3, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v52, v3, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v8, v8, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v9, -v35, v17, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
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
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v15.l, v2.h
	v_mov_b16_e32 v15.h, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v5, v24, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v10.l, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v75
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v9, v9, v27, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v9, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e32 v9.h, v116.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v19, v19, v116
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v5, 1, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v6, 1, v9
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v4, v19, v4, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v5, v2, v5, 0x7fff
	v_add3_u32 v6, v1, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v51, v4, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s2, v3, v3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v8, v8, v28, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v14, v16, v12
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v8
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v3.h
	v_mov_b16_e32 v8.h, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v9.l, v4.h
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 1, v8
	v_and_b32_e32 v8, 1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v2, v4, v8, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_dual_mov_b32 v9, 0x5410 :: v_dual_cndmask_b32 v16, v45, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_mov_b32_e32 v11, 0x7632
	v_cndmask_b32_e32 v7, v82, v83, vcc_lo
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_cndmask_b32_e32 v17, v3, v18, vcc_lo
	v_dual_cndmask_b32 v3, v18, v3 :: v_dual_cndmask_b32 v18, v0, v10
	v_dual_cndmask_b32 v0, v10, v0 :: v_dual_cndmask_b32 v11, 0x3276, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 8, v9
	v_dual_cndmask_b32 v1, v77, v21 :: v_dual_cndmask_b32 v12, v78, v80
	v_cndmask_b32_e32 v2, v21, v77, vcc_lo
	v_lshl_or_b32 v11, v11, 8, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v9, 0x540054, v9
	v_dual_cndmask_b32 v5, v22, v79 :: v_dual_cndmask_b32 v14, v13, v81
	s_mov_b32 s0, 0x76543210
	v_and_b32_e32 v11, 0x760076, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v9, v9, 4, v9
	v_cndmask_b32_e32 v4, v79, v22, vcc_lo
	v_cndmask_b32_e32 v6, v83, v82, vcc_lo
	v_cndmask_b32_e32 v8, v80, v78, vcc_lo
	v_lshl_or_b32 v10, v11, 4, v11
	v_cndmask_b32_e32 v13, v81, v13, vcc_lo
	v_cndmask_b32_e32 v15, v23, v45, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 0x5040504, v9
	v_and_b32_e32 v20, 0x7060706, v10
	v_permlanex16_b32 v12, v13, s0, 0xfedcba98 op_sel:[1,0]
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
	v_add_lshl_u32 v16, v114, v115, 1
	v_add_lshl_u32 v17, v114, v76, 1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 196
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25440
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 196
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 196
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
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
