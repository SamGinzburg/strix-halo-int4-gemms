	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s14, s[0:1], 0x38
	v_mov_b32_e32 v92, v0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v98, 3, v92
	v_and_b32_e32 v1, 56, v98
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v93, 0xf0, v92
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v94, 15, v92
	v_or_b32_e32 v100, 0x3f0, v92
	v_or_b32_e32 v101, 0x7f0, v92
	v_lshlrev_b32_e32 v96, 5, v92
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v2, 3, v93
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v56, 0, v98
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
	s_lshl_b32 s12, s4, 2
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshl_or_b32 v102, v94, 9, v2
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v103, 0x90, v102
	v_add_nc_u32_e32 v57, 0, v102
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v0, s5
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v104, 0x110, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v58, 0, v103
	v_add_nc_u32_e32 v59, 0, v104
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
	s_xor_b32 s8, s2, s12
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
	v_rcp_iflag_f32_e32 v0, s18
	v_readfirstlane_b32 s18, v0
	.loc	1 358 19                        ; generate_amdgcn.py:358:19
	v_lshrrev_b32_e32 v0, 3, v92
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s6, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_abs_i32 s7, s2
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_mul_lo_u32 v0, s26, v0
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
	v_mul_lo_u32 v3, s35, v2
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
	v_lshl_add_u32 v95, v94, 4, v3
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s12, 8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s13, s14, 31
.Ltmp15:
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add3_u32 v99, v0, v1, s34
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_add3_u32 v0, s33, s3, v95
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
	v_add_nc_u32_e32 v3, s35, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v0, s2
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s14, 63
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	s_mul_i32 s12, s26, s30
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[6:9], v4, s[20:23], 0 offen
	buffer_load_b128 v[10:13], v3, s[20:23], 0 offen
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v3, s27, v0
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	v_lshl_add_u32 v0, s27, 6, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_add_nc_u32_e32 v1, s12, v99
	s_lshl_b32 s15, s26, 5
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v4, s35, v3
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 378 34 is_stmt 1              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v22, s35, v0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 372 34 is_stmt 0              ; generate_amdgcn.py:372:34
	v_add3_u32 v5, s12, s15, v99
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_lshlrev_b32_e32 v2, 4, v92
	s_clause 0x1
	buffer_load_b128 v[14:17], v3, s[20:23], 0 offen
	buffer_load_b128 v[18:21], v4, s[20:23], 0 offen
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v3, 0x80000000, v0, s3
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v4, 0x80000000, v22, s3
	s_clause 0x1
	buffer_load_b128 v[22:25], v3, s[20:23], 0 offen
	buffer_load_b128 v[26:29], v4, s[20:23], 0 offen
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v3, s35, v0
	.loc	1 384 35 is_stmt 0              ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	v_cndmask_b32_e64 v38, 0x80000000, v5, s3
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 32, v94
	v_or_b32_e32 v5, 48, v94
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	s_clause 0x1
	buffer_load_b128 v[30:33], v0, s[20:23], 0 offen
	buffer_load_b128 v[34:37], v3, s[20:23], 0 offen
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_clause 0x1
	buffer_load_b64 v[52:53], v1, s[4:7], 0 offen
	buffer_load_b64 v[54:55], v38, s[4:7], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v3, 16, v94
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x5f
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
	v_lshrrev_b32_e32 v47, 24, v11
	v_and_b16 v8.l, 0xff, v38.l
	v_lshrrev_b32_e32 v48, 8, v38
	v_lshrrev_b32_e32 v49, 24, v38
	v_and_b16 v8.h, 0xff, v38.h
	v_lshrrev_b32_e32 v38, 8, v12
	v_lshrrev_b32_e32 v50, 24, v12
	v_and_b16 v10.l, 0xff, v39.l
	v_lshrrev_b32_e32 v51, 8, v39
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
	v_perm_b32 v67, v20, v16, 0x7030602
	v_perm_b32 v68, v21, v17, 0x5010400
	v_perm_b32 v69, v21, v17, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(4)
	v_perm_b32 v70, v26, v22, 0x5010400
	v_perm_b32 v71, v26, v22, 0x7030602
	v_perm_b32 v72, v27, v23, 0x5010400
	v_perm_b32 v73, v27, v23, 0x7030602
	v_perm_b32 v74, v28, v24, 0x5010400
	v_perm_b32 v75, v28, v24, 0x7030602
	v_perm_b32 v76, v29, v25, 0x5010400
	v_perm_b32 v77, v29, v25, 0x7030602
	v_and_b16 v7.l, 0xff, v11.l
	v_and_b16 v7.h, 0xff, v11.h
	v_and_b16 v9.l, 0xff, v12.l
	v_and_b16 v9.h, 0xff, v12.h
	v_and_b16 v11.l, 0xff, v13.l
	v_and_b16 v11.h, 0xff, v13.h
	v_lshlrev_b16 v12.l, 8, v40.l
	v_lshlrev_b16 v12.h, 8, v41.l
	v_lshlrev_b16 v13.l, 8, v42.l
	v_lshlrev_b16 v13.h, 8, v43.l
	v_lshlrev_b16 v14.l, 8, v44.l
	v_lshlrev_b16 v14.h, 8, v45.l
	v_lshlrev_b16 v15.l, 8, v46.l
	v_lshlrev_b16 v15.h, 8, v47.l
	v_lshlrev_b16 v16.l, 8, v48.l
	v_lshlrev_b16 v16.h, 8, v49.l
	v_lshlrev_b16 v17.l, 8, v38.l
	v_lshlrev_b16 v17.h, 8, v50.l
	v_lshlrev_b16 v18.l, 8, v51.l
	v_lshlrev_b16 v18.h, 8, v60.l
	v_lshlrev_b16 v19.l, 8, v39.l
	v_lshlrev_b16 v19.h, 8, v61.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v20.l, 0xff, v62.l
	v_lshrrev_b32_e32 v44, 8, v62
	v_lshrrev_b32_e32 v45, 24, v62
	v_and_b16 v20.h, 0xff, v62.h
	v_and_b16 v21.l, 0xff, v63.l
	v_lshrrev_b32_e32 v46, 8, v63
	v_lshrrev_b32_e32 v47, 24, v63
	v_and_b16 v21.h, 0xff, v63.h
	v_and_b16 v22.l, 0xff, v64.l
	v_lshrrev_b32_e32 v48, 8, v64
	v_lshrrev_b32_e32 v49, 24, v64
	v_and_b16 v22.h, 0xff, v64.h
	v_and_b16 v23.l, 0xff, v65.l
	v_lshrrev_b32_e32 v50, 8, v65
	v_lshrrev_b32_e32 v51, 24, v65
	v_and_b16 v23.h, 0xff, v65.h
	v_and_b16 v24.l, 0xff, v66.l
	v_lshrrev_b32_e32 v60, 8, v66
	v_lshrrev_b32_e32 v61, 24, v66
	v_and_b16 v24.h, 0xff, v66.h
	v_and_b16 v25.l, 0xff, v67.l
	v_lshrrev_b32_e32 v62, 8, v67
	v_lshrrev_b32_e32 v63, 24, v67
	v_and_b16 v25.h, 0xff, v67.h
	v_and_b16 v26.l, 0xff, v68.l
	v_lshrrev_b32_e32 v64, 8, v68
	v_lshrrev_b32_e32 v65, 24, v68
	v_and_b16 v26.h, 0xff, v68.h
	v_and_b16 v27.l, 0xff, v69.l
	v_lshrrev_b32_e32 v66, 8, v69
	v_lshrrev_b32_e32 v67, 24, v69
	v_and_b16 v27.h, 0xff, v69.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b16 v28.l, 0xff, v70.l
	v_lshrrev_b32_e32 v68, 8, v70
	v_lshrrev_b32_e32 v69, 24, v70
	v_and_b16 v28.h, 0xff, v70.h
	v_and_b16 v29.l, 0xff, v71.l
	v_lshrrev_b32_e32 v70, 8, v71
	v_lshrrev_b32_e32 v78, 24, v71
	v_and_b16 v29.h, 0xff, v71.h
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
	v_and_b16 v41.l, 0xff, v75.l
	v_lshrrev_b32_e32 v74, 8, v75
	v_lshrrev_b32_e32 v82, 24, v75
	v_and_b16 v41.h, 0xff, v75.h
	v_and_b16 v42.l, 0xff, v76.l
	v_lshrrev_b32_e32 v75, 8, v76
	v_lshrrev_b32_e32 v83, 24, v76
	v_and_b16 v42.h, 0xff, v76.h
	v_and_b16 v43.l, 0xff, v77.l
	v_lshrrev_b32_e32 v76, 8, v77
	v_lshrrev_b32_e32 v84, 24, v77
	v_and_b16 v43.h, 0xff, v77.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(2)
	v_perm_b32 v77, v34, v30, 0x5010400
	v_perm_b32 v85, v34, v30, 0x7030602
	v_perm_b32 v86, v35, v31, 0x5010400
	v_perm_b32 v87, v35, v31, 0x7030602
	v_perm_b32 v88, v36, v32, 0x5010400
	v_perm_b32 v89, v36, v32, 0x7030602
	v_perm_b32 v90, v37, v33, 0x5010400
	v_perm_b32 v91, v37, v33, 0x7030602
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v0.l, v0.l, v12.l
	v_or_b16 v1.l, v1.l, v13.l
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v8.h, v8.h, v16.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.l, 8, v44.l
	v_lshlrev_b16 v13.l, 8, v46.l
	v_lshlrev_b16 v16.l, 8, v60.l
	v_lshlrev_b16 v16.h, 8, v61.l
	v_lshrrev_b32_e32 v60, 8, v77
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v0.h, v0.h, v12.h
	v_or_b16 v1.h, v1.h, v13.h
	v_or_b16 v6.h, v6.h, v14.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.h, 8, v45.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v13.h, 8, v47.l
	v_lshlrev_b16 v14.l, 8, v48.l
	v_lshlrev_b16 v14.h, 8, v49.l
	v_lshlrev_b16 v15.l, 8, v50.l
	v_lshlrev_b16 v15.h, 8, v51.l
	v_lshlrev_b16 v17.l, 8, v62.l
	v_lshlrev_b16 v17.h, 8, v63.l
	v_lshlrev_b16 v18.l, 8, v64.l
	v_lshlrev_b16 v18.h, 8, v65.l
	v_lshlrev_b16 v19.l, 8, v66.l
	v_lshlrev_b16 v19.h, 8, v67.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v30.l, 8, v68.l
	v_lshlrev_b16 v30.h, 8, v69.l
	v_lshlrev_b16 v31.l, 8, v70.l
	v_lshlrev_b16 v31.h, 8, v78.l
	v_lshlrev_b16 v32.l, 8, v71.l
	v_lshlrev_b16 v33.l, 8, v72.l
	v_lshlrev_b16 v34.l, 8, v73.l
	v_lshlrev_b16 v35.l, 8, v74.l
	v_lshlrev_b16 v36.l, 8, v75.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v44.l, 0xff, v77.l
	v_lshrrev_b32_e32 v61, 24, v77
	v_lshrrev_b32_e32 v62, 8, v85
	v_lshrrev_b32_e32 v63, 24, v85
	v_lshrrev_b32_e32 v64, 8, v86
	v_lshrrev_b32_e32 v65, 24, v86
	v_lshrrev_b32_e32 v66, 8, v87
	v_lshrrev_b32_e32 v67, 24, v87
	v_lshrrev_b32_e32 v68, 8, v88
	v_lshrrev_b32_e32 v69, 24, v88
	v_lshrrev_b32_e32 v70, 8, v89
	v_lshrrev_b32_e32 v71, 24, v89
	v_lshrrev_b32_e32 v72, 8, v90
	v_lshrrev_b32_e32 v73, 24, v90
	v_lshrrev_b32_e32 v74, 8, v91
	v_lshrrev_b32_e32 v75, 24, v91
	v_or_b16 v12.l, v20.l, v12.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v57, v0
	ds_store_b16_d16_hi v57, v0 offset:32
	ds_store_b16 v57, v1 offset:64
	ds_store_b16_d16_hi v57, v1 offset:96
	ds_store_b16_d16_hi v58, v6 offset:32
	ds_store_b16 v58, v7 offset:64
	ds_store_b16_d16_hi v58, v7 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v0.h, v21.l, v13.l
	v_or_b16 v13.l, v24.h, v16.h
	v_lshlrev_b16 v24.h, 8, v60.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v34.h, 8, v81.l
	v_lshlrev_b16 v32.h, 8, v79.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v0.l, v20.h, v12.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v33.h, 8, v80.l
	v_lshlrev_b16 v35.h, 8, v82.l
	v_lshlrev_b16 v36.h, 8, v83.l
	v_lshlrev_b16 v37.l, 8, v76.l
	v_lshlrev_b16 v37.h, 8, v84.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_and_b16 v44.h, 0xff, v77.h
	v_and_b16 v45.l, 0xff, v85.l
	v_and_b16 v45.h, 0xff, v85.h
	v_and_b16 v46.l, 0xff, v86.l
	v_and_b16 v46.h, 0xff, v86.h
	v_and_b16 v47.l, 0xff, v87.l
	v_and_b16 v47.h, 0xff, v87.h
	v_and_b16 v48.l, 0xff, v88.l
	v_and_b16 v48.h, 0xff, v88.h
	v_and_b16 v49.l, 0xff, v89.l
	v_and_b16 v49.h, 0xff, v89.h
	v_and_b16 v50.l, 0xff, v90.l
	v_and_b16 v50.h, 0xff, v90.h
	v_and_b16 v51.l, 0xff, v91.l
	v_and_b16 v51.h, 0xff, v91.h
	v_or_b16 v1.l, v21.h, v13.h
	v_or_b16 v1.h, v22.l, v14.l
	v_or_b16 v6.h, v22.h, v14.h
	v_or_b16 v7.l, v23.l, v15.l
	v_or_b16 v7.h, v23.h, v15.h
	v_or_b16 v12.h, v24.l, v16.l
	v_or_b16 v13.h, v25.l, v17.l
	v_or_b16 v14.l, v25.h, v17.h
	v_or_b16 v14.h, v26.l, v18.l
	v_or_b16 v15.l, v26.h, v18.h
	v_or_b16 v15.h, v27.l, v19.l
	v_or_b16 v16.l, v27.h, v19.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v16.h, v28.l, v30.l
	v_or_b16 v17.l, v28.h, v30.h
	v_or_b16 v17.h, v29.l, v31.l
	v_or_b16 v18.l, v29.h, v31.h
	v_or_b16 v18.h, v38.l, v32.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v25.l, 8, v61.l
	v_lshlrev_b16 v25.h, 8, v62.l
	v_lshlrev_b16 v26.l, 8, v63.l
	v_lshlrev_b16 v26.h, 8, v64.l
	v_lshlrev_b16 v27.l, 8, v65.l
	v_lshlrev_b16 v27.h, 8, v66.l
	v_lshlrev_b16 v28.l, 8, v67.l
	v_lshlrev_b16 v28.h, 8, v68.l
	v_lshlrev_b16 v29.l, 8, v69.l
	v_lshlrev_b16 v29.h, 8, v70.l
	v_lshlrev_b16 v30.l, 8, v71.l
	v_lshlrev_b16 v30.h, 8, v72.l
	v_lshlrev_b16 v31.l, 8, v73.l
	v_lshlrev_b16 v31.h, 8, v74.l
	v_lshlrev_b16 v32.l, 8, v75.l
	ds_store_b16 v57, v12 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v58, v6
	ds_store_b16 v59, v8
	ds_store_b16_d16_hi v59, v8 offset:32
	ds_store_b16 v59, v9 offset:64
	ds_store_b16_d16_hi v59, v9 offset:96
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v56, v[52:53] offset:32768
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v57, v0 offset:16448
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16 v57, v10 offset:384
	ds_store_b16_d16_hi v57, v10 offset:416
	ds_store_b16 v57, v11 offset:448
	ds_store_b16_d16_hi v57, v11 offset:480
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v57, v0 offset:16416
	ds_store_b16 v57, v1 offset:16480
	ds_store_b16_d16_hi v58, v1 offset:16384
	ds_store_b16_d16_hi v58, v6 offset:16416
	ds_store_b16 v58, v7 offset:16448
	ds_store_b16_d16_hi v58, v7 offset:16480
	ds_store_b16_d16_hi v59, v12 offset:16384
	ds_store_b16 v59, v13 offset:16416
	ds_store_b16_d16_hi v59, v13 offset:16448
	ds_store_b16 v59, v14 offset:16480
	ds_store_b16_d16_hi v57, v14 offset:16768
	ds_store_b16 v57, v15 offset:16800
	ds_store_b16_d16_hi v57, v15 offset:16832
	ds_store_b16 v57, v16 offset:16864
	v_or_b16 v0.l, v44.l, v24.h
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v20.h, v40.l, v34.l
	v_or_b16 v21.l, v40.h, v34.h
	v_or_b16 v19.l, v38.h, v32.h
	v_or_b16 v21.h, v41.l, v35.l
	v_or_b16 v19.h, v39.l, v33.l
	v_or_b16 v20.l, v39.h, v33.h
	v_or_b16 v22.l, v41.h, v35.h
	v_or_b16 v22.h, v42.l, v36.l
	v_or_b16 v23.l, v42.h, v36.h
	v_or_b16 v23.h, v43.l, v37.l
	v_or_b16 v24.l, v43.h, v37.h
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v57, v16 offset:8192
	ds_store_b16 v57, v17 offset:8224
	ds_store_b16_d16_hi v57, v17 offset:8256
	ds_store_b16 v57, v18 offset:8288
	ds_store_b16 v58, v19 offset:8224
	ds_store_b16_d16_hi v58, v19 offset:8256
	ds_store_b16 v58, v20 offset:8288
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_or_b16 v0.h, v44.h, v25.l
	v_or_b16 v1.l, v45.l, v25.h
	v_or_b16 v1.h, v45.h, v26.l
	v_or_b16 v6.l, v46.l, v26.h
	v_or_b16 v6.h, v46.h, v27.l
	v_or_b16 v7.l, v47.l, v27.h
	v_or_b16 v7.h, v47.h, v28.l
	v_or_b16 v8.l, v48.l, v28.h
	v_or_b16 v8.h, v48.h, v29.l
	v_or_b16 v9.l, v49.l, v29.h
	v_or_b16 v9.h, v49.h, v30.l
	v_or_b16 v10.l, v50.l, v30.h
	v_or_b16 v10.h, v50.h, v31.l
	v_or_b16 v11.l, v51.l, v31.h
	v_or_b16 v11.h, v51.h, v32.l
	ds_store_b16 v57, v0 offset:24576
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v58, v18 offset:8192
	ds_store_b16_d16_hi v59, v20 offset:8192
	ds_store_b16 v59, v21 offset:8224
	ds_store_b16_d16_hi v59, v21 offset:8256
	ds_store_b16 v59, v22 offset:8288
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v56, v[54:55] offset:34816
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v57, v1 offset:24640
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_store_b16_d16_hi v57, v22 offset:8576
	ds_store_b16 v57, v23 offset:8608
	ds_store_b16_d16_hi v57, v23 offset:8640
	ds_store_b16 v57, v24 offset:8672
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16_d16_hi v57, v0 offset:24608
	ds_store_b16_d16_hi v57, v1 offset:24672
	ds_store_b16 v58, v6 offset:24576
	ds_store_b16_d16_hi v58, v6 offset:24608
	ds_store_b16 v58, v7 offset:24640
	ds_store_b16_d16_hi v58, v7 offset:24672
	ds_store_b16 v59, v8 offset:24576
	ds_store_b16_d16_hi v59, v8 offset:24608
	ds_store_b16 v59, v9 offset:24640
	ds_store_b16_d16_hi v59, v9 offset:24672
	ds_store_b16 v57, v10 offset:24960
	ds_store_b16_d16_hi v57, v10 offset:24992
	ds_store_b16 v57, v11 offset:25024
	ds_store_b16_d16_hi v57, v11 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b32_e32 v7, 5, v92
	v_and_b32_e32 v6, 0xe00, v2
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_or_b32_e32 v227, 0x3f0, v92
	v_or_b32_e32 v34, 0x7f0, v92
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_and_b32_e32 v0, 4, v92
	v_dual_mov_b32 v114, v7 :: v_dual_and_b32 v1, 8, v92
	v_and_or_b32 v8, 0x60, v7, v6
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr227
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow790
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v3, s34, v3
	s_ashr_i32 s1, s13, 5
	v_or_b32_e32 v4, s34, v4
	v_or_b32_e32 v7, s33, v92
	v_or_b32_e32 v5, s34, v5
	v_mul_lo_u32 v3, v3, s1
	v_or_b32_e32 v6, s34, v94
	v_mul_lo_u32 v11, v4, s1
	scratch_store_b32 off, v7, off offset:236 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v4, 1, v92
	v_lshlrev_b32_e32 v10, 1, v93
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s44, s30, 32
	scratch_store_b32 off, v3, off offset:248 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 2, v93
	v_mul_lo_u32 v12, v5, s1
	v_mul_lo_u32 v13, v6, s1
	s_clause 0x8                            ; 36-byte Folded Spill
	scratch_store_b32 off, v92, off offset:300
	scratch_store_b32 off, v94, off offset:232
	scratch_store_b32 off, v93, off offset:328
	scratch_store_b32 off, v10, off offset:304
	scratch_store_b32 off, v3, off offset:316
	scratch_store_b32 off, v4, off offset:320
	scratch_store_b32 off, v11, off offset:240
	scratch_store_b32 off, v12, off offset:244
	scratch_store_b32 off, v13, off offset:228
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v92, 2, 1
	v_bfe_i32 v1, v92, 3, 1
	v_dual_mov_b32 v151, 0 :: v_dual_and_b32 v2, 0xe00, v2
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v0, 0x90, v0
	v_and_b32_e32 v1, 0x110, v1
	v_and_or_b32 v2, 0x60, v96, v2
	v_and_b32_e32 v9, 28, v4
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v135, 0
	v_xor_b32_e32 v0, v0, v1
	v_mov_b32_e32 v19, 0
	.loc	1 378 34 is_stmt 1              ; generate_amdgcn.py:378:34
	v_add_nc_u32_e32 v5, s35, v95
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v160, 0
	v_mov_b32_e32 v141, 0
	v_or_b32_e32 v1, v2, v0
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v0, 32, v96
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v73, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v0, 0, v3, v0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v0, v0, v9
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v0, 0, v10
	v_mov_b32_e32 v120, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v253, 0
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v115, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:20
	scratch_store_b32 off, v95, off offset:296
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v1
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v158, 0
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v1, off offset:284 ; 4-byte Folded Spill
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v37, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v5, off offset:276 ; 4-byte Folded Spill
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v119, 0
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v2, off offset:308 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v175, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v113, 0
	scratch_store_b32 off, v96, off offset:312 ; 4-byte Folded Spill
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v32, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s11, s1, 3
	s_add_i32 s0, s44, 32
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
	s_clause 0x5                            ; 28-byte Folded Spill
	scratch_store_b32 off, v0, off offset:164
	scratch_store_b64 off, v[99:100], off offset:252
	scratch_store_b32 off, v100, off offset:260
	scratch_store_b32 off, v101, off offset:264
	scratch_store_b32 off, v102, off offset:268
	scratch_store_b32 off, v103, off offset:272
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 5
	s_mov_b32 s14, s30
	s_mov_b32 s30, s44
	.loc	1 368 21                        ; generate_amdgcn.py:368:21
	s_add_i32 s44, s0, s15
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v162, off offset:212
	scratch_store_b32 off, v47, off offset:68
	scratch_store_b32 off, v83, off offset:112
	scratch_store_b32 off, v167, off offset:208
	scratch_store_b32 off, v48, off offset:72
	scratch_store_b32 off, v43, off offset:40
	scratch_store_b32 off, v87, off offset:204
	scratch_store_b32 off, v108, off offset:160
	scratch_store_b32 off, v109, off offset:156
	scratch_store_b32 off, v97, off offset:152
	scratch_store_b32 off, v171, off offset:148
	scratch_store_b32 off, v120, off offset:200
	scratch_store_b32 off, v145, off offset:196
	scratch_store_b32 off, v44, off offset:60
	scratch_store_b32 off, v156, off offset:192
	scratch_store_b32 off, v115, off offset:188
	scratch_store_b32 off, v77, off offset:144
	scratch_store_b32 off, v76, off offset:140
	scratch_store_b32 off, v78, off offset:136
	scratch_store_b32 off, v90, off offset:132
	scratch_store_b32 off, v82, off offset:128
	scratch_store_b32 off, v81, off offset:124
	scratch_store_b32 off, v80, off offset:120
	scratch_store_b32 off, v79, off offset:116
	scratch_store_b32 off, v119, off offset:184
	scratch_store_b32 off, v154, off offset:180
	scratch_store_b32 off, v117, off offset:176
	scratch_store_b32 off, v45, off offset:64
	scratch_store_b32 off, v121, off offset:172
	scratch_store_b32 off, v46, off offset:76
	scratch_store_b32 off, v134, off offset:168
	scratch_store_b32 off, v39, off offset:32
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v32, off offset:36
	scratch_store_b32 off, v73, off offset:4
	scratch_store_b32 off, v72, off offset:8
	scratch_store_b32 off, v24, off
	scratch_store_b32 off, v71, off offset:108
	scratch_store_b32 off, v42, off offset:104
	scratch_store_b32 off, v41, off offset:100
	scratch_store_b32 off, v38, off offset:96
	scratch_store_b32 off, v37, off offset:92
	scratch_store_b32 off, v27, off offset:88
	scratch_store_b32 off, v26, off offset:84
	scratch_store_b32 off, v23, off offset:80
	scratch_store_b32 off, v22, off offset:56
	scratch_store_b32 off, v20, off offset:52
	scratch_store_b32 off, v19, off offset:48
	scratch_store_b32 off, v18, off offset:44
	.loc	1 372 34                        ; generate_amdgcn.py:372:34
	v_mad_u64_u32 v[9:10], null, s44, s26, v[99:100]
	v_dual_mov_b32 v227, v197 :: v_dual_add_nc_u32 v0, s48, v94
	v_mov_b32_e32 v117, v56
	v_dual_mov_b32 v145, v136 :: v_dual_mov_b32 v136, v98
	v_mov_b32_e32 v159, v139
	.loc	1 372 26 is_stmt 0              ; generate_amdgcn.py:372:26
	buffer_load_b64 v[9:10], v9, s[4:7], 0 offen
	v_dual_mov_b32 v139, v124 :: v_dual_mov_b32 v154, v141
	v_mov_b32_e32 v124, v104
	v_dual_mov_b32 v119, v116 :: v_dual_mov_b32 v116, v107
	v_dual_mov_b32 v123, v54 :: v_dual_mov_b32 v138, v173
	v_mov_b32_e32 v155, v253
	v_dual_mov_b32 v87, v152 :: v_dual_mov_b32 v152, v147
	v_dual_mov_b32 v147, v140 :: v_dual_mov_b32 v144, v75
	v_dual_mov_b32 v140, v67 :: v_dual_mov_b32 v141, v68
	v_dual_mov_b32 v26, v91 :: v_dual_mov_b32 v197, v70
	v_dual_mov_b32 v27, v93 :: v_dual_mov_b32 v32, v96
	v_dual_mov_b32 v167, v51 :: v_dual_mov_b32 v162, v58
	v_dual_mov_b32 v121, v153 :: v_dual_mov_b32 v120, v60
	v_dual_mov_b32 v153, v125 :: v_dual_mov_b32 v156, v63
	v_dual_mov_b32 v125, v52 :: v_dual_mov_b32 v134, v61
	v_dual_mov_b32 v115, v55 :: v_dual_mov_b32 v166, v66
	v_mov_b32_e32 v226, v196
	v_mov_b32_e32 v196, v69
	v_dual_mov_b32 v114, v40 :: v_dual_mov_b32 v137, v122
	v_mov_b32_e32 v122, v53
	v_mov_b32_e32 v172, v111
	v_mov_b32_e32 v176, v113
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[9:10], off offset:216 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 23 is_stmt 1              ; generate_amdgcn.py:379:23
	ds_load_u8 v9, v0 offset:832
	ds_load_u8 v10, v0 offset:768
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v89, off, off offset:280
	scratch_load_b32 v106, off, off offset:284
	v_dual_mov_b32 v49, v254 :: v_dual_mov_b32 v254, v95
	scratch_load_b32 v253, off, off offset:248 ; 4-byte Folded Reload
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
	v_add_nc_u32_e32 v33, s48, v100
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v33, v33
	ds_load_u8 v34, v0 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v0 offset:624
	ds_load_u8 v35, v0 offset:560
	v_lshl_or_b32 v171, v33, 16, v25
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
	v_lshl_or_b32 v170, v35, 16, v34
	ds_load_u8 v33, v0 offset:496
	ds_load_u8 v34, v0 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v169, v33, 16, v25
	ds_load_u8 v25, v0 offset:112
	ds_load_u8 v33, v0 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v0 offset:240
	ds_load_u8 v34, v0 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v33, 16, v25
	ds_load_u8 v25, v0 offset:1904
	ds_load_u8 v33, v0 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v33, s48, v101
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	ds_load_u8 v33, v33
	ds_load_u8 v34, v0 offset:1968
	s_mov_b32 s48, s47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v0 offset:1648
	ds_load_u8 v35, v0 offset:1584
	v_lshl_or_b32 v209, v33, 16, v25
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
	v_lshl_or_b32 v208, v35, 16, v34
	ds_load_u8 v33, v0 offset:1520
	ds_load_u8 v34, v0 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v207, v33, 16, v25
	ds_load_u8 v25, v0 offset:1136
	ds_load_u8 v33, v0 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v33, v25, 0xc0c0004
	ds_load_u8 v33, v0 offset:1264
	ds_load_u8 v0, v0 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v0, 16, v25
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s12, v89
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s12, v106
	.loc	1 378 34 is_stmt 0              ; generate_amdgcn.py:378:34
	s_mul_i32 s12, s44, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s12, s12, s33
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[41:44], v0
	ds_load_b128 v[98:101], v0 offset:4096
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v0, s31, v89
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[45:48], v25
	ds_load_b128 v[102:105], v25 offset:4096
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v25, s31, v106
	ds_load_b128 v[218:221], v0 offset:4096
	ds_load_b128 v[222:225], v25 offset:4096
	ds_load_b128 v[106:109], v0
	v_mov_b32_e32 v89, v110
	v_mov_b32_e32 v173, v112
	ds_load_b128 v[110:113], v25
	s_mov_b32 s31, s45
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[210:217], v[41:44], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[98:101], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[98:101], v[168:171], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[210:217], v[45:48], v[21:24], v[210:217] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[102:105], v[21:24], v[67:74] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[187:194], v[218:221], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[245:252], v[218:221], v[28:31], v[1:8] neg_lo:[1,1,0]
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[90:97], v[102:105], v[206:209], v[90:97] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[187:194], v[222:225], v[13:16], v[187:194] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[198:205], v[106:109], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[229:236], v[218:221], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[245:252], v[222:225], v[83:86], v[245:252] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[198:205], v[110:113], v[21:24], v[198:205] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v19, v190
	v_wmma_i32_16x16x16_iu8 v[229:236], v[222:225], v[21:24], v[229:236] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v24, v187
	v_cvt_f32_i32_e32 v187, v248
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v248, v74
	v_cvt_f32_i32_e32 v74, v93
	v_mov_b32_e32 v93, v27
	scratch_load_b32 v27, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v190, v245
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v245, v72
	v_cvt_f32_i32_e32 v72, v91
	v_mov_b32_e32 v91, v26
	scratch_load_b32 v26, off, off offset:276 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[41:44], v[28:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[41:44], v[168:171], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[13:16], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[45:48], v[83:86], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[98:101], v[28:31], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[45:48], v[206:209], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[98:101], v[9:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[102:105], v[83:86], v[75:82] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[179:186], v[106:109], v[9:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_wmma_i32_16x16x16_iu8 v[41:48], v[102:105], v[13:16], v[41:48] neg_lo:[1,1,0]
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_wmma_i32_16x16x16_iu8 v[237:244], v[106:109], v[28:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[106:109], v[168:171], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[110:113], v[13:16], v[179:186] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[237:244], v[110:113], v[83:86], v[237:244] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v191
	v_wmma_i32_16x16x16_iu8 v[98:105], v[110:113], v[206:209], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[218:221], v[168:171], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v12, v194
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v191, v198
	v_wmma_i32_16x16x16_iu8 v[106:113], v[222:225], v[206:209], v[106:113] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v225, v201
	v_cvt_f32_i32_e32 v201, v202
	v_cvt_f32_i32_e32 v198, v205
	v_cvt_f32_i32_e32 v205, v241
	v_cvt_f32_i32_e32 v194, v106
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v106, v40
	v_cvt_f32_i32_e32 v40, v75
	v_mov_b32_e32 v75, v144
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v202, v244
	v_cvt_f32_i32_e32 v18, v251
	v_cvt_f32_i32_e32 v21, v252
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v252, v43
	v_cvt_f32_i32_e32 v251, v44
	v_cvt_f32_i32_e32 v244, v45
	v_cvt_f32_i32_e32 v241, v46
	v_cvt_f32_i32_e32 v86, v67
	v_cvt_f32_i32_e32 v84, v68
	v_cvt_f32_i32_e32 v169, v69
	v_cvt_f32_i32_e32 v168, v70
	v_cvt_f32_i32_e32 v67, v51
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v70, v54
	v_cvt_f32_i32_e32 v44, v55
	v_cvt_f32_i32_e32 v43, v56
	v_cvt_f32_i32_e32 v46, v57
	v_cvt_f32_i32_e32 v45, v58
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v223, v180
	v_cvt_f32_i32_e32 v222, v181
	v_cvt_f32_i32_e32 v181, v230
	v_cvt_f32_i32_e32 v180, v231
	v_cvt_f32_i32_e32 v231, v238
	v_cvt_f32_i32_e32 v230, v239
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v239, v33
	v_cvt_f32_i32_e32 v238, v34
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v221, v182
	v_cvt_f32_i32_e32 v182, v185
	v_cvt_f32_i32_e32 v9, v186
	v_cvt_f32_i32_e32 v186, v199
	v_cvt_f32_i32_e32 v185, v200
	v_cvt_f32_i32_e32 v200, v203
	v_cvt_f32_i32_e32 v199, v204
	v_cvt_f32_i32_e32 v13, v233
	v_cvt_f32_i32_e32 v15, v234
	v_cvt_f32_i32_e32 v204, v242
	v_cvt_f32_i32_e32 v203, v243
	v_cvt_f32_i32_e32 v234, v100
	v_cvt_f32_i32_e32 v233, v101
	v_cvt_f32_i32_e32 v208, v103
	v_cvt_f32_i32_e32 v100, v110
	v_cvt_f32_i32_e32 v101, v112
	v_cvt_f32_i32_e32 v103, v113
	v_dual_mov_b32 v110, v89 :: v_dual_mov_b32 v113, v176
	v_mov_b32_e32 v112, v173
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v173, v37
	v_cvt_f32_i32_e32 v243, v47
	v_cvt_f32_i32_e32 v242, v48
	v_cvt_f32_i32_e32 v48, v210
	v_cvt_f32_i32_e32 v47, v211
	v_cvt_f32_i32_e32 v176, v216
	v_cvt_f32_i32_e32 v37, v94
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v94, off, off offset:232
	scratch_load_b32 v144, off, off offset:236
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v209, v102
	v_cvt_f32_i32_e32 v102, v111
	v_mov_b32_e32 v111, v172
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v89, v214
	v_cvt_f32_i32_e32 v172, v215
	v_cvt_f32_i32_e32 v25, v217
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v10, v193
	v_cvt_f32_i32_e32 v14, v235
	v_cvt_f32_i32_e32 v235, v99
	v_cvt_f32_i32_e32 v193, v107
	v_mov_b32_e32 v99, v50
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v50, v212
	v_cvt_f32_i32_e32 v107, v213
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v220, v183
	v_cvt_f32_i32_e32 v183, v184
	v_cvt_f32_i32_e32 v184, v229
	v_cvt_f32_i32_e32 v229, v240
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v240, v36
	v_cvt_f32_i32_e32 v171, v35
	v_cvt_f32_i32_e32 v35, v95
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v17, v249
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v249, v73
	v_cvt_f32_i32_e32 v73, v92
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v224, v179
	v_cvt_f32_i32_e32 v179, v232
	v_cvt_f32_i32_e32 v232, v237
	v_cvt_f32_i32_e32 v23, v188
	v_cvt_f32_i32_e32 v22, v189
	v_cvt_f32_i32_e32 v11, v192
	v_cvt_f32_i32_e32 v189, v246
	v_cvt_f32_i32_e32 v188, v247
	v_cvt_f32_i32_e32 v20, v250
	v_cvt_f32_i32_e32 v206, v105
	v_cvt_f32_i32_e32 v192, v108
	v_cvt_f32_i32_e32 v105, v109
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v255, v39
	v_cvt_f32_i32_e32 v250, v41
	v_cvt_f32_i32_e32 v247, v42
	v_cvt_f32_i32_e32 v246, v71
	v_cvt_f32_i32_e32 v39, v76
	v_cvt_f32_i32_e32 v42, v77
	v_cvt_f32_i32_e32 v41, v78
	v_cvt_f32_i32_e32 v83, v79
	v_cvt_f32_i32_e32 v170, v80
	v_cvt_f32_i32_e32 v31, v81
	v_cvt_f32_i32_e32 v85, v82
	v_cvt_f32_i32_e32 v71, v90
	v_cvt_f32_i32_e32 v36, v97
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v207, v104
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v104, v38
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_cvt_f32_i32_e32 v16, v236
	v_cvt_f32_i32_e32 v236, v98
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v38, v96
	v_mov_b32_e32 v96, v32
	v_cvt_f32_i32_e32 v66, v66
	v_mov_b32_e32 v98, v136
	v_mov_b32_e32 v136, v145
	.loc	1 378 34                        ; generate_amdgcn.py:378:34
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s12, v27
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v28, s12, v26
	.loc	1 378 26 is_stmt 0              ; generate_amdgcn.py:378:26
	s_clause 0x1
	buffer_load_b128 v[51:54], v0, s[20:23], 0 offen
	buffer_load_b128 v[55:58], v28, s[20:23], 0 offen
	.loc	1 384 43 is_stmt 1              ; generate_amdgcn.py:384:43
	s_add_i32 s12, s12, s27
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_nc_u32_e32 v33, s12, v27
	scratch_load_b32 v27, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_waitcnt vmcnt(1)
	v_perm_b32 v30, v55, v51, 0x5010400
	v_perm_b32 v29, v55, v51, 0x7030602
	.loc	1 384 43                        ; generate_amdgcn.py:384:43
	v_add_nc_u32_e32 v55, s12, v26
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_perm_b32 v28, v56, v52, 0x5010400
	v_perm_b32 v216, v56, v52, 0x7030602
	v_perm_b32 v211, v57, v53, 0x5010400
	v_perm_b32 v34, v57, v53, 0x7030602
	v_perm_b32 v0, v58, v54, 0x5010400
	v_perm_b32 v210, v58, v54, 0x7030602
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_clause 0x1
	buffer_load_b128 v[51:54], v33, s[20:23], 0 offen
	buffer_load_b128 v[55:58], v55, s[20:23], 0 offen
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s12, s14, 31
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	scratch_load_b32 v26, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_lshr_b32 s12, s12, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s14, s14, s12
	s_ashr_i32 s14, s14, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s12, s14, s35
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s14, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s10, s10, 1
	s_cmp_lt_i32 s10, 2
	s_cselect_b32 s10, s10, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_lshl_b32 s15, s10, 13
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(1)
	v_perm_b32 v219, v55, v51, 0x5010400
	v_perm_b32 v218, v55, v51, 0x7030602
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v51, v144, s12, 1
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v215, v57, v53, 0x5010400
	v_perm_b32 v214, v57, v53, 0x7030602
	v_perm_b32 v217, v56, v52, 0x5010400
	v_perm_b32 v33, v56, v52, 0x7030602
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v52, v253, s14, 1
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_perm_b32 v213, v58, v54, 0x5010400
	v_perm_b32 v212, v58, v54, 0x7030602
	v_mov_b32_e32 v95, v254
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v51, v51, s[40:43], 0 offen
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v254, v49 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v27, v51 offset:36864
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v51, v26, s14, 1
	scratch_load_b32 v26, off, off offset:240 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v53, v26, s14, 1
	scratch_load_b32 v26, off, off offset:244 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v54, v26, s14, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	s_clause 0x3
	buffer_load_u16 v51, v51, s[36:39], 0 offen
	buffer_load_u16 v55, v52, s[36:39], 0 offen
	buffer_load_u16 v56, v53, s[36:39], 0 offen
	buffer_load_u16 v57, v54, s[36:39], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v92, off, off offset:292
	scratch_load_b32 v26, off, off offset:20
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v237, 16, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v58, v237, v239
	s_waitcnt vmcnt(1)
	ds_load_b128 v[51:54], v92 offset:36864
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v239, 16, v56
	v_mov_b32_e32 v56, v117
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v20, v20, v239
	v_mul_f32_e32 v17, v17, v239
	v_mul_f32_e32 v21, v21, v239
	v_mul_f32_e32 v18, v18, v239
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fmac_f32_e32 v26, v58, v51
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v58, v237, v238
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v238, 16, v55
	v_mov_b32_e32 v55, v115
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_store_b32 off, v26, off offset:20 ; 4-byte Folded Spill
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	scratch_load_b32 v26, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v238, v47
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v174, v47, v52 :: v_dual_mul_f32 v47, v238, v50
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v58, v52
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v58, v237, v171
	scratch_store_b32 off, v26, off offset:16 ; 4-byte Folded Spill
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v108, off, off offset:160
	scratch_load_b32 v109, off, off offset:156
	scratch_load_b32 v97, off, off offset:152
	scratch_load_b32 v171, off, off offset:148
	scratch_load_b32 v77, off, off offset:144
	scratch_load_b32 v76, off, off offset:140
	scratch_load_b32 v78, off, off offset:136
	scratch_load_b32 v90, off, off offset:132
	scratch_load_b32 v82, off, off offset:128
	scratch_load_b32 v81, off, off offset:124
	scratch_load_b32 v80, off, off offset:120
	scratch_load_b32 v79, off, off offset:116
	scratch_load_b32 v26, off, off offset:24
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v58, v53
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v58, v237, v240
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_lshlrev_b32_e32 v240, 16, v57
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_store_b32 off, v26, off offset:24 ; 4-byte Folded Spill
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	scratch_load_b32 v26, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v58, v54
	v_mov_b32_e32 v58, v162
	scratch_load_b32 v162, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v23, v23, v237
	v_mul_f32_e32 v24, v24, v237
	scratch_store_b32 off, v26, off offset:12 ; 4-byte Folded Spill
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	scratch_load_b32 v26, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v22, v22, v237
	v_mul_f32_e32 v19, v19, v237
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v26, v47, v53 :: v_dual_mul_f32 v47, v238, v107
	v_dual_mov_b32 v107, v116 :: v_dual_mov_b32 v116, v119
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_store_b32 off, v26, off offset:28 ; 4-byte Folded Spill
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	scratch_load_b32 v26, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v47, v54
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v239, v67
	v_dual_mov_b32 v67, v140 :: v_dual_mul_f32 v48, v238, v48
	v_dual_mov_b32 v140, v147 :: v_dual_mov_b32 v147, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v254, v47, v51
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v47, v239, v68 :: v_dual_fmac_f32 v88, v48, v51
	v_dual_mov_b32 v152, v87 :: v_dual_mul_f32 v25, v238, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v16, v16, v238 :: v_dual_fmac_f32 v177, v47, v52
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v239, v69
	v_dual_mov_b32 v69, v196 :: v_dual_mov_b32 v196, v226
	v_dual_mov_b32 v68, v141 :: v_dual_mul_f32 v15, v15, v238
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v109, v47, v53
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v47, v239, v70 :: v_dual_mov_b32 v70, v197
	v_mov_b32_e32 v141, v154
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_store_b32 off, v26, off offset:164 ; 4-byte Folded Spill
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v13, v13, v238
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v108, v47, v54 :: v_dual_mul_f32 v47, v240, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v14, v14, v238 :: v_dual_fmac_f32 v171, v47, v51
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v240, v60
	v_dual_mul_f32 v51, v237, v173 :: v_dual_mov_b32 v60, v120
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v97, v47, v52 :: v_dual_mov_b32 v52, v125
	v_mov_b32_e32 v125, v153
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v47, v240, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v153, v121 :: v_dual_fmac_f32 v116, v47, v53
	v_mul_f32_e32 v47, v240, v62
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v107, v47, v54
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[47:50], v92 offset:36880
	v_dual_mov_b32 v61, v134 :: v_dual_mov_b32 v54, v123
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v76, v51, v47 :: v_dual_mul_f32 v51, v237, v104
	v_dual_fmac_f32 v80, v25, v50 :: v_dual_mul_f32 v25, v239, v44
	v_mov_b32_e32 v104, v124
	v_mov_b32_e32 v124, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v51, v48
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v51, v237, v255
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v112, v25, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v239, v43
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v113, v25, v48
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v239, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v110, v25, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v239, v45
	ds_load_b128 v[43:46], v92 offset:37376
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v111, v25, v50
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v240, v63
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v95, v25, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v240, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v63, v156 :: v_dual_fmac_f32 v96, v25, v48
	v_mul_f32_e32 v25, v240, v65
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v91, v25, v49
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v25, v240, v66 :: v_dual_mov_b32 v66, v166
	v_dual_mov_b32 v53, v122 :: v_dual_fmac_f32 v90, v51, v49
	v_mul_f32_e32 v51, v237, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v93, v25, v50
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v237, v250
	v_mov_b32_e32 v122, v137
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v78, v51, v50 :: v_dual_mul_f32 v51, v238, v89
	v_mov_b32_e32 v50, v99
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v70, v25, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v237, v247
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v81, v51, v47
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v51, v238, v172
	scratch_load_b32 v47, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v75, v25, v44
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v237, v252
	v_dual_mov_b32 v173, v138 :: v_dual_fmac_f32 v82, v51, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v51, v238, v176 :: v_dual_fmac_f32 v68, v25, v45
	v_mul_f32_e32 v25, v237, v251
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v69, v25, v46
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v238, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v79, v51, v49 :: v_dual_fmac_f32 v178, v25, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v238, v84
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v63, v25, v44
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v238, v169
	v_mov_b32_e32 v51, v167
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:72
	scratch_load_b32 v167, off, off offset:208
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v60, v25, v45 :: v_dual_mul_f32 v25, v238, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v25, v46
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v239, v40
	v_dual_mov_b32 v197, v227 :: v_dual_fmac_f32 v54, v25, v43
	v_mul_f32_e32 v25, v239, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v55, v25, v44
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v239, v42
	v_dual_mov_b32 v253, v155 :: v_dual_fmac_f32 v52, v25, v45
	v_mul_f32_e32 v25, v239, v41
	ds_load_b128 v[39:42], v92 offset:37392
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v53, v25, v46
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v240, v71
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v47, v25, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v240, v72
	v_mov_b32_e32 v139, v159
	scratch_load_b32 v43, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v48, v25, v44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v44, off, off offset:60
	scratch_load_b32 v156, off, off offset:192
	scratch_load_b32 v145, off, off offset:196
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v240, v73
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v44, v25, v45 :: v_dual_mul_f32 v25, v240, v74
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v45, off, off offset:64
	scratch_load_b32 v115, off, off offset:188
	scratch_load_b32 v119, off, off offset:184
	scratch_load_b32 v117, off, off offset:176
	scratch_load_b32 v121, off, off offset:172
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v45, v25, v46
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v46, off, off offset:76
	scratch_load_b32 v154, off, off offset:180
	scratch_load_b32 v87, off, off offset:204
	scratch_load_b32 v120, off, off offset:200
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v237, v244
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v25, v39
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v237, v241
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v67, v25, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v237, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v163, v25, v41
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v237, v242
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fmac_f32_e32 v164, v25, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v238, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v58, v25, v39 :: v_dual_mul_f32 v25, v238, v245
	v_dual_fmac_f32 v118, v25, v40 :: v_dual_mul_f32 v25, v238, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v56, v25, v41 :: v_dual_mul_f32 v25, v238, v248
	v_fmac_f32_e32 v175, v25, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v239, v83
	scratch_load_b32 v83, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v50, v25, v39 :: v_dual_mul_f32 v25, v239, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v25, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v239, v31
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v31, v100, v240 :: v_dual_fmac_f32 v46, v25, v41
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v239, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v228, v25, v42 :: v_dual_mul_f32 v25, v240, v37
	v_fmac_f32_e32 v43, v25, v39
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v39, off, off offset:32
	scratch_load_b32 v32, off, off offset:36
	scratch_load_b32 v134, off, off offset:168
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v240, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_dual_fmac_f32 v114, v25, v40 :: v_dual_mul_f32 v25, v240, v38
	v_mov_b32_e32 v40, v114
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v32, v25, v41 :: v_dual_mul_f32 v25, v240, v36
	v_fmac_f32_e32 v39, v25, v42
	v_add_nc_u32_e32 v25, s27, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v25, v25, s12, 1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_lshl_b32 s12, s10, 11
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	s_add_i32 s46, s15, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s13, 1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_add_i32 s47, s14, 0x8000
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_add_i32 s45, s46, 0x4000
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v25, v25, s[40:43], 0 offen
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s11
	s_mov_b32 s13, s15
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v27, v25 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v92 offset:36864
	v_mul_f32_e32 v25, v224, v237
	scratch_load_b64 v[99:100], off, off offset:252 ; 8-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v151, v25, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v223, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v161, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v222, v237
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v158, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v221, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v160, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v191, v238
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v87, v25, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v186, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v157, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v185, v238
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v121, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v225, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v120, v25, v38 :: v_dual_mul_f32 v25, v232, v239
	v_fmac_f32_e32 v153, v25, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v231, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v119, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v230, v239
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v134, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v229, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v152, v25, v38 :: v_dual_mul_f32 v25, v236, v240
	v_dual_fmac_f32 v156, v25, v35 :: v_dual_mul_f32 v25, v235, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v196, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v234, v240
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v197, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v233, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v117, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[35:38], v92 offset:36880
	v_mul_f32_e32 v25, v220, v237
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v143, v25, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v183, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v146, v25, v36 :: v_dual_mul_f32 v25, v182, v237
	v_fmac_f32_e32 v141, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v9, v237
	scratch_load_b32 v9, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v142, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v201, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v124, v25, v35 :: v_dual_mul_f32 v25, v200, v238
	v_dual_fmac_f32 v140, v25, v36 :: v_dual_mul_f32 v25, v199, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v253, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v198, v238
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v136, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v205, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v165, v25, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v204, v239
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v139, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v203, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v173, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v202, v239
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v195, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v209, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v149, v25, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v208, v240
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v150, v25, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v207, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v147, v25, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v25, v206, v240
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v148, v25, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[35:38], v92 offset:37376
	v_mul_f32_e32 v25, v102, v240
	scratch_load_b32 v102, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v128, v19, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v19, v184, v238 :: v_dual_fmac_f32 v130, v23, v36
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v129, v24, v35 :: v_dual_fmac_f32 v122, v22, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v23, v12, v237
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v167, v19, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v19, v181, v238 :: v_dual_mul_f32 v24, v10, v237
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v154, v19, v36 :: v_dual_mul_f32 v19, v180, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v115, v19, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v179, v238
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v162, v19, v38 :: v_dual_mul_f32 v19, v190, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v126, v19, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v189, v239
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v131, v19, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v188, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v127, v19, v37
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v187, v239
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v145, v19, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v194, v240
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v83, v19, v35
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v193, v240
	v_mul_f32_e32 v35, v103, v240
	scratch_load_b32 v103, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v135, v19, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v36, v101, v240
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v101, off, off offset:264
	scratch_load_b32 v26, off, off offset:4
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v192, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_dual_fmac_f32 v132, v19, v37 :: v_dual_mul_f32 v19, v105, v240
	v_fmac_f32_e32 v133, v19, v38
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v19, v11, v237
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v22, v9, v237
	ds_load_b128 v[9:12], v92 offset:37392
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_dual_fmac_f32 v125, v24, v11 :: v_dual_fmac_f32 v26, v22, v9
	scratch_store_b32 off, v26, off offset:4 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:4
	scratch_load_b32 v22, off, off offset:8
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v22, v19, v10
	scratch_store_b32 off, v22, off offset:8 ; 4-byte Folded Spill
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v72, off, off offset:8
	scratch_load_b32 v71, off, off offset:108
	scratch_load_b32 v42, off, off offset:104
	scratch_load_b32 v41, off, off offset:100
	scratch_load_b32 v38, off, off offset:96
	scratch_load_b32 v37, off, off offset:92
	scratch_load_b32 v27, off, off offset:88
	scratch_load_b32 v26, off, off offset:84
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v71, v23, v12
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v42, v15, v10 :: v_dual_fmac_f32 v41, v13, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off
	scratch_load_b32 v100, off, off offset:260
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v27, v20, v10
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v37, v14, v11 :: v_dual_fmac_f32 v26, v17, v9
	v_fmac_f32_e32 v38, v16, v12
	.loc	1 384 35 is_stmt 1              ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v14, 24, v219
	v_lshrrev_b32_e32 v15, 24, v218
	v_lshrrev_b32_e32 v16, 24, v217
	v_lshrrev_b32_e32 v17, 24, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v14.l, 8, v14.l
	v_lshlrev_b16 v15.l, 8, v15.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v16.l, 8, v16.l
	v_lshlrev_b16 v17.l, 8, v17.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v13, v18, v11
	scratch_store_b32 off, v13, off         ; 4-byte Folded Spill
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v23, off, off offset:80
	scratch_load_b32 v24, off, off
	scratch_load_b32 v22, off, off offset:56
	scratch_load_b32 v20, off, off offset:52
	scratch_load_b32 v19, off, off offset:48
	scratch_load_b32 v18, off, off offset:44
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v13, 24, v216
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v13.l, 8, v13.l
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v23, v21, v12
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v22, v25, v10
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v20, v31, v9 :: v_dual_add_nc_u32 v9, s14, v98
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v18, v36, v11
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	scratch_load_b64 v[10:11], off, off offset:216 ; 8-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fmac_f32_e32 v19, v35, v12
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v12, 24, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v12.l, 8, v12.l
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v9, v[10:11] offset:32768
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshrrev_b32_e32 v9, 8, v30
	v_and_b16 v9.h, 0xff, v30.l
	v_lshrrev_b32_e32 v10, 24, v30
	v_lshrrev_b32_e32 v11, 24, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v30.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v9.h, v10.l
	v_lshrrev_b32_e32 v10, 8, v29
	v_and_b16 v10.h, 0xff, v29.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v29.h
	v_or_b16 v10.h, v10.h, v11.l
	v_lshrrev_b32_e32 v11, 8, v28
	v_and_b16 v11.h, 0xff, v28.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v28.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v11.h, v11.h, v12.l
	v_lshrrev_b32_e32 v12, 8, v216
	v_and_b16 v12.h, 0xff, v216.l
	v_lshlrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v12.l, v12.h, v12.l
	v_and_b16 v12.h, 0xff, v216.h
	v_or_b16 v12.h, v12.h, v13.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v13, 8, v219
	v_and_b16 v13.h, 0xff, v219.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v13.l, 8, v13.l
	v_or_b16 v13.l, v13.h, v13.l
	v_and_b16 v13.h, 0xff, v219.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v13.h, v13.h, v14.l
	v_lshrrev_b32_e32 v14, 8, v218
	v_and_b16 v14.h, 0xff, v218.l
	v_lshlrev_b16 v14.l, 8, v14.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v14.l, v14.h, v14.l
	v_and_b16 v14.h, 0xff, v218.h
	v_or_b16 v14.h, v14.h, v15.l
	v_lshrrev_b32_e32 v15, 8, v217
	v_and_b16 v15.h, 0xff, v217.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v15.l, 8, v15.l
	v_or_b16 v15.l, v15.h, v15.l
	v_and_b16 v15.h, 0xff, v217.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v15.h, v15.h, v16.l
	v_lshrrev_b32_e32 v16, 8, v33
	v_and_b16 v16.h, 0xff, v33.l
	v_lshlrev_b16 v16.l, 8, v16.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v16.l, v16.h, v16.l
	v_and_b16 v16.h, 0xff, v33.h
	v_or_b16 v16.h, v16.h, v17.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v17, s46, v102
	ds_store_b16 v17, v9
	ds_store_b16_d16_hi v17, v9 offset:32
	ds_store_b16 v17, v10 offset:64
	ds_store_b16_d16_hi v17, v10 offset:96
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_store_b16 v17, v13 offset:16384
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v9, s46, v103
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
	v_lshrrev_b32_e32 v9, 8, v211
	v_and_b16 v9.h, 0xff, v211.l
	v_lshrrev_b32_e32 v10, 24, v211
	v_lshrrev_b32_e32 v11, 24, v34
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v12, 24, v215
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v9.l, 8, v9.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v13, 24, v214
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v10.l, 8, v10.l
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.l, 8, v12.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v211.h
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
	v_lshrrev_b32_e32 v11, 8, v215
	v_and_b16 v11.h, 0xff, v215.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v215.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v11.h, v11.h, v12.l
	v_lshrrev_b32_e32 v12, 8, v214
	v_and_b16 v12.h, 0xff, v214.l
	v_lshlrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v12.l, v12.h, v12.l
	v_and_b16 v12.h, 0xff, v214.h
	v_or_b16 v12.h, v12.h, v13.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v13, s46, v104
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
	v_lshrrev_b32_e32 v11, 24, v213
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v0.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v210
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v12, 24, v212
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v9.l, v9.h, v9.l
	v_or_b16 v0.l, v0.l, v0.h
	v_lshlrev_b16 v0.h, 8, v10.l
	v_and_b16 v9.h, 0xff, v210.l
	v_lshrrev_b32_e32 v10, 24, v210
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshlrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b16 v0.h, v9.h, v0.h
	v_and_b16 v9.h, 0xff, v210.h
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.h, v9.h, v10.l
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_lshrrev_b32_e32 v10, 8, v213
	v_and_b16 v10.h, 0xff, v213.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v213.h
	v_or_b16 v10.h, v10.h, v11.l
	v_lshrrev_b32_e32 v11, 8, v212
	v_and_b16 v11.h, 0xff, v212.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v11.l, 8, v11.l
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v212.h
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
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v114, off, off offset:312
	scratch_load_b32 v11, off, off offset:240
	scratch_load_b32 v12, off, off offset:244
	scratch_load_b32 v13, off, off offset:228
	scratch_load_b32 v123, off, off offset:24
	scratch_load_b32 v166, off, off offset:12
	scratch_load_b32 v49, off, off offset:20
	scratch_load_b32 v74, off, off offset:16
	scratch_load_b32 v8, off, off offset:308
	scratch_load_b32 v92, off, off offset:300
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v88, off offset:172
	scratch_store_b32 off, v177, off offset:168
	v_dual_mov_b32 v227, v100 :: v_dual_mov_b32 v34, v101
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 8, v92
	v_and_b32_e32 v0, 4, v92
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	scratch_store_b32 off, v2, off offset:168 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	scratch_store_b32 off, v2, off offset:164 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v163, 0
	scratch_store_b32 off, v2, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v151, 0
	v_mov_b32_e32 v160, 0
	v_mov_b32_e32 v158, 0
	s_add_i32 s48, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	scratch_store_b32 off, v2, off offset:172 ; 4-byte Folded Spill
.LBB0_8:                                ; %Flow791
	v_dual_mov_b32 v226, v34 :: v_dual_add_nc_u32 v9, s48, v94
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v174, off offset:472
	scratch_store_b32 off, v254, off offset:468
	scratch_store_b32 off, v108, off offset:160
	scratch_store_b32 off, v109, off offset:156
	scratch_store_b32 off, v97, off offset:152
	scratch_store_b32 off, v171, off offset:148
	scratch_store_b32 off, v107, off offset:464
	scratch_store_b32 off, v116, off offset:460
	scratch_store_b32 off, v77, off offset:144
	scratch_store_b32 off, v76, off offset:140
	scratch_store_b32 off, v78, off offset:136
	scratch_store_b32 off, v90, off offset:132
	scratch_store_b32 off, v82, off offset:128
	scratch_store_b32 off, v81, off offset:124
	scratch_store_b32 off, v80, off offset:120
	scratch_store_b32 off, v79, off offset:116
	scratch_store_b32 off, v113, off offset:440
	scratch_store_b32 off, v112, off offset:436
	scratch_store_b32 off, v111, off offset:432
	scratch_store_b32 off, v110, off offset:428
	scratch_store_b32 off, v83, off offset:112
	scratch_store_b32 off, v72, off offset:8
	scratch_store_b32 off, v73, off offset:4
	scratch_store_b32 off, v71, off offset:108
	scratch_store_b32 off, v42, off offset:104
	scratch_store_b32 off, v41, off offset:100
	scratch_store_b32 off, v38, off offset:96
	scratch_store_b32 off, v37, off offset:92
	scratch_store_b32 off, v27, off offset:88
	scratch_store_b32 off, v26, off offset:84
	scratch_store_b32 off, v23, off offset:80
	scratch_store_b32 off, v24, off
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v22, off offset:56
	scratch_store_b32 off, v20, off offset:52
	scratch_store_b32 off, v19, off offset:48
	scratch_store_b32 off, v18, off offset:44
	scratch_store_b32 off, v96, off offset:456
	scratch_store_b32 off, v95, off offset:452
	scratch_store_b32 off, v93, off offset:448
	scratch_store_b32 off, v91, off offset:444
	scratch_store_b32 off, v75, off offset:424
	scratch_store_b32 off, v70, off offset:420
	scratch_store_b32 off, v69, off offset:416
	scratch_store_b32 off, v68, off offset:412
	scratch_store_b32 off, v67, off offset:408
	scratch_store_b32 off, v66, off offset:404
	scratch_store_b32 off, v164, off offset:400
	scratch_store_b32 off, v163, off offset:396
	scratch_store_b32 off, v63, off offset:392
	scratch_store_b32 off, v178, off offset:388
	scratch_store_b32 off, v61, off offset:384
	scratch_store_b32 off, v60, off offset:380
	scratch_store_b32 off, v118, off offset:376
	scratch_store_b32 off, v58, off offset:372
	scratch_store_b32 off, v175, off offset:368
	scratch_store_b32 off, v56, off offset:364
	scratch_store_b32 off, v55, off offset:360
	scratch_store_b32 off, v54, off offset:356
	scratch_store_b32 off, v53, off offset:352
	scratch_store_b32 off, v52, off offset:348
	scratch_store_b32 off, v51, off offset:344
	scratch_store_b32 off, v50, off offset:340
	scratch_store_b32 off, v228, off offset:336
	scratch_store_b32 off, v46, off offset:76
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v48, off offset:72
	scratch_store_b32 off, v47, off offset:68
	scratch_store_b32 off, v45, off offset:64
	scratch_store_b32 off, v44, off offset:60
	scratch_store_b32 off, v40, off offset:332
	scratch_store_b32 off, v43, off offset:40
	scratch_store_b32 off, v39, off offset:32
	.loc	1 372 26 is_stmt 1              ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v206, v9
	ds_load_u8_d16 v193, v9 offset:16
	ds_load_u8_d16 v2, v9 offset:32
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v85, v9 offset:304
	ds_load_u8_d16 v241, v9 offset:384
	ds_load_u8_d16 v242, v9 offset:448
	ds_load_u8_d16 v212, v9 offset:400
	ds_load_u8_d16 v213, v9 offset:464
	ds_load_u8_d16 v137, v9 offset:416
	ds_load_u8_d16 v175, v9 offset:480
	ds_load_u8_d16 v86, v9 offset:496
	ds_load_u8_d16 v113, v9 offset:432
	ds_load_u8_d16 v246, v9 offset:512
	ds_load_u8_d16 v248, v9 offset:576
	ds_load_u8_d16 v214, v9 offset:528
	ds_load_u8_d16 v215, v9 offset:592
	ds_load_u8_d16 v181, v9 offset:544
	ds_load_u8_d16 v182, v9 offset:608
	ds_load_u8_d16 v17, v9 offset:624
	ds_load_u8_d16 v18, v9 offset:560
	ds_load_u8_d16 v251, v9 offset:640
	ds_load_u8_d16 v116, v9 offset:704
	ds_load_u8_d16 v216, v9 offset:656
	ds_load_u8_d16 v217, v9 offset:720
	ds_load_u8_d16 v183, v9 offset:672
	ds_load_u8_d16 v184, v9 offset:736
	ds_load_u8_d16 v20, v9 offset:752
	ds_load_u8_d16 v21, v9 offset:688
	ds_load_u8_d16 v29, v9 offset:768
	ds_load_u8_d16 v30, v9 offset:832
	ds_load_u8_d16 v219, v9 offset:784
	ds_load_u8_d16 v221, v9 offset:848
	ds_load_u8_d16 v191, v9 offset:800
	ds_load_u8_d16 v192, v9 offset:864
	ds_load_u8_d16 v26, v9 offset:880
	ds_load_u8_d16 v27, v9 offset:816
	ds_load_u8_d16 v33, v9 offset:896
	ds_load_u8_d16 v3, v9 offset:960
	ds_load_u8_d16 v232, v9 offset:1024
	ds_load_u8_d16 v223, v9 offset:912
	ds_load_u8_d16 v225, v9 offset:976
	ds_load_u8_d16 v194, v9 offset:928
	ds_load_u8_d16 v138, v9 offset:992
	ds_load_u8_d16 v31, v9 offset:944
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v10, s48, v227
	ds_load_u8_d16 v235, v9 offset:1088
	ds_load_u8_d16 v236, v9 offset:1152
	ds_load_u8_d16 v218, v9 offset:1040
	ds_load_u8_d16 v220, v9 offset:1104
	ds_load_u8_d16 v174, v9 offset:1056
	ds_load_u8_d16 v176, v9 offset:1120
	ds_load_u8_d16 v13, v9 offset:1136
	ds_load_u8_d16 v14, v9 offset:1072
	ds_load_u8_d16 v237, v9 offset:1216
	ds_load_u8_d16 v240, v9 offset:1280
	ds_load_u8_d16 v222, v9 offset:1168
	ds_load_u8_d16 v224, v9 offset:1232
	ds_load_u8_d16 v177, v9 offset:1184
	ds_load_u8_d16 v178, v9 offset:1248
	ds_load_u8_d16 v15, v9 offset:1264
	ds_load_u8_d16 v16, v9 offset:1200
	ds_load_u8_d16 v243, v9 offset:1344
	ds_load_u8_d16 v244, v9 offset:1408
	ds_load_u8_d16 v228, v9 offset:1296
	ds_load_u8_d16 v229, v9 offset:1360
	ds_load_u8_d16 v185, v9 offset:1312
	ds_load_u8_d16 v186, v9 offset:1376
	ds_load_u8_d16 v22, v9 offset:1392
	ds_load_u8_d16 v23, v9 offset:1328
	ds_load_u8_d16 v245, v9 offset:1472
	ds_load_u8_d16 v249, v9 offset:1536
	ds_load_u8_d16 v230, v9 offset:1424
	ds_load_u8_d16 v231, v9 offset:1488
	ds_load_u8_d16 v187, v9 offset:1440
	ds_load_u8_d16 v188, v9 offset:1504
	ds_load_u8_d16 v24, v9 offset:1520
	ds_load_u8_d16 v25, v9 offset:1456
	ds_load_u8_d16 v254, v9 offset:1600
	ds_load_u8_d16 v252, v9 offset:1664
	ds_load_u8_d16 v233, v9 offset:1552
	ds_load_u8_d16 v234, v9 offset:1616
	ds_load_u8_d16 v155, v9 offset:1568
	ds_load_u8_d16 v118, v9 offset:1632
	ds_load_u8_d16 v35, v9 offset:1648
	ds_load_u8_d16 v168, v9 offset:1584
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v4, v9 offset:1728
	ds_load_u8_d16 v1, v9 offset:1792
	ds_load_u8_d16 v247, v9 offset:1680
	ds_load_u8_d16 v250, v9 offset:1744
	ds_load_u8_d16 v201, v9 offset:1696
	ds_load_u8_d16 v202, v9 offset:1760
	ds_load_u8_d16 v179, v9 offset:1776
	ds_load_u8_d16 v180, v9 offset:1712
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v11, s48, v34
	v_mov_b32_e32 v106, 0
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_cndmask_b32_e64 v12, 0, 1, s2
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v12
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	s_waitcnt lgkmcnt(62)
	scratch_store_b32 off, v2, off offset:36 ; 4-byte Folded Spill
	ds_load_u8_d16 v83, v9 offset:48
	ds_load_u8_d16 v207, v9 offset:64
	ds_load_u8_d16 v200, v9 offset:80
	ds_load_u8_d16 v19, v9 offset:96
	ds_load_u8_d16 v2, v9 offset:112
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v36, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:252 ; 4-byte Folded Spill
	ds_load_u8_d16 v163, v9 offset:128
	ds_load_u8_d16 v159, v9 offset:192
	ds_load_u8_d16 v208, v9 offset:144
	ds_load_u8_d16 v209, v9 offset:208
	ds_load_u8_d16 v169, v9 offset:160
	ds_load_u8_d16 v170, v9 offset:224
	ds_load_u8_d16 v2, v9 offset:240
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v37, 0
	s_mov_b32 s16, 0
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v123, off offset:24
	scratch_store_b32 off, v166, off offset:12
	scratch_store_b32 off, v49, off offset:20
	scratch_store_b32 off, v74, off offset:16
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v60, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:260 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v9 offset:176
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v12, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:264 ; 4-byte Folded Spill
	ds_load_u8_d16 v238, v9 offset:256
	ds_load_u8_d16 v239, v9 offset:320
	ds_load_u8_d16 v210, v9 offset:272
	ds_load_u8_d16 v211, v9 offset:336
	ds_load_u8_d16 v171, v9 offset:288
	ds_load_u8_d16 v172, v9 offset:352
	ds_load_u8_d16 v2, v9 offset:368
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:268 ; 4-byte Folded Spill
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
	ds_load_u8_d16 v255, v9 offset:1808
	ds_load_u8_d16 v28, v9 offset:1872
	ds_load_u8_d16 v204, v9 offset:1824
	ds_load_u8_d16 v205, v9 offset:1888
	ds_load_u8_d16 v189, v9 offset:1904
	ds_load_u8_d16 v190, v9 offset:1840
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_or_b32_e32 v144, v8, v0
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v8, v9 offset:1984
	ds_load_u8_d16 v5, v9 offset:1936
	ds_load_u8_d16 v6, v9 offset:2000
	ds_load_u8_d16 v34, v9 offset:1952
	ds_load_u8_d16 v0, v9 offset:2016
	ds_load_u8_d16 v203, v10
	ds_load_u8_d16 v198, v11
	ds_load_u8_d16 v199, v9 offset:1968
	v_mov_b32_e32 v9, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v164, 16, v144
	scratch_store_b32 off, v9, off offset:196 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:204 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:176 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:184 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:192 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:200 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:180 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:188 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:212 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:216 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:208 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v9, off offset:224 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v9, v29, v30, 0xc0c0004
	v_perm_b32 v10, v33, v3, 0xc0c0004
	v_perm_b32 v11, v246, v248, 0xc0c0004
	v_perm_b32 v12, v251, v116, 0xc0c0004
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	v_lshl_or_b32 v63, v10, 16, v9
	v_perm_b32 v9, v238, v239, 0xc0c0004
	v_perm_b32 v10, v241, v242, 0xc0c0004
	v_lshl_or_b32 v62, v12, 16, v11
	v_perm_b32 v11, v214, v215, 0xc0c0004
	v_perm_b32 v12, v216, v217, 0xc0c0004
	s_mov_b32 s19, s16
	v_lshl_or_b32 v61, v10, 16, v9
	v_perm_b32 v9, v206, v207, 0xc0c0004
	v_perm_b32 v10, v163, v159, 0xc0c0004
	v_lshl_or_b32 v78, v12, 16, v11
	v_perm_b32 v11, v181, v182, 0xc0c0004
	v_perm_b32 v12, v183, v184, 0xc0c0004
	s_mov_b32 s20, s16
	v_lshl_or_b32 v60, v10, 16, v9
	v_perm_b32 v9, v219, v221, 0xc0c0004
	v_perm_b32 v10, v223, v225, 0xc0c0004
	v_lshl_or_b32 v99, v12, 16, v11
	v_perm_b32 v11, v18, v17, 0xc0c0004
	v_perm_b32 v12, v21, v20, 0xc0c0004
	s_mov_b32 s21, s16
	v_lshl_or_b32 v79, v10, 16, v9
	v_perm_b32 v9, v210, v211, 0xc0c0004
	v_perm_b32 v10, v212, v213, 0xc0c0004
	v_lshl_or_b32 v107, v12, 16, v11
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_mov_b16_e64 v166.l, v83.l
	v_lshl_or_b32 v77, v10, 16, v9
	v_perm_b32 v9, v193, v200, 0xc0c0004
	v_perm_b32 v10, v208, v209, 0xc0c0004
	v_dual_mov_b32 v43, s23 :: v_dual_mov_b32 v40, s20
	v_dual_mov_b32 v41, s21 :: v_dual_mov_b32 v38, s18
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v76, v10, 16, v9
	v_perm_b32 v9, v191, v192, 0xc0c0004
	v_perm_b32 v10, v194, v138, 0xc0c0004
	scratch_load_b32 v123, off, off offset:24 ; 4-byte Folded Reload
	v_dual_mov_b32 v39, s19 :: v_dual_mov_b32 v36, s16
	v_mov_b32_e32 v37, s17
	v_lshl_or_b32 v100, v10, 16, v9
	v_perm_b32 v9, v171, v172, 0xc0c0004
	v_perm_b32 v10, v137, v175, 0xc0c0004
	v_perm_b32 v84, v247, v250, 0xc0c0004
	v_mov_b32_e32 v42, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v10, 16, v9
	scratch_load_b32 v9, off, off offset:36 ; 4-byte Folded Reload
	v_perm_b32 v10, v169, v170, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v19, 0xc0c0004
	v_lshl_or_b32 v97, v10, 16, v9
	v_perm_b32 v9, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v31, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v108, v10, 16, v9
	scratch_load_b32 v9, off, off offset:268 ; 4-byte Folded Reload
	v_perm_b32 v10, v113, v86, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v85, v9, 0xc0c0004
	v_lshl_or_b32 v106, v10, 16, v9
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v9, off, off offset:252
	scratch_load_b32 v10, off, off offset:260
	scratch_load_b32 v11, off, off offset:264
	s_waitcnt vmcnt(2)
	v_perm_b32 v9, v83, v9, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v10, 16, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v9, s12, v144
	ds_load_b128 v[109:112], v9
	ds_load_b128 v[9:12], v9 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[109:112], v[60:63], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[9:12], v[60:63], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[109:112], v[76:79], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[9:12], v[76:79], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[109:112], v[97:100], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[9:12], v[97:100], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[109:112], v[105:108], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[9:12], v[105:108], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v9, v1, v7, 0xc0c0004
	v_perm_b32 v10, v2, v8, 0xc0c0004
	v_perm_b32 v11, v249, v254, 0xc0c0004
	v_perm_b32 v105, v252, v4, 0xc0c0004
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v109, s12, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v240, v243, 0xc0c0004
	v_perm_b32 v10, v244, v245, 0xc0c0004
	v_lshl_or_b32 v11, v105, 16, v11
	v_perm_b32 v105, v236, v237, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v232, v235, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v105, 16, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[105:108], v109
	ds_load_b128 v[109:112], v109 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[105:108], v[9:12], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[109:112], v[9:12], v[52:59] neg_lo:[1,1,0]
	v_perm_b32 v9, v255, v28, 0xc0c0004
	v_perm_b32 v10, v5, v6, 0xc0c0004
	v_perm_b32 v11, v233, v234, 0xc0c0004
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v228, v229, 0xc0c0004
	v_perm_b32 v10, v230, v231, 0xc0c0004
	v_lshl_or_b32 v11, v84, 16, v11
	v_perm_b32 v84, v222, v224, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v218, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v84, 16, v9
	v_perm_b32 v84, v201, v202, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[105:108], v[9:12], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[109:112], v[9:12], v[68:75] neg_lo:[1,1,0]
	v_perm_b32 v9, v204, v205, 0xc0c0004
	v_perm_b32 v10, v34, v0, 0xc0c0004
	v_perm_b32 v11, v155, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v185, v186, 0xc0c0004
	v_perm_b32 v10, v187, v188, 0xc0c0004
	v_lshl_or_b32 v11, v84, 16, v11
	v_perm_b32 v84, v177, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v174, v176, 0xc0c0004
	v_lshl_or_b32 v9, v84, 16, v9
	v_perm_b32 v84, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[105:108], v[9:12], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[109:112], v[9:12], v[89:96] neg_lo:[1,1,0]
	v_perm_b32 v9, v190, v189, 0xc0c0004
	v_perm_b32 v10, v199, v198, 0xc0c0004
	v_perm_b32 v11, v168, v35, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v23, v22, 0xc0c0004
	v_perm_b32 v10, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v11, v84, 16, v11
	v_perm_b32 v84, v16, v15, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v84, 16, v9
	v_wmma_i32_16x16x16_iu8 v[97:104], v[105:108], v[9:12], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[109:112], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v60
	v_cvt_f32_i32_e32 v112, v53
	v_cvt_f32_i32_e32 v108, v57
	v_cvt_f32_i32_e32 v106, v59
	v_cvt_f32_i32_e32 v59, v92
	scratch_store_b32 off, v9, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v61
	scratch_load_b32 v92, off, off offset:300 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v57, v94
	scratch_load_b32 v94, off, off offset:232 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v53, v37
	scratch_store_b32 off, v9, off offset:204 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v62
	v_cvt_f32_i32_e32 v62, v74
	scratch_load_b32 v74, off, off offset:16 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v39, v49
	scratch_store_b32 off, v9, off offset:192 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v63
	scratch_load_b32 v49, off, off offset:20 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v111, v52
	v_cvt_f32_i32_e32 v109, v54
	v_cvt_f32_i32_e32 v110, v55
	scratch_store_b32 off, v9, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v64
	v_cvt_f32_i32_e32 v107, v56
	v_cvt_f32_i32_e32 v105, v58
	v_cvt_f32_i32_e32 v64, v72
	v_cvt_f32_i32_e32 v63, v75
	scratch_store_b32 off, v9, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v65
	v_cvt_f32_i32_e32 v65, v73
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v75, v81
	v_cvt_f32_i32_e32 v73, v82
	scratch_store_b32 off, v9, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v66
	v_cvt_f32_i32_e32 v66, v70
	v_cvt_f32_i32_e32 v60, v89
	v_cvt_f32_i32_e32 v61, v90
	v_cvt_f32_i32_e32 v58, v91
	scratch_store_b32 off, v9, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v67
	v_cvt_f32_i32_e32 v67, v71
	v_cvt_f32_i32_e32 v56, v93
	v_cvt_f32_i32_e32 v54, v95
	v_cvt_f32_i32_e32 v55, v96
	scratch_store_b32 off, v9, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v76
	v_cvt_f32_i32_e32 v76, v83
	v_mov_b16_e64 v83.l, v166.l
	scratch_load_b32 v166, off, off offset:12 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v81, v97
	scratch_store_b32 off, v9, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v77
	v_cvt_f32_i32_e32 v82, v98
	v_cvt_f32_i32_e32 v80, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v70, v103
	scratch_store_b32 off, v9, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v78
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v71, v104
	v_cvt_f32_i32_e32 v52, v36
	v_cvt_f32_i32_e32 v36, v38
	scratch_store_b32 off, v9, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v79
	v_cvt_f32_i32_e32 v79, v99
	v_cvt_f32_i32_e32 v11, v40
	v_cvt_f32_i32_e32 v12, v41
	v_cvt_f32_i32_e32 v10, v42
	scratch_store_b32 off, v9, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v43
	v_cvt_f32_i32_e32 v42, v46
	v_cvt_f32_i32_e32 v43, v47
	v_cvt_f32_i32_e32 v38, v48
	v_cvt_f32_i32_e32 v40, v50
	v_cvt_f32_i32_e32 v41, v51
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v82, off offset:872
	scratch_store_b32 off, v81, off offset:868
	scratch_store_b32 off, v45, off offset:864
	scratch_store_b32 off, v44, off offset:860
	scratch_store_b32 off, v43, off offset:856
	scratch_store_b32 off, v42, off offset:852
	scratch_store_b32 off, v80, off offset:848
	scratch_store_b32 off, v79, off offset:844
	scratch_store_b32 off, v78, off offset:840
	scratch_store_b32 off, v77, off offset:836
	scratch_store_b32 off, v41, off offset:832
	scratch_store_b32 off, v40, off offset:828
	scratch_store_b32 off, v39, off offset:824
	scratch_store_b32 off, v38, off offset:820
	scratch_store_b32 off, v76, off offset:816
	scratch_store_b32 off, v75, off offset:812
	scratch_store_b32 off, v73, off offset:808
	scratch_store_b32 off, v72, off offset:804
	scratch_store_b32 off, v71, off offset:800
	scratch_store_b32 off, v70, off offset:796
	scratch_store_b32 off, v112, off offset:600
	scratch_store_b32 off, v111, off offset:596
	scratch_store_b32 off, v110, off offset:592
	scratch_store_b32 off, v109, off offset:588
	scratch_store_b32 off, v108, off offset:584
	scratch_store_b32 off, v107, off offset:580
	scratch_store_b32 off, v106, off offset:576
	scratch_store_b32 off, v105, off offset:572
	scratch_store_b32 off, v69, off offset:568
	scratch_store_b32 off, v68, off offset:564
	scratch_store_b32 off, v67, off offset:560
	scratch_store_b32 off, v66, off offset:556
	s_clause 0x13                           ; 80-byte Folded Spill
	scratch_store_b32 off, v65, off offset:552
	scratch_store_b32 off, v64, off offset:548
	scratch_store_b32 off, v63, off offset:544
	scratch_store_b32 off, v62, off offset:540
	scratch_store_b32 off, v61, off offset:536
	scratch_store_b32 off, v60, off offset:532
	scratch_store_b32 off, v59, off offset:528
	scratch_store_b32 off, v58, off offset:524
	scratch_store_b32 off, v57, off offset:520
	scratch_store_b32 off, v56, off offset:516
	scratch_store_b32 off, v55, off offset:512
	scratch_store_b32 off, v54, off offset:508
	scratch_store_b32 off, v53, off offset:504
	scratch_store_b32 off, v52, off offset:500
	scratch_store_b32 off, v37, off offset:496
	scratch_store_b32 off, v36, off offset:492
	scratch_store_b32 off, v12, off offset:488
	scratch_store_b32 off, v11, off offset:484
	scratch_store_b32 off, v10, off offset:480
	scratch_store_b32 off, v9, off offset:476
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_mov_b32_e32 v62, 0
	scratch_store_b32 off, v9, off offset:288 ; 4-byte Folded Spill
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	scratch_store_b32 off, v9, off offset:308 ; 4-byte Folded Spill
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v91, 0
	scratch_store_b32 off, v9, off offset:312 ; 4-byte Folded Spill
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v68, 0
	scratch_store_b32 off, v9, off offset:276 ; 4-byte Folded Spill
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v9, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_perm_b32 v18, v21, v20, 0xc0c0004
	scratch_load_b32 v20, off, off offset:268 ; 4-byte Folded Reload
	s_mov_b32 s12, 0
	v_perm_b32 v11, v29, v30, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v43, s19 :: v_dual_add_nc_u32 v10, s31, v144
	v_dual_mov_b32 v42, s18 :: v_dual_add_nc_u32 v9, s31, v164
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[97:100], v10 offset:4096
	ds_load_b128 v[101:104], v10
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v3, v33, v3, 0xc0c0004
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(5)
	ds_load_b128 v[89:92], v9 offset:4096
	s_waitcnt vmcnt(4)
	ds_load_b128 v[93:96], v9
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v9, v246, v248, 0xc0c0004
	v_perm_b32 v29, v251, v116, 0xc0c0004
	v_perm_b32 v30, v238, v239, 0xc0c0004
	v_perm_b32 v33, v241, v242, 0xc0c0004
	v_lshl_or_b32 v12, v3, 16, v11
	v_perm_b32 v3, v206, v207, 0xc0c0004
	v_lshl_or_b32 v11, v29, 16, v9
	v_perm_b32 v9, v163, v159, 0xc0c0004
	v_lshl_or_b32 v10, v33, 16, v30
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v40, s16
	v_dual_mov_b32 v39, s15 :: v_dual_mov_b32 v38, s14
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 16, v3
	v_dual_mov_b32 v37, s13 :: v_dual_mov_b32 v36, s12
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v1, v1, v7, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v2, v2, v8, 0xc0c0004
	v_perm_b32 v3, v249, v254, 0xc0c0004
	v_perm_b32 v4, v252, v4, 0xc0c0004
	v_perm_b32 v7, v240, v243, 0xc0c0004
	v_perm_b32 v8, v244, v245, 0xc0c0004
	v_perm_b32 v29, v232, v235, 0xc0c0004
	v_perm_b32 v30, v236, v237, 0xc0c0004
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[101:104], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v2, 16, v1
	v_lshl_or_b32 v62, v4, 16, v3
	v_lshl_or_b32 v61, v8, 16, v7
	v_lshl_or_b32 v60, v30, 16, v29
	v_wmma_i32_16x16x16_iu8 v[52:59], v[97:100], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v29, v193, v200, 0xc0c0004
	v_perm_b32 v30, v208, v209, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[93:96], v[60:63], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[89:92], v[60:63], v[52:59] neg_lo:[1,1,0]
	scratch_load_b32 v60, off, off offset:36 ; 4-byte Folded Reload
	v_perm_b32 v1, v219, v221, 0xc0c0004
	v_perm_b32 v2, v223, v225, 0xc0c0004
	v_perm_b32 v3, v214, v215, 0xc0c0004
	v_perm_b32 v4, v216, v217, 0xc0c0004
	v_perm_b32 v7, v210, v211, 0xc0c0004
	v_perm_b32 v8, v212, v213, 0xc0c0004
	v_lshl_or_b32 v9, v30, 16, v29
	v_perm_b32 v28, v255, v28, 0xc0c0004
	v_perm_b32 v29, v5, v6, 0xc0c0004
	v_lshl_or_b32 v12, v2, 16, v1
	v_lshl_or_b32 v11, v4, 16, v3
	v_lshl_or_b32 v10, v8, 16, v7
	v_perm_b32 v64, v228, v229, 0xc0c0004
	v_perm_b32 v65, v230, v231, 0xc0c0004
	v_perm_b32 v66, v218, v220, 0xc0c0004
	v_perm_b32 v67, v222, v224, 0xc0c0004
	v_lshl_or_b32 v108, v29, 16, v28
	v_perm_b32 v28, v191, v192, 0xc0c0004
	v_perm_b32 v29, v194, v138, 0xc0c0004
	v_perm_b32 v70, v169, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[101:104], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v65, 16, v64
	v_lshl_or_b32 v105, v67, 16, v66
	v_perm_b32 v0, v34, v0, 0xc0c0004
	v_perm_b32 v30, v233, v234, 0xc0c0004
	v_perm_b32 v33, v247, v250, 0xc0c0004
	v_perm_b32 v68, v171, v172, 0xc0c0004
	v_perm_b32 v69, v137, v175, 0xc0c0004
	v_perm_b32 v34, v174, v176, 0xc0c0004
	v_perm_b32 v76, v177, v178, 0xc0c0004
	v_lshl_or_b32 v107, v33, 16, v30
	v_perm_b32 v30, v181, v182, 0xc0c0004
	v_perm_b32 v33, v183, v184, 0xc0c0004
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_lshl_or_b32 v109, v76, 16, v34
	v_perm_b32 v25, v25, v24, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[93:96], v[105:108], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v88, v44
	v_lshl_or_b32 v22, v25, 16, v22
	s_waitcnt vmcnt(1)
	v_perm_b32 v21, v85, v20, 0xc0c0004
	scratch_load_b32 v20, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v19, v60, v19, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[97:100], v[9:12], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v29, 16, v28
	v_perm_b32 v28, v155, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v9, v70, 16, v19
	v_perm_b32 v19, v204, v205, 0xc0c0004
	v_perm_b32 v29, v201, v202, 0xc0c0004
	v_lshl_or_b32 v11, v33, 16, v30
	v_lshl_or_b32 v10, v69, 16, v68
	v_perm_b32 v30, v185, v186, 0xc0c0004
	v_lshl_or_b32 v112, v0, 16, v19
	v_lshl_or_b32 v111, v29, 16, v28
	v_perm_b32 v0, v27, v26, 0xc0c0004
	v_perm_b32 v33, v187, v188, 0xc0c0004
	v_perm_b32 v19, v31, v203, 0xc0c0004
	v_perm_b32 v26, v113, v86, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[68:75], v[101:104], v[9:12], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v110, v33, 16, v30
	v_perm_b32 v29, v16, v15, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[89:92], v[105:108], v[60:67] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v105, v45
	v_cvt_f32_i32_e32 v106, v47
	v_wmma_i32_16x16x16_iu8 v[68:75], v[93:96], v[109:112], v[68:75] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v107, v3
	v_cvt_f32_i32_e32 v108, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v84, v70
	v_cvt_f32_i32_e32 v70, v74
	scratch_load_b32 v74, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v27, v83, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:260
	scratch_load_b32 v28, off, off offset:264
	v_wmma_i32_16x16x16_iu8 v[76:83], v[97:100], v[9:12], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[89:92], v[109:112], v[76:83] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v109, v1
	v_cvt_f32_i32_e32 v110, v2
	v_cvt_f32_i32_e32 v111, v69
	v_cvt_f32_i32_e32 v112, v71
	v_cvt_f32_i32_e32 v71, v72
	v_cvt_f32_i32_e32 v72, v73
	v_cvt_f32_i32_e32 v73, v75
	v_cvt_f32_i32_e32 v47, v80
	v_cvt_f32_i32_e32 v45, v82
	s_waitcnt vmcnt(0)
	v_perm_b32 v28, v28, v20, 0xc0c0004
	v_lshl_or_b32 v20, v19, 16, v0
	v_lshl_or_b32 v19, v18, 16, v17
	v_lshl_or_b32 v18, v26, 16, v21
	v_perm_b32 v0, v190, v189, 0xc0c0004
	v_lshl_or_b32 v17, v28, 16, v27
	v_perm_b32 v21, v199, v198, 0xc0c0004
	v_perm_b32 v26, v168, v35, 0xc0c0004
	v_perm_b32 v27, v180, v179, 0xc0c0004
	v_perm_b32 v28, v14, v13, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[101:104], v[17:20], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v21, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v23, v27, 16, v26
	v_lshl_or_b32 v21, v29, 16, v28
	v_wmma_i32_16x16x16_iu8 v[36:43], v[97:100], v[17:20], v[36:43] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v99, v49
	scratch_load_b32 v49, off, off offset:20 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v0, v6
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[21:24], v[9:16] neg_lo:[1,1,0]
	scratch_load_b32 v94, off, off offset:232 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[36:43], v[89:92], v[21:24], v[36:43] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v166, off, off offset:12
	scratch_load_b32 v92, off, off offset:300
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	v_cvt_f32_i32_e32 v104, v46
	v_cvt_f32_i32_e32 v97, v48
	v_cvt_f32_i32_e32 v98, v50
	v_cvt_f32_i32_e32 v100, v51
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	v_cvt_f32_i32_e32 v90, v52
	v_cvt_f32_i32_e32 v93, v53
	v_cvt_f32_i32_e32 v91, v54
	v_cvt_f32_i32_e32 v95, v55
	v_cvt_f32_i32_e32 v54, v58
	v_cvt_f32_i32_e32 v55, v59
	v_cvt_f32_i32_e32 v102, v5
	v_cvt_f32_i32_e32 v101, v7
	v_cvt_f32_i32_e32 v103, v8
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v96, v61
	v_cvt_f32_i32_e32 v58, v62
	v_cvt_f32_i32_e32 v60, v63
	v_cvt_f32_i32_e32 v52, v64
	v_cvt_f32_i32_e32 v53, v65
	v_cvt_f32_i32_e32 v50, v66
	v_cvt_f32_i32_e32 v51, v67
	v_cvt_f32_i32_e32 v89, v68
	v_cvt_f32_i32_e32 v64, v76
	v_cvt_f32_i32_e32 v65, v77
	v_cvt_f32_i32_e32 v63, v78
	v_cvt_f32_i32_e32 v66, v79
	v_cvt_f32_i32_e32 v48, v81
	v_cvt_f32_i32_e32 v46, v83
	v_cvt_f32_i32_e32 v75, v9
	v_cvt_f32_i32_e32 v76, v10
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	v_cvt_f32_i32_e32 v69, v14
	v_cvt_f32_i32_e32 v67, v15
	v_cvt_f32_i32_e32 v68, v16
	v_cvt_f32_i32_e32 v61, v36
	v_cvt_f32_i32_e32 v62, v37
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v11, v40
	v_cvt_f32_i32_e32 v12, v41
	v_cvt_f32_i32_e32 v9, v42
	v_cvt_f32_i32_e32 v10, v43
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
.LBB0_12:
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt lgkmcnt(3)
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:228
	scratch_load_b32 v1, off, off offset:236
	scratch_load_b32 v3, off, off offset:320
	scratch_load_b32 v155, off, off offset:240
	scratch_load_b32 v4, off, off offset:316
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s30, 31
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v112, off offset:1088
	scratch_store_b32 off, v111, off offset:1084
	scratch_store_b32 off, v109, off offset:1080
	scratch_store_b32 off, v108, off offset:1076
	scratch_store_b32 off, v107, off offset:1072
	scratch_store_b32 off, v106, off offset:1068
	scratch_store_b32 off, v105, off offset:1064
	scratch_store_b32 off, v104, off offset:1060
	scratch_store_b32 off, v88, off offset:1056
	scratch_store_b32 off, v73, off offset:956
	scratch_store_b32 off, v102, off offset:952
	scratch_store_b32 off, v101, off offset:948
	scratch_store_b32 off, v100, off offset:944
	scratch_store_b32 off, v99, off offset:940
	scratch_store_b32 off, v98, off offset:936
	scratch_store_b32 off, v97, off offset:932
	scratch_store_b32 off, v63, off offset:928
	scratch_store_b32 off, v62, off offset:924
	scratch_store_b32 off, v96, off offset:920
	scratch_store_b32 off, v61, off offset:916
	scratch_store_b32 off, v60, off offset:912
	scratch_store_b32 off, v59, off offset:908
	scratch_store_b32 off, v58, off offset:904
	scratch_store_b32 off, v95, off offset:900
	scratch_store_b32 off, v91, off offset:896
	scratch_store_b32 off, v90, off offset:892
	scratch_store_b32 off, v37, off offset:880
	scratch_store_b32 off, v36, off offset:876
	scratch_store_b32 off, v57, off offset:792
	scratch_store_b32 off, v56, off offset:788
	scratch_store_b32 off, v55, off offset:784
	scratch_store_b32 off, v54, off offset:780
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v53, off offset:712
	scratch_store_b32 off, v52, off offset:708
	scratch_store_b32 off, v51, off offset:700
	scratch_store_b32 off, v50, off offset:680
	scratch_store_b32 off, v48, off offset:648
	scratch_store_b32 off, v47, off offset:644
	scratch_store_b32 off, v46, off offset:640
	scratch_store_b32 off, v45, off offset:632
	scratch_store_b32 off, v12, off offset:616
	scratch_store_b32 off, v11, off offset:612
	scratch_store_b32 off, v10, off offset:608
	scratch_store_b32 off, v9, off offset:604
	s_lshr_b32 s0, s0, 27
	s_mov_b32 s11, 0x31027000
	s_add_i32 s0, s30, s0
	s_mov_b32 s10, 0x7ffffffe
	s_ashr_i32 s0, s0, 5
	.loc	1 394 39                        ; generate_amdgcn.py:394:39
	s_waitcnt vmcnt(5)
	v_add3_u32 v7, s33, s27, v92
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cmp_lt_i32 s0, s1
	.loc	1 390 40                        ; generate_amdgcn.py:390:40
	s_mul_i32 s4, s0, s35
	.loc	1 387 34                        ; generate_amdgcn.py:387:34
	s_cselect_b32 s5, -1, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v2, 32, v114
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_and_b32 s29, s29, 0xffff
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	v_add_nc_u32_e32 v9, s47, v94
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v10, s47, v227
	v_mov_b32_e32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v11, s47, v226
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v78, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v22, 0
	s_mov_b32 s12, 0
	scratch_load_b32 v88, off, off offset:244 ; 4-byte Folded Reload
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v47, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v0, v0, s0, 1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v1, v1, s4, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v5, v155, s0, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_add3_u32 v2, 0, v4, v2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	scratch_load_b32 v4, off, off offset:248 ; 4-byte Folded Reload
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	scratch_store_b32 off, v7, off offset:884 ; 4-byte Folded Spill
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_add_lshl_u32 v7, v7, s4, 1
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v6, v88, s0, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v4, v4, s0, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_and_b32_e32 v3, 28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v12, v2, v3
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_cndmask_b32_e32 v2, 0x80000000, v4, vcc_lo
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v0, off offset:1124 ; 4-byte Folded Spill
	v_dual_cndmask_b32 v3, 0x80000000, v5 :: v_dual_cndmask_b32 v4, 0x80000000, v6
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	buffer_load_u16 v0, v2, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v2, 0 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_store_b32 v12, v1 offset:36864
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1156 ; 4-byte Folded Spill
	buffer_load_u16 v0, v3, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1132 ; 4-byte Folded Spill
	buffer_load_u16 v0, v4, s[8:11], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1128 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	buffer_load_u16 v0, v5, s[28:31], 0 offen
	scratch_store_b32 off, v2, off offset:272 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:260 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:252 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:280 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:284 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:292 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:268 ; 4-byte Folded Spill
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v175, 0, v1
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v0, 16, v0
	ds_load_b128 v[17:20], v175 offset:36864
	ds_load_b128 v[13:16], v175 offset:36880
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	scratch_store_b32 off, v1, off offset:264 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v1, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	ds_load_b128 v[1:4], v175 offset:37376
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[1:4], off offset:1108 ; 16-byte Folded Spill
	ds_load_b128 v[1:4], v175 offset:37392
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[1:4], off offset:1092 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_store_b32 off, v12, off offset:888 ; 4-byte Folded Spill
	ds_store_b32 v12, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 372 26                        ; generate_amdgcn.py:372:26
	ds_load_u8_d16 v170, v9
	ds_load_u8_d16 v222, v9 offset:16
	ds_load_u8_d16 v0, v9 offset:32
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v206, off, off offset:168
	scratch_load_b32 v209, off, off offset:28
	scratch_load_b32 v94, off, off offset:172
	v_mov_b32_e32 v12, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1216 ; 4-byte Folded Spill
	ds_load_u8_d16 v6, v9 offset:48
	ds_load_u8_d16 v164, v9 offset:64
	ds_load_u8_d16 v223, v9 offset:80
	ds_load_u8_d16 v0, v9 offset:96
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1220 ; 4-byte Folded Spill
	ds_load_u8_d16 v7, v9 offset:112
	ds_load_u8_d16 v169, v9 offset:128
	ds_load_u8_d16 v0, v9 offset:192
	ds_load_u8_d16 v224, v9 offset:144
	ds_load_u8_d16 v225, v9 offset:208
	ds_load_u8_d16 v1, v9 offset:160
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1224 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:224
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1228 ; 4-byte Folded Spill
	ds_load_u8_d16 v8, v9 offset:240
	ds_load_u8_d16 v114, v9 offset:176
	ds_load_u8_d16 v168, v9 offset:256
	ds_load_u8_d16 v254, v9 offset:320
	ds_load_u8_d16 v231, v9 offset:272
	ds_load_u8_d16 v232, v9 offset:336
	ds_load_u8_d16 v1, v9 offset:288
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1252 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1260 ; 4-byte Folded Spill
	ds_load_u8_d16 v238, v9 offset:368
	ds_load_u8_d16 v239, v9 offset:304
	ds_load_u8_d16 v255, v9 offset:384
	ds_load_u8_d16 v185, v9 offset:448
	ds_load_u8_d16 v233, v9 offset:400
	ds_load_u8_d16 v234, v9 offset:464
	ds_load_u8_d16 v1, v9 offset:416
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1268 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:480
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1276 ; 4-byte Folded Spill
	ds_load_u8_d16 v240, v9 offset:496
	ds_load_u8_d16 v1, v9 offset:432
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1140 ; 4-byte Folded Spill
	ds_load_u8_d16 v188, v9 offset:512
	ds_load_u8_d16 v190, v9 offset:576
	ds_load_u8_d16 v235, v9 offset:528
	ds_load_u8_d16 v236, v9 offset:592
	ds_load_u8_d16 v1, v9 offset:544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1280 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1288 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:624
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1152 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:560
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1160 ; 4-byte Folded Spill
	ds_load_u8_d16 v191, v9 offset:640
	ds_load_u8_d16 v194, v9 offset:704
	ds_load_u8_d16 v237, v9 offset:656
	ds_load_u8_d16 v242, v9 offset:720
	ds_load_u8_d16 v215, v9 offset:672
	ds_load_u8_d16 v217, v9 offset:736
	ds_load_u8_d16 v1, v9 offset:752
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1168 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:688
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1176 ; 4-byte Folded Spill
	ds_load_u8_d16 v200, v9 offset:768
	ds_load_u8_d16 v201, v9 offset:832
	ds_load_u8_d16 v245, v9 offset:784
	ds_load_u8_d16 v246, v9 offset:848
	ds_load_u8_d16 v219, v9 offset:800
	ds_load_u8_d16 v221, v9 offset:864
	ds_load_u8_d16 v1, v9 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1188 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1192 ; 4-byte Folded Spill
	ds_load_u8_d16 v203, v9 offset:896
	ds_load_u8_d16 v204, v9 offset:960
	ds_load_u8_d16 v176, v9 offset:1024
	ds_load_u8_d16 v249, v9 offset:912
	ds_load_u8_d16 v250, v9 offset:976
	ds_load_u8_d16 v3, v9 offset:928
	ds_load_u8_d16 v163, v9 offset:992
	ds_load_u8_d16 v1, v9 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1204 ; 4-byte Folded Spill
	ds_load_u8_d16 v177, v9 offset:1088
	ds_load_u8_d16 v178, v9 offset:1152
	ds_load_u8_d16 v243, v9 offset:1040
	ds_load_u8_d16 v244, v9 offset:1104
	ds_load_u8_d16 v1, v9 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1248 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1256 ; 4-byte Folded Spill
	ds_load_u8_d16 v241, v9 offset:1136
	ds_load_u8_d16 v1, v9 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1136 ; 4-byte Folded Spill
	ds_load_u8_d16 v181, v9 offset:1216
	ds_load_u8_d16 v198, v9 offset:1280
	ds_load_u8_d16 v247, v9 offset:1168
	ds_load_u8_d16 v248, v9 offset:1232
	ds_load_u8_d16 v1, v9 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1264 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1272 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1144 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1148 ; 4-byte Folded Spill
	ds_load_u8_d16 v184, v9 offset:1344
	ds_load_u8_d16 v116, v9 offset:1408
	ds_load_u8_d16 v251, v9 offset:1296
	ds_load_u8_d16 v252, v9 offset:1360
	ds_load_u8_d16 v1, v9 offset:1312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1284 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1292 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1164 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1172 ; 4-byte Folded Spill
	ds_load_u8_d16 v193, v9 offset:1472
	ds_load_u8_d16 v186, v9 offset:1536
	ds_load_u8_d16 v199, v9 offset:1424
	ds_load_u8_d16 v34, v9 offset:1488
	ds_load_u8_d16 v214, v9 offset:1440
	ds_load_u8_d16 v216, v9 offset:1504
	ds_load_u8_d16 v1, v9 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1180 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v9 offset:1456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1184 ; 4-byte Folded Spill
	ds_load_u8_d16 v189, v9 offset:1600
	ds_load_u8_d16 v187, v9 offset:1664
	ds_load_u8_d16 v171, v9 offset:1552
	ds_load_u8_d16 v172, v9 offset:1616
	ds_load_u8_d16 v220, v9 offset:1568
	ds_load_u8_d16 v1, v9 offset:1632
	ds_load_u8_d16 v2, v9 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:1196 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v9 offset:1584
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:1200 ; 4-byte Folded Spill
	ds_load_u8_d16 v192, v9 offset:1728
	ds_load_u8_d16 v137, v9 offset:1792
	ds_load_u8_d16 v33, v9 offset:1680
	ds_load_u8_d16 v174, v9 offset:1744
	ds_load_u8_d16 v2, v9 offset:1696
	ds_load_u8_d16 v4, v9 offset:1760
	ds_load_u8_d16 v5, v9 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:1208 ; 4-byte Folded Spill
	ds_load_u8_d16 v5, v9 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:1212 ; 4-byte Folded Spill
	ds_load_u8_d16 v118, v9 offset:1856
	ds_load_u8_d16 v138, v9 offset:1920
	ds_load_u8_d16 v179, v9 offset:1808
	ds_load_u8_d16 v180, v9 offset:1872
	ds_load_u8_d16 v159, v9 offset:1824
	ds_load_u8_d16 v228, v9 offset:1888
	ds_load_u8_d16 v5, v9 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:1232 ; 4-byte Folded Spill
	ds_load_u8_d16 v5, v9 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:1236 ; 4-byte Folded Spill
	ds_load_u8_d16 v202, v9 offset:1984
	ds_load_u8_d16 v182, v9 offset:1936
	ds_load_u8_d16 v183, v9 offset:2000
	ds_load_u8_d16 v229, v9 offset:1952
	ds_load_u8_d16 v230, v9 offset:2016
	ds_load_u8_d16 v218, v10
	ds_load_u8_d16 v5, v11
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:1240 ; 4-byte Folded Spill
	ds_load_u8_d16 v5, v9 offset:1968
	v_mov_b32_e32 v9, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:1244 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v23, v235, v236, 0xc0c0004
	v_perm_b32 v24, v237, v242, 0xc0c0004
	v_dual_mov_b32 v213, v110 :: v_dual_mov_b32 v226, v155
	v_dual_mov_b32 v110, v70 :: v_dual_mov_b32 v109, v69
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v69, v24, 16, v23
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1280
	scratch_load_b32 v23, off, off offset:1288
	v_perm_b32 v9, v200, v201, 0xc0c0004
	v_perm_b32 v10, v203, v204, 0xc0c0004
	v_perm_b32 v11, v188, v190, 0xc0c0004
	v_perm_b32 v21, v191, v194, 0xc0c0004
	v_perm_b32 v22, v249, v250, 0xc0c0004
	v_dual_mov_b32 v205, v68 :: v_dual_mov_b32 v166, v103
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v168, v254, 0xc0c0004
	v_perm_b32 v10, v255, v185, 0xc0c0004
	v_lshl_or_b32 v11, v21, 16, v11
	v_perm_b32 v21, v169, v0, 0xc0c0004
	v_mov_b32_e32 v207, v67
	s_mov_b32 s13, s12
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v170, v164, 0xc0c0004
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	v_lshl_or_b32 v9, v21, 16, v9
	v_perm_b32 v21, v245, v246, 0xc0c0004
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_mov_b32_e32 v155, v88
	v_mov_b32_e32 v88, v84
	v_lshl_or_b32 v70, v22, 16, v21
	v_perm_b32 v21, v231, v232, 0xc0c0004
	v_perm_b32 v22, v233, v234, 0xc0c0004
	v_perm_b32 v24, v215, v217, 0xc0c0004
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v211, v209 :: v_dual_mov_b32 v112, v72
	v_dual_mov_b32 v209, v64 :: v_dual_mov_b32 v30, v93
	v_lshl_or_b32 v68, v22, 16, v21
	v_perm_b32 v21, v222, v223, 0xc0c0004
	v_perm_b32 v22, v224, v225, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v111, v71 :: v_dual_mov_b32 v212, v94
	v_mov_b32_e32 v113, v75
	v_mov_b32_e32 v29, v76
	v_lshl_or_b32 v67, v22, 16, v21
	v_perm_b32 v21, v219, v221, 0xc0c0004
	v_perm_b32 v22, v3, v163, 0xc0c0004
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_xor_b32_e32 v31, 16, v144
	v_mov_b32_e32 v210, v65
	v_mov_b32_e32 v208, v66
	scratch_load_b32 v123, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_lshl_or_b32 v86, v22, 16, v21
	s_waitcnt vmcnt(1)
	v_perm_b32 v23, v5, v23, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1252
	scratch_load_b32 v21, off, off offset:1260
	v_lshl_or_b32 v85, v24, 16, v23
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v5, v21, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1268
	scratch_load_b32 v22, off, off offset:1276
	s_waitcnt vmcnt(0)
	v_perm_b32 v22, v5, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v22, 16, v21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1216
	scratch_load_b32 v21, off, off offset:1220
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v5, v21, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1224
	scratch_load_b32 v22, off, off offset:1228
	s_waitcnt vmcnt(0)
	v_perm_b32 v22, v5, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v22, 16, v21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1188
	scratch_load_b32 v21, off, off offset:1192
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v21, v5, 0xc0c0004
	scratch_load_b32 v5, off, off offset:1204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v22, v5, v218, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1152
	scratch_load_b32 v23, off, off offset:1160
	v_lshl_or_b32 v100, v22, 16, v21
	v_perm_b32 v21, v239, v238, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v23, v23, v5, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1168
	scratch_load_b32 v24, off, off offset:1176
	s_waitcnt vmcnt(0)
	v_perm_b32 v24, v24, v5, 0xc0c0004
	scratch_load_b32 v5, off, off offset:1140 ; 4-byte Folded Reload
	v_lshl_or_b32 v99, v24, 16, v23
	s_waitcnt vmcnt(0)
	v_perm_b32 v22, v5, v240, 0xc0c0004
	v_mov_b32_e32 v5, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v22, 16, v21
	v_perm_b32 v21, v6, v7, 0xc0c0004
	v_perm_b32 v22, v114, v8, 0xc0c0004
	v_lshl_or_b32 v97, v22, 16, v21
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v21, s46, v144
	ds_load_b128 v[101:104], v21
	ds_load_b128 v[105:108], v21 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_dual_mov_b32 v28, s19 :: v_dual_mov_b32 v27, s18
	v_mov_b32_e32 v24, s15
	v_dual_mov_b32 v26, s17 :: v_dual_mov_b32 v25, s16
	v_dual_mov_b32 v22, s13 :: v_dual_mov_b32 v23, s14
	v_mov_b32_e32 v21, s12
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[101:104], v[9:12], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[105:108], v[9:12], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v9, v137, v118, 0xc0c0004
	v_perm_b32 v10, v138, v202, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[51:58], v[101:104], v[67:70], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[105:108], v[67:70], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[101:104], v[83:86], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[105:108], v[83:86], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v11, v186, v189, 0xc0c0004
	v_perm_b32 v83, v187, v192, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v198, v184, 0xc0c0004
	v_perm_b32 v10, v116, v193, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[89:96], v[101:104], v[97:100], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[105:108], v[97:100], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v11, v83, 16, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v176, v177, 0xc0c0004
	v_perm_b32 v83, v178, v181, 0xc0c0004
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	v_add_nc_u32_e32 v97, s46, v31
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	v_perm_b32 v101, v33, v174, 0xc0c0004
	v_mov_b32_e32 v103, v166
	scratch_load_b32 v166, off, off offset:12 ; 4-byte Folded Reload
	v_lshl_or_b32 v9, v83, 16, v9
	.loc	1 378 26                        ; generate_amdgcn.py:378:26
	ds_load_b128 v[83:86], v97
	ds_load_b128 v[97:100], v97 offset:4096
	.loc	1 379 23                        ; generate_amdgcn.py:379:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[35:42], v[83:86], v[9:12], v[35:42] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[97:100], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_perm_b32 v9, v179, v180, 0xc0c0004
	v_perm_b32 v10, v182, v183, 0xc0c0004
	v_perm_b32 v11, v171, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v102, v44
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v251, v252, 0xc0c0004
	v_perm_b32 v10, v199, v34, 0xc0c0004
	v_lshl_or_b32 v11, v101, 16, v11
	v_perm_b32 v101, v247, v248, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v243, v244, 0xc0c0004
	v_lshl_or_b32 v9, v101, 16, v9
	v_perm_b32 v101, v2, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[83:86], v[9:12], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[97:100], v[9:12], v[59:66] neg_lo:[1,1,0]
	v_perm_b32 v9, v159, v228, 0xc0c0004
	v_perm_b32 v10, v229, v230, 0xc0c0004
	v_perm_b32 v11, v220, v1, 0xc0c0004
	v_cvt_f32_i32_e32 v108, v52
	v_cvt_f32_i32_e32 v227, v53
	v_cvt_f32_i32_e32 v104, v55
	v_lshl_or_b32 v12, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:1284
	scratch_load_b32 v10, off, off offset:1292
	v_lshl_or_b32 v11, v101, 16, v11
	v_cvt_f32_i32_e32 v105, v56
	v_cvt_f32_i32_e32 v106, v57
	v_cvt_f32_i32_e32 v107, v58
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v58, v61
	v_cvt_f32_i32_e32 v56, v63
	v_cvt_f32_i32_e32 v57, v64
	v_dual_mov_b32 v64, v209 :: v_dual_mov_b32 v209, v211
	v_cvt_f32_i32_e32 v55, v66
	v_mov_b32_e32 v66, v208
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	v_perm_b32 v10, v214, v216, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:1248
	scratch_load_b32 v31, off, off offset:1256
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v31, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v31, off, off offset:1264
	scratch_load_b32 v101, off, off offset:1272
	s_waitcnt vmcnt(0)
	v_perm_b32 v101, v31, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v101, 16, v9
	v_wmma_i32_16x16x16_iu8 v[67:74], v[83:86], v[9:12], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[97:100], v[9:12], v[75:82] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:1232
	scratch_load_b32 v10, off, off offset:1236
	v_cvt_f32_i32_e32 v61, v67
	v_mov_b32_e32 v67, v207
	v_cvt_f32_i32_e32 v63, v70
	v_mov_b32_e32 v70, v110
	v_mov_b32_e32 v110, v213
	v_cvt_f32_i32_e32 v52, v76
	v_mov_b32_e32 v76, v29
	v_cvt_f32_i32_e32 v44, v82
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:1240
	scratch_load_b32 v11, off, off offset:1244
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:1196
	scratch_load_b32 v12, off, off offset:1200
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:1208
	scratch_load_b32 v31, off, off offset:1212
	s_waitcnt vmcnt(0)
	v_perm_b32 v101, v31, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:1164
	scratch_load_b32 v10, off, off offset:1172
	v_lshl_or_b32 v11, v101, 16, v11
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:1180
	scratch_load_b32 v31, off, off offset:1184
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v31, v10, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v31, off, off offset:1144
	scratch_load_b32 v101, off, off offset:1148
	v_lshl_or_b32 v10, v10, 16, v9
	scratch_load_b32 v9, off, off offset:1136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v101, v101, v31, 0xc0c0004
	v_cvt_f32_i32_e32 v31, v68
	v_mov_b32_e32 v68, v205
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v241, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v9, v101, 16, v9
	v_cvt_f32_i32_e32 v101, v43
	v_cvt_f32_i32_e32 v43, v81
	v_wmma_i32_16x16x16_iu8 v[89:96], v[83:86], v[9:12], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[97:100], v[9:12], v[21:28] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v54
	v_cvt_f32_i32_e32 v86, v50
	v_cvt_f32_i32_e32 v85, v49
	scratch_load_b32 v49, off, off offset:20 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v50, v21
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v23, v37
	scratch_store_b32 off, v10, off offset:252 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v71
	v_cvt_f32_i32_e32 v9, v51
	v_mov_b32_e32 v84, v88
	scratch_store_b32 off, v23, off offset:260 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v23, v39
	scratch_store_b32 off, v10, off offset:280 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v72
	v_cvt_f32_i32_e32 v99, v45
	v_cvt_f32_i32_e32 v100, v46
	v_cvt_f32_i32_e32 v97, v47
	v_cvt_f32_i32_e32 v98, v48
	scratch_store_b32 off, v10, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v73
	v_cvt_f32_i32_e32 v83, v59
	v_cvt_f32_i32_e32 v59, v62
	v_cvt_f32_i32_e32 v54, v65
	v_mov_b32_e32 v65, v210
	scratch_store_b32 off, v10, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v74
	scratch_load_b32 v74, off, off offset:16 ; 4-byte Folded Reload
	v_dual_mov_b32 v88, v155 :: v_dual_mov_b32 v155, v226
	v_cvt_f32_i32_e32 v62, v69
	scratch_store_b32 off, v10, off offset:268 ; 4-byte Folded Spill
	v_mov_b32_e32 v69, v109
	v_dual_mov_b32 v71, v111 :: v_dual_mov_b32 v72, v112
	v_cvt_f32_i32_e32 v51, v75
	v_mov_b32_e32 v75, v113
	v_cvt_f32_i32_e32 v47, v77
	v_cvt_f32_i32_e32 v48, v78
	v_cvt_f32_i32_e32 v45, v79
	v_cvt_f32_i32_e32 v46, v80
	v_cvt_f32_i32_e32 v79, v89
	v_mov_b32_e32 v89, v5
	v_cvt_f32_i32_e32 v80, v90
	v_cvt_f32_i32_e32 v81, v91
	v_cvt_f32_i32_e32 v82, v92
	v_mov_b32_e32 v92, v9
	v_cvt_f32_i32_e32 v29, v93
	v_mov_b32_e32 v93, v30
	v_cvt_f32_i32_e32 v73, v94
	v_mov_b32_e32 v94, v212
	v_cvt_f32_i32_e32 v77, v95
	v_cvt_f32_i32_e32 v78, v96
	v_cvt_f32_i32_e32 v53, v22
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v11, v25
	v_cvt_f32_i32_e32 v12, v26
	v_cvt_f32_i32_e32 v10, v27
	v_cvt_f32_i32_e32 v9, v28
	v_cvt_f32_i32_e32 v26, v38
	scratch_store_b32 off, v23, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v23, v40
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v25, v42
	v_cvt_f32_i32_e32 v27, v35
	v_cvt_f32_i32_e32 v28, v36
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	v_mov_b32_e32 v5, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v82, off offset:1052
	scratch_store_b32 off, v81, off offset:1048
	scratch_store_b32 off, v80, off offset:1044
	scratch_store_b32 off, v79, off offset:1040
	scratch_store_b32 off, v78, off offset:1036
	scratch_store_b32 off, v77, off offset:1032
	scratch_store_b32 off, v73, off offset:1028
	scratch_store_b32 off, v29, off offset:1024
	scratch_store_b32 off, v28, off offset:1020
	scratch_store_b32 off, v27, off offset:1016
	scratch_store_b32 off, v26, off offset:1012
	scratch_store_b32 off, v63, off offset:1008
	scratch_store_b32 off, v62, off offset:1004
	scratch_store_b32 off, v31, off offset:1000
	scratch_store_b32 off, v61, off offset:996
	scratch_store_b32 off, v227, off offset:992
	scratch_store_b32 off, v108, off offset:988
	scratch_store_b32 off, v25, off offset:984
	scratch_store_b32 off, v24, off offset:980
	scratch_store_b32 off, v23, off offset:976
	scratch_store_b32 off, v107, off offset:972
	scratch_store_b32 off, v106, off offset:968
	scratch_store_b32 off, v105, off offset:964
	scratch_store_b32 off, v104, off offset:960
	scratch_store_b32 off, v102, off offset:776
	scratch_store_b32 off, v101, off offset:772
	scratch_store_b32 off, v100, off offset:768
	scratch_store_b32 off, v99, off offset:764
	scratch_store_b32 off, v98, off offset:760
	scratch_store_b32 off, v97, off offset:756
	scratch_store_b32 off, v86, off offset:752
	scratch_store_b32 off, v85, off offset:748
	s_clause 0x18                           ; 100-byte Folded Spill
	scratch_store_b32 off, v60, off offset:744
	scratch_store_b32 off, v83, off offset:740
	scratch_store_b32 off, v59, off offset:736
	scratch_store_b32 off, v58, off offset:732
	scratch_store_b32 off, v57, off offset:728
	scratch_store_b32 off, v56, off offset:724
	scratch_store_b32 off, v55, off offset:720
	scratch_store_b32 off, v54, off offset:716
	scratch_store_b32 off, v53, off offset:704
	scratch_store_b32 off, v52, off offset:696
	scratch_store_b32 off, v51, off offset:692
	scratch_store_b32 off, v50, off offset:688
	scratch_store_b32 off, v48, off offset:684
	scratch_store_b32 off, v47, off offset:676
	scratch_store_b32 off, v46, off offset:672
	scratch_store_b32 off, v45, off offset:668
	scratch_store_b32 off, v44, off offset:664
	scratch_store_b32 off, v43, off offset:660
	scratch_store_b32 off, v22, off offset:656
	scratch_store_b32 off, v21, off offset:652
	scratch_store_b32 off, v12, off offset:636
	scratch_store_b32 off, v11, off offset:628
	scratch_store_b32 off, v10, off offset:624
	scratch_store_b32 off, v9, off offset:620
	scratch_store_b32 off, v32, off offset:36
	ds_load_b128 v[35:38], v175 offset:36864
	ds_load_b128 v[25:28], v175 offset:36880
	ds_load_b128 v[21:24], v175 offset:37376
	ds_load_b128 v[9:12], v175 offset:37392
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v50, 0
	scratch_store_b32 off, v5, off offset:324 ; 4-byte Folded Spill
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v210, 0
	v_mov_b16_e64 v226.l, v6.l
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v213, 0
	v_mov_b32_e32 v108, 0
	scratch_store_b32 off, v5, off offset:320 ; 4-byte Folded Spill
	v_mov_b32_e32 v5, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v106, 0
	scratch_store_b32 off, v5, off offset:316 ; 4-byte Folded Spill
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v52, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:304
	scratch_store_b32 off, v29, off offset:296
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v5, 0
	.loc	1 385 32 is_stmt 1              ; generate_amdgcn.py:385:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_xor_b32_e32 v5, 16, v144
	v_mov_b32_e32 v6, v76
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v76, v222, v223, 0xc0c0004
	v_perm_b32 v77, v224, v225, 0xc0c0004
	v_dual_mov_b32 v211, v110 :: v_dual_add_nc_u32 v40, s45, v144
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	v_add_nc_u32_e32 v39, s45, v5
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v43, v191, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v79, v77, 16, v76
	v_perm_b32 v76, v171, v172, 0xc0c0004
	v_perm_b32 v33, v33, v174, 0xc0c0004
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	ds_load_b128 v[105:108], v39 offset:4096
	ds_load_b128 v[109:112], v39
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v39, v188, v190, 0xc0c0004
	v_mov_b32_e32 v190, v65
	v_perm_b32 v78, v243, v244, 0xc0c0004
	v_perm_b32 v83, v247, v248, 0xc0c0004
	v_perm_b32 v44, v168, v254, 0xc0c0004
	v_lshl_or_b32 v65, v43, 16, v39
	v_perm_b32 v39, v170, v164, 0xc0c0004
	v_lshl_or_b32 v170, v33, 16, v76
	v_perm_b32 v33, v3, v163, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:1280
	scratch_load_b32 v29, off, off offset:1288
	v_lshl_or_b32 v168, v83, 16, v78
	v_perm_b32 v42, v203, v204, 0xc0c0004
	.loc	1 384 35                        ; generate_amdgcn.py:384:35
	s_waitcnt vmcnt(4)
	ds_load_b128 v[203:206], v40 offset:4096
	s_waitcnt vmcnt(3)
	ds_load_b128 v[207:210], v40
	.loc	1 385 32                        ; generate_amdgcn.py:385:32
	v_perm_b32 v41, v200, v201, 0xc0c0004
	v_perm_b32 v45, v255, v185, 0xc0c0004
	v_perm_b32 v0, v169, v0, 0xc0c0004
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_dual_mov_b32 v191, v66 :: v_dual_mov_b32 v188, v64
	v_lshl_or_b32 v66, v42, 16, v41
	v_lshl_or_b32 v64, v45, 16, v44
	v_lshl_or_b32 v63, v0, 16, v39
	v_dual_mov_b32 v46, s19 :: v_dual_mov_b32 v45, s18
	v_dual_mov_b32 v44, s17 :: v_dual_mov_b32 v43, s16
	v_dual_mov_b32 v42, s15 :: v_dual_mov_b32 v41, s14
	v_dual_mov_b32 v40, s13 :: v_dual_mov_b32 v39, s12
	v_perm_b32 v0, v137, v118, 0xc0c0004
	v_perm_b32 v55, v138, v202, 0xc0c0004
	v_perm_b32 v56, v186, v189, 0xc0c0004
	v_perm_b32 v57, v187, v192, 0xc0c0004
	v_perm_b32 v58, v198, v184, 0xc0c0004
	v_perm_b32 v59, v116, v193, 0xc0c0004
	v_perm_b32 v60, v176, v177, 0xc0c0004
	v_perm_b32 v61, v178, v181, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[207:210], v[63:66], v[39:46] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_lshl_or_b32 v74, v55, 16, v0
	v_lshl_or_b32 v73, v57, 16, v56
	v_dual_mov_b32 v193, v72 :: v_dual_mov_b32 v192, v71
	v_lshl_or_b32 v72, v59, 16, v58
	v_lshl_or_b32 v71, v61, 16, v60
	v_wmma_i32_16x16x16_iu8 v[55:62], v[203:206], v[63:66], v[39:46] neg_lo:[1,1,0]
	v_perm_b32 v77, v251, v252, 0xc0c0004
	v_perm_b32 v34, v199, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[109:112], v[71:74], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[105:108], v[71:74], v[55:62] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:1224
	scratch_load_b32 v71, off, off offset:1228
	v_mov_b32_e32 v194, v75
	v_lshl_or_b32 v169, v34, 16, v77
	v_perm_b32 v34, v215, v217, 0xc0c0004
	v_perm_b32 v0, v245, v246, 0xc0c0004
	v_dual_mov_b32 v116, v67 :: v_dual_mov_b32 v5, v69
	v_perm_b32 v67, v249, v250, 0xc0c0004
	v_dual_mov_b32 v118, v68 :: v_dual_mov_b32 v189, v70
	v_perm_b32 v70, v231, v232, 0xc0c0004
	v_perm_b32 v75, v233, v234, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v82, v67, 16, v0
	v_perm_b32 v0, v179, v180, 0xc0c0004
	v_perm_b32 v68, v235, v236, 0xc0c0004
	v_perm_b32 v69, v237, v242, 0xc0c0004
	v_lshl_or_b32 v80, v75, 16, v70
	v_perm_b32 v75, v182, v183, 0xc0c0004
	v_perm_b32 v101, v226, v7, 0xc0c0004
	v_perm_b32 v102, v114, v8, 0xc0c0004
	v_lshl_or_b32 v81, v69, 16, v68
	v_cvt_f32_i32_e32 v213, v48
	v_lshl_or_b32 v171, v75, 16, v0
	v_perm_b32 v0, v219, v221, 0xc0c0004
	v_lshl_or_b32 v180, v102, 16, v101
	v_wmma_i32_16x16x16_iu8 v[63:70], v[207:210], v[79:82], v[39:46] neg_lo:[1,1,0]
	v_mov_b32_e32 v163, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v100, v33, 16, v0
	v_perm_b32 v0, v159, v228, 0xc0c0004
	v_mov_b32_e32 v159, v103
	v_wmma_i32_16x16x16_iu8 v[63:70], v[109:112], v[168:171], v[63:70] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v88, off, off offset:244
	scratch_load_b32 v155, off, off offset:240
	scratch_load_b32 v123, off, off offset:24
	scratch_load_b32 v166, off, off offset:12
	v_cvt_f32_i32_e32 v212, v69
	v_mov_b32_e32 v69, v5
	s_waitcnt vmcnt(6)
	v_perm_b32 v30, v3, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:1252
	scratch_load_b32 v29, off, off offset:1260
	v_lshl_or_b32 v99, v34, 16, v30
	v_perm_b32 v30, v220, v1, 0xc0c0004
	v_perm_b32 v34, v214, v216, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v83, v3, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:1268
	scratch_load_b32 v29, off, off offset:1276
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v3, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:1216
	scratch_load_b32 v31, off, off offset:1220
	v_lshl_or_b32 v98, v29, 16, v83
	v_perm_b32 v29, v229, v230, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v29, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v31, v3, v31, 0xc0c0004
	v_mov_b32_e32 v3, v84
	v_perm_b32 v84, v32, v71, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[203:206], v[79:82], v[39:46] neg_lo:[1,1,0]
	v_mov_b32_e32 v32, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v97, v84, 16, v31
	v_perm_b32 v31, v2, v4, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1284
	scratch_load_b32 v2, off, off offset:1292
	v_wmma_i32_16x16x16_iu8 v[71:78], v[105:108], v[168:171], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[207:210], v[97:100], v[39:46] neg_lo:[1,1,0]
	v_lshl_or_b32 v178, v31, 16, v30
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1248
	scratch_load_b32 v4, off, off offset:1256
	v_mov_b32_e32 v2, v89
	v_lshl_or_b32 v177, v34, 16, v33
	v_perm_b32 v33, v239, v238, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v89, v1, v4, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1264
	scratch_load_b32 v4, off, off offset:1272
	s_waitcnt vmcnt(0)
	v_perm_b32 v90, v1, v4, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1188
	scratch_load_b32 v1, off, off offset:1192
	v_lshl_or_b32 v176, v90, 16, v89
	v_wmma_i32_16x16x16_iu8 v[89:96], v[203:206], v[97:100], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[79:86], v[109:112], v[176:179], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[105:108], v[176:179], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v227, v82
	v_cvt_f32_i32_e32 v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v83, v84
	v_mov_b32_e32 v84, v3
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v48, v94
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	scratch_load_b32 v1, off, off offset:1204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v1, v218, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1152
	scratch_load_b32 v4, off, off offset:1160
	v_lshl_or_b32 v183, v29, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v4, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1168
	scratch_load_b32 v4, off, off offset:1176
	s_waitcnt vmcnt(0)
	v_perm_b32 v31, v4, v1, 0xc0c0004
	scratch_load_b32 v1, off, off offset:1140 ; 4-byte Folded Reload
	v_lshl_or_b32 v182, v31, 16, v30
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v1, v240, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1232
	scratch_load_b32 v1, off, off offset:1236
	v_lshl_or_b32 v181, v34, 16, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[207:210], v[180:183], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[203:206], v[180:183], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v208, v49
	scratch_load_b32 v49, off, off offset:20 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v207, v63
	v_cvt_f32_i32_e32 v210, v68
	v_cvt_f32_i32_e32 v205, v70
	v_mov_b32_e32 v70, v189
	v_cvt_f32_i32_e32 v63, v89
	v_mov_b32_e32 v89, v2
	s_waitcnt vmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1240
	scratch_load_b32 v4, off, off offset:1244
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v4, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1196
	scratch_load_b32 v4, off, off offset:1200
	v_lshl_or_b32 v187, v29, 16, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:172
	scratch_load_b32 v209, off, off offset:28
	scratch_load_b32 v206, off, off offset:168
	v_cvt_f32_i32_e32 v29, v95
	s_waitcnt vmcnt(3)
	v_perm_b32 v30, v4, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1208
	scratch_load_b32 v4, off, off offset:1212
	s_waitcnt vmcnt(4)
	v_mov_b32_e32 v94, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v31, v4, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1164
	scratch_load_b32 v4, off, off offset:1172
	v_lshl_or_b32 v186, v31, 16, v30
	v_cvt_f32_i32_e32 v30, v61
	v_cvt_f32_i32_e32 v61, v73
	v_cvt_f32_i32_e32 v73, v90
	v_cvt_f32_i32_e32 v31, v96
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v4, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1180
	scratch_load_b32 v4, off, off offset:1184
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v4, v1, 0xc0c0004
	scratch_load_b32 v1, off, off offset:1136 ; 4-byte Folded Reload
	v_lshl_or_b32 v185, v34, 16, v33
	s_waitcnt vmcnt(0)
	v_perm_b32 v113, v1, v241, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1144
	scratch_load_b32 v4, off, off offset:1148
	s_waitcnt vmcnt(0)
	v_perm_b32 v172, v4, v1, 0xc0c0004
	v_cvt_f32_i32_e32 v1, v47
	v_cvt_f32_i32_e32 v47, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v184, v172, 16, v113
	v_cvt_f32_i32_e32 v113, v54
	v_cvt_f32_i32_e32 v54, v62
	v_cvt_f32_i32_e32 v62, v74
	scratch_load_b32 v74, off, off offset:16 ; 4-byte Folded Reload
	scratch_store_b32 off, v1, off offset:264 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v55
	v_wmma_i32_16x16x16_iu8 v[97:104], v[109:112], v[184:187], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[105:108], v[184:187], v[39:46] neg_lo:[1,1,0]
	v_mov_b32_e32 v110, v211
	v_cvt_f32_i32_e32 v111, v50
	scratch_store_b32 off, v1, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v57
	v_cvt_f32_i32_e32 v107, v51
	v_cvt_f32_i32_e32 v108, v52
	v_cvt_f32_i32_e32 v211, v53
	v_cvt_f32_i32_e32 v106, v56
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v58
	v_cvt_f32_i32_e32 v55, v59
	v_cvt_f32_i32_e32 v56, v60
	v_cvt_f32_i32_e32 v112, v64
	v_mov_b32_e32 v64, v188
	scratch_store_b32 off, v1, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v65
	v_mov_b32_e32 v65, v190
	v_cvt_f32_i32_e32 v109, v67
	v_dual_mov_b32 v67, v116 :: v_dual_mov_b32 v68, v118
	v_mov_b32_e32 v93, v32
	scratch_store_b32 off, v1, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v66
	v_mov_b32_e32 v66, v191
	v_cvt_f32_i32_e32 v59, v71
	v_mov_b32_e32 v71, v192
	v_cvt_f32_i32_e32 v60, v72
	v_mov_b32_e32 v72, v193
	v_cvt_f32_i32_e32 v52, v75
	v_mov_b32_e32 v75, v194
	v_cvt_f32_i32_e32 v53, v76
	v_mov_b32_e32 v76, v6
	v_cvt_f32_i32_e32 v50, v77
	v_cvt_f32_i32_e32 v51, v78
	v_cvt_f32_i32_e32 v57, v79
	v_cvt_f32_i32_e32 v58, v80
	v_cvt_f32_i32_e32 v6, v81
	v_cvt_f32_i32_e32 v77, v91
	v_cvt_f32_i32_e32 v78, v92
	v_mov_b32_e32 v92, v163
	v_cvt_f32_i32_e32 v105, v97
	v_cvt_f32_i32_e32 v97, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v90, v101
	v_cvt_f32_i32_e32 v91, v102
	v_cvt_f32_i32_e32 v95, v103
	v_mov_b32_e32 v103, v159
	v_cvt_f32_i32_e32 v96, v104
	v_cvt_f32_i32_e32 v79, v39
	v_cvt_f32_i32_e32 v80, v40
	v_cvt_f32_i32_e32 v81, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v39, v43
	v_cvt_f32_i32_e32 v40, v44
	v_cvt_f32_i32_e32 v32, v45
	v_cvt_f32_i32_e32 v5, v46
	scratch_store_b32 off, v1, off offset:296 ; 4-byte Folded Spill
.LBB0_16:
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	scratch_load_b32 v0, off, off offset:1128 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v193.l, 0
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v205, off offset:1152
	scratch_store_b32 off, v109, off offset:1148
	scratch_store_b32 off, v113, off offset:1144
	scratch_store_b32 off, v210, off offset:1140
	scratch_store_b32 off, v211, off offset:1136
	scratch_store_b32 off, v40, off offset:172
	scratch_store_b32 off, v30, off offset:168
	scratch_store_b32 off, v39, off offset:28
	scratch_store_b32 off, v32, off offset:24
	scratch_store_b32 off, v31, off offset:20
	scratch_store_b32 off, v29, off offset:16
	scratch_store_b32 off, v5, off offset:12
	v_mov_b32_e32 v252, v108
	v_dual_mov_b32 v240, v95 :: v_dual_mov_b32 v237, v90
	v_mov_b16_e64 v255.l, v193.l
	v_mov_b16_e64 v254.l, v193.l
	v_mov_b16_e64 v183.l, v193.l
	v_dual_mov_b32 v236, v86 :: v_dual_mov_b32 v231, v81
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v101, off, off offset:140
	scratch_load_b32 v100, off, off offset:136
	scratch_load_b32 v95, off, off offset:116
	scratch_load_b32 v102, off, off offset:112
	scratch_load_b32 v1, off, off offset:1068
	scratch_load_b32 v31, off, off offset:1060
	scratch_load_b32 v32, off, off offset:852
	v_dual_mov_b32 v2, v98 :: v_dual_mov_b32 v225, v47
	scratch_load_b32 v98, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(10)
	v_dual_mov_b32 v81, v49 :: v_dual_mov_b32 v184, v52
	v_dual_mov_b32 v245, v106 :: v_dual_mov_b32 v244, v56
	v_dual_mov_b32 v8, v97 :: v_dual_mov_b32 v219, v48
	scratch_load_b32 v97, off, off offset:124 ; 4-byte Folded Reload
	v_dual_mov_b32 v232, v42 :: v_dual_mov_b32 v241, v96
	scratch_load_b32 v96, off, off offset:120 ; 4-byte Folded Reload
	v_dual_mov_b32 v187, v50 :: v_dual_mov_b32 v186, v51
	v_dual_mov_b32 v248, v59 :: v_dual_mov_b32 v249, v60
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s44, 31
	v_dual_mov_b32 v250, v61 :: v_dual_mov_b32 v251, v62
	s_lshr_b32 s0, s0, 27
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s30, s10
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_add_i32 s0, s44, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_mov_b32 s31, s11
	.loc	1 386 29                        ; generate_amdgcn.py:386:29
	s_ashr_i32 s0, s0, 5
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s34, s34, s27
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
	s_mov_b32 s26, 0x7ffffffe
	v_mov_b32_e32 v109, v112
	v_mov_b32_e32 v113, v80
	v_mov_b32_e32 v5, v91
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v80, off, off offset:472
	scratch_load_b32 v90, off, off offset:436
	scratch_load_b32 v86, off, off offset:432
	scratch_load_b32 v108, off, off offset:164
	v_mov_b32_e32 v234, v83
	scratch_load_b32 v104, off, off offset:444 ; 4-byte Folded Reload
	v_mov_b32_e32 v159, v77
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v77, off, off offset:156
	scratch_load_b32 v226, off, off offset:452
	v_mov_b32_e32 v218, v73
	scratch_load_b32 v91, off, off offset:440 ; 4-byte Folded Reload
	v_dual_mov_b32 v114, v107 :: v_dual_mov_b32 v235, v85
	scratch_load_b32 v73, off, off offset:460 ; 4-byte Folded Reload
	v_mov_b32_e32 v85, v206
	v_mov_b32_e32 v107, v209
	v_mov_b32_e32 v7, v227
	scratch_load_b32 v106, off, off offset:456 ; 4-byte Folded Reload
	v_mov_b32_e32 v182, v53
	v_mov_b32_e32 v239, v57
	v_mov_b32_e32 v243, v55
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(20)
	v_mov_b16_e64 v193.h, v0.l
	scratch_load_b32 v0, off, off offset:1124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v255.h, v0.l
	scratch_load_b32 v0, off, off offset:1156 ; 4-byte Folded Reload
	v_mov_b32_e32 v233, v82
	v_mov_b32_e32 v82, v74
	v_mov_b32_e32 v222, v212
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v30, v1, v255
	scratch_load_b32 v1, off, off offset:1080 ; 4-byte Folded Reload
	v_mov_b32_e32 v242, v54
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v254.h, v0.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v0, off, off offset:1064 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v1, v254
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1072
	scratch_load_b32 v29, off, off offset:1056
	v_mul_f32_e32 v34, v110, v254
	v_dual_mov_b32 v110, v207 :: v_dual_mov_b32 v207, v208
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v210, v39, v35, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v208, v34, v36, v157
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v0, v0, v255
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v0, v0, v36, v161
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v29, v29, v255
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	scratch_store_b32 off, v0, off offset:1056 ; 4-byte Folded Spill
	v_fma_f32 v0, v29, v35, v151
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v29, v1, v254
	scratch_load_b32 v1, off, off offset:1084 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v168, v29, v37, v121
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v29, v75, v193
	scratch_load_b32 v75, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v194, v29, v35, v156
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v29, off, off offset:864 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	scratch_store_b32 off, v0, off offset:1060 ; 4-byte Folded Spill
	v_fma_f32 v0, v30, v38, v160
	scratch_store_b32 off, v0, off offset:1064 ; 4-byte Folded Spill
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	scratch_load_b32 v0, off, off offset:1132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v183.h, v0.l
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v0, off, off offset:1076 ; 4-byte Folded Reload
	v_mul_f32_e32 v31, v31, v255
	v_mov_b32_e32 v4, v99
	scratch_load_b32 v99, off, off offset:132 ; 4-byte Folded Reload
	v_mul_f32_e32 v30, v1, v183
	scratch_load_b32 v1, off, off offset:1088 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v211, v31, v37, v158
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v31, v89, v183
	v_mov_b32_e32 v89, v79
	scratch_load_b32 v79, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v116, v30, v36, v119
	v_mov_b32_e32 v221, v63
	v_fma_f32 v205, v31, v35, v153
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v32, v255
	scratch_load_b32 v32, off, off offset:204 ; 4-byte Folded Reload
	v_mul_f32_e32 v29, v29, v255
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v29, v29, v18, v74
	scratch_load_b32 v74, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v0, v0, v254
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v34, v1, v183
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	v_mul_f32_e32 v169, v84, v183
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v203, v0, v38, v120
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v0, v76, v193
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v112, v34, v38, v152
	v_mov_b32_e32 v84, v78
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v78, off, off offset:160
	scratch_load_b32 v76, off, off offset:152
	v_fma_f32 v3, v0, v36, v196
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v36, v32, v254
	scratch_load_b32 v32, off, off offset:196 ; 4-byte Folded Reload
	v_mov_b32_e32 v0, v105
	scratch_load_b32 v105, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v170, v36, v18, v80
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v30, v1, v193
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v34, v169, v37, v134
	v_fma_f32 v33, v30, v38, v117
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v30, off, off offset:860 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v38, v32, v254
	scratch_load_b32 v32, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v169, v38, v17, v94
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v31, v1, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v1, v31, v37, v197
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v31, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v30, v30, v255
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v30, v30, v17, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v178, v81, v30, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v255
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v37, v31, v20, v166
	v_fma_f32 v31, v35, v19, v123
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v35, v32, v254
	scratch_load_b32 v32, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v176, v166, v37, s2
	v_cndmask_b32_e64 v166, v80, v170, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v172, v35, v20, v108
	v_mov_b32_e32 v80, v157
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v164, v123, v31, s2
	v_cndmask_b32_e64 v123, v94, v169, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v32, v254
	scratch_load_b32 v32, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v171, v36, v19, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v163, v107, v171, s2
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v107, v150 :: v_dual_mul_f32 v38, v32, v183
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v179, v38, v18, v206
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v217, v85, v179, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v32, v183
	scratch_load_b32 v32, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v174, v39, v17, v79
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v32, v183
	scratch_load_b32 v32, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v180, v40, v20, v78
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v157, v78, v180, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v35, v32, v183
	scratch_load_b32 v32, off, off offset:872 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v83, v35, v19, v77
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v32, v193
	scratch_load_b32 v32, off, off offset:868 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v18, v36, v18, v76
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v38, v32, v193
	scratch_load_b32 v32, off, off offset:848 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v32, v193
	scratch_load_b32 v32, off, off offset:844 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v39, v20, v74
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v32, v193
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v32, off, off offset:940 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v35, v32, v255
	scratch_load_b32 v32, off, off offset:932 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v177, v82, v29, s2
	v_cndmask_b32_e64 v29, v76, v18, s2
	v_mov_b32_e32 v82, v160
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v198, v35, v26, v146
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v35, v32, v255
	scratch_load_b32 v32, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v199, v35, v25, v143
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v35, v103, v254
	scratch_load_b32 v103, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v17, v38, v17, v75
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v206, v35, v28, v136
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v35, v70, v183
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v216, v35, v27, v173
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v36, v32, v255
	scratch_load_b32 v32, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v200, v36, v28, v142
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v38, v32, v255
	scratch_load_b32 v32, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v40, v19, v73
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v201, v38, v27, v141
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v38, v72, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v169, v73, v19, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v212, v38, v26, v139
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v32, v254
	scratch_load_b32 v32, off, off offset:952 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v32, v254
	scratch_load_b32 v32, off, off offset:948 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v204, v40, v25, v124
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v32, v254
	scratch_load_b32 v32, off, off offset:956 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v209, v36, v27, v253
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v36, v69, v193
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v35, v36, v26, v150
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v32, v183
	scratch_load_b32 v32, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v215, v40, v28, v195
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v40, v67, v193
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v202, v39, v26, v140
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v39, v71, v183
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v26, off, off offset:820 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v214, v39, v25, v165
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v39, v68, v193
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v38, v32, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v36, v38, v25, v149
	v_fma_f32 v38, v39, v28, v148
	v_fma_f32 v39, v40, v27, v147
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v25, off, off offset:824
	scratch_load_b32 v27, off, off offset:828
	scratch_load_b32 v32, off, off offset:796
	scratch_load_b32 v28, off, off offset:184
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v26, v26, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v41, v26, v13, v101
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v185, v101, v41, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v25, v25, v255
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v255
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v49, v32, v193
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:428
	scratch_load_b32 v26, off, off offset:176
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v40, v25, v14, v103
	v_fma_f32 v43, v27, v15, v99
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v27, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v28, v28, v254
	scratch_load_b32 v25, off, off offset:832 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v56, v49, v15, v104
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v188, v103, v40, s2
	v_cndmask_b32_e64 v180, v99, v43, s2
	v_mov_b32_e32 v103, v135
	v_mov_b32_e32 v99, v154
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v26, v26, v254 :: v_dual_mul_f32 v27, v27, v183
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v28, v14, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, v26, v13, v97
	v_fma_f32 v48, v27, v14, v91
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:836
	scratch_load_b32 v28, off, off offset:804
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v238, v58 :: v_dual_mul_f32 v25, v25, v255
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v150, v98, v44, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v25, v16, v100
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v25, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v181, v100, v42, s2
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v100, v146 :: v_dual_mul_f32 v27, v27, v193
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v28, v28, v183
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v54, v27, v13, v226
	v_fma_f32 v50, v28, v13, v90
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v13, v93, v255
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v28, off, off offset:800 ; 4-byte Folded Reload
	v_mov_b32_e32 v93, v156
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v74, v20, s2
	v_cndmask_b32_e64 v156, v77, v83, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v57, v13, v22, v130
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:900 ; 4-byte Folded Reload
	v_mov_b32_e32 v77, v152
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v59, v13, v24, v128
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:912 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v254
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v63, v13, v24, v162
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v13, v66, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v67, v13, v24, v145
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v13, off, off offset:924 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v193
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v69, v13, v22, v135
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:236
	scratch_load_b32 v26, off, off offset:180
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v25, v254
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v135, v196, v3, s2
	v_cndmask_b32_e64 v103, v103, v69, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v46, v25, v16, v96
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v25, off, off offset:816 ; 4-byte Folded Reload
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v13, v13, s4, 1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v47, v26, v15, v95
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v26, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v183
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v51, v25, v16, v86
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v25, off, off offset:840 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v52, v26, v15, v32
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v15, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v28, v28, v193
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v55, v28, v16, v105
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v16, off, off offset:920 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v75, v17, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v17, v88, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v88, v165 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v254
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v61, v16, v22, v154
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v16, v64, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v66, v16, v21, v126
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v16, off, off offset:880 ; 4-byte Folded Reload
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v25, v25, v193
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v15, v15, v255
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v126, v126, v66, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v53, v25, v14, v106
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:892 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v60, v15, v23, v122
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v15, v65, v183
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v106, v53, s2
	v_mov_b32_e32 v106, v149
	v_cndmask_b32_e64 v149, v97, v45, s2
	v_mov_b32_e32 v97, v143
	v_cndmask_b32_e64 v53, v80, v208, s2
	v_cndmask_b32_e64 v208, v119, v116, s2
	v_cndmask_b32_e64 v119, v107, v35, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v16, v193
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v65, v15, v22, v131
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:916
	scratch_load_b32 v25, off, off offset:876
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v71, v16, v24, v133
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	v_add_lshl_u32 v16, v155, s0, 1
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v14, v14, v255
	v_mov_b32_e32 v81, v158
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v158, v79, v174, s2
	v_cndmask_b32_e64 v131, v131, v65, s2
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_mul_f32 v15, v15, v193
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v58, v14, v21, v129
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:908 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v70, v15, v21, v102
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_load_b32 v15, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v102, v70, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v72, v25, v23, v132
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v108, v172, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v14, v14, v254
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, v15, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v62, v14, v21, v167
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:904 ; 4-byte Folded Reload
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_mul_f32 v14, v14, v254
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v64, v14, v23, v115
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	scratch_load_b32 v14, off, off offset:928 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v68, v14, v23, v127
	.loc	1 388 22 is_stmt 1              ; generate_amdgcn.py:388:22
	scratch_load_b32 v14, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v14, v14, s0, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_clause 0x3
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(3)
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_lshlrev_b32 v230, 16, v14
	buffer_load_u16 v13, v13, s[28:31], 0 offen
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v108, off, off offset:888 ; 4-byte Folded Reload
	.loc	1 388 22                        ; generate_amdgcn.py:388:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v155, 16, v15
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v101, v133 :: v_dual_lshlrev_b32 v26, 16, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v133, v117, v33, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v22, v92, v155
	v_mov_b32_e32 v92, v161
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v78, v2, v26 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	ds_store_b32 v108, v13 offset:36864
	scratch_load_b32 v13, off, off offset:1020 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v13, v230
	scratch_load_b32 v13, off, off offset:1016 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v13, v230
	scratch_load_b32 v13, off, off offset:1012 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v13, v230
	scratch_load_b32 v13, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v13, v230
	scratch_load_b32 v13, off, off offset:988 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v65, v251, v155
	v_mul_f32_e32 v66, v250, v155
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v13, v155
	scratch_load_b32 v13, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v13, v155
	scratch_load_b32 v13, off, off offset:992 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v24, v13, v155 :: v_dual_lshlrev_b32 v85, 16, v16
	scratch_load_b32 v13, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v33, v213, v230
	v_mul_f32_e32 v69, v84, v85
	v_mul_f32_e32 v70, v159, v85
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v13, v85
	scratch_load_b32 v13, off, off offset:996 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v13, v85
	scratch_load_b32 v13, off, off offset:1008 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v13, v85
	scratch_load_b32 v13, off, off offset:1004 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v49, v13, v85
	scratch_load_b32 v13, off, off offset:1044 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v13, v26
	scratch_load_b32 v13, off, off offset:1040 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v13, v26
	scratch_load_b32 v13, off, off offset:1052 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v13, v26
	scratch_load_b32 v13, off, off offset:1048 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v13, v26
	ds_load_b128 v[13:16], v175 offset:36864
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v144, v18, v13, v178
	v_fma_f32 v220, v22, v13, v123
	v_fma_f32 v161, v31, v13, v158
	v_fma_f32 v13, v74, v13, v28
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v105, v55, s2
	v_mov_b32_e32 v105, v148
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v227, v30, v14, v217
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v104, v56, s2
	scratch_store_b32 off, v13, off offset:156 ; 4-byte Folded Spill
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v13, v76, v15, v169
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v56, v239, v85
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v170, v17, v14, v177
	v_mov_b32_e32 v104, v147
	v_fma_f32 v171, v19, v16, v176
	scratch_store_b32 off, v13, off offset:148 ; 4-byte Folded Spill
	v_fma_f32 v13, v75, v16, v27
	v_fma_f32 v172, v20, v15, v164
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v148, v96, v46, s2
	v_mov_b32_e32 v96, v142
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v179, v21, v14, v166
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_store_b32 off, v13, off offset:152 ; 4-byte Folded Spill
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v13, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v147, v95, v47, s2
	v_mov_b32_e32 v95, v141
	v_cndmask_b32_e64 v141, v90, v50, s2
	v_mov_b32_e32 v90, v139
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v223, v23, v16, v25
	v_fma_f32 v224, v24, v15, v163
	v_fma_f32 v160, v37, v16, v157
	v_fma_f32 v228, v49, v15, v156
	v_fma_f32 v229, v73, v14, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v226, v54, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v73, v7, v85 :: v_dual_mov_b32 v74, v153
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v142, v91, v48, s2
	v_mov_b32_e32 v91, v140
	v_cndmask_b32_e64 v140, v86, v51, s2
	v_cndmask_b32_e64 v139, v32, v52, s2
	v_dual_mov_b32 v32, v173 :: v_dual_mul_f32 v55, v238, v85
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v75, v8, v26
	v_mul_f32_e32 v76, v0, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v116, v104, v39, s2
	v_cndmask_b32_e64 v52, v81, v211, s2
	v_cndmask_b32_e64 v117, v105, v38, s2
	v_cndmask_b32_e64 v38, v124, v204, s2
	v_cndmask_b32_e64 v29, v29, v229, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v13, v230
	scratch_load_b32 v13, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v13, v230
	scratch_load_b32 v13, off, off offset:984 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v13, v230
	scratch_load_b32 v13, off, off offset:980 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v13, v230
	scratch_load_b32 v13, off, off offset:964 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v13, v155
	scratch_load_b32 v13, off, off offset:960 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v13, v155
	scratch_load_b32 v13, off, off offset:972 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v13, v155
	scratch_load_b32 v13, off, off offset:968 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v24, v13, v155
	scratch_load_b32 v13, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v13, v85
	scratch_load_b32 v13, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v13, v85
	scratch_load_b32 v13, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v13, v85
	scratch_load_b32 v13, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v13, v85
	scratch_load_b32 v13, off, off offset:1028 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v13, v26
	scratch_load_b32 v13, off, off offset:1024 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v44, v13, v26
	scratch_load_b32 v13, off, off offset:1032 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v13, v26
	scratch_load_b32 v13, off, off offset:1036 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v13, v26
	ds_load_b128 v[13:16], v175 offset:36880
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v191, v18, v13, v185
	v_fma_f32 v152, v22, v13, v149
	v_fma_f32 v226, v40, v13, v141
	v_fma_f32 v137, v44, v13, v49
	.loc	1 394 31 is_stmt 1              ; generate_amdgcn.py:394:31
	scratch_load_b32 v13, off, off offset:884 ; 4-byte Folded Reload
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v190, v19, v16, v181
	v_mov_b32_e32 v22, v151
	v_fma_f32 v151, v24, v15, v147
	v_fma_f32 v146, v37, v14, v142
	v_mov_b32_e32 v24, v121
	v_fma_f32 v153, v41, v16, v140
	v_fma_f32 v143, v42, v15, v139
	v_fma_f32 v138, v43, v14, v83
	v_fma_f32 v165, v45, v15, v30
	v_fma_f32 v173, v46, v16, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v121, v197, v1, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v40, v111, v230
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v86, v21, v14, v150
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v42, v207, v230
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v174, v23, v16, v148
	v_mov_b32_e32 v23, v134
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v205, v74, v205, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v74, v6, v85
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v192, v17, v14, v188
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v197, v77, v112, s2
	v_mov_b32_e32 v112, v132
	v_cndmask_b32_e64 v132, v23, v34, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v77, v4, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v24, v168, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v43, v109, v155
	v_mul_f32_e32 v44, v110, v155
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v134, v93, v194, s2
	v_cndmask_b32_e64 v46, v87, v210, s2
	v_cndmask_b32_e64 v41, v120, v203, s2
	v_mov_b32_e32 v109, v129
	v_cndmask_b32_e64 v129, v136, v206, s2
	v_cndmask_b32_e64 v168, v253, v209, s2
	v_mov_b32_e32 v93, v115
	v_cndmask_b32_e64 v194, v88, v214, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v87, v5, v26
	v_mul_f32_e32 v88, v237, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v173, s3
	.loc	1 394 31                        ; generate_amdgcn.py:394:31
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v13, v13, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	buffer_load_u16 v13, v13, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v13
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v189, v20, v15, v180
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	ds_load_b128 v[17:20], v175 offset:37376
	ds_load_b128 v[13:16], v175 offset:37392
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1056
	scratch_load_b32 v3, off, off offset:264
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_store_b32 v108, v21 offset:36864
	v_mov_b32_e32 v108, v128
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v128, v195, v215, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v59, v108, v59, s2
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v48, v92, v1, s2
	scratch_load_b32 v1, off, off offset:1060 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v50, v22, v1, s2
	scratch_load_b32 v1, off, off offset:1064 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v51, v82, v1, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	v_mul_f32_e32 v34, v3, v230
	scratch_load_b32 v3, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v175 offset:36864
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v80, v34, v21, v50
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v106, v36, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v81, v40, v24, v51
	v_fma_f32 v110, v43, v22, v53
	v_fma_f32 v82, v42, v23, v52
	v_fma_f32 v111, v44, v21, v46
	v_fma_f32 v211, v55, v22, v208
	v_fma_f32 v210, v56, v21, v205
	v_fma_f32 v207, v73, v24, v197
	v_fma_f32 v203, v74, v23, v132
	v_fma_f32 v213, v75, v22, v135
	v_fma_f32 v154, v76, v21, v134
	v_fma_f32 v0, v77, v24, v133
	v_fma_f32 v120, v78, v23, v121
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v75, v234, v85
	v_mul_f32_e32 v78, v235, v85
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v79, v33, v22, v48
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v96, v200, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v74, v222, v155
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v91, v202, s2
	v_cndmask_b32_e64 v73, v95, v201, s2
	v_cndmask_b32_e64 v55, v97, v199, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v77, v236, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v201, v90, v212, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v33, v114, v230
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v124, v32, v216, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v32, v252, v230
	v_mul_f32_e32 v76, v233, v85
	v_mul_f32_e32 v90, v241, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v114, v145, v67, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v67, v218, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v199, v167, v62, s2
	v_cndmask_b32_e64 v101, v101, v71, s2
	v_cndmask_b32_e64 v202, v162, v63, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v63, v249, v155
	v_mul_f32_e32 v71, v113, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v51, v81, s3
	v_cndmask_b32_e64 v46, v46, v111, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v91, v240, v26 :: v_dual_mul_f32 v54, v1, v155
	scratch_load_b32 v1, off, off offset:1144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v45, v3, v155
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v44, v54, v23, v37
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v100, v198, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v47, v45, v24, v41
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	ds_load_b128 v[21:24], v175 offset:36880
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v198, v93, v64, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v64, v248, v155
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v109, v58, s2
	v_mov_b32_e32 v100, v122
	v_cndmask_b32_e64 v41, v41, v47, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v60, v100, v60, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v41
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v32, v32, v22, v54
	v_fma_f32 v95, v33, v21, v55
	v_fma_f32 v209, v75, v22, v201
	v_fma_f32 v204, v76, v21, v194
	v_fma_f32 v196, v77, v24, v128
	v_fma_f32 v107, v87, v22, v119
	v_fma_f32 v106, v88, v21, v34
	v_fma_f32 v105, v90, v24, v117
	v_fma_f32 v104, v91, v23, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v112, v72, s2
	v_cndmask_b32_e64 v112, v127, v68, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_dual_mul_f32 v68, v221, v85 :: v_dual_mul_f32 v75, v231, v26
	v_mul_f32_e32 v72, v89, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v106, s3
	v_cndmask_b32_e64 v104, v116, v104, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v35, v1, v230
	scratch_load_b32 v1, off, off offset:1136 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v96, v35, v24, v56
	v_fma_f32 v35, v74, v23, v168
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v74, v232, v26
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v168, v35, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v1, v230
	scratch_load_b32 v1, off, off offset:1140 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v97, v36, v23, v73
	v_mov_b32_e32 v36, v130
	v_fma_f32 v130, v78, v23, v124
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v36, v57, s2
	v_cndmask_b32_e64 v36, v99, v61, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v1, v155
	scratch_load_b32 v1, off, off offset:1148 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v115, v39, v22, v42
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v39, v245, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v115, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v1, v155
	scratch_load_b32 v1, off, off offset:1152 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v45, v40, v21, v38
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v45, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v1, v155
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v40, v43, v24, v129
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[21:24], v175 offset:37376
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v76, v39, v22, v57
	v_fma_f32 v39, v64, v21, v199
	v_fma_f32 v195, v68, v21, v126
	v_fma_f32 v90, v72, v21, v102
	v_fma_f32 v200, v67, v22, v131
	v_fma_f32 v91, v71, v22, v103
	v_fma_f32 v206, v66, v23, v198
	v_fma_f32 v118, v70, v23, v112
	v_fma_f32 v87, v75, v23, v33
	v_fma_f32 v212, v65, v24, v202
	v_fma_f32 v127, v69, v24, v114
	v_fma_f32 v88, v74, v24, v101
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v87, s3
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v1, v230
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v77, v43, v21, v58
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v48, v79, s3
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v43, v63, v22, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v43, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v22, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v1, v230
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v61, v61, v24, v59
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v1, v230
	scratch_load_b32 v1, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v62, v62, v23, v60
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v21
	v_rcp_f32_e32 v24, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v23, v24, 1.0
	v_fmac_f32_e32 v24, v48, v24
	v_div_scale_f32 v48, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v63, v48, v24
	v_fma_f32 v64, -v23, v63, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v24
	v_fma_f32 v23, -v23, v63, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v24, v63
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v50, v80, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v92, v23, v22, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v24
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v52, v82, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v48, v48, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, null, v48, v48, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v50
	v_fma_f32 v64, -v50, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v63
	v_div_scale_f32 v64, vcc_lo, v24, v48, v24
	v_mul_f32_e32 v65, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v50, v65, v64
	v_fmac_f32_e32 v65, v66, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v50, v65, v64
	v_div_fmas_f32 v50, v50, v63, v65
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v63, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v93, v50, v48, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v54, v32, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v32, 0xbfb8aa3b, v24 :: v_dual_fmac_f32 v63, 0xbfb8aa3b, v51
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v63, v63, v64
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v64, null, v63, v63, v51
	v_rcp_f32_e32 v65, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v64, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v51, v63, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v68, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v65
	v_fma_f32 v64, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v64, v64, v65, v67
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v23
	v_fma_f32 v65, -v23, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v65, v52
	v_div_scale_f32 v65, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v66, v65, v52
	v_div_fixup_f32 v94, v64, v63, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v23, v66, v65
	v_fmac_f32_e32 v66, v67, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v66, v65
	v_div_fmas_f32 v23, v23, v52, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v24
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v48
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v32, v32, v24
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v48, v50, 1.0
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, vcc_lo, v24, v32, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v54, v52, v50
	v_fma_f32 v65, -v48, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v65, v50
	v_fma_f32 v48, -v48, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v48, v48, v50, v54
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v55, v95, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v95, v23, v22, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v56, v96, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v50
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v96, v48, v32, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v73, v97, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v32, 0xbfb8aa3b, v24
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, null, v51, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v52
	v_fma_f32 v55, -v52, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v50, v51, v50
	v_mul_f32_e32 v63, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v52, v63, v55
	v_fmac_f32_e32 v63, v64, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v63, v55
	v_div_fmas_f32 v52, v52, v54, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v97, v52, v51, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v57, v76, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v21 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v23
	v_fma_f32 v55, -v23, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v56, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v23, v56, v55
	v_fmac_f32_e32 v56, v63, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v56, v55
	v_div_fmas_f32 v23, v23, v54, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v98, v23, v22, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v58, v77, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v48
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v32, v32, v24
	v_rcp_f32_e32 v54, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v48, v54, 1.0
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v24, v32, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v55, v54
	v_fma_f32 v63, -v48, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v63, v54
	v_fma_f32 v48, -v48, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v54, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v99, v48, v32, v24
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v59, v61, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v51, v51
	v_mul_f32_e32 v24, 0xbfb8aa3b, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v51, v51, v52
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, null, v51, v51, v50
	v_rcp_f32_e32 v54, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v52, v54, 1.0
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v50, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v55, v54
	v_fma_f32 v57, -v52, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v54
	v_fma_f32 v52, -v52, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v52, v52, v54, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v100, v52, v51, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v60, v62, s3
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
	v_fma_f32 v55, -v23, v54, 1.0
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v55, v54
	v_fma_f32 v57, -v23, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v54
	v_fma_f32 v23, -v23, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v54, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v108, v23, v22, v21
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:792
	scratch_load_b32 v22, off, off offset:8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v32
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v48
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v48, v48, v32
	v_rcp_f32_e32 v54, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v24, v54, 1.0
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v32, v48, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v55, v54
	v_fma_f32 v57, -v24, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v54
	v_fma_f32 v24, -v24, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v54, v24, v54, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v82, v54, v48, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v32, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v51, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v24
	v_fma_f32 v55, -v24, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v55, v52
	v_div_scale_f32 v55, vcc_lo, v50, v51, v50
	v_mul_f32_e32 v56, v55, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v24, v56, v55
	v_fmac_f32_e32 v56, v57, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v56, v55
	v_div_fmas_f32 v52, v24, v52, v56
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v56, v244, v230
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v81, v52, v51, v50
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v50, off, off offset:784
	scratch_load_b32 v51, off, off offset:108
	scratch_load_b32 v48, off, off offset:4
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v21, v21, v255
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, v21, v10, v22
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v22, v21, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	ds_load_b128 v[21:24], v175 offset:37392
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v56, v56, v22, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v56, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v56, v56
	v_ldexp_f32 v56, v56, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v57, null, v56, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v58, v57
	v_fma_f32 v59, -v57, v58, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v58
	v_div_scale_f32 v59, vcc_lo, v55, v56, v55
	v_mul_f32_e32 v60, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v57, v60, v59
	v_fmac_f32_e32 v60, v61, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v57, v60, v59
	v_div_fmas_f32 v57, v57, v58, v60
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v80, v57, v56, v55
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v55, off, off offset:780 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v32, v32, v255
	v_mul_f32_e32 v56, v1, v230
	scratch_load_b32 v1, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v50, v50, v255
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(2)
	v_fma_f32 v32, v32, v9, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, v50, v12, v51
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v48, v32, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v48, v243, v230
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v51, v50, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v51, v242, v230
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v48, v48, v21, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v51, v51, v24, v50
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v48, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v50, v50, v51, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v48, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v48, v48, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, null, v48, v48, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v58, v54
	v_fma_f32 v59, -v54, v58, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v58
	v_div_scale_f32 v59, vcc_lo, v32, v48, v32
	v_mul_f32_e32 v60, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v54, v60, v59
	v_fmac_f32_e32 v60, v61, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v54, v60, v59
	v_div_fmas_f32 v54, v54, v58, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v109, v54, v48, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v53, v110, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v50 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, null, v51, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v58, v52
	v_fma_f32 v59, -v52, v58, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v58
	v_div_scale_f32 v59, vcc_lo, v50, v51, v50
	v_mul_f32_e32 v60, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v52, v60, v59
	v_fmac_f32_e32 v60, v61, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v60, v59
	v_div_fmas_f32 v52, v52, v58, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v79, v52, v51, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v50, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v55, v55, v255
	.loc	1 396 21 is_stmt 1              ; generate_amdgcn.py:396:21
	v_fma_f32 v55, v55, v11, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v125, v55, s2
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v56, v56, v23, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v56, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v56, v56
	v_ldexp_f32 v56, v56, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v57, null, v56, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v58, v57
	v_fma_f32 v59, -v57, v58, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v58
	v_div_scale_f32 v59, vcc_lo, v55, v56, v55
	v_mul_f32_e32 v60, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v57, v60, v59
	v_fmac_f32_e32 v60, v61, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v57, v60, v59
	v_div_fmas_f32 v57, v57, v58, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v110, v57, v56, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v48, v48, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, null, v48, v48, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v53
	v_fma_f32 v58, -v53, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v58, v54
	v_div_scale_f32 v58, vcc_lo, v32, v48, v32
	v_mul_f32_e32 v59, v58, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v53, v59, v58
	v_fmac_f32_e32 v59, v60, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v59, v58
	v_div_fmas_f32 v53, v53, v54, v59
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v111, v53, v48, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v37, v44, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v50, v50
	v_ldexp_f32 v50, v50, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v51, null, v50, v50, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v51
	v_fma_f32 v54, -v51, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, vcc_lo, v46, v50, v46
	v_mul_f32_e32 v58, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v51, v58, v54
	v_fmac_f32_e32 v58, v59, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v58, v54
	v_div_fmas_f32 v51, v51, v52, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v113, v51, v50, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v46, 0xbfb8aa3b, v42 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v47, v47, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, null, v47, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v52
	v_fma_f32 v55, -v52, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v41, v47, v41
	v_mul_f32_e32 v56, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v52, v56, v55
	v_fmac_f32_e32 v56, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v56, v55
	v_div_fmas_f32 v52, v52, v54, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v115, v52, v47, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v41, 0xbfb8aa3b, v38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v37, v37, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v44
	v_fma_f32 v53, -v44, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v53, v48
	v_div_scale_f32 v53, vcc_lo, v32, v37, v32
	v_mul_f32_e32 v54, v53, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v44, v54, v53
	v_fmac_f32_e32 v54, v55, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v44, v54, v53
	v_div_fmas_f32 v44, v44, v48, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v125, v44, v37, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v129, v40, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v46, 0xbfb8aa3b, v42 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v46, v46, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v46, v46, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v51, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v42, v46, v42
	v_mul_f32_e32 v53, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v48, v53, v51
	v_fmac_f32_e32 v53, v54, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v48, v53, v51
	v_div_fmas_f32 v48, v48, v50, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v129, v48, v46, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v42, 0xbfb8aa3b, v35 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v41, v41, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v50, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v50, vcc_lo, v38, v41, v38
	v_mul_f32_e32 v51, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v45, v51, v50
	v_fmac_f32_e32 v51, v52, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v51, v50
	v_div_fmas_f32 v45, v45, v47, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v168, v45, v41, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v38, 0xbfb8aa3b, v36
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, null, v37, v37, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v40
	v_fma_f32 v47, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v47, v44
	v_div_scale_f32 v47, vcc_lo, v32, v37, v32
	v_mul_f32_e32 v50, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v40, v50, v47
	v_fmac_f32_e32 v50, v51, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v50, v47
	v_div_fmas_f32 v40, v40, v44, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v175, v40, v37, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v199, v39, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v42, 0xbfb8aa3b, v35 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v42, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v42, v42, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v44
	v_fma_f32 v47, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v35, v42, v35
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v44, v48, v47
	v_fmac_f32_e32 v48, v50, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v44, v48, v47
	v_div_fmas_f32 v44, v44, v46, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v199, v44, v42, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v202, v212, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v38, v38
	v_ldexp_f32 v38, v38, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v38, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v45, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, vcc_lo, v36, v38, v36
	v_mul_f32_e32 v46, v45, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v41, v46, v45
	v_fmac_f32_e32 v46, v47, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v46, v45
	v_div_fmas_f32 v41, v41, v43, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v202, v41, v38, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v198, v206, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v38, 0xbfb8aa3b, v36
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v39
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v37, v37, v32
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v43, vcc_lo, v32, v37, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v43, v40
	v_fma_f32 v46, -v39, v45, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v40
	v_fma_f32 v39, -v39, v45, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v40, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v206, v39, v37, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v32, off, off offset:712 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v40, v40, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v35, v40, v35
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v198, v42, v40, v35
	scratch_load_b32 v35, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v38, v38
	v_ldexp_f32 v38, v38, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v38, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v36, v38, v36
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v41, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v45, v44
	v_div_fmas_f32 v41, v41, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v212, v41, v38, v36
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v32, v32, v254
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v32, v10, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v35, v32, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v35, v182, v155
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v35, v35, v22, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v35, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v35, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v37
	v_fma_f32 v40, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v32, v35, v32
	v_mul_f32_e32 v42, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v37, v42, v40
	v_fmac_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v37, -v37, v42, v40
	scratch_load_b32 v40, off, off offset:100 ; 4-byte Folded Reload
	v_div_fmas_f32 v37, v37, v39, v42
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v39, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v78, v37, v35, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v208, v211, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v32
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v39, v254
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v39, v39, v9, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v40, v39, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v40, v184, v155
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v40, v40, v21, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v40, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v40, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v39, v40, v39
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	scratch_load_b32 v44, off, off offset:96 ; 4-byte Folded Reload
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v43, off, off offset:700 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v77, v42, v40, v39
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v43, v43, v12, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v44, v43, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v44, v186, v155
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
	v_fma_f32 v50, -v45, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v50, v46
	v_fma_f32 v45, -v45, v48, v47
	scratch_load_b32 v47, off, off offset:92 ; 4-byte Folded Reload
	v_div_fmas_f32 v45, v45, v46, v48
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v46, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v76, v45, v44, v43
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v46, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v46, v46, v11, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v47, v187, v155
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
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v48, v50, 1.0
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v46, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v52, v51, v50
	v_fma_f32 v53, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v50
	v_fma_f32 v48, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v50, v52
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
	v_cndmask_b32_e64 v40, v197, v207, s3
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
	v_cndmask_b32_e64 v43, v132, v203, s3
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
	v_fma_f32 v50, -v45, v48, v47
	v_fmac_f32_e32 v48, v50, v46
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
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v51, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v46, v47, v46
	v_mul_f32_e32 v52, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v48, v52, v51
	v_fmac_f32_e32 v52, v53, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v48, v52, v51
	v_div_fmas_f32 v48, v48, v50, v52
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
	v_fma_f32 v50, -v45, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v50, v46
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
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v48, v50, 1.0
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v46, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v52, v51, v50
	v_fma_f32 v53, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v50
	v_fma_f32 v48, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v50, v52
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
	scratch_load_b32 v32, off, off offset:648
	scratch_load_b32 v35, off, off offset:88
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v127, v39, v38, v37
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v32, v32, v183
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v32, v10, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v35, v32, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v35, v219, v85
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v35, v35, v22, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v35, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v35, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v41, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v32, v35, v32
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v36, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v36, -v36, v42, v41
	scratch_load_b32 v41, off, off offset:84 ; 4-byte Folded Reload
	v_div_fmas_f32 v36, v36, v40, v42
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v40, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v114, v36, v35, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v135, v213, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v40, v40, v183
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v40, v40, v9, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v41, v40, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v41, v225, v85
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
	scratch_load_b32 v44, off, off offset:80 ; 4-byte Folded Reload
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v43, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v74, v42, v41, v40
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v43, v43, v12, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v44, v43, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v44, v1, v85
	scratch_load_b32 v1, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v44, v44, v24, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v44, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
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
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
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
	v_fma_f32 v50, -v45, v48, v47
	v_fmac_f32_e32 v48, v50, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	scratch_load_b32 v47, off, off          ; 4-byte Folded Reload
	v_div_fmas_f32 v45, v45, v46, v48
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v46, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v73, v45, v44, v43
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v46, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v46, v46, v11, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	v_mul_f32_e32 v47, v1, v85
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
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v48, v50, 1.0
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v46, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v52, v51, v50
	v_fma_f32 v53, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v50
	v_fma_f32 v48, -v48, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v50, v52
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
	v_cndmask_b32_e64 v37, v134, v154, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v118, v36, v35, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v37
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v133, v0, s3
	v_cndmask_b32_e64 v0, v121, v120, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v29, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_mul_f32_e32 v35, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v37
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v39
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
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
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v39, v39, v38, v37
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v40, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v38, v36, v35, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v40, v40, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v0, v40, v0
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v119, v107, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v37, v41, v40, v0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v117, v105, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_mul_f32_e32 v32, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v42
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v43, v43, v44
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v43, v43, v42
	v_rcp_f32_e32 v45, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v44, v45, 1.0
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, vcc_lo, v42, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v46, v45
	v_fma_f32 v48, -v44, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v45
	v_fma_f32 v44, -v44, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v44, v44, v45, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v44, v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, null, v45, v45, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v46
	v_fma_f32 v48, -v46, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v34, v45, v34
	v_mul_f32_e32 v50, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v46, v50, v48
	v_fmac_f32_e32 v50, v51, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v46, v50, v48
	v_div_fmas_f32 v46, v46, v47, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	scratch_load_b32 v50, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v106, v46, v45, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:412
	scratch_load_b32 v46, off, off offset:748
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v32, v32, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v32, v32, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v34
	v_fma_f32 v40, -v34, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v40, v35
	v_div_scale_f32 v40, vcc_lo, v0, v32, v0
	v_mul_f32_e32 v41, v40, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v34, v41, v40
	v_fmac_f32_e32 v41, v42, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v41, v40
	v_div_fmas_f32 v34, v34, v35, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v107, v34, v32, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v177, v170, s3
	v_cndmask_b32_e64 v32, v178, v144, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v34.h, v193.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v31, v31, v107
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v32, v32, v93 :: v_dual_fmac_f32 v35, 0xbfb8aa3b, v104
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v34.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v32, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v40
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v105, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v105, v105, v104
	v_rcp_f32_e32 v40, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v35, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v104, v105, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v35, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v43, v40
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v43.h, v193.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v35, -v35, v42, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v35, v35, v40, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v32.h
	v_mov_b16_e64 v40.h, v193.l
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e64 v42.h, v193.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v35, v35, v105, v104
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v0, v34, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v176, v171, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v40, v32, v40, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v164, v172, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v0, v94
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v0.l, 0x7fff, v40.h, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v95
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v40.h, v193.l
	v_cndmask_b16 v0.h, 0x7fff, v34.h, vcc_lo
	v_mov_b16_e32 v40.l, v41.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v188, v192, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v32.h
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_cmp_o_f32_e64 s0, v32, v32
	v_and_b32_e32 v40, 1, v40
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v34, v34, v96
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v41, v40, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v185, v191, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v42, v32, v42, 0x7fff
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v41, v97
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v34.h
	v_mov_b16_e64 v41.h, v193.l
	v_mov_b16_e32 v43.l, v32.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v32, v32
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v41, v34, v41, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v181, v190, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v180, v189, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v71.h, 0x7fff, v41.h, s1
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v41, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v44, v34, v98
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v34.l, 0x7fff, v42.h, s0
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v42, off, off offset:424
	scratch_load_b128 v[5:8], off, off offset:1108
	v_cndmask_b16 v71.l, 0x7fff, v43.h, s4
	scratch_load_b32 v43, off, off offset:420 ; 4-byte Folded Reload
	v_cndmask_b16 v34.h, 0x7fff, v40.h, vcc_lo
	v_mov_b16_e32 v40.l, v44.h
	v_mov_b16_e64 v40.h, v193.l
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v40, 1, v40
	v_cmp_o_f32_e64 s0, v32, v32
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v40, v44, v40, 0x7fff
	scratch_load_b32 v44, off, off offset:416 ; 4-byte Folded Reload
	v_cndmask_b16 v67.h, 0x7fff, v40.h, vcc_lo
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v46, v46, v230 :: v_dual_mul_f32 v41, v41, v255
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, v41, v6, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v42, v41, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v42, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v42, v5, v43
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v43, v42, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v18, v41
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v41, v43, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v41, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v41, v41
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v230
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v17, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v43, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v32.h
	v_mov_b16_e64 v43.h, v193.l
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v42, v108
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v41.h
	v_mov_b16_e64 v42.h, v193.l
	v_cndmask_b16 v67.l, 0x7fff, v43.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s4, v32, v32
	scratch_load_b32 v43, off, off offset:404 ; 4-byte Folded Reload
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v41, v42, 0x7fff
	v_mov_b16_e32 v41.l, v32.h
	v_mov_b16_e64 v41.h, v193.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.h, 0x7fff, v42.h, s1
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v42, off, off offset:408
	scratch_load_b128 v[1:4], off, off offset:1092
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v32, v41, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:592 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v68.l, 0x7fff, v41.h, s4
	v_mov_b16_e64 v41.h, v193.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v8, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v44, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v44, v44, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v7, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v45, v44, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v20, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v32.h
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v32, v41, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v63.h, 0x7fff, v41.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v166, v179, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v41, v111
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v255
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v2, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v42, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:580 ; 4-byte Folded Reload
	v_mul_f32_e32 v45, v45, v230
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v19, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v45, s3
	scratch_load_b32 v45, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v44, v81
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v40, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v42, v42, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v42, v1, v43
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v43, v42, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v14, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v43, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v230
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v13, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v43, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v40.h
	v_mov_b16_e64 v43.h, v193.l
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v40, v43, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v42, v109
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v32.h
	v_mov_b16_e64 v42.h, v193.l
	v_cndmask_b16 v63.l, 0x7fff, v43.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v40, v40
	v_mov_b16_e64 v43.h, v193.l
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v32, v42, 0x7fff
	v_mov_b16_e32 v32.l, v40.h
	v_mov_b16_e64 v32.h, v193.l
	v_cndmask_b16 v64.h, 0x7fff, v42.h, s1
	v_mov_b16_e64 v42.h, v193.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v32, 1, v32
	v_cmp_o_f32_e64 s1, v41, v41
	v_add3_u32 v32, v40, v32, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v40, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v64.l, 0x7fff, v32.h, s4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v40, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v40, v40, v4, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v45, v40, s2
	scratch_load_b32 v45, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v44, v44, v255
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, v44, v3, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v45, v44, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v16, v40
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v45, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v46, v15, v44
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v46, off, off offset:716 ; 4-byte Folded Reload
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v79
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v45, s3
	scratch_load_b32 v45, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v40.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v44, v110
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_mov_b16_e64 v44.h, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v42, 1, v42
	v_mov_b16_e32 v43.l, v32.h
	v_cmp_o_f32_e64 s0, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v42, v40, v42, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v123, v220, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v65.h, 0x7fff, v42.h, vcc_lo
	v_mov_b16_e64 v42.h, v193.l
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v40, v113
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v41.h
	v_mov_b16_e64 v40.h, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v65.l, 0x7fff, v43.h, s0
	v_mov_b16_e32 v44.l, v32.h
	v_cmp_o_f32_e64 s4, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e64 v43.h, v193.l
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v40, v41, v40, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v25, v223, s3
	scratch_load_b32 v25, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v32, v44, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v163, v224, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v66.h, 0x7fff, v40.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v41, v115
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v150, v86, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v66.l, 0x7fff, v44.h, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v125
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v44.h, v193.l
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v129
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v32.h
	v_cmp_o_f32_e64 s0, v32, v32
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v40, v40
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v41, v42, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v149, v152, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v32, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v69.h, 0x7fff, v42.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v41, v168
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v40.h
	v_mov_b16_e64 v41.h, v193.l
	scratch_load_b32 v42, off, off offset:392 ; 4-byte Folded Reload
	v_cndmask_b16 v69.l, 0x7fff, v43.h, s0
	scratch_load_b32 v43, off, off offset:388 ; 4-byte Folded Reload
	v_mov_b16_e32 v44.l, v32.h
	v_and_b32_e32 v41, 1, v41
	v_cmp_o_f32_e64 s4, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v41, v40, v41, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v148, v174, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v32, v44, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v41.h, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v175
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v41.h, v193.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v147, v151, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v70.l, 0x7fff, v44.h, s4
	scratch_load_b32 v44, off, off offset:384 ; 4-byte Folded Reload
	v_mov_b16_e32 v41.l, v40.h
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v32, v32, v199 :: v_dual_and_b32 v41, 1, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v32, v32
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v41, v40, v41, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v40, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v59.h, 0x7fff, v41.h, vcc_lo
	v_mov_b16_e64 v41.h, v193.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v46, v46, v155
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v28, v28, v25, s3
	scratch_load_b32 v25, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v28, v28, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v39.l, v29.h
	v_mov_b16_e64 v39.h, v193.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v29, v39, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v40, v40, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v40, v40, v6, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v42, v40, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v27, v27, v25, s3
	scratch_load_b32 v25, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v27, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v103, v91, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v42, v5, v43
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v43, v42, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:744 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v18, v40
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v43, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v40, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v155
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v17, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v43, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v32.h
	v_mov_b16_e64 v43.h, v193.l
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v42, v206
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v40.h
	v_mov_b16_e64 v42.h, v193.l
	v_cndmask_b16 v59.l, 0x7fff, v43.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s4, v32, v32
	scratch_load_b32 v43, off, off offset:372 ; 4-byte Folded Reload
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v40, v42, 0x7fff
	v_mov_b16_e32 v40.l, v32.h
	v_mov_b16_e64 v40.h, v193.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v60.h, 0x7fff, v42.h, s1
	scratch_load_b32 v42, off, off offset:376 ; 4-byte Folded Reload
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v32, v40, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v60.l, 0x7fff, v40.h, s4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v8, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v44, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v44, v44, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v7, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v45, v44, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:736 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v20, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v32.h
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v32, v41, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v55.h, 0x7fff, v41.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v217, v227, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v41, v41, v205 :: v_dual_mul_f32 v32, v32, v254
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v2, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v42, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:548 ; 4-byte Folded Reload
	v_mul_f32_e32 v45, v45, v155
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v19, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v45, s3
	scratch_load_b32 v45, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v44, v212
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v40, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v42, v42, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v42, v1, v43
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v43, v42, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v14, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v43, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v155
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v13, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v43, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v40.h
	v_mov_b16_e64 v43.h, v193.l
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v40, v43, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v42, v77
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v32.h
	v_mov_b16_e64 v42.h, v193.l
	v_cndmask_b16 v55.l, 0x7fff, v43.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v40, v40
	v_mov_b16_e64 v43.h, v193.l
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v32, v42, 0x7fff
	v_mov_b16_e32 v32.l, v40.h
	v_mov_b16_e64 v32.h, v193.l
	v_cndmask_b16 v56.h, 0x7fff, v42.h, s1
	v_mov_b16_e64 v42.h, v193.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v32, 1, v32
	v_cmp_o_f32_e64 s1, v41, v41
	v_add3_u32 v32, v40, v32, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v40, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v56.l, 0x7fff, v32.h, s4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v40, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v40, v40, v4, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v45, v40, s2
	scratch_load_b32 v45, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_mul_f32_e32 v44, v44, v254
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, v44, v3, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v45, v44, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v16, v40
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v45, s3
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v46, v15, v44
	scratch_load_b32 v46, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v45, s3
	scratch_load_b32 v45, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v40.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v44, v75
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_mov_b16_e64 v44.h, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v42, 1, v42
	v_mov_b16_e32 v43.l, v32.h
	v_cmp_o_f32_e64 s0, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v42, v40, v42, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v158, v161, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v57.h, 0x7fff, v42.h, vcc_lo
	v_mov_b16_e64 v42.h, v193.l
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v40, v203
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v41.h
	v_mov_b16_e64 v40.h, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v57.l, 0x7fff, v43.h, s0
	v_mov_b16_e32 v44.l, v32.h
	v_cmp_o_f32_e64 s4, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e64 v43.h, v193.l
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v41, v40, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v157, v160, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v32, v44, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v156, v228, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v58.h, 0x7fff, v40.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v41, v201
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v142, v146, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v58.l, 0x7fff, v44.h, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v197
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v44.h, v193.l
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v132
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v32.h
	v_cmp_o_f32_e64 s0, v32, v32
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v40, v40
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v41, v42, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v141, v226, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v32, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v61.h, 0x7fff, v42.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v41, v131
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v40.h
	v_mov_b16_e64 v41.h, v193.l
	scratch_load_b32 v42, off, off offset:360 ; 4-byte Folded Reload
	v_cndmask_b16 v61.l, 0x7fff, v43.h, s0
	scratch_load_b32 v43, off, off offset:356 ; 4-byte Folded Reload
	v_mov_b16_e32 v44.l, v32.h
	v_and_b32_e32 v41, 1, v41
	v_cmp_o_f32_e64 s4, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v41, v40, v41, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v140, v153, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v32, v44, 0x7fff
	v_cndmask_b16 v62.h, 0x7fff, v41.h, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v130
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v41.h, v193.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v139, v143, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v62.l, 0x7fff, v44.h, s4
	scratch_load_b32 v44, off, off offset:352 ; 4-byte Folded Reload
	v_mov_b16_e32 v41.l, v40.h
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v32, v32, v128 :: v_dual_and_b32 v41, 1, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v32, v32
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v41, v40, v41, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v40, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v51.h, 0x7fff, v41.h, vcc_lo
	v_mov_b16_e64 v41.h, v193.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v40, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v40, v40, v6, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v42, v40, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v42, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v42, v5, v43
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v43, v42, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v18, v40
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v43, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v40, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v85
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v17, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v43, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v32.h
	v_mov_b16_e64 v43.h, v193.l
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v42, v124
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v40.h
	v_mov_b16_e64 v42.h, v193.l
	v_cndmask_b16 v51.l, 0x7fff, v43.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s4, v32, v32
	scratch_load_b32 v43, off, off offset:340 ; 4-byte Folded Reload
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v40, v42, 0x7fff
	v_mov_b16_e32 v40.l, v32.h
	v_mov_b16_e64 v40.h, v193.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v52.h, 0x7fff, v42.h, s1
	scratch_load_b32 v42, off, off offset:344 ; 4-byte Folded Reload
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v32, v40, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v52.l, 0x7fff, v40.h, s4
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v8, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v44, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v44, v44, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v7, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v45, v44, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:684 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v20, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v45, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v32.h
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v32, v41, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v47.h, 0x7fff, v41.h, vcc_lo
	v_mov_b16_e64 v41.h, v193.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v32, v32, v2, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v42, v32, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v42, off, off offset:516 ; 4-byte Folded Reload
	v_mul_f32_e32 v45, v45, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v45, v19, v44
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v45, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v45.h, v193.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v44, v127
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v40, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v183
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v42, v42, v1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v43, v42, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v85
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v14, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v43, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v114
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v43, v43, v13, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v43, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v40.h
	v_mov_b16_e64 v43.h, v193.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v40, v43, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v42, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v32.h
	v_mov_b16_e64 v42.h, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v47.l, 0x7fff, v43.h, s0
	v_mov_b16_e32 v45.l, v40.h
	v_cmp_o_f32_e64 s4, v40, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v42, 1, v42
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:328
	scratch_load_b32 v53, off, off offset:72
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	v_dual_mul_f32 v44, v44, v183 :: v_dual_and_b32 v45, 1, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v42, v32, v42, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v32, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v169, v25, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v40, v45, 0x7fff
	scratch_load_b32 v40, off, off offset:336 ; 4-byte Folded Reload
	v_cndmask_b16 v48.h, 0x7fff, v42.h, s1
	v_cmp_o_f32_e64 s1, v29, v29
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e64 v29.h, v193.l
	v_cndmask_b16 v48.l, 0x7fff, v45.h, s4
	v_cmp_o_f32_e64 s4, v28, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v30, v165, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v25, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v29, 1, v29
	v_mov_b16_e32 v37.l, v27.h
	v_mov_b16_e64 v37.h, v193.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v35, v42, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v27, v37, 0x7fff
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	s_waitcnt vmcnt(3)
	v_lshrrev_b32_e32 v43, 1, v43
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v32, v32, v183
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, v32, v4, v40
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v40, v32, s2
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v40, v44, v3, v46
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v44, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v46, v40, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v46, off, off offset:660 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v44, v44, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v44, v16, v32
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v46, v85
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v44, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v44, v46, v15, v40
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v73
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v44, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v31.h
	v_mov_b16_e64 v44.h, v193.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v32.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v72
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v73
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s0, v40, v40
	scratch_load_b32 v73, off, off offset:56 ; 4-byte Folded Reload
	v_add3_u32 v41, v32, v41, 0x7fff
	v_mov_b16_e32 v32.l, v40.h
	v_mov_b16_e64 v32.h, v193.l
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v32, v40, v32, 0x7fff
	v_add3_u32 v40, v28, v29, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v49, v137, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v28.l, 0x7fff, v32.h, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v83, v138, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v29.h, 0x7fff, v39.h, s1
	v_cndmask_b16 v29.l, 0x7fff, v40.h, s4
	v_cmp_o_f32_e64 s0, v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v27, v27, v106 :: v_dual_mul_f32 v36, v32, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v32.l, v25.h
	v_mov_b16_e64 v32.h, v193.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v102, v90, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v27.h
	v_mov_b16_e32 v37.l, v36.h
	v_mov_b16_e64 v41.h, v193.l
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v25, v32, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v32.h, 0x7fff, v37.h, vcc_lo
	v_mov_b16_e64 v37.h, v193.l
	v_add3_u32 v41, v27, v41, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v39.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v25
	v_mul_f32_e32 v25, 0xbfb8aa3b, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v37, 1, v37
	v_cmp_o_f32_e64 s0, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v37, v36, v37, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_and_b32_e32 v27, 1, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v38 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v44, v31, v27, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v27, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v30, v36, v30
	v_ldexp_f32 v39, v25, v39
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	scratch_load_b32 v25, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v30.h, 0x7fff, v37.h, s0
	v_cmp_o_f32_e64 s0, v31, v31
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v31, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v46, v46, v40
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v30.l, 0x7fff, v41.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, s1, v40, v46, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v37
	v_div_scale_f32 v36, null, v39, v39, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v45, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v36, v45, 1.0
	v_fmac_f32_e32 v45, v41, v45
	v_div_scale_f32 v41, vcc_lo, v38, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v41, v45
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v193
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v6, v27, v6, v53
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v37, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v53, v6, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v27, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v27, off, off offset:704 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v53, -v36, v49, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v53, v45
	v_mul_f32_e32 v53, v54, v42
	v_fma_f32 v36, -v36, v49, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v37, v53, v54
	v_div_fmas_f32 v36, v36, v45, v49
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v53, v41, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v35.h
	v_mov_b16_e64 v45.h, v193.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v36, v39, v38
	v_fma_f32 v37, -v37, v53, v54
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s5
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v37, v42, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v33
	scratch_load_b32 v53, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v37, v37, v46, v40
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v46, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v31, v31, v193
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v25, s27, v25
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v40.h, v193.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v5, v31, v5, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v101, v88, s3
	v_cndmask_b32_e64 v50, v50, v5, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v41, 0, 0x42800000, s4
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v42
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v72, v27, v26
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v27, s27, 4, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v5, v72, v18, v6
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v18, s27, 5, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v6, v5, s3
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[5:6], null, s27, 48, v[25:26]
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v6, off, off offset:688 ; 4-byte Folded Reload
	s_mov_b32 s27, 0x31027000
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v72, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v36.h
	v_cmp_o_f32_e64 s0, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v36, v40, 0x7fff
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v46, v46, v193
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v49, v6, v26
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v6, s34, s33, v43
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v45, v49, v17, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v49, v54
	scratch_load_b32 v54, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v35, v43, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v50, v45, s3
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v50, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v41.h, v193.l
	v_cndmask_b16 v44.l, 0x7fff, v43.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v35, v35, v31
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v49, v38
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v45, v37
	.loc	1 448 18 is_stmt 1              ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v17, 0x80, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v39
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v37.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v38, v38, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v37, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v49, v42
	v_fma_f32 v49, -v45, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, s1, v33, v38, v33
	v_mul_f32_e32 v72, v49, v43
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v8, v46, v8, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, vcc_lo, v31, v35, v31
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v50, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v54, v8, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v36, v46, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v7, v50, v7, v53
	.loc	1 392 24 is_stmt 0              ; generate_amdgcn.py:392:24
	scratch_load_b32 v50, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v39, v36, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v53, v7, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v53, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v36, v54, v42
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v54, off, off offset:612 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v50, v50, v26
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v20, v50, v20, v8
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	scratch_load_b32 v50, off, off offset:616 ; 4-byte Folded Reload
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v53, v53, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v20, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v39, v36, v46
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:52
	scratch_load_b32 v39, off, off offset:172
	.loc	1 392 17                        ; generate_amdgcn.py:392:17
	v_fma_f32 v19, v53, v19, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v53, -v45, v72, v49
	v_div_fmas_f32 v20, v20, v42, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v42, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v54, v54, v193
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v72, v53, v43
	v_div_fixup_f32 v20, v20, v35, v31
	scratch_load_b32 v35, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v19, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v37, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v45, v72, v49
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v8, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.h, 0x7fff, v40.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v20.l, 0x7fff, v41.h, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v36, v43, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v8, v8
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v43, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(4)
	v_fma_f32 v9, v54, v9, v46
	.loc	1 396 33 is_stmt 0              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v39, v39, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v46, v9, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v42, v42, v26
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v19, v42, v21, v9
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v21, v36, v38, v33
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:604
	scratch_load_b32 v38, off, off offset:40
	scratch_load_b32 v36, off, off offset:44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v19, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v7, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v8.h
	v_mov_b16_e64 v21.h, v193.l
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v43, v43, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v8, v21, 0x7fff
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v8, off, off offset:608 ; 4-byte Folded Reload
	v_mul_f32_e32 v50, v50, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v10, v50, v10, v73
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v73, v10, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 396 21                        ; generate_amdgcn.py:396:21
	v_fma_f32 v22, v39, v22, v10
	scratch_load_b32 v39, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v22, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v22, 0xbfb8aa3b, v9 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v31, 0, 0x42800000, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v7.h
	v_mov_b16_e64 v19.h, v193.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v10 :: v_dual_and_b32 v19, 1, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v19, v7, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v33, v33, v193
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	s_waitcnt vmcnt(2)
	v_fma_f32 v11, v33, v11, v36
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v36, v11, s2
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v8, v8, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v8, v8, v12, v35
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.h, 0x7fff, v21.h, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v31
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v35, v8, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v31
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	scratch_load_b32 v31, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v21, v21, v35
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v21, v21, v9
	v_div_scale_f32 v40, s4, v9, v21, v9
	.loc	1 396 33 is_stmt 1              ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v33, v33, v26
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v24, v33, v24, v8
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v33, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v24, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v22, v22, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v35, v24
	.loc	1 396 33                        ; generate_amdgcn.py:396:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v31, v31, v26
	.loc	1 396 21 is_stmt 0              ; generate_amdgcn.py:396:21
	v_fma_f32 v23, v31, v23, v11
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v31, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v23, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v37, 0xbfb8aa3b, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v23, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v11
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v33, v33, v193
	.loc	1 392 17 is_stmt 0              ; generate_amdgcn.py:392:17
	v_fma_f32 v2, v33, v2, v39
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v24, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v39, v2, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v35, v33, v35
	v_fma_f32 v33, -v36, v23, 1.0
	v_div_scale_f32 v39, s1, v10, v22, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v33, v23
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v33, v37
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v41, v39, v35
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v24, v41, v39
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v33, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v1, v31, v1, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v45, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v38, v1, s2
	.loc	1 392 24                        ; generate_amdgcn.py:392:24
	scratch_load_b32 v38, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v8
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v24, -v24, v41, v39
	.loc	1 392 17 is_stmt 1              ; generate_amdgcn.py:392:17
	v_fma_f32 v13, v43, v13, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v31, v31
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v24, v24, v35, v41
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v13, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v24, v22, v10
	scratch_load_b32 v24, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v31, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v37, v40, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v36, v37, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v43, null, v31, v31, v8
	v_fmac_f32_e32 v37, v42, v23
	v_div_scale_f32 v42, null, v33, v33, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v36, v37, v40
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v23, v36, v23, v37
	v_div_fixup_f32 v9, v23, v21, v9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v13, -v42, v39, 1.0
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	scratch_load_b32 v21, off, off offset:480 ; 4-byte Folded Reload
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
	scratch_load_b32 v35, off, off offset:36 ; 4-byte Folded Reload
	v_fmac_f32_e32 v9, v10, v39
	.loc	1 392 24 is_stmt 1              ; generate_amdgcn.py:392:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:620
	scratch_load_b32 v23, off, off offset:476
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
	scratch_load_b32 v21, off, off offset:624 ; 4-byte Folded Reload
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
	v_div_fixup_f32 v8, v14, v31, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v2.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v10, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e64 v10.h, v193.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v9, v9, v33, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v13.h, v193.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_and_b32_e32 v8, 1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 1, v13
	v_mov_b16_e32 v10.l, v4.h
	v_cndmask_b16 v12.l, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v8, v1, v8, 0x7fff
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	v_add3_u32 v7, v2, v7, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cmp_o_f32_e64 s1, v4, v4
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
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v3, v9, 0x7fff
	v_add3_u32 v9, v4, v10, 0x7fff
	v_cmp_eq_u32_e64 s3, 0, v1
	v_cndmask_b16 v1.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v3.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s2
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
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v43, v3, v12, s3
	v_cndmask_b32_e64 v3, v12, v3, s3
	v_permlanex16_b32 v12, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, 0x1054, v20, s3
	v_cndmask_b32_e64 v20, 0x3276, v32, s3
	v_cndmask_b32_e64 v19, v60, v56, s3
	v_cndmask_b32_e64 v7, v34, v67, s3
	v_cndmask_b32_e64 v9, v68, v64, s3
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v20, v20, 8, v20
	v_permlanex16_b32 v32, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v11, v63, v65, s3
	v_cndmask_b32_e64 v14, v66, v70, s3
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v19, 0x760076, v20
	v_cndmask_b32_e64 v16, v69, v59, s3
	v_cndmask_b32_e64 v4, v67, v34, s3
	v_cndmask_b32_e64 v23, v55, v57, s3
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v19, v19, 4, v19
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v8, v64, v68, s3
	v_cndmask_b32_e64 v10, v65, v63, s3
	v_and_b32_e32 v42, 0x5040504, v0
	v_and_b32_e32 v44, 0x7060706, v19
	v_cndmask_b32_e64 v26, v58, v62, s3
	v_cndmask_b32_e64 v33, v61, v51, s3
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v13, v70, v66, s3
	v_cndmask_b32_e64 v15, v59, v69, s3
	v_cndmask_b32_e64 v35, v52, v48, s3
	v_cndmask_b32_e64 v36, v28, v47, s3
	v_cndmask_b32_e64 v28, v47, v28, s3
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v21, v56, v60, s3
	v_cndmask_b32_e64 v22, v57, v55, s3
	v_permlanex16_b32 v23, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v12, v2, v42
	v_perm_b32 v1, v12, v2, v44
	v_perm_b32 v2, v7, v4, v42
	v_perm_b32 v3, v7, v4, v44
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v4, v6, v25, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v24, v62, v58, s3
	v_cndmask_b32_e64 v31, v51, v61, s3
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v9, v8, v42
	v_perm_b32 v8, v9, v8, v44
	v_perm_b32 v9, v11, v10, v42
	v_perm_b32 v10, v11, v10, v44
	v_cndmask_b32_e64 v34, v48, v52, s3
	v_permlanex16_b32 v35, v35, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v14, v13, v42
	v_perm_b32 v12, v14, v13, v44
	v_perm_b32 v13, v16, v15, v42
	v_perm_b32 v14, v16, v15, v44
	v_add_lshl_u32 v15, v6, v27, 1
	v_permlanex16_b32 v40, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v19, v32, v21, v42
	v_perm_b32 v20, v32, v21, v44
	v_perm_b32 v21, v23, v22, v42
	v_perm_b32 v22, v23, v22, v44
	s_clause 0x2
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	buffer_store_b128 v[7:10], v4, s[24:27], 0 offen offset:256
	buffer_store_b128 v[11:14], v15, s[24:27], 0 offen
	v_add_lshl_u32 v0, v17, v27, 1
	v_perm_b32 v28, v26, v24, v42
	v_perm_b32 v29, v26, v24, v44
	v_perm_b32 v30, v33, v31, v42
	v_perm_b32 v31, v33, v31, v44
	v_add_lshl_u32 v1, v6, v18, 1
	v_perm_b32 v32, v35, v34, v42
	v_perm_b32 v33, v35, v34, v44
	v_perm_b32 v34, v38, v36, v42
	v_perm_b32 v35, v38, v36, v44
	v_add_lshl_u32 v2, v17, v18, 1
	v_perm_b32 v36, v40, v37, v42
	v_perm_b32 v37, v40, v37, v44
	v_perm_b32 v38, v45, v39, v42
	v_perm_b32 v39, v45, v39, v44
	v_add_lshl_u32 v3, v6, v5, 1
	v_perm_b32 v40, v46, v41, v42
	v_perm_b32 v41, v46, v41, v44
	v_perm_b32 v42, v47, v43, v42
	v_perm_b32 v43, v47, v43, v44
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1300
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 1300
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 53520
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 1300
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 1300
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 459
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
