	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v82, 0xf0, v0
	v_lshrrev_b32_e32 v2, 3, v0
	v_and_b32_e32 v81, 15, v0
	v_lshlrev_b32_e32 v126, 5, v0
	v_and_b32_e32 v125, 4, v0
	v_lshrrev_b32_e32 v35, 3, v82
	v_and_b32_e32 v129, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v130, v81, 9, v35
	v_xor_b32_e32 v133, 0x90, v130
	v_add_nc_u32_e32 v53, 0, v130
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
	s_lshl_b32 s13, s4, 2
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_mul_lo_u32 v2, s12, v2
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v134, 0x110, v130
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v54, 0, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add_nc_u32_e32 v55, 0, v134
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
	s_xor_b32 s8, s2, s13
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s15, s14, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s14, s14, s13
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s14
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s17, s16
	s_xor_b32 s13, s2, s16
	s_cvt_f32_u32 s18, s17
	s_ashr_i32 s13, s13, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s6, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 28, v1
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
	s_mul_i32 s14, s6, s17
	s_add_i32 s18, s6, 1
	s_sub_i32 s14, s7, s14
	s_mov_b32 s7, 0x31027000
	s_sub_i32 s19, s14, s17
	s_cmp_ge_u32 s14, s17
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_mov_b32 s23, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s18, s18, s6
	s_cselect_b32 s6, s19, s14
	s_add_i32 s14, s18, 1
	s_cmp_ge_u32 s6, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s14, s14, s18
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s27, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s17, s14, s13
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_mul_lo_u32 v4, s34, v35
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s13, s17, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s12, 31
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s13, s16
	.loc	1 368 26                        ; generate_amdgcn.py:368:26
	s_lshl_b32 s30, s3, 5
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s14, 31
.Ltmp15:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v123, v81, 4, v4
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 5
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s15, s34, s30
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	s_mul_i32 s2, s33, s12
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s13, 8
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add3_u32 v124, v2, v3, s2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s3, 27
.Ltmp17:
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add3_u32 v2, s26, s15, v123
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s14, s2
.Ltmp19:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 31
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v3, s30, v124
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 63
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v4, s34, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s35, s30, 32
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v11, s27, v2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v36, 0x80000000, v3, s2
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v3, 0x80000000, v2, s2
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v2, s27, 6, v2
	.loc	1 374 34 is_stmt 1              ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v19, s35, v124
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v7, 0x80000000, v4, s2
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v12, s34, v11
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_mov_b32 s22, s6
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v20, s34, v2
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v37, 0x80000000, v19, s3
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v19, 0x80000000, v2, s3
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v2, s27, v2
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[20:23], 0 offen
	buffer_load_b128 v[7:10], v7, s[20:23], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v15, 0x80000000, v12, s2
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v23, 0x80000000, v20, s3
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v27, s34, v2
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	s_clause 0x3
	buffer_load_b128 v[11:14], v11, s[20:23], 0 offen
	buffer_load_b128 v[15:18], v15, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v19, s[20:23], 0 offen
	buffer_load_b128 v[23:26], v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v31, 0x80000000, v27, s3
	s_clause 0x1
	buffer_load_b128 v[27:30], v2, s[20:23], 0 offen
	buffer_load_b128 v[31:34], v31, s[20:23], 0 offen
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	s_clause 0x1
	buffer_load_b32 v51, v36, s[4:7], 0 offen
	buffer_load_b32 v56, v37, s[4:7], 0 offen
	v_bfe_i32 v2, v0, 5, 1
	v_and_b32_e32 v36, 0x37c, v1
	v_lshlrev_b32_e32 v1, 4, v0
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x5f
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_and_b32_e32 v2, 0x90, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v132, v2, v36
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v2, 16, v81
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v52, 0, v132
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(8)
	v_perm_b32 v35, v7, v3, 0x5010400
	v_perm_b32 v7, v7, v3, 0x7030602
	v_perm_b32 v36, v8, v4, 0x5010400
	v_perm_b32 v8, v8, v4, 0x7030602
	v_perm_b32 v37, v9, v5, 0x5010400
	v_perm_b32 v9, v9, v5, 0x7030602
	v_perm_b32 v38, v10, v6, 0x5010400
	v_perm_b32 v39, v10, v6, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(6)
	v_perm_b32 v40, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v41, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v42, v17, v13, 0x5010400
	v_perm_b32 v17, v17, v13, 0x7030602
	v_perm_b32 v43, v18, v14, 0x5010400
	v_perm_b32 v44, v18, v14, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v3.l, 0xff, v35.l
	v_lshrrev_b32_e32 v45, 8, v35
	v_lshrrev_b32_e32 v46, 24, v35
	v_and_b16 v3.h, 0xff, v35.h
	v_and_b16 v4.l, 0xff, v7.l
	v_lshrrev_b32_e32 v35, 8, v7
	v_lshrrev_b32_e32 v47, 24, v7
	v_and_b16 v4.h, 0xff, v7.h
	v_and_b16 v5.l, 0xff, v36.l
	v_lshrrev_b32_e32 v48, 8, v36
	v_lshrrev_b32_e32 v49, 24, v36
	v_and_b16 v5.h, 0xff, v36.h
	v_and_b16 v6.l, 0xff, v8.l
	v_lshrrev_b32_e32 v36, 8, v8
	v_lshrrev_b32_e32 v50, 24, v8
	v_and_b16 v6.h, 0xff, v8.h
	v_and_b16 v7.l, 0xff, v37.l
	v_lshrrev_b32_e32 v57, 8, v37
	v_lshrrev_b32_e32 v58, 24, v37
	v_and_b16 v7.h, 0xff, v37.h
	v_and_b16 v8.l, 0xff, v9.l
	v_lshrrev_b32_e32 v37, 8, v9
	v_lshrrev_b32_e32 v59, 24, v9
	v_and_b16 v8.h, 0xff, v9.h
	v_and_b16 v9.l, 0xff, v38.l
	v_lshrrev_b32_e32 v60, 8, v38
	v_lshrrev_b32_e32 v61, 24, v38
	v_and_b16 v9.h, 0xff, v38.h
	v_and_b16 v10.l, 0xff, v39.l
	v_lshrrev_b32_e32 v38, 8, v39
	v_lshrrev_b32_e32 v62, 24, v39
	v_and_b16 v10.h, 0xff, v39.h
	s_waitcnt vmcnt(4)
	v_perm_b32 v39, v23, v19, 0x5010400
	v_perm_b32 v63, v23, v19, 0x7030602
	v_perm_b32 v64, v24, v20, 0x5010400
	v_perm_b32 v65, v24, v20, 0x7030602
	v_perm_b32 v66, v25, v21, 0x5010400
	v_perm_b32 v67, v25, v21, 0x7030602
	v_perm_b32 v68, v26, v22, 0x5010400
	v_perm_b32 v69, v26, v22, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v11.l, 0xff, v40.l
	v_lshrrev_b32_e32 v70, 8, v40
	v_lshrrev_b32_e32 v71, 24, v40
	v_and_b16 v11.h, 0xff, v40.h
	v_and_b16 v12.l, 0xff, v15.l
	v_lshrrev_b32_e32 v40, 8, v15
	v_lshrrev_b32_e32 v72, 24, v15
	v_and_b16 v12.h, 0xff, v15.h
	v_and_b16 v13.l, 0xff, v41.l
	v_lshrrev_b32_e32 v73, 8, v41
	v_lshrrev_b32_e32 v74, 24, v41
	v_and_b16 v13.h, 0xff, v41.h
	v_and_b16 v14.l, 0xff, v16.l
	v_lshrrev_b32_e32 v41, 8, v16
	v_lshrrev_b32_e32 v75, 24, v16
	v_and_b16 v14.h, 0xff, v16.h
	v_and_b16 v15.l, 0xff, v42.l
	v_lshrrev_b32_e32 v76, 8, v42
	v_lshrrev_b32_e32 v77, 24, v42
	v_and_b16 v15.h, 0xff, v42.h
	v_and_b16 v16.l, 0xff, v17.l
	v_lshrrev_b32_e32 v42, 8, v17
	v_lshrrev_b32_e32 v78, 24, v17
	v_and_b16 v16.h, 0xff, v17.h
	v_and_b16 v17.l, 0xff, v43.l
	v_lshrrev_b32_e32 v79, 8, v43
	v_lshrrev_b32_e32 v80, 24, v43
	v_and_b16 v17.h, 0xff, v43.h
	v_and_b16 v18.l, 0xff, v44.l
	v_lshrrev_b32_e32 v43, 8, v44
	v_lshrrev_b32_e32 v83, 24, v44
	v_and_b16 v18.h, 0xff, v44.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v44, v31, v27, 0x5010400
	v_perm_b32 v84, v31, v27, 0x7030602
	v_perm_b32 v85, v32, v28, 0x5010400
	v_perm_b32 v86, v32, v28, 0x7030602
	v_perm_b32 v87, v33, v29, 0x5010400
	v_perm_b32 v88, v33, v29, 0x7030602
	v_perm_b32 v89, v34, v30, 0x5010400
	v_perm_b32 v90, v34, v30, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v19.l, 8, v45.l
	v_lshlrev_b16 v23.l, 8, v57.l
	v_lshrrev_b32_e32 v57, 8, v39
	v_lshlrev_b16 v19.h, 8, v46.l
	v_lshlrev_b16 v23.h, 8, v58.l
	v_lshrrev_b32_e32 v58, 24, v39
	v_lshlrev_b16 v20.l, 8, v35.l
	v_lshlrev_b16 v24.h, 8, v59.l
	v_lshrrev_b32_e32 v59, 8, v63
	v_lshlrev_b16 v20.h, 8, v47.l
	v_lshlrev_b16 v25.l, 8, v60.l
	v_lshrrev_b32_e32 v60, 24, v63
	v_lshlrev_b16 v21.h, 8, v49.l
	v_lshlrev_b16 v26.h, 8, v62.l
	v_lshrrev_b32_e32 v62, 24, v64
	v_lshlrev_b16 v21.l, 8, v48.l
	v_lshlrev_b16 v22.l, 8, v36.l
	v_lshlrev_b16 v22.h, 8, v50.l
	v_lshlrev_b16 v24.l, 8, v37.l
	v_lshlrev_b16 v25.h, 8, v61.l
	v_lshlrev_b16 v26.l, 8, v38.l
	v_and_b16 v27.l, 0xff, v39.l
	v_and_b16 v27.h, 0xff, v39.h
	v_and_b16 v28.l, 0xff, v63.l
	v_and_b16 v28.h, 0xff, v63.h
	v_and_b16 v29.l, 0xff, v64.l
	v_lshrrev_b32_e32 v61, 8, v64
	v_and_b16 v29.h, 0xff, v64.h
	v_and_b16 v30.l, 0xff, v65.l
	v_lshrrev_b32_e32 v63, 8, v65
	v_lshrrev_b32_e32 v64, 24, v65
	v_and_b16 v30.h, 0xff, v65.h
	v_and_b16 v31.l, 0xff, v66.l
	v_lshrrev_b32_e32 v65, 8, v66
	v_lshrrev_b32_e32 v91, 24, v66
	v_and_b16 v31.h, 0xff, v66.h
	v_and_b16 v32.l, 0xff, v67.l
	v_lshrrev_b32_e32 v66, 8, v67
	v_lshrrev_b32_e32 v92, 24, v67
	v_and_b16 v32.h, 0xff, v67.h
	v_and_b16 v33.l, 0xff, v68.l
	v_lshrrev_b32_e32 v67, 8, v68
	v_lshrrev_b32_e32 v93, 24, v68
	v_and_b16 v33.h, 0xff, v68.h
	v_and_b16 v34.l, 0xff, v69.l
	v_lshrrev_b32_e32 v68, 8, v69
	v_lshrrev_b32_e32 v94, 24, v69
	v_and_b16 v34.h, 0xff, v69.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v35.l, 8, v70.l
	v_lshlrev_b16 v35.h, 8, v71.l
	v_lshlrev_b16 v36.l, 8, v40.l
	v_lshlrev_b16 v36.h, 8, v72.l
	v_lshlrev_b16 v37.l, 8, v73.l
	v_lshlrev_b16 v37.h, 8, v74.l
	v_lshlrev_b16 v38.l, 8, v41.l
	v_lshlrev_b16 v38.h, 8, v75.l
	v_lshlrev_b16 v39.l, 8, v76.l
	v_lshlrev_b16 v39.h, 8, v77.l
	v_lshlrev_b16 v40.l, 8, v42.l
	v_lshlrev_b16 v40.h, 8, v78.l
	v_lshlrev_b16 v41.l, 8, v79.l
	v_lshlrev_b16 v41.h, 8, v80.l
	v_lshlrev_b16 v42.l, 8, v43.l
	v_lshlrev_b16 v42.h, 8, v83.l
	v_and_b16 v43.l, 0xff, v44.l
	v_lshrrev_b32_e32 v69, 8, v44
	v_lshrrev_b32_e32 v70, 24, v44
	v_and_b16 v43.h, 0xff, v44.h
	v_and_b16 v44.l, 0xff, v84.l
	v_lshrrev_b32_e32 v71, 8, v84
	v_lshrrev_b32_e32 v72, 24, v84
	v_and_b16 v44.h, 0xff, v84.h
	v_and_b16 v45.l, 0xff, v85.l
	v_lshrrev_b32_e32 v73, 8, v85
	v_lshrrev_b32_e32 v74, 24, v85
	v_and_b16 v45.h, 0xff, v85.h
	v_and_b16 v46.l, 0xff, v86.l
	v_lshrrev_b32_e32 v75, 8, v86
	v_lshrrev_b32_e32 v76, 24, v86
	v_and_b16 v46.h, 0xff, v86.h
	v_lshrrev_b32_e32 v77, 8, v87
	v_lshrrev_b32_e32 v78, 24, v87
	v_lshrrev_b32_e32 v79, 8, v88
	v_lshrrev_b32_e32 v80, 24, v88
	v_lshrrev_b32_e32 v83, 8, v89
	v_lshrrev_b32_e32 v84, 24, v89
	v_lshrrev_b32_e32 v85, 8, v90
	v_lshrrev_b32_e32 v86, 24, v90
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v3.l, v3.l, v19.l
	v_lshlrev_b16 v19.l, 8, v57.l
	v_or_b16 v3.h, v3.h, v19.h
	v_lshlrev_b16 v19.h, 8, v58.l
	v_or_b16 v4.l, v4.l, v20.l
	v_lshlrev_b16 v20.l, 8, v59.l
	v_or_b16 v4.h, v4.h, v20.h
	v_lshlrev_b16 v20.h, 8, v60.l
	v_or_b16 v5.h, v5.h, v21.h
	v_lshlrev_b16 v21.h, 8, v62.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v47.l, 0xff, v87.l
	v_and_b16 v47.h, 0xff, v87.h
	v_and_b16 v48.l, 0xff, v88.l
	v_and_b16 v48.h, 0xff, v88.h
	v_and_b16 v49.l, 0xff, v89.l
	v_and_b16 v49.h, 0xff, v89.h
	v_and_b16 v50.l, 0xff, v90.l
	v_and_b16 v50.h, 0xff, v90.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v5.l, v5.l, v21.l
	v_or_b16 v6.l, v6.l, v22.l
	v_or_b16 v6.h, v6.h, v22.h
	v_or_b16 v7.l, v7.l, v23.l
	v_or_b16 v7.h, v7.h, v23.h
	v_or_b16 v8.l, v8.l, v24.l
	v_or_b16 v8.h, v8.h, v24.h
	v_or_b16 v9.l, v9.l, v25.l
	v_or_b16 v9.h, v9.h, v25.h
	v_or_b16 v10.l, v10.l, v26.l
	v_or_b16 v10.h, v10.h, v26.h
	v_lshlrev_b16 v21.l, 8, v61.l
	v_lshlrev_b16 v22.l, 8, v63.l
	v_lshlrev_b16 v22.h, 8, v64.l
	v_lshlrev_b16 v23.l, 8, v65.l
	v_lshlrev_b16 v23.h, 8, v91.l
	v_lshlrev_b16 v24.l, 8, v66.l
	v_lshlrev_b16 v24.h, 8, v92.l
	v_lshlrev_b16 v25.l, 8, v67.l
	v_lshlrev_b16 v25.h, 8, v93.l
	v_lshlrev_b16 v26.l, 8, v68.l
	v_lshlrev_b16 v26.h, 8, v94.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v11.l, v11.l, v35.l
	v_or_b16 v11.h, v11.h, v35.h
	v_or_b16 v12.l, v12.l, v36.l
	v_or_b16 v12.h, v12.h, v36.h
	v_or_b16 v13.l, v13.l, v37.l
	v_or_b16 v13.h, v13.h, v37.h
	v_or_b16 v14.l, v14.l, v38.l
	v_or_b16 v14.h, v14.h, v38.h
	v_or_b16 v15.l, v15.l, v39.l
	v_or_b16 v15.h, v15.h, v39.h
	v_or_b16 v16.l, v16.l, v40.l
	v_or_b16 v16.h, v16.h, v40.h
	v_or_b16 v17.l, v17.l, v41.l
	v_or_b16 v17.h, v17.h, v41.h
	v_or_b16 v18.l, v18.l, v42.l
	v_or_b16 v18.h, v18.h, v42.h
	v_lshlrev_b16 v35.l, 8, v69.l
	v_lshlrev_b16 v35.h, 8, v70.l
	v_lshlrev_b16 v36.l, 8, v71.l
	v_lshlrev_b16 v36.h, 8, v72.l
	v_lshlrev_b16 v37.l, 8, v73.l
	v_lshlrev_b16 v37.h, 8, v74.l
	v_lshlrev_b16 v38.l, 8, v75.l
	v_lshlrev_b16 v38.h, 8, v76.l
	v_lshlrev_b16 v39.l, 8, v77.l
	v_lshlrev_b16 v39.h, 8, v78.l
	v_lshlrev_b16 v40.l, 8, v79.l
	v_lshlrev_b16 v40.h, 8, v80.l
	v_lshlrev_b16 v41.l, 8, v83.l
	v_lshlrev_b16 v41.h, 8, v84.l
	v_lshlrev_b16 v42.l, 8, v85.l
	v_lshlrev_b16 v42.h, 8, v86.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v53, v3
	ds_store_b16_d16_hi v53, v3 offset:32
	ds_store_b16 v53, v4 offset:64
	ds_store_b16_d16_hi v53, v4 offset:96
	ds_store_b16_d16_hi v54, v5 offset:32
	ds_store_b16 v54, v6 offset:64
	ds_store_b16_d16_hi v54, v6 offset:96
	v_or_b16 v3.l, v27.l, v19.l
	v_or_b16 v3.h, v27.h, v19.h
	v_or_b16 v4.l, v28.l, v20.l
	v_or_b16 v4.h, v28.h, v20.h
	v_or_b16 v6.l, v29.h, v21.h
	v_or_b16 v5.h, v29.l, v21.l
	v_or_b16 v6.h, v30.l, v22.l
	v_or_b16 v19.l, v30.h, v22.h
	v_or_b16 v19.h, v31.l, v23.l
	v_or_b16 v20.l, v31.h, v23.h
	v_or_b16 v20.h, v32.l, v24.l
	v_or_b16 v21.l, v32.h, v24.h
	v_or_b16 v21.h, v33.l, v25.l
	v_or_b16 v22.l, v33.h, v25.h
	v_or_b16 v22.h, v34.l, v26.l
	v_or_b16 v23.l, v34.h, v26.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v53, v11 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v54, v5
	ds_store_b16 v55, v7
	ds_store_b16_d16_hi v55, v7 offset:32
	ds_store_b16 v55, v8 offset:64
	ds_store_b16_d16_hi v55, v8 offset:96
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v52, v51 offset:32768
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v53, v12 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v53, v9 offset:384
	ds_store_b16_d16_hi v53, v9 offset:416
	ds_store_b16 v53, v10 offset:448
	ds_store_b16_d16_hi v53, v10 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v53, v11 offset:16416
	ds_store_b16_d16_hi v53, v12 offset:16480
	ds_store_b16 v54, v13 offset:16384
	ds_store_b16_d16_hi v54, v13 offset:16416
	ds_store_b16 v54, v14 offset:16448
	ds_store_b16_d16_hi v54, v14 offset:16480
	ds_store_b16 v55, v15 offset:16384
	ds_store_b16_d16_hi v55, v15 offset:16416
	ds_store_b16 v55, v16 offset:16448
	ds_store_b16_d16_hi v55, v16 offset:16480
	ds_store_b16 v53, v17 offset:16768
	ds_store_b16_d16_hi v53, v17 offset:16800
	ds_store_b16 v53, v18 offset:16832
	ds_store_b16_d16_hi v53, v18 offset:16864
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v5.l, v43.l, v35.l
	v_or_b16 v7.l, v43.h, v35.h
	v_or_b16 v7.h, v44.l, v36.l
	v_or_b16 v8.l, v44.h, v36.h
	v_or_b16 v8.h, v45.l, v37.l
	v_or_b16 v9.l, v45.h, v37.h
	v_or_b16 v9.h, v46.l, v38.l
	v_or_b16 v10.l, v46.h, v38.h
	v_or_b16 v10.h, v47.l, v39.l
	v_or_b16 v11.l, v47.h, v39.h
	v_or_b16 v11.h, v48.l, v40.l
	v_or_b16 v12.l, v48.h, v40.h
	v_or_b16 v12.h, v49.l, v41.l
	v_or_b16 v13.l, v49.h, v41.h
	v_or_b16 v13.h, v50.l, v42.l
	v_or_b16 v14.l, v50.h, v42.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v53, v3 offset:8192
	ds_store_b16_d16_hi v53, v3 offset:8224
	ds_store_b16 v53, v4 offset:8256
	ds_store_b16_d16_hi v53, v4 offset:8288
	ds_store_b16 v54, v6 offset:8224
	ds_store_b16_d16_hi v54, v6 offset:8256
	ds_store_b16 v54, v19 offset:8288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v53, v5 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v54, v5 offset:8192
	ds_store_b16_d16_hi v55, v19 offset:8192
	ds_store_b16 v55, v20 offset:8224
	ds_store_b16_d16_hi v55, v20 offset:8256
	ds_store_b16 v55, v21 offset:8288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v52, v56 offset:33792
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v53, v7 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v53, v21 offset:8576
	ds_store_b16 v53, v22 offset:8608
	ds_store_b16_d16_hi v53, v22 offset:8640
	ds_store_b16 v53, v23 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v53, v7 offset:24608
	ds_store_b16 v53, v8 offset:24672
	ds_store_b16_d16_hi v54, v8 offset:24576
	ds_store_b16 v54, v9 offset:24608
	ds_store_b16_d16_hi v54, v9 offset:24640
	ds_store_b16 v54, v10 offset:24672
	ds_store_b16_d16_hi v55, v10 offset:24576
	ds_store_b16 v55, v11 offset:24608
	ds_store_b16_d16_hi v55, v11 offset:24640
	ds_store_b16 v55, v12 offset:24672
	ds_store_b16_d16_hi v53, v12 offset:24960
	ds_store_b16 v53, v13 offset:24992
	ds_store_b16_d16_hi v53, v13 offset:25024
	ds_store_b16 v53, v14 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_lshlrev_b32_e32 v17, 5, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v5, 0xe00, v1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_and_b32_e32 v4, 4, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v3, 8, v0
	s_mov_b32 s10, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_and_b32_e32 v136, 0x160, v17
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_or_b32 v135, 0x60, v17, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr135
.LBB0_3:                                ; %Flow421
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v5, s33, v81
	v_or_b32_e32 v2, s33, v2
	s_ashr_i32 s1, s13, 5
	v_or_b32_e32 v146, s26, v0
	v_lshlrev_b32_e32 v128, 2, v82
	v_mul_lo_u32 v147, v5, s1
	v_mul_lo_u32 v143, v2, s1
	v_lshlrev_b32_e32 v131, 1, v0
	v_lshlrev_b32_e32 v127, 1, v82
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0xe00, v1
	v_and_b32_e32 v2, 0x90, v2
	v_and_b32_e32 v3, 0x110, v3
	v_and_b32_e32 v136, 0x160, v126
	v_and_b32_e32 v9, 28, v131
	v_and_or_b32 v135, 0x60, v126, v1
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v137, s34, v123
	v_xor_b32_e32 v1, v2, v3
	v_or_b32_e32 v138, v2, v136
	v_add_nc_u32_e32 v142, s27, v146
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v145, 0, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v139, v135, v1
	v_and_b32_e32 v1, 32, v126
	v_xor_b32_e32 v140, 16, v138
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_xor_b32_e32 v141, 16, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v10, 0, v128, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v7, s18
	v_add_nc_u32_e32 v144, v10, v9
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v57, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s47, s1, 3
	s_add_i32 s11, s35, 32
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s31, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8400
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s47, s47, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s15, s12
	s_mov_b32 s12, s30
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s16, s13, 5
	s_mov_b32 s30, s35
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s35, s11, s16
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s16, s12, 31
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v9, s35, v124
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s16, s16, 27
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s17, s35, s34
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s12, s12, s16
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s17, s17, s26
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s18, s12, 5
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	s_add_i32 s16, s17, s27
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b32 v148, v9, s[4:7], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v9, v147, s18, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s18, s1
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v151, s17, v123
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v155, v143, s18, 1
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v152, s17, v137
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s19, s18, s34
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v10, v146, s19, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v150, 0x80000000, v9, vcc_lo
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v156, v142, s19, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[206:209], v151, s[20:23], 0 offen
	buffer_load_b128 v[210:213], v152, s[20:23], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v151, 0x80000000, v155 :: v_dual_cndmask_b32 v222, 0x80000000, v156
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v223, v150, s[36:39], 0 offen
	buffer_load_u16 v224, v151, s[36:39], 0 offen
	s_mov_b32 s14, s0
	s_mov_b32 s12, s45
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v149, v9, s[40:43], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v9, s14, v138
	s_mov_b32 s45, s10
	v_add_nc_u32_e32 v10, s14, v140
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v25, s15, v139
	v_add_nc_u32_e32 v26, s15, v141
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v33, s45, v139
	v_add_nc_u32_e32 v37, s45, v141
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[21:24], v9
	ds_load_b128 v[17:20], v9 offset:512
	ds_load_b128 v[13:16], v10
	ds_load_b128 v[9:12], v10 offset:512
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[41:44], v25
	ds_load_b128 v[45:48], v25 offset:4096
	ds_load_b128 v[29:32], v26
	ds_load_b128 v[25:28], v26 offset:4096
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[49:52], v33
	ds_load_b128 v[53:56], v33 offset:4096
	ds_load_b128 v[33:36], v37
	ds_load_b128 v[37:40], v37 offset:4096
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s31, 1
	s_mov_b32 s0, s46
	s_cmp_lt_i32 s14, 2
	s_mov_b32 s10, s44
	s_cselect_b32 s31, s14, 0
	s_add_i32 s14, s13, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_lshl_b32 s15, s31, 10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s15, s15, 0
	s_add_i32 s46, s15, 0x8000
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[41:44], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[45:48], v[21:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[45:48], v[17:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[53:56], v[21:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[53:56], v[17:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[166:173], v[29:32], v[9:12], v[166:173] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[37:40], v[13:16], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[49:52], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[37:40], v[9:12], v[198:205] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[158:165], v[25:28], v[13:16], v[158:165] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v19, v184
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v166, v166
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v18, v183
	v_cvt_f32_i32_e32 v184, v200
	v_cvt_f32_i32_e32 v183, v199
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v158, v158
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[190:197], v[33:36], v[9:12], v[190:197] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[174:181], v[25:28], v[9:12], v[174:181] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v17, v182
	v_cvt_f32_i32_e32 v182, v198
	v_cvt_f32_i32_e32 v20, v185
	v_cvt_f32_i32_e32 v53, v194
	v_cvt_f32_i32_e32 v54, v195
	v_cvt_f32_i32_e32 v55, v196
	v_cvt_f32_i32_e32 v56, v197
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v185, v201
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v181, v181
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(3)
	v_perm_b32 v26, v210, v206, 0x5010400
	v_perm_b32 v27, v210, v206, 0x7030602
	v_perm_b32 v28, v211, v207, 0x5010400
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v200, 16, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v166, v200, v166 :: v_dual_lshlrev_b32 v199, 16, v223
	v_dual_mul_f32 v158, v199, v158 :: v_dual_add_nc_u32 v153, s16, v123
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v154, s16, v137
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[214:217], v153, s[20:23], 0 offen
	buffer_load_b128 v[218:221], v154, s[20:23], 0 offen
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[150:157], v[41:44], v[21:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[41:48], v[49:52], v[21:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v25, 16, v149
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[150:157], v[29:32], v[13:16], v[150:157] neg_lo:[1,1,0]
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v29, v211, v207, 0x7030602
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[41:48], v[33:36], v[13:16], v[41:48] neg_lo:[1,1,0]
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v33, v213, v209, 0x7030602
	v_perm_b32 v30, v212, v208, 0x5010400
	v_perm_b32 v31, v212, v208, 0x7030602
	v_perm_b32 v32, v213, v209, 0x5010400
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v16, v48
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v198, 24, v33
	v_lshrrev_b32_e32 v48, 8, v29
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v9, v41
	v_cvt_f32_i32_e32 v10, v42
	v_cvt_f32_i32_e32 v11, v43
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v48.h, 8, v198.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v198, v18, v199
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v144, v25 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v149, v222, s[40:43], 0 offen
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v12, v44
	v_cvt_f32_i32_e32 v13, v45
	v_cvt_f32_i32_e32 v14, v46
	v_cvt_f32_i32_e32 v15, v47
	v_cvt_f32_i32_e32 v21, v186
	v_cvt_f32_i32_e32 v22, v187
	v_cvt_f32_i32_e32 v23, v188
	v_cvt_f32_i32_e32 v24, v189
	v_cvt_f32_i32_e32 v49, v190
	v_cvt_f32_i32_e32 v50, v191
	v_cvt_f32_i32_e32 v51, v192
	v_cvt_f32_i32_e32 v52, v193
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v42, 8, v26
	v_lshrrev_b32_e32 v43, 24, v26
	v_lshrrev_b32_e32 v44, 8, v27
	v_lshrrev_b32_e32 v45, 24, v27
	v_lshrrev_b32_e32 v46, 8, v28
	v_lshrrev_b32_e32 v47, 24, v28
	v_lshrrev_b32_e32 v190, 24, v29
	v_lshrrev_b32_e32 v191, 8, v30
	v_lshrrev_b32_e32 v192, 24, v30
	v_lshrrev_b32_e32 v193, 8, v31
	v_lshrrev_b32_e32 v194, 24, v31
	v_lshrrev_b32_e32 v195, 8, v32
	v_lshrrev_b32_e32 v196, 24, v32
	v_lshrrev_b32_e32 v197, 8, v33
	s_lshl_b32 s16, s31, 13
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v225, s15, v132
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_add_i32 s45, s16, 0
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v186, v202
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v153, v199, v153 :: v_dual_add_nc_u32 v226, s45, v130
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v227, s45, v133
	v_add_nc_u32_e32 v228, s45, v134
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v187, v203
	v_cvt_f32_i32_e32 v188, v204
	v_cvt_f32_i32_e32 v189, v205
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v25.l, 0xff, v26.l
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
	v_lshlrev_b16 v42.h, 8, v45.l
	v_lshlrev_b16 v43.h, 8, v47.l
	v_lshlrev_b16 v44.h, 8, v190.l
	v_lshlrev_b16 v45.l, 8, v191.l
	v_lshlrev_b16 v45.h, 8, v192.l
	v_lshlrev_b16 v46.h, 8, v194.l
	v_lshlrev_b16 v47.l, 8, v195.l
	v_lshlrev_b16 v47.h, 8, v196.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v151, v199, v151
	v_mul_f32_e32 v150, v199, v150
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v190, v10, v199
	v_dual_mul_f32 v191, v9, v199 :: v_dual_mul_f32 v152, v199, v152
	v_mul_f32_e32 v192, v12, v199
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v155, v199, v155
	v_mul_f32_e32 v154, v199, v154
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v194, v14, v199
	v_mul_f32_e32 v195, v13, v199
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v157, v199, v157
	v_mul_f32_e32 v156, v199, v156
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v196, v16, v199
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v159, v199, v159 :: v_dual_mul_f32 v168, v200, v168
	v_mul_f32_e32 v161, v199, v161
	v_dual_mul_f32 v163, v199, v163 :: v_dual_mul_f32 v232, v53, v200
	v_mul_f32_e32 v162, v199, v162
	v_dual_mul_f32 v164, v199, v164 :: v_dual_mul_f32 v167, v200, v167
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v222, v24, v199 :: v_dual_mul_f32 v223, v50, v200
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v169, v200, v169 :: v_dual_mul_f32 v230, v51, v200
	v_dual_mul_f32 v171, v200, v171 :: v_dual_mul_f32 v234, v55, v200
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v231, v54, v200 :: v_dual_mul_f32 v174, v200, v174
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v173, v200, v173 :: v_dual_mul_f32 v182, v182, v200
	v_dual_mul_f32 v175, v200, v175 :: v_dual_mul_f32 v186, v186, v200
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v183, v183, v200 :: v_dual_mul_f32 v178, v200, v178
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_add_i32 s44, s45, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s47
	s_mov_b32 s13, s14
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v26.h, v26.h, v42.h
	v_or_b16 v27.h, v27.h, v43.h
	v_or_b16 v28.h, v28.h, v44.h
	v_or_b16 v29.l, v29.l, v45.l
	v_or_b16 v29.h, v29.h, v45.h
	v_or_b16 v30.h, v30.h, v46.h
	v_or_b16 v31.l, v31.l, v47.l
	v_or_b16 v31.h, v31.h, v47.h
	v_or_b16 v32.h, v32.h, v48.h
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v160, v199, v160
	v_dual_mul_f32 v165, v199, v165 :: v_dual_mul_f32 v170, v200, v170
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v224, v49, v200
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v172, v200, v172
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(1)
	v_perm_b32 v34, v218, v214, 0x5010400
	v_perm_b32 v35, v218, v214, 0x7030602
	v_perm_b32 v36, v219, v215, 0x5010400
	v_perm_b32 v37, v219, v215, 0x7030602
	v_perm_b32 v38, v220, v216, 0x5010400
	v_perm_b32 v39, v220, v216, 0x7030602
	v_perm_b32 v40, v221, v217, 0x5010400
	v_perm_b32 v41, v221, v217, 0x7030602
	v_and_b16 v33.l, 0xff, v34.l
	v_lshrrev_b32_e32 v201, 8, v34
	v_lshrrev_b32_e32 v202, 24, v34
	v_and_b16 v33.h, 0xff, v34.h
	v_and_b16 v34.l, 0xff, v35.l
	v_lshrrev_b32_e32 v203, 8, v35
	v_lshrrev_b32_e32 v204, 24, v35
	v_and_b16 v34.h, 0xff, v35.h
	v_and_b16 v35.l, 0xff, v36.l
	v_lshrrev_b32_e32 v205, 8, v36
	v_lshrrev_b32_e32 v206, 24, v36
	v_and_b16 v35.h, 0xff, v36.h
	v_and_b16 v36.l, 0xff, v37.l
	v_lshrrev_b32_e32 v207, 8, v37
	v_lshrrev_b32_e32 v208, 24, v37
	v_and_b16 v36.h, 0xff, v37.h
	v_and_b16 v37.l, 0xff, v38.l
	v_lshrrev_b32_e32 v209, 8, v38
	v_lshrrev_b32_e32 v210, 24, v38
	v_and_b16 v37.h, 0xff, v38.h
	v_and_b16 v38.l, 0xff, v39.l
	v_lshrrev_b32_e32 v211, 8, v39
	v_lshrrev_b32_e32 v212, 24, v39
	v_and_b16 v38.h, 0xff, v39.h
	v_and_b16 v39.l, 0xff, v40.l
	v_lshrrev_b32_e32 v213, 8, v40
	v_lshrrev_b32_e32 v214, 24, v40
	v_and_b16 v39.h, 0xff, v40.h
	v_and_b16 v40.l, 0xff, v41.l
	v_lshrrev_b32_e32 v215, 8, v41
	v_lshrrev_b32_e32 v216, 24, v41
	v_and_b16 v40.h, 0xff, v41.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v41.l, 8, v42.l
	v_lshlrev_b16 v41.h, 8, v43.l
	v_lshlrev_b16 v42.l, 8, v44.l
	v_lshlrev_b16 v43.l, 8, v46.l
	v_lshlrev_b16 v44.l, 8, v48.l
	v_lshlrev_b16 v46.l, 8, v193.l
	v_lshlrev_b16 v48.l, 8, v197.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v193, v11, v199
	v_mul_f32_e32 v197, v15, v199
	v_mul_f32_e32 v217, v17, v199
	v_mul_f32_e32 v218, v20, v199
	v_mul_f32_e32 v219, v19, v199
	v_mul_f32_e32 v220, v22, v199
	v_mul_f32_e32 v221, v21, v199
	v_mul_f32_e32 v199, v23, v199
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[9:12], v145 offset:34816
	ds_load_b128 v[13:16], v145 offset:34832
	ds_load_b128 v[17:20], v145 offset:35328
	ds_load_b128 v[21:24], v145 offset:35344
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v229, v52, v200
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v177, v200, v177
	v_mul_f32_e32 v176, v200, v176
	v_mul_f32_e32 v179, v200, v179
	v_mul_f32_e32 v181, v200, v181
	v_mul_f32_e32 v180, v200, v180
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v233, v56, v200
	v_mul_f32_e32 v185, v185, v200
	v_mul_f32_e32 v184, v184, v200
	v_mul_f32_e32 v187, v187, v200
	v_mul_f32_e32 v189, v189, v200
	v_mul_f32_e32 v188, v188, v200
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v55.l, 8, v213.l
	v_lshlrev_b16 v55.h, 8, v214.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v108, v150, v9 :: v_dual_fmac_f32 v97, v157, v16
	v_fmac_f32_e32 v116, v166, v9
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v149
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v109, v151, v10 :: v_dual_fmac_f32 v104, v152, v11
	v_dual_fmac_f32 v105, v153, v12 :: v_dual_fmac_f32 v86, v162, v21
	v_dual_fmac_f32 v100, v154, v13 :: v_dual_fmac_f32 v101, v155, v14
	v_fmac_f32_e32 v96, v156, v15
	v_dual_fmac_f32 v92, v158, v17 :: v_dual_fmac_f32 v93, v159, v18
	v_fmac_f32_e32 v88, v160, v19
	v_dual_fmac_f32 v90, v161, v20 :: v_dual_fmac_f32 v87, v163, v22
	v_dual_fmac_f32 v83, v164, v23 :: v_dual_fmac_f32 v74, v173, v16
	v_dual_fmac_f32 v85, v165, v24 :: v_dual_fmac_f32 v112, v168, v11
	v_dual_fmac_f32 v117, v167, v10 :: v_dual_fmac_f32 v68, v174, v17
	v_dual_fmac_f32 v113, v169, v12 :: v_dual_fmac_f32 v60, v179, v22
	v_dual_fmac_f32 v77, v170, v13 :: v_dual_fmac_f32 v66, v177, v20
	v_dual_fmac_f32 v78, v171, v14 :: v_dual_fmac_f32 v73, v172, v15
	v_dual_fmac_f32 v69, v175, v18 :: v_dual_fmac_f32 v58, v180, v23
	v_fmac_f32_e32 v65, v176, v19
	v_fmac_f32_e32 v59, v178, v21
	v_fmac_f32_e32 v57, v181, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v144, v9 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v145 offset:34816
	ds_load_b128 v[13:16], v145 offset:34832
	ds_load_b128 v[17:20], v145 offset:35328
	ds_load_b128 v[21:24], v145 offset:35344
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v56.l, 8, v215.l
	v_lshlrev_b16 v56.h, 8, v216.l
	v_lshlrev_b16 v49.l, 8, v201.l
	v_lshlrev_b16 v49.h, 8, v202.l
	v_lshlrev_b16 v50.l, 8, v203.l
	v_lshlrev_b16 v50.h, 8, v204.l
	v_lshlrev_b16 v51.l, 8, v205.l
	v_lshlrev_b16 v51.h, 8, v206.l
	v_lshlrev_b16 v52.l, 8, v207.l
	v_lshlrev_b16 v52.h, 8, v208.l
	v_lshlrev_b16 v53.l, 8, v209.l
	v_lshlrev_b16 v53.h, 8, v210.l
	v_lshlrev_b16 v54.l, 8, v211.l
	v_lshlrev_b16 v54.h, 8, v212.l
	v_or_b16 v39.l, v39.l, v55.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v25.l, v25.l, v41.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_fmac_f32_e32 v84, v191, v9
	v_fmac_f32_e32 v118, v190, v10
	v_dual_fmac_f32 v114, v193, v11 :: v_dual_fmac_f32 v115, v192, v12
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v102, v217, v17
	v_dual_fmac_f32 v110, v195, v13 :: v_dual_fmac_f32 v111, v194, v14
	v_fmac_f32_e32 v98, v219, v19
	v_dual_fmac_f32 v106, v197, v15 :: v_dual_fmac_f32 v107, v196, v16
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v94, v221, v21 :: v_dual_fmac_f32 v103, v198, v18
	v_fmac_f32_e32 v120, v229, v12
	v_dual_fmac_f32 v99, v218, v20 :: v_dual_fmac_f32 v122, v223, v10
	v_dual_fmac_f32 v95, v220, v22 :: v_dual_fmac_f32 v76, v233, v16
	v_dual_fmac_f32 v89, v199, v23 :: v_dual_fmac_f32 v70, v185, v20
	v_dual_fmac_f32 v91, v222, v24 :: v_dual_fmac_f32 v80, v231, v14
	v_dual_fmac_f32 v121, v224, v9 :: v_dual_fmac_f32 v72, v183, v18
	v_dual_fmac_f32 v119, v230, v11 :: v_dual_fmac_f32 v64, v187, v22
	v_dual_fmac_f32 v79, v232, v13 :: v_dual_fmac_f32 v62, v189, v24
	v_fmac_f32_e32 v75, v234, v15
	v_fmac_f32_e32 v71, v182, v17
	v_fmac_f32_e32 v67, v184, v19
	v_fmac_f32_e32 v63, v186, v21
	v_fmac_f32_e32 v61, v188, v23
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v39.h, v39.h, v55.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v25.h, v25.h, v41.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v40.l, v40.l, v56.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v26.l, v26.l, v42.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v40.h, v40.h, v56.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v27.l, v27.l, v43.l
	v_or_b16 v28.l, v28.l, v44.l
	v_or_b16 v30.l, v30.l, v46.l
	v_or_b16 v32.l, v32.l, v48.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v33.l, v33.l, v49.l
	v_or_b16 v33.h, v33.h, v49.h
	v_or_b16 v34.l, v34.l, v50.l
	v_or_b16 v34.h, v34.h, v50.h
	v_or_b16 v35.l, v35.l, v51.l
	v_or_b16 v35.h, v35.h, v51.h
	v_or_b16 v36.l, v36.l, v52.l
	v_or_b16 v36.h, v36.h, v52.h
	v_or_b16 v37.l, v37.l, v53.l
	v_or_b16 v37.h, v37.h, v53.h
	v_or_b16 v38.l, v38.l, v54.l
	v_or_b16 v38.h, v38.h, v54.h
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_store_b32 v225, v148 offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v226, v25
	ds_store_b16_d16_hi v226, v25 offset:32
	ds_store_b16 v226, v26 offset:64
	ds_store_b16_d16_hi v226, v26 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v226, v33 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v227, v27
	ds_store_b16_d16_hi v227, v27 offset:32
	ds_store_b16 v227, v28 offset:64
	ds_store_b16_d16_hi v227, v28 offset:96
	ds_store_b16 v228, v29
	ds_store_b16_d16_hi v228, v29 offset:32
	ds_store_b16 v228, v30 offset:64
	ds_store_b16_d16_hi v228, v30 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v226, v34 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v226, v31 offset:384
	ds_store_b16_d16_hi v226, v31 offset:416
	ds_store_b16 v226, v32 offset:448
	ds_store_b16_d16_hi v226, v32 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v226, v33 offset:16416
	ds_store_b16_d16_hi v226, v34 offset:16480
	ds_store_b16 v227, v35 offset:16384
	ds_store_b16_d16_hi v227, v35 offset:16416
	ds_store_b16 v227, v36 offset:16448
	ds_store_b16_d16_hi v227, v36 offset:16480
	ds_store_b16 v228, v37 offset:16384
	ds_store_b16_d16_hi v228, v37 offset:16416
	ds_store_b16 v228, v38 offset:16448
	ds_store_b16_d16_hi v228, v38 offset:16480
	ds_store_b16 v226, v39 offset:16768
	ds_store_b16_d16_hi v226, v39 offset:16800
	ds_store_b16 v226, v40 offset:16832
	ds_store_b16_d16_hi v226, v40 offset:16864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v17, v126 :: v_dual_mov_b32 v4, v125
	v_mov_b32_e32 v3, v129
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8400
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v84, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
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
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v178, 0
	v_cndmask_b32_e64 v2, 0x110, 0, vcc_lo
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_or_b32_e32 v18, v1, v136
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v175, 0
	v_mov_b32_e32 v50, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v1, v1, v2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_xor_b32_e32 v19, 16, v18
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v3, s0, v18
	ds_load_b128 v[13:16], v3
	ds_load_b128 v[5:8], v3 offset:512
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b32_e32 v210, v135, v1
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v1, s0, v19
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[9:12], v1
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[1:4], v1 offset:512
	v_xor_b32_e32 v219, 16, v210
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v21, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
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
	v_add_nc_u32_e32 v20, s12, v210
	v_add_nc_u32_e32 v21, s12, v219
	ds_load_b128 v[44:47], v20
	ds_load_b128 v[48:51], v20 offset:4096
	ds_load_b128 v[52:55], v21 offset:4096
	ds_load_b128 v[123:126], v21
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v27, s23 :: v_dual_mov_b32 v24, s20
	v_dual_mov_b32 v26, s22 :: v_dual_mov_b32 v25, s21
	v_dual_mov_b32 v23, s19 :: v_dual_mov_b32 v22, s18
	v_dual_mov_b32 v21, s17 :: v_dual_mov_b32 v20, s16
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[44:47], v[13:16], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[48:51], v[13:16], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[44:47], v[5:8], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[48:51], v[5:8], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[123:126], v[9:12], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[52:55], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[123:126], v[1:4], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[52:55], v[1:4], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v175, v30
	v_cvt_f32_i32_e32 v180, v31
	v_cvt_f32_i32_e32 v49, v32
	v_cvt_f32_i32_e32 v173, v33
	v_cvt_f32_i32_e32 v170, v34
	v_cvt_f32_i32_e32 v177, v35
	v_cvt_f32_i32_e32 v171, v36
	v_cvt_f32_i32_e32 v178, v37
	v_cvt_f32_i32_e32 v176, v38
	v_cvt_f32_i32_e32 v181, v39
	v_cvt_f32_i32_e32 v50, v40
	v_cvt_f32_i32_e32 v174, v41
	v_cvt_f32_i32_e32 v172, v42
	v_cvt_f32_i32_e32 v179, v43
	v_cvt_f32_i32_e32 v187, v132
	v_cvt_f32_i32_e32 v188, v133
	v_cvt_f32_i32_e32 v185, v134
	v_cvt_f32_i32_e32 v186, v135
	v_cvt_f32_i32_e32 v141, v136
	v_cvt_f32_i32_e32 v142, v137
	v_cvt_f32_i32_e32 v55, v138
	v_cvt_f32_i32_e32 v56, v139
	v_cvt_f32_i32_e32 v32, v20
	v_cvt_f32_i32_e32 v33, v21
	v_cvt_f32_i32_e32 v30, v22
	v_cvt_f32_i32_e32 v31, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v21, v26
	v_cvt_f32_i32_e32 v20, v27
	v_cvt_f32_i32_e32 v183, v28
	v_cvt_f32_i32_e32 v184, v29
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v33, off offset:52
	scratch_store_b32 off, v32, off offset:48
	scratch_store_b32 off, v31, off offset:20
	scratch_store_b32 off, v30, off offset:16
	scratch_store_b32 off, v23, off offset:12
	scratch_store_b32 off, v22, off offset:8
	scratch_store_b32 off, v21, off offset:4
	scratch_store_b32 off, v20, off
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v255, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v20, s10, v210
	v_add_nc_u32_e32 v21, s10, v219
	ds_load_b128 v[44:47], v20
	ds_load_b128 v[123:126], v20 offset:4096
	ds_load_b128 v[132:135], v21 offset:4096
	ds_load_b128 v[136:139], v21
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v27, s19 :: v_dual_mov_b32 v24, s16
	v_dual_mov_b32 v26, s18 :: v_dual_mov_b32 v25, s17
	v_dual_mov_b32 v23, s15 :: v_dual_mov_b32 v22, s14
	v_dual_mov_b32 v21, s13 :: v_dual_mov_b32 v20, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[44:47], v[13:16], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[123:126], v[13:16], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[44:47], v[5:8], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[123:126], v[5:8], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[136:139], v[9:12], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[132:135], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[136:139], v[1:4], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[132:135], v[1:4], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v196, v29
	v_cvt_f32_i32_e32 v189, v30
	v_cvt_f32_i32_e32 v197, v31
	v_cvt_f32_i32_e32 v190, v32
	v_cvt_f32_i32_e32 v198, v33
	v_cvt_f32_i32_e32 v191, v34
	v_cvt_f32_i32_e32 v199, v35
	v_cvt_f32_i32_e32 v192, v36
	v_cvt_f32_i32_e32 v200, v37
	v_cvt_f32_i32_e32 v193, v38
	v_cvt_f32_i32_e32 v201, v39
	v_cvt_f32_i32_e32 v194, v40
	v_cvt_f32_i32_e32 v202, v41
	v_cvt_f32_i32_e32 v195, v42
	v_cvt_f32_i32_e32 v203, v43
	v_cvt_f32_i32_e32 v208, v148
	v_cvt_f32_i32_e32 v209, v149
	v_cvt_f32_i32_e32 v206, v150
	v_cvt_f32_i32_e32 v207, v151
	v_cvt_f32_i32_e32 v160, v152
	v_cvt_f32_i32_e32 v161, v153
	v_cvt_f32_i32_e32 v150, v154
	v_cvt_f32_i32_e32 v151, v155
	v_cvt_f32_i32_e32 v253, v20
	v_cvt_f32_i32_e32 v254, v21
	v_cvt_f32_i32_e32 v29, v22
	v_cvt_f32_i32_e32 v255, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v20, v26
	v_cvt_f32_i32_e32 v21, v27
	v_cvt_f32_i32_e32 v182, v28
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
	s_mul_i32 s4, s0, s34
	.loc	1 387 34 is_stmt 1              ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v147, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v2, v146, s4, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s5, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 394 39                        ; generate_amdgcn.py:394:39
	v_add3_u32 v232, s26, s27, v0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v5, v143, s0, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v4, 28, v131
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v6, v232, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v3, 32, v17
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_and_b32 s9, s9, 0xffff
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v29, off offset:64
	scratch_store_b32 off, v23, off offset:36
	scratch_store_b32 off, v22, off offset:32
	scratch_store_b32 off, v21, off offset:28
	scratch_store_b32 off, v20, off offset:24
	v_mov_b32_e32 v228, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_add3_u32 v3, 0, v128, v3
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v204, 0, v127
	v_dual_mov_b32 v230, 0 :: v_dual_add_nc_u32 v9, s46, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v205, v3, v4
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_dual_cndmask_b32 v4, 0x80000000, v6 :: v_dual_cndmask_b32 v3, 0x80000000, v5
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v231, v1, s[8:11], 0 offen
	buffer_load_u16 v252, v3, s[8:11], 0 offen
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v10, s46, v19
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v149, 0
	v_mov_b32_e32 v148, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v140, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v229, 0 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v205, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v1, v4, s[28:31], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v2, 0, 1, s3
	v_mov_b32_e32 v216, 0
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
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v9, s45, v210
	v_add_nc_u32_e32 v10, s45, v219
	ds_load_b128 v[21:24], v9
	ds_load_b128 v[29:32], v9 offset:4096
	ds_load_b128 v[123:126], v10 offset:4096
	ds_load_b128 v[127:130], v10
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v9, s12 :: v_dual_mov_b32 v12, s15
	v_dual_mov_b32 v10, s13 :: v_dual_mov_b32 v11, s14
	v_dual_mov_b32 v13, s16 :: v_dual_mov_b32 v14, s17
	v_dual_mov_b32 v15, s18 :: v_dual_mov_b32 v16, s19
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[152:159], v[21:24], v[41:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[162:169], v[29:32], v[41:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[21:24], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[152:159], v[127:130], v[45:48], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[162:169], v[123:126], v[45:48], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[127:130], v[33:36], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[123:126], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v220, v154
	v_cvt_f32_i32_e32 v224, v155
	v_cvt_f32_i32_e32 v212, v156
	v_cvt_f32_i32_e32 v217, v157
	v_cvt_f32_i32_e32 v214, v158
	v_cvt_f32_i32_e32 v222, v159
	v_cvt_f32_i32_e32 v215, v162
	v_cvt_f32_i32_e32 v223, v163
	v_cvt_f32_i32_e32 v221, v164
	v_cvt_f32_i32_e32 v225, v165
	v_cvt_f32_i32_e32 v211, v166
	v_cvt_f32_i32_e32 v216, v167
	v_cvt_f32_i32_e32 v213, v168
	v_cvt_f32_i32_e32 v218, v169
	v_cvt_f32_i32_e32 v226, v233
	v_cvt_f32_i32_e32 v227, v234
	v_cvt_f32_i32_e32 v166, v235
	v_cvt_f32_i32_e32 v167, v236
	v_cvt_f32_i32_e32 v158, v237
	v_cvt_f32_i32_e32 v159, v238
	v_cvt_f32_i32_e32 v155, v239
	v_cvt_f32_i32_e32 v154, v240
	v_cvt_f32_i32_e32 v148, v9
	v_cvt_f32_i32_e32 v149, v10
	v_cvt_f32_i32_e32 v139, v11
	v_cvt_f32_i32_e32 v140, v12
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v9, v16
	v_cvt_f32_i32_e32 v229, v152
	v_cvt_f32_i32_e32 v230, v153
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v12, off offset:60
	scratch_store_b32 off, v11, off offset:56
	scratch_store_b32 off, v10, off offset:44
	scratch_store_b32 off, v9, off offset:40
	ds_load_b128 v[29:32], v204 offset:34816
	ds_load_b128 v[21:24], v204 offset:34832
	ds_load_b128 v[13:16], v204 offset:35328
	ds_load_b128 v[9:12], v204 offset:35344
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v145, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v130, s19 :: v_dual_add_nc_u32 v51, s44, v219
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[162:165], v51 offset:4096
	ds_load_b128 v[242:245], v51
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v128, s17 :: v_dual_add_nc_u32 v51, s44, v210
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[246:249], v51 offset:4096
	ds_load_b128 v[51:54], v51
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v129, s18 :: v_dual_mov_b32 v126, s15
	v_dual_mov_b32 v127, s16 :: v_dual_mov_b32 v124, s13
	v_mov_b32_e32 v125, s14
	v_mov_b32_e32 v123, s12
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[246:249], v[41:44], v[123:130] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[234:241], v[51:54], v[41:44], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[162:165], v[45:48], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[234:241], v[242:245], v[45:48], v[234:241] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[51:54], v[37:40], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[246:249], v[37:40], v[123:130] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v249, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v228, v234
	v_wmma_i32_16x16x16_iu8 v[41:48], v[242:245], v[33:36], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v247, v235
	v_wmma_i32_16x16x16_iu8 v[123:130], v[162:165], v[33:36], v[123:130] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v245, v236
	v_cvt_f32_i32_e32 v250, v237
	v_cvt_f32_i32_e32 v237, v238
	v_cvt_f32_i32_e32 v244, v239
	v_cvt_f32_i32_e32 v240, v240
	v_cvt_f32_i32_e32 v248, v241
	v_cvt_f32_i32_e32 v241, v131
	v_cvt_f32_i32_e32 v246, v133
	v_cvt_f32_i32_e32 v251, v134
	v_cvt_f32_i32_e32 v233, v135
	v_cvt_f32_i32_e32 v242, v136
	v_cvt_f32_i32_e32 v236, v137
	v_cvt_f32_i32_e32 v243, v138
	v_cvt_f32_i32_e32 v234, v41
	v_cvt_f32_i32_e32 v238, v42
	v_cvt_f32_i32_e32 v235, v43
	v_cvt_f32_i32_e32 v239, v44
	v_cvt_f32_i32_e32 v168, v45
	v_cvt_f32_i32_e32 v169, v46
	v_cvt_f32_i32_e32 v164, v47
	v_cvt_f32_i32_e32 v165, v48
	v_cvt_f32_i32_e32 v162, v123
	v_cvt_f32_i32_e32 v163, v124
	v_cvt_f32_i32_e32 v156, v125
	v_cvt_f32_i32_e32 v157, v126
	v_cvt_f32_i32_e32 v152, v127
	v_cvt_f32_i32_e32 v153, v128
	v_cvt_f32_i32_e32 v144, v129
	v_cvt_f32_i32_e32 v145, v130
.LBB0_16:
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s35, 31
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s10
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s0, s0, 27
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s31, s11
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s0, s35, s0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s33, s33, s27
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s1, s0, s34
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v33, v147, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v34, v146, s1, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s4, -1, 0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v35, v34, s[28:31], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v34, v143, s0, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v143.l, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_mov_b16_e64 v143.h, v252.l
	v_cndmask_b32_e32 v36, 0x80000000, v34, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v231.h, v143.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v39, v188, v143
	v_mul_f32_e32 v40, v187, v143
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v160, v160, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v219.h, v143.l
	v_mov_b16_e64 v147.h, v143.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v39, v39, v26, v117
	v_fma_f32 v40, v40, v25, v116
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v160, v160, v21, v79
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v210.h, v143.l
	v_mov_b16_e64 v146.h, v143.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v117, v117, v39, s2
	v_cndmask_b32_e64 v116, v116, v40, s2
	v_cndmask_b32_e64 v79, v79, v160, s2
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0x1
	buffer_load_u16 v34, v33, s[8:11], 0 offen
	buffer_load_u16 v33, v36, s[8:11], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v36, v232, s1, 1
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
	v_mov_b16_e64 v35.h, v231.l
	v_mov_b16_e64 v35.l, v143.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v38, v208, v143
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v37, v36, s[28:31], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v36, 1, v82
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v82, s27, v81
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v45, v196, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v48, v183, v35
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v38, v38, v29, v121
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v81, s33, s26, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v36, v209, v143
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v50, v50, v35
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v25, v48, v25, v108
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v121, v121, v38, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v232.h, v143.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v36, v36, v30, v122
	v_fma_f32 v30, v45, v30, v118
	s_mov_b32 s26, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v122, v122, v36, s2
	v_cndmask_b32_e64 v118, v118, v30, s2
	v_cndmask_b32_e64 v30, v108, v25, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v42, v206, v143 :: v_dual_lshlrev_b32 v25, 16, v34
	v_mul_f32_e32 v52, v189, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v129, v170, v35
	v_mul_f32_e32 v43, v186, v143
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v46, v182, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v184, v35
	v_mul_f32_e32 v53, v180, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v124, v190, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v125, v173, v35
	v_mul_f32_e32 v133, v171, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v173, v203, v35
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v42, v42, v31, v119
	v_fma_f32 v31, v52, v31, v114
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v52, v129, v19, v96
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v49, v49, v35
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v126, v199, v35
	v_mul_f32_e32 v134, v201, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v136, v181, v35
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v29, v46, v29, v84
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v26, v47, v26, v109
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v46, v124, v21, v110
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v124, v133, v5, v92
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v133, v173, v12, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v96, v96, v52, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v52, v220, v25
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v28, v113
	v_fma_f32 v28, v53, v28, v105
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v123, v198, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v128, v177, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v131, v192, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v137, v176, v35
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v49, v17, v100
	v_fma_f32 v129, v136, v8, v90
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v84, v84, v29, s2
	v_cndmask_b32_e64 v29, v109, v26, s2
	v_cndmask_b32_e64 v109, v114, v31, s2
	v_cndmask_b32_e64 v31, v105, v28, s2
	v_cndmask_b32_e64 v105, v110, v46, s2
	v_cndmask_b32_e64 v110, v91, v133, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v91, v214, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v49, v126, v24, v107
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v133, v251, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v126, v134, v16, v99
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v41, v207, v143 :: v_dual_mul_f32 v46, v229, v25
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v44, v185, v143
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v51, v197, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v54, v175, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v127, v191, v35
	v_mul_f32_e32 v130, v200, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v132, v178, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v135, v193, v35
	v_mul_f32_e32 v138, v202, v35
	v_dual_mul_f32 v170, v194, v35 :: v_dual_mul_f32 v173, v236, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v171, v174, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v174, v195, v35
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v175, v179, v35
	v_mul_f32_e32 v35, v172, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v99, v99, v126, s2
	v_cndmask_b32_e64 v90, v90, v129, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v126, v244, v25
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v45, v123, v22, v111
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v129, v240, v25
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v53, v128, v20, v97
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v136, v211, v25
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v123, v131, v13, v102
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v172, v243, v25
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v128, v137, v7, v88
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v41, v41, v32, v120
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v50, v50, v1, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v102, v123, s2
	v_cndmask_b32_e64 v88, v88, v128, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v123, v228, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v27, v112
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v128, v248, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v48, v125, v18, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v120, v120, v41, s2
	v_cndmask_b32_e64 v119, v119, v42, s2
	v_cndmask_b32_e64 v113, v113, v43, s2
	v_cndmask_b32_e64 v112, v112, v44, s2
	v_cndmask_b32_e64 v38, v101, v48, s2
	v_cndmask_b32_e64 v39, v100, v47, s2
	v_cndmask_b32_e64 v100, v107, v49, s2
	v_cndmask_b32_e64 v86, v86, v50, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[47:50], v204 offset:34816
	ds_load_b128 v[41:44], v204 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v97, v53, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v53, v217, v25
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v27, v54, v27, v104
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v54, v130, v14, v103
	v_fma_f32 v131, v170, v9, v94
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v35, v35, v3, v83
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v137, v242, v25
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v134, v174, v11, v89
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v97, v103, v54, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v54, v212, v25
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v32, v51, v32, v115
	v_fma_f32 v51, v127, v23, v106
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v107, v94, v131, s2
	v_cndmask_b32_e64 v114, v83, v35, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v83, 16, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v108, v115, v32, s2
	v_cndmask_b32_e64 v32, v104, v27, s2
	v_cndmask_b32_e64 v101, v106, v51, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v51, v224, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v131, v241, v25
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v125, v132, v6, v93
	v_fma_f32 v132, v171, v2, v87
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v170, v218, v25
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v127, v135, v15, v98
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v135, v175, v4, v85
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v171, v213, v25
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v130, v138, v10, v95
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[33:36], v204 offset:35328
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v111, v45, s2
	v_cndmask_b32_e64 v93, v93, v125, s2
	v_cndmask_b32_e64 v92, v92, v124, s2
	v_cndmask_b32_e64 v103, v98, v127, s2
	v_cndmask_b32_e64 v106, v95, v130, s2
	v_cndmask_b32_e64 v87, v87, v132, s2
	v_cndmask_b32_e64 v111, v89, v134, s2
	v_cndmask_b32_e64 v89, v85, v135, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v45, v230, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v115, v247, v25
	v_mul_f32_e32 v124, v250, v25
	v_mul_f32_e32 v125, v245, v25
	v_mul_f32_e32 v127, v237, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v85, v222, v25
	v_mul_f32_e32 v94, v223, v25
	v_mul_f32_e32 v95, v215, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v130, v249, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v98, v225, v25
	v_mul_f32_e32 v132, v221, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v134, v246, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v135, v216, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v138, v233, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[25:28], v204 offset:35344
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v180, v52, v49, v32
	v_fma_f32 v181, v51, v50, v31
	v_fma_f32 v182, v54, v41, v39
	v_fma_f32 v183, v53, v42, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v205, v37 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v204 offset:34816
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v46, v46, v47, v30
	v_fma_f32 v45, v45, v48, v29
	v_fma_f32 v85, v85, v44, v40
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v174, v227, v83
	v_mul_f32_e32 v175, v226, v83
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v94, v94, v34, v93
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v185, v29, v45, s3
	v_cndmask_b32_e64 v186, v30, v46, s3
	v_cndmask_b32_e64 v181, v31, v181, s3
	v_cndmask_b32_e64 v180, v32, v180, s3
	v_cndmask_b32_e64 v183, v38, v183, s3
	v_cndmask_b32_e64 v182, v39, v182, s3
	v_cndmask_b32_e64 v187, v40, v85, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[37:40], v204 offset:35328
	ds_load_b128 v[29:32], v204 offset:35344
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v184, v98, v36, v90
	v_fma_f32 v175, v175, v47, v116
	v_fma_f32 v174, v174, v48, v117
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[45:48], v204 offset:34832
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v98, v93, v94, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v93, v115, v52, v118
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v91, v91, v43, v96
	v_fma_f32 v95, v95, v33, v92
	v_fma_f32 v135, v135, v26, v87
	v_fma_f32 v171, v171, v27, v114
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v118, v118, v93, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v179, v235, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v188, v96, v91, s3
	v_cndmask_b32_e64 v95, v92, v95, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v92, v123, v51, v84
	v_fma_f32 v96, v125, v53, v109
	v_fma_f32 v53, v179, v53, v119
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v136, v136, v25, v86
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v125, v130, v38, v97
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v130, v173, v31, v111
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v84, v84, v92, s3
	v_cndmask_b32_e64 v92, v119, v53, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v177, v234, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v94, v90, v184, s3
	v_cndmask_b32_e64 v90, v87, v135, s3
	v_cndmask_b32_e64 v87, v114, v171, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v114, v124, v54, v108
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v115, v127, v45, v105
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v111, v111, v130, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v130, 0xbfb8aa3b, v92
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v51, v177, v51, v121
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v85, v86, v136, s3
	v_cndmask_b32_e64 v86, v116, v175, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v116, v126, v46, v104
	v_fma_f32 v126, v134, v39, v103
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v108, v108, v114, s3
	v_cndmask_b32_e64 v109, v109, v96, s3
	v_cndmask_b32_e64 v105, v105, v115, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v178, v239, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v114, v97, v125, s3
	v_cndmask_b32_e64 v96, v121, v51, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v103, v126, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v115, 0xbfb8aa3b, v105
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v54, v178, v54, v120
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v121, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v126, 0xbfb8aa3b, v111
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v115
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v120, v54, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v108
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v126
	v_cndmask_b32_e64 v51, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v130
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v127, v133, v40, v99
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	v_cndmask_b32_e64 v115, 0, 0x42800000, s6
	v_cndmask_b32_e64 v126, 0, 0x42800000, s16
	v_cndmask_b32_e64 v130, 0, 0x42800000, s20
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v84 :: v_dual_mul_f32 v176, v238, v83
	v_mul_f32_e32 v53, 0xbfb8aa3b, v109
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v123, v128, v48, v100
	v_fma_f32 v128, v138, v29, v107
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v99, v99, v127, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	v_dual_fmac_f32 v115, 0xbfb8aa3b, v105 :: v_dual_fmac_f32 v130, 0xbfb8aa3b, v92
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v111
	v_exp_f32_e32 v51, v51
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v124, v131, v37, v102
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v100, v100, v123, s3
	v_cndmask_b32_e64 v107, v107, v128, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v123, 0xbfb8aa3b, v99 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v108
	v_mul_f32_e32 v128, 0xbfb8aa3b, v96
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v53
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s0
	v_exp_f32_e32 v130, v130
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v52, v176, v52, v122
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v102, v124, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v119, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v124, 0xbfb8aa3b, v107
	v_cndmask_b32_e64 v53, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v128
	v_cndmask_b32_e64 v190, 0, 0xffffffc0, s20
	v_exp_f32_e32 v54, v54
	v_ldexp_f32 v51, v51, v133
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v97, v122, v52, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v118
	v_mul_f32_e32 v120, 0xbfb8aa3b, v102
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v119
	v_cndmask_b32_e64 v128, 0, 0x42800000, s18
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v109
	v_ldexp_f32 v130, v130, v190
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v132, v132, v35, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_cndmask_b32_e64 v119, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v120
	v_fmac_f32_e32 v128, 0xbfb8aa3b, v96
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v54, v54, v134
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v130, 1.0, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v134, null, v51, v51, v84
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v88, v132, s3
	v_cndmask_b32_e64 v88, v117, v174, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v117, v129, v47, v101
	v_fma_f32 v129, v137, v30, v106
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v120, 0, 0x42800000, s10
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s4
	v_dual_fmac_f32 v119, 0xbfb8aa3b, v100 :: v_dual_add_f32 v54, 1.0, v54
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v202, v134
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v101, v101, v117, s3
	v_cndmask_b32_e64 v106, v106, v129, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v129, 0xbfb8aa3b, v97 :: v_dual_fmac_f32 v120, 0xbfb8aa3b, v102
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v118
	v_exp_f32_e32 v119, v119
	v_ldexp_f32 v53, v53, v135
	v_dual_mul_f32 v117, 0xbfb8aa3b, v101 :: v_dual_mul_f32 v122, 0xbfb8aa3b, v103
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v123
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s7
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v120, v120
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v224, -v134, v202, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v131, v172, v32, v110
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v104, v116, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v117
	v_cndmask_b32_e64 v123, 0, 0x42800000, s11
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v172, 0, 0xffffffc0, s10
	v_exp_f32_e32 v115, v115
	v_ldexp_f32 v119, v119, v138
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v202, v224, v202
	v_div_scale_f32 v138, null, v53, v53, v109
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v110, v131, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v116, 0xbfb8aa3b, v104
	v_cndmask_b32_e64 v117, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v122
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s6
	v_ldexp_f32 v52, v52, v132
	v_ldexp_f32 v120, v120, v172
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v99
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v204, v138
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v116
	v_cndmask_b32_e64 v122, 0, 0x42800000, s12
	v_mul_f32_e32 v127, 0xbfb8aa3b, v110
	v_dual_fmac_f32 v117, 0xbfb8aa3b, v101 :: v_dual_add_f32 v52, 1.0, v52
	v_ldexp_f32 v115, v115, v137
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v120, 1.0, v120
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v123, v123
	v_cndmask_b32_e64 v116, 0, 0x42800000, s5
	v_cndmask_b32_e64 v173, 0, 0xffffffc0, s11
	v_fmac_f32_e32 v122, 0xbfb8aa3b, v103
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v127
	v_exp_f32_e32 v128, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v132, null, v52, v52, v118
	v_fma_f32 v226, -v138, v204, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v115, 1.0, v115
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v170, v170, v28, v89
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v125, 0xbfb8aa3b, v106 :: v_dual_fmac_f32 v116, 0xbfb8aa3b, v104
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v124
	v_cndmask_b32_e64 v127, 0, 0x42800000, s15
	v_cndmask_b32_e64 v184, 0, 0xffffffc0, s18
	v_exp_f32_e32 v117, v117
	v_ldexp_f32 v123, v123, v173
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v201, v132
	v_fmac_f32_e32 v204, v226, v204
	v_div_scale_f32 v173, null, v115, v115, v105
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v89, v170, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v124, 0, 0x42800000, s14
	v_cndmask_b32_e64 v170, 0, 0xffffffc0, s8
	v_exp_f32_e32 v116, v116
	v_ldexp_f32 v128, v128, v184
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v110
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v206, v173
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v131, 0xbfb8aa3b, v93 :: v_dual_fmac_f32 v124, 0xbfb8aa3b, v107
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s5
	v_ldexp_f32 v117, v117, v170
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v128, 1.0, v128
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v127, v127
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v223, -v132, v201, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v121
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v125
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v129
	v_cndmask_b32_e64 v177, 0, 0xffffffc0, s15
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v124, v124
	v_ldexp_f32 v116, v116, v136
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v136, null, v54, v54, v108
	v_fmac_f32_e32 v201, v223, v201
	v_fma_f32 v223, -v173, v206, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v117, 1.0, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v121, 0, 0x42800000, s9
	v_cndmask_b32_e64 v125, 0, 0x42800000, s13
	v_cndmask_b32_e64 v129, 0, 0x42800000, s17
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v131
	v_cndmask_b32_e64 v174, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v176, 0, 0xffffffc0, s14
	v_exp_f32_e32 v126, v126
	v_ldexp_f32 v127, v127, v177
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v203, v136
	v_fmac_f32_e32 v206, v223, v206
	v_div_scale_f32 v177, null, v117, v117, v101
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v131, 0, 0x42800000, s19
	v_dual_fmac_f32 v121, 0xbfb8aa3b, v114 :: v_dual_add_f32 v116, 1.0, v116
	v_cndmask_b32_e64 v178, 0, 0xffffffc0, s16
	v_ldexp_f32 v122, v122, v174
	v_fmac_f32_e32 v129, 0xbfb8aa3b, v97
	v_ldexp_f32 v124, v124, v176
	v_fmac_f32_e32 v125, 0xbfb8aa3b, v106
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v208, v177
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v121, v121
	v_ldexp_f32 v126, v126, v178
	v_dual_fmac_f32 v131, 0xbfb8aa3b, v93 :: v_dual_add_f32 v122, 1.0, v122
	v_exp_f32_e32 v129, v129
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v124, 1.0, v124
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v125, v125
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v200, null, v130, v130, v92
	v_fma_f32 v225, -v136, v203, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v171, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v175, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v179, 0, 0xffffffc0, s17
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v126, 1.0, v126
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v131, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v222, v200
	v_fmac_f32_e32 v203, v225, v203
	v_fma_f32 v225, -v177, v208, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v119, 1.0, v119
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v189, 0, 0xffffffc0, s19
	v_ldexp_f32 v121, v121, v171
	v_ldexp_f32 v125, v125, v175
	v_ldexp_f32 v129, v129, v179
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v171, null, v116, v116, v104
	v_fmac_f32_e32 v208, v225, v208
	v_div_scale_f32 v175, null, v119, v119, v100
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v131, v131, v189
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v135, s6, v84, v51, v84
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v129, 1.0, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v189, null, v120, v120, v102
	v_div_scale_f32 v192, null, v122, v122, v103
	v_rcp_f32_e32 v205, v171
	v_rcp_f32_e32 v207, v175
	v_div_scale_f32 v197, null, v129, v129, v97
	v_rcp_f32_e32 v211, v189
	v_rcp_f32_e32 v213, v192
	v_div_scale_f32 v176, s5, v100, v119, v100
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v218, v197
	v_div_scale_f32 v178, s4, v101, v117, v101
	v_fma_f32 v227, -v171, v205, 1.0
	v_fma_f32 v224, -v175, v207, 1.0
	v_div_scale_f32 v172, s9, v104, v116, v104
	v_div_scale_f32 v190, s0, v102, v120, v102
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v207, v224, v207
	v_fmac_f32_e32 v205, v227, v205
	v_fma_f32 v227, -v189, v211, 1.0
	v_fma_f32 v224, -v192, v213, 1.0
	v_div_scale_f32 v198, null, v128, v128, v96
	v_div_scale_f32 v194, null, v124, v124, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v211, v227, v211
	v_fmac_f32_e32 v213, v224, v213
	v_fma_f32 v224, -v197, v218, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v127, 1.0, v127
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v220, v198
	v_rcp_f32_e32 v215, v194
	v_div_scale_f32 v196, null, v126, v126, v111
	v_fmac_f32_e32 v218, v224, v218
	v_div_scale_f32 v195, null, v127, v127, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v217, v196
	v_mul_f32_e32 v224, v135, v202
	v_div_scale_f32 v133, vcc_lo, v118, v52, v118
	v_rcp_f32_e32 v216, v195
	v_div_scale_f32 v137, s7, v108, v54, v108
	v_div_scale_f32 v170, s8, v109, v53, v109
	v_div_scale_f32 v174, s10, v105, v115, v105
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v166, v166, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v227, -v195, v216, 1.0
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v49, v166, v49, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v216, v227, v216
	v_div_scale_f32 v193, null, v125, v125, v106
	v_fma_f32 v227, -v200, v222, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v112, v49, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v214, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v222, v227, v222
	v_fma_f32 v225, -v193, v214, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v123, 1.0, v123 :: v_dual_fmac_f32 v214, v225, v214
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v191, null, v123, v123, v99
	v_fma_f32 v225, -v198, v220, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v131, 1.0, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v227, s11, v99, v123, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v212, v191
	v_fmac_f32_e32 v220, v225, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v199, null, v131, v131, v93
	v_rcp_f32_e32 v221, v199
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v223, -v191, v212, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v121, 1.0, v121 :: v_dual_fmac_f32 v212, v223, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v179, null, v121, v121, v114
	v_fma_f32 v223, -v196, v217, 1.0
	v_div_scale_f32 v184, s1, v114, v121, v114
	v_rcp_f32_e32 v209, v179
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v226, -v179, v209, 1.0
	v_fmac_f32_e32 v209, v226, v209
	v_fma_f32 v226, -v194, v215, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v215, v226, v215
	v_fma_f32 v226, -v199, v221, 1.0
	v_fmac_f32_e32 v217, v223, v217
	v_fmac_f32_e32 v221, v226, v221
	v_fma_f32 v226, -v134, v224, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v224, v226, v202 :: v_dual_mul_f32 v223, v133, v201
	v_div_scale_f32 v226, s13, v106, v125, v106
	v_fma_f32 v134, -v134, v224, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v225, -v132, v223, v133
	v_mul_f32_e32 v135, v137, v203
	v_fmac_f32_e32 v223, v225, v201
	v_div_scale_f32 v225, s12, v103, v122, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v132, -v132, v223, v133
	v_div_scale_f32 v133, s14, v107, v124, v107
	v_div_fmas_f32 v132, v132, v201, v223
	v_fma_f32 v223, -v136, v135, v137
	v_mul_f32_e32 v201, v170, v204
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v134, v134, v202, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v135, v223, v203
	v_fma_f32 v202, -v138, v201, v170
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v52, v132, v52, v118
	v_mul_f32_e32 v118, v178, v208
	v_fma_f32 v136, -v136, v135, v137
	v_fmac_f32_e32 v201, v202, v204
	v_div_fixup_f32 v51, v134, v51, v84
	v_mul_f32_e32 v134, v227, v212
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v185, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v135, v136, v203, v135
	v_fma_f32 v138, -v138, v201, v170
	v_mul_f32_e32 v170, v176, v207
	v_mul_f32_e32 v136, v172, v205
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v54, v135, v54, v108
	v_fma_f32 v135, -v177, v118, v178
	v_fma_f32 v108, -v175, v170, v176
	v_fma_f32 v132, -v171, v136, v172
	v_div_fmas_f32 v138, v138, v204, v201
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v118, v135, v208
	v_fma_f32 v135, -v191, v134, v227
	v_dual_mul_f32 v203, v174, v206 :: v_dual_fmac_f32 v136, v132, v205
	v_fmac_f32_e32 v170, v108, v207
	v_mul_f32_e32 v204, v190, v211
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v134, v135, v212
	v_fma_f32 v132, -v173, v203, v174
	v_fma_f32 v84, -v171, v136, v172
	v_mul_f32_e32 v171, v226, v214
	v_fma_f32 v175, -v175, v170, v176
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v228, v225, v213 :: v_dual_fmac_f32 v203, v132, v206
	v_mul_f32_e32 v132, v133, v215
	v_div_fmas_f32 v136, v84, v205, v136
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v108, -v189, v204, v190
	v_fma_f32 v84, -v173, v203, v174
	v_fma_f32 v135, -v194, v132, v133
	v_mul_f32_e32 v201, v184, v209
	v_div_fixup_f32 v52, v138, v53, v109
	v_div_fixup_f32 v104, v136, v116, v104
	v_div_fmas_f32 v174, v84, v206, v203
	v_fmac_f32_e32 v132, v135, v215
	v_fma_f32 v84, -v179, v201, v184
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v204, v108, v211
	v_div_fixup_f32 v105, v174, v115, v105
	v_div_fmas_f32 v53, v175, v207, v170
	v_fmac_f32_e32 v201, v84, v209
	v_fma_f32 v84, -v192, v228, v225
	v_div_scale_f32 v224, s6, v110, v127, v110
	v_fma_f32 v108, -v193, v171, v226
	v_fma_f32 v177, -v177, v118, v178
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v105, v182, v105
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v223, s15, v111, v126, v111
	v_div_fixup_f32 v53, v53, v119, v100
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v100, v183, v104
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v179, -v179, v201, v184
	v_fmac_f32_e32 v228, v84, v213
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v189, -v189, v204, v190
	v_mul_f32_e32 v172, v224, v216
	v_div_fmas_f32 v109, v177, v208, v118
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v231.l, v105.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v171, v108, v214
	v_fma_f32 v191, -v191, v134, v227
	v_dual_mul_f32 v205, v223, v217 :: v_dual_mul_f32 v54, v181, v54
	v_div_fmas_f32 v115, v179, v209, v201
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v192, -v192, v228, v225
	v_div_fmas_f32 v104, v189, v211, v204
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v84, -v195, v172, v224
	v_fma_f32 v193, -v193, v171, v226
	v_div_fmas_f32 v116, v191, v212, v134
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v137, s17, v96, v128, v96
	v_fma_f32 v108, -v196, v205, v223
	v_fma_f32 v133, -v194, v132, v133
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v219.l, v54.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v114, v115, v121, v114
	v_div_fixup_f32 v101, v109, v117, v101
	v_div_fmas_f32 v117, v192, v213, v228
	s_mov_b32 vcc_lo, s13
	v_fmac_f32_e32 v172, v84, v216
	v_div_fmas_f32 v118, v193, v214, v171
	s_mov_b32 vcc_lo, s14
	v_div_scale_f32 v202, s16, v97, v129, v97
	v_mul_f32_e32 v203, v137, v220
	v_dual_fmac_f32 v205, v108, v217 :: v_dual_mul_f32 v98, v98, v114
	v_div_fixup_f32 v102, v104, v120, v102
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v104, 1, v219
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v114, v133, v215, v132
	v_fma_f32 v195, -v195, v172, v224
	v_mul_f32_e32 v173, v202, v218
	v_fma_f32 v84, -v198, v203, v137
	v_fma_f32 v196, -v196, v205, v223
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v54, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v99, v116, v123, v99
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v54, v54, v104, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v104, v118, v125, v106
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v106, 1, v231
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v107, v114, v124, v107
	s_mov_b32 vcc_lo, s6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v225.h, v143.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v95, v95, v102
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v102, v195, v216, v172
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v135, -v197, v173, v202
	v_dual_fmac_f32 v203, v84, v220 :: v_dual_mul_f32 v94, v94, v99
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s9, v105, v105
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v99, v196, v217, v205
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v105, v105, v106, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v106, v85, v107 :: v_dual_fmac_f32 v173, v135, v218
	v_mul_f32_e32 v52, v180, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v227.h, v143.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v161, v161, v143 :: v_dual_mul_f32 v104, v90, v104
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v99, v99, v126, v111
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v227.l, v106.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v101, v188, v101
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v135.h, v143.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v161, v161, v22, v80
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v22, -v197, v173, v202
	v_div_fixup_f32 v103, v117, v122, v103
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v135.l, v101.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v99, v87, v99
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v226.h, v143.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v137, -v198, v203, v137
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v178.h, v143.l
	v_mov_b16_e64 v226.l, v99.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v91, v91, v103
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v103, v22, v218, v173
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.h, 0x7fff, v54.h, s0
	v_and_b32_e32 v54, 1, v135
	v_mov_b16_e64 v147.l, v21.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v197, s7, v93, v131, v93
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v210.l, v52.h
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v109, 1, v147
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v90, v137, v220, v203
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v178.l, v94.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v51, v186, v51 :: v_dual_mul_f32 v198, v197, v221
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v21, v21
	v_add3_u32 v21, v21, v109, 0x7fff
	v_and_b32_e32 v109, 1, v210
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v90, v90, v128, v96
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v96, 1, v178
	v_mov_b16_e64 v146.l, v51.h
	v_mov_b16_e64 v206.h, v143.l
	v_mov_b16_e64 v190.h, v143.l
	v_cmp_o_f32_e64 s5, v52, v52
	v_cmp_o_f32_e64 s6, v101, v101
	v_and_b32_e32 v115, 1, v146
	v_add3_u32 v52, v52, v109, 0x7fff
	v_mov_b16_e64 v206.l, v98.h
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v167, v167, v83
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v54, v101, v54, 0x7fff
	v_mov_b16_e64 v190.l, v104.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v53, v187, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v108.h, v143.l
	v_cmp_o_f32_e64 s1, v51, v51
	v_add3_u32 v51, v51, v115, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v52.h, s5
	v_and_b32_e32 v52, 1, v206
	v_cndmask_b16 v87.l, 0x7fff, v54.h, s6
	v_and_b32_e32 v54, 1, v190
	v_mov_b16_e32 v108.l, v53.h
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v50, v167, v50, v113
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v176.h, v143.l
	v_cndmask_b16 v21.l, 0x7fff, v51.h, s1
	v_mov_b16_e64 v176.l, v95.h
	v_cmp_o_f32_e64 s10, v53, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v113, v50, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v51, 1, v108
	v_mov_b16_e64 v184.h, v143.l
	v_cmp_o_f32_e64 s1, v95, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v102, v102, v127, v110
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_add3_u32 v51, v53, v51, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v53, v103, v129, v97
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v97, 1, v176
	v_mov_b16_e64 v224.h, v143.l
	v_mov_b16_e64 v232.l, v100.h
	v_cmp_o_f32_e64 s5, v104, v104
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v53, v88, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v88, v95, v97, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v95, v86, v90
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v86, v94, v96, 0x7fff
	v_and_b32_e32 v94, 1, v226
	v_mov_b16_e64 v184.l, v91.h
	v_cndmask_b16 v87.h, 0x7fff, v51.h, s10
	v_add3_u32 v54, v104, v54, 0x7fff
	v_mov_b16_e64 v224.l, v95.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v89, v89, v102
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v51, 1, v184
	v_mov_b16_e64 v194.h, v143.l
	v_and_b32_e32 v115, 1, v232
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s4
	v_cmp_o_f32_e64 s4, v98, v98
	v_cmp_o_f32_e64 s0, v91, v91
	v_add3_u32 v52, v98, v52, 0x7fff
	v_add3_u32 v51, v91, v51, 0x7fff
	v_mov_b16_e64 v194.l, v53.h
	v_cndmask_b16 v91.h, 0x7fff, v54.h, s5
	v_and_b32_e32 v54, 1, v224
	v_mov_b16_e64 v225.l, v89.h
	v_cmp_o_f32_e64 s8, v100, v100
	v_add3_u32 v100, v100, v115, 0x7fff
	v_cndmask_b16 v90.h, 0x7fff, v52.h, s4
	v_and_b32_e32 v52, 1, v227
	v_cndmask_b16 v90.l, 0x7fff, v88.h, s1
	v_and_b32_e32 v88, 1, v225
	v_cndmask_b16 v86.l, 0x7fff, v51.h, s0
	v_and_b32_e32 v51, 1, v194
	v_cndmask_b16 v85.h, 0x7fff, v100.h, s8
	v_cndmask_b16 v85.l, 0x7fff, v105.h, s9
	v_cmp_o_f32_e64 s8, v106, v106
	v_cmp_o_f32_e64 s9, v89, v89
	v_cmp_o_f32_e64 s6, v99, v99
	v_cmp_o_f32_e64 s4, v53, v53
	v_add3_u32 v52, v106, v52, 0x7fff
	v_add3_u32 v88, v89, v88, 0x7fff
	v_add3_u32 v89, v99, v94, 0x7fff
	v_add3_u32 v51, v53, v51, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v53, v169, v83
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v91.l, 0x7fff, v52.h, s8
	v_add3_u32 v52, v95, v54, 0x7fff
	v_cndmask_b16 v88.l, 0x7fff, v89.h, s6
	v_cndmask_b16 v89.h, 0x7fff, v51.h, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v80, v161, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, s0, v92, v130, v92
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v80, v168, v83
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v86.h, 0x7fff, v86.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v46, v53, v46, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v94, v54, v222
	v_fma_f32 v53, -v199, v198, v197
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v45, v80, v45, v79
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v51, v46, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v200, v94, v54
	v_fmac_f32_e32 v198, v53, v221
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v79, v45, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v95, v95
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v46
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v94, v51, v222
	v_fma_f32 v79, -v199, v198, v197
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v53
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v89.l, 0x7fff, v52.h, s1
	v_mov_b16_e64 v52.h, v143.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v200, v94, v54
	v_div_fmas_f32 v79, v79, v221, v198
	s_mov_b32 vcc_lo, s0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v95, v158, v83
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v88.h, 0x7fff, v88.h, s9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v54, v54, v222, v94
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v94, v151, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v79, v79, v131, v93
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v84, s27, 4, v82
	s_mov_b32 s27, 0x31027000
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v54, v54, v130, v92
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v24, v94, v24, v76
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v94, v150, v143
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v50, v50, v79 :: v_dual_mul_f32 v49, v49, v54
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v76, v24, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v76, v165, v83
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v51
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v52.l, v50.h
	v_mov_b16_e32 v79.l, v49.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v46
	v_cndmask_b32_e64 v51, 0, 0x42800000, s5
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v79.h, v143.l
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v45, v45
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v53 :: v_dual_mul_f32 v92, v141, v143
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v94, v23, v75
	v_fma_f32 v48, v76, v48, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v51, v51
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v17, v92, v17, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v75, v23, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v75, v164, v83
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v45, v80
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v48, s3
	v_cndmask_b32_e64 v17, v77, v17, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v77, v159, v83
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v47, v75, v47, v23
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v80, 1.0, v45 :: v_dual_and_b32 v45, 1, v52
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v51, v51, v54
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v54, 1, v79
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v79, v142, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, null, v80, v80, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v50, v45, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v50, 1.0, v51
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v18, v79, v18, v78
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v51, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v47, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v93, null, v50, v50, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v78, v18, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v78, vcc_lo, v46, v80, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v79, v93
	v_div_scale_f32 v76, s0, v53, v50, v53
	v_fma_f32 v92, -v52, v51, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v75, 0xbfb8aa3b, v24
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v77, v42, v18
	v_fma_f32 v41, v95, v41, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v51, v92, v51
	v_fma_f32 v92, -v93, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v42, s3
	v_cndmask_b32_e64 v17, v17, v41, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v96, v78, v51
	v_fmac_f32_e32 v79, v92, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v52, v96, v78
	v_mul_f32_e32 v92, v76, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v96, v48, v51
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v54, v49, v54, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v93, v92, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v52, v96, v78
	v_fmac_f32_e32 v92, v48, v79
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v75
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v42, v51, v96
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v51, -v93, v92, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v42, v80, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v51, v51, v79, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v18, v18, v42
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v51, v50, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v23
	v_exp_f32_e32 v47, v47
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v50, v56, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v46
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v42, v48
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.l, v18.h
	v_mov_b16_e64 v46.h, v143.l
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v50, v20, v74
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v51, v55, v143
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v45.l, 0x7fff, v54.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v41, v47, v41
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v46, 1, v46
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v51, v19, v73
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v55, v154, v83
	.loc	1 441 34 is_stmt 1              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v42, v42, v47
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v18, v46, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v74, v20, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v20, v155, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v41, v41, v24
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v73, v19, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, vcc_lo, v24, v41, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v52, null, v42, v42, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v20, v43, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v56, s1, v23, v42, v23
	v_rcp_f32_e32 v50, v52
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v55, v44, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v20, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v55, v162, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v47, v49, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v17.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v44, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v48.h, v143.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v51, v49
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v51, v254, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v52, v50, 1.0
	v_dual_mul_f32 v43, v53, v49 :: v_dual_and_b32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v14, v51, v14, v72
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v50, v54, v50 :: v_dual_mul_f32 v51, v253, v143
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v54, v163, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v48, v17, v48, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v72, v14, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v13, v51, v13, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v47, v43, v53
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v38, v54, v38, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v54, v56, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v71, v13, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v43, v51, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v38, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v52, v54, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v37, v55, v37, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v47, v43, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v54, v38, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v13, v37, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v49, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v52, v54, v56
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v44, v255, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v20, v20, v41, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v13, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v38, v50, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v16, v44, v16, v70
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v20
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v38, v42, v23
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v38.h, v143.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v44, v149, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v70, v16, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v13
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v19, v23
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v18.h
	v_mov_b16_e64 v23.h, v143.l
	v_cndmask_b16 v13.h, 0x7fff, v46.h, s0
	v_cmp_o_f32_e64 s0, v17, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:64
	scratch_load_b32 v42, off, off offset:48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v23, 1, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.l, 0x7fff, v48.h, s0
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v24, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v23, v18, v23, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v18, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.l, v19.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_and_b32_e32 v38, 1, v38
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v143
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v5, v42, v5, v68
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v18, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v68, v5, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v18, v6, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v17, v17, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v69, v6, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v24, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v19, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v38, v41
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v20, v20, v37
	v_fma_f32 v18, -v41, v38, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v42, v43
	v_fmac_f32_e32 v38, v18, v38
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v18, v157, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, vcc_lo, v14, v17, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v18, v18, v40, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v43, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v18, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v46, v46, v143
	v_mul_f32_e32 v18, v156, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s1, v37, v20, v37
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v16
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v15, v46, v15, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v46, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v49
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v67, v15, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v40, v148, v83
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v18, v18, v39, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v41, v46, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v16
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v33, v40, v33, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v40, v48, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v18, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v18, v44, v34, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v39, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v43, v40, v48
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v15
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v18, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v41, v46, v47
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v40, v34, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v39
	v_exp_f32_e32 v34, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v18, v18, v38, v46
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v43, v40, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v14, v18, v17, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v38, v42, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v15
	v_ldexp_f32 v33, v34, v41
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v14
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v38, v20, v37
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v39, v39
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v37, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v20.h, v143.l
	v_cndmask_b16 v23.l, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v40, v139, v83
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v14, v39, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v39, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v17
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v19, v19, v16
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v20.l, v5.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v18.h, v143.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v14, v14, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v20
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v24, v34
	v_fma_f32 v38, -v17, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v33, v38, v33
	v_fma_f32 v38, -v34, v24, 1.0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v37, v37, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v5, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v8, v37, v8, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, vcc_lo, v16, v19, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v39, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v18, v6, v18, 0x7fff
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v39, v7, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v66, v8, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v8, v37, v33 :: v_dual_mul_f32 v39, v140, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v65, v6, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v17, v8, v37
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v36, v39, v36, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, v40, v35, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v8, v41, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v36, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v35, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v24, v38, v24
	v_div_scale_f32 v38, s1, v15, v14, v15
	v_fma_f32 v17, -v17, v8, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v42, v38, v24
	v_div_fmas_f32 v8, v17, v33, v8
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v33, v153, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v34, v42, v38
	v_div_fixup_f32 v8, v8, v19, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v39, v24
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v17, -v34, v42, v38
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v17, v24, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v14, v17, v14, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v36, v36, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v10, v36, v10, v64
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v64, v10, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v19, v33, v30, v10
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v30, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v10, v19, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e64 v10.h, v143.l
	v_mov_b16_e64 v14.h, v143.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v16, v152, v83
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v6.h
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v19, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v7, v10, 0x7fff
	v_add3_u32 v7, v6, v14, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v35, v35, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v9, v35, v9, v63
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v35, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v63, v9, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v5, v16, v29, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:12 ; 4-byte Folded Reload
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
	v_mul_f32_e32 v17, v145, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v15, v15, v20
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v9, v9, v8
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v19, v19, v143
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v11, v19, v11, v61
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v14, v14, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v61, v11, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v12, v14, v12, v62
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v14, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v35, v35, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v62, v12, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v17, v17, v32, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v12, v17, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v17, v20
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v144, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v20, v17, 1.0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v16, v16, v143 :: v_dual_fmac_f32 v17, v29, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v2, v16, v2, v60
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v16, v19, v31, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, s1, v8, v9, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v60, v2, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v11, v11, v16, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v16, 0xbfb8aa3b, v12 :: v_dual_mul_f32 v33, v31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v20, v33, v31
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v30, v30, v83
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v33, v36, v17
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v26, v30, v26, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v12
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v15, v15, v5
	v_div_scale_f32 v32, s4, v5, v15, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v16, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v20, v33, v31
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v26, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v143
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v1, v14, v1, v59
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v14, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v59, v1, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v25, v35, v25, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v19, v14, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v25, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v14, v29, v14
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v17, v20, v17, v33
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v16, v16, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v29, v32, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v17, v9, v8
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v9, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v11
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v19, v29, v32
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_fmac_f32 v29, v34, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v24, v24, v11
	v_fma_f32 v19, -v19, v29, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v31, v34
	v_div_fmas_f32 v14, v19, v14, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v5, v14, v15, v5
	v_div_scale_f32 v15, s0, v11, v24, v11
	v_fma_f32 v20, -v34, v31, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_mul_f32 v1, v1, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v31, v20, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v35, null, v16, v16, v12
	v_div_scale_f32 v14, vcc_lo, v12, v16, v12
	v_mul_f32_e32 v5, v15, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v30, v35
	v_fma_f32 v8, -v34, v5, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v5, v8, v31
	v_fma_f32 v19, -v35, v30, 1.0
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v8, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v15, -v34, v5, v15
	v_fmac_f32_e32 v30, v19, v30
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v19, off, off          ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v17, v14, v30
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v9, v9, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v3, v9, v3, v58
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v58, v3, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v8, v8, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v9, -v35, v17, v14
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v19, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v17, v9, v30
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v9, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v4, v19, v4, v57
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v35, v17, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v57, v4, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v14, v14, v30, v17
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v5, v15, v31, v5
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v8, v8, v28, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v15.l, v2.h
	v_mov_b16_e64 v15.h, v143.l
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v5, v24, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v14, v16, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v10.l, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v8.h, v143.l
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v9, v9, v27, v3
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v9, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e64 v9.h, v143.l
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
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b32_e32 v9, 0x5410
	v_mov_b32_e32 v11, 0x7632
	v_add3_u32 v2, v4, v8, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v12, v86, v88 :: v_dual_cndmask_b32 v9, 0x1054, v9
	v_cndmask_b32_e32 v16, v45, v23, vcc_lo
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_lshl_or_b32 v9, v9, 8, v9
	v_cndmask_b32_e32 v2, v21, v85, vcc_lo
	v_lshl_or_b32 v11, v11, 8, v11
	v_dual_cndmask_b32 v5, v22, v87 :: v_dual_cndmask_b32 v14, v13, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 0x540054, v9
	v_cndmask_b32_e32 v7, v90, v91, vcc_lo
	v_and_b32_e32 v11, 0x760076, v11
	v_cndmask_b32_e32 v13, v89, v13, vcc_lo
	v_cndmask_b32_e32 v17, v3, v18, vcc_lo
	v_dual_cndmask_b32 v3, v18, v3 :: v_dual_cndmask_b32 v18, v0, v10
	v_cndmask_b32_e32 v0, v10, v0, vcc_lo
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v10, v11, 4, v11
	s_mov_b32 s0, 0x76543210
	v_dual_cndmask_b32 v1, v85, v21 :: v_dual_cndmask_b32 v6, v91, v90
	v_cndmask_b32_e32 v4, v87, v22, vcc_lo
	v_dual_cndmask_b32 v8, v88, v86 :: v_dual_cndmask_b32 v15, v23, v45
	v_and_b32_e32 v20, 0x7060706, v10
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 0x5040504, v9
	v_permlanex16_b32 v13, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v5, v4, v20
	v_perm_b32 v0, v2, v1, v19
	v_perm_b32 v1, v2, v1, v20
	v_perm_b32 v2, v5, v4, v19
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
	v_add_lshl_u32 v16, v81, v82, 1
	v_add_lshl_u32 v17, v81, v84, 1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 72
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
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 72
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20704
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 72
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 72
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 17
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
