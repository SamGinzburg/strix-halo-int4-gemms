	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
	v_mov_b32_e32 v119, v0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_and_b32_e32 v1, 3, v119
	v_lshlrev_b32_e32 v2, 3, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v98, 0xf0, v119
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v99, 15, v119
	v_lshlrev_b32_e32 v101, 5, v119
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v3, 3, v98
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s26, 63
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
	s_lshr_b32 s9, s9, 26
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
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s13, s4, 2
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v102, v99, 9, v3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v105, 0x90, v102
	v_add_nc_u32_e32 v59, 0, v102
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v0, s5
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v106, 0x110, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v60, 0, v105
	v_add_nc_u32_e32 v61, 0, v106
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	v_rcp_iflag_f32_e32 v0, s18
	v_readfirstlane_b32 s18, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v0, 2, v119
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s6, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_abs_i32 s7, s2
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_mul_lo_u32 v0, s12, v0
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
	v_mul_lo_u32 v4, s34, v3
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s13, s17, s13
	.loc	1 368 26                        ; generate_amdgcn.py:368:26
	s_lshl_b32 s30, s3, 5
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s13, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s12, 31
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s13, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v103, v99, 4, v4
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 6
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_mul_i32 s15, s34, s30
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	s_mul_i32 s2, s33, s12
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s14, 31
.Ltmp15:
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add3_u32 v100, v0, v2, s2
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add3_u32 v0, s26, s15, v103
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s3, 27
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
	v_add_nc_u32_e32 v4, s34, v0
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v5, s27, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v6, 0x80000000, v0, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v14, s34, v5
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[6:9], v6, s[20:23], 0 offen
	buffer_load_b128 v[10:13], v4, s[20:23], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v4, 0x80000000, v5, s2
	v_cndmask_b32_e64 v5, 0x80000000, v14, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 63
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v0, s27, 6, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s35, s30, 32
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[14:17], v4, s[20:23], 0 offen
	buffer_load_b128 v[18:21], v5, s[20:23], 0 offen
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v4, s35, v100
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v5, s34, v0
	.loc	1 374 34                        ; generate_amdgcn.py:374:34
	v_add_nc_u32_e32 v2, s30, v100
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v3, 16, v99
	s_mov_b32 s12, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v38, 0x80000000, v4, s3
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v4, 0x80000000, v0, s3
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_clause 0x1
	buffer_load_b128 v[22:25], v4, s[20:23], 0 offen
	buffer_load_b128 v[26:29], v5, s[20:23], 0 offen
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v4, s34, v0
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	buffer_load_b64 v[56:57], v38, s[4:7], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x5f
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	s_clause 0x1
	buffer_load_b128 v[30:33], v0, s[20:23], 0 offen
	buffer_load_b128 v[34:37], v4, s[20:23], 0 offen
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[54:55], v2, s[4:7], 0 offen
	v_lshlrev_b32_e32 v2, 3, v119
	v_bfe_i32 v4, v119, 4, 1
	v_and_b32_e32 v0, 16, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v5, 0x778, v2
	v_and_b32_e32 v4, 0x90, v4
	v_lshlrev_b32_e32 v2, 4, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v104, v4, v5
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 32, v99
	v_or_b32_e32 v5, 48, v99
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v58, 0, v104
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
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(6)
	v_perm_b32 v43, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v44, v19, v15, 0x5010400
	v_perm_b32 v19, v19, v15, 0x7030602
	v_perm_b32 v45, v20, v16, 0x5010400
	v_perm_b32 v20, v20, v16, 0x7030602
	v_perm_b32 v46, v21, v17, 0x5010400
	v_perm_b32 v47, v21, v17, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v6.l, 0xff, v38.l
	v_lshrrev_b32_e32 v48, 8, v38
	v_lshrrev_b32_e32 v49, 24, v38
	v_and_b16 v6.h, 0xff, v38.h
	v_and_b16 v7.l, 0xff, v10.l
	v_lshrrev_b32_e32 v38, 8, v10
	v_lshrrev_b32_e32 v50, 24, v10
	v_and_b16 v7.h, 0xff, v10.h
	v_and_b16 v8.l, 0xff, v39.l
	v_lshrrev_b32_e32 v51, 8, v39
	v_lshrrev_b32_e32 v52, 24, v39
	v_and_b16 v8.h, 0xff, v39.h
	v_and_b16 v9.l, 0xff, v11.l
	v_lshrrev_b32_e32 v39, 8, v11
	v_lshrrev_b32_e32 v53, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	v_and_b16 v10.l, 0xff, v40.l
	v_lshrrev_b32_e32 v62, 8, v40
	v_lshrrev_b32_e32 v63, 24, v40
	v_and_b16 v10.h, 0xff, v40.h
	v_and_b16 v11.l, 0xff, v12.l
	v_lshrrev_b32_e32 v40, 8, v12
	v_lshrrev_b32_e32 v64, 24, v12
	v_and_b16 v11.h, 0xff, v12.h
	v_and_b16 v12.l, 0xff, v41.l
	v_lshrrev_b32_e32 v65, 8, v41
	v_lshrrev_b32_e32 v66, 24, v41
	v_and_b16 v12.h, 0xff, v41.h
	v_and_b16 v13.l, 0xff, v42.l
	v_lshrrev_b32_e32 v41, 8, v42
	v_lshrrev_b32_e32 v67, 24, v42
	v_and_b16 v13.h, 0xff, v42.h
	s_waitcnt vmcnt(4)
	v_perm_b32 v42, v26, v22, 0x5010400
	v_perm_b32 v68, v26, v22, 0x7030602
	v_perm_b32 v69, v27, v23, 0x5010400
	v_perm_b32 v70, v27, v23, 0x7030602
	v_perm_b32 v71, v28, v24, 0x5010400
	v_perm_b32 v72, v28, v24, 0x7030602
	v_perm_b32 v73, v29, v25, 0x5010400
	v_perm_b32 v74, v29, v25, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v14.l, 0xff, v43.l
	v_lshrrev_b32_e32 v75, 8, v43
	v_lshrrev_b32_e32 v76, 24, v43
	v_and_b16 v14.h, 0xff, v43.h
	v_and_b16 v15.l, 0xff, v18.l
	v_lshrrev_b32_e32 v43, 8, v18
	v_lshrrev_b32_e32 v77, 24, v18
	v_and_b16 v15.h, 0xff, v18.h
	v_and_b16 v16.l, 0xff, v44.l
	v_lshrrev_b32_e32 v78, 8, v44
	v_lshrrev_b32_e32 v79, 24, v44
	v_and_b16 v16.h, 0xff, v44.h
	v_and_b16 v17.l, 0xff, v19.l
	v_lshrrev_b32_e32 v44, 8, v19
	v_lshrrev_b32_e32 v80, 24, v19
	v_and_b16 v17.h, 0xff, v19.h
	v_and_b16 v18.l, 0xff, v45.l
	v_lshrrev_b32_e32 v81, 8, v45
	v_lshrrev_b32_e32 v82, 24, v45
	v_and_b16 v18.h, 0xff, v45.h
	v_and_b16 v19.l, 0xff, v20.l
	v_lshrrev_b32_e32 v45, 8, v20
	v_lshrrev_b32_e32 v83, 24, v20
	v_and_b16 v19.h, 0xff, v20.h
	v_and_b16 v20.l, 0xff, v46.l
	v_lshrrev_b32_e32 v84, 8, v46
	v_lshrrev_b32_e32 v85, 24, v46
	v_and_b16 v20.h, 0xff, v46.h
	v_and_b16 v21.l, 0xff, v47.l
	v_lshrrev_b32_e32 v46, 8, v47
	v_lshrrev_b32_e32 v86, 24, v47
	v_and_b16 v21.h, 0xff, v47.h
	s_waitcnt vmcnt(1)
	v_perm_b32 v47, v34, v30, 0x5010400
	v_perm_b32 v87, v34, v30, 0x7030602
	v_perm_b32 v88, v35, v31, 0x5010400
	v_perm_b32 v89, v35, v31, 0x7030602
	v_perm_b32 v90, v36, v32, 0x5010400
	v_perm_b32 v91, v36, v32, 0x7030602
	v_perm_b32 v92, v37, v33, 0x5010400
	v_perm_b32 v93, v37, v33, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v22.l, 8, v48.l
	v_lshlrev_b16 v26.l, 8, v62.l
	v_lshrrev_b32_e32 v62, 8, v42
	v_lshlrev_b16 v22.h, 8, v49.l
	v_lshlrev_b16 v26.h, 8, v63.l
	v_lshrrev_b32_e32 v63, 24, v42
	v_lshlrev_b16 v23.l, 8, v38.l
	v_lshlrev_b16 v27.h, 8, v64.l
	v_lshrrev_b32_e32 v64, 8, v68
	v_lshlrev_b16 v23.h, 8, v50.l
	v_lshlrev_b16 v28.l, 8, v65.l
	v_lshrrev_b32_e32 v65, 24, v68
	v_lshlrev_b16 v24.h, 8, v52.l
	v_lshlrev_b16 v29.h, 8, v67.l
	v_lshrrev_b32_e32 v67, 24, v69
	v_lshlrev_b16 v24.l, 8, v51.l
	v_lshlrev_b16 v25.l, 8, v39.l
	v_lshlrev_b16 v25.h, 8, v53.l
	v_lshlrev_b16 v27.l, 8, v40.l
	v_lshlrev_b16 v28.h, 8, v66.l
	v_lshlrev_b16 v29.l, 8, v41.l
	v_and_b16 v30.l, 0xff, v42.l
	v_and_b16 v30.h, 0xff, v42.h
	v_and_b16 v31.l, 0xff, v68.l
	v_and_b16 v31.h, 0xff, v68.h
	v_and_b16 v32.l, 0xff, v69.l
	v_lshrrev_b32_e32 v66, 8, v69
	v_and_b16 v32.h, 0xff, v69.h
	v_and_b16 v33.l, 0xff, v70.l
	v_lshrrev_b32_e32 v68, 8, v70
	v_lshrrev_b32_e32 v69, 24, v70
	v_and_b16 v33.h, 0xff, v70.h
	v_and_b16 v34.l, 0xff, v71.l
	v_lshrrev_b32_e32 v70, 8, v71
	v_lshrrev_b32_e32 v94, 24, v71
	v_and_b16 v34.h, 0xff, v71.h
	v_and_b16 v35.l, 0xff, v72.l
	v_lshrrev_b32_e32 v71, 8, v72
	v_lshrrev_b32_e32 v95, 24, v72
	v_and_b16 v35.h, 0xff, v72.h
	v_and_b16 v36.l, 0xff, v73.l
	v_lshrrev_b32_e32 v72, 8, v73
	v_lshrrev_b32_e32 v96, 24, v73
	v_and_b16 v36.h, 0xff, v73.h
	v_and_b16 v37.l, 0xff, v74.l
	v_lshrrev_b32_e32 v73, 8, v74
	v_lshrrev_b32_e32 v97, 24, v74
	v_and_b16 v37.h, 0xff, v74.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v38.l, 8, v75.l
	v_lshlrev_b16 v38.h, 8, v76.l
	v_lshlrev_b16 v39.l, 8, v43.l
	v_lshlrev_b16 v39.h, 8, v77.l
	v_lshlrev_b16 v40.l, 8, v78.l
	v_lshlrev_b16 v40.h, 8, v79.l
	v_lshlrev_b16 v41.l, 8, v44.l
	v_lshlrev_b16 v41.h, 8, v80.l
	v_lshlrev_b16 v42.l, 8, v81.l
	v_lshlrev_b16 v42.h, 8, v82.l
	v_lshlrev_b16 v43.l, 8, v45.l
	v_lshlrev_b16 v43.h, 8, v83.l
	v_lshlrev_b16 v44.l, 8, v84.l
	v_lshlrev_b16 v44.h, 8, v85.l
	v_lshlrev_b16 v45.l, 8, v46.l
	v_lshlrev_b16 v45.h, 8, v86.l
	v_and_b16 v46.l, 0xff, v47.l
	v_lshrrev_b32_e32 v74, 8, v47
	v_lshrrev_b32_e32 v75, 24, v47
	v_and_b16 v46.h, 0xff, v47.h
	v_and_b16 v47.l, 0xff, v87.l
	v_lshrrev_b32_e32 v76, 8, v87
	v_lshrrev_b32_e32 v77, 24, v87
	v_and_b16 v47.h, 0xff, v87.h
	v_and_b16 v48.l, 0xff, v88.l
	v_lshrrev_b32_e32 v78, 8, v88
	v_lshrrev_b32_e32 v79, 24, v88
	v_and_b16 v48.h, 0xff, v88.h
	v_and_b16 v49.l, 0xff, v89.l
	v_lshrrev_b32_e32 v80, 8, v89
	v_lshrrev_b32_e32 v81, 24, v89
	v_and_b16 v49.h, 0xff, v89.h
	v_lshrrev_b32_e32 v82, 8, v90
	v_lshrrev_b32_e32 v83, 24, v90
	v_lshrrev_b32_e32 v84, 8, v91
	v_lshrrev_b32_e32 v85, 24, v91
	v_lshrrev_b32_e32 v86, 8, v92
	v_lshrrev_b32_e32 v87, 24, v92
	v_lshrrev_b32_e32 v88, 8, v93
	v_lshrrev_b32_e32 v89, 24, v93
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v6.l, v6.l, v22.l
	v_lshlrev_b16 v22.l, 8, v62.l
	v_or_b16 v6.h, v6.h, v22.h
	v_lshlrev_b16 v22.h, 8, v63.l
	v_or_b16 v7.l, v7.l, v23.l
	v_lshlrev_b16 v23.l, 8, v64.l
	v_or_b16 v7.h, v7.h, v23.h
	v_lshlrev_b16 v23.h, 8, v65.l
	v_or_b16 v8.h, v8.h, v24.h
	v_lshlrev_b16 v24.h, 8, v67.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v50.l, 0xff, v90.l
	v_and_b16 v50.h, 0xff, v90.h
	v_and_b16 v51.l, 0xff, v91.l
	v_and_b16 v51.h, 0xff, v91.h
	v_and_b16 v52.l, 0xff, v92.l
	v_and_b16 v52.h, 0xff, v92.h
	v_and_b16 v53.l, 0xff, v93.l
	v_and_b16 v53.h, 0xff, v93.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v8.l, v8.l, v24.l
	v_or_b16 v9.l, v9.l, v25.l
	v_or_b16 v9.h, v9.h, v25.h
	v_or_b16 v10.l, v10.l, v26.l
	v_or_b16 v10.h, v10.h, v26.h
	v_or_b16 v11.l, v11.l, v27.l
	v_or_b16 v11.h, v11.h, v27.h
	v_or_b16 v12.l, v12.l, v28.l
	v_or_b16 v12.h, v12.h, v28.h
	v_or_b16 v13.l, v13.l, v29.l
	v_or_b16 v13.h, v13.h, v29.h
	v_lshlrev_b16 v24.l, 8, v66.l
	v_lshlrev_b16 v25.l, 8, v68.l
	v_lshlrev_b16 v25.h, 8, v69.l
	v_lshlrev_b16 v26.l, 8, v70.l
	v_lshlrev_b16 v26.h, 8, v94.l
	v_lshlrev_b16 v27.l, 8, v71.l
	v_lshlrev_b16 v27.h, 8, v95.l
	v_lshlrev_b16 v28.l, 8, v72.l
	v_lshlrev_b16 v28.h, 8, v96.l
	v_lshlrev_b16 v29.l, 8, v73.l
	v_lshlrev_b16 v29.h, 8, v97.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
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
	v_or_b16 v19.l, v19.l, v43.l
	v_or_b16 v19.h, v19.h, v43.h
	v_or_b16 v20.l, v20.l, v44.l
	v_or_b16 v20.h, v20.h, v44.h
	v_or_b16 v21.l, v21.l, v45.l
	v_or_b16 v21.h, v21.h, v45.h
	v_lshlrev_b16 v38.l, 8, v74.l
	v_lshlrev_b16 v38.h, 8, v75.l
	v_lshlrev_b16 v39.l, 8, v76.l
	v_lshlrev_b16 v39.h, 8, v77.l
	v_lshlrev_b16 v40.l, 8, v78.l
	v_lshlrev_b16 v40.h, 8, v79.l
	v_lshlrev_b16 v41.l, 8, v80.l
	v_lshlrev_b16 v41.h, 8, v81.l
	v_lshlrev_b16 v42.l, 8, v82.l
	v_lshlrev_b16 v42.h, 8, v83.l
	v_lshlrev_b16 v43.l, 8, v84.l
	v_lshlrev_b16 v43.h, 8, v85.l
	v_lshlrev_b16 v44.l, 8, v86.l
	v_lshlrev_b16 v44.h, 8, v87.l
	v_lshlrev_b16 v45.l, 8, v88.l
	v_lshlrev_b16 v45.h, 8, v89.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v59, v6
	ds_store_b16_d16_hi v59, v6 offset:32
	ds_store_b16 v59, v7 offset:64
	ds_store_b16_d16_hi v59, v7 offset:96
	ds_store_b16_d16_hi v60, v8 offset:32
	ds_store_b16 v60, v9 offset:64
	ds_store_b16_d16_hi v60, v9 offset:96
	v_or_b16 v6.l, v30.l, v22.l
	v_or_b16 v6.h, v30.h, v22.h
	v_or_b16 v7.l, v31.l, v23.l
	v_or_b16 v7.h, v31.h, v23.h
	v_or_b16 v9.l, v32.h, v24.h
	v_or_b16 v8.h, v32.l, v24.l
	v_or_b16 v9.h, v33.l, v25.l
	v_or_b16 v22.l, v33.h, v25.h
	v_or_b16 v22.h, v34.l, v26.l
	v_or_b16 v23.l, v34.h, v26.h
	v_or_b16 v23.h, v35.l, v27.l
	v_or_b16 v24.l, v35.h, v27.h
	v_or_b16 v24.h, v36.l, v28.l
	v_or_b16 v25.l, v36.h, v28.h
	v_or_b16 v25.h, v37.l, v29.l
	v_or_b16 v26.l, v37.h, v29.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v59, v14 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v60, v8
	ds_store_b16 v61, v10
	ds_store_b16_d16_hi v61, v10 offset:32
	ds_store_b16 v61, v11 offset:64
	ds_store_b16_d16_hi v61, v11 offset:96
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v58, v[54:55] offset:32768
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v59, v15 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v59, v12 offset:384
	ds_store_b16_d16_hi v59, v12 offset:416
	ds_store_b16 v59, v13 offset:448
	ds_store_b16_d16_hi v59, v13 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v59, v14 offset:16416
	ds_store_b16_d16_hi v59, v15 offset:16480
	ds_store_b16 v60, v16 offset:16384
	ds_store_b16_d16_hi v60, v16 offset:16416
	ds_store_b16 v60, v17 offset:16448
	ds_store_b16_d16_hi v60, v17 offset:16480
	ds_store_b16 v61, v18 offset:16384
	ds_store_b16_d16_hi v61, v18 offset:16416
	ds_store_b16 v61, v19 offset:16448
	ds_store_b16_d16_hi v61, v19 offset:16480
	ds_store_b16 v59, v20 offset:16768
	ds_store_b16_d16_hi v59, v20 offset:16800
	ds_store_b16 v59, v21 offset:16832
	ds_store_b16_d16_hi v59, v21 offset:16864
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v8.l, v46.l, v38.l
	v_or_b16 v10.l, v46.h, v38.h
	v_or_b16 v10.h, v47.l, v39.l
	v_or_b16 v11.l, v47.h, v39.h
	v_or_b16 v11.h, v48.l, v40.l
	v_or_b16 v12.l, v48.h, v40.h
	v_or_b16 v12.h, v49.l, v41.l
	v_or_b16 v13.l, v49.h, v41.h
	v_or_b16 v13.h, v50.l, v42.l
	v_or_b16 v14.l, v50.h, v42.h
	v_or_b16 v14.h, v51.l, v43.l
	v_or_b16 v15.l, v51.h, v43.h
	v_or_b16 v15.h, v52.l, v44.l
	v_or_b16 v16.l, v52.h, v44.h
	v_or_b16 v16.h, v53.l, v45.l
	v_or_b16 v17.l, v53.h, v45.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v59, v6 offset:8192
	ds_store_b16_d16_hi v59, v6 offset:8224
	ds_store_b16 v59, v7 offset:8256
	ds_store_b16_d16_hi v59, v7 offset:8288
	ds_store_b16 v60, v9 offset:8224
	ds_store_b16_d16_hi v60, v9 offset:8256
	ds_store_b16 v60, v22 offset:8288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v59, v8 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v60, v8 offset:8192
	ds_store_b16_d16_hi v61, v22 offset:8192
	ds_store_b16 v61, v23 offset:8224
	ds_store_b16_d16_hi v61, v23 offset:8256
	ds_store_b16 v61, v24 offset:8288
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_store_b64 v58, v[56:57] offset:34816
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v59, v10 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v59, v24 offset:8576
	ds_store_b16 v59, v25 offset:8608
	ds_store_b16_d16_hi v59, v25 offset:8640
	ds_store_b16 v59, v26 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v59, v10 offset:24608
	ds_store_b16 v59, v11 offset:24672
	ds_store_b16_d16_hi v60, v11 offset:24576
	ds_store_b16 v60, v12 offset:24608
	ds_store_b16_d16_hi v60, v12 offset:24640
	ds_store_b16 v60, v13 offset:24672
	ds_store_b16_d16_hi v61, v13 offset:24576
	ds_store_b16 v61, v14 offset:24608
	ds_store_b16_d16_hi v61, v14 offset:24640
	ds_store_b16 v61, v15 offset:24672
	ds_store_b16_d16_hi v59, v15 offset:24960
	ds_store_b16 v59, v16 offset:24992
	ds_store_b16_d16_hi v59, v16 offset:25024
	ds_store_b16 v59, v17 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_lshlrev_b32_e32 v18, 5, v119
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v8, 0xe00, v2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_and_b32_e32 v7, 4, v119
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v6, 8, v119
	s_mov_b32 s10, 0
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_and_b32_e32 v9, 0x160, v18
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v8, v1, 5, v8
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow821
	s_load_b64 s[24:25], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v0
	v_or_b32_e32 v0, s33, v99
	s_ashr_i32 s44, s13, 5
	v_or_b32_e32 v3, s33, v3
	v_or_b32_e32 v4, s33, v4
	v_or_b32_e32 v5, s33, v5
	v_mul_lo_u32 v0, v0, s44
	v_or_b32_e32 v252, s26, v119
	v_lshlrev_b32_e32 v137, 2, v98
	v_lshlrev_b32_e32 v139, 1, v119
	v_lshlrev_b32_e32 v135, 1, v98
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v98, off offset:248
	scratch_store_b32 off, v0, off offset:216
	v_mul_lo_u32 v0, v3, s44
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v99, off offset:252
	scratch_store_b32 off, v0, off offset:208
	v_mul_lo_u32 v0, v5, s44
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v119, 2, 1
	v_bfe_i32 v3, v119, 3, 1
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v4, s34, v103
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v2, 0xe00, v2
	v_and_b32_e32 v0, 0x90, v0
	v_and_b32_e32 v3, 0x110, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:224
	scratch_store_b32 off, v137, off offset:264
	v_and_b32_e32 v4, 0x160, v101
	v_lshl_or_b32 v2, v1, 5, v2
	v_xor_b32_e32 v1, v0, v3
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v129, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v0, v0, v4
	scratch_store_b32 off, v2, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v2, v1, v2
	v_and_b32_e32 v1, 32, v101
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:232
	scratch_store_b32 off, v2, off offset:228
	v_xor_b32_e32 v0, 16, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:236
	scratch_store_b32 off, v139, off offset:268
	v_and_b32_e32 v0, 28, v139
	v_add3_u32 v9, 0, v137, v1
	v_mov_b32_e32 v247, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v166, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v255, 0 :: v_dual_add_nc_u32 v0, v9, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:240
	scratch_store_b32 off, v135, off offset:260
	v_add_nc_u32_e32 v0, 0, v135
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v101, off offset:272
	scratch_store_b32 off, v4, off offset:276
	scratch_store_b32 off, v102, off offset:220
	v_mov_b32_e32 v1, s12
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v4, s15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:104
	scratch_store_b32 off, v119, off offset:256
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_mov_b32_e32 v167, 0
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v204, 0
	v_mov_b32_e32 v145, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v198, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v234, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s11, s44, 3
	s_add_i32 s1, s35, 32
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s10, 1
	s_add_i32 s48, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s11, s11, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 5
	s_mov_b32 s14, s12
	s_mov_b32 s12, s30
	s_mov_b32 s30, s35
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s35, s1, s15
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v144, off offset:176
	scratch_store_b32 off, v79, off offset:56
	scratch_store_b32 off, v157, off offset:172
	scratch_store_b32 off, v134, off offset:168
	scratch_store_b32 off, v80, off offset:60
	scratch_store_b32 off, v131, off offset:164
	scratch_store_b32 off, v81, off offset:64
	scratch_store_b32 off, v245, off offset:160
	scratch_store_b32 off, v82, off offset:68
	scratch_store_b32 off, v75, off offset:40
	scratch_store_b32 off, v126, off offset:156
	scratch_store_b32 off, v36, off offset:152
	scratch_store_b32 off, v125, off offset:148
	scratch_store_b32 off, v76, off offset:44
	scratch_store_b32 off, v205, off offset:144
	scratch_store_b32 off, v66, off offset:48
	scratch_store_b32 off, v203, off offset:140
	scratch_store_b32 off, v145, off offset:136
	scratch_store_b32 off, v73, off offset:52
	scratch_store_b32 off, v127, off offset:132
	scratch_store_b32 off, v147, off offset:128
	scratch_store_b32 off, v204, off offset:124
	scratch_store_b32 off, v72, off offset:28
	scratch_store_b32 off, v255, off offset:120
	scratch_store_b32 off, v71, off offset:24
	scratch_store_b32 off, v129, off offset:116
	scratch_store_b32 off, v74, off offset:36
	scratch_store_b32 off, v64, off offset:32
	scratch_store_b32 off, v247, off offset:112
	scratch_store_b32 off, v248, off offset:108
	scratch_store_b32 off, v51, off
	scratch_store_b32 off, v19, off offset:4
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v50, off offset:100
	scratch_store_b32 off, v49, off offset:96
	scratch_store_b32 off, v48, off offset:92
	scratch_store_b32 off, v47, off offset:88
	scratch_store_b32 off, v46, off offset:84
	scratch_store_b32 off, v45, off offset:80
	scratch_store_b32 off, v44, off offset:76
	scratch_store_b32 off, v32, off offset:72
	scratch_store_b32 off, v30, off offset:20
	scratch_store_b32 off, v29, off offset:16
	scratch_store_b32 off, v28, off offset:12
	scratch_store_b32 off, v26, off offset:8
	v_dual_mov_b32 v255, v122 :: v_dual_add_nc_u32 v0, s35, v100
	v_mov_b32_e32 v204, v190
	v_dual_mov_b32 v190, v149 :: v_dual_mov_b32 v19, v88
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	buffer_load_b64 v[9:10], v0, s[4:7], 0 offen
	v_dual_mov_b32 v30, v193 :: v_dual_mov_b32 v17, v90
	v_dual_mov_b32 v193, v85 :: v_dual_mov_b32 v32, v194
	v_dual_mov_b32 v29, v89 :: v_dual_mov_b32 v194, v86
	v_dual_mov_b32 v157, v92 :: v_dual_mov_b32 v18, v87
	v_dual_mov_b32 v51, v174 :: v_dual_mov_b32 v28, v91
	v_mov_b32_e32 v205, v94
	v_dual_mov_b32 v64, v158 :: v_dual_mov_b32 v49, v96
	v_dual_mov_b32 v158, v93 :: v_dual_mov_b32 v131, v98
	v_dual_mov_b32 v36, v95 :: v_dual_mov_b32 v203, v97
	v_dual_mov_b32 v134, v103 :: v_dual_mov_b32 v145, v100
	v_dual_mov_b32 v147, v104 :: v_dual_mov_b32 v174, v105
	v_dual_mov_b32 v149, v84 :: v_dual_mov_b32 v50, v178
	v_mov_b32_e32 v178, v148
	v_mov_b32_e32 v148, v83
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[9:10], off offset:180 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v9, off, off offset:232
	scratch_load_b32 v35, off, off offset:236
	scratch_load_b32 v34, off, off offset:228
	v_mov_b32_e32 v144, v106
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s48, v9
	v_xor_b32_e32 v9, 16, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, s14, v34
	v_add_nc_u32_e32 v33, s14, v35
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	s_mul_i32 s14, s35, s34
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	ds_load_b128 v[115:118], v0 offset:1024
	v_add_nc_u32_e32 v9, s48, v9
	ds_load_b128 v[107:110], v0 offset:512
	ds_load_b128 v[111:114], v9 offset:512
	ds_load_b128 v[199:202], v0 offset:1536
	ds_load_b128 v[214:217], v9 offset:1536
	ds_load_b128 v[45:48], v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[37:40], v31
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[60:63], v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[41:44], v33
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[119:122], v9 offset:1024
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v0, s31, v34
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_add_i32 s14, s14, s26
	s_mov_b32 s48, s47
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[37:40], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[37:40], v[107:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[218:225], v[37:40], v[115:118], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[199:202], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[41:44], v[60:63], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[41:44], v[111:114], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[218:225], v[41:44], v[119:122], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[214:217], v[9:16] neg_lo:[1,1,0]
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[37:40], v31 offset:4096
	ds_load_b128 v[41:44], v33 offset:4096
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v31, s31, v35
	ds_load_b128 v[123:126], v0
	ds_load_b128 v[127:130], v31
	ds_load_b128 v[226:229], v0 offset:4096
	ds_load_b128 v[230:233], v31 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v66, v22
	v_cvt_f32_i32_e32 v22, v26
	v_cvt_f32_i32_e32 v31, v74
	s_mov_b32 s31, s45
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[37:40], v[107:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[37:40], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[37:40], v[115:118], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[226:229], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[206:213], v[123:126], v[107:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[226:229], v[107:110], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[83:90], v[41:44], v[111:114], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[37:40], v[199:202], v[1:8] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[230:233], v[60:63], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[206:213], v[127:130], v[111:114], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[230:233], v[111:114], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[243:250], v[123:126], v[115:118], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[226:229], v[115:118], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[75:82], v[41:44], v[60:63], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[41:44], v[119:122], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[41:44], v[214:217], v[99:106] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[37:44], v[123:126], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[243:250], v[127:130], v[119:122], v[243:250] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[230:233], v[119:122], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[123:126], v[199:202], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v56
	v_wmma_i32_16x16x16_iu8 v[37:44], v[127:130], v[60:63], v[37:44] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v47, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[127:130], v[214:217], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[226:229], v[199:202], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v57
	v_cvt_f32_i32_e32 v60, v44
	v_wmma_i32_16x16x16_iu8 v[123:130], v[230:233], v[214:217], v[123:130] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v44, v242
	v_cvt_f32_i32_e32 v242, v115
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v58
	v_cvt_f32_i32_e32 v216, v120
	v_cvt_f32_i32_e32 v215, v121
	v_cvt_f32_i32_e32 v214, v122
	scratch_load_b32 v122, off, off offset:104 ; 4-byte Folded Reload
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v59
	v_cvt_f32_i32_e32 v200, v125
	scratch_load_b32 v125, off, off offset:204 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v120, v126
	scratch_load_b32 v126, off, off offset:208 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v121, v127
	scratch_load_b32 v127, off, off offset:212 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v59, v128
	scratch_load_b32 v128, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v115, v97
	v_cvt_f32_i32_e32 v97, v15
	scratch_load_b32 v15, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v231, v209
	v_cvt_f32_i32_e32 v209, v210
	v_cvt_f32_i32_e32 v210, v250
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v250, v79
	v_cvt_f32_i32_e32 v79, v68
	v_cvt_f32_i32_e32 v68, v103
	v_mov_b32_e32 v103, v134
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v233, v207
	v_cvt_f32_i32_e32 v207, v212
	v_cvt_f32_i32_e32 v55, v236
	v_cvt_f32_i32_e32 v236, v245
	v_cvt_f32_i32_e32 v212, v248
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v245, v20
	v_cvt_f32_i32_e32 v248, v82
	v_cvt_f32_i32_e32 v82, v69
	v_cvt_f32_i32_e32 v0, v72
	v_cvt_f32_i32_e32 v72, v91
	v_cvt_f32_i32_e32 v91, v9
	v_cvt_f32_i32_e32 v69, v106
	v_dual_mov_b32 v106, v144 :: v_dual_add_nc_u32 v9, s14, v103
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v227, v40
	v_cvt_f32_i32_e32 v40, v54
	v_cvt_f32_i32_e32 v232, v208
	v_cvt_f32_i32_e32 v208, v211
	v_cvt_f32_i32_e32 v54, v237
	v_cvt_f32_i32_e32 v237, v244
	v_cvt_f32_i32_e32 v211, v249
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v244, v21
	v_cvt_f32_i32_e32 v21, v25
	v_cvt_f32_i32_e32 v249, v81
	v_cvt_f32_i32_e32 v81, v70
	v_cvt_f32_i32_e32 v25, v71
	v_cvt_f32_i32_e32 v71, v92
	v_cvt_f32_i32_e32 v92, v10
	v_cvt_f32_i32_e32 v70, v105
	v_mov_b32_e32 v105, v174
	scratch_load_b32 v174, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v230, v37
	v_cvt_f32_i32_e32 v226, v41
	v_cvt_f32_i32_e32 v199, v42
	v_cvt_f32_i32_e32 v37, v43
	v_cvt_f32_i32_e32 v41, v239
	v_cvt_f32_i32_e32 v43, v240
	v_cvt_f32_i32_e32 v42, v241
	v_cvt_f32_i32_e32 v45, v111
	v_cvt_f32_i32_e32 v46, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v241, v116
	v_cvt_f32_i32_e32 v240, v117
	v_cvt_f32_i32_e32 v239, v118
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v20, v24
	v_mov_b32_e32 v111, v65
	v_cvt_f32_i32_e32 v65, v27
	v_cvt_f32_i32_e32 v24, v73
	v_cvt_f32_i32_e32 v26, v83
	v_cvt_f32_i32_e32 v117, v84
	v_cvt_f32_i32_e32 v118, v85
	v_cvt_f32_i32_e32 v27, v86
	v_cvt_f32_i32_e32 v74, v93
	v_cvt_f32_i32_e32 v73, v94
	v_cvt_f32_i32_e32 v116, v95
	v_cvt_f32_i32_e32 v114, v96
	v_cvt_f32_i32_e32 v93, v11
	v_cvt_f32_i32_e32 v94, v12
	v_cvt_f32_i32_e32 v95, v13
	v_cvt_f32_i32_e32 v96, v14
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v229, v38
	v_cvt_f32_i32_e32 v38, v107
	v_cvt_f32_i32_e32 v63, v108
	v_cvt_f32_i32_e32 v62, v109
	v_cvt_f32_i32_e32 v61, v110
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v107, v218
	v_cvt_f32_i32_e32 v108, v219
	v_cvt_f32_i32_e32 v109, v220
	v_cvt_f32_i32_e32 v110, v221
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v217, v119
	v_cvt_f32_i32_e32 v202, v123
	v_cvt_f32_i32_e32 v201, v124
	v_dual_mov_b32 v123, v254 :: v_dual_mov_b32 v124, v253
	v_mov_b32_e32 v253, v252
	v_cvt_f32_i32_e32 v119, v130
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v252, v87
	v_cvt_f32_i32_e32 v251, v88
	v_cvt_f32_i32_e32 v130, v89
	v_cvt_f32_i32_e32 v254, v90
	v_cvt_f32_i32_e32 v35, v77
	v_cvt_f32_i32_e32 v34, v78
	v_cvt_f32_i32_e32 v78, v224
	v_cvt_f32_i32_e32 v77, v225
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v57, v129
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v33, v75
	v_cvt_f32_i32_e32 v129, v76
	v_cvt_f32_i32_e32 v76, v222
	v_cvt_f32_i32_e32 v75, v223
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v58, v235
	v_cvt_f32_i32_e32 v235, v246
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v246, v23
	v_cvt_f32_i32_e32 v23, v98
	v_cvt_f32_i32_e32 v98, v16
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v228, v39
	v_cvt_f32_i32_e32 v39, v53
	v_cvt_f32_i32_e32 v53, v238
	v_cvt_f32_i32_e32 v238, v243
	v_cvt_f32_i32_e32 v56, v206
	v_cvt_f32_i32_e32 v206, v213
	v_cvt_f32_i32_e32 v213, v247
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v247, v80
	v_cvt_f32_i32_e32 v80, v67
	v_cvt_f32_i32_e32 v67, v104
	v_mov_b32_e32 v104, v147
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v48, v112
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s14, v15
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[11:14], v9, s[20:23], 0 offen
	buffer_load_b128 v[83:86], v10, s[20:23], 0 offen
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	s_add_i32 s14, s14, s27
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v221, v83, v11, 0x5010400
	v_perm_b32 v220, v83, v11, 0x7030602
	v_perm_b32 v219, v84, v12, 0x5010400
	v_perm_b32 v218, v84, v12, 0x7030602
	v_perm_b32 v12, v85, v13, 0x5010400
	v_perm_b32 v11, v85, v13, 0x7030602
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v13, s14, v103
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v10, v86, v14, 0x5010400
	v_perm_b32 v9, v86, v14, 0x7030602
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v14, s14, v15
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[83:86], v13, s[20:23], 0 offen
	buffer_load_b128 v[87:90], v14, s[20:23], 0 offen
	.loc	1 386 29 is_stmt 1              ; generate_amdgcn.py:386:29
	s_ashr_i32 s14, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 27
	s_add_i32 s12, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s14, s12, 5
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s12, s14, s34
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s14, s44
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s10, s10, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s10, 2
	s_cselect_b32 s10, s10, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_lshl_b32 s15, s10, 13
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(0)
	v_perm_b32 v225, v87, v83, 0x5010400
	v_perm_b32 v224, v87, v83, 0x7030602
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v83, v253, s12, 1
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v223, v88, v84, 0x5010400
	v_perm_b32 v222, v88, v84, 0x7030602
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v84, v125, s14, 1
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v14, v90, v86, 0x5010400
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v13, v90, v86, 0x7030602
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v86, v127, s14, 1
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v16, v89, v85, 0x5010400
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v83, v83, s[40:43], 0 offen
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v15, v89, v85, 0x7030602
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v85, v126, s14, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v86, 0x80000000, v86 :: v_dual_cndmask_b32 v85, 0x80000000, v85
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v174, v83 offset:36864
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v83, v128, s14, 1
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	s_clause 0x3
	buffer_load_u16 v83, v83, s[36:39], 0 offen
	buffer_load_u16 v87, v84, s[36:39], 0 offen
	buffer_load_u16 v88, v85, s[36:39], 0 offen
	buffer_load_u16 v89, v86, s[36:39], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v128, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v243, 16, v83
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v90, v243, v245
	s_waitcnt vmcnt(0)
	ds_load_b128 v[83:86], v128 offset:36864
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v245, 16, v88
	v_mov_b32_e32 v88, v19
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v146, v90, v83
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v90, v243, v244
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v244, 16, v87
	v_mov_b32_e32 v87, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v188, v90, v84
	v_mov_b32_e32 v90, v17
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v243, v66
	v_dual_mul_f32 v20, v243, v20 :: v_dual_fmac_f32 v189, v66, v85
	v_mul_f32_e32 v66, v243, v246
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v246, 16, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v89, v29 :: v_dual_fmac_f32 v138, v66, v86
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v244, v80
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v175, v66, v83
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v244, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v140, v66, v84
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v244, v82
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v141, v66, v85
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v244, v81
	ds_load_b128 v[79:82], v128 offset:36880
	v_dual_mul_f32 v0, v244, v0 :: v_dual_fmac_f32 v187, v66, v86
	v_mul_f32_e32 v66, v245, v107
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v197, v20, v79 :: v_dual_mul_f32 v20, v243, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v172, v66, v83
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v245, v108
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v196, v0, v80
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v244, v24
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v181, v20, v80 :: v_dual_mul_f32 v20, v243, v22
	v_dual_fmac_f32 v177, v66, v84 :: v_dual_mul_f32 v66, v245, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v137, v20, v81
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v20, v243, v65
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v184, v66, v85 :: v_dual_mov_b32 v65, v111
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v245, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v139, v20, v82
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v20, v244, v25 :: v_dual_fmac_f32 v173, v66, v86
	v_dual_mul_f32 v66, v246, v91 :: v_dual_mov_b32 v91, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v186, v66, v83
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v66, v246, v92 :: v_dual_mov_b32 v83, v148
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v122, v66, v84
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v66, v246, v93
	v_mov_b32_e32 v92, v157
	v_dual_mov_b32 v84, v149 :: v_dual_mov_b32 v149, v190
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v190, v204 :: v_dual_fmac_f32 v183, v66, v85
	v_mov_b32_e32 v85, v193
	v_mov_b32_e32 v193, v30
	v_mul_f32_e32 v66, v246, v94
	v_dual_mov_b32 v18, v51 :: v_dual_mov_b32 v93, v158
	v_mov_b32_e32 v158, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v193, v0, v81
	v_fmac_f32_e32 v185, v66, v86
	v_mov_b32_e32 v86, v194
	v_mov_b32_e32 v194, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v0, v244, v31 :: v_dual_mul_f32 v31, v41, v244
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v41, v121, v246 :: v_dual_mov_b32 v148, v178
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v195, v20, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v194, v0, v82
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v76
	v_dual_mov_b32 v178, v50 :: v_dual_fmac_f32 v191, v0, v79
	v_mul_f32_e32 v0, v245, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v192, v0, v80
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v78
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v182, v0, v81
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v77
	ds_load_b128 v[75:78], v128 offset:37376
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v190, v0, v82
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v0, v246, v95 :: v_dual_mov_b32 v95, v36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v142, v0, v79
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v246, v96
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:56
	scratch_load_b32 v157, off, off offset:172
	v_dual_mov_b32 v96, v49 :: v_dual_fmac_f32 v255, v0, v80
	v_dual_mul_f32 v0, v246, v97 :: v_dual_mov_b32 v97, v203
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:60
	scratch_load_b32 v144, off, off offset:176
	scratch_store_b32 off, v122, off offset:104 ; 4-byte Folded Spill
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v143, v0, v81 :: v_dual_mul_f32 v0, v246, v98
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v81, off, off offset:64
	scratch_load_b32 v17, off, off offset:160
	scratch_load_b32 v134, off, off offset:168
	v_mov_b32_e32 v98, v131
	v_fmac_f32_e32 v198, v0, v82
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v82, off, off offset:68
	scratch_load_b32 v131, off, off offset:164
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v0, v243, v33 :: v_dual_mul_f32 v33, v44, v244
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v97, v0, v75 :: v_dual_mul_f32 v0, v243, v129
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:32
	scratch_load_b32 v129, off, off offset:116
	v_fmac_f32_e32 v98, v0, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v243, v35
	v_dual_mov_b32 v94, v205 :: v_dual_mul_f32 v35, v48, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v95, v0, v77 :: v_dual_mul_f32 v0, v243, v34
	v_fmac_f32_e32 v96, v0, v78
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v244, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v89, v0, v75
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v244, v117
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v90, v0, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v244, v118
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v87, v0, v77
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v244, v27
	ds_load_b128 v[24:27], v128 offset:37392
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v88, v0, v78
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v72
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:28
	scratch_load_b32 v147, off, off offset:128
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v81, v0, v75
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v71
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:24
	scratch_load_b32 v204, off, off offset:124
	v_mov_b32_e32 v122, v255
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v82, v0, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v74
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:36
	scratch_load_b32 v255, off, off offset:120
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v79, v0, v77
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v73
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v73, off, off offset:52
	scratch_load_b32 v127, off, off offset:132
	scratch_load_b32 v205, off, off offset:144
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v80, v0, v78
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v246, v99
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v64, v0, v75
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v246, v100
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v75, off, off offset:40
	scratch_load_b32 v126, off, off offset:156
	scratch_load_b32 v36, off, off offset:152
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v74, v0, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v246, v101
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:44
	scratch_load_b32 v125, off, off offset:148
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v71, v0, v77 :: v_dual_mul_f32 v0, v246, v102
	scratch_load_b32 v102, off, off offset:220 ; 4-byte Folded Reload
	v_fmac_f32_e32 v72, v0, v78
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v243, v250
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v93, v0, v24 :: v_dual_mul_f32 v0, v243, v247
	v_fmac_f32_e32 v94, v0, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v243, v249
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v91, v0, v26 :: v_dual_mul_f32 v0, v243, v248
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v51, off, off
	scratch_load_b32 v19, off, off offset:4
	scratch_load_b32 v247, off, off offset:112
	scratch_load_b32 v248, off, off offset:108
	v_fmac_f32_e32 v92, v0, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v244, v252
	v_mov_b32_e32 v100, v145
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v66, off, off offset:48
	scratch_load_b32 v145, off, off offset:136
	scratch_load_b32 v203, off, off offset:140
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v85, v0, v24
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v244, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v86, v0, v25
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v244, v130
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v83, v0, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v244, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v84, v0, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v116
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v66, v0, v24
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v245, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v73, v0, v25 :: v_dual_mul_f32 v0, v245, v115
	v_dual_fmac_f32 v75, v0, v26 :: v_dual_mul_f32 v0, v245, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v0, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v0, v246, v68
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v51, v0, v24 :: v_dual_mul_f32 v0, v246, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v19, v0, v25 :: v_dual_mul_f32 v0, v246, v70
	v_dual_fmac_f32 v65, v0, v26 :: v_dual_mul_f32 v0, v246, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v234, v0, v27
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v27, v43, v244 :: v_dual_add_nc_u32 v0, s27, v253
	v_mul_f32_e32 v43, v57, v246
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v0, v0, s12, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_lshl_b32 s12, s10, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s46
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_add_i32 s46, s15, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s13, 1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	s_add_i32 s47, s14, 0x8000
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_add_i32 s45, s46, 0x4000
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v0, v0, s[40:43], 0 offen
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s11
	s_mov_b32 s13, s15
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v174, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v128 offset:36864
	v_mul_f32_e32 v0, v230, v243
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v252, v253 :: v_dual_fmac_f32 v205, v0, v20
	v_mul_f32_e32 v0, v229, v243
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v168, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v228, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v166, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v227, v243
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v167, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v56, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v164, v0, v20
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v233, v244
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v165, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v232, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v178, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v231, v244
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v179, v0, v23 :: v_dual_mul_f32 v0, v238, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v136, v0, v20
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v237, v245
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v135, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v236, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v132, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v235, v245
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v133, v0, v23 :: v_dual_mul_f32 v0, v242, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v171, v0, v20 :: v_dual_mul_f32 v0, v241, v246
	v_fmac_f32_e32 v180, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v240, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v169, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v239, v246
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v170, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[20:23], v128 offset:36880
	v_mul_f32_e32 v0, v226, v243
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v163, v0, v20 :: v_dual_mul_f32 v0, v199, v243
	v_dual_fmac_f32 v247, v0, v21 :: v_dual_mul_f32 v0, v37, v243
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v37, v45, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v155, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v60, v243
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v160, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v209, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v153, v0, v20
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v208, v244
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v154, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v207, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v151, v0, v22 :: v_dual_mul_f32 v0, v206, v244
	v_fmac_f32_e32 v152, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v213, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v156, v0, v20
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v212, v245
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v150, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v211, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v159, v0, v22 :: v_dual_mul_f32 v0, v210, v245
	v_dual_fmac_f32 v123, v0, v23 :: v_dual_mul_f32 v0, v217, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v0, v20
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v216, v246
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v176, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v215, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v254, v123 :: v_dual_fmac_f32 v203, v0, v22
	v_mul_f32_e32 v0, v214, v246
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v134, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[20:23], v128 offset:37376
	v_mul_f32_e32 v0, v52, v243
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v129, v0, v20 :: v_dual_mul_f32 v0, v39, v243
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v39, v46, v245
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v255, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v40, v243
	v_mul_f32_e32 v40, v59, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v204, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v47, v243
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v147, v0, v23 :: v_dual_mul_f32 v0, v58, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v161, v0, v20
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v55, v244
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v162, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v54, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v18, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v53, v244
	v_mov_b32_e32 v174, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v158, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v38, v245
	scratch_load_b32 v18, off, off offset:188 ; 4-byte Folded Reload
	v_dual_mul_f32 v38, v113, v245 :: v_dual_fmac_f32 v127, v0, v20
	v_mul_f32_e32 v0, v63, v245
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v148, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v62, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v126, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v61, v245
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v157, v0, v23 :: v_dual_mul_f32 v0, v202, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v131, v0, v20 :: v_dual_mul_f32 v0, v201, v246
	v_fmac_f32_e32 v149, v0, v21
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v200, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v125, v0, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v120, v246
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v144, v0, v23
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	ds_load_b128 v[20:23], v128 offset:37392
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v18, v243
	scratch_load_b32 v18, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v145, v24, v20
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v24, 24, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v24.l, 8, v24.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v243
	v_mul_f32_e32 v34, v42, v244
	v_dual_mul_f32 v42, v119, v246 :: v_dual_fmac_f32 v17, v0, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v245, v17 :: v_dual_add_nc_u32 v0, s14, v104
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v25, v18, v243
	scratch_load_b32 v18, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v248, v25, v23
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v25, 24, v222
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v25.l, 8, v25.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v18, v243
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	scratch_load_b64 v[17:18], off, off offset:180 ; 8-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v124, v26, v22
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v50, off, off offset:100
	scratch_load_b32 v49, off, off offset:96
	scratch_load_b32 v48, off, off offset:92
	scratch_load_b32 v47, off, off offset:88
	scratch_load_b32 v46, off, off offset:84
	scratch_load_b32 v45, off, off offset:80
	scratch_load_b32 v44, off, off offset:76
	scratch_load_b32 v32, off, off offset:72
	scratch_load_b32 v30, off, off offset:20
	scratch_load_b32 v29, off, off offset:16
	scratch_load_b32 v28, off, off offset:12
	scratch_load_b32 v26, off, off offset:8
	s_waitcnt vmcnt(11)
	v_dual_mov_b32 v253, v124 :: v_dual_fmac_f32 v50, v27, v21
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v49, v31, v20 :: v_dual_fmac_f32 v48, v33, v23
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v47, v34, v22 :: v_dual_fmac_f32 v46, v35, v21
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v45, v37, v20
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_store_b64 v0, v[17:18] offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v0, 8, v221
	v_and_b16 v0.h, 0xff, v221.l
	v_lshrrev_b32_e32 v17, 24, v221
	v_lshrrev_b32_e32 v18, 24, v220
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v29, v41, v20
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshrrev_b32_e32 v20, 24, v219
	v_lshlrev_b16 v17.l, 8, v17.l
	v_lshlrev_b16 v18.l, 8, v18.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v30, v40, v21
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v0.l, v0.h, v0.l
	v_and_b16 v0.h, 0xff, v221.h
	v_lshlrev_b16 v20.l, 8, v20.l
	v_lshrrev_b32_e32 v21, 24, v218
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v32, v39, v22
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v43, v22
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v0.h, v0.h, v17.l
	v_lshrrev_b32_e32 v17, 8, v220
	v_and_b16 v17.h, 0xff, v220.l
	v_lshlrev_b16 v21.l, 8, v21.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v22, 24, v225
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v44, v38, v23
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v17.l, 8, v17.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v28, v42, v23
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v23, 24, v224
	v_lshlrev_b16 v22.l, 8, v22.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v17.l, v17.h, v17.l
	v_and_b16 v17.h, 0xff, v220.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v23.l, 8, v23.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v17.h, v17.h, v18.l
	v_lshrrev_b32_e32 v18, 8, v219
	v_and_b16 v18.h, 0xff, v219.l
	v_lshlrev_b16 v18.l, 8, v18.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v18.l, v18.h, v18.l
	v_and_b16 v18.h, 0xff, v219.h
	v_or_b16 v18.h, v18.h, v20.l
	v_lshrrev_b32_e32 v20, 8, v218
	v_and_b16 v20.h, 0xff, v218.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v20.l, 8, v20.l
	v_or_b16 v20.l, v20.h, v20.l
	v_and_b16 v20.h, 0xff, v218.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v20.h, v20.h, v21.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v21, 8, v225
	v_and_b16 v21.h, 0xff, v225.l
	v_lshlrev_b16 v21.l, 8, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v21.l, v21.h, v21.l
	v_and_b16 v21.h, 0xff, v225.h
	v_or_b16 v21.h, v21.h, v22.l
	v_lshrrev_b32_e32 v22, 8, v224
	v_and_b16 v22.h, 0xff, v224.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v22.l, 8, v22.l
	v_or_b16 v22.l, v22.h, v22.l
	v_and_b16 v22.h, 0xff, v224.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v22.h, v22.h, v23.l
	v_lshrrev_b32_e32 v23, 8, v223
	v_and_b16 v23.h, 0xff, v223.l
	v_lshlrev_b16 v23.l, 8, v23.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v23.l, v23.h, v23.l
	v_and_b16 v23.h, 0xff, v223.h
	v_or_b16 v23.h, v23.h, v24.l
	v_lshrrev_b32_e32 v24, 8, v222
	v_and_b16 v24.h, 0xff, v222.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v24.l, 8, v24.l
	v_or_b16 v24.l, v24.h, v24.l
	v_and_b16 v24.h, 0xff, v222.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v24.h, v24.h, v25.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v25, s46, v102
	ds_store_b16 v25, v0
	ds_store_b16_d16_hi v25, v0 offset:32
	ds_store_b16 v25, v17 offset:64
	ds_store_b16_d16_hi v25, v17 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v25, v21 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v0, s46, v105
	ds_store_b16 v0, v18
	ds_store_b16_d16_hi v0, v18 offset:32
	ds_store_b16 v0, v20 offset:64
	ds_store_b16_d16_hi v0, v20 offset:96
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
	v_add_nc_u32_e32 v17, s46, v106
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
	s_clause 0x8                            ; 36-byte Folded Spill
	scratch_store_b32 off, v132, off offset:552
	scratch_store_b32 off, v133, off offset:556
	scratch_store_b32 off, v136, off offset:560
	scratch_store_b32 off, v135, off offset:564
	scratch_store_b32 off, v182, off offset:544
	scratch_store_b32 off, v137, off offset:584
	scratch_store_b32 off, v139, off offset:912
	scratch_store_b32 off, v143, off offset:540
	scratch_store_b32 off, v142, off offset:548
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v135, off, off offset:260
	scratch_load_b32 v137, off, off offset:264
	scratch_load_b32 v139, off, off offset:268
	scratch_load_b32 v9, off, off offset:276
	scratch_load_b32 v8, off, off offset:280
	scratch_load_b32 v119, off, off offset:256
	scratch_load_b32 v18, off, off offset:272
	v_mov_b32_e32 v201, v187
	v_mov_b32_e32 v187, v141
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v7, 4, v119
	v_and_b32_e32 v6, 8, v119
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v73, 0
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v185, 0
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v81, 0
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v173, 0
	v_mov_b32_e32 v129, 0
	scratch_store_b32 off, v0, off offset:912 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v177, 0
	scratch_store_b32 off, v0, off offset:584 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v87, 0
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v255, 0
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v205, 0
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v174, 0
	v_mov_b32_e32 v162, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v178, 0
	v_mov_b32_e32 v164, 0
	v_mov_b32_e32 v248, 0
	v_mov_b32_e32 v204, 0
	v_mov_b32_e32 v160, 0
	v_mov_b32_e32 v166, 0
	v_mov_b32_e32 v168, 0
	s_add_i32 s48, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	scratch_store_b32 off, v0, off offset:560 ; 4-byte Folded Spill
.LBB0_8:                                ; %Flow822
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 374 26 is_stmt 1              ; generate_amdgcn.py:374:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v50, off offset:100
	scratch_store_b32 off, v49, off offset:96
	scratch_store_b32 off, v48, off offset:92
	scratch_store_b32 off, v47, off offset:88
	scratch_store_b32 off, v46, off offset:84
	scratch_store_b32 off, v45, off offset:80
	scratch_store_b32 off, v44, off offset:76
	scratch_store_b32 off, v32, off offset:72
	scratch_store_b32 off, v75, off offset:40
	scratch_store_b32 off, v74, off offset:36
	scratch_store_b32 off, v64, off offset:32
	scratch_store_b32 off, v72, off offset:28
	scratch_store_b32 off, v30, off offset:20
	scratch_store_b32 off, v29, off offset:16
	scratch_store_b32 off, v28, off offset:12
	scratch_store_b32 off, v26, off offset:8
	scratch_store_b32 off, v65, off offset:112
	scratch_store_b32 off, v98, off offset:180
	scratch_store_b32 off, v97, off offset:176
	scratch_store_b32 off, v96, off offset:172
	scratch_store_b32 off, v95, off offset:168
	scratch_store_b32 off, v94, off offset:164
	scratch_store_b32 off, v93, off offset:160
	scratch_store_b32 off, v92, off offset:156
	scratch_store_b32 off, v91, off offset:152
	scratch_store_b32 off, v90, off offset:148
	scratch_store_b32 off, v89, off offset:144
	scratch_store_b32 off, v88, off offset:140
	scratch_store_b32 off, v87, off offset:136
	scratch_store_b32 off, v86, off offset:132
	scratch_store_b32 off, v85, off offset:128
	scratch_store_b32 off, v84, off offset:124
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v83, off offset:120
	scratch_store_b32 off, v82, off offset:68
	scratch_store_b32 off, v81, off offset:64
	scratch_store_b32 off, v80, off offset:60
	scratch_store_b32 off, v79, off offset:56
	scratch_store_b32 off, v73, off offset:52
	scratch_store_b32 off, v66, off offset:48
	scratch_store_b32 off, v76, off offset:44
	scratch_store_b32 off, v71, off offset:24
	scratch_store_b32 off, v51, off
	scratch_store_b32 off, v234, off offset:116
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v17, 0, 1, s2
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v115, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s1, 1, v17
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_or_b32_e32 v38, v0, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v1, 0x110, 0, vcc_lo
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v45, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v0, v0, v1
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_xor_b32_e32 v37, 16, v38
	v_dual_mov_b32 v218, 0 :: v_dual_add_nc_u32 v1, s48, v38
	v_mov_b32_e32 v47, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b32_e32 v238, v0, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v0, s48, v37
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[39:42], v1 offset:512
	ds_load_b128 v[9:12], v1 offset:1024
	ds_load_b128 v[5:8], v1 offset:1536
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[21:24], v0 offset:512
	ds_load_b128 v[13:16], v0 offset:1024
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[1:4], v0 offset:1536
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v113, 0
	v_xor_b32_e32 v239, 16, v238
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v0, 0
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
	v_add_nc_u32_e32 v0, s12, v238
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v50, s23 :: v_dual_mov_b32 v45, s18
	v_mov_b32_e32 v49, s22
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[107:110], v0
	ds_load_b128 v[111:114], v0 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v47, s20 :: v_dual_add_nc_u32 v0, s12, v239
	v_dual_mov_b32 v48, s21 :: v_dual_mov_b32 v43, s16
	v_mov_b32_e32 v46, s19
	v_mov_b32_e32 v44, s17
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
	v_cvt_f32_i32_e32 v120, v53
	v_cvt_f32_i32_e32 v121, v54
	v_cvt_f32_i32_e32 v115, v55
	v_cvt_f32_i32_e32 v116, v56
	v_cvt_f32_i32_e32 v124, v67
	v_cvt_f32_i32_e32 v132, v68
	v_cvt_f32_i32_e32 v123, v69
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[107:110], v[29:32], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[107:110], v[21:24], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[107:110], v[13:16], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[107:110], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v130, v70
	v_cvt_f32_i32_e32 v113, v59
	v_cvt_f32_i32_e32 v114, v60
	v_cvt_f32_i32_e32 v111, v61
	v_cvt_f32_i32_e32 v112, v62
	v_cvt_f32_i32_e32 v109, v63
	v_cvt_f32_i32_e32 v110, v64
	v_cvt_f32_i32_e32 v107, v65
	v_cvt_f32_i32_e32 v108, v66
	v_cvt_f32_i32_e32 v117, v71
	v_cvt_f32_i32_e32 v206, v72
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
	v_cvt_f32_i32_e32 v133, v83
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
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v34, v45
	v_cvt_f32_i32_e32 v35, v46
	v_cvt_f32_i32_e32 v20, v47
	v_cvt_f32_i32_e32 v33, v48
	v_cvt_f32_i32_e32 v0, v49
	v_cvt_f32_i32_e32 v17, v50
	v_cvt_f32_i32_e32 v45, v57
	v_cvt_f32_i32_e32 v46, v58
	v_cvt_f32_i32_e32 v47, v51
	v_cvt_f32_i32_e32 v48, v52
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v87, off offset:800
	scratch_store_b32 off, v86, off offset:788
	scratch_store_b32 off, v48, off offset:780
	scratch_store_b32 off, v47, off offset:776
	scratch_store_b32 off, v85, off offset:756
	scratch_store_b32 off, v84, off offset:744
	scratch_store_b32 off, v133, off offset:740
	scratch_store_b32 off, v83, off offset:736
	scratch_store_b32 off, v132, off offset:728
	scratch_store_b32 off, v130, off offset:720
	scratch_store_b32 off, v124, off offset:712
	scratch_store_b32 off, v123, off offset:708
	scratch_store_b32 off, v82, off offset:700
	scratch_store_b32 off, v81, off offset:696
	scratch_store_b32 off, v121, off offset:692
	scratch_store_b32 off, v80, off offset:632
	scratch_store_b32 off, v79, off offset:628
	scratch_store_b32 off, v46, off offset:624
	scratch_store_b32 off, v45, off offset:620
	scratch_store_b32 off, v78, off offset:616
	scratch_store_b32 off, v77, off offset:612
	scratch_store_b32 off, v76, off offset:608
	scratch_store_b32 off, v75, off offset:604
	scratch_store_b32 off, v74, off offset:600
	scratch_store_b32 off, v73, off offset:596
	scratch_store_b32 off, v72, off offset:592
	scratch_store_b32 off, v71, off offset:588
	scratch_store_b32 off, v70, off offset:344
	scratch_store_b32 off, v69, off offset:340
	scratch_store_b32 off, v68, off offset:336
	scratch_store_b32 off, v67, off offset:332
	scratch_store_b32 off, v66, off offset:328
	s_clause 0x13                           ; 80-byte Folded Spill
	scratch_store_b32 off, v65, off offset:324
	scratch_store_b32 off, v64, off offset:320
	scratch_store_b32 off, v63, off offset:316
	scratch_store_b32 off, v62, off offset:308
	scratch_store_b32 off, v61, off offset:304
	scratch_store_b32 off, v60, off offset:296
	scratch_store_b32 off, v59, off offset:292
	scratch_store_b32 off, v56, off offset:288
	scratch_store_b32 off, v55, off offset:284
	scratch_store_b32 off, v54, off offset:280
	scratch_store_b32 off, v53, off offset:276
	scratch_store_b32 off, v44, off offset:264
	scratch_store_b32 off, v43, off offset:260
	scratch_store_b32 off, v35, off offset:256
	scratch_store_b32 off, v34, off offset:244
	scratch_store_b32 off, v33, off offset:240
	scratch_store_b32 off, v20, off offset:236
	scratch_store_b32 off, v0, off offset:228
	scratch_store_b32 off, v188, off offset:224
	scratch_store_b32 off, v189, off offset:220
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v33, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s1
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
	v_add_nc_u32_e32 v0, s31, v239
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v50, s19 :: v_dual_mov_b32 v45, s14
	v_mov_b32_e32 v49, s18
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[91:94], v0 offset:4096
	ds_load_b128 v[95:98], v0
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v47, s16 :: v_dual_add_nc_u32 v0, s31, v238
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[99:102], v0 offset:4096
	ds_load_b128 v[103:106], v0
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v48, s17 :: v_dual_mov_b32 v43, s12
	v_mov_b32_e32 v46, s15
	v_mov_b32_e32 v44, s13
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
	v_cvt_f32_i32_e32 v219, v53
	v_cvt_f32_i32_e32 v224, v54
	v_cvt_f32_i32_e32 v95, v55
	v_cvt_f32_i32_e32 v97, v56
	v_cvt_f32_i32_e32 v96, v57
	v_cvt_f32_i32_e32 v98, v58
	v_cvt_f32_i32_e32 v91, v59
	v_cvt_f32_i32_e32 v93, v60
	v_cvt_f32_i32_e32 v92, v61
	v_cvt_f32_i32_e32 v94, v62
	v_cvt_f32_i32_e32 v61, v63
	v_cvt_f32_i32_e32 v62, v64
	v_cvt_f32_i32_e32 v59, v65
	v_cvt_f32_i32_e32 v60, v66
	v_cvt_f32_i32_e32 v227, v25
	v_cvt_f32_i32_e32 v228, v26
	v_cvt_f32_i32_e32 v225, v27
	v_cvt_f32_i32_e32 v226, v28
	v_cvt_f32_i32_e32 v100, v29
	v_cvt_f32_i32_e32 v102, v30
	v_cvt_f32_i32_e32 v99, v31
	v_cvt_f32_i32_e32 v101, v32
	v_cvt_f32_i32_e32 v66, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v65, v69
	v_cvt_f32_i32_e32 v67, v70
	v_cvt_f32_i32_e32 v57, v71
	v_cvt_f32_i32_e32 v58, v72
	v_cvt_f32_i32_e32 v55, v73
	v_cvt_f32_i32_e32 v56, v74
	v_cvt_f32_i32_e32 v231, v75
	v_cvt_f32_i32_e32 v232, v76
	v_cvt_f32_i32_e32 v229, v77
	v_cvt_f32_i32_e32 v233, v78
	v_cvt_f32_i32_e32 v217, v79
	v_cvt_f32_i32_e32 v189, v80
	v_cvt_f32_i32_e32 v216, v81
	v_cvt_f32_i32_e32 v78, v82
	v_cvt_f32_i32_e32 v71, v83
	v_cvt_f32_i32_e32 v72, v84
	v_cvt_f32_i32_e32 v70, v85
	v_cvt_f32_i32_e32 v73, v86
	v_cvt_f32_i32_e32 v53, v87
	v_cvt_f32_i32_e32 v54, v88
	v_cvt_f32_i32_e32 v35, v89
	v_cvt_f32_i32_e32 v52, v90
	v_cvt_f32_i32_e32 v241, v9
	v_cvt_f32_i32_e32 v64, v10
	v_cvt_f32_i32_e32 v141, v11
	v_cvt_f32_i32_e32 v240, v12
	v_cvt_f32_i32_e32 v76, v13
	v_cvt_f32_i32_e32 v77, v14
	v_cvt_f32_i32_e32 v74, v15
	v_cvt_f32_i32_e32 v75, v16
	v_cvt_f32_i32_e32 v63, v43
	v_cvt_f32_i32_e32 v69, v44
	v_cvt_f32_i32_e32 v43, v45
	v_cvt_f32_i32_e32 v44, v46
	v_cvt_f32_i32_e32 v33, v47
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v0, v49
	v_cvt_f32_i32_e32 v20, v50
	v_cvt_f32_i32_e32 v218, v51
.LBB0_12:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v78, off offset:916
	scratch_store_b32 off, v77, off offset:908
	scratch_store_b32 off, v102, off offset:904
	scratch_store_b32 off, v76, off offset:900
	scratch_store_b32 off, v101, off offset:896
	scratch_store_b32 off, v100, off offset:892
	scratch_store_b32 off, v99, off offset:888
	scratch_store_b32 off, v98, off offset:884
	scratch_store_b32 off, v97, off offset:880
	scratch_store_b32 off, v96, off offset:876
	scratch_store_b32 off, v95, off offset:872
	scratch_store_b32 off, v75, off offset:852
	scratch_store_b32 off, v74, off offset:840
	scratch_store_b32 off, v73, off offset:680
	scratch_store_b32 off, v72, off offset:676
	scratch_store_b32 off, v71, off offset:672
	scratch_store_b32 off, v70, off offset:668
	scratch_store_b32 off, v69, off offset:664
	scratch_store_b32 off, v68, off offset:660
	scratch_store_b32 off, v67, off offset:656
	scratch_store_b32 off, v66, off offset:652
	scratch_store_b32 off, v65, off offset:648
	scratch_store_b32 off, v63, off offset:644
	scratch_store_b32 off, v44, off offset:640
	scratch_store_b32 off, v43, off offset:636
	scratch_store_b32 off, v62, off offset:580
	scratch_store_b32 off, v61, off offset:576
	scratch_store_b32 off, v60, off offset:572
	scratch_store_b32 off, v59, off offset:568
	scratch_store_b32 off, v58, off offset:536
	scratch_store_b32 off, v57, off offset:532
	scratch_store_b32 off, v56, off offset:528
	s_clause 0x15                           ; 88-byte Folded Spill
	scratch_store_b32 off, v55, off offset:524
	scratch_store_b32 off, v54, off offset:512
	scratch_store_b32 off, v53, off offset:496
	scratch_store_b32 off, v52, off offset:488
	scratch_store_b32 off, v35, off offset:476
	scratch_store_b32 off, v114, off offset:392
	scratch_store_b32 off, v113, off offset:388
	scratch_store_b32 off, v112, off offset:376
	scratch_store_b32 off, v111, off offset:372
	scratch_store_b32 off, v110, off offset:368
	scratch_store_b32 off, v109, off offset:364
	scratch_store_b32 off, v108, off offset:360
	scratch_store_b32 off, v107, off offset:356
	scratch_store_b32 off, v34, off offset:312
	scratch_store_b32 off, v33, off offset:300
	scratch_store_b32 off, v20, off offset:272
	scratch_store_b32 off, v0, off offset:268
	scratch_store_b32 off, v17, off offset:232
	scratch_store_b32 off, v175, off offset:200
	scratch_store_b32 off, v177, off offset:196
	scratch_store_b32 off, v173, off offset:192
	scratch_store_b32 off, v184, off offset:188
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v4, off, off offset:204
	scratch_load_b32 v5, off, off offset:208
	scratch_load_b32 v6, off, off offset:212
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s1, s1, 27
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s1, s30, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s10
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s1, 5
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s31, s11
	.loc	1 390 40 is_stmt 0              ; generate_amdgcn.py:390:40
	s_mul_i32 s4, s1, s34
	.loc	1 387 34 is_stmt 1              ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s1, s44
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v1, v252, s4, 1
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s5, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 394 39                        ; generate_amdgcn.py:394:39
	v_add3_u32 v7, s26, s27, v119
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v230, 0, v135
	v_mov_b32_e32 v132, 0
	scratch_store_b32 off, v7, off offset:976 ; 4-byte Folded Spill
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v7, v7, s4, 1
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v95, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v99, 0
	s_mov_b32 s12, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v102, 0
	v_mov_b32_e32 v242, 0
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v182, v138
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, v0, s1, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v4, v4, s1, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v5, v5, s1, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v2, 32, v18
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_and_b32 v3, 28, v139
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v6, v6, s1, 1
	v_mov_b32_e32 v18, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_add3_u32 v2, 0, v137, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v221, v2, v3
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v3, 0x80000000, v5, vcc_lo
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_dual_cndmask_b32 v5, 0x80000000, v7 :: v_dual_cndmask_b32 v2, 0x80000000, v4
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	s_clause 0x3
	buffer_load_u16 v236, v0, s[8:11], 0 offen
	buffer_load_u16 v235, v2, s[8:11], 0 offen
	buffer_load_u16 v234, v3, s[8:11], 0 offen
	buffer_load_u16 v237, v4, s[8:11], 0 offen
	v_dual_mov_b32 v3, 0 :: v_dual_add_nc_u32 v2, s47, v37
	v_mov_b32_e32 v37, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v221, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v0, v5, s[28:31], 0 offen
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	scratch_store_b32 off, v3, off offset:108 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v3, 0, 1, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[8:11], v230 offset:37392
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	v_add_nc_u32_e32 v1, s47, v38
	v_mov_b32_e32 v67, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[20:23], v230 offset:36864
	ds_load_b128 v[12:15], v230 offset:36880
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cmp_ne_u32_e64 s1, 1, v3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[3:6], v230 offset:37376
	v_mov_b32_e32 v38, 0
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[8:11], off offset:920 ; 16-byte Folded Spill
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[3:6], off offset:936 ; 16-byte Folded Spill
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v3, 0 :: v_dual_lshlrev_b32 v0, 16, v0
	ds_store_b32 v221, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 374 26                        ; generate_amdgcn.py:374:26
	ds_load_b128 v[56:59], v1
	ds_load_b128 v[48:51], v1 offset:512
	ds_load_b128 v[40:43], v1 offset:1024
	ds_load_b128 v[207:210], v1 offset:1536
	ds_load_b128 v[60:63], v2
	ds_load_b128 v[52:55], v2 offset:512
	ds_load_b128 v[44:47], v2 offset:1024
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_b128 v[32:35], v2 offset:1536
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v31, s19 :: v_dual_add_nc_u32 v8, s46, v238
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[0:3], v8
	ds_load_b128 v[8:11], v8 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v29, s17 :: v_dual_add_nc_u32 v16, s46, v239
	v_dual_mov_b32 v30, s18 :: v_dual_mov_b32 v27, s15
	v_dual_mov_b32 v28, s16 :: v_dual_mov_b32 v25, s13
	v_dual_mov_b32 v26, s14 :: v_dual_mov_b32 v37, v91
	v_dual_mov_b32 v24, s12 :: v_dual_mov_b32 v39, v93
	v_dual_mov_b32 v18, v122 :: v_dual_mov_b32 v135, v115
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[121:124], v16
	v_dual_mov_b32 v142, v94 :: v_dual_mov_b32 v137, v116
	v_dual_mov_b32 v138, v117 :: v_dual_mov_b32 v175, v120
	v_mov_b32_e32 v38, v92
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[0:3], v[56:59], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[0:3], v[48:51], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[0:3], v[40:43], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[0:3], v[207:210], v[24:31] neg_lo:[1,1,0]
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[0:3], v16 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[8:11], v[56:59], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[8:11], v[48:51], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[8:11], v[40:43], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[24:31], v[8:11], v[207:210], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[121:124], v[60:63], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[121:124], v[52:55], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[121:124], v[44:47], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[121:124], v[32:35], v[113:120] neg_lo:[1,1,0]
	v_mov_b32_e32 v122, v18
	v_cvt_f32_i32_e32 v242, v67
	v_cvt_f32_i32_e32 v143, v69
	v_cvt_f32_i32_e32 v173, v70
	v_cvt_f32_i32_e32 v177, v81
	v_cvt_f32_i32_e32 v184, v82
	v_cvt_f32_i32_e32 v188, v83
	v_cvt_f32_i32_e32 v199, v84
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[0:3], v[60:63], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[0:3], v[52:55], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[0:3], v[44:47], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[24:31], v[0:3], v[32:35], v[24:31] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v68
	v_cvt_f32_i32_e32 v132, v73
	v_cvt_f32_i32_e32 v133, v74
	v_cvt_f32_i32_e32 v124, v75
	v_cvt_f32_i32_e32 v130, v76
	v_cvt_f32_i32_e32 v121, v77
	v_cvt_f32_i32_e32 v123, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v85
	v_cvt_f32_i32_e32 v82, v86
	v_cvt_f32_i32_e32 v83, v87
	v_cvt_f32_i32_e32 v84, v88
	v_cvt_f32_i32_e32 v77, v89
	v_cvt_f32_i32_e32 v78, v90
	v_cvt_f32_i32_e32 v75, v91
	v_mov_b32_e32 v91, v37
	v_cvt_f32_i32_e32 v76, v92
	v_mov_b32_e32 v92, v38
	v_cvt_f32_i32_e32 v73, v93
	v_mov_b32_e32 v93, v39
	v_cvt_f32_i32_e32 v74, v94
	v_mov_b32_e32 v94, v142
	v_cvt_f32_i32_e32 v69, v95
	v_cvt_f32_i32_e32 v70, v96
	v_cvt_f32_i32_e32 v89, v97
	v_cvt_f32_i32_e32 v90, v98
	v_cvt_f32_i32_e32 v95, v99
	v_cvt_f32_i32_e32 v96, v100
	v_cvt_f32_i32_e32 v85, v101
	v_cvt_f32_i32_e32 v86, v102
	v_cvt_f32_i32_e32 v87, v103
	v_cvt_f32_i32_e32 v88, v104
	v_cvt_f32_i32_e32 v67, v105
	v_cvt_f32_i32_e32 v68, v106
	v_cvt_f32_i32_e32 v38, v107
	v_cvt_f32_i32_e32 v39, v108
	v_cvt_f32_i32_e32 v18, v109
	v_cvt_f32_i32_e32 v37, v110
	v_cvt_f32_i32_e32 v16, v111
	v_cvt_f32_i32_e32 v17, v112
	v_cvt_f32_i32_e32 v101, v113
	v_cvt_f32_i32_e32 v102, v114
	v_cvt_f32_i32_e32 v103, v115
	v_mov_b32_e32 v115, v135
	v_cvt_f32_i32_e32 v104, v116
	v_mov_b32_e32 v116, v137
	v_cvt_f32_i32_e32 v97, v117
	v_mov_b32_e32 v117, v138
	v_cvt_f32_i32_e32 v98, v118
	v_cvt_f32_i32_e32 v99, v119
	v_mov_b32_e32 v119, v1
	v_cvt_f32_i32_e32 v100, v120
	v_mov_b32_e32 v120, v175
	v_cvt_f32_i32_e32 v10, v24
	v_cvt_f32_i32_e32 v11, v25
	v_cvt_f32_i32_e32 v8, v26
	v_cvt_f32_i32_e32 v9, v27
	v_cvt_f32_i32_e32 v2, v28
	v_cvt_f32_i32_e32 v3, v29
	v_cvt_f32_i32_e32 v0, v30
	v_cvt_f32_i32_e32 v1, v31
	v_cvt_f32_i32_e32 v24, v71
	v_cvt_f32_i32_e32 v25, v72
	v_cvt_f32_i32_e32 v26, v65
	v_cvt_f32_i32_e32 v27, v66
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v104, off offset:868
	scratch_store_b32 off, v103, off offset:864
	scratch_store_b32 off, v102, off offset:860
	scratch_store_b32 off, v101, off offset:856
	scratch_store_b32 off, v100, off offset:848
	scratch_store_b32 off, v99, off offset:844
	scratch_store_b32 off, v98, off offset:836
	scratch_store_b32 off, v97, off offset:832
	scratch_store_b32 off, v27, off offset:828
	scratch_store_b32 off, v26, off offset:824
	scratch_store_b32 off, v96, off offset:820
	scratch_store_b32 off, v95, off offset:816
	scratch_store_b32 off, v90, off offset:812
	scratch_store_b32 off, v89, off offset:808
	scratch_store_b32 off, v199, off offset:804
	scratch_store_b32 off, v188, off offset:796
	scratch_store_b32 off, v184, off offset:792
	scratch_store_b32 off, v177, off offset:784
	scratch_store_b32 off, v25, off offset:772
	scratch_store_b32 off, v88, off offset:768
	scratch_store_b32 off, v24, off offset:764
	scratch_store_b32 off, v87, off offset:760
	scratch_store_b32 off, v86, off offset:752
	scratch_store_b32 off, v85, off offset:748
	scratch_store_b32 off, v84, off offset:732
	scratch_store_b32 off, v83, off offset:724
	scratch_store_b32 off, v82, off offset:716
	scratch_store_b32 off, v81, off offset:704
	scratch_store_b32 off, v173, off offset:688
	scratch_store_b32 off, v143, off offset:684
	scratch_store_b32 off, v133, off offset:520
	scratch_store_b32 off, v132, off offset:516
	s_clause 0x1e                           ; 124-byte Folded Spill
	scratch_store_b32 off, v130, off offset:508
	scratch_store_b32 off, v124, off offset:504
	scratch_store_b32 off, v123, off offset:500
	scratch_store_b32 off, v121, off offset:492
	scratch_store_b32 off, v80, off offset:484
	scratch_store_b32 off, v79, off offset:480
	scratch_store_b32 off, v78, off offset:472
	scratch_store_b32 off, v77, off offset:468
	scratch_store_b32 off, v76, off offset:464
	scratch_store_b32 off, v75, off offset:460
	scratch_store_b32 off, v74, off offset:456
	scratch_store_b32 off, v73, off offset:452
	scratch_store_b32 off, v70, off offset:448
	scratch_store_b32 off, v69, off offset:444
	scratch_store_b32 off, v68, off offset:440
	scratch_store_b32 off, v67, off offset:436
	scratch_store_b32 off, v39, off offset:432
	scratch_store_b32 off, v38, off offset:428
	scratch_store_b32 off, v37, off offset:424
	scratch_store_b32 off, v18, off offset:420
	scratch_store_b32 off, v17, off offset:416
	scratch_store_b32 off, v16, off offset:412
	scratch_store_b32 off, v11, off offset:408
	scratch_store_b32 off, v10, off offset:404
	scratch_store_b32 off, v9, off offset:400
	scratch_store_b32 off, v8, off offset:396
	scratch_store_b32 off, v3, off offset:384
	scratch_store_b32 off, v2, off offset:380
	scratch_store_b32 off, v1, off offset:352
	scratch_store_b32 off, v0, off offset:348
	scratch_store_b32 off, v19, off offset:4
	ds_load_b128 v[28:31], v230 offset:36864
	ds_load_b128 v[24:27], v230 offset:36880
	ds_load_b128 v[72:75], v230 offset:37376
	ds_load_b128 v[0:3], v230 offset:37392
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v85, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v39, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:952 ; 16-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v222, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v17, 0
	v_dual_mov_b32 v173, v172 :: v_dual_mov_b32 v138, v146
	v_dual_mov_b32 v172, v187 :: v_dual_mov_b32 v177, v201
	v_mov_b32_e32 v175, v140
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v19, v117 :: v_dual_add_nc_u32 v16, s45, v239
	v_dual_mov_b32 v124, v119 :: v_dual_mov_b32 v71, v120
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_mov_b32 s13, s12
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	ds_load_b128 v[0:3], v16 offset:4096
	ds_load_b128 v[65:68], v16
	v_dual_mov_b32 v17, v122 :: v_dual_add_nc_u32 v16, s45, v238
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[120:123], v16
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v18, v116 :: v_dual_mov_b32 v83, s19
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[116:119], v16 offset:4096
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_dual_mov_b32 v82, s18 :: v_dual_mov_b32 v81, s17
	v_dual_mov_b32 v80, s16 :: v_dual_mov_b32 v79, s15
	v_dual_mov_b32 v78, s14 :: v_dual_mov_b32 v77, s13
	v_dual_mov_b32 v76, s12 :: v_dual_mov_b32 v39, v92
	v_dual_mov_b32 v38, v91 :: v_dual_mov_b32 v69, v93
	v_mov_b32_e32 v70, v94
	v_mov_b32_e32 v16, v115
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[120:123], v[56:59], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[65:68], v[60:63], v[84:91] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[116:119], v[56:59], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[116:119], v[48:51], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[116:119], v[40:43], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[0:3], v[60:63], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[120:123], v[48:51], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[100:107], v[0:3], v[52:55], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[0:3], v[44:47], v[108:115] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v184, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[65:68], v[52:55], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[120:123], v[40:43], v[76:83] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v143, v89
	v_cvt_f32_i32_e32 v37, v92
	v_mov_b32_e32 v92, v39
	v_wmma_i32_16x16x16_iu8 v[48:55], v[65:68], v[44:47], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[120:123], v[207:210], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[116:119], v[207:210], v[76:83] neg_lo:[1,1,0]
	v_mov_b32_e32 v120, v71
	v_dual_mov_b32 v122, v17 :: v_dual_mov_b32 v117, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[40:47], v[65:68], v[32:35], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[0:3], v[32:35], v[76:83] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v84
	v_mov_b32_e32 v119, v124
	v_cvt_f32_i32_e32 v118, v85
	v_cvt_f32_i32_e32 v65, v86
	v_cvt_f32_i32_e32 v121, v87
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v85, v90
	v_cvt_f32_i32_e32 v86, v91
	v_mov_b32_e32 v91, v38
	v_mov_b32_e32 v116, v18
	v_cvt_f32_i32_e32 v2, v93
	v_mov_b32_e32 v93, v69
	v_cvt_f32_i32_e32 v133, v94
	v_mov_b32_e32 v94, v70
	v_cvt_f32_i32_e32 v1, v95
	v_cvt_f32_i32_e32 v200, v96
	v_cvt_f32_i32_e32 v142, v97
	v_cvt_f32_i32_e32 v222, v98
	v_cvt_f32_i32_e32 v130, v99
	v_cvt_f32_i32_e32 v6, v56
	v_cvt_f32_i32_e32 v9, v57
	v_cvt_f32_i32_e32 v4, v58
	v_cvt_f32_i32_e32 v10, v59
	v_cvt_f32_i32_e32 v89, v60
	v_cvt_f32_i32_e32 v90, v61
	v_cvt_f32_i32_e32 v95, v62
	v_cvt_f32_i32_e32 v96, v63
	v_cvt_f32_i32_e32 v39, v100
	v_cvt_f32_i32_e32 v66, v101
	v_cvt_f32_i32_e32 v67, v102
	v_cvt_f32_i32_e32 v68, v103
	v_cvt_f32_i32_e32 v249, v104
	v_cvt_f32_i32_e32 v246, v105
	v_cvt_f32_i32_e32 v123, v106
	v_cvt_f32_i32_e32 v124, v107
	v_cvt_f32_i32_e32 v11, v48
	v_cvt_f32_i32_e32 v3, v49
	v_cvt_f32_i32_e32 v104, v50
	v_cvt_f32_i32_e32 v105, v51
	v_cvt_f32_i32_e32 v98, v52
	v_cvt_f32_i32_e32 v100, v53
	v_cvt_f32_i32_e32 v99, v54
	v_cvt_f32_i32_e32 v139, v55
	v_cvt_f32_i32_e32 v69, v108
	v_cvt_f32_i32_e32 v211, v109
	v_cvt_f32_i32_e32 v135, v110
	v_cvt_f32_i32_e32 v137, v111
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v19, v114
	v_cvt_f32_i32_e32 v109, v115
	v_mov_b32_e32 v115, v16
	v_cvt_f32_i32_e32 v128, v40
	v_cvt_f32_i32_e32 v202, v41
	v_cvt_f32_i32_e32 v220, v42
	v_cvt_f32_i32_e32 v199, v43
	v_cvt_f32_i32_e32 v102, v44
	v_cvt_f32_i32_e32 v103, v45
	v_cvt_f32_i32_e32 v5, v46
	v_cvt_f32_i32_e32 v7, v47
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v212, v78
	v_cvt_f32_i32_e32 v214, v79
	v_cvt_f32_i32_e32 v17, v80
	v_cvt_f32_i32_e32 v18, v81
	v_cvt_f32_i32_e32 v0, v82
	v_cvt_f32_i32_e32 v8, v83
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v251, off, off offset:564
	scratch_load_b32 v113, off, off offset:584
	scratch_load_b32 v250, off, off offset:560
	scratch_load_b32 v146, off, off offset:556
	scratch_load_b32 v140, off, off offset:552
	scratch_load_b32 v112, off, off offset:548
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v32.l, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_mov_b16_e64 v35.h, v236.l
	v_mov_b16_e64 v34.h, v235.l
	s_clause 0x8                            ; 36-byte Folded Spill
	scratch_store_b32 off, v124, off offset:1004
	scratch_store_b32 off, v123, off offset:1000
	scratch_store_b32 off, v111, off offset:996
	scratch_store_b32 off, v110, off offset:992
	scratch_store_b32 off, v109, off offset:988
	scratch_store_b32 off, v18, off offset:984
	scratch_store_b32 off, v17, off offset:980
	scratch_store_b32 off, v8, off offset:972
	scratch_store_b32 off, v0, off offset:968
	v_mov_b16_e64 v32.h, v237.l
	v_mov_b16_e32 v35.l, v32.l
	v_mov_b16_e32 v34.l, v32.l
	v_mov_b32_e32 v209, v130
	v_mov_b16_e64 v33.h, v234.l
	v_mov_b16_e32 v33.l, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v16, v218, v35 :: v_dual_mul_f32 v41, v227, v34
	v_mul_f32_e32 v0, v223, v35
	v_dual_mul_f32 v17, v224, v35 :: v_dual_mov_b32 v130, v37
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v37, v16, v28, v205
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v16, v225, v34
	v_dual_mul_f32 v18, v219, v35 :: v_dual_mov_b32 v207, v200
	v_mov_b32_e32 v200, v142
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v38, v17, v31, v167
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v232, v33
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v43, v16, v30, v178
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v16, v241, v32
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v108, v0, v29, v168
	v_mov_b32_e32 v142, v39
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v226, v34
	v_mov_b32_e32 v208, v19
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v225, v16, v28, v171
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v16, off, off offset:692
	scratch_load_b32 v111, off, off offset:544
	scratch_load_b32 v19, off, off offset:224
	scratch_load_b32 v110, off, off offset:540
	scratch_load_b32 v101, off, off offset:220
	scratch_load_b32 v60, off, off offset:200
	scratch_load_b32 v59, off, off offset:196
	scratch_load_b32 v109, off, off offset:104
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v39, v18, v30, v166
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v18, v231, v33
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v49, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v40, v228, v34 :: v_dual_mul_f32 v47, v229, v33
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v41, v41, v28, v164
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v46, v233, v33
	v_mov_b32_e32 v8, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v40, v40, v29, v165
	v_mov_b32_e32 v114, v69
	.loc	1 386 29 is_stmt 1              ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s35, 31
	v_mov_b32_e32 v218, v76
	s_lshr_b32 s1, s1, 27
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s10
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s1, s35, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s31, s11
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s1, s1, 5
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s33, s33, s27
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s1, s44
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s4, s1, s34
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s5, -1, 0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v54, off, off offset:696 ; 4-byte Folded Reload
	v_mov_b32_e32 v219, v77
	v_mov_b32_e32 v5, v103
	v_mov_b32_e32 v103, v198
	v_mov_b32_e32 v107, v196
	v_mov_b32_e32 v123, v176
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(15)
	v_fma_f32 v44, v17, v29, v251
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v240, v32
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(13)
	v_fma_f32 v45, v18, v28, v250
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v18, v141, v32
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(11)
	v_fma_f32 v224, v47, v30, v140
	v_fma_f32 v46, v46, v31, v146
	v_fma_f32 v226, v17, v31, v170
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v17, v120, v35
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v42, v0, v31, v179
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v64, v32
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v227, v18, v30, v169
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v18, off, off offset:728 ; 4-byte Folded Reload
	v_mov_b32_e32 v141, v104
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v104, off, off offset:192
	scratch_load_b32 v64, off, off offset:188
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v223, v0, v29, v180
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:780 ; 4-byte Folded Reload
	s_waitcnt vmcnt(13)
	v_mul_f32_e32 v16, v16, v35
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(9)
	v_fma_f32 v30, v17, v22, v101
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:744
	scratch_load_b32 v29, off, off offset:712
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v31, v16, v23, v182
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:708 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v56, v54, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v56, v56, v22, v183
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v18, v18, v34
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v0, v0, v35
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v48, v18, v21, v175
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v18, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v28, v0, v21, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v17, v17, v33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v47, v29, v34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v52, v17, v21, v59
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v17, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v47, v20, v60
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v18, v18, v33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v35
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v51, v18, v20, v173
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v18, off, off offset:700 ; 4-byte Folded Reload
	v_mul_f32_e32 v16, v16, v34
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v29, v0, v20, v138
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v17, v17, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v54, v17, v20, v186
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v17, off, off offset:884 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v18, v18, v32
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v61, v18, v23, v185
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v18, off, off offset:876 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v50, v0, v23, v177
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:736 ; 4-byte Folded Reload
	v_mul_f32_e32 v53, v49, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v49, v16, v22, v172
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:800 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v53, v53, v23, v104
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v18, v18, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v18, v26, v155
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v18, v189, v33
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v32
	v_mov_b32_e32 v189, v68
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v233, v18, v25, v150
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v55, v16, v21, v109
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v16, off, off offset:880
	scratch_load_b32 v21, off, off offset:904
	scratch_load_b32 v18, off, off offset:900
	v_mul_f32_e32 v17, v17, v35
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v57, v21, v34
	scratch_load_b32 v21, off, off offset:892 ; 4-byte Folded Reload
	v_mul_f32_e32 v16, v16, v35
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v18, v18, v32
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v228, v57, v25, v154
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v57, v217, v33
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v20, v16, v25, v247
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v16, off, off offset:872 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v68, v18, v24, v36
	v_mov_b32_e32 v217, v67
	v_fma_f32 v234, v57, v24, v156
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:852
	scratch_load_b32 v18, off, off offset:624
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v156, v156, v234, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v58, v21, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v229, v58, v24, v153
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v58, off, off offset:916 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v16, v16, v35
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v21, v16, v24, v163
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v24, off, off offset:620 ; 4-byte Folded Reload
	v_mul_f32_e32 v0, v0, v33
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v16, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v0, v0, v22, v64
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v22, v17, v27, v160
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v17, off, off offset:888 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v58, v58, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v235, v58, v27, v254
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v58, off, off offset:840 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v57, v57, v32 :: v_dual_mul_f32 v16, v16, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v70, v57, v27, v134
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v231, v16, v27, v152
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v17, v17, v34 :: v_dual_mul_f32 v16, v216, v33
	v_mov_b32_e32 v216, v66
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v27, off, off offset:604 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v232, v17, v26, v151
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v17, off, off offset:908 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v67, v16, v26, v159
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v16, v116, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v16, v13, v181
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v181, v181, v16, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v58, v58, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v71, v58, v26, v203
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v26, v117, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v104, v53, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v69, v26, v12, v195
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v26, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v24, v24, v35 :: v_dual_mul_f32 v27, v27, v33
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v24, v14, v113
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v24, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v66, v17, v25, v176
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v206, v34
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v79, v27, v12, v191
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v27, off, off offset:588 ; 4-byte Folded Reload
	v_mul_f32_e32 v17, v115, v35
	scratch_load_b32 v115, off, off offset:912 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v63, v25, v13, v196
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v25, off, off offset:596 ; 4-byte Folded Reload
	v_mov_b32_e32 v206, v85
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v17, v17, v12, v197
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v196, v182, v31, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v26, v26, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v78, v26, v13, v192
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v26, off, off offset:628 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v27, v27, v32
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v84, v27, v14, v110
	v_fma_f32 v77, v25, v14, v193
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:608
	scratch_load_b32 v57, off, off offset:592
	v_mul_f32_e32 v24, v24, v34
	v_mul_f32_e32 v18, v18, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v76, v24, v15, v194
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v24, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v33
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v81, v25, v14, v111
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v14, v92, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v183, v56, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v136, v14, v74, v204
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v26, v26, v32
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v24, v33
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v83, v26, v12, v112
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v12, v93, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v109, v55, s2
	v_mov_b32_e32 v109, v121
	v_mov_b32_e32 v121, v134
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v80, v24, v15, v190
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v132, v12, v73, v255
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v12, v94, v35
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v24, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v134, v107, v63, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v88, v12, v75, v147
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v12, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v14, v14, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v94, v14, v73, v148
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v148, v148, v94, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v12, v12, v34
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v92, v12, v75, v158
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v12, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v12, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v241, v12, v75, v157
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v12, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v12, v32
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v213, v12, v73, v149
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_load_b32 v12, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v57, v57, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v85, v57, v15, v198
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v198, v19, v28, s2
	v_mov_b32_e32 v19, v197
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v18, v18, v15, v115
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v15, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v64, v0, s2
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v0, v252, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v186, v54, s2
	v_cndmask_b32_e64 v197, v138, v29, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v15, v15, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v201, v15, v73, v162
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v15, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v15, v15, v33
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v240, v15, v72, v127
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v15, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v24, v24, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v82, v24, v13, v122
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v13, v91, v35
	scratch_load_b32 v24, off, off offset:636 ; 4-byte Folded Reload
	v_mul_f32_e32 v14, v14, v32
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v87, v13, v72, v129
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v215, v14, v72, v131
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_load_b32 v14, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v15, v15, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v75, v15, v75, v144
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_load_b32 v15, off, off offset:212 ; 4-byte Folded Reload
	v_add_lshl_u32 v12, v12, s1, 1
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v24, v24, v32
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_mul_f32 v13, v13, v34
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v210, v24, v74, v125
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v185, v61, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v14, v14, s1, 1
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v91, v13, v72, v161
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:648 ; 4-byte Folded Reload
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v15, v15, s1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v34
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v93, v13, v74, v174
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v97, v13, v74, v126
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_load_b32 v13, off, off offset:204 ; 4-byte Folded Reload
	v_mov_b32_e32 v74, v191
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v191, v172, v49, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v13, v13, s1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x3
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v186, 16, v12
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v64, 16, v13
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_lshlrev_b32 v49, 16, v14
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v138, v105 :: v_dual_lshlrev_b32 v27, 16, v15
	v_mov_b32_e32 v105, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v193, v60, v47, s2
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v12, off, off offset:824 ; 4-byte Folded Reload
	v_mov_b32_e32 v124, v102
	v_mov_b32_e32 v102, v194
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v194, v175, v48, s2
	v_mov_b32_e32 v106, v195
	v_cndmask_b32_e64 v195, v101, v30, s2
	v_mov_b32_e32 v101, v192
	v_cndmask_b32_e64 v192, v177, v50, s2
	v_cndmask_b32_e64 v60, v59, v52, s2
	v_cndmask_b32_e64 v59, v173, v51, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v30, v119, v186
	v_dual_mul_f32 v31, v242, v186 :: v_dual_mov_b32 v104, v179
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v179, v115, v18, s2
	v_cndmask_b32_e64 v115, v101, v78, s2
	v_mov_b32_e32 v119, v247
	v_dual_mov_b32 v101, v170 :: v_dual_mov_b32 v120, v203
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v94, v218, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v29, v12, v186 :: v_dual_lshlrev_b32 v0, 16, v0
	scratch_load_b32 v12, off, off offset:792 ; 4-byte Folded Reload
	ds_store_b32 v221, v0 offset:36864
	scratch_load_b32 v0, off, off offset:828 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v47, v12, v64
	scratch_load_b32 v12, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v186
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v12, v64
	scratch_load_b32 v12, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v12, v64
	scratch_load_b32 v12, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v51, v12, v64
	scratch_load_b32 v12, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v52, v12, v49
	scratch_load_b32 v12, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v53, v12, v49
	scratch_load_b32 v12, off, off offset:820 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v54, v12, v49
	scratch_load_b32 v12, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v12, v49
	scratch_load_b32 v12, off, off offset:860 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v12, v27
	scratch_load_b32 v12, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v12, v27
	scratch_load_b32 v12, off, off offset:864 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v173, v106, v69, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v12, v27
	scratch_load_b32 v12, off, off offset:868 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v12, v27
	ds_load_b128 v[12:15], v230 offset:36864
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v243, v0, v13, v198
	v_mov_b32_e32 v0, v190
	v_fma_f32 v242, v29, v12, v197
	v_fma_f32 v239, v48, v12, v193
	v_fma_f32 v117, v53, v12, v59
	v_fma_f32 v53, v61, v12, v28
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v111, v81, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v12, off, off offset:684 ; 4-byte Folded Reload
	v_mov_b32_e32 v111, v160
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v190, v30, v15, v196
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v103, v85, s2
	v_mov_b32_e32 v103, v180
	v_cndmask_b32_e64 v180, v19, v17, s2
	v_mov_b32_e32 v19, v178
	v_cndmask_b32_e64 v178, v113, v62, s2
	v_cndmask_b32_e64 v62, v0, v80, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v185, v50, v15, v192
	v_fma_f32 v252, v55, v14, v57
	v_fma_f32 v116, v54, v15, v58
	v_fma_f32 v54, v56, v13, v26
	v_fma_f32 v188, v72, v14, v25
	v_fma_f32 v187, v73, v15, v24
	v_fma_f32 v238, v31, v14, v195
	v_fma_f32 v237, v47, v13, v194
	v_fma_f32 v236, v51, v14, v191
	v_fma_f32 v183, v52, v13, v60
	v_mov_b32_e32 v85, v169
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v122, v82, s2
	v_cndmask_b32_e64 v47, v112, v83, s2
	v_cndmask_b32_e64 v29, v110, v84, s2
	v_mov_b32_e32 v84, v168
	v_dual_mov_b32 v122, v36 :: v_dual_mov_b32 v113, v163
	v_cndmask_b32_e64 v163, v85, v227, s2
	v_cndmask_b32_e64 v85, v205, v37, s2
	v_mov_b32_e32 v112, v155
	v_cndmask_b32_e64 v84, v84, v108, s2
	v_cndmask_b32_e64 v111, v111, v22, s2
	v_cndmask_b32_e64 v160, v146, v46, s2
	v_cndmask_b32_e64 v155, v140, v224, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v12, v186
	scratch_load_b32 v12, off, off offset:772 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v12, v186
	scratch_load_b32 v12, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v172, v102, v76, s2
	v_mov_b32_e32 v102, v171
	v_cndmask_b32_e64 v171, v105, v77, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v105, v220, v27
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v12, v186
	scratch_load_b32 v12, off, off offset:716 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v12, v64
	scratch_load_b32 v12, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v12, v64
	scratch_load_b32 v12, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v12, v64
	scratch_load_b32 v12, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v46, v138, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v12, v64
	scratch_load_b32 v12, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v12, v49
	scratch_load_b32 v12, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v74, v79, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v12, v49
	scratch_load_b32 v12, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v12, v49
	scratch_load_b32 v12, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v12, v49
	scratch_load_b32 v12, off, off offset:836 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v12, v27
	scratch_load_b32 v12, off, off offset:832 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v12, v27
	scratch_load_b32 v12, off, off offset:844 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v78, v12, v27
	scratch_load_b32 v12, off, off offset:848 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v79, v12, v27
	ds_load_b128 v[12:15], v230 offset:36880
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v169, v69, v13, v115
	v_dual_mov_b32 v69, v167 :: v_dual_mul_f32 v0, v0, v186
	v_fma_f32 v52, v16, v12, v180
	v_fma_f32 v244, v17, v15, v179
	v_fma_f32 v182, v18, v14, v178
	v_fma_f32 v177, v48, v13, v134
	v_fma_f32 v51, v0, v13, v181
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	scratch_load_b32 v0, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v176, v50, v12, v173
	v_fma_f32 v175, v55, v15, v172
	v_fma_f32 v168, v72, v12, v63
	v_fma_f32 v167, v73, v15, v62
	v_fma_f32 v247, v74, v14, v61
	v_fma_f32 v55, v77, v12, v47
	v_fma_f32 v48, v78, v14, v29
	v_fma_f32 v50, v79, v15, v30
	v_mov_b32_e32 v17, v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v165, v102, v225, s2
	v_cndmask_b32_e64 v225, v251, v44, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v44, v3, v49 :: v_dual_mul_f32 v3, v89, v64
	v_mul_f32_e32 v89, v211, v49
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v170, v56, v14, v171
	v_fma_f32 v56, v76, v13, v31
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	ds_load_b128 v[80:83], v230 offset:37376
	ds_load_b128 v[12:15], v230 offset:37392
	v_mov_b32_e32 v18, v166
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v166, v103, v223, s2
	v_cndmask_b32_e64 v103, v17, v40, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v109, v186
	v_mul_f32_e32 v77, v128, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v18, v39, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v18, v65, v186
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v104, v42, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v104, v199, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v223, v250, v45, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v45, v11, v49 :: v_dual_mul_f32 v74, v202, v27
	v_mul_f32_e32 v40, v9, v64
	v_mul_f32_e32 v42, v10, v64
	v_mul_f32_e32 v72, v141, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v141, v159, v67, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v65, v124, v27
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, v0, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v186
	ds_store_b32 v221, v0 offset:36864
	v_mov_b32_e32 v0, v164
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v164, v101, v226, s2
	v_cndmask_b32_e64 v101, v69, v38, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v230 offset:36864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v0, v41, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v118, v186
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v19, v43, s2
	v_mov_b32_e32 v19, v154
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v41, v6, v64
	v_mul_f32_e32 v43, v4, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v254, v235, s2
	v_cndmask_b32_e64 v4, v157, v241, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v107, v16, v36, v85
	v_fma_f32 v108, v17, v39, v101
	v_fma_f32 v118, v44, v37, v225
	v_mov_b32_e32 v17, v152
	v_fma_f32 v152, v104, v39, v164
	v_mov_b32_e32 v16, v151
	v_fma_f32 v151, v105, v38, v163
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v120, v71, s2
	v_cndmask_b32_e64 v104, v119, v20, s2
	v_cndmask_b32_e64 v105, v113, v21, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v71, v8, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v112, v112, v23, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[20:23], v230 offset:36880
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v109, v18, v38, v102
	v_mov_b32_e32 v18, v153
	v_fma_f32 v250, v45, v36, v223
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v121, v70, s2
	v_mov_b32_e32 v120, v149
	v_cndmask_b32_e64 v149, v16, v232, s2
	v_cndmask_b32_e64 v70, v18, v229, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v16, v184, v186
	v_mul_f32_e32 v18, v206, v186
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v205, v46, v39, v160
	v_fma_f32 v154, v74, v37, v166
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v122, v68, s2
	v_cndmask_b32_e64 v74, v19, v228, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v110, v40, v37, v103
	v_fma_f32 v138, v41, v36, v78
	v_fma_f32 v79, v42, v39, v73
	v_fma_f32 v76, v43, v38, v69
	v_fma_f32 v203, v72, v38, v155
	v_fma_f32 v153, v77, v36, v165
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v224, v71, v22, v44
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v71, v216, v64
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v106, v0, v37, v84
	v_mov_b32_e32 v0, v150
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v150, v123, v66, s2
	v_cndmask_b32_e64 v66, v17, v231, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v17, v86, v186
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v122, v16, v20, v105
	v_fma_f32 v124, v18, v22, v112
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v202, v0, v233, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v143, v186
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v123, v17, v23, v111
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[16:19], v230 offset:37376
	v_mul_f32_e32 v36, v90, v64
	v_dual_mul_f32 v38, v95, v64 :: v_dual_mul_f32 v39, v100, v49
	v_mul_f32_e32 v40, v98, v49
	v_dual_mul_f32 v42, v99, v49 :: v_dual_mul_f32 v43, v5, v27
	v_dual_mul_f32 v68, v7, v27 :: v_dual_mul_f32 v37, v96, v64
	v_mul_f32_e32 v41, v139, v49
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v113, v0, v21, v104
	v_fma_f32 v139, v36, v21, v74
	v_fma_f32 v77, v3, v20, v70
	v_fma_f32 v67, v38, v22, v149
	v_fma_f32 v206, v39, v21, v202
	v_fma_f32 v227, v40, v20, v156
	v_fma_f32 v128, v42, v22, v141
	v_fma_f32 v184, v43, v21, v150
	v_fma_f32 v5, v68, v23, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v131, v215, s2
	v_cndmask_b32_e64 v21, v129, v87, s2
	v_cndmask_b32_e64 v22, v147, v88, s2
	v_cndmask_b32_e64 v68, v162, v201, s2
	v_cndmask_b32_e64 v3, v161, v91, s2
	v_cndmask_b32_e64 v143, v127, v240, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v39, v130, v186
	v_mul_f32_e32 v42, v1, v186
	v_mul_f32_e32 v86, v142, v64
	v_mul_f32_e32 v90, v114, v49
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v72, v37, v23, v66
	v_fma_f32 v159, v41, v23, v6
	v_fma_f32 v226, v65, v20, v46
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v120, v213, s2
	v_cndmask_b32_e64 v37, v144, v75, s2
	v_cndmask_b32_e64 v20, v255, v132, s2
	v_cndmask_b32_e64 v23, v204, v136, s2
	v_cndmask_b32_e64 v65, v174, v93, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v38, v2, v186
	v_mul_f32_e32 v43, v133, v186
	v_mul_f32_e32 v93, v219, v27
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v98, v39, v16, v21
	v_fma_f32 v99, v42, v19, v22
	v_fma_f32 v75, v71, v17, v68
	v_fma_f32 v71, v86, v16, v3
	v_fma_f32 v157, v90, v16, v143
	v_fma_f32 v42, v94, v16, v40
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v84, v106, s3
	v_cndmask_b32_e64 v132, v126, v97, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v97, v38, v17, v20
	v_fma_f32 v100, v43, v18, v23
	v_fma_f32 v199, v89, v17, v148
	v_fma_f32 v43, v93, v17, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v125, v210, s2
	v_cndmask_b32_e64 v0, v158, v92, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v88, v217, v64
	v_mul_f32_e32 v92, v135, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v96, v212, v27 :: v_dual_mul_f32 v87, v189, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v1, v88, v18, v65
	v_fma_f32 v140, v92, v18, v132
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v38, v96, v18, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v91, v137, v49
	v_mul_f32_e32 v95, v214, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v2, v87, v19, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v97, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v144, v91, v19, v4
	v_fma_f32 v39, v95, v19, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v17, v17
	scratch_load_b128 v[8:11], off, off offset:952 ; 16-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v78, v138, s3
	v_cndmask_b32_e64 v74, v74, v139, s3
	v_cndmask_b32_e64 v67, v149, v67, s3
	v_cndmask_b32_e64 v0, v0, v2, s3
	v_cndmask_b32_e64 v3, v3, v71, s3
	v_cndmask_b32_e64 v1, v65, v1, s3
	v_cndmask_b32_e64 v46, v46, v226, s3
	v_cndmask_b32_e64 v36, v36, v38, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v17, v17, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v39, s3
	v_cndmask_b32_e64 v41, v41, v43, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v2, 0xbfb8aa3b, v0 :: v_dual_add_f32 v17, 1.0, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v7, off, off offset:1004 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v17, v17, v16
	v_rcp_f32_e32 v19, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v18, v19, 1.0
	v_fmac_f32_e32 v19, v84, v19
	v_div_scale_f32 v84, vcc_lo, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v86, v84, v19
	v_fma_f32 v87, -v18, v86, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v19
	v_fma_f32 v18, -v18, v86, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v19, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v85, v107, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v119, v18, v17, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v102, v109, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v84, v84
	v_ldexp_f32 v84, v84, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v84, 1.0, v84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v85, null, v84, v84, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v87, -v85, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v19, v84, v19
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v85, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v88, v87
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v101, v108, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v120, v85, v84, v19
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v104, v113, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_mul_f32_e32 v84, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v88
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v87, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v88, null, v87, v87, v86
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v121, v88, v87, v86
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v105, v122, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v17, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v18
	v_fma_f32 v90, -v18, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v16, v17, v16
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v18, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v91, v90
	v_div_fmas_f32 v18, v18, v89, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v122, v18, v17, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v111, v123, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v84, 0xbfb8aa3b, v19 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v84, v84
	v_ldexp_f32 v84, v84, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v84, 1.0, v84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v85, null, v84, v84, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v85
	v_fma_f32 v90, -v85, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v19, v84, v19
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v85, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v91, v90
	v_div_fmas_f32 v85, v85, v89, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v123, v85, v84, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v112, v124, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v87, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v84, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v88, null, v87, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v87, v86
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v124, v88, v87, v86
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v86, 0xbfb8aa3b, v20
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v17, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v18
	v_fma_f32 v90, -v18, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v16, v17, v16
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v18, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v91, v90
	v_div_fmas_f32 v18, v18, v89, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v125, v18, v17, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v21, v98, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v84, 0xbfb8aa3b, v19 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v84, v84
	v_ldexp_f32 v84, v84, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v84, 1.0, v84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v85, null, v84, v84, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v85
	v_fma_f32 v90, -v85, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v19, v84, v19
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v85, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v91, v90
	v_div_fmas_f32 v85, v85, v89, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v86
	v_cndmask_b32_e64 v86, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, 0xbfb8aa3b, v20
	v_exp_f32_e32 v86, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v86, v86, v87
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v86, 1.0, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v87, null, v86, v86, v20
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v20, v86, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v88
	v_fma_f32 v87, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v90
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v127, v87, v86, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v23, v100, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v16 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v86
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v18
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v17, v17, v16
	v_rcp_f32_e32 v21, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v18, v21, 1.0
	v_fmac_f32_e32 v21, v88, v21
	v_div_scale_f32 v88, vcc_lo, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v21
	v_fma_f32 v90, -v18, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v21
	v_fma_f32 v18, -v18, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v18, v18, v21, v89
	v_div_fixup_f32 v93, v18, v17, v16
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v16, off, off offset:580 ; 4-byte Folded Reload
	v_mul_f32_e32 v17, v200, v186
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v126, v85, v84, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v22, v99, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v84, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v84, v84, v19
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v85, v22
	v_div_scale_f32 v85, vcc_lo, v19, v84, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v85, v22
	v_fma_f32 v89, -v21, v88, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v22
	v_fma_f32 v21, -v21, v88, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v85, v21, v22, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v113, v85, v84, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v19, off, off offset:576 ; 4-byte Folded Reload
	v_mul_f32_e32 v84, v207, v186
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v87, 1.0, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v87, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v86, v87, v86
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v20, v23, v22
	v_fmac_f32_e32 v23, v88, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v23, v22
	v_div_fmas_f32 v88, v20, v21, v23
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	ds_load_b128 v[20:23], v230 offset:37392
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v112, v88, v87, v86
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v87, v209, v186
	scratch_load_b32 v86, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v16, v16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v16, v16, v9, v245
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v245, v16, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, v17, v21, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v17, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v18
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v17, v17, v16
	v_rcp_f32_e32 v89, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v18, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v18, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v91, v92, v89
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v19, v19, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v18, v91, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v19, v19, v8, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v18, v18, v89, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v145, v19, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v111, v18, v17, v16
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v16, off, off offset:568 ; 4-byte Folded Reload
	v_mul_f32_e32 v17, v222, v186
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v84, v84, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v84, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v35
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v16, v16, v10, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v253, v16, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v17, v17, v22, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v17, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v86, v86, v35 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v86, v86, v11, v248
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v248, v86, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v87, v87, v23, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v86, v87, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v84, 0xbfb8aa3b, v19 :: v_dual_mul_f32 v87, 0xbfb8aa3b, v86
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v19
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v84, v84, v85
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v84, 1.0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v85, null, v84, v84, v19
	v_rcp_f32_e32 v89, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v85, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v19, v84, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v85, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v85, -v85, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v85, v85, v89, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v88, null, v87, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v87, v86
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	v_div_fixup_f32 v129, v85, v84, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v103, v110, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v88, -v88, v91, v90
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v110, v88, v87, v86
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v86, 0xbfb8aa3b, v78 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v16
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v17, v17, v16
	v_rcp_f32_e32 v89, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v18, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v18, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v18, -v18, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v89, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v130, v18, v17, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v73, v79, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v84, v84
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v84, v84, v85
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v84, 1.0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v85, null, v84, v84, v19
	v_rcp_f32_e32 v89, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v85, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v19, v84, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v85, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v85, -v85, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v85, v85, v89, v91
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v131, v85, v84, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v86, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v69, v76, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v86, 0xbfb8aa3b, v78 :: v_dual_mul_f32 v69, 0xbfb8aa3b, v19
	v_exp_f32_e32 v86, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v86, v86, v87
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v86, 1.0, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v87, null, v86, v86, v78
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v78, v86, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v88
	v_fma_f32 v87, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v90
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v133, v87, v86, v78
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v17, v17, v16
	v_rcp_f32_e32 v73, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v18, v73, 1.0
	v_fmac_f32_e32 v73, v79, v73
	v_div_scale_f32 v79, vcc_lo, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v79, v73
	v_fma_f32 v89, -v18, v88, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v73
	v_fma_f32 v18, -v18, v88, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v73, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v139, v18, v17, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v70, v77, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v19
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v73
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v73, null, v69, v69, v19
	v_rcp_f32_e32 v76, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v73, v76, 1.0
	v_fmac_f32_e32 v76, v79, v76
	v_div_scale_f32 v79, vcc_lo, v19, v69, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v79, v76
	v_fma_f32 v85, -v73, v84, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v76
	v_fma_f32 v73, -v73, v84, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v73, v76, v84
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v142, v73, v69, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v76
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v66, v72, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v66, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v74
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v76, v76, v78
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v76, 1.0, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v78, null, v76, v76, v74
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v84, v79
	v_div_scale_f32 v84, vcc_lo, v74, v76, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v79
	v_fma_f32 v86, -v78, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v79
	v_fma_f32 v78, -v78, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v78, v78, v79, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v146, v78, v76, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v17, v17, v16
	v_rcp_f32_e32 v70, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v18, v70, 1.0
	v_fmac_f32_e32 v70, v77, v70
	v_div_scale_f32 v77, vcc_lo, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v77, v70
	v_fma_f32 v84, -v18, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v84, v70
	v_fma_f32 v18, -v18, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v70, v79
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v149, v18, v17, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v68, v75, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v66, v66, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v72, v70
	v_div_scale_f32 v72, vcc_lo, v19, v66, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v72, v70
	v_fma_f32 v77, -v69, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v77, v70
	v_fma_f32 v69, -v69, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v70, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v158, v69, v66, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_mul_f32_e32 v19, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v70, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v72
	v_fma_f32 v74, -v72, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v67, v70, v67
	v_mul_f32_e32 v76, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v72, v76, v74
	v_fmac_f32_e32 v76, v77, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v76, v74
	v_div_fmas_f32 v72, v72, v73, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v162, v72, v70, v67
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v17, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v18
	v_fma_f32 v73, -v18, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v73, v68
	v_div_scale_f32 v73, vcc_lo, v16, v17, v16
	v_mul_f32_e32 v74, v73, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v18, v74, v73
	v_fmac_f32_e32 v74, v75, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v74, v73
	v_div_fmas_f32 v18, v18, v68, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v200, v18, v17, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v16, 0xbfb8aa3b, v1 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v19, v19, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v66
	v_fma_f32 v69, -v66, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v3, v19, v3
	v_mul_f32_e32 v71, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v66, v71, v69
	v_fmac_f32_e32 v71, v73, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v71, v69
	v_div_fmas_f32 v66, v66, v68, v71
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v204, v66, v19, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, null, v2, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v0, v2, v0
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v70, v69
	v_fmac_f32_e32 v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v70, v69
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v161, v67, v2, v0
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:536
	scratch_load_b32 v2, off, off offset:100
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v1
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v17
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v16, v16, v1
	v_rcp_f32_e32 v18, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v65, v18
	v_div_scale_f32 v65, vcc_lo, v1, v16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v65, v18
	v_fma_f32 v69, -v17, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v18
	v_fma_f32 v17, -v17, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v17, v17, v18, v68
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v34
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v9, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v2, v0, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v2, v246, v64
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v2, v2, v21, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v2, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v3, null, v2, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v3
	v_fma_f32 v19, -v3, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v0, v2, v0
	v_mul_f32_e32 v65, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v3, v65, v19
	v_fmac_f32_e32 v65, v66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v3, -v3, v65, v19
	scratch_load_b32 v19, off, off offset:96 ; 4-byte Folded Reload
	v_div_fmas_f32 v3, v3, v18, v65
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v18, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v109, v3, v2, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v225, v118, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v18, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v18, v18, v8, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v19, v18, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v249, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v19, v19, v20, v18
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v19, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v65
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v207, v17, v16, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v65, null, v19, v19, v18
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v65, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v18, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v65, -v65, v68, v67
	scratch_load_b32 v67, off, off offset:92 ; 4-byte Folded Reload
	v_div_fmas_f32 v65, v65, v66, v68
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v66, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v108, v65, v19, v18
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v66, v66, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v66, v66, v11, v67
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v67, v66, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v67, v7, v64
	scratch_load_b32 v7, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v67, v67, v23, v66
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
	scratch_load_b32 v70, off, off offset:88 ; 4-byte Folded Reload
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v69, off, off offset:524 ; 4-byte Folded Reload
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
	v_mul_f32_e32 v70, v7, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v70, v70, v22, v69
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, null, v70, v70, v69
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v71, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v69, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v71, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v106, v71, v70, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v16, v3
	v_div_scale_f32 v16, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v17, v16, v3
	v_fma_f32 v18, -v2, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v3
	v_fma_f32 v2, -v2, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v2, v2, v3, v17
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v223, v250, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v16, v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v17
	v_fma_f32 v19, -v17, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v3, v16, v3
	v_mul_f32_e32 v65, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v17, v65, v19
	v_fmac_f32_e32 v65, v66, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v65, v19
	v_div_fmas_f32 v17, v17, v18, v65
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v160, v205, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v205, v2, v1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v156, v227, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v65, null, v19, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v18, v19, v18
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v65, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v68, v67
	v_div_fmas_f32 v65, v65, v66, v68
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v155, v203, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v66
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v66
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v67, v67, v66
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v66, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v71, v70, v69
	v_div_fixup_f32 v203, v17, v16, v3
	v_fma_f32 v72, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v68, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v202, v206, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v202, v65, v19, v18
	v_div_fixup_f32 v160, v68, v67, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, null, v70, v70, v69
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v71, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v69, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v71, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
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
	v_fma_f32 v16, -v2, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, v16, v3
	v_div_scale_f32 v16, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v17, v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v2, v17, v16
	v_fmac_f32_e32 v17, v18, v3
	v_div_fixup_f32 v155, v71, v70, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v17, v16
	v_div_fmas_f32 v2, v2, v3, v17
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v6, v159, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v3
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v17
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v16, v16, v3
	v_rcp_f32_e32 v18, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v3, v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v19, v18
	v_fma_f32 v66, -v17, v65, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v18
	v_fma_f32 v17, -v17, v65, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v17, v17, v18, v65
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v141, v128, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v147, v17, v16, v3
	v_div_scale_f32 v65, null, v19, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v18, v19, v18
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v65, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v68, v67
	v_div_fmas_f32 v65, v65, v66, v68
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v148, v199, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v148, v2, v1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v4, v144, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v4, off, off offset:992 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v145, v65, v19, v18
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
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v141, v71, v70, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v16, v3
	v_div_scale_f32 v16, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v17, v16, v3
	v_fma_f32 v18, -v2, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v3
	v_fma_f32 v2, -v2, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v3, v17
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v132, v140, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v132, v2, v1, v0
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:512
	scratch_load_b32 v1, off, off offset:84
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v16, v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v17
	v_fma_f32 v19, -v17, v18, 1.0
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v33
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, v0, v9, v1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v1, v0, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v1, off, off offset:996 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v3, v16, v3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v1, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v65, v19, v18
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v1, v1, v21, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v66, -v17, v65, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v0, v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v65, v66, v18 :: v_dual_mul_f32 v0, 0xbfb8aa3b, v1
	v_fma_f32 v17, -v17, v65, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v18, v65
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v1
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v0, null, v2, v2, v1
	v_rcp_f32_e32 v18, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v0, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v19, v18
	v_fma_f32 v66, -v0, v65, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v18
	v_fma_f32 v0, -v0, v65, v19
	scratch_load_b32 v19, off, off offset:80 ; 4-byte Folded Reload
	v_div_fmas_f32 v18, v0, v18, v65
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v0, v0, v8, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v19, v0, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v4, v49
	scratch_load_b32 v4, off, off offset:988 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v104, v18, v2, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v166, v154, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v19, v19, v20, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v0, v19, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v0, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v19
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v65
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v0, null, v65, v65, v19
	v_rcp_f32_e32 v66, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v0, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v19, v65, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v0, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v0, -v0, v68, v67
	scratch_load_b32 v67, off, off offset:76 ; 4-byte Folded Reload
	v_div_fmas_f32 v66, v0, v66, v68
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v0, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v103, v66, v65, v19
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v0, v0, v11, v67
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v67, v0, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v67, v4, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v67, v67, v23, v0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v0, v67, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v0, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v67
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v68
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v68, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v0, null, v68, v68, v67
	v_rcp_f32_e32 v69, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v0, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v67, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v0, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v0, -v0, v71, v70
	scratch_load_b32 v70, off, off offset:72 ; 4-byte Folded Reload
	v_div_fmas_f32 v69, v0, v69, v71
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v0, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v102, v69, v68, v67
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v0, v0, v10, v70
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v70, v0, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v70, v208, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v70, v70, v22, v0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v0, v70, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v0, 0xbfb8aa3b, v70
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v70
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v71
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v71, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v0, null, v71, v71, v70
	v_rcp_f32_e32 v72, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v0, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v70, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v0, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v0, -v0, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v72, v0, v72, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v17, v16, v3
	v_div_fixup_f32 v65, v72, v71, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v1
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v3, null, v2, v2, v1
	v_rcp_f32_e32 v16, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v3, v16, 1.0
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v17, v16
	v_fma_f32 v19, -v3, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v16
	v_fma_f32 v3, -v3, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v3, v3, v16, v18
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v165, v153, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v105, v3, v2, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v164, v152, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v17, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v18
	v_fma_f32 v66, -v18, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v66, v19
	v_div_scale_f32 v66, vcc_lo, v16, v17, v16
	v_mul_f32_e32 v67, v66, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v18, v67, v66
	v_fmac_f32_e32 v67, v68, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v67, v66
	v_div_fmas_f32 v18, v18, v19, v67
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v1
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v3, null, v2, v2, v1
	v_rcp_f32_e32 v19, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v3, v19, 1.0
	v_fmac_f32_e32 v19, v66, v19
	v_div_scale_f32 v66, vcc_lo, v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v19
	v_fma_f32 v68, -v3, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v19
	v_fma_f32 v3, -v3, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v3, v3, v19, v67
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v163, v151, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, null, v66, v66, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v19, v66, v19
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v70, v69
	v_fmac_f32_e32 v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v70, v69
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v150, v184, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v68
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v68
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v72, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v72, v72, v68
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v68, v72, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v71, v70
	v_fma_f32 v74, -v69, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v70
	v_fma_f32 v69, -v69, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v73, v69, v70, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v46
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v74, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v74, v74, v46
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v46, v74, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v71, v70
	v_fma_f32 v76, -v69, v75, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v70
	v_fma_f32 v69, -v69, v75, v71
	v_div_fixup_f32 v71, v18, v17, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v45, v5, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v75, v69, v70, v75
	v_div_fixup_f32 v69, v3, v2, v1
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v70, v67, v66, v19
	v_div_fixup_f32 v3, v73, v72, v68
	v_div_fixup_f32 v1, v75, v74, v46
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:172
	scratch_load_b32 v74, off, off offset:168
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v16
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v17
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v17, v17, v16
	v_rcp_f32_e32 v18, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v2, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v19, v18
	v_fma_f32 v46, -v2, v45, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v18
	v_fma_f32 v2, -v2, v45, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v18, v2, v18, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v44, v224, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v66, 1.0, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v66, v66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v19
	v_fma_f32 v45, -v19, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v2, v66, v2
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v19, v46, v45
	v_fmac_f32_e32 v46, v67, v44
	v_div_fixup_f32 v67, v18, v17, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v198, v243, s3
	v_cndmask_b32_e64 v17, v197, v242, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.h, v32.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v19, -v19, v46, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v16, v16, v119 :: v_dual_mul_f32 v17, v17, v120
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v68, v19, v44, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v18.l, v16.h
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_cmp_o_f32_e64 s1, v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v18, 1, v18
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v18, v16, v18, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v196, v190, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v19, v17, v19, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v195, v238, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v44.h, 0x7fff, v18.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v44.l, 0x7fff, v19.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v122
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v181, v51, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.h, v32.l
	v_mov_b16_e32 v19.l, v16.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_mov_b16_e32 v45.l, v17.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v123
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v17, v17
	v_and_b32_e32 v19, 1, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v51, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v45
	v_cmp_o_f32_e64 s4, v18, v18
	v_add3_u32 v19, v16, v19, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v180, v52, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v17, v45, 0x7fff
	v_mov_b16_e32 v17.l, v18.h
	v_mov_b16_e32 v17.h, v32.l
	v_mov_b16_e32 v45.h, v32.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v16, v16, v124 :: v_dual_and_b32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v16.h
	v_cmp_o_f32_e64 s5, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v17, v18, v17, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v179, v244, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v125
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v72, v16, v45, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v46.h, s1
	v_cndmask_b16 v46.h, 0x7fff, v17.h, s4
	v_mov_b16_e32 v17.h, v32.l
	v_mov_b16_e32 v17.l, v18.h
	v_cndmask_b16 v45.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v19, off, off offset:180
	scratch_load_b128 v[4:7], off, off offset:936
	v_cndmask_b16 v46.l, 0x7fff, v72.h, s5
	v_and_b32_e32 v17, 1, v17
	scratch_load_b32 v72, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v178, v182, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v17, v18, v17, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v18, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v126
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v98.h, 0x7fff, v17.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s1, v16, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v51, v51, v27
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v18, v35
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v18, v18, v5, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v19, v18, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v19, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v19, v35
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v19, v4, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v72, v19, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v72, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v186
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v72, v72, v81, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v72, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v72, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v127
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v18, v18
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v72, v72, v80, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v72, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v72.l, v16.h
	v_mov_b16_e32 v72.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v72, v16, v72, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v19, v93
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v18.h
	v_mov_b16_e32 v19.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v98.l, 0x7fff, v72.h, s1
	v_cmp_o_f32_e64 s5, v16, v16
	scratch_load_b32 v72, off, off offset:160 ; 4-byte Folded Reload
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v18, v19, 0x7fff
	v_mov_b16_e32 v18.l, v16.h
	v_mov_b16_e32 v18.h, v32.l
	v_cndmask_b16 v99.h, 0x7fff, v19.h, s4
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v19, off, off offset:164
	scratch_load_b128 v[75:78], off, off offset:920
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v18, v16, v18, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v99.l, 0x7fff, v18.h, s5
	v_mov_b16_e32 v18.h, v32.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v16, v7, v73
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v73, v16, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v73, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v73, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v73, v73, v6, v74
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v74, v73, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v74, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v74, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v74, v74, v83, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v74, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v74, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v16.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v16, v18, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v16, v76, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v19, v16, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v19, off, off offset:364 ; 4-byte Folded Reload
	v_mul_f32_e32 v74, v74, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v74, v74, v82, v73
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v74, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v74, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v73, v112
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v73, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v19, v19, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v19, v75, v72
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v72, v19, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v72, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v74, v74, v186
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v72, v72, v13, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v72, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v72, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v16, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v186
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v72, v72, v12, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v72, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v72.l, v17.h
	v_mov_b16_e32 v72.h, v32.l
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v72, v17, v72, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v19, v129
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v16.h
	v_mov_b16_e32 v19.h, v32.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v68, v66, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v16, v19, 0x7fff
	v_mov_b16_e32 v16.l, v17.h
	v_mov_b16_e32 v16.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v94.h, 0x7fff, v19.h, s4
	v_mov_b16_e32 v19.h, v32.l
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v16, v17, v16, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v17, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v94.l, 0x7fff, v16.h, s5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v35
	v_mul_f32_e32 v35, v73, v35
	scratch_load_b32 v73, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v17, v17, v78, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v73, v17, s2
	scratch_load_b32 v73, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v35, v35, v77, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v73, v35, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v73, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v73, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v73, v73, v15, v17
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v73, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v73, v74, v14, v35
	scratch_load_b32 v74, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v110
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v35, v73, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v35.h, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v35.l, 0x7fff, v72.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v194, v237, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v17.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v73, v130
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v72.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v131
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v72.l, v16.h
	v_cmp_o_f32_e64 s1, v16, v16
	v_mov_b16_e32 v73.h, v32.l
	v_cmp_o_f32_e64 s4, v18, v18
	v_add3_u32 v19, v17, v19, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v193, v239, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v95.h, 0x7fff, v19.h, vcc_lo
	v_mov_b16_e32 v19.h, v32.l
	v_add3_u32 v72, v16, v72, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v17, v133
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.l, v18.h
	v_mov_b16_e32 v17.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v95.l, 0x7fff, v72.h, s1
	v_mov_b16_e32 v73.l, v16.h
	v_cmp_o_f32_e64 s5, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v17, 1, v17
	v_mov_b16_e32 v72.h, v32.l
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v18, v17, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v192, v185, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v73, v16, v73, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v191, v236, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v96.h, 0x7fff, v17.h, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v139
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v134, v177, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v96.l, 0x7fff, v73.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v142
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v73.h, v32.l
	v_mov_b16_e32 v19.l, v18.h
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v146
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v72.l, v16.h
	v_cmp_o_f32_e64 s1, v16, v16
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v17, v17
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v18, v19, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v173, v176, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v72, v16, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v97.h, 0x7fff, v19.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v18, v149
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v17.h
	v_mov_b16_e32 v18.h, v32.l
	scratch_load_b32 v19, off, off offset:148 ; 4-byte Folded Reload
	v_cndmask_b16 v97.l, 0x7fff, v72.h, s1
	scratch_load_b32 v72, off, off offset:144 ; 4-byte Folded Reload
	v_mov_b16_e32 v73.l, v16.h
	v_and_b32_e32 v18, 1, v18
	v_cmp_o_f32_e64 s5, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v172, v175, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v73, v16, v73, 0x7fff
	v_cndmask_b16 v100.h, 0x7fff, v18.h, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v158
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.h, v32.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v171, v170, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v100.l, 0x7fff, v73.h, s5
	scratch_load_b32 v73, off, off offset:140 ; 4-byte Folded Reload
	v_mov_b16_e32 v18.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v18, 1, v18
	v_cmp_o_f32_e64 s1, v16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v17, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v90.h, 0x7fff, v18.h, vcc_lo
	v_mov_b16_e32 v18.h, v32.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v17, v17, v5, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v19, v17, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v19, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v19, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v19, v4, v72
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v72, v19, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v72, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v72, v72, v81, v17
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v72, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v72, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v17, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v64
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v72, v72, v80, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v72, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v72.l, v16.h
	v_mov_b16_e32 v72.h, v32.l
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v72, v16, v72, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v19, v204
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v17.h
	v_mov_b16_e32 v19.h, v32.l
	v_cndmask_b16 v90.l, 0x7fff, v72.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s5, v16, v16
	scratch_load_b32 v72, off, off offset:128 ; 4-byte Folded Reload
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	v_mov_b16_e32 v17.l, v16.h
	v_mov_b16_e32 v17.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v91.h, 0x7fff, v19.h, s4
	scratch_load_b32 v19, off, off offset:132 ; 4-byte Folded Reload
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v16, v17, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v91.l, 0x7fff, v17.h, s5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v16, v7, v73
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v73, v16, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v73, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v73, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v73, v73, v6, v74
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v74, v73, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v74, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v74, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v74, v74, v83, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v74, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v74, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v16.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v16, v18, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v16, v76, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v19, v16, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v19, off, off offset:324 ; 4-byte Folded Reload
	v_mul_f32_e32 v74, v74, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v74, v74, v82, v73
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v74, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v74, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v73, v207
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v73, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v19, v19, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v19, v75, v72
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v72, v19, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v72, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v72, v72, v13, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v72, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v72, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v16, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v64
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v72, v72, v12, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v72, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v72.l, v17.h
	v_mov_b16_e32 v72.h, v32.l
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v17, v72, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v19, v108
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v16.h
	v_mov_b16_e32 v19.h, v32.l
	v_cmp_o_f32_e64 s5, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v16, v19, 0x7fff
	v_mov_b16_e32 v16.l, v17.h
	v_mov_b16_e32 v16.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v17, v16, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v17, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v34
	v_mul_f32_e32 v34, v73, v34
	scratch_load_b32 v73, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v17, v17, v78, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v73, v17, s2
	scratch_load_b32 v73, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v77, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v73, v34, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v73, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v73, v64
	v_mul_f32_e32 v64, v74, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v73, v73, v15, v17
	v_fma_f32 v64, v64, v14, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v73, s3
	v_cndmask_b32_e64 v73, v34, v64, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v64.h, 0x7fff, v19.h, s4
	v_mov_b16_e32 v19.h, v32.l
	v_cndmask_b16 v64.l, 0x7fff, v16.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v107
	v_mul_f32_e32 v16, v73, v106
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v34.h, 0x7fff, v18.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v60, v183, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v34.l, 0x7fff, v72.h, s1
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_cmp_o_f32_e64 s1, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v18, v18, v205 :: v_dual_and_b32 v19, 1, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v17, v19, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v59, v117, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.l, v16.h
	v_mov_b16_e32 v59.h, v32.l
	v_and_b32_e32 v59, 1, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v59, v16, v59, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v17, v203
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v58, v116, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v58.l, v18.h
	v_mov_b16_e32 v58.h, v32.l
	v_cmp_o_f32_e64 s5, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v202
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v58, 1, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v58, v18, v58, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v57, v252, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v57.l, v16.h
	v_mov_b16_e32 v57.h, v32.l
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v57, 1, v57
	v_add3_u32 v60, v16, v57, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v18, v160
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v17.h
	v_mov_b16_e32 v18.h, v32.l
	v_cndmask_b16 v57.h, 0x7fff, v19.h, vcc_lo
	v_mov_b16_e32 v19.h, v32.l
	v_mov_b16_e32 v19.l, v16.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v18, 1, v18
	v_cndmask_b16 v57.l, 0x7fff, v59.h, s1
	v_cmp_o_f32_e64 s1, v16, v16
	v_and_b32_e32 v19, 1, v19
	v_cndmask_b16 v58.l, 0x7fff, v60.h, s5
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v115, v169, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v60.h, v32.l
	v_add3_u32 v19, v16, v19, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v63, v168, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v59.h, 0x7fff, v18.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v155
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v62, v167, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v59.l, 0x7fff, v19.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.h, v32.l
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v18, v18, v147
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v60.l, v16.h
	v_cmp_o_f32_e64 s1, v16, v16
	v_and_b32_e32 v19, 1, v19
	scratch_load_b32 v62, off, off offset:64 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s4, v18, v18
	v_and_b32_e32 v60, 1, v60
	v_add3_u32 v19, v17, v19, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v61, v247, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v61, v16, v60, 0x7fff
	scratch_load_b32 v60, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v17, v145
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.l, v18.h
	v_mov_b16_e32 v17.h, v32.l
	v_cmp_o_f32_e64 s5, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v18, v17, 0x7fff
	v_mov_b16_e32 v18.l, v16.h
	v_mov_b16_e32 v18.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v16, v18, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v16, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v61.l, 0x7fff, v18.h, s5
	v_mov_b16_e32 v18.h, v32.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v16, v16, v5, v60
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v60, v16, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v60, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v60, v60, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v60, v60, v4, v62
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v62, v60, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v81, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v62, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v16.h
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v16, v18, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v80, v60
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v60, v62, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v60.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:296
	scratch_load_b32 v19, off, off offset:60
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v60.l, 0x7fff, v61.h, s1
	v_cndmask_b16 v61.h, 0x7fff, v17.h, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v62, v141
	scratch_load_b32 v62, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v16, v16, v33
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, v16, v7, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v19, v16, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v19, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v19, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v19, v6, v62
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v62, v19, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v83, v16
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v62, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v16, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v82, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v62, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.l, v17.h
	v_mov_b16_e32 v62.h, v32.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v19, v0
	scratch_load_b32 v19, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v62, 1, v62
	v_cmp_o_f32_e64 s5, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v63, v17, v62, 0x7fff
	v_mov_b16_e32 v17.l, v16.h
	v_mov_b16_e32 v17.h, v32.l
	scratch_load_b32 v62, off, off offset:48 ; 4-byte Folded Reload
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v16, v17, 0x7fff
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e32 v16.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v0, v16, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v63.l, 0x7fff, v16.h, s5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v0, v0, v76, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v19, v0, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v19, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v19, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v19, v75, v62
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v62, v19, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v13, v0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v62, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v62, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v17.l, v0.h
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v49
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v62, v62, v12, v19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v62, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v62.l, 0x7fff, v63.h, s1
	v_cndmask_b16 v63.h, 0x7fff, v17.h, s4
	v_mov_b16_e32 v17.h, v32.l
	v_cndmask_b16 v62.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v19, v103
	scratch_load_b32 v19, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v17, 1, v17
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v18, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v16, v16
	v_add3_u32 v17, v0, v17, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v0, v0, v78, v19
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v19, v0, s2
	scratch_load_b32 v19, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v18, v18, v33
	scratch_load_b32 v33, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v18, v18, v77, v19
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v19, v18, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v19, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v19, v49
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v19, v15, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v19, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v33, v14, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v33.h, 0x7fff, v17.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v24, v187, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v41
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v102
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v19, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v16.h
	v_mov_b16_e32 v19.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v19, v16, v19, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v18, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v0.h
	v_mov_b16_e32 v18.h, v32.l
	v_cndmask_b16 v33.l, 0x7fff, v19.h, s1
	v_mov_b16_e32 v19.h, v32.l
	v_cmp_o_f32_e64 s5, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v0, v18, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v26, v54, s3
	v_cndmask_b32_e64 v26, v28, v53, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v28.l, v16.h
	v_mov_b16_e32 v28.h, v32.l
	v_cndmask_b16 v49.h, 0x7fff, v18.h, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v105
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v25, v188, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:400
	scratch_load_b32 v54, off, off offset:20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v28, 1, v28
	v_mov_b16_e32 v19.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v28, v16, v28, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v26, v71
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v19, 1, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v29, v48, s3
	scratch_load_b32 v48, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v49.l, 0x7fff, v28.h, s5
	v_cmp_o_f32_e64 s1, v16, v16
	v_add3_u32 v19, v0, v19, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v17, v69 :: v_dual_mul_f32 v17, v18, v70
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v16.h
	v_mov_b16_e32 v18.h, v32.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v26, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v16, v18, 0x7fff
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e32 v16.h, v32.l
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v16, v0, v16, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v19.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v17.h
	v_mov_b16_e32 v24.h, v32.l
	v_cndmask_b16 v0.l, 0x7fff, v18.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v31, v56, s3
	v_cndmask_b32_e64 v19, v47, v55, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v17, v17
	v_and_b32_e32 v24, 1, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v18, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v19, v1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v17, v24, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v40, v42, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v3.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v41
	scratch_load_b32 v47, off, off offset:32 ; 4-byte Folded Reload
	v_mul_f32_e32 v1, 0xbfb8aa3b, v17
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v1.h, 0x7fff, v16.h, s4
	v_cndmask_b16 v1.l, 0x7fff, v24.h, s1
	v_mov_b16_e32 v24.h, v32.l
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v18, v18, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v17
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v31, v3, v24, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s5
	v_exp_f32_e32 v16, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v30, v50, s3
	scratch_load_b32 v50, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v24, v67
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v16, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v16, null, v18, v18, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.l, v40.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v25, v16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v3, v3, v17
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v16, v25, 1.0
	v_fmac_f32_e32 v25, v29, v25
	v_div_scale_f32 v29, vcc_lo, v41, v18, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v28, v30, 1.0
	v_mul_f32_e32 v26, v29, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v30, v24, v30
	v_fma_f32 v24, -v16, v26, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v26, v24, v25
	v_div_scale_f32 v24, s4, v17, v3, v17
	v_fma_f32 v16, -v16, v26, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v42, v24, v30
	v_div_fmas_f32 v16, v16, v25, v26
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v25, -v28, v42, v24
	s_mov_b32 vcc_lo, s4
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	scratch_load_b32 v26, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v40, v40
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v16, v18, v41
	v_fmac_f32_e32 v42, v25, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v25.l, v19.h
	v_mov_b16_e32 v25.h, v32.l
	v_mov_b16_e32 v41.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v24, -v28, v42, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v39, 1, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v24, v30, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v30, v19, v39, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v3, v42, v3, v17
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v31.l, 0x7fff, v30.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	v_mul_f32_e32 v19, 0xbfb8aa3b, v36
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v30, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v19, v40, v38, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:260
	scratch_load_b32 v29, off, off offset:248
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v2.h
	v_mov_b16_e32 v40.h, v32.l
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v2, v40, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(8)
	v_mul_f32_e32 v53, v53, v27
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_waitcnt vmcnt(3)
	v_mul_lo_u32 v26, s27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[24:25], null, s27, 48, v[26:27]
	v_lshl_add_u32 v28, s27, 5, v26
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v39, v30, v32
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v5, v39, v5, v48
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v38, v38, v32
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v43, 1, v29
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v29, s27, 4, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v48, v5, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v4, v38, v4, v47
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v48, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 448 18 is_stmt 1              ; generate_amdgcn.py:448:18
	v_add3_u32 v25, s33, s26, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v47, v4, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v47, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v30, 0x80, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v37
	v_exp_f32_e32 v39, v39
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v26, v25, v26, 1
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v43
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v38, v38, v37
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v48, v48, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v48, v48, v80, v4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v47, v27
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v48, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v47, v81, v5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	scratch_load_b32 v48, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v4, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v43, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v39, v39, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v19.l, 0x7fff, v40.h, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v47, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v3.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v16
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v16, v18
	v_div_scale_f32 v43, vcc_lo, v37, v38, v37
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v40, 1, v41
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v41, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v39, v39, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v2.h, v32.l
	v_add3_u32 v40, v3, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v4, v17
	v_fma_f32 v42, -v18, v16, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v16, v42, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v5, v2, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v17, v4, 1.0
	v_fmac_f32_e32 v4, v42, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v43, v16
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v47, v47, v32
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v47, v6, v50
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v41, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v50, v6, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v50, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v7, v41, v7, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, s1, v36, v39, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v48, v7, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v18, v42, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v47, v41, v4
	v_fmac_f32_e32 v42, v48, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v17, v47, v41
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v48, v51, v82, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v18, v42, v43
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v43, off, off offset:984 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v47, v52, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v48, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v16, v18, v16, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v17, -v17, v47, v41
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v16, v38, v37
	scratch_load_b32 v38, off, off          ; 4-byte Folded Reload
	v_div_fmas_f32 v4, v17, v4, v47
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v17, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v4, v4, v39, v36
	scratch_load_b32 v36, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v2.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v39, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v6, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v2.l, 0x7fff, v40.h, vcc_lo
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v50, v50, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v9, v50, v9, v54
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v50, v53, v83, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v54, v9, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v7, v7, v50, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v7, v16
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v16, off, off offset:980 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v43, v43, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v18, v43, v21, v9
	scratch_load_b32 v21, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v42, v42, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v18, s3
	scratch_load_b32 v18, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v17, v17, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v5.l, v7.h
	v_mov_b16_e32 v5.h, v32.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v39, v39, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v5, v7, v5, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v16, v16, v27
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v17, v8, v18
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v18, v8, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v18, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v9
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v6, v16, v20, v8
	scratch_load_b32 v20, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.l, v4.h
	v_mov_b16_e32 v16.h, v32.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v8, v6, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v16, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v17, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v4, v3, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v7, v7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v16, v8
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v16, off, off offset:972 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s1
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v7, 1.0, v8
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v18, v18, v32
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v10, v18, v10, v20
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v18, off, off offset:968 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v20, v10, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v20, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v17, v17, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v11, v17, v11, v21
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v21, v11, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v21, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v6 :: v_dual_mul_f32 v16, v16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v17, v17
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v8, v16, v23, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v11, v8, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v18, v18, v27
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v16, v18, v22, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v8
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v7, v7, v9
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v20, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v16, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v11, v18
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v20, v76, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v10
	v_ldexp_f32 v16, v17, v16
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v21, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v23
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v8
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v36, v20, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v17, v21, v75, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v18, v11, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, s4
	v_exp_f32_e32 v22, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, s5, v9, v7, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v11, v21, v11
	v_div_scale_f32 v21, null, v16, v16, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v10
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v38, v17, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v38, v36, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v37, v21
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v22, v40
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v18, v38, v36
	v_div_scale_f32 v40, s4, v6, v16, v6
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v13, v39, v13, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v38, v43, v11
	v_fma_f32 v47, -v21, v37, 1.0
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v23, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v22, v22, v8
	v_fmac_f32_e32 v37, v47, v37
	v_fma_f32 v18, -v18, v38, v36
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v20, v13, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v39, v41
	scratch_load_b32 v47, off, off offset:116 ; 4-byte Folded Reload
	v_mul_f32_e32 v36, v40, v37
	v_div_fmas_f32 v11, v18, v11, v38
	s_mov_b32 vcc_lo, s4
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v12, v42, v12, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v21, v36, v40
	v_div_fixup_f32 v7, v11, v7, v9
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v11, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v9, -v41, v39, 1.0
	v_div_scale_f32 v42, null, v23, v23, v10
	v_fmac_f32_e32 v36, v18, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v17, v12, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v39, v9, v39
	v_div_scale_f32 v9, s1, v8, v22, v8
	v_fma_f32 v20, -v21, v36, v40
	scratch_load_b32 v40, off, off offset:112 ; 4-byte Folded Reload
	v_rcp_f32_e32 v43, v42
	v_mul_f32_e32 v21, v9, v39
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v13, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v20, v20, v37, v36
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.h, v32.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v41, v21, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v7, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v20, v16, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v20, v91, v64, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v17, -v42, v43, 1.0
	v_fmac_f32_e32 v21, v36, v39
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:352
	scratch_load_b32 v18, off, off offset:228
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v6, v12, v6 :: v_dual_fmac_f32 v43, v17, v43
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, s5, v10, v23, v10
	v_fma_f32 v9, -v41, v21, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v38, v17, v43
	v_div_fmas_f32 v9, v9, v39, v21
	s_mov_b32 vcc_lo, s5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v39, v19, v1, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v42, v38, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v1, v1, v19, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v9, v22, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v19, 0x7632
	v_cndmask_b32_e64 v21, v57, v34, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v38, v37, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v37, v63, v49, s0
	v_cndmask_b32_e64 v22, v34, v57, s0
	v_cndmask_b32_e64 v34, v59, v61, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v16, -v42, v38, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v17, v97, v90, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v16, v16, v43, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cndmask_b32_e64 v38, v31, v0, s0
	v_cndmask_b32_e64 v0, v0, v31, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v9, v16, v23, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v6.h
	v_mov_b16_e32 v10.h, v32.l
	v_cndmask_b16 v5.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b32_e64 v16, v90, v97, s0
	v_cndmask_b32_e64 v23, v60, v58, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v4, v6, v10, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v11, v11, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v11, v11, v78, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v47, v11, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v18, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v18, v18, v77, v40
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v40, v18, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v40, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v40, v27
	v_mul_f32_e32 v27, v36, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v36, v49, v63, s0
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v14, v40, v14, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v15, v27, v15, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v27, v58, v60, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v18, v14, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v11, v11, v15, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v15, v96, v100, s0
	v_cndmask_b32_e64 v14, v100, v96, s0
	v_cndmask_b32_e64 v18, v64, v91, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v9, v12, v9 :: v_dual_mul_f32 v8, v11, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v7.h
	v_mov_b16_e32 v11.h, v32.l
	v_mov_b16_e32 v12.h, v32.l
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v9.h
	v_mov_b16_e32 v12.l, v8.h
	v_cmp_o_f32_e64 s3, v8, v8
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s4, v9, v9
	v_and_b32_e32 v10, 1, v13
	v_and_b32_e32 v12, 1, v12
	v_cndmask_b32_e64 v13, v35, v95, s0
	v_add3_u32 v11, v7, v11, 0x7fff
	v_cndmask_b32_e64 v32, v61, v59, s0
	v_add3_u32 v6, v9, v10, 0x7fff
	v_add3_u32 v7, v8, v12, 0x7fff
	v_cndmask_b32_e64 v9, v45, v98, s0
	v_cndmask_b16 v3.h, 0x7fff, v11.h, s1
	s_mov_b32 s1, 0x76543210
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s4
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s3
	v_cndmask_b32_e64 v7, v44, v46, s0
	v_cndmask_b32_e64 v40, v3, v2, s0
	v_cndmask_b32_e64 v2, v2, v3, s0
	v_mov_b32_e32 v3, 0x5410
	v_cndmask_b32_e64 v41, v4, v5, s0
	v_cndmask_b32_e64 v4, v5, v4, s0
	v_permlanex16_b32 v5, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x3276, v19, s0
	v_cndmask_b32_e64 v3, 0x1054, v3, s0
	v_cndmask_b32_e64 v12, v95, v35, s0
	v_cndmask_b32_e64 v35, v33, v62, s0
	v_cndmask_b32_e64 v33, v62, v33, s0
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v3, v3, 8, v3
	v_cndmask_b32_e64 v11, v99, v94, s0
	v_cndmask_b32_e64 v6, v46, v44, s0
	v_cndmask_b32_e64 v8, v98, v45, s0
	v_and_b32_e32 v7, 0x760076, v7
	v_and_b32_e32 v3, 0x540054, v3
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v33, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v37, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v3, v3, 4, v3
	v_cndmask_b32_e64 v10, v94, v99, s0
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v42, 0x7060706, v7
	v_and_b32_e32 v37, 0x5040504, v3
	v_permlanex16_b32 v15, v15, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v20, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v22, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v27, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v34, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v5, v6, v37
	v_perm_b32 v1, v5, v6, v42
	v_perm_b32 v2, v9, v8, v37
	v_perm_b32 v3, v9, v8, v42
	v_permlanex16_b32 v45, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v11, v10, v37
	v_perm_b32 v5, v11, v10, v42
	v_perm_b32 v6, v13, v12, v37
	v_perm_b32 v7, v13, v12, v42
	v_perm_b32 v8, v15, v14, v37
	v_perm_b32 v9, v15, v14, v42
	v_perm_b32 v10, v17, v16, v37
	v_perm_b32 v11, v17, v16, v42
	v_perm_b32 v12, v19, v18, v37
	v_perm_b32 v13, v19, v18, v42
	v_perm_b32 v18, v27, v32, v37
	v_perm_b32 v19, v27, v32, v42
	v_add_lshl_u32 v27, v25, v29, 1
	v_perm_b32 v14, v20, v21, v37
	v_perm_b32 v15, v20, v21, v42
	s_clause 0x2
	buffer_store_b128 v[0:3], v26, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v26, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v27, s[24:27], 0 offen
	v_add_lshl_u32 v0, v30, v29, 1
	v_perm_b32 v16, v22, v23, v37
	v_perm_b32 v17, v22, v23, v42
	v_add_lshl_u32 v1, v25, v28, 1
	v_perm_b32 v20, v31, v35, v37
	v_perm_b32 v21, v31, v35, v42
	v_perm_b32 v22, v33, v36, v37
	v_perm_b32 v23, v33, v36, v42
	v_add_lshl_u32 v2, v30, v28, 1
	v_perm_b32 v31, v34, v38, v37
	v_perm_b32 v32, v34, v38, v42
	v_perm_b32 v33, v43, v39, v37
	v_perm_b32 v34, v43, v39, v42
	v_add_lshl_u32 v3, v25, v24, 1
	v_perm_b32 v35, v44, v40, v37
	v_perm_b32 v36, v44, v40, v42
	v_perm_b32 v37, v45, v41, v37
	v_perm_b32 v38, v45, v41, v42
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1012
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 1012
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 40992
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 1012
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 1012
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 327
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
