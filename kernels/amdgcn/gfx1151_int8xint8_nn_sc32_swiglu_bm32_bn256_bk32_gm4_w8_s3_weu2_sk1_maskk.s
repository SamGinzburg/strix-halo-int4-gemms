	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	v_and_b32_e32 v50, 0xf0, v0
	v_and_b32_e32 v15, 8, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshrrev_b32_e32 v9, 3, v50
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
	s_lshl_b32 s33, s2, 5
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
	v_and_b32_e32 v49, 15, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 374 34 is_stmt 0              ; generate_amdgcn.py:374:34
	s_mul_i32 s3, s33, s31
	.loc	1 378 34 is_stmt 1              ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v10, v49, 4, v1
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
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v1, s27, 6, v1
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v20, v49, 9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v7, s34, v2
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v13, s27, v1
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
	v_lshlrev_b32_e32 v2, 2, v0
	v_lshrrev_b32_e32 v7, 3, v0
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v14, s34, v13
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v22, 0x110, v20
	v_add_nc_u32_e32 v64, 0, v21
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v11, 28, v2
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_mul_lo_u32 v7, s31, v7
	.loc	1 374 26 is_stmt 0              ; generate_amdgcn.py:374:26
	v_and_b32_e32 v2, 0x37c, v2
	.loc	1 378 26 is_stmt 1              ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v65, 0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v8, s30, v11
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add3_u32 v12, v7, v11, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v7, s30, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s6, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s35, s30, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v8, s35, v9
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s4, s31, v8
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v8, s34, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	s_clause 0x1
	buffer_load_b128 v[35:38], v1, s[36:39], 0 offen
	buffer_load_b128 v[39:42], v8, s[36:39], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v1, 0x80000000, v13, s4
	v_cndmask_b32_e64 v8, 0x80000000, v14, s4
	s_clause 0x1
	buffer_load_b128 v[43:46], v1, s[36:39], 0 offen
	buffer_load_b128 v[51:54], v8, s[36:39], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_dual_cndmask_b32 v1, 0x80000000, v7 :: v_dual_lshlrev_b32 v14, 5, v0
	v_and_b32_e32 v13, 4, v0
	buffer_load_b32 v61, v1, s[8:11], 0 offen
	v_bfe_i32 v1, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v7, 0x90, v1
	v_lshlrev_b32_e32 v1, 4, v0
	v_xor_b32_e32 v16, v7, v2
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v7, s35, v11
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v2, 16, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v7
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v7, s35, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_add_nc_u32 v62, 0, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0x5f
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b32 v66, v7, s[8:11], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(8)
	v_perm_b32 v7, v23, v3, 0x5010400
	v_perm_b32 v8, v23, v3, 0x7030602
	v_perm_b32 v17, v24, v4, 0x5010400
	v_perm_b32 v18, v24, v4, 0x7030602
	v_perm_b32 v19, v25, v5, 0x5010400
	v_perm_b32 v24, v26, v6, 0x5010400
	v_perm_b32 v23, v25, v5, 0x7030602
	v_perm_b32 v25, v26, v6, 0x7030602
	v_lshrrev_b32_e32 v26, 8, v7
	v_lshrrev_b32_e32 v48, 8, v8
	v_lshrrev_b32_e32 v56, 8, v17
	v_lshrrev_b32_e32 v58, 8, v18
	v_lshrrev_b32_e32 v67, 24, v19
	v_lshrrev_b32_e32 v70, 8, v24
	v_lshrrev_b32_e32 v71, 24, v24
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(6)
	v_perm_b32 v74, v31, v27, 0x5010400
	v_perm_b32 v75, v31, v27, 0x7030602
	v_perm_b32 v78, v33, v29, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v47, 24, v7
	v_lshrrev_b32_e32 v55, 24, v8
	v_lshrrev_b32_e32 v57, 24, v17
	v_lshrrev_b32_e32 v59, 24, v18
	v_lshrrev_b32_e32 v68, 8, v23
	v_lshrrev_b32_e32 v72, 8, v25
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v79, v33, v29, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v60, 8, v19
	v_lshrrev_b32_e32 v69, 24, v23
	v_lshrrev_b32_e32 v73, 24, v25
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v76, v32, v28, 0x5010400
	v_perm_b32 v80, v34, v30, 0x5010400
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v3.l, 0xff, v7.l
	v_and_b16 v3.h, 0xff, v7.h
	v_and_b16 v4.l, 0xff, v8.l
	v_and_b16 v5.l, 0xff, v17.l
	v_and_b16 v6.l, 0xff, v18.l
	v_and_b16 v7.l, 0xff, v19.l
	v_and_b16 v7.h, 0xff, v19.h
	v_and_b16 v8.l, 0xff, v23.l
	v_and_b16 v17.l, 0xff, v24.l
	v_and_b16 v18.l, 0xff, v25.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v77, v32, v28, 0x7030602
	v_perm_b32 v81, v34, v30, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v19.l, 8, v26.l
	v_lshlrev_b16 v23.l, 8, v48.l
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
	v_and_b16 v4.h, 0xff, v8.h
	v_and_b16 v5.h, 0xff, v17.h
	v_and_b16 v6.h, 0xff, v18.h
	v_and_b16 v8.h, 0xff, v23.h
	s_waitcnt vmcnt(4)
	v_perm_b32 v78, v39, v35, 0x5010400
	v_and_b16 v17.h, 0xff, v24.h
	v_and_b16 v18.h, 0xff, v25.h
	v_lshlrev_b16 v19.h, 8, v47.l
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
	v_perm_b32 v39, v39, v35, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v30.l, 0xff, v74.l
	v_and_b16 v30.h, 0xff, v74.h
	v_lshrrev_b32_e32 v67, 24, v76
	v_lshrrev_b32_e32 v74, 8, v80
	s_waitcnt vmcnt(2)
	v_perm_b32 v83, v51, v43, 0x5010400
	v_and_b16 v31.l, 0xff, v75.l
	v_and_b16 v31.h, 0xff, v75.h
	v_and_b16 v32.l, 0xff, v76.l
	v_and_b16 v32.h, 0xff, v76.h
	v_and_b16 v33.l, 0xff, v77.l
	v_lshrrev_b32_e32 v68, 8, v77
	v_lshrrev_b32_e32 v69, 24, v77
	v_and_b16 v33.h, 0xff, v77.h
	v_and_b16 v47.l, 0xff, v79.l
	v_and_b16 v47.h, 0xff, v79.h
	v_and_b16 v48.l, 0xff, v80.l
	v_lshrrev_b32_e32 v75, 24, v80
	v_and_b16 v48.h, 0xff, v80.h
	v_and_b16 v55.l, 0xff, v81.l
	v_lshrrev_b32_e32 v76, 8, v81
	v_lshrrev_b32_e32 v77, 24, v81
	v_and_b16 v55.h, 0xff, v81.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v79, v40, v36, 0x5010400
	v_perm_b32 v40, v40, v36, 0x7030602
	v_perm_b32 v80, v41, v37, 0x5010400
	v_perm_b32 v41, v41, v37, 0x7030602
	v_perm_b32 v81, v42, v38, 0x5010400
	v_perm_b32 v82, v42, v38, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v51, v51, v43, 0x7030602
	v_perm_b32 v84, v52, v44, 0x5010400
	v_perm_b32 v52, v52, v44, 0x7030602
	v_perm_b32 v85, v53, v45, 0x5010400
	v_perm_b32 v53, v53, v45, 0x7030602
	v_perm_b32 v86, v54, v46, 0x5010400
	v_perm_b32 v87, v54, v46, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v3.l, v3.l, v19.l
	v_or_b16 v4.l, v4.l, v23.l
	v_or_b16 v7.h, v7.h, v26.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v19.l, 8, v56.l
	v_lshlrev_b16 v23.l, 8, v58.l
	v_lshlrev_b16 v26.h, 8, v71.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v56, 8, v78
	v_or_b16 v3.h, v3.h, v19.h
	v_or_b16 v4.h, v4.h, v23.h
	v_or_b16 v8.l, v8.l, v27.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v19.h, 8, v57.l
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
	v_lshrrev_b32_e32 v58, 8, v39
	v_or_b16 v5.h, v5.h, v24.h
	v_or_b16 v17.l, v17.l, v28.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v24.h, 8, v67.l
	v_lshlrev_b16 v28.l, 8, v74.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v59, 24, v39
	v_and_b16 v35.l, 0xff, v78.l
	v_and_b16 v35.h, 0xff, v78.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v78, 8, v83
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v6.l, v6.l, v25.l
	v_or_b16 v6.h, v6.h, v25.h
	v_or_b16 v7.l, v7.l, v26.l
	v_or_b16 v17.h, v17.h, v28.h
	v_or_b16 v18.l, v18.l, v29.l
	v_or_b16 v18.h, v18.h, v29.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v25.l, 8, v68.l
	v_lshlrev_b16 v25.h, 8, v69.l
	v_lshlrev_b16 v26.l, 8, v70.l
	v_lshlrev_b16 v28.h, 8, v75.l
	v_lshlrev_b16 v29.l, 8, v76.l
	v_lshlrev_b16 v29.h, 8, v77.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v36.l, 0xff, v39.l
	v_and_b16 v36.h, 0xff, v39.h
	v_and_b16 v37.l, 0xff, v79.l
	v_lshrrev_b32_e32 v60, 8, v79
	v_lshrrev_b32_e32 v67, 24, v79
	v_and_b16 v37.h, 0xff, v79.h
	v_and_b16 v38.l, 0xff, v40.l
	v_lshrrev_b32_e32 v68, 8, v40
	v_lshrrev_b32_e32 v69, 24, v40
	v_and_b16 v38.h, 0xff, v40.h
	v_and_b16 v39.l, 0xff, v80.l
	v_lshrrev_b32_e32 v70, 8, v80
	v_lshrrev_b32_e32 v71, 24, v80
	v_and_b16 v39.h, 0xff, v80.h
	v_and_b16 v40.l, 0xff, v41.l
	v_lshrrev_b32_e32 v72, 8, v41
	v_lshrrev_b32_e32 v73, 24, v41
	v_and_b16 v40.h, 0xff, v41.h
	v_and_b16 v41.l, 0xff, v81.l
	v_lshrrev_b32_e32 v74, 8, v81
	v_lshrrev_b32_e32 v75, 24, v81
	v_and_b16 v41.h, 0xff, v81.h
	v_and_b16 v42.l, 0xff, v82.l
	v_lshrrev_b32_e32 v76, 8, v82
	v_lshrrev_b32_e32 v77, 24, v82
	v_and_b16 v42.h, 0xff, v82.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v43.l, 0xff, v83.l
	v_lshrrev_b32_e32 v79, 24, v83
	v_and_b16 v43.h, 0xff, v83.h
	v_and_b16 v44.l, 0xff, v51.l
	v_lshrrev_b32_e32 v80, 8, v51
	v_lshrrev_b32_e32 v81, 24, v51
	v_and_b16 v44.h, 0xff, v51.h
	v_and_b16 v45.l, 0xff, v84.l
	v_lshrrev_b32_e32 v82, 8, v84
	v_lshrrev_b32_e32 v83, 24, v84
	v_and_b16 v45.h, 0xff, v84.h
	v_and_b16 v46.l, 0xff, v52.l
	v_lshrrev_b32_e32 v84, 8, v52
	v_lshrrev_b32_e32 v88, 24, v52
	v_and_b16 v46.h, 0xff, v52.h
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
	v_or_b16 v19.l, v30.l, v19.l
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
	v_or_b16 v23.h, v47.l, v27.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v27.l, 8, v57.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v4.h, v32.l, v24.l
	v_or_b16 v24.l, v47.h, v27.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v27.h, 8, v58.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v5.h, v32.h, v24.h
	v_or_b16 v24.h, v48.l, v28.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v28.l, 8, v59.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v3.l, v30.h, v19.h
	v_lshlrev_b16 v34.h, 8, v78.l
	v_and_b16 v54.l, 0xff, v87.l
	v_and_b16 v54.h, 0xff, v87.h
	v_or_b16 v6.l, v33.l, v25.l
	v_or_b16 v6.h, v33.h, v25.h
	v_or_b16 v19.h, v34.l, v26.l
	v_or_b16 v25.l, v48.h, v28.h
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
	v_lshlrev_b16 v47.l, 8, v79.l
	v_lshlrev_b16 v47.h, 8, v80.l
	v_lshlrev_b16 v48.l, 8, v81.l
	v_lshlrev_b16 v48.h, 8, v82.l
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
	ds_store_b16 v63, v19 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v64, v5
	ds_store_b16 v65, v7
	ds_store_b16_d16_hi v65, v7 offset:32
	ds_store_b16 v65, v8 offset:64
	ds_store_b16_d16_hi v65, v8 offset:96
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v62, v61 offset:32768
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v63, v3 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v17 offset:384
	ds_store_b16_d16_hi v63, v17 offset:416
	ds_store_b16 v63, v18 offset:448
	ds_store_b16_d16_hi v63, v18 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v63, v3 offset:16416
	ds_store_b16 v63, v4 offset:16480
	ds_store_b16_d16_hi v64, v4 offset:16384
	ds_store_b16_d16_hi v64, v5 offset:16416
	ds_store_b16 v64, v6 offset:16448
	ds_store_b16_d16_hi v64, v6 offset:16480
	ds_store_b16_d16_hi v65, v19 offset:16384
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
	v_or_b16 v19.l, v43.l, v34.h
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v5.l, v37.l, v28.h
	v_or_b16 v5.h, v37.h, v29.l
	v_or_b16 v6.l, v38.l, v29.h
	v_or_b16 v6.h, v38.h, v30.l
	v_or_b16 v7.l, v39.l, v30.h
	v_or_b16 v7.h, v39.h, v31.l
	v_or_b16 v8.l, v40.l, v31.h
	v_or_b16 v8.h, v40.h, v32.l
	v_or_b16 v17.l, v41.l, v32.h
	v_or_b16 v17.h, v41.h, v33.l
	v_or_b16 v18.l, v42.l, v33.h
	v_or_b16 v18.h, v42.h, v34.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v19.h, v43.h, v47.l
	v_or_b16 v23.l, v44.l, v47.h
	v_or_b16 v23.h, v44.h, v48.l
	v_or_b16 v24.l, v45.l, v48.h
	v_or_b16 v24.h, v45.h, v55.l
	v_or_b16 v25.l, v46.l, v55.h
	v_or_b16 v25.h, v46.h, v56.l
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
	ds_store_b16 v63, v19 offset:24576
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
	ds_store_b32 v62, v66 offset:33792
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v63, v23 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v63, v17 offset:8576
	ds_store_b16_d16_hi v63, v17 offset:8608
	ds_store_b16 v63, v18 offset:8640
	ds_store_b16_d16_hi v63, v18 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v63, v19 offset:24608
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
	v_and_b32_e32 v5, 0xe00, v1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_and_b32_e32 v4, 4, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v3, 8, v0
	s_mov_b32 s4, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_and_b32_e32 v24, 0x160, v25
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_or_b32 v23, 0x60, v25, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr24
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr23
.LBB0_3:                                ; %Flow421
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v5, s33, v49
	v_or_b32_e32 v2, s33, v2
	s_ashr_i32 s1, s5, 5
	v_or_b32_e32 v136, s26, v0
	v_lshlrev_b32_e32 v18, 2, v50
	v_mul_lo_u32 v143, v5, s1
	v_mul_lo_u32 v135, v2, s1
	v_lshlrev_b32_e32 v19, 1, v0
	v_lshlrev_b32_e32 v17, 1, v50
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 0xe00, v1
	v_and_b32_e32 v2, 0x90, v2
	v_and_b32_e32 v3, 0x110, v3
	v_and_b32_e32 v24, 0x160, v14
	v_and_b32_e32 v31, 28, v19
	v_and_or_b32 v23, 0x60, v14, v1
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v25, s34, v10
	v_xor_b32_e32 v1, v2, v3
	v_or_b32_e32 v26, v2, v24
	v_add_nc_u32_e32 v30, s27, v136
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b32_e32 v27, v23, v1
	v_and_b32_e32 v1, 32, v14
	v_xor_b32_e32 v28, 16, v26
	v_mov_b32_e32 v112, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_add3_u32 v32, 0, v18, v1
	v_mov_b32_e32 v1, s16
	v_xor_b32_e32 v29, 16, v27
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v31, v32, v31
	v_add_nc_u32_e32 v32, 0, v17
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v52, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v51, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s48, s1, 3
	s_add_i32 s47, s35, 32
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s49, 1
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s45, 0, 0x8400
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
	s_lshl_b32 s21, s17, 5
	s_mov_b32 s0, s15
	s_mov_b32 s20, s30
	s_mov_b32 s30, s35
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s35, s47, s21
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v35, s0, v26
	v_add_nc_u32_e32 v36, s0, v28
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s20, 31
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v33, s35, v11
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s0, s0, 27
	s_mov_b32 s18, s16
	s_mov_b32 s19, s14
	s_add_i32 s20, s20, s0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	v_or_b32_e32 v34, s35, v9
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v41, s35, v12
	.loc	1 369 27                        ; generate_amdgcn.py:369:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v33
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v37, s18, v27
	v_add_nc_u32_e32 v38, s18, v29
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v39, s19, v27
	v_add_nc_u32_e32 v40, s19, v29
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s18, s35, s34
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s19, s20, 5
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s18, s18, s26
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s20, s19, s34
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v42, s18, v10
	v_add_nc_u32_e32 v47, s18, v25
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	s_add_i32 s18, s18, s27
	.loc	1 370 27                        ; generate_amdgcn.py:370:27
	v_cmp_gt_i32_e64 s0, s31, v34
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v34, v143, s19, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e32 v33, 0x80000000, v41, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v41, v136, s20, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s19, s1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v106, v135, s19, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v104, s18, v25
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v48, 0x80000000, v34, vcc_lo
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v34, 0x80000000, v41, vcc_lo
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v41, s18, v10
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v117, v30, s20, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b32 v33, v33, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v35
	ds_load_b128 v[137:140], v35 offset:512
	ds_load_b128 v[184:187], v36
	ds_load_b128 v[188:191], v36 offset:512
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v35, 0x80000000, v47, s0
	ds_load_b128 v[144:147], v37
	ds_load_b128 v[152:155], v37 offset:4096
	ds_load_b128 v[192:195], v38
	ds_load_b128 v[196:199], v38 offset:4096
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[176:179], v39
	ds_load_b128 v[200:203], v39 offset:4096
	ds_load_b128 v[204:207], v40
	ds_load_b128 v[208:211], v40 offset:4096
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v38, 0x80000000, v106 :: v_dual_cndmask_b32 v47, 0x80000000, v117
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v36, 0x80000000, v41, s0
	v_cndmask_b32_e64 v37, 0x80000000, v104, s0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[212:215], v42, s[36:39], 0 offen
	buffer_load_b128 v[216:219], v35, s[36:39], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v48, v48, s[4:7], 0 offen
	buffer_load_u16 v104, v38, s[4:7], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[220:223], v36, s[36:39], 0 offen
	buffer_load_b128 v[224:227], v37, s[36:39], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s49, 1
	s_mov_b32 s16, s46
	s_cmp_lt_i32 s18, 2
	s_mov_b32 s15, s45
	s_cselect_b32 s49, s18, 0
	s_add_i32 s0, s17, 1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_lshl_b32 s19, s49, 13
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_lshl_b32 s18, s49, 10
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_add_i32 s46, s19, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[144:147], v[43:46], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[152:155], v[43:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[144:147], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[152:155], v[137:140], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[152:159], v[176:179], v[43:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[176:179], v[137:140], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[176:183], v[200:203], v[137:140], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[152:159], v[204:207], v[184:187], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[204:207], v[188:191], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[200:203], v[43:46], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[176:183], v[208:211], v[188:191], v[176:183] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v137, v157
	v_cvt_f32_i32_e32 v157, v168
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[35:42], v[192:195], v[184:187], v[35:42] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[160:167], v[208:211], v[184:187], v[160:167] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v168, v179
	v_cvt_f32_i32_e32 v133, v155
	v_cvt_f32_i32_e32 v134, v156
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v142, v162
	v_cvt_f32_i32_e32 v155, v166
	v_cvt_f32_i32_e32 v156, v167
	v_cvt_f32_i32_e32 v162, v173
	v_cvt_f32_i32_e32 v166, v177
	v_cvt_f32_i32_e32 v167, v178
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[117:124], v[196:199], v[184:187], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[192:195], v[188:191], v[125:132] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v43, v152
	v_cvt_f32_i32_e32 v44, v153
	v_cvt_f32_i32_e32 v45, v154
	v_cvt_f32_i32_e32 v141, v161
	v_cvt_f32_i32_e32 v152, v163
	v_cvt_f32_i32_e32 v153, v164
	v_cvt_f32_i32_e32 v154, v165
	v_cvt_f32_i32_e32 v163, v174
	v_cvt_f32_i32_e32 v164, v175
	v_cvt_f32_i32_e32 v165, v176
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v174, v122
	v_cvt_f32_i32_e32 v175, v123
	v_wmma_i32_16x16x16_iu8 v[144:151], v[196:199], v[188:191], v[144:151] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v138, v158
	v_cvt_f32_i32_e32 v139, v159
	v_cvt_f32_i32_e32 v140, v160
	v_cvt_f32_i32_e32 v158, v169
	v_cvt_f32_i32_e32 v159, v170
	v_cvt_f32_i32_e32 v160, v171
	v_cvt_f32_i32_e32 v161, v172
	v_cvt_f32_i32_e32 v169, v180
	v_cvt_f32_i32_e32 v170, v181
	v_cvt_f32_i32_e32 v171, v182
	v_cvt_f32_i32_e32 v172, v183
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_add_i32 s18, s18, 0
	s_mov_b32 s14, s44
	s_add_i32 s45, s18, 0x8000
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_add_i32 s44, s46, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s48
	s_mov_b32 s17, s0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(4)
	v_perm_b32 v177, v219, v215, 0x5010400
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v179, 16, v48
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v34, v34, s[40:43], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v178, v219, v215, 0x7030602
	v_perm_b32 v106, v216, v212, 0x7030602
	v_perm_b32 v122, v217, v213, 0x7030602
	v_perm_b32 v123, v218, v214, 0x5010400
	v_perm_b32 v176, v218, v214, 0x7030602
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v214, v179, v42 :: v_dual_add_nc_u32 v229, s46, v20
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(1)
	v_perm_b32 v181, v224, v220, 0x5010400
	v_perm_b32 v182, v224, v220, 0x7030602
	v_perm_b32 v183, v225, v221, 0x5010400
	v_perm_b32 v184, v225, v221, 0x7030602
	v_perm_b32 v185, v226, v222, 0x5010400
	v_perm_b32 v186, v226, v222, 0x7030602
	v_perm_b32 v187, v227, v223, 0x5010400
	v_perm_b32 v188, v227, v223, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v191, 8, v106
	v_lshrrev_b32_e32 v192, 24, v106
	v_lshrrev_b32_e32 v195, 8, v122
	v_lshrrev_b32_e32 v196, 24, v122
	v_lshrrev_b32_e32 v197, 8, v123
	v_lshrrev_b32_e32 v198, 24, v123
	v_lshrrev_b32_e32 v199, 8, v176
	v_lshrrev_b32_e32 v200, 24, v176
	v_lshrrev_b32_e32 v201, 24, v177
	v_lshrrev_b32_e32 v202, 24, v178
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v203, v179, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v204, v44, v179
	v_mul_f32_e32 v205, v43, v179
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v206, v179, v38
	v_mul_f32_e32 v207, v179, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v209, v45, v179 :: v_dual_mul_f32 v210, v179, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v211, v179, v39 :: v_dual_add_nc_u32 v228, s18, v16
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v230, s46, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v208, v133, v179 :: v_dual_add_nc_u32 v231, s46, v22
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v174, v179, v174 :: v_dual_mul_f32 v153, v153, v179
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v133.l, 8, v191.l
	v_lshlrev_b16 v133.h, 8, v192.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v215, v179, v41
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v221, v140, v179
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v140.h, 8, v201.l
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v31, v34 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v173, v47, s[40:43], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v34, v117
	v_cvt_f32_i32_e32 v117, v118
	v_cvt_f32_i32_e32 v118, v119
	v_cvt_f32_i32_e32 v119, v120
	v_cvt_f32_i32_e32 v120, v121
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v47, v216, v212, 0x5010400
	v_perm_b32 v121, v217, v213, 0x5010400
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v219, v179, v34 :: v_dual_lshlrev_b32 v180, 16, v104
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v104.l, 0xff, v122.l
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b16 v46.l, 0xff, v47.l
	v_lshrrev_b32_e32 v189, 8, v47
	v_lshrrev_b32_e32 v190, 24, v47
	v_and_b16 v46.h, 0xff, v47.h
	v_and_b16 v47.l, 0xff, v106.l
	v_and_b16 v47.h, 0xff, v106.h
	v_and_b16 v48.l, 0xff, v121.l
	v_lshrrev_b32_e32 v193, 8, v121
	v_lshrrev_b32_e32 v194, 24, v121
	v_and_b16 v48.h, 0xff, v121.h
	v_and_b16 v104.h, 0xff, v122.h
	v_and_b16 v106.l, 0xff, v123.l
	v_and_b16 v106.h, 0xff, v123.h
	v_and_b16 v121.l, 0xff, v176.l
	v_and_b16 v121.h, 0xff, v176.h
	v_and_b16 v122.l, 0xff, v177.l
	v_lshrrev_b32_e32 v176, 8, v177
	v_and_b16 v122.h, 0xff, v177.h
	v_and_b16 v123.l, 0xff, v178.l
	v_lshrrev_b32_e32 v177, 8, v178
	v_and_b16 v123.h, 0xff, v178.h
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v178, v179, v36
	v_mul_f32_e32 v218, v179, v117
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v220, v141, v179 :: v_dual_mul_f32 v223, v179, v118
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v222, v179, v119
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v152, v152, v179 :: v_dual_mul_f32 v225, v179, v120
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[34:37], v32 offset:34816
	ds_load_b128 v[38:41], v32 offset:34832
	ds_load_b128 v[42:45], v32 offset:35328
	ds_load_b128 v[117:120], v32 offset:35344
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v224, v142, v179 :: v_dual_mul_f32 v227, v180, v125
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v151, v180, v151
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v212, v137, v179
	v_mul_f32_e32 v213, v134, v179
	v_mul_f32_e32 v216, v139, v179
	v_mul_f32_e32 v217, v138, v179
	v_dual_mul_f32 v154, v154, v179 :: v_dual_mul_f32 v157, v157, v180
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v226, v179, v124 :: v_dual_mul_f32 v233, v180, v127
	v_dual_mul_f32 v175, v179, v175 :: v_dual_mul_f32 v158, v158, v180
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v156, v156, v179 :: v_dual_mul_f32 v159, v159, v180
	v_dual_mul_f32 v155, v155, v179 :: v_dual_mul_f32 v232, v180, v128
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v179, v180, v126
	v_dual_mul_f32 v234, v180, v130 :: v_dual_mul_f32 v161, v161, v180
	v_dual_mul_f32 v235, v180, v129 :: v_dual_mul_f32 v162, v162, v180
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v236, v180, v132 :: v_dual_fmac_f32 v97, v206, v37
	v_dual_mul_f32 v237, v180, v131 :: v_dual_mul_f32 v166, v166, v180
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v163, v163, v180 :: v_dual_mul_f32 v238, v180, v145
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v239, v180, v144 :: v_dual_fmac_f32 v100, v203, v34
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v165, v165, v180 :: v_dual_mul_f32 v240, v180, v147
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v241, v180, v146 :: v_dual_mul_f32 v170, v170, v180
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v167, v167, v180 :: v_dual_mul_f32 v242, v180, v149
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v243, v180, v148 :: v_dual_fmac_f32 v92, v211, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v169, v169, v180 :: v_dual_mul_f32 v244, v180, v150
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v96, v207, v36
	v_dual_fmac_f32 v110, v227, v34 :: v_dual_fmac_f32 v105, v233, v36
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v51, v151, v120
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v160, v160, v180 :: v_dual_fmac_f32 v101, v178, v35
	v_dual_mul_f32 v164, v164, v180 :: v_dual_fmac_f32 v93, v210, v39
	v_dual_mul_f32 v168, v168, v180 :: v_dual_fmac_f32 v89, v214, v41
	v_dual_mul_f32 v172, v172, v180 :: v_dual_fmac_f32 v85, v218, v43
	v_dual_mul_f32 v171, v171, v180 :: v_dual_fmac_f32 v82, v222, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v88, v215, v40 :: v_dual_fmac_f32 v79, v174, v118
	v_dual_fmac_f32 v84, v219, v42 :: v_dual_fmac_f32 v77, v226, v120
	v_dual_fmac_f32 v80, v223, v44 :: v_dual_fmac_f32 v107, v232, v37
	v_dual_fmac_f32 v78, v225, v117 :: v_dual_fmac_f32 v75, v175, v119
	v_dual_fmac_f32 v111, v179, v35 :: v_dual_fmac_f32 v68, v236, v41
	v_dual_fmac_f32 v71, v235, v38 :: v_dual_fmac_f32 v72, v234, v39
	v_dual_fmac_f32 v67, v237, v40 :: v_dual_fmac_f32 v62, v239, v42
	v_dual_fmac_f32 v63, v238, v43 :: v_dual_fmac_f32 v60, v240, v45
	v_dual_fmac_f32 v59, v241, v44 :: v_dual_fmac_f32 v54, v242, v118
	v_dual_fmac_f32 v53, v243, v117 :: v_dual_fmac_f32 v52, v244, v119
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v146, 24, v182
	v_and_b16 v127.l, 0xff, v184.l
	v_lshrrev_b32_e32 v149, 8, v184
	v_lshrrev_b32_e32 v150, 24, v184
	v_and_b16 v127.h, 0xff, v184.h
	v_lshrrev_b32_e32 v184, 8, v187
	v_and_b16 v124.l, 0xff, v181.l
	v_lshrrev_b32_e32 v142, 8, v181
	v_lshrrev_b32_e32 v144, 24, v181
	v_and_b16 v124.h, 0xff, v181.h
	v_and_b16 v128.l, 0xff, v185.l
	v_lshrrev_b32_e32 v180, 8, v185
	v_lshrrev_b32_e32 v181, 24, v185
	v_and_b16 v128.h, 0xff, v185.h
	v_lshrrev_b32_e32 v185, 24, v187
	v_and_b16 v125.l, 0xff, v182.l
	v_lshrrev_b32_e32 v145, 8, v182
	v_and_b16 v125.h, 0xff, v182.h
	v_and_b16 v126.l, 0xff, v183.l
	v_lshrrev_b32_e32 v147, 8, v183
	v_lshrrev_b32_e32 v148, 24, v183
	v_and_b16 v126.h, 0xff, v183.h
	v_and_b16 v129.l, 0xff, v186.l
	v_lshrrev_b32_e32 v182, 8, v186
	v_lshrrev_b32_e32 v183, 24, v186
	v_and_b16 v129.h, 0xff, v186.h
	v_lshrrev_b32_e32 v186, 8, v188
	v_and_b16 v130.l, 0xff, v187.l
	v_and_b16 v130.h, 0xff, v187.h
	v_lshrrev_b32_e32 v187, 24, v188
	v_lshlrev_b16 v144.h, 8, v146.l
	v_lshlrev_b16 v146.l, 8, v149.l
	v_lshlrev_b16 v149.l, 8, v184.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v132.l, 8, v189.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v149.h, 8, v185.l
	v_and_b16 v131.l, 0xff, v188.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v132.h, 8, v190.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v146.h, 8, v150.l
	v_lshlrev_b16 v150.l, 8, v186.l
	v_and_b16 v131.h, 0xff, v188.h
	v_lshlrev_b16 v150.h, 8, v187.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v134.l, 8, v193.l
	v_lshlrev_b16 v134.h, 8, v194.l
	v_lshlrev_b16 v137.l, 8, v195.l
	v_lshlrev_b16 v137.h, 8, v196.l
	v_lshlrev_b16 v138.l, 8, v197.l
	v_lshlrev_b16 v138.h, 8, v198.l
	v_lshlrev_b16 v139.l, 8, v199.l
	v_lshlrev_b16 v139.h, 8, v200.l
	v_lshlrev_b16 v140.l, 8, v176.l
	v_lshlrev_b16 v141.l, 8, v177.l
	v_lshlrev_b16 v141.h, 8, v202.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v142.l, 8, v142.l
	v_lshlrev_b16 v142.h, 8, v144.l
	v_lshlrev_b16 v144.l, 8, v145.l
	v_lshlrev_b16 v145.l, 8, v147.l
	v_lshlrev_b16 v145.h, 8, v148.l
	v_lshlrev_b16 v147.l, 8, v180.l
	v_lshlrev_b16 v147.h, 8, v181.l
	v_lshlrev_b16 v148.l, 8, v182.l
	v_lshlrev_b16 v148.h, 8, v183.l
	v_or_b16 v130.l, v130.l, v149.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v46.l, v46.l, v132.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v130.h, v130.h, v149.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v46.h, v46.h, v132.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v131.l, v131.l, v150.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v47.l, v47.l, v133.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v131.h, v131.h, v150.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v47.h, v47.h, v133.h
	v_or_b16 v48.l, v48.l, v134.l
	v_or_b16 v48.h, v48.h, v134.h
	v_or_b16 v104.l, v104.l, v137.l
	v_or_b16 v104.h, v104.h, v137.h
	v_or_b16 v106.l, v106.l, v138.l
	v_or_b16 v106.h, v106.h, v138.h
	v_or_b16 v121.l, v121.l, v139.l
	v_or_b16 v121.h, v121.h, v139.h
	v_or_b16 v122.l, v122.l, v140.l
	v_or_b16 v122.h, v122.h, v140.h
	v_or_b16 v123.l, v123.l, v141.l
	v_or_b16 v123.h, v123.h, v141.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v124.l, v124.l, v142.l
	v_or_b16 v124.h, v124.h, v142.h
	v_or_b16 v125.l, v125.l, v144.l
	v_or_b16 v125.h, v125.h, v144.h
	v_or_b16 v126.l, v126.l, v145.l
	v_or_b16 v126.h, v126.h, v145.h
	v_or_b16 v127.l, v127.l, v146.l
	v_or_b16 v127.h, v127.h, v146.h
	v_or_b16 v128.l, v128.l, v147.l
	v_or_b16 v128.h, v128.h, v147.h
	v_or_b16 v129.l, v129.l, v148.l
	v_or_b16 v129.h, v129.h, v148.h
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v173
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v31, v34 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v32 offset:34816
	ds_load_b128 v[38:41], v32 offset:34832
	ds_load_b128 v[42:45], v32 offset:35328
	ds_load_b128 v[117:120], v32 offset:35344
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_store_b32 v228, v33 offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v229, v46
	ds_store_b16_d16_hi v229, v46 offset:32
	ds_store_b16 v229, v47 offset:64
	ds_store_b16_d16_hi v229, v47 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v229, v124 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v230, v48
	ds_store_b16_d16_hi v230, v48 offset:32
	ds_store_b16 v230, v104 offset:64
	ds_store_b16_d16_hi v230, v104 offset:96
	ds_store_b16 v231, v106
	ds_store_b16_d16_hi v231, v106 offset:32
	ds_store_b16 v231, v121 offset:64
	ds_store_b16_d16_hi v231, v121 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v229, v125 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v229, v122 offset:384
	ds_store_b16_d16_hi v229, v122 offset:416
	ds_store_b16 v229, v123 offset:448
	ds_store_b16_d16_hi v229, v123 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v229, v124 offset:16416
	ds_store_b16_d16_hi v229, v125 offset:16480
	ds_store_b16 v230, v126 offset:16384
	ds_store_b16_d16_hi v230, v126 offset:16416
	ds_store_b16 v230, v127 offset:16448
	ds_store_b16_d16_hi v230, v127 offset:16480
	ds_store_b16 v231, v128 offset:16384
	ds_store_b16_d16_hi v231, v128 offset:16416
	ds_store_b16 v231, v129 offset:16448
	ds_store_b16_d16_hi v231, v129 offset:16480
	ds_store_b16 v229, v130 offset:16768
	ds_store_b16_d16_hi v229, v130 offset:16800
	ds_store_b16 v229, v131 offset:16832
	ds_store_b16_d16_hi v229, v131 offset:16864
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(36)
	v_dual_fmac_f32 v76, v205, v34 :: v_dual_fmac_f32 v109, v208, v37
	s_waitcnt lgkmcnt(33)
	v_dual_fmac_f32 v112, v204, v35 :: v_dual_fmac_f32 v87, v154, v118
	v_dual_fmac_f32 v108, v209, v36 :: v_dual_fmac_f32 v103, v212, v39
	v_dual_fmac_f32 v102, v213, v38 :: v_dual_fmac_f32 v99, v216, v41
	v_dual_fmac_f32 v98, v217, v40 :: v_dual_fmac_f32 v95, v220, v43
	v_dual_fmac_f32 v94, v221, v42 :: v_dual_fmac_f32 v91, v152, v45
	v_dual_fmac_f32 v90, v224, v44 :: v_dual_fmac_f32 v81, v155, v119
	v_dual_fmac_f32 v86, v153, v117 :: v_dual_fmac_f32 v83, v156, v120
	v_dual_fmac_f32 v115, v157, v34 :: v_dual_fmac_f32 v116, v158, v35
	v_dual_fmac_f32 v113, v159, v36 :: v_dual_fmac_f32 v114, v160, v37
	v_dual_fmac_f32 v73, v161, v38 :: v_dual_fmac_f32 v74, v162, v39
	v_dual_fmac_f32 v69, v163, v40 :: v_dual_fmac_f32 v70, v164, v41
	v_dual_fmac_f32 v65, v165, v42 :: v_dual_fmac_f32 v66, v166, v43
	v_dual_fmac_f32 v61, v167, v44 :: v_dual_fmac_f32 v64, v168, v45
	v_dual_fmac_f32 v57, v169, v117 :: v_dual_fmac_f32 v58, v170, v118
	v_dual_fmac_f32 v55, v171, v119 :: v_dual_fmac_f32 v56, v172, v120
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v25, v14 :: v_dual_mov_b32 v4, v13
	v_mov_b32_e32 v3, v15
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s45, 0, 0x8400
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v109, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v170, 0
	v_cndmask_b32_e64 v2, 0x110, 0, vcc_lo
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_or_b32_e32 v20, v1, v24
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v177, 0
	v_mov_b32_e32 v178, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v1, v1, v2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_xor_b32_e32 v21, 16, v20
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v3, s15, v20
	ds_load_b128 v[13:16], v3
	ds_load_b128 v[5:8], v3 offset:512
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b32_e32 v208, v23, v1
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v1, s15, v21
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[9:12], v1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[1:4], v1 offset:512
	v_xor_b32_e32 v209, 16, v208
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v255, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v254, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v33, s11 :: v_dual_add_nc_u32 v22, s16, v208
	v_dual_mov_b32 v32, s10 :: v_dual_add_nc_u32 v23, s16, v209
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[42:45], v22
	ds_load_b128 v[137:140], v22 offset:4096
	ds_load_b128 v[144:147], v23 offset:4096
	ds_load_b128 v[148:151], v23
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v31, s9 :: v_dual_mov_b32 v30, s8
	v_dual_mov_b32 v29, s7 :: v_dual_mov_b32 v28, s6
	v_dual_mov_b32 v27, s5 :: v_dual_mov_b32 v26, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[42:45], v[13:16], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[137:140], v[13:16], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[42:45], v[5:8], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[137:140], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[148:151], v[9:12], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[144:147], v[9:12], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[148:151], v[1:4], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[144:147], v[1:4], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v175, v36
	v_cvt_f32_i32_e32 v180, v37
	v_cvt_f32_i32_e32 v168, v38
	v_cvt_f32_i32_e32 v173, v39
	v_cvt_f32_i32_e32 v170, v40
	v_cvt_f32_i32_e32 v177, v41
	v_cvt_f32_i32_e32 v171, v117
	v_cvt_f32_i32_e32 v178, v118
	v_cvt_f32_i32_e32 v176, v119
	v_cvt_f32_i32_e32 v181, v120
	v_cvt_f32_i32_e32 v169, v121
	v_cvt_f32_i32_e32 v174, v122
	v_cvt_f32_i32_e32 v172, v123
	v_cvt_f32_i32_e32 v179, v124
	v_cvt_f32_i32_e32 v187, v125
	v_cvt_f32_i32_e32 v188, v126
	v_cvt_f32_i32_e32 v185, v127
	v_cvt_f32_i32_e32 v186, v128
	v_cvt_f32_i32_e32 v141, v129
	v_cvt_f32_i32_e32 v142, v130
	v_cvt_f32_i32_e32 v133, v131
	v_cvt_f32_i32_e32 v134, v132
	v_cvt_f32_i32_e32 v104, v26
	v_cvt_f32_i32_e32 v106, v27
	v_cvt_f32_i32_e32 v24, v28
	v_cvt_f32_i32_e32 v26, v29
	v_cvt_f32_i32_e32 v22, v30
	v_cvt_f32_i32_e32 v23, v31
	v_cvt_f32_i32_e32 v255, v32
	v_cvt_f32_i32_e32 v254, v33
	v_cvt_f32_i32_e32 v183, v34
	v_cvt_f32_i32_e32 v184, v35
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v26, off offset:12
	scratch_store_b32 off, v24, off offset:8
	scratch_store_b32 off, v23, off offset:4
	scratch_store_b32 off, v22, off
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v22, 0
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
	v_dual_mov_b32 v33, s11 :: v_dual_add_nc_u32 v22, s14, v208
	v_dual_mov_b32 v32, s10 :: v_dual_add_nc_u32 v23, s14, v209
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[42:45], v22
	ds_load_b128 v[117:120], v22 offset:4096
	ds_load_b128 v[121:124], v23 offset:4096
	ds_load_b128 v[125:128], v23
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v31, s9 :: v_dual_mov_b32 v30, s8
	v_dual_mov_b32 v29, s7 :: v_dual_mov_b32 v28, s6
	v_dual_mov_b32 v27, s5 :: v_dual_mov_b32 v26, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[42:45], v[13:16], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[117:120], v[13:16], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[42:45], v[5:8], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[117:120], v[5:8], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[125:128], v[9:12], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[121:124], v[9:12], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[125:128], v[1:4], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[121:124], v[1:4], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v196, v35
	v_cvt_f32_i32_e32 v189, v36
	v_cvt_f32_i32_e32 v197, v37
	v_cvt_f32_i32_e32 v190, v38
	v_cvt_f32_i32_e32 v198, v39
	v_cvt_f32_i32_e32 v191, v40
	v_cvt_f32_i32_e32 v199, v41
	v_cvt_f32_i32_e32 v192, v144
	v_cvt_f32_i32_e32 v200, v145
	v_cvt_f32_i32_e32 v193, v146
	v_cvt_f32_i32_e32 v201, v147
	v_cvt_f32_i32_e32 v194, v148
	v_cvt_f32_i32_e32 v202, v149
	v_cvt_f32_i32_e32 v195, v150
	v_cvt_f32_i32_e32 v203, v151
	v_cvt_f32_i32_e32 v210, v154
	v_cvt_f32_i32_e32 v211, v155
	v_cvt_f32_i32_e32 v206, v156
	v_cvt_f32_i32_e32 v207, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v148, v160
	v_cvt_f32_i32_e32 v149, v161
	v_cvt_f32_i32_e32 v137, v26
	v_cvt_f32_i32_e32 v138, v27
	v_cvt_f32_i32_e32 v27, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v24, v30
	v_cvt_f32_i32_e32 v26, v31
	v_cvt_f32_i32_e32 v22, v32
	v_cvt_f32_i32_e32 v23, v33
	v_cvt_f32_i32_e32 v182, v34
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
	v_add_lshl_u32 v1, v143, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v2, v136, s4, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s5, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 394 39                        ; generate_amdgcn.py:394:39
	v_add3_u32 v221, s26, s27, v0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v5, v135, s0, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v4, 28, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v6, v221, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v3, 32, v25
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v28, off offset:52
	scratch_store_b32 off, v27, off offset:48
	scratch_store_b32 off, v26, off offset:28
	scratch_store_b32 off, v24, off offset:24
	scratch_store_b32 off, v23, off offset:20
	scratch_store_b32 off, v22, off offset:16
	v_mov_b32_e32 v230, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_add3_u32 v3, 0, v18, v3
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v204, 0, v17
	v_dual_mov_b32 v232, 0 :: v_dual_add_nc_u32 v9, s45, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v205, v3, v4
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_dual_cndmask_b32 v4, 0x80000000, v6 :: v_dual_cndmask_b32 v3, 0x80000000, v5
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v212, v1, s[12:15], 0 offen
	buffer_load_u16 v233, v3, s[12:15], 0 offen
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v10, s45, v21
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v147, 0
	v_mov_b32_e32 v146, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v140, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v231, 0 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v205, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v1, v4, s[28:31], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v2, 0, 1, s3
	v_mov_b32_e32 v218, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[25:28], v204 offset:34816
	ds_load_b128 v[17:20], v204 offset:34832
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[5:8], v204 offset:35328
	ds_load_b128 v[1:4], v204 offset:35344
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v205, v11 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[41:44], v9
	ds_load_b128 v[37:40], v9 offset:512
	ds_load_b128 v[45:48], v10
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_b128 v[33:36], v10 offset:512
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v9, 0
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
	v_add_nc_u32_e32 v9, s46, v208
	v_add_nc_u32_e32 v10, s46, v209
	ds_load_b128 v[21:24], v9
	ds_load_b128 v[29:32], v9 offset:4096
	ds_load_b128 v[117:120], v10 offset:4096
	ds_load_b128 v[121:124], v10
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v13, s8
	v_dual_mov_b32 v15, s10 :: v_dual_mov_b32 v14, s9
	v_dual_mov_b32 v12, s7 :: v_dual_mov_b32 v11, s6
	v_dual_mov_b32 v10, s5 :: v_dual_mov_b32 v9, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[21:24], v[41:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[160:167], v[29:32], v[41:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[234:241], v[21:24], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[121:124], v[45:48], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[117:120], v[45:48], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[234:241], v[121:124], v[33:36], v[234:241] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[117:120], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v222, v152
	v_cvt_f32_i32_e32 v226, v153
	v_cvt_f32_i32_e32 v214, v154
	v_cvt_f32_i32_e32 v219, v155
	v_cvt_f32_i32_e32 v216, v156
	v_cvt_f32_i32_e32 v224, v157
	v_cvt_f32_i32_e32 v217, v160
	v_cvt_f32_i32_e32 v225, v161
	v_cvt_f32_i32_e32 v223, v162
	v_cvt_f32_i32_e32 v227, v163
	v_cvt_f32_i32_e32 v213, v164
	v_cvt_f32_i32_e32 v218, v165
	v_cvt_f32_i32_e32 v215, v166
	v_cvt_f32_i32_e32 v220, v167
	v_cvt_f32_i32_e32 v228, v234
	v_cvt_f32_i32_e32 v229, v235
	v_cvt_f32_i32_e32 v164, v236
	v_cvt_f32_i32_e32 v165, v237
	v_cvt_f32_i32_e32 v156, v238
	v_cvt_f32_i32_e32 v157, v239
	v_cvt_f32_i32_e32 v153, v240
	v_cvt_f32_i32_e32 v152, v241
	v_cvt_f32_i32_e32 v146, v9
	v_cvt_f32_i32_e32 v147, v10
	v_cvt_f32_i32_e32 v139, v11
	v_cvt_f32_i32_e32 v140, v12
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v9, v16
	v_cvt_f32_i32_e32 v231, v150
	v_cvt_f32_i32_e32 v232, v151
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v12, off offset:44
	scratch_store_b32 off, v11, off offset:40
	scratch_store_b32 off, v10, off offset:36
	scratch_store_b32 off, v9, off offset:32
	ds_load_b128 v[29:32], v204 offset:34816
	ds_load_b128 v[21:24], v204 offset:34832
	ds_load_b128 v[13:16], v204 offset:35328
	ds_load_b128 v[9:12], v204 offset:35344
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v145, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v144, v254 :: v_dual_add_nc_u32 v117, s44, v209
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	ds_load_b128 v[160:163], v117 offset:4096
	ds_load_b128 v[244:247], v117
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v117, s44, v208
	v_mov_b32_e32 v145, v255
	ds_load_b128 v[248:251], v117 offset:4096
	ds_load_b128 v[252:255], v117
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v124, s11 :: v_dual_mov_b32 v123, s10
	v_mov_b32_e32 v120, s7
	v_dual_mov_b32 v122, s9 :: v_dual_mov_b32 v121, s8
	v_dual_mov_b32 v118, s5 :: v_dual_mov_b32 v119, s6
	v_mov_b32_e32 v117, s4
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[248:251], v[41:44], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[236:243], v[252:255], v[41:44], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[160:163], v[45:48], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[236:243], v[244:247], v[45:48], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[252:255], v[37:40], v[117:124] neg_lo:[1,1,0]
	v_mov_b32_e32 v254, v144
	v_wmma_i32_16x16x16_iu8 v[117:124], v[248:251], v[37:40], v[117:124] neg_lo:[1,1,0]
	v_mov_b32_e32 v255, v145
	v_wmma_i32_16x16x16_iu8 v[41:48], v[244:247], v[33:36], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v230, v236
	v_cvt_f32_i32_e32 v249, v237
	v_wmma_i32_16x16x16_iu8 v[117:124], v[160:163], v[33:36], v[117:124] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v247, v238
	v_cvt_f32_i32_e32 v252, v239
	v_cvt_f32_i32_e32 v239, v240
	v_cvt_f32_i32_e32 v246, v241
	v_cvt_f32_i32_e32 v242, v242
	v_cvt_f32_i32_e32 v250, v243
	v_cvt_f32_i32_e32 v243, v125
	v_cvt_f32_i32_e32 v251, v126
	v_cvt_f32_i32_e32 v248, v127
	v_cvt_f32_i32_e32 v253, v128
	v_cvt_f32_i32_e32 v235, v129
	v_cvt_f32_i32_e32 v244, v130
	v_cvt_f32_i32_e32 v238, v131
	v_cvt_f32_i32_e32 v245, v132
	v_cvt_f32_i32_e32 v236, v41
	v_cvt_f32_i32_e32 v240, v42
	v_cvt_f32_i32_e32 v237, v43
	v_cvt_f32_i32_e32 v241, v44
	v_cvt_f32_i32_e32 v166, v45
	v_cvt_f32_i32_e32 v167, v46
	v_cvt_f32_i32_e32 v162, v47
	v_cvt_f32_i32_e32 v163, v48
	v_cvt_f32_i32_e32 v160, v117
	v_cvt_f32_i32_e32 v161, v118
	v_cvt_f32_i32_e32 v154, v119
	v_cvt_f32_i32_e32 v155, v120
	v_cvt_f32_i32_e32 v150, v121
	v_cvt_f32_i32_e32 v151, v122
	v_cvt_f32_i32_e32 v144, v123
	v_cvt_f32_i32_e32 v145, v124
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
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s33, s33, s27
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s0, s34
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v33, v143, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v34, v136, s1, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s4, -1, 0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v143.l, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_mov_b16_e64 v143.h, v233.l
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v136, s27, v49
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v209.h, v143.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v40, v187, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v208.h, v143.l
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v35, v34, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v34, v135, s0, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v234.h, v143.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v40, v40, v25, v110
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v212.h, v143.l
	v_mov_b16_e64 v233.h, v143.l
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v36, 0x80000000, v34, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v110, v40, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v39, v188, v143
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v159, v159, v143
	v_mul_f32_e32 v158, v158, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v39, v39, v26, v111
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v159, v159, v22, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v158, v158, v21, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v111, v111, v39, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v74, v74, v159, s2
	v_cndmask_b32_e64 v73, v73, v158, s2
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v34, v33, s[12:15], 0 offen
	buffer_load_u16 v33, v36, s[12:15], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v36, v221, s1, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v205, v35 offset:34816
	s_waitcnt lgkmcnt(0)
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_barrier
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_mov_b16_e64 v35.h, v212.l
	v_mov_b16_e64 v35.l, v143.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v38, v210, v143
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v37, v36, s[28:31], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v36, 1, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v221.h, v143.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v45, v196, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v48, v183, v35
	v_mul_f32_e32 v174, v174, v35
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v135, s33, s26, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v36, v211, v143
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v169, v169, v35
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v25, v48, v25, v100
	s_mov_b32 s26, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v36, v36, v30, v116
	v_fma_f32 v30, v45, v30, v112
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v116, v116, v36, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v112, v112, v30, s2
	v_cndmask_b32_e64 v30, v100, v25, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v25, 16, v34
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v121, v173, v35
	v_mul_f32_e32 v130, v171, v35
	v_mul_f32_e32 v44, v185, v143
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v46, v182, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v184, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v49, v197, v35
	v_mul_f32_e32 v50, v189, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v117, v180, v35
	v_mul_f32_e32 v118, v175, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v119, v198, v35
	v_mul_f32_e32 v120, v190, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v122, v168, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v123, v199, v35
	v_mul_f32_e32 v124, v191, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v125, v177, v35
	v_mul_f32_e32 v126, v170, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v127, v200, v35
	v_mul_f32_e32 v128, v192, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v129, v178, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v131, v201, v35
	v_mul_f32_e32 v132, v193, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v168, v181, v35
	v_mul_f32_e32 v170, v176, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v171, v202, v35
	v_mul_f32_e32 v173, v194, v35
	v_mul_f32_e32 v175, v203, v35
	v_mul_f32_e32 v176, v195, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v177, v179, v35
	v_mul_f32_e32 v35, v172, v35
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v48, v121, v18, v93
	v_fma_f32 v121, v130, v5, v84
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v130, v174, v2, v79
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v45, v119, v22, v103
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v35, v35, v3, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v84, v84, v121, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v121, v230, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v27, v105
	v_fma_f32 v27, v118, v27, v96
	v_fma_f32 v118, v125, v20, v89
	v_fma_f32 v125, v170, v7, v80
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v79, v130, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v130, v223, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v119, v127, v14, v95
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v41, v207, v143
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v43, v186, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v89, v118, s2
	v_cndmask_b32_e64 v80, v80, v125, s2
	v_cndmask_b32_e64 v89, v95, v119, s2
	v_cndmask_b32_e64 v119, v75, v35, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v75, 16, v33
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v38, v38, v29, v115
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v125, v239, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v29, v46, v29, v76
	v_fma_f32 v46, v120, v21, v102
	v_fma_f32 v120, v128, v13, v94
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v42, v206, v143
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v28, v107
	v_fma_f32 v28, v117, v28, v97
	v_fma_f32 v117, v126, v19, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v95, v94, v120, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v120, v249, v25
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v41, v41, v32, v114
	v_fma_f32 v32, v49, v32, v109
	v_fma_f32 v49, v123, v24, v99
	v_fma_f32 v123, v131, v16, v91
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v174, v245, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v131, v175, v12, v83
	v_fma_f32 v42, v42, v31, v113
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v115, v115, v38, s2
	v_cndmask_b32_e64 v38, v93, v48, s2
	v_cndmask_b32_e64 v88, v88, v117, s2
	v_cndmask_b32_e64 v117, v83, v131, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v83, v222, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v31, v50, v31, v108
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v93, v217, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v50, v124, v23, v98
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v170, v244, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v127, v171, v10, v87
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v171, v235, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v124, v132, v15, v90
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v100, v109, v32, s2
	v_cndmask_b32_e64 v32, v96, v27, s2
	v_cndmask_b32_e64 v96, v103, v45, s2
	v_cndmask_b32_e64 v76, v76, v29, s2
	v_cndmask_b32_e64 v103, v90, v124, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v124, v246, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v26, v47, v26, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v114, v114, v41, s2
	v_cndmask_b32_e64 v113, v113, v42, s2
	v_cndmask_b32_e64 v107, v107, v43, s2
	v_cndmask_b32_e64 v105, v105, v44, s2
	v_cndmask_b32_e64 v29, v101, v26, s2
	v_cndmask_b32_e64 v101, v108, v31, s2
	v_cndmask_b32_e64 v108, v87, v127, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v127, v242, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v122, v17, v92
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v99, v99, v49, s2
	v_cndmask_b32_e64 v98, v98, v50, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[41:44], v204 offset:34832
	ds_load_b128 v[33:36], v204 offset:35328
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v92, v47, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[47:50], v204 offset:34816
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v132, v176, v11, v81
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v172, v220, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v128, v173, v9, v86
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v173, v215, v25
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v126, v168, v8, v82
	v_fma_f32 v168, v177, v4, v77
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v97, v28, s2
	v_cndmask_b32_e64 v97, v102, v46, s2
	v_cndmask_b32_e64 v109, v86, v128, s2
	v_cndmask_b32_e64 v118, v81, v132, s2
	v_cndmask_b32_e64 v81, v77, v168, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v45, v232, v25
	v_mul_f32_e32 v46, v231, v25
	v_mul_f32_e32 v77, v226, v25
	v_mul_f32_e32 v86, v219, v25
	v_mul_f32_e32 v87, v214, v25
	v_mul_f32_e32 v90, v224, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v132, v248, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v122, v129, v6, v85
	v_fma_f32 v129, v169, v1, v78
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v91, v123, s2
	v_cndmask_b32_e64 v82, v82, v126, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v123, v247, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v85, v85, v122, s2
	v_cndmask_b32_e64 v78, v78, v129, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v122, v252, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v91, v216, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v126, v250, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v92, v225, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v128, v251, v25
	v_mul_f32_e32 v129, v243, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v94, v227, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v131, v253, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v168, v218, v25
	v_mul_f32_e32 v169, v213, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v175, v238, v25 :: v_dual_mul_f32 v176, v229, v75
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[25:28], v204 offset:35344
	v_mul_f32_e32 v177, v228, v75
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v46, v46, v47, v30
	v_fma_f32 v45, v45, v48, v29
	v_fma_f32 v83, v83, v49, v32
	v_fma_f32 v77, v77, v50, v31
	v_fma_f32 v87, v87, v41, v39
	v_fma_f32 v86, v86, v42, v38
	v_fma_f32 v90, v90, v44, v40
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v182, v91, v43, v88
	v_fma_f32 v183, v93, v33, v84
	v_fma_f32 v184, v92, v34, v85
	v_fma_f32 v185, v94, v36, v82
	v_fma_f32 v177, v177, v47, v110
	v_fma_f32 v176, v176, v48, v111
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v186, v29, v45, s3
	v_cndmask_b32_e64 v187, v30, v46, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v205, v37 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[91:94], v204 offset:34816
	ds_load_b128 v[45:48], v204 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v188, v31, v77, s3
	v_cndmask_b32_e64 v189, v32, v83, s3
	v_cndmask_b32_e64 v190, v38, v86, s3
	v_cndmask_b32_e64 v191, v39, v87, s3
	v_cndmask_b32_e64 v192, v40, v90, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[37:40], v204 offset:35328
	ds_load_b128 v[29:32], v204 offset:35344
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v130, v130, v35, v80
	v_fma_f32 v169, v169, v25, v78
	v_fma_f32 v168, v168, v26, v79
	v_fma_f32 v173, v173, v27, v119
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v182, v88, v182, s3
	v_cndmask_b32_e64 v83, v80, v130, s3
	v_cndmask_b32_e64 v77, v78, v169, s3
	v_cndmask_b32_e64 v80, v111, v176, s3
	v_cndmask_b32_e64 v78, v110, v177, s3
	v_cndmask_b32_e64 v86, v82, v185, s3
	v_cndmask_b32_e64 v82, v79, v168, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v88, v123, v93, v101
	v_fma_f32 v110, v122, v94, v100
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v111, v125, v45, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v119, v173, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v119, v124, v46, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v85, v184, s3
	v_cndmask_b32_e64 v87, v84, v183, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v122, v129, v37, v95
	v_fma_f32 v123, v128, v38, v89
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v128, v175, v31, v118
	v_fma_f32 v129, v174, v32, v117
	v_fma_f32 v124, v132, v39, v103
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v97, v97, v111, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v84, v121, v91, v76
	v_fma_f32 v85, v120, v92, v112
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v111, v117, v129, s3
	v_cndmask_b32_e64 v117, v118, v128, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v179, v236, v75
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v120, v127, v47, v98
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v103, v124, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v121, v126, v48, v99
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v124, 0xbfb8aa3b, v117
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v91, v179, v91, v115
	v_fma_f32 v126, v171, v29, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v101, v101, v88, s3
	v_cndmask_b32_e64 v98, v98, v120, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v180, v241, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v88, v115, v91, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v181, v237, v75
	v_mul_f32_e32 v178, v240, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v76, v84, s3
	v_cndmask_b32_e64 v100, v100, v110, s3
	v_cndmask_b32_e64 v109, v109, v126, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v115, 0xbfb8aa3b, v98
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v94, v180, v94, v114
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v126, 0xbfb8aa3b, v88
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v93, v181, v93, v113
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v112, v112, v85, s3
	v_cndmask_b32_e64 v96, v96, v119, s3
	v_cndmask_b32_e64 v99, v99, v121, s3
	v_cndmask_b32_e64 v85, v114, v94, s3
	v_cndmask_b32_e64 v84, v113, v93, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v91, 0xbfb8aa3b, v76
	v_dual_mul_f32 v94, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v113, 0xbfb8aa3b, v97
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v92, v178, v92, v116
	v_fma_f32 v125, v131, v40, v102
	v_fma_f32 v127, v170, v30, v108
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v89, v123, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v93, 0xbfb8aa3b, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v116, v92, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v92, 0xbfb8aa3b, v112
	v_mul_f32_e32 v114, 0xbfb8aa3b, v96
	v_dual_mul_f32 v116, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v119, 0xbfb8aa3b, v110
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v91
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v94
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v95, v95, v122, s3
	v_cndmask_b32_e64 v102, v102, v125, s3
	v_cndmask_b32_e64 v108, v108, v127, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v91, 0, 0x42800000, s0
	v_cndmask_b32_e64 v94, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v93
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v114
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v116
	v_dual_mul_f32 v118, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v121, 0xbfb8aa3b, v102
	v_dual_mul_f32 v120, 0xbfb8aa3b, v103 :: v_dual_mul_f32 v123, 0xbfb8aa3b, v108
	v_mul_f32_e32 v122, 0xbfb8aa3b, v109
	v_dual_mul_f32 v129, 0xbfb8aa3b, v85 :: v_dual_fmac_f32 v94, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0x42800000, s4
	v_cndmask_b32_e64 v114, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v113
	v_cndmask_b32_e64 v116, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v115
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v119
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v76
	v_dual_mul_f32 v125, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v128, 0xbfb8aa3b, v84
	v_dual_mul_f32 v127, 0xbfb8aa3b, v89 :: v_dual_fmac_f32 v92, 0xbfb8aa3b, v112
	v_cndmask_b32_e64 v113, 0, 0x42800000, s6
	v_cndmask_b32_e64 v115, 0, 0x42800000, s8
	v_cndmask_b32_e64 v119, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v118
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v121
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v120
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v123
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v122
	v_dual_fmac_f32 v93, 0xbfb8aa3b, v101 :: v_dual_fmac_f32 v114, 0xbfb8aa3b, v96
	v_fmac_f32_e32 v116, 0xbfb8aa3b, v99
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v94, v94
	v_cndmask_b32_e64 v118, 0, 0x42800000, s10
	v_cndmask_b32_e64 v121, 0, 0x42800000, s11
	v_cndmask_b32_e64 v120, 0, 0x42800000, s12
	v_cndmask_b32_e64 v123, 0, 0x42800000, s13
	v_cndmask_b32_e64 v122, 0, 0x42800000, s14
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v125
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v124
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v127
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v126
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v113, 0xbfb8aa3b, v97 :: v_dual_fmac_f32 v118, 0xbfb8aa3b, v95
	v_dual_fmac_f32 v115, 0xbfb8aa3b, v98 :: v_dual_fmac_f32 v120, 0xbfb8aa3b, v103
	v_dual_fmac_f32 v119, 0xbfb8aa3b, v110 :: v_dual_fmac_f32 v122, 0xbfb8aa3b, v109
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v114, v114
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v172, v172, v28, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v125, 0, 0x42800000, s15
	v_cndmask_b32_e64 v124, 0, 0x42800000, s16
	v_cndmask_b32_e64 v127, 0, 0x42800000, s17
	v_cndmask_b32_e64 v126, 0, 0x42800000, s18
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v129
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v128
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v168, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v169, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v121, 0xbfb8aa3b, v102 :: v_dual_fmac_f32 v124, 0xbfb8aa3b, v117
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v119, v119
	v_ldexp_f32 v91, v91, v131
	v_ldexp_f32 v94, v94, v132
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v108
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v81, v172, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v129, 0, 0x42800000, s19
	v_cndmask_b32_e64 v128, 0, 0x42800000, s20
	v_cndmask_b32_e64 v170, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v171, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v172, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v173, 0, 0xffffffc0, s9
	v_dual_fmac_f32 v125, 0xbfb8aa3b, v111 :: v_dual_fmac_f32 v126, 0xbfb8aa3b, v88
	v_dual_fmac_f32 v127, 0xbfb8aa3b, v89 :: v_dual_fmac_f32 v128, 0xbfb8aa3b, v84
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v121, v121
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v122, v122
	v_ldexp_f32 v92, v92, v130
	v_ldexp_f32 v93, v93, v168
	v_ldexp_f32 v114, v114, v169
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v91, 1.0, v91 :: v_dual_add_f32 v94, 1.0, v94
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v123, v123
	v_cndmask_b32_e64 v174, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v175, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v176, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v177, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v178, 0, 0xffffffc0, s14
	v_dual_fmac_f32 v129, 0xbfb8aa3b, v85 :: v_dual_add_f32 v92, 1.0, v92
	v_exp_f32_e32 v125, v125
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v126, v126
	v_ldexp_f32 v113, v113, v170
	v_ldexp_f32 v116, v116, v171
	v_ldexp_f32 v115, v115, v172
	v_ldexp_f32 v119, v119, v173
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v93, 1.0, v93 :: v_dual_add_f32 v114, 1.0, v114
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v132, null, v91, v91, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v179, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v180, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v181, 0, 0xffffffc0, s17
	v_cndmask_b32_e64 v183, 0, 0xffffffc0, s18
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v128, v128
	v_ldexp_f32 v118, v118, v174
	v_ldexp_f32 v121, v121, v175
	v_ldexp_f32 v120, v120, v176
	v_ldexp_f32 v123, v123, v177
	v_ldexp_f32 v122, v122, v178
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v113, 1.0, v113 :: v_dual_add_f32 v118, 1.0, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v115, 1.0, v115 :: v_dual_add_f32 v120, 1.0, v120
	v_dual_add_f32 v116, 1.0, v116 :: v_dual_add_f32 v119, 1.0, v119
	v_add_f32_e32 v122, 1.0, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v130, null, v92, v92, v112
	v_div_scale_f32 v169, null, v94, v94, v100
	v_div_scale_f32 v171, null, v93, v93, v101
	v_rcp_f32_e32 v204, v132
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v184, 0, 0xffffffc0, s19
	v_cndmask_b32_e64 v185, 0, 0xffffffc0, s20
	v_ldexp_f32 v125, v125, v179
	v_ldexp_f32 v124, v124, v180
	v_ldexp_f32 v127, v127, v181
	v_ldexp_f32 v126, v126, v183
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v121, 1.0, v121
	v_add_f32_e32 v123, 1.0, v123
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v173, null, v114, v114, v96
	v_div_scale_f32 v175, null, v113, v113, v97
	v_div_scale_f32 v177, null, v116, v116, v99
	v_div_scale_f32 v179, null, v115, v115, v98
	v_div_scale_f32 v181, null, v119, v119, v110
	v_rcp_f32_e32 v203, v130
	v_rcp_f32_e32 v205, v169
	v_rcp_f32_e32 v206, v171
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v129, v129, v184
	v_ldexp_f32 v128, v128, v185
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v124, 1.0, v124 :: v_dual_add_f32 v125, 1.0, v125
	v_add_f32_e32 v126, 1.0, v126
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v184, null, v118, v118, v95
	v_div_scale_f32 v193, null, v121, v121, v102
	v_div_scale_f32 v194, null, v120, v120, v103
	v_div_scale_f32 v195, null, v123, v123, v108
	v_rcp_f32_e32 v207, v173
	v_rcp_f32_e32 v210, v175
	v_rcp_f32_e32 v211, v177
	v_rcp_f32_e32 v213, v179
	v_rcp_f32_e32 v214, v181
	v_fma_f32 v228, -v132, v204, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v127, 1.0, v127 :: v_dual_add_f32 v128, 1.0, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v196, null, v122, v122, v109
	v_div_scale_f32 v197, null, v125, v125, v111
	v_div_scale_f32 v198, null, v124, v124, v117
	v_rcp_f32_e32 v215, v184
	v_rcp_f32_e32 v216, v193
	v_rcp_f32_e32 v217, v194
	v_rcp_f32_e32 v218, v195
	v_fma_f32 v227, -v130, v203, 1.0
	v_fma_f32 v229, -v169, v205, 1.0
	v_fma_f32 v230, -v171, v206, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v129, 1.0, v129 :: v_dual_fmac_f32 v204, v228, v204
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v199, null, v127, v127, v89
	v_div_scale_f32 v200, null, v126, v126, v88
	v_div_scale_f32 v202, null, v128, v128, v84
	v_rcp_f32_e32 v219, v196
	v_rcp_f32_e32 v220, v197
	v_rcp_f32_e32 v222, v198
	v_rcp_f32_e32 v223, v199
	v_fma_f32 v231, -v173, v207, 1.0
	v_fma_f32 v228, -v177, v211, 1.0
	v_fmac_f32_e32 v206, v230, v206
	v_div_scale_f32 v201, null, v129, v129, v85
	v_fma_f32 v230, -v181, v214, 1.0
	v_fmac_f32_e32 v203, v227, v203
	v_fma_f32 v227, -v175, v210, 1.0
	v_fmac_f32_e32 v205, v229, v205
	v_fma_f32 v229, -v179, v213, 1.0
	v_rcp_f32_e32 v224, v200
	v_rcp_f32_e32 v225, v201
	v_rcp_f32_e32 v226, v202
	v_fmac_f32_e32 v210, v227, v210
	v_fma_f32 v227, -v193, v216, 1.0
	v_fmac_f32_e32 v211, v228, v211
	v_fma_f32 v228, -v194, v217, 1.0
	v_fmac_f32_e32 v213, v229, v213
	v_fma_f32 v229, -v195, v218, 1.0
	v_fmac_f32_e32 v207, v231, v207
	v_fma_f32 v231, -v184, v215, 1.0
	v_div_scale_f32 v168, s6, v76, v91, v76
	v_fmac_f32_e32 v214, v230, v214
	v_fma_f32 v230, -v196, v219, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v215, v231, v215
	v_fma_f32 v231, -v197, v220, 1.0
	v_fmac_f32_e32 v216, v227, v216
	v_fma_f32 v227, -v198, v222, 1.0
	v_fmac_f32_e32 v217, v228, v217
	v_fma_f32 v228, -v199, v223, 1.0
	v_div_scale_f32 v131, vcc_lo, v112, v92, v112
	v_fmac_f32_e32 v218, v229, v218
	v_fma_f32 v229, -v200, v224, 1.0
	v_fmac_f32_e32 v219, v230, v219
	v_fma_f32 v230, -v201, v225, 1.0
	v_fmac_f32_e32 v220, v231, v220
	v_fma_f32 v231, -v202, v226, 1.0
	v_fmac_f32_e32 v223, v228, v223
	v_mul_f32_e32 v228, v168, v204
	v_div_scale_f32 v185, s0, v95, v118, v95
	v_dual_fmac_f32 v222, v227, v222 :: v_dual_fmac_f32 v225, v230, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v230, -v132, v228, v168
	v_dual_mul_f32 v227, v131, v203 :: v_dual_fmac_f32 v224, v229, v224
	v_div_scale_f32 v170, s7, v100, v94, v100
	v_fmac_f32_e32 v228, v230, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v229, -v130, v227, v131
	v_div_scale_f32 v172, s8, v101, v93, v101
	v_div_scale_f32 v174, s9, v96, v114, v96
	v_fmac_f32_e32 v227, v229, v203
	v_fma_f32 v132, -v132, v228, v168
	v_mul_f32_e32 v168, v170, v205
	v_div_scale_f32 v176, s10, v97, v113, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v130, -v130, v227, v131
	v_div_scale_f32 v180, s4, v98, v115, v98
	v_div_scale_f32 v178, s5, v99, v116, v99
	v_div_fmas_f32 v130, v130, v203, v227
	v_fma_f32 v227, -v169, v168, v170
	v_mul_f32_e32 v203, v172, v206
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v226, v231, v226
	v_div_fmas_f32 v132, v132, v204, v228
	v_fmac_f32_e32 v168, v227, v205
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v204, -v171, v203, v172
	v_div_scale_f32 v231, s11, v102, v121, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v169, -v169, v168, v170
	v_div_fixup_f32 v92, v130, v92, v112
	v_fmac_f32_e32 v203, v204, v206
	v_mul_f32_e32 v112, v180, v213
	v_div_scale_f32 v228, s6, v111, v125, v111
	v_div_fmas_f32 v168, v169, v205, v168
	v_mul_f32_e32 v169, v174, v207
	v_mul_f32_e32 v205, v176, v210
	v_fma_f32 v171, -v171, v203, v172
	v_mul_f32_e32 v172, v178, v211
	v_div_fixup_f32 v91, v132, v91, v76
	v_fma_f32 v130, -v173, v169, v174
	v_mul_f32_e32 v132, v231, v216
	v_div_scale_f32 v183, s1, v110, v119, v110
	v_div_fixup_f32 v94, v168, v94, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v169, v130, v207
	v_fma_f32 v130, -v175, v205, v176
	v_fma_f32 v100, -v177, v172, v178
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v229, s12, v103, v120, v103
	v_fma_f32 v76, -v173, v169, v174
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v205, v130, v210 :: v_dual_fmac_f32 v172, v100, v211
	v_div_fmas_f32 v171, v171, v206, v203
	s_mov_b32 vcc_lo, s9
	v_dual_mul_f32 v203, v183, v214 :: v_dual_mul_f32 v232, v229, v217
	v_mul_f32_e32 v174, v228, v220
	v_div_fmas_f32 v169, v76, v207, v169
	v_fma_f32 v76, -v175, v205, v176
	v_div_scale_f32 v230, s13, v108, v123, v108
	v_div_scale_f32 v131, s14, v109, v122, v109
	v_div_scale_f32 v227, s15, v117, v124, v117
	v_fma_f32 v168, -v179, v112, v180
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v206, v185, v215
	v_div_fmas_f32 v176, v76, v210, v205
	v_fma_f32 v76, -v181, v203, v183
	v_dual_mul_f32 v173, v230, v218 :: v_dual_mul_f32 v130, v131, v219
	v_dual_mul_f32 v207, v227, v222 :: v_dual_fmac_f32 v112, v168, v213
	v_fma_f32 v168, -v193, v132, v231
	v_div_scale_f32 v170, s17, v88, v126, v88
	v_fma_f32 v100, -v184, v206, v185
	v_fmac_f32_e32 v203, v76, v214
	v_fma_f32 v76, -v194, v232, v229
	v_fmac_f32_e32 v132, v168, v216
	v_fma_f32 v168, -v196, v130, v131
	v_fma_f32 v177, -v177, v172, v178
	v_div_scale_f32 v204, s16, v89, v127, v89
	v_dual_mul_f32 v205, v170, v224 :: v_dual_fmac_f32 v206, v100, v215
	v_fma_f32 v100, -v195, v173, v230
	v_dual_fmac_f32 v232, v76, v217 :: v_dual_mul_f32 v165, v165, v75
	v_fma_f32 v76, -v197, v174, v228
	v_fma_f32 v179, -v179, v112, v180
	v_dual_fmac_f32 v130, v168, v219 :: v_dual_mul_f32 v21, v186, v92
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v181, -v181, v203, v183
	v_div_fixup_f32 v92, v171, v93, v101
	v_div_fmas_f32 v93, v177, v211, v172
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v175, v204, v223
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v173, v100, v218 :: v_dual_mul_f32 v92, v189, v92
	v_fma_f32 v100, -v198, v207, v227
	v_dual_fmac_f32 v174, v76, v220 :: v_dual_mul_f32 v91, v187, v91
	v_fma_f32 v184, -v184, v206, v185
	v_div_fixup_f32 v96, v169, v114, v96
	v_div_fmas_f32 v101, v179, v213, v112
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v193, -v193, v132, v231
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v209.l, v21.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v97, v176, v113, v97
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v94, v188, v94
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v112, v181, v214, v203
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v194, -v194, v232, v229
	v_fma_f32 v168, -v199, v175, v204
	v_dual_fmac_f32 v207, v100, v222 :: v_dual_mul_f32 v96, v190, v96
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v208.l, v91.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v93, v93, v116, v99
	v_div_fmas_f32 v99, v184, v215, v206
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v195, -v195, v173, v230
	v_fma_f32 v76, -v200, v205, v170
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v164, v164, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v98, v101, v115, v98
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v101, 1, v209
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v97, v191, v97
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v221.l, v94.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v113, v193, v216, v132
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v131, -v196, v130, v131
	v_div_fixup_f32 v110, v112, v119, v110
	v_div_fmas_f32 v114, v194, v217, v232
	s_mov_b32 vcc_lo, s13
	v_dual_fmac_f32 v175, v168, v223 :: v_dual_and_b32 v112, 1, v208
	v_fma_f32 v197, -v197, v174, v228
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v234.l, v96.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v95, v99, v118, v95
	v_div_fmas_f32 v115, v195, v218, v173
	s_mov_b32 vcc_lo, s14
	v_dual_fmac_f32 v205, v76, v224 :: v_dual_mul_f32 v98, v182, v98
	v_fma_f32 v198, -v198, v207, v227
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v21, v21
	v_mov_b16_e64 v212.l, v92.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v93, v192, v93
	v_dual_mul_f32 v90, v90, v110 :: v_dual_and_b32 v99, 1, v221
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v21, v21, v101, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v101, v113, v121, v102
	v_div_fmas_f32 v110, v131, v219, v130
	s_mov_b32 vcc_lo, s6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v91, v91
	v_add3_u32 v91, v91, v112, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v87, v87, v95 :: v_dual_and_b32 v112, 1, v234
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v95, v197, v220, v174
	s_mov_b32 vcc_lo, s15
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v100.h, v143.l
	v_mov_b16_e64 v168.h, v143.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v199, v175, v204
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v94, v94
	v_mov_b16_e64 v233.l, v97.h
	v_and_b32_e32 v102, 1, v212
	v_mov_b16_e32 v100.l, v93.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v103, v114, v120, v103
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v94, v94, v99, 0x7fff
	v_mov_b16_e64 v168.l, v98.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v99, v115, v123, v108
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v86, v86, v101
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v101, v198, v222, v207
	s_mov_b32 vcc_lo, s16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v210.h, v143.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v170, -v200, v205, v170
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v92, v92
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v83, v83, v103 :: v_dual_and_b32 v108, 1, v233
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v92, v92, v102, 0x7fff
	v_mov_b16_e64 v210.l, v90.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v102, v110, v122, v109
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.l, 0x7fff, v91.h, s1
	v_and_b32_e32 v91, 1, v100
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v100, v22, v223, v175
	v_div_fixup_f32 v95, v95, v125, v111
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.h, 0x7fff, v94.h, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v99, v82, v99 :: v_dual_and_b32 v94, 1, v168
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v101, v101, v124, v117
	s_mov_b32 vcc_lo, s17
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v178.h, v143.l
	v_mov_b16_e64 v180.h, v143.l
	v_mov_b16_e64 v183.h, v143.l
	v_mov_b16_e64 v185.h, v143.l
	v_cmp_o_f32_e64 s10, v93, v93
	v_mov_b16_e64 v178.l, v87.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v82, v170, v224, v205
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v180.l, v86.h
	v_cndmask_b16 v22.l, 0x7fff, v92.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v81, v81, v95 :: v_dual_and_b32 v92, 1, v210
	v_dual_mul_f32 v102, v77, v102 :: v_dual_mul_f32 v95, v79, v101
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v91, v93, v91, 0x7fff
	v_mov_b16_e64 v183.l, v83.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v89, v100, v127, v89
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v185.l, v99.h
	v_mov_b16_e64 v230.h, v143.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v199, s7, v85, v129, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v80, v80, v89 :: v_dual_and_b32 v93, 1, v178
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v82, v82, v126, v88
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v88, 1, v180
	v_cndmask_b16 v79.h, 0x7fff, v91.h, s10
	v_and_b32_e32 v91, 1, v183
	v_and_b32_e32 v89, 1, v185
	v_mov_b16_e64 v230.l, v95.h
	v_mov_b16_e64 v196.h, v143.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v200, v199, v225
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s6, v98, v98
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s4
	v_cmp_o_f32_e64 s4, v90, v90
	v_cmp_o_f32_e64 s0, v83, v83
	v_add3_u32 v94, v98, v94, 0x7fff
	v_cmp_o_f32_e64 s5, v99, v99
	v_add3_u32 v90, v90, v92, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v92, v78, v82
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v78, v86, v88, 0x7fff
	v_add3_u32 v83, v83, v91, 0x7fff
	v_mov_b16_e64 v196.l, v80.h
	v_add3_u32 v88, v99, v89, 0x7fff
	v_and_b32_e32 v89, 1, v230
	v_cndmask_b16 v79.l, 0x7fff, v94.h, s6
	v_cmp_o_f32_e64 s6, v95, v95
	v_cndmask_b16 v82.h, 0x7fff, v90.h, s4
	v_cndmask_b16 v78.l, 0x7fff, v83.h, s0
	v_and_b32_e32 v90, 1, v196
	v_cndmask_b16 v83.h, 0x7fff, v88.h, s5
	v_add3_u32 v88, v95, v89, 0x7fff
	v_mov_b16_e64 v229.h, v143.l
	v_cmp_o_f32_e64 s1, v87, v87
	v_add3_u32 v87, v87, v93, 0x7fff
	v_mov_b16_e64 v229.l, v81.h
	v_cmp_o_f32_e64 s4, v80, v80
	v_add3_u32 v89, v80, v90, 0x7fff
	v_cndmask_b16 v80.l, 0x7fff, v88.h, s6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v88, s0, v84, v128, v84
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s9, v97, v97
	v_add3_u32 v97, v97, v108, 0x7fff
	v_cndmask_b16 v82.l, 0x7fff, v87.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v90, v88, v226 :: v_dual_and_b32 v87, 1, v229
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v231.h, v143.l
	v_cndmask_b16 v77.l, 0x7fff, v97.h, s9
	v_cmp_o_f32_e64 s9, v81, v81
	v_mov_b16_e64 v231.l, v102.h
	v_add3_u32 v81, v81, v87, 0x7fff
	v_mov_b16_e64 v228.h, v143.l
	v_cmp_o_f32_e64 s8, v96, v96
	v_add3_u32 v96, v96, v112, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_cndmask_b16 v80.h, 0x7fff, v81.h, s9
	v_cndmask_b16 v81.h, 0x7fff, v89.h, s4
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v89, v166, v75
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v86, 1, v231
	v_mov_b16_e64 v228.l, v92.h
	v_cndmask_b16 v77.h, 0x7fff, v96.h, s8
	v_cmp_o_f32_e64 s8, v102, v102
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v45, v89, v45, v73
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v86, v102, v86, 0x7fff
	v_cndmask_b16 v78.h, 0x7fff, v78.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s7
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v50, v165, v50, v107
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v45, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v87, 1, v228
	v_cndmask_b16 v83.l, 0x7fff, v86.h, s8
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v49, v164, v49, v105
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v107, v50, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v92, v92
	v_add3_u32 v86, v92, v87, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v87, v167, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v105, v49, s3
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v76, s27, 4, v136
	s_mov_b32 s27, 0x31027000
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v81.l, 0x7fff, v86.h, s1
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v46, v87, v46, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v87, -v201, v200, v199
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v86.h, v143.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v74, v46, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v74, -v202, v90, v88
	v_dual_fmac_f32 v200, v87, v225 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v74, v226
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v87, -v201, v200, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v88, -v202, v90, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v87, v87, v225, v200
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v88, v88, v226, v90
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v85, v87, v129, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v84, v88, v128, v84
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v73
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v50, v50, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, s5
	v_exp_f32_e32 v45, v45
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v49, v49, v84
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v74, v74
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v84.l, v50.h
	v_mov_b16_e64 v84.h, v143.l
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_mov_b16_e32 v86.l, v49.h
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v88, v141, v143
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v90, v149, v143
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v45, v87
	v_ldexp_f32 v74, v74, v85
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v85, 1, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v86, v142, v143 :: v_dual_add_f32 v87, 1.0, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v84
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v17, v88, v17, v71
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v24, v90, v24, v70
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v18, v86, v18, v72
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v85, v49, v85, 0x7fff
	v_add3_u32 v45, v50, v45, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v50, 1.0, v74
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v84, null, v87, v87, v46
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v71, v17, s2
	v_cndmask_b32_e64 v24, v70, v24, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v89, null, v50, v50, v73
	v_rcp_f32_e32 v74, v84
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v72, v18, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v72, vcc_lo, v46, v87, v46
	v_fma_f32 v88, -v84, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v71, v157, v75 :: v_dual_fmac_f32 v74, v88, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v88, -v89, v86, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v71, v42, v18
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v71, v152, v75
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v92, v72, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v88, v86
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v91, v156, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v42, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v41, v91, v41, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v41, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v70, v163, v75
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v48, v70, v48, v24
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, s0, v73, v50, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v48, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v90, v148, v143
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v90, v23, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v69, v23, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v69, v162, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v84, v92, v72
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v47, v69, v47, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v69, 0xbfb8aa3b, v24 :: v_dual_fmac_f32 v92, v48, v74
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v47, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v84, v92, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v42, v74, v92
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v42, v87, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v47
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v41, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v41, 1.0, v41 :: v_dual_mul_f32 v88, v70, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v89, v88, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v48, v86
	v_fma_f32 v69, -v89, v88, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v86, v88
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v69, v50, v73
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v50, v134, v143
	v_mul_f32_e32 v69, v133, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v45.l, 0x7fff, v85.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.l, v18.h
	v_mov_b16_e64 v46.h, v143.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v50, v20, v68
	v_fma_f32 v19, v69, v19, v67
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v67, v19, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v67, v138, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v18, v46, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v68, v20, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, vcc_lo, v24, v41, v24
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v23
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v14, v67, v14, v66
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v67, v137, v143
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v71, v44, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v66, v14, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v13, v67, v13, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v44, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v65, v13, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v65, v160, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v23
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v37, v65, v37, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v42, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v17.h
	v_mov_b16_e64 v48.h, v143.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v13, v37, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v48, 1, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v42, v42, v47
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v41, v41, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v48, v17, v48, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v70, null, v42, v42, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v70
	v_fma_f32 v69, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v69, v49
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v20, v153, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v69, -v70, v50, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v20, v43, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v43, v68, v49 :: v_dual_fmac_f32 v50, v69, v50
	v_div_scale_f32 v69, s1, v23, v42, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v20, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v67, v69, v50
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v66, v161, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v38, v66, v38, v14
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v66, -v47, v43, v68
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v38, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v70, v67, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v66, v49
	v_fmac_f32_e32 v67, v38, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v47, v43, v68
	v_fma_f32 v38, -v70, v67, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v49, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v38, v50, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v20, v41, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v38, v42, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v14
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v38.h, v143.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v19, v23
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v44, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v18.h
	v_mov_b16_e32 v38.l, v19.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v13, 0, 0x42800000, s4
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v23.h, v143.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v38, 1, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v24, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.h, 0x7fff, v46.h, s0
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v46, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v17, v17
	v_cndmask_b16 v13.l, 0x7fff, v48.h, s0
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v24, v20
	v_exp_f32_e32 v24, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v20
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v17, v17, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v24, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v24, v19, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v38, v41
	v_div_scale_f32 v47, vcc_lo, v14, v17, v14
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v23, v18, v23, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v18, v106, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v20, v20, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v18, v6, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v41, v38, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v63, v6, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v38, v18, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v18, v155, v75
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v44, v44, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v16, v44, v16, v64
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v64, v16, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v18, v18, v40, v16
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v46, v143
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v40, v146, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v18, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v15, v46, v15, v61
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v18, v154, v75 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v61, v15, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v18, v18, v39, v15
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v42, v104, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v18, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v46, v47, v38 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v5, v42, v5, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v43
	v_fma_f32 v39, -v41, v46, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v62, v5, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v46, v39, v38 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v33, v40, v33, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v43, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v39
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s1, v37, v20, v37
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v44, v147, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v40, v48, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v18, v44, v34, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v43, v40, v48
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v18, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v41, v46, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v40, v34, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v34, v49
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v18, v18, v38, v46
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v43, v40, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v14, v18, v17, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v38, v42, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v34, v41
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v14
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v14, v39, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v38, v20, v37
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:12
	scratch_load_b32 v39, off, off offset:8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v6.h
	v_mov_b16_e64 v18.h, v143.l
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v33
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v17
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.l, 0x7fff, v24.h, vcc_lo
	v_and_b32_e32 v18, 1, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v40, v139, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v19, v19, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v18, v6, v18, 0x7fff
	v_mov_b16_e64 v20.h, v143.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v20, v5, v20, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v17, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v38, v33
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v37, v37, v143
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v39, v143
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v8, v37, v8, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v6, v39, v7, v59
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v39, v140, v75
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, vcc_lo, v16, v19, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v60, v8, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v6, v59, v6, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v8, v37, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v36, v39, v36, v7
	v_fma_f32 v35, v40, v35, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v17, v8, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v36, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v8, v41, v33
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v35, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v17, -v17, v8, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v8, v17, v33, v8
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v33, v151, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v8, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v16, v150, v75 :: v_dual_mul_f32 v7, v7, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v36, v36, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v10, v36, v10, v58
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v58, v10, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v19, v33, v30, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v30, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v10, v19, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e64 v10.h, v143.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v19, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v14, v14, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v24, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v7, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v34, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v38, v24
	v_div_scale_f32 v38, s1, v15, v14, v15
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v38, v24
	v_fma_f32 v39, -v34, v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v39, v24
	v_fma_f32 v17, -v34, v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v17, v17, v24, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v14, v17, v14, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v14.h, v143.l
	v_mov_b16_e32 v14.l, v6.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v7, v6, v14, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v35, v35, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v9, v35, v9, v57
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v35, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v57, v9, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v5, v16, v29, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v9, v5, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v15, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_cndmask_b32_e64 v9, 0, 0x42800000, s0
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v5
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v9, v9, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v145, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v15, v15, v20
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v9, v9, v8
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v30, v30, v75
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v19, v19, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v11, v19, v11, v55
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v144, v75
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v55, v11, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v14, v14, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v12, v14, v12, v56
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v14, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v35, v35, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v56, v12, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v17, v17, v32, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, s4, v5, v15, v5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v16, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v12, v17, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v17, v20
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v2, v16, v2, v54
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v16, v19, v31, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v15, v15, v5
	v_div_scale_f32 v31, s1, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v16, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v12
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v20, v17, 1.0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v54, v2, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v17, v29, v17
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v26, v30, v26, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v33, v31, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v26, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v12
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v20, v33, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v16, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v33, v36, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v20, v33, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v34
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v1, v14, v1, v53
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v14, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v53, v1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v25, v35, v25, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v19, v14, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v25, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v14, v29, v14
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v17, v20, v17, v33
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v16, v16, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v29, v32, v14
	v_div_fixup_f32 v8, v17, v9, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v9, v255, v143 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v19, v29, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v8
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v3, v9, v3, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v16, v16, v12
	v_fmac_f32_e32 v29, v34, v14
	v_div_scale_f32 v34, null, v24, v24, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v52, v3, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v19, -v19, v29, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v31, v34
	v_div_fmas_f32 v14, v19, v14, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v35, v30, 1.0
	v_div_fixup_f32 v5, v14, v15, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v20, -v34, v31, 1.0
	v_div_scale_f32 v14, vcc_lo, v12, v16, v12
	v_fmac_f32_e32 v30, v19, v30
	v_div_scale_f32 v15, s0, v11, v24, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v20, v31
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v17, v14, v30
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v19, v254, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v5, v15, v31
	v_fma_f32 v9, -v35, v17, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v4, v19, v4, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v8, -v34, v5, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v17, v9, v30
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v9, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v51, v4, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v5, v8, v31
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v8, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v35, v17, v14
	v_fma_f32 v15, -v34, v5, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v14, v30, v17
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v5, v15, v31, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e64 v15.h, v143.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v5, v24, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v11, 0x7632
	v_cndmask_b16 v10.l, 0x7fff, v7.h, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v9, v9, v75
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v8, v8, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v9, v9, v27, v3
	v_fma_f32 v8, v8, v28, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v9, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e64 v9.h, v143.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v14, v16, v12
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v6, 1, v9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v3.h
	v_mov_b16_e64 v8.h, v143.l
	v_add3_u32 v6, v1, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_mov_b16_e32 v9.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v7, 1, v8
	v_and_b32_e32 v8, 1, v9
	v_mov_b32_e32 v9, 0x5410
	v_mov_b16_e32 v15.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	s_mov_b32 s0, 0x76543210
	v_and_b32_e32 v5, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v2, v5, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v5, v22, v79, vcc_lo
	v_cmp_o_f32_e64 s1, v4, v4
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_add3_u32 v2, v4, v8, 0x7fff
	v_cndmask_b32_e32 v4, v79, v22, vcc_lo
	v_cndmask_b32_e32 v6, v83, v82, vcc_lo
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v11, v11, 8, v11
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b32_e32 v12, v78, v80, vcc_lo
	v_cndmask_b32_e32 v14, v13, v81, vcc_lo
	v_and_b32_e32 v9, 0x540054, v9
	v_dual_cndmask_b32 v2, v21, v77 :: v_dual_and_b32 v11, 0x760076, v11
	v_cndmask_b32_e32 v17, v3, v18, vcc_lo
	v_cndmask_b32_e32 v7, v82, v83, vcc_lo
	v_cndmask_b32_e32 v13, v81, v13, vcc_lo
	v_dual_cndmask_b32 v3, v18, v3 :: v_dual_cndmask_b32 v18, v0, v10
	v_cndmask_b32_e32 v0, v10, v0, vcc_lo
	v_lshl_or_b32 v9, v9, 4, v9
	v_cndmask_b32_e32 v16, v45, v23, vcc_lo
	v_lshl_or_b32 v10, v11, 4, v11
	v_dual_cndmask_b32 v1, v77, v21 :: v_dual_cndmask_b32 v8, v80, v78
	v_cndmask_b32_e32 v15, v23, v45, vcc_lo
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
	v_add_lshl_u32 v16, v135, v136, 1
	v_add_lshl_u32 v17, v135, v76, 1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 60
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 60
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20848
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 60
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 60
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 14
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
