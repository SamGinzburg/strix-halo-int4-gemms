	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	v_and_b32_e32 v42, 0xf0, v0
	v_and_b32_e32 v15, 8, v0
	v_lshlrev_b32_e32 v14, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v9, 3, v42
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
	v_or_b32_e32 v2, s30, v9
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
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s6, 31
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_mul_lo_u32 v1, s34, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s18, s34, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v41, 15, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 374 34 is_stmt 0              ; generate_amdgcn.py:374:34
	s_mul_i32 s3, s33, s31
	.loc	1 378 34 is_stmt 1              ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v10, v41, 4, v1
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, s26, s18, v10
	v_add_nc_u32_e32 v2, s34, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_dual_cndmask_b32 v3, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[36:39], 0 offen
	buffer_load_b128 v[23:26], v2, s[36:39], 0 offen
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v2, s27, v1
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshlrev_b32_e32 v11, 1, v41
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v1, s27, 6, v1
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v20, v41, 9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v7, s34, v2
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v8, s27, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 378 26 is_stmt 1              ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v21, 0x90, v20
	v_add_nc_u32_e32 v63, 0, v20
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[27:30], v2, s[36:39], 0 offen
	buffer_load_b128 v[31:34], v7, s[36:39], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v7, s30, v11
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v13, s34, v8
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v22, 0x110, v20
	v_add_nc_u32_e32 v64, 0, v21
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_mul_lo_u32 v2, s31, v2
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v65, 0, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s6, 63
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add3_u32 v12, v2, v11, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s35, s30, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v7, s35, v9
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v2, s30, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s4, s31, v7
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v7, s34, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	s_clause 0x1
	buffer_load_b128 v[35:38], v1, s[36:39], 0 offen
	buffer_load_b128 v[43:46], v7, s[36:39], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v1, 0x80000000, v8, s4
	v_cndmask_b32_e64 v7, 0x80000000, v13, s4
	s_clause 0x1
	buffer_load_b128 v[47:50], v1, s[36:39], 0 offen
	buffer_load_b128 v[51:54], v7, s[36:39], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	v_bfe_i32 v2, v0, 6, 1
	v_and_b32_e32 v13, 4, v0
	buffer_load_u16 v61, v1, s[8:11], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v2, 0x90, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 0x17e, v1
	v_xor_b32_e32 v19, v2, v7
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v7, s35, v11
	v_lshlrev_b32_e32 v2, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v62, 0, v19
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v7
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v7, s35, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s6, 0x5f
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	buffer_load_u16 v66, v7, s[8:11], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(8)
	v_perm_b32 v7, v23, v3, 0x5010400
	v_perm_b32 v8, v23, v3, 0x7030602
	v_perm_b32 v16, v24, v4, 0x5010400
	v_perm_b32 v17, v24, v4, 0x7030602
	v_perm_b32 v18, v25, v5, 0x5010400
	v_perm_b32 v24, v26, v6, 0x5010400
	v_perm_b32 v23, v25, v5, 0x7030602
	v_perm_b32 v25, v26, v6, 0x7030602
	v_lshrrev_b32_e32 v26, 8, v7
	v_lshrrev_b32_e32 v40, 8, v8
	v_lshrrev_b32_e32 v56, 8, v16
	v_lshrrev_b32_e32 v58, 8, v17
	v_lshrrev_b32_e32 v67, 24, v18
	v_lshrrev_b32_e32 v70, 8, v24
	v_lshrrev_b32_e32 v71, 24, v24
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(6)
	v_perm_b32 v74, v31, v27, 0x5010400
	v_perm_b32 v75, v31, v27, 0x7030602
	v_perm_b32 v78, v33, v29, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v39, 24, v7
	v_lshrrev_b32_e32 v55, 24, v8
	v_lshrrev_b32_e32 v57, 24, v16
	v_lshrrev_b32_e32 v59, 24, v17
	v_lshrrev_b32_e32 v68, 8, v23
	v_lshrrev_b32_e32 v72, 8, v25
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v79, v33, v29, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v60, 8, v18
	v_lshrrev_b32_e32 v69, 24, v23
	v_lshrrev_b32_e32 v73, 24, v25
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v76, v32, v28, 0x5010400
	v_perm_b32 v80, v34, v30, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v3.l, 0xff, v7.l
	v_and_b16 v3.h, 0xff, v7.h
	v_and_b16 v4.l, 0xff, v8.l
	v_and_b16 v5.l, 0xff, v16.l
	v_and_b16 v6.l, 0xff, v17.l
	v_and_b16 v7.l, 0xff, v18.l
	v_and_b16 v7.h, 0xff, v18.h
	v_and_b16 v8.l, 0xff, v23.l
	v_and_b16 v16.l, 0xff, v24.l
	v_and_b16 v17.l, 0xff, v25.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v77, v32, v28, 0x7030602
	v_perm_b32 v81, v34, v30, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v18.l, 8, v26.l
	v_lshlrev_b16 v23.l, 8, v40.l
	v_lshlrev_b16 v24.l, 8, v56.l
	v_lshlrev_b16 v25.l, 8, v58.l
	v_lshlrev_b16 v26.h, 8, v67.l
	v_lshlrev_b16 v28.l, 8, v70.l
	v_lshlrev_b16 v28.h, 8, v71.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v56, 8, v74
	v_lshrrev_b32_e32 v58, 8, v75
	v_and_b16 v34.l, 0xff, v78.l
	v_lshrrev_b32_e32 v70, 8, v78
	v_lshrrev_b32_e32 v71, 24, v78
	v_and_b16 v34.h, 0xff, v78.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(4)
	v_perm_b32 v78, v43, v35, 0x5010400
	v_and_b16 v4.h, 0xff, v8.h
	v_and_b16 v5.h, 0xff, v16.h
	v_and_b16 v6.h, 0xff, v17.h
	v_and_b16 v8.h, 0xff, v23.h
	v_and_b16 v16.h, 0xff, v24.h
	v_and_b16 v17.h, 0xff, v25.h
	v_lshlrev_b16 v18.h, 8, v39.l
	v_lshlrev_b16 v23.h, 8, v55.l
	v_lshlrev_b16 v24.h, 8, v57.l
	v_lshlrev_b16 v25.h, 8, v59.l
	v_lshlrev_b16 v27.l, 8, v68.l
	v_lshlrev_b16 v29.l, 8, v72.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v57, 24, v74
	v_lshrrev_b32_e32 v59, 24, v75
	v_lshrrev_b32_e32 v72, 8, v79
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v26.l, 8, v60.l
	v_lshlrev_b16 v27.h, 8, v69.l
	v_lshlrev_b16 v29.h, 8, v73.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v60, 8, v76
	v_lshrrev_b32_e32 v73, 24, v79
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v43, v43, v35, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v30.l, 0xff, v74.l
	v_and_b16 v30.h, 0xff, v74.h
	v_lshrrev_b32_e32 v67, 24, v76
	v_lshrrev_b32_e32 v74, 8, v80
	s_waitcnt vmcnt(2)
	v_perm_b32 v83, v51, v47, 0x5010400
	v_and_b16 v31.l, 0xff, v75.l
	v_and_b16 v31.h, 0xff, v75.h
	v_and_b16 v32.l, 0xff, v76.l
	v_and_b16 v32.h, 0xff, v76.h
	v_and_b16 v33.l, 0xff, v77.l
	v_lshrrev_b32_e32 v68, 8, v77
	v_lshrrev_b32_e32 v69, 24, v77
	v_and_b16 v33.h, 0xff, v77.h
	v_and_b16 v39.l, 0xff, v79.l
	v_and_b16 v39.h, 0xff, v79.h
	v_and_b16 v40.l, 0xff, v80.l
	v_lshrrev_b32_e32 v75, 24, v80
	v_and_b16 v40.h, 0xff, v80.h
	v_and_b16 v55.l, 0xff, v81.l
	v_lshrrev_b32_e32 v76, 8, v81
	v_lshrrev_b32_e32 v77, 24, v81
	v_and_b16 v55.h, 0xff, v81.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v79, v44, v36, 0x5010400
	v_perm_b32 v44, v44, v36, 0x7030602
	v_perm_b32 v80, v45, v37, 0x5010400
	v_perm_b32 v45, v45, v37, 0x7030602
	v_perm_b32 v81, v46, v38, 0x5010400
	v_perm_b32 v82, v46, v38, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v51, v51, v47, 0x7030602
	v_perm_b32 v84, v52, v48, 0x5010400
	v_perm_b32 v52, v52, v48, 0x7030602
	v_perm_b32 v85, v53, v49, 0x5010400
	v_perm_b32 v53, v53, v49, 0x7030602
	v_perm_b32 v86, v54, v50, 0x5010400
	v_perm_b32 v87, v54, v50, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v3.l, v3.l, v18.l
	v_or_b16 v4.l, v4.l, v23.l
	v_or_b16 v7.h, v7.h, v26.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v18.l, 8, v56.l
	v_lshlrev_b16 v23.l, 8, v58.l
	v_lshlrev_b16 v26.h, 8, v71.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v56, 8, v78
	v_or_b16 v3.h, v3.h, v18.h
	v_or_b16 v4.h, v4.h, v23.h
	v_or_b16 v8.l, v8.l, v27.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v18.h, 8, v57.l
	v_lshlrev_b16 v23.h, 8, v59.l
	v_lshlrev_b16 v27.l, 8, v72.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v57, 24, v78
	v_or_b16 v5.l, v5.l, v24.l
	v_or_b16 v8.h, v8.h, v27.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v24.l, 8, v60.l
	v_lshlrev_b16 v27.h, 8, v73.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v58, 8, v43
	v_or_b16 v5.h, v5.h, v24.h
	v_or_b16 v16.l, v16.l, v28.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v24.h, 8, v67.l
	v_lshlrev_b16 v28.l, 8, v74.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v59, 24, v43
	v_and_b16 v35.l, 0xff, v78.l
	v_and_b16 v35.h, 0xff, v78.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v78, 8, v83
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v6.l, v6.l, v25.l
	v_or_b16 v6.h, v6.h, v25.h
	v_or_b16 v7.l, v7.l, v26.l
	v_or_b16 v16.h, v16.h, v28.h
	v_or_b16 v17.l, v17.l, v29.l
	v_or_b16 v17.h, v17.h, v29.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v25.l, 8, v68.l
	v_lshlrev_b16 v25.h, 8, v69.l
	v_lshlrev_b16 v26.l, 8, v70.l
	v_lshlrev_b16 v28.h, 8, v75.l
	v_lshlrev_b16 v29.l, 8, v76.l
	v_lshlrev_b16 v29.h, 8, v77.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v36.l, 0xff, v43.l
	v_and_b16 v36.h, 0xff, v43.h
	v_and_b16 v37.l, 0xff, v79.l
	v_lshrrev_b32_e32 v60, 8, v79
	v_lshrrev_b32_e32 v67, 24, v79
	v_and_b16 v37.h, 0xff, v79.h
	v_and_b16 v38.l, 0xff, v44.l
	v_lshrrev_b32_e32 v68, 8, v44
	v_lshrrev_b32_e32 v69, 24, v44
	v_and_b16 v38.h, 0xff, v44.h
	v_and_b16 v43.l, 0xff, v80.l
	v_lshrrev_b32_e32 v70, 8, v80
	v_lshrrev_b32_e32 v71, 24, v80
	v_and_b16 v43.h, 0xff, v80.h
	v_and_b16 v44.l, 0xff, v45.l
	v_lshrrev_b32_e32 v72, 8, v45
	v_lshrrev_b32_e32 v73, 24, v45
	v_and_b16 v44.h, 0xff, v45.h
	v_and_b16 v45.l, 0xff, v81.l
	v_lshrrev_b32_e32 v74, 8, v81
	v_lshrrev_b32_e32 v75, 24, v81
	v_and_b16 v45.h, 0xff, v81.h
	v_and_b16 v46.l, 0xff, v82.l
	v_lshrrev_b32_e32 v76, 8, v82
	v_lshrrev_b32_e32 v77, 24, v82
	v_and_b16 v46.h, 0xff, v82.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v47.l, 0xff, v83.l
	v_lshrrev_b32_e32 v79, 24, v83
	v_and_b16 v47.h, 0xff, v83.h
	v_and_b16 v48.l, 0xff, v51.l
	v_lshrrev_b32_e32 v80, 8, v51
	v_lshrrev_b32_e32 v81, 24, v51
	v_and_b16 v48.h, 0xff, v51.h
	v_and_b16 v49.l, 0xff, v84.l
	v_lshrrev_b32_e32 v82, 8, v84
	v_lshrrev_b32_e32 v83, 24, v84
	v_and_b16 v49.h, 0xff, v84.h
	v_and_b16 v50.l, 0xff, v52.l
	v_lshrrev_b32_e32 v84, 8, v52
	v_lshrrev_b32_e32 v88, 24, v52
	v_and_b16 v50.h, 0xff, v52.h
	v_and_b16 v51.l, 0xff, v85.l
	v_lshrrev_b32_e32 v89, 8, v85
	v_lshrrev_b32_e32 v90, 24, v85
	v_and_b16 v51.h, 0xff, v85.h
	v_and_b16 v52.l, 0xff, v53.l
	v_lshrrev_b32_e32 v85, 8, v53
	v_lshrrev_b32_e32 v91, 24, v53
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.l, 0xff, v86.l
	v_lshrrev_b32_e32 v92, 8, v86
	v_lshrrev_b32_e32 v93, 24, v86
	v_and_b16 v53.h, 0xff, v86.h
	v_lshrrev_b32_e32 v86, 8, v87
	v_lshrrev_b32_e32 v94, 24, v87
	v_or_b16 v18.l, v30.l, v18.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v3
	ds_store_b16_d16_hi v63, v3 offset:32
	ds_store_b16 v63, v4 offset:64
	ds_store_b16_d16_hi v63, v4 offset:96
	ds_store_b16_d16_hi v64, v5 offset:32
	ds_store_b16 v64, v6 offset:64
	ds_store_b16_d16_hi v64, v6 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v3.h, v31.l, v23.l
	v_or_b16 v23.l, v34.h, v26.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v26.h, 8, v56.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v4.l, v31.h, v23.h
	v_or_b16 v23.h, v39.l, v27.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v27.l, 8, v57.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v4.h, v32.l, v24.l
	v_or_b16 v24.l, v39.h, v27.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v27.h, 8, v58.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v5.h, v32.h, v24.h
	v_or_b16 v24.h, v40.l, v28.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v28.l, 8, v59.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v3.l, v30.h, v18.h
	v_lshlrev_b16 v34.h, 8, v78.l
	v_and_b16 v54.l, 0xff, v87.l
	v_and_b16 v54.h, 0xff, v87.h
	v_or_b16 v6.l, v33.l, v25.l
	v_or_b16 v6.h, v33.h, v25.h
	v_or_b16 v18.h, v34.l, v26.l
	v_or_b16 v25.l, v40.h, v28.h
	v_or_b16 v25.h, v55.l, v29.l
	v_or_b16 v26.l, v55.h, v29.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v28.h, 8, v60.l
	v_lshlrev_b16 v29.l, 8, v67.l
	v_lshlrev_b16 v29.h, 8, v68.l
	v_lshlrev_b16 v30.l, 8, v69.l
	v_lshlrev_b16 v30.h, 8, v70.l
	v_lshlrev_b16 v31.l, 8, v71.l
	v_lshlrev_b16 v31.h, 8, v72.l
	v_lshlrev_b16 v32.l, 8, v73.l
	v_lshlrev_b16 v32.h, 8, v74.l
	v_lshlrev_b16 v33.l, 8, v75.l
	v_lshlrev_b16 v33.h, 8, v76.l
	v_lshlrev_b16 v34.l, 8, v77.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v39.l, 8, v79.l
	v_lshlrev_b16 v39.h, 8, v80.l
	v_lshlrev_b16 v40.l, 8, v81.l
	v_lshlrev_b16 v40.h, 8, v82.l
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
	ds_store_b16 v63, v18 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v64, v5
	ds_store_b16 v65, v7
	ds_store_b16_d16_hi v65, v7 offset:32
	ds_store_b16 v65, v8 offset:64
	ds_store_b16_d16_hi v65, v8 offset:96
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v62, v61 offset:32768
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v63, v3 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v16 offset:384
	ds_store_b16_d16_hi v63, v16 offset:416
	ds_store_b16 v63, v17 offset:448
	ds_store_b16_d16_hi v63, v17 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v63, v3 offset:16416
	ds_store_b16 v63, v4 offset:16480
	ds_store_b16_d16_hi v64, v4 offset:16384
	ds_store_b16_d16_hi v64, v5 offset:16416
	ds_store_b16 v64, v6 offset:16448
	ds_store_b16_d16_hi v64, v6 offset:16480
	ds_store_b16_d16_hi v65, v18 offset:16384
	ds_store_b16 v65, v23 offset:16416
	ds_store_b16_d16_hi v65, v23 offset:16448
	ds_store_b16 v65, v24 offset:16480
	ds_store_b16_d16_hi v63, v24 offset:16768
	ds_store_b16 v63, v25 offset:16800
	ds_store_b16_d16_hi v63, v25 offset:16832
	ds_store_b16 v63, v26 offset:16864
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v3.l, v35.l, v26.h
	v_or_b16 v3.h, v35.h, v27.l
	v_or_b16 v4.l, v36.l, v27.h
	v_or_b16 v4.h, v36.h, v28.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v18.l, v47.l, v34.h
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v5.l, v37.l, v28.h
	v_or_b16 v5.h, v37.h, v29.l
	v_or_b16 v6.l, v38.l, v29.h
	v_or_b16 v6.h, v38.h, v30.l
	v_or_b16 v7.l, v43.l, v30.h
	v_or_b16 v7.h, v43.h, v31.l
	v_or_b16 v8.l, v44.l, v31.h
	v_or_b16 v8.h, v44.h, v32.l
	v_or_b16 v16.l, v45.l, v32.h
	v_or_b16 v16.h, v45.h, v33.l
	v_or_b16 v17.l, v46.l, v33.h
	v_or_b16 v17.h, v46.h, v34.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v18.h, v47.h, v39.l
	v_or_b16 v23.l, v48.l, v39.h
	v_or_b16 v23.h, v48.h, v40.l
	v_or_b16 v24.l, v49.l, v40.h
	v_or_b16 v24.h, v49.h, v55.l
	v_or_b16 v25.l, v50.l, v55.h
	v_or_b16 v25.h, v50.h, v56.l
	v_or_b16 v26.l, v51.l, v56.h
	v_or_b16 v26.h, v51.h, v57.l
	v_or_b16 v27.l, v52.l, v57.h
	v_or_b16 v27.h, v52.h, v58.l
	v_or_b16 v28.l, v53.l, v58.h
	v_or_b16 v28.h, v53.h, v59.l
	v_or_b16 v29.l, v54.l, v59.h
	v_or_b16 v29.h, v54.h, v60.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v3 offset:8192
	ds_store_b16_d16_hi v63, v3 offset:8224
	ds_store_b16 v63, v4 offset:8256
	ds_store_b16_d16_hi v63, v4 offset:8288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v63, v18 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v64, v5 offset:8192
	ds_store_b16_d16_hi v64, v5 offset:8224
	ds_store_b16 v64, v6 offset:8256
	ds_store_b16_d16_hi v64, v6 offset:8288
	ds_store_b16 v65, v7 offset:8192
	ds_store_b16_d16_hi v65, v7 offset:8224
	ds_store_b16 v65, v8 offset:8256
	ds_store_b16_d16_hi v65, v8 offset:8288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v62, v66 offset:33280
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v63, v23 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v16 offset:8576
	ds_store_b16_d16_hi v63, v16 offset:8608
	ds_store_b16 v63, v17 offset:8640
	ds_store_b16_d16_hi v63, v17 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v63, v18 offset:24608
	ds_store_b16_d16_hi v63, v23 offset:24672
	ds_store_b16 v64, v24 offset:24576
	ds_store_b16_d16_hi v64, v24 offset:24608
	ds_store_b16 v64, v25 offset:24640
	ds_store_b16_d16_hi v64, v25 offset:24672
	ds_store_b16 v65, v26 offset:24576
	ds_store_b16_d16_hi v65, v26 offset:24608
	ds_store_b16 v65, v27 offset:24640
	ds_store_b16_d16_hi v65, v27 offset:24672
	ds_store_b16 v63, v28 offset:24960
	ds_store_b16_d16_hi v63, v28 offset:24992
	ds_store_b16 v63, v29 offset:25024
	ds_store_b16_d16_hi v63, v29 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_lshlrev_b32_e32 v25, 5, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v5, 0xe00, v2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_and_b32_e32 v4, 4, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v3, 8, v0
	s_mov_b32 s4, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_and_b32_e32 v23, 0x160, v25
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_or_b32 v24, 0x60, v25, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr23
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr24
.LBB0_3:                                ; %Flow221
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v5, s33, v41
	s_ashr_i32 s1, s5, 5
	v_or_b32_e32 v75, s26, v0
	v_lshlrev_b32_e32 v18, 2, v42
	v_and_b32_e32 v17, 28, v1
	v_mul_lo_u32 v76, v5, s1
	v_lshlrev_b32_e32 v16, 1, v42
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v2, 0xe00, v2
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 0x90, v1
	v_and_b32_e32 v3, 0x110, v3
	v_and_b32_e32 v23, 0x160, v14
	v_and_or_b32 v24, 0x60, v14, v2
	v_mov_b32_e32 v74, 0
	v_add_nc_u32_e32 v30, s27, v75
	v_xor_b32_e32 v2, v1, v3
	v_or_b32_e32 v26, v1, v23
	v_and_b32_e32 v1, 32, v14
	.loc	1 378 34 is_stmt 1              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v25, s34, v10
	v_add_nc_u32_e32 v32, 0, v16
	v_or_b32_e32 v27, v24, v2
	v_xor_b32_e32 v28, 16, v26
	v_add3_u32 v31, 0, v18, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v29, 16, v27
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v70, 0
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v31, v31, v17
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v43, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s48, s1, 3
	s_add_i32 s15, s35, 32
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s47, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x8200
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s48, s48, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 5
	s_mov_b32 s18, s30
	s_mov_b32 s30, s35
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s35, s15, s19
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s19, s18, 31
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v33, s35, v11
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s19, s19, 27
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v34, s35, v12
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s20, s35, s34
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s18, s18, s19
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v33
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s20, s20, s26
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s18, s18, 5
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	s_add_i32 s19, s20, s27
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s18, s1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v33, 0x80000000, v34, vcc_lo
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v34, v76, s18, 1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s18, s18, s34
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v35, v75, s18, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v36, s35, v9
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v40, s0, v28
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v37, s20, v10
	v_add_nc_u32_e32 v81, s20, v25
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v39, v35, s[40:43], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v35, s0, v26
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s31, v36
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v77, s16, v27
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v82, s19, v10
	v_add_nc_u32_e32 v83, s19, v25
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v78, s16, v29
	v_cndmask_b32_e64 v89, 0x80000000, v37, s0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[35:38], v35
	ds_load_b128 v[109:112], v40
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v40, 0x80000000, v81, s0
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v79, s14, v27
	v_add_nc_u32_e32 v80, s14, v29
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[85:88], v77
	ds_load_b128 v[101:104], v77 offset:4096
	ds_load_b128 v[113:116], v78
	ds_load_b128 v[117:120], v78 offset:4096
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[93:96], v79
	ds_load_b128 v[121:124], v79 offset:4096
	ds_load_b128 v[125:128], v80
	ds_load_b128 v[129:132], v80 offset:4096
	v_cndmask_b32_e64 v77, 0x80000000, v82, s0
	v_cndmask_b32_e64 v78, 0x80000000, v83, s0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[133:136], v89, s[36:39], 0 offen
	buffer_load_b128 v[137:140], v40, s[36:39], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v40, v34, s[4:7], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[141:144], v77, s[36:39], 0 offen
	buffer_load_b128 v[145:148], v78, s[36:39], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v84, v30, s18, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s47, 1
	s_mov_b32 s16, s46
	s_cmp_lt_i32 s18, 2
	s_mov_b32 s0, s45
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v79, 0x80000000, v84, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s47, s18, 0
	s_add_i32 s18, s17, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_lshl_b32 s19, s47, 9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_lshl_b32 s20, s47, 13
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_add_i32 s19, s19, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_add_i32 s46, s20, 0
	s_mov_b32 s14, s44
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_add_i32 s45, s19, 0x8000
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_add_i32 s44, s46, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s48
	s_mov_b32 s17, s18
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v34, 16, v39
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v31, v34 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v34, v79, s[40:43], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[35:38], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[85:92], v[93:96], v[35:38], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[93:100], v[101:104], v[35:38], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[113:116], v[109:112], v[77:84] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[85:92], v[125:128], v[109:112], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[121:124], v[35:38], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[93:100], v[117:120], v[109:112], v[93:100] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v35, v85
	v_cvt_f32_i32_e32 v36, v86
	v_cvt_f32_i32_e32 v37, v87
	v_cvt_f32_i32_e32 v38, v88
	v_cvt_f32_i32_e32 v85, v89
	v_cvt_f32_i32_e32 v86, v90
	v_cvt_f32_i32_e32 v87, v91
	v_cvt_f32_i32_e32 v88, v92
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v113, 16, v40
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v149, s19, v19
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v150, s46, v20
	v_add_nc_u32_e32 v152, s46, v22
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[101:108], v[129:132], v[109:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v109, v93
	v_cvt_f32_i32_e32 v110, v94
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v89, v137, v133, 0x5010400
	v_perm_b32 v90, v137, v133, 0x7030602
	v_perm_b32 v91, v138, v134, 0x5010400
	v_perm_b32 v92, v138, v134, 0x7030602
	v_perm_b32 v93, v139, v135, 0x5010400
	v_perm_b32 v94, v139, v135, 0x7030602
	v_perm_b32 v111, v140, v136, 0x5010400
	v_perm_b32 v112, v140, v136, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(1)
	v_perm_b32 v114, v145, v141, 0x5010400
	v_perm_b32 v115, v145, v141, 0x7030602
	v_perm_b32 v116, v146, v142, 0x5010400
	v_perm_b32 v117, v146, v142, 0x7030602
	v_perm_b32 v118, v147, v143, 0x5010400
	v_perm_b32 v119, v147, v143, 0x7030602
	v_perm_b32 v120, v148, v144, 0x5010400
	v_perm_b32 v121, v148, v144, 0x7030602
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v137, v113, v78
	v_mul_f32_e32 v138, v113, v77
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v139, v36, v113
	v_dual_mul_f32 v140, v35, v113 :: v_dual_mul_f32 v141, v113, v80
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v142, v113, v79 :: v_dual_mul_f32 v143, v38, v113
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v144, v37, v113
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v145, v113, v82
	v_mul_f32_e32 v146, v113, v81
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v147, v86, v113
	v_mul_f32_e32 v148, v85, v113
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v153, v113, v84
	v_dual_mul_f32 v154, v113, v83 :: v_dual_mul_f32 v155, v88, v113
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v156, v87, v113
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[35:38], v32 offset:33792
	ds_load_b128 v[77:80], v32 offset:33808
	ds_load_b128 v[81:84], v32 offset:34304
	ds_load_b128 v[85:88], v32 offset:34320
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v68, v138, v35 :: v_dual_add_nc_u32 v151, s46, v21
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v170, v113, v99
	v_mul_f32_e32 v157, v113, v110
	v_mul_f32_e32 v158, v113, v109
	v_dual_mul_f32 v161, v113, v96 :: v_dual_mul_f32 v164, v103, v113
	v_mul_f32_e32 v162, v113, v95
	v_dual_mul_f32 v165, v113, v98 :: v_dual_mul_f32 v172, v107, v113
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v167, v106, v113
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v169, v113, v100 :: v_dual_fmac_f32 v64, v142, v37
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v56, v154, v79
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v166, v113, v97
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v159, v102, v113 :: v_dual_fmac_f32 v50, v161, v84
	v_dual_mul_f32 v163, v104, v113 :: v_dual_fmac_f32 v48, v162, v83
	v_dual_mul_f32 v171, v108, v113 :: v_dual_fmac_f32 v44, v170, v87
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v69, v137, v36 :: v_dual_fmac_f32 v60, v146, v77
	v_dual_fmac_f32 v65, v141, v38 :: v_dual_fmac_f32 v52, v158, v81
	v_dual_fmac_f32 v61, v145, v78 :: v_dual_fmac_f32 v46, v166, v85
	v_fmac_f32_e32 v57, v153, v80
	v_fmac_f32_e32 v53, v157, v82
	v_fmac_f32_e32 v47, v165, v86
	v_fmac_f32_e32 v43, v169, v88
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v39.l, 0xff, v89.l
	v_lshrrev_b32_e32 v122, 8, v89
	v_lshrrev_b32_e32 v123, 24, v89
	v_and_b16 v39.h, 0xff, v89.h
	v_and_b16 v40.l, 0xff, v90.l
	v_lshrrev_b32_e32 v124, 8, v90
	v_lshrrev_b32_e32 v125, 24, v90
	v_and_b16 v40.h, 0xff, v90.h
	v_and_b16 v89.l, 0xff, v91.l
	v_lshrrev_b32_e32 v126, 8, v91
	v_lshrrev_b32_e32 v127, 24, v91
	v_and_b16 v89.h, 0xff, v91.h
	v_and_b16 v90.l, 0xff, v92.l
	v_lshrrev_b32_e32 v128, 8, v92
	v_lshrrev_b32_e32 v129, 24, v92
	v_and_b16 v90.h, 0xff, v92.h
	v_and_b16 v91.l, 0xff, v93.l
	v_lshrrev_b32_e32 v130, 8, v93
	v_lshrrev_b32_e32 v131, 24, v93
	v_and_b16 v91.h, 0xff, v93.h
	v_and_b16 v92.l, 0xff, v94.l
	v_lshrrev_b32_e32 v132, 8, v94
	v_lshrrev_b32_e32 v133, 24, v94
	v_and_b16 v92.h, 0xff, v94.h
	v_and_b16 v93.l, 0xff, v111.l
	v_lshrrev_b32_e32 v134, 8, v111
	v_lshrrev_b32_e32 v135, 24, v111
	v_and_b16 v93.h, 0xff, v111.h
	v_and_b16 v94.l, 0xff, v112.l
	v_lshrrev_b32_e32 v111, 8, v112
	v_lshrrev_b32_e32 v136, 24, v112
	v_and_b16 v94.h, 0xff, v112.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v95.l, 0xff, v114.l
	v_lshrrev_b32_e32 v112, 8, v114
	v_and_b16 v95.h, 0xff, v114.h
	v_and_b16 v96.l, 0xff, v115.l
	v_lshrrev_b32_e32 v173, 24, v115
	v_and_b16 v96.h, 0xff, v115.h
	v_and_b16 v97.l, 0xff, v116.l
	v_lshrrev_b32_e32 v174, 24, v116
	v_and_b16 v97.h, 0xff, v116.h
	v_and_b16 v98.l, 0xff, v117.l
	v_lshrrev_b32_e32 v175, 24, v117
	v_and_b16 v98.h, 0xff, v117.h
	v_and_b16 v99.l, 0xff, v118.l
	v_lshrrev_b32_e32 v176, 24, v118
	v_and_b16 v99.h, 0xff, v118.h
	v_and_b16 v100.l, 0xff, v119.l
	v_lshrrev_b32_e32 v177, 24, v119
	v_and_b16 v100.h, 0xff, v119.h
	v_lshrrev_b32_e32 v178, 24, v120
	v_lshrrev_b32_e32 v179, 24, v121
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v103.l, 8, v122.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v102.l, 0xff, v121.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v103.h, 8, v123.l
	v_lshlrev_b16 v110.l, 8, v111.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v111.l, 8, v112.l
	v_and_b16 v102.h, 0xff, v121.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v104.l, 8, v124.l
	v_lshlrev_b16 v104.h, 8, v125.l
	v_lshlrev_b16 v106.l, 8, v128.l
	v_lshlrev_b16 v106.h, 8, v129.l
	v_lshlrev_b16 v107.l, 8, v130.l
	v_lshlrev_b16 v107.h, 8, v131.l
	v_lshlrev_b16 v108.l, 8, v132.l
	v_lshlrev_b16 v108.h, 8, v133.l
	v_lshlrev_b16 v109.l, 8, v134.l
	v_lshlrev_b16 v109.h, 8, v135.l
	v_lshlrev_b16 v110.h, 8, v136.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v112.h, 8, v173.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v39.l, v39.l, v103.l
	v_or_b16 v39.h, v39.h, v103.h
	v_or_b16 v40.l, v40.l, v104.l
	v_or_b16 v40.h, v40.h, v104.h
	v_or_b16 v90.l, v90.l, v106.l
	v_or_b16 v90.h, v90.h, v106.h
	v_or_b16 v91.l, v91.l, v107.l
	v_or_b16 v91.h, v91.h, v107.h
	v_or_b16 v92.l, v92.l, v108.l
	v_or_b16 v92.h, v92.h, v108.h
	v_or_b16 v93.l, v93.l, v109.l
	v_or_b16 v93.h, v93.h, v109.h
	v_or_b16 v94.l, v94.l, v110.l
	v_or_b16 v94.h, v94.h, v110.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v95.l, v95.l, v111.l
	v_or_b16 v96.h, v96.h, v112.h
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v31, v34 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v32 offset:33792
	ds_load_b128 v[77:80], v32 offset:33808
	ds_load_b128 v[81:84], v32 offset:34304
	ds_load_b128 v[85:88], v32 offset:34320
	v_mul_f32_e32 v160, v101, v113
	v_mul_f32_e32 v168, v105, v113
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v113, 24, v114
	v_lshrrev_b32_e32 v114, 8, v115
	v_lshrrev_b32_e32 v115, 8, v116
	v_lshrrev_b32_e32 v116, 8, v117
	v_lshrrev_b32_e32 v117, 8, v118
	v_lshrrev_b32_e32 v118, 8, v119
	v_lshrrev_b32_e32 v119, 8, v120
	v_and_b16 v101.l, 0xff, v120.l
	v_and_b16 v101.h, 0xff, v120.h
	v_lshrrev_b32_e32 v120, 8, v121
	v_lshlrev_b16 v111.h, 8, v113.l
	v_lshlrev_b16 v113.l, 8, v115.l
	v_lshlrev_b16 v115.l, 8, v117.l
	v_lshlrev_b16 v117.l, 8, v119.l
	v_lshlrev_b16 v117.h, 8, v178.l
	v_lshlrev_b16 v112.l, 8, v114.l
	v_lshlrev_b16 v114.l, 8, v116.l
	v_lshlrev_b16 v116.l, 8, v118.l
	v_lshlrev_b16 v118.l, 8, v120.l
	v_lshlrev_b16 v118.h, 8, v179.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v105.l, 8, v126.l
	v_lshlrev_b16 v105.h, 8, v127.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v113.h, 8, v174.l
	v_lshlrev_b16 v114.h, 8, v175.l
	v_lshlrev_b16 v115.h, 8, v176.l
	v_lshlrev_b16 v116.h, 8, v177.l
	v_or_b16 v101.l, v101.l, v117.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v45, v140, v34 :: v_dual_fmac_f32 v74, v139, v35
	v_dual_fmac_f32 v72, v144, v36 :: v_dual_fmac_f32 v73, v143, v37
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v58, v164, v83
	v_dual_fmac_f32 v70, v148, v77 :: v_dual_fmac_f32 v71, v147, v78
	v_dual_fmac_f32 v66, v156, v79 :: v_dual_fmac_f32 v67, v155, v80
	v_dual_fmac_f32 v62, v160, v81 :: v_dual_fmac_f32 v59, v163, v84
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v63, v159, v82 :: v_dual_fmac_f32 v54, v168, v85
	v_fmac_f32_e32 v55, v167, v86
	v_fmac_f32_e32 v49, v172, v87
	v_fmac_f32_e32 v51, v171, v88
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v101.h, v101.h, v117.h
	v_or_b16 v102.l, v102.l, v118.l
	v_or_b16 v102.h, v102.h, v118.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v89.l, v89.l, v105.l
	v_or_b16 v89.h, v89.h, v105.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v95.h, v95.h, v111.h
	v_or_b16 v96.l, v96.l, v112.l
	v_or_b16 v97.l, v97.l, v113.l
	v_or_b16 v97.h, v97.h, v113.h
	v_or_b16 v98.l, v98.l, v114.l
	v_or_b16 v98.h, v98.h, v114.h
	v_or_b16 v99.l, v99.l, v115.l
	v_or_b16 v99.h, v99.h, v115.h
	v_or_b16 v100.l, v100.l, v116.l
	v_or_b16 v100.h, v100.h, v116.h
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_store_b16 v149, v33 offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v150, v39
	ds_store_b16_d16_hi v150, v39 offset:32
	ds_store_b16 v150, v40 offset:64
	ds_store_b16_d16_hi v150, v40 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v150, v95 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v151, v89
	ds_store_b16_d16_hi v151, v89 offset:32
	ds_store_b16 v151, v90 offset:64
	ds_store_b16_d16_hi v151, v90 offset:96
	ds_store_b16 v152, v91
	ds_store_b16_d16_hi v152, v91 offset:32
	ds_store_b16 v152, v92 offset:64
	ds_store_b16_d16_hi v152, v92 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v150, v96 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v150, v93 offset:384
	ds_store_b16_d16_hi v150, v93 offset:416
	ds_store_b16 v150, v94 offset:448
	ds_store_b16_d16_hi v150, v94 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v150, v95 offset:16416
	ds_store_b16_d16_hi v150, v96 offset:16480
	ds_store_b16 v151, v97 offset:16384
	ds_store_b16_d16_hi v151, v97 offset:16416
	ds_store_b16 v151, v98 offset:16448
	ds_store_b16_d16_hi v151, v98 offset:16480
	ds_store_b16 v152, v99 offset:16384
	ds_store_b16_d16_hi v152, v99 offset:16416
	ds_store_b16 v152, v100 offset:16448
	ds_store_b16_d16_hi v152, v100 offset:16480
	ds_store_b16 v150, v101 offset:16768
	ds_store_b16_d16_hi v150, v101 offset:16800
	ds_store_b16 v150, v102 offset:16832
	ds_store_b16_d16_hi v150, v102 offset:16864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v25, v14 :: v_dual_mov_b32 v4, v13
	v_mov_b32_e32 v3, v15
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x8200
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v45, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v84, 0
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_cndmask_b32_e64 v2, 0x110, 0, vcc_lo
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_or_b32_e32 v9, v1, v23
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v78, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v1, v1, v2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_xor_b32_e32 v10, 16, v9
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v2, 0, 1, s2
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v90, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b32_e32 v143, v24, v1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v1, s0, v9
	v_add_nc_u32_e32 v3, s0, v10
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[5:8], v1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[1:4], v3
	v_xor_b32_e32 v144, 16, v143
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v79, 0
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
	v_add_nc_u32_e32 v15, s16, v143
	v_add_nc_u32_e32 v23, s16, v144
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v33, s11 :: v_dual_mov_b32 v28, s6
	v_mov_b32_e32 v32, s10
	v_mov_b32_e32 v30, s8
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[11:14], v15
	ds_load_b128 v[19:22], v15 offset:4096
	ds_load_b128 v[34:37], v23
	ds_load_b128 v[77:80], v23 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v31, s9 :: v_dual_mov_b32 v26, s4
	v_mov_b32_e32 v29, s7
	v_mov_b32_e32 v27, s5
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[11:14], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[19:22], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[34:37], v[1:4], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[77:80], v[1:4], v[26:33] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v89, v94
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v90, v95
	v_cvt_f32_i32_e32 v83, v96
	v_cvt_f32_i32_e32 v87, v97
	v_cvt_f32_i32_e32 v84, v98
	v_cvt_f32_i32_e32 v88, v99
	v_cvt_f32_i32_e32 v81, v26
	v_cvt_f32_i32_e32 v85, v27
	v_cvt_f32_i32_e32 v82, v28
	v_cvt_f32_i32_e32 v86, v29
	v_cvt_f32_i32_e32 v77, v30
	v_cvt_f32_i32_e32 v79, v31
	v_cvt_f32_i32_e32 v78, v32
	v_cvt_f32_i32_e32 v80, v33
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v98, 0
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
	v_add_nc_u32_e32 v15, s14, v143
	v_add_nc_u32_e32 v23, s14, v144
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v33, s11 :: v_dual_mov_b32 v28, s6
	v_mov_b32_e32 v32, s10
	v_mov_b32_e32 v30, s8
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[11:14], v15
	ds_load_b128 v[19:22], v15 offset:4096
	ds_load_b128 v[34:37], v23
	ds_load_b128 v[102:105], v23 offset:4096
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v31, s9 :: v_dual_mov_b32 v26, s4
	v_mov_b32_e32 v29, s7
	v_mov_b32_e32 v27, s5
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[11:14], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[19:22], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[34:37], v[1:4], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[26:33], v[102:105], v[1:4], v[26:33] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v110, v95
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v107, v96
	v_cvt_f32_i32_e32 v109, v97
	v_cvt_f32_i32_e32 v105, v98
	v_cvt_f32_i32_e32 v108, v99
	v_cvt_f32_i32_e32 v103, v100
	v_cvt_f32_i32_e32 v106, v101
	v_cvt_f32_i32_e32 v101, v26
	v_cvt_f32_i32_e32 v104, v27
	v_cvt_f32_i32_e32 v99, v28
	v_cvt_f32_i32_e32 v102, v29
	v_cvt_f32_i32_e32 v97, v30
	v_cvt_f32_i32_e32 v100, v31
	v_cvt_f32_i32_e32 v96, v32
	v_cvt_f32_i32_e32 v98, v33
	v_cvt_f32_i32_e32 v91, v94
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
	s_mul_i32 s4, s0, s34
	.loc	1 387 34 is_stmt 1              ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v76, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v2, v75, s4, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s0, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v3, 32, v25
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 394 39                        ; generate_amdgcn.py:394:39
	v_add3_u32 v146, s26, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_add3_u32 v3, 0, v18, v3
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v95, 0, v16
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v4, v146, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_add_nc_u32_e32 v94, v3, v17
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v145, v1, s[12:15], 0 offen
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v17, s45, v9
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v18, s45, v10
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v116, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v113, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v122, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v94, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v1, v3, s[28:31], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v2, 0, 1, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[13:16], v95 offset:33792
	ds_load_b128 v[9:12], v95 offset:33808
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[5:8], v95 offset:34304
	ds_load_b128 v[1:4], v95 offset:34320
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v94, v19 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[37:40], v17
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_b128 v[33:36], v18
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
	v_add_nc_u32_e32 v17, s46, v143
	v_add_nc_u32_e32 v18, s46, v144
	ds_load_b128 v[112:115], v17
	ds_load_b128 v[116:119], v17 offset:4096
	ds_load_b128 v[120:123], v18
	ds_load_b128 v[124:127], v18 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v24, s11 :: v_dual_mov_b32 v21, s8
	v_dual_mov_b32 v23, s10 :: v_dual_mov_b32 v22, s9
	v_dual_mov_b32 v20, s7 :: v_dual_mov_b32 v19, s6
	v_dual_mov_b32 v18, s5 :: v_dual_mov_b32 v17, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[112:115], v[37:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[116:119], v[37:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[120:123], v[33:36], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[124:127], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v121, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v125, v28
	v_cvt_f32_i32_e32 v114, v29
	v_cvt_f32_i32_e32 v120, v30
	v_cvt_f32_i32_e32 v117, v31
	v_cvt_f32_i32_e32 v122, v32
	v_cvt_f32_i32_e32 v118, v17
	v_cvt_f32_i32_e32 v123, v18
	v_cvt_f32_i32_e32 v119, v19
	v_cvt_f32_i32_e32 v124, v20
	v_cvt_f32_i32_e32 v112, v21
	v_cvt_f32_i32_e32 v115, v22
	v_cvt_f32_i32_e32 v113, v23
	v_cvt_f32_i32_e32 v116, v24
	v_cvt_f32_i32_e32 v126, v25
	v_cvt_f32_i32_e32 v127, v26
.LBB0_14:
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_b128 v[29:32], v95 offset:33792
	ds_load_b128 v[25:28], v95 offset:33808
	ds_load_b128 v[21:24], v95 offset:34304
	ds_load_b128 v[17:20], v95 offset:34320
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	v_mov_b32_e32 v128, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v154, s11 :: v_dual_add_nc_u32 v111, s44, v143
	v_dual_mov_b32 v153, s10 :: v_dual_add_nc_u32 v128, s44, v144
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[136:139], v111
	ds_load_b128 v[140:143], v111 offset:4096
	ds_load_b128 v[155:158], v128
	ds_load_b128 v[159:162], v128 offset:4096
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v152, s9 :: v_dual_mov_b32 v151, s8
	v_dual_mov_b32 v150, s7 :: v_dual_mov_b32 v149, s6
	v_dual_mov_b32 v148, s5 :: v_dual_mov_b32 v147, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[136:139], v[37:40], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[140:143], v[37:40], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[155:158], v[33:36], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[159:162], v[33:36], v[147:154] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v111, v128
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v139, v129
	v_cvt_f32_i32_e32 v137, v130
	v_cvt_f32_i32_e32 v142, v131
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v136, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v140, v135
	v_cvt_f32_i32_e32 v132, v147
	v_cvt_f32_i32_e32 v138, v148
	v_cvt_f32_i32_e32 v135, v149
	v_cvt_f32_i32_e32 v141, v150
	v_cvt_f32_i32_e32 v128, v151
	v_cvt_f32_i32_e32 v131, v152
	v_cvt_f32_i32_e32 v129, v153
	v_cvt_f32_i32_e32 v133, v154
.LBB0_16:
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s35, 31
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s14
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s0, s0, 27
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s31, s15
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s0, s35, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v36.l, 0
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_mov_b16_e64 v36.h, v145.l
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s0, s34
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v33, v76, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v34, v75, s1, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s0, -1, 0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v37, s27, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s33, s33, s27
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v39, 0x7632 :: v_dual_mul_f32 v144, v91, v36
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v35, v34, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v34, v33, s[12:15], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v33, v146, s1, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v38, 16, v0
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v143, v110, v36
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v37, s33, s26, v37
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v29, v144, v29, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.h, v36.l
	v_mov_b16_e32 v110.h, v36.l
	v_mov_b16_e32 v91.h, v36.l
	v_mov_b16_e32 v76.h, v36.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v45, v29, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.h, v36.l
	v_mov_b16_e32 v75.h, v36.l
	s_mov_b32 s15, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v77, v77, v36 :: v_dual_lshlrev_b32 v34, 16, v34
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v99, v99, v36
	v_mul_f32_e32 v96, v96, v36
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v94, v35 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v77, v77, v1, v46
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v145, v93, v36
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v103, v103, v36
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v78, v78, v36
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v35, 1, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v77, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v77, v118, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v19, v96, v19, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v96, v112, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v99, v23, v58
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v109, v109, v36
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v152, v81, v36
	v_mul_f32_e32 v79, v79, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v98, v98, v36
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v80, v80, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v58, v23, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v58, v111, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v14, v145, v14, v69
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v99, v116, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v3, v78, v3, v44
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v78, v138, v34
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v27, v103, v27, v66
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v146, v92, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v100, v100, v36
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v20, v98, v20, v51
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v4, v80, v4, v43
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v1, v37, v35, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v69, v14, s2
	v_cndmask_b32_e64 v27, v66, v27, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v120, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v32, v109, v32, v73
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v69, v130, v34
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v5, v152, v5, v52
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v98, v128, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v2, v79, v2, v47
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v147, v90, v36
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v108, v108, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v73, v32, s2
	v_cndmask_b32_e64 v52, v52, v5, s2
	v_cndmask_b32_e64 v47, v47, v2, s2
	v_cndmask_b32_e64 v19, v49, v19, s2
	v_cndmask_b32_e64 v43, v43, v4, s2
	v_cndmask_b32_e64 v44, v44, v3, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v49, v127, v34
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v13, v146, v13, v68
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v73, v134, v34
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v18, v100, v18, v55
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	ds_load_b128 v[2:5], v95 offset:33792
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v106, v106, v36
	v_dual_mul_f32 v101, v101, v36 :: v_dual_mul_f32 v80, v124, v34
	v_mul_f32_e32 v102, v102, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v68, v13, s2
	v_cndmask_b32_e64 v18, v55, v18, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v55, v139, v34
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v26, v108, v26, v71
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v68, v136, v34
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v147, v16, v65
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v107, v107, v36
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v148, v89, v36
	v_mul_f32_e32 v150, v83, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v104, v104, v36
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v85, v85, v36
	v_dual_mul_f32 v86, v86, v36 :: v_dual_mul_f32 v79, v132, v34
	v_mul_f32_e32 v82, v82, v36
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v21, v101, v21, v62
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v65, v16, s2
	v_cndmask_b32_e64 v26, v71, v26, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v65, v137, v34
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v28, v106, v28, v67
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v71, v117, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v24, v102, v24, v59
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v149, v87, v36
	v_mul_f32_e32 v88, v88, v36
	v_mul_f32_e32 v151, v84, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v97, v97, v36
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v30, v143, v30, v74
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v7, v82, v7, v48
	v_fma_f32 v8, v86, v8, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v67, v28, s2
	v_cndmask_b32_e64 v21, v62, v21, s2
	v_cndmask_b32_e64 v24, v59, v24, s2
	v_cndmask_b32_e64 v20, v51, v20, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v51, v126, v34
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v15, v148, v15, v64
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v59, v125, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v9, v150, v9, v60
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v62, v121, v34
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v31, v107, v31, v72
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v67, v114, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v22, v104, v22, v63
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v82, v119, v34
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v85, v6, v53
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v74, v30, s2
	v_cndmask_b32_e64 v31, v72, v31, s2
	v_cndmask_b32_e64 v64, v64, v15, s2
	v_cndmask_b32_e64 v60, v60, v9, s2
	v_cndmask_b32_e64 v22, v63, v22, s2
	v_cndmask_b32_e64 v53, v53, v6, s2
	v_cndmask_b32_e64 v50, v50, v8, s2
	v_cndmask_b32_e64 v48, v48, v7, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v63, v142, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v12, v88, v12, v57
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v72, v140, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v10, v149, v10, v61
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v74, v123, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v11, v151, v11, v56
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[6:9], v95 offset:33808
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v86, v135, v34
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v17, v97, v17, v54
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v51, v51, v2, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v61, v10, s2
	v_cndmask_b32_e64 v57, v57, v12, s2
	v_cndmask_b32_e64 v56, v56, v11, s2
	v_cndmask_b32_e64 v54, v54, v17, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[10:13], v95 offset:34304
	ds_load_b128 v[14:17], v95 offset:34320
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v49, v49, v3, v35
	v_fma_f32 v62, v62, v4, v64
	v_fma_f32 v59, v59, v5, v45
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v105, v105, v36 :: v_dual_mul_f32 v88, v115, v34
	v_mul_f32_e32 v85, v141, v34
	v_mul_f32_e32 v97, v131, v34
	v_mul_f32_e32 v101, v133, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v25, v105, v25, v70
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v67, v67, v6, v60
	v_fma_f32 v66, v66, v7, v61
	v_fma_f32 v71, v71, v8, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v51, s3
	v_cndmask_b32_e64 v25, v70, v25, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v70, v122, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v61, v66, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v77, v77, v10, v52
	v_fma_f32 v74, v74, v11, v53
	v_fma_f32 v82, v82, v12, v48
	v_fma_f32 v70, v70, v9, v57
	v_fma_f32 v80, v80, v13, v50
	v_fma_f32 v88, v88, v15, v47
	v_fma_f32 v99, v99, v17, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v49, s3
	v_cndmask_b32_e64 v49, v64, v62, s3
	v_cndmask_b32_e64 v45, v45, v59, s3
	v_cndmask_b32_e64 v59, v60, v67, s3
	v_cndmask_b32_e64 v57, v57, v70, s3
	v_cndmask_b32_e64 v56, v56, v71, s3
	v_cndmask_b32_e64 v53, v53, v74, s3
	v_cndmask_b32_e64 v52, v52, v77, s3
	v_cndmask_b32_e64 v50, v50, v80, s3
	v_cndmask_b32_e64 v48, v48, v82, s3
	v_cndmask_b32_e64 v47, v47, v88, s3
	v_cndmask_b32_e64 v43, v43, v99, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v92.h, v36.l
	v_mov_b16_e32 v81.h, v36.l
	v_mov_b16_e32 v89.h, v36.l
	v_mov_b16_e32 v93.h, v36.l
	v_mov_b16_e32 v87.h, v36.l
	v_mov_b16_e32 v90.h, v36.l
	v_mov_b16_e32 v83.h, v36.l
	v_mov_b16_e32 v42.h, v36.l
	v_mov_b16_e32 v84.h, v36.l
	v_mov_b16_e32 v36.h, v36.l
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v33, v96, v14, v46
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v94, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v95 offset:33792
	ds_load_b128 v[6:9], v95 offset:33808
	ds_load_b128 v[10:13], v95 offset:34304
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v46, v33, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v3, v55, v3, v30
	v_fma_f32 v2, v58, v2, v29
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v6, v69, v6, v25
	v_fma_f32 v9, v72, v9, v28
	v_fma_f32 v5, v63, v5, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v30, v3, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v100, v113, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v29, v2, s3
	v_cndmask_b32_e64 v6, v25, v6, s3
	v_cndmask_b32_e64 v9, v28, v9, s3
	v_cndmask_b32_e64 v5, v32, v5, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v96, v100, v16, v44
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[14:17], v95 offset:34320
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v13, v85, v13, v24
	v_fma_f32 v11, v78, v11, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v34, v129, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v10, v79, v10, v21
	v_fma_f32 v12, v86, v12, v23
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v24, v13, s3
	v_cndmask_b32_e64 v11, v22, v11, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v21, v10, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v5
	v_mul_f32_e32 v29, 0xbfb8aa3b, v13
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v4, v65, v4, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v23, v12, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v7, v68, v7, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v29
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v8, v73, v8, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v31, v4, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v15, v97, v15, v18
	v_fma_f32 v16, v34, v16, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	v_cndmask_b32_e64 v29, 0, 0x42800000, s9
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v17, v101, v17, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v18, v15, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v19, v16, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_mul_f32_e32 v28, 0xbfb8aa3b, v12
	v_dual_mul_f32 v32, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v29, v29
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v26, v7, s3
	v_cndmask_b32_e64 v8, v27, v8, s3
	v_cndmask_b32_e64 v17, v20, v17, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v20, 0xbfb8aa3b, v4 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v11
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v2
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v32
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v28
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s9
	v_exp_f32_e32 v25, v25
	v_mul_f32_e32 v19, 0xbfb8aa3b, v3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v14, v98, v14, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v7
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v27
	v_cndmask_b32_e64 v28, 0, 0x42800000, s10
	v_cndmask_b32_e64 v32, 0, 0x42800000, s14
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s5
	v_ldexp_f32 v29, v29, v66
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v96, s3
	v_cndmask_b32_e64 v14, v54, v14, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	v_cndmask_b32_e64 v27, 0, 0x42800000, s7
	v_dual_fmac_f32 v32, 0xbfb8aa3b, v16 :: v_dual_add_f32 v29, 1.0, v29
	v_ldexp_f32 v25, v25, v62
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v12
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v34, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	v_dual_mul_f32 v30, 0xbfb8aa3b, v14 :: v_dual_add_f32 v25, 1.0, v25
	v_exp_f32_e32 v28, v28
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v78, null, v29, v29, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v26, 0xbfb8aa3b, v10 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v3
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v7
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v30
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s10
	v_exp_f32_e32 v27, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v109, v78
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v24, 0xbfb8aa3b, v8 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v15
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v30, 0, 0x42800000, s12
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s7
	v_ldexp_f32 v28, v28, v67
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s1
	v_ldexp_f32 v27, v27, v64
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v126, -v78, v109, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v31
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v19, v19, v46
	v_ldexp_f32 v21, v21, v55
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v30, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v109, v126, v109
	v_div_scale_f32 v80, null, v28, v28, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, s11
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v4
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s3
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v6 :: v_dual_add_f32 v19, 1.0, v19
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v8 :: v_dual_add_f32 v21, 1.0, v21
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v111, v80
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v15
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v23, v23, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, null, v19, v19, v3
	v_div_scale_f32 v60, null, v21, v21, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v30, v30, v69
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v99, v46
	v_rcp_f32_e32 v101, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v127, -v80, v111, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v18, v54
	v_ldexp_f32 v20, v20, v58
	v_cndmask_b32_e64 v26, 0, 0x42800000, s8
	v_exp_f32_e32 v32, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v111, v127, v111
	v_div_scale_f32 v88, null, v30, v30, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v31, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v116, -v46, v99, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v118, -v60, v101, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v34
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v10 :: v_dual_add_f32 v23, 1.0, v23
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v113, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v99, v116, v99
	v_div_scale_f32 v55, null, v18, v18, v2
	v_fmac_f32_e32 v101, v118, v101
	v_div_scale_f32 v62, null, v20, v20, v4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s13
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v32, v32, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v27, v27, v11
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v31, v31, v68
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v25, v25, v9
	v_rcp_f32_e32 v100, v55
	v_rcp_f32_e32 v102, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s8
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v17 :: v_dual_add_f32 v31, 1.0, v31
	v_exp_f32_e32 v22, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v64, null, v23, v23, v7
	v_rcp_f32_e32 v107, v72
	v_fma_f32 v129, -v88, v113, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v105, v68
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s4
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v26, v26, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v103, v64
	v_fmac_f32_e32 v113, v129, v113
	v_div_scale_f32 v97, null, v32, v32, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v85, null, v31, v31, v15
	v_fma_f32 v117, -v55, v100, 1.0
	v_fma_f32 v119, -v62, v102, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s13
	v_ldexp_f32 v22, v22, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v115, v97
	v_fma_f32 v124, -v72, v107, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v122, -v68, v105, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v58, s0, v2, v18, v2
	v_div_scale_f32 v63, s2, v4, v20, v4
	v_rcp_f32_e32 v112, v85
	v_fmac_f32_e32 v102, v119, v102
	v_fmac_f32_e32 v100, v117, v100
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v34, v34, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v120, -v64, v103, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_fmac_f32 v107, v124, v107
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v26, v26, v10
	v_fmac_f32_e32 v105, v122, v105
	v_div_scale_f32 v70, null, v24, v24, v8
	v_div_scale_f32 v54, vcc_lo, v3, v19, v3
	v_mul_f32_e32 v119, v63, v102
	v_mul_f32_e32 v117, v58, v100
	v_rcp_f32_e32 v108, v74
	v_fma_f32 v131, -v97, v115, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_fmac_f32 v103, v120, v103
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v22, v22, v6
	v_div_scale_f32 v61, s1, v5, v21, v5
	v_rcp_f32_e32 v106, v70
	v_div_scale_f32 v94, s12, v14, v30, v14
	v_fma_f32 v128, -v85, v112, 1.0
	v_fma_f32 v133, -v55, v117, v58
	v_mul_f32_e32 v116, v54, v99
	v_rcp_f32_e32 v104, v66
	v_fmac_f32_e32 v115, v131, v115
	v_div_scale_f32 v95, null, v34, v34, v17
	v_div_scale_f32 v98, s14, v16, v32, v16
	v_mul_f32_e32 v118, v61, v101
	v_dual_fmac_f32 v112, v128, v112 :: v_dual_mul_f32 v129, v94, v113
	v_fmac_f32_e32 v117, v133, v100
	v_fma_f32 v132, -v46, v116, v54
	v_rcp_f32_e32 v114, v95
	v_fma_f32 v125, -v74, v108, 1.0
	v_div_scale_f32 v82, s10, v12, v28, v12
	v_fma_f32 v123, -v70, v106, 1.0
	v_mul_f32_e32 v131, v98, v115
	v_fma_f32 v134, -v60, v118, v61
	v_fma_f32 v145, -v88, v129, v94
	v_fmac_f32_e32 v116, v132, v99
	v_div_scale_f32 v77, s8, v10, v26, v10
	v_fma_f32 v121, -v66, v104, 1.0
	v_dual_fmac_f32 v108, v125, v108 :: v_dual_mul_f32 v127, v82, v111
	v_div_scale_f32 v71, s6, v8, v24, v8
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v106, v123, v106 :: v_dual_mul_f32 v125, v77, v108
	v_fma_f32 v147, -v97, v131, v98
	v_fmac_f32_e32 v118, v134, v101
	v_div_scale_f32 v65, s3, v7, v23, v7
	v_fmac_f32_e32 v129, v145, v113
	v_fma_f32 v46, -v46, v116, v54
	v_div_scale_f32 v67, s4, v6, v22, v6
	v_fma_f32 v130, -v95, v114, 1.0
	v_dual_fmac_f32 v104, v121, v104 :: v_dual_mul_f32 v123, v71, v106
	v_fma_f32 v54, -v55, v117, v58
	v_div_scale_f32 v69, s5, v9, v25, v9
	v_fmac_f32_e32 v131, v147, v115
	v_fma_f32 v55, -v60, v118, v61
	v_fma_f32 v135, -v62, v119, v63
	v_mul_f32_e32 v120, v65, v103
	v_div_fmas_f32 v46, v46, v99, v116
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v114, v130, v114 :: v_dual_mul_f32 v121, v67, v104
	v_div_fmas_f32 v54, v54, v100, v117
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v139, -v70, v123, v71
	v_mul_f32_e32 v122, v69, v105
	v_div_fmas_f32 v55, v55, v101, v118
	v_fmac_f32_e32 v119, v135, v102
	v_fma_f32 v136, -v64, v120, v65
	v_div_scale_f32 v79, s9, v13, v29, v13
	v_fma_f32 v137, -v66, v121, v67
	v_fmac_f32_e32 v123, v139, v106
	v_fma_f32 v138, -v68, v122, v69
	v_div_fixup_f32 v5, v55, v21, v5
	v_fmac_f32_e32 v120, v136, v103
	v_dual_mul_f32 v126, v79, v109 :: v_dual_fmac_f32 v121, v137, v104
	v_fma_f32 v58, -v62, v119, v63
	v_div_scale_f32 v73, s7, v11, v27, v11
	v_div_fixup_f32 v3, v46, v19, v3
	v_fmac_f32_e32 v122, v138, v105
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v45, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v64, v120, v65
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v61, -v66, v121, v67
	v_div_fmas_f32 v19, v58, v102, v119
	s_mov_b32 vcc_lo, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v35, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v62, -v68, v122, v69
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v92.l, v5.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v124, v73, v107
	v_div_fixup_f32 v2, v54, v18, v2
	v_div_fmas_f32 v18, v60, v103, v120
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v19, v20, v4
	v_div_fmas_f32 v21, v61, v104, v121
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v140, -v72, v124, v73
	v_div_fmas_f32 v19, v62, v105, v122
	v_div_scale_f32 v86, s11, v15, v31, v15
	v_fma_f32 v63, -v70, v123, v71
	v_div_scale_f32 v96, s13, v17, v34, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v9, v19, v25, v9
	v_fmac_f32_e32 v124, v140, v107
	v_fma_f32 v141, -v74, v125, v77
	v_fma_f32 v143, -v80, v127, v82
	v_dual_mul_f32 v128, v86, v112 :: v_dual_mul_f32 v9, v57, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v64, -v72, v124, v73
	v_fma_f32 v142, -v78, v126, v79
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v7, v18, v23, v7
	v_div_fmas_f32 v18, v63, v106, v123
	s_mov_b32 vcc_lo, s7
	v_dual_mul_f32 v130, v96, v114 :: v_dual_fmac_f32 v125, v141, v108
	v_fmac_f32_e32 v127, v143, v111
	v_fma_f32 v144, -v85, v128, v86
	v_div_fmas_f32 v20, v64, v107, v124
	v_dual_fmac_f32 v126, v142, v109 :: v_dual_mul_f32 v7, v51, v7
	v_fma_f32 v65, -v74, v125, v77
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v11, v20, v27, v11
	v_fmac_f32_e32 v128, v144, v112
	v_fma_f32 v66, -v78, v126, v79
	v_fma_f32 v67, -v80, v127, v82
	v_div_fmas_f32 v19, v65, v108, v125
	s_mov_b32 vcc_lo, s9
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v53, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v85, v128, v86
	v_div_fixup_f32 v6, v21, v22, v6
	v_div_fmas_f32 v21, v66, v109, v126
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v69, -v88, v129, v94
	v_div_fmas_f32 v22, v67, v111, v127
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v13, v21, v29, v13
	v_div_fmas_f32 v23, v68, v112, v128
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v10, v19, v26, v10
	v_div_fmas_f32 v21, v69, v113, v129
	v_fma_f32 v146, -v95, v130, v96
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v2, v37, v2 :: v_dual_and_b32 v19, 1, v92
	v_mul_f32_e32 v13, v50, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v14, v21, v30, v14
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s2, v5, v5
	v_add3_u32 v5, v5, v19, 0x7fff
	v_mov_b16_e32 v93.l, v2.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s13
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v33, v14
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v110.l, v3.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v12, v22, v28, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v18, v24, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v14.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v52, v10
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v15, v23, v31, v15
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v49, v4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v2, v2
	v_add3_u32 v2, v2, v20, 0x7fff
	v_mov_b16_e32 v81.l, v10.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v59, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v87.l, v9.h
	v_cmp_o_f32_e64 s0, v3, v3
	v_mov_b16_e32 v90.l, v7.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v47, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v89.l, v6.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v130, v146, v114
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v91.l, v4.h
	v_and_b32_e32 v20, 1, v90
	v_cmp_o_f32_e64 s6, v9, v9
	v_and_b32_e32 v19, 1, v89
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v70, -v95, v130, v96
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v76.l, v13.h
	v_cmp_o_f32_e64 s3, v4, v4
	v_cmp_o_f32_e64 s4, v7, v7
	v_mov_b16_e32 v83.l, v11.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v22, v70, v114, v130
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v7, v20, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v71, -v97, v131, v98
	s_mov_b32 vcc_lo, s14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v22, v34, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v18, 1, v110
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v23, v71, v115, v131
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v43, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v3, v18, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s1
	v_and_b32_e32 v2, 1, v87
	v_and_b32_e32 v18, 1, v91
	v_cmp_o_f32_e64 s1, v13, v13
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s0
	v_mov_b16_e32 v41.l, v17.h
	v_add3_u32 v2, v9, v2, 0x7fff
	v_and_b32_e32 v9, 1, v81
	v_cmp_o_f32_e64 s5, v6, v6
	v_add3_u32 v6, v6, v19, 0x7fff
	v_add3_u32 v4, v4, v18, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v48, v12
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v23, v32, v16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e64 s4, 0, v38
	v_cndmask_b16 v7.l, 0x7fff, v6.h, s5
	v_and_b32_e32 v6, 1, v76
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s3
	v_and_b32_e32 v4, 1, v83
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v44, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v75.l, v15.h
	v_add3_u32 v6, v13, v6, 0x7fff
	v_and_b32_e32 v13, 1, v40
	v_cmp_o_f32_e64 s0, v10, v10
	v_add3_u32 v9, v10, v9, 0x7fff
	v_add3_u32 v4, v11, v4, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_mov_b16_e32 v36.l, v16.h
	v_cndmask_b32_e64 v10, v7, v3, s4
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s0
	v_and_b32_e32 v9, 1, v41
	v_mov_b16_e32 v42.l, v12.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v56, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v3, v3, v7, s4
	v_cndmask_b32_e64 v0, 0x1054, v0, s4
	v_cndmask_b32_e64 v7, 0x3276, v39, s4
	v_and_b32_e32 v11, 1, v42
	v_mov_b16_e32 v84.l, v8.h
	v_cmp_o_f32_e64 s7, v8, v8
	v_cmp_o_f32_e64 s2, v12, v12
	v_lshl_or_b32 v0, v0, 8, v0
	v_add3_u32 v11, v12, v11, 0x7fff
	v_and_b32_e32 v18, 1, v84
	v_lshl_or_b32 v7, v7, 8, v7
	v_cmp_o_f32_e64 s3, v15, v15
	v_cmp_o_f32_e64 s5, v14, v14
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v8, v8, v18, 0x7fff
	v_add3_u32 v13, v14, v13, 0x7fff
	v_add3_u32 v9, v17, v9, 0x7fff
	v_and_b32_e32 v0, 0x540054, v0
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v75
	v_cmp_o_f32_e64 s7, v16, v16
	v_lshl_or_b32 v0, v0, 4, v0
	v_permlanex16_b32 v3, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v12, v2, v5, s4
	v_cndmask_b32_e64 v2, v5, v2, s4
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s1
	v_and_b32_e32 v6, 1, v36
	v_add3_u32 v8, v15, v8, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v11.h, s2
	v_permlanex16_b32 v11, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v8.l, 0x7fff, v13.h, s5
	v_add3_u32 v2, v16, v6, 0x7fff
	v_and_b32_e32 v6, 0x760076, v7
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s6
	v_and_b32_e32 v0, 0x5040504, v0
	v_cndmask_b16 v7.l, 0x7fff, v2.h, s7
	v_lshl_or_b32 v2, v6, 4, v6
	v_cndmask_b32_e64 v9, v8, v4, s4
	v_cndmask_b32_e64 v4, v4, v8, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v6, v5, v7, s4
	v_and_b32_e32 v13, 0x7060706, v2
	v_cndmask_b32_e64 v14, v7, v5, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v7, v4, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v3, v10, v0
	v_permlanex16_b32 v15, v6, s15, 0xfedcba98 op_sel:[1,0]
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 180
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13880
; TotalNumSgprs: 51
; NumVgprs: 180
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 51
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     180
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
