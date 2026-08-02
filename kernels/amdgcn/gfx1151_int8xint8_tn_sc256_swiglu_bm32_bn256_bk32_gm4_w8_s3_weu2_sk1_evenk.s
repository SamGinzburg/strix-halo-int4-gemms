	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
	v_and_b32_e32 v91, 0xf0, v0
	v_lshlrev_b32_e32 v108, 2, v0
	v_and_b32_e32 v42, 15, v0
	v_or_b32_e32 v110, 0x3f0, v0
	v_lshlrev_b32_e32 v111, 5, v0
	v_lshrrev_b32_e32 v3, 3, v91
	v_and_b32_e32 v2, 28, v108
	v_and_b32_e32 v112, 4, v0
	v_and_b32_e32 v113, 8, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v54, 0, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
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
	s_lshl_b32 s13, s4, 2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v119, 0x110, v117
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v56, 0, v118
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
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
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
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
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
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
	s_ashr_i32 s18, s13, 31
	s_mul_i32 s14, s6, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s13, s7, s14
	s_add_i32 s14, s6, 1
	s_sub_i32 s19, s13, s17
	s_cmp_ge_u32 s13, s17
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s14, s14, s6
	s_cselect_b32 s6, s19, s13
	s_add_i32 s13, s14, 1
	s_cmp_ge_u32 s6, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s14, s13, s14
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s35, s27, 1
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s35, v3
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s14, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s12, 31
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s12, 0xff
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s12, s3, s16
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s3, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v109, v42, 4, v4
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s35, s30
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s16, s14, 31
.Ltmp17:
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v41, v1, v2, s34
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v1, s33, s12, v109
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s2, s16, 24
.Ltmp19:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s14, s2
.Ltmp21:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s35, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	v_cndmask_b32_e64 v5, 0x80000000, v1, s2
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[5:8], v5, s[20:23], 0 offen
	buffer_load_b128 v[9:12], v4, s[20:23], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s27, v1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v1, s27, 6, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s12, s26, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v13, s35, v4
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v22, s35, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s15, s26, 5
	v_add_nc_u32_e32 v2, s12, v41
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v17, 0x80000000, v13, s2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v21, s12, s15, v41
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[13:16], v4, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v1, s3
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s27, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v25, 0x80000000, v22, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v37, 0x80000000, v21, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v4, s[20:23], 0 offen
	buffer_load_b128 v[25:28], v25, s[20:23], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s35, v1
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	buffer_load_b32 v58, v37, s[4:7], 0 offen
	v_lshlrev_b32_e32 v3, 4, v0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	s_clause 0x1
	buffer_load_b128 v[29:32], v1, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v4, s[20:23], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v53, v2, s[4:7], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 16, v42
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x5f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
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
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v61, v17, v13, 0x5010400
	v_perm_b32 v62, v17, v13, 0x7030602
	v_perm_b32 v63, v18, v14, 0x5010400
	v_perm_b32 v64, v18, v14, 0x7030602
	v_perm_b32 v65, v19, v15, 0x5010400
	v_perm_b32 v66, v19, v15, 0x7030602
	v_perm_b32 v67, v20, v16, 0x5010400
	v_perm_b32 v68, v20, v16, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
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
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
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
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v76, v33, v29, 0x5010400
	v_perm_b32 v84, v33, v29, 0x7030602
	v_perm_b32 v85, v34, v30, 0x5010400
	v_perm_b32 v86, v34, v30, 0x7030602
	v_perm_b32 v87, v35, v31, 0x5010400
	v_perm_b32 v88, v35, v31, 0x7030602
	v_perm_b32 v89, v36, v32, 0x5010400
	v_perm_b32 v90, v36, v32, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v1.l, v1.l, v11.l
	v_or_b16 v2.l, v2.l, v12.l
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v7.h, v7.h, v15.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.l, 8, v45.l
	v_lshlrev_b16 v12.l, 8, v47.l
	v_lshlrev_b16 v15.l, 8, v59.l
	v_lshlrev_b16 v15.h, 8, v60.l
	v_lshrrev_b32_e32 v59, 8, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v1.h, v1.h, v11.h
	v_or_b16 v2.h, v2.h, v12.h
	v_or_b16 v5.h, v5.h, v13.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.h, 8, v46.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v5.l, v5.l, v13.l
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v8.h, v8.h, v16.h
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v29.l, 8, v67.l
	v_lshlrev_b16 v29.h, 8, v68.l
	v_lshlrev_b16 v30.l, 8, v69.l
	v_lshlrev_b16 v30.h, 8, v77.l
	v_lshlrev_b16 v31.l, 8, v70.l
	v_lshlrev_b16 v32.l, 8, v71.l
	v_lshlrev_b16 v33.l, 8, v72.l
	v_lshlrev_b16 v34.l, 8, v73.l
	v_lshlrev_b16 v35.l, 8, v74.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v55, v1
	ds_store_b16_d16_hi v55, v1 offset:32
	ds_store_b16 v55, v2 offset:64
	ds_store_b16_d16_hi v55, v2 offset:96
	ds_store_b16_d16_hi v56, v5 offset:32
	ds_store_b16 v56, v6 offset:64
	ds_store_b16_d16_hi v56, v6 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.h, v20.l, v12.l
	v_or_b16 v12.l, v23.h, v15.h
	v_lshlrev_b16 v23.h, 8, v59.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v33.h, 8, v80.l
	v_lshlrev_b16 v31.h, 8, v78.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.l, v19.h, v11.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v32.h, 8, v79.l
	v_lshlrev_b16 v34.h, 8, v81.l
	v_lshlrev_b16 v35.h, 8, v82.l
	v_lshlrev_b16 v36.l, 8, v75.l
	v_lshlrev_b16 v36.h, 8, v83.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v15.h, v27.l, v29.l
	v_or_b16 v16.l, v27.h, v29.h
	v_or_b16 v16.h, v28.l, v30.l
	v_or_b16 v17.l, v28.h, v30.h
	v_or_b16 v17.h, v37.l, v31.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v56, v5
	ds_store_b16 v57, v7
	ds_store_b16_d16_hi v57, v7 offset:32
	ds_store_b16 v57, v8 offset:64
	ds_store_b16_d16_hi v57, v8 offset:96
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v54, v53 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v55, v1 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v55, v9 offset:384
	ds_store_b16_d16_hi v55, v9 offset:416
	ds_store_b16 v55, v10 offset:448
	ds_store_b16_d16_hi v55, v10 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
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
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v55, v15 offset:8192
	ds_store_b16 v55, v16 offset:8224
	ds_store_b16_d16_hi v55, v16 offset:8256
	ds_store_b16 v55, v17 offset:8288
	ds_store_b16 v56, v18 offset:8224
	ds_store_b16_d16_hi v56, v18 offset:8256
	ds_store_b16 v56, v19 offset:8288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v56, v17 offset:8192
	ds_store_b16_d16_hi v57, v19 offset:8192
	ds_store_b16 v57, v20 offset:8224
	ds_store_b16_d16_hi v57, v20 offset:8256
	ds_store_b16 v57, v21 offset:8288
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b32 v54, v58 offset:33792
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v55, v2 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v55, v21 offset:8576
	ds_store_b16 v55, v22 offset:8608
	ds_store_b16_d16_hi v55, v22 offset:8640
	ds_store_b16 v55, v23 offset:8672
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v2, 5, v0
	v_and_b32_e32 v5, 0xe00, v3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v1, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v17, 4, v0
	v_and_b32_e32 v19, 8, v0
	s_mov_b32 s10, 0
	v_and_or_b32 v120, 0x60, v2, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr120
.LBB0_3:                                ; %Flow598
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v5, s34, v42
	v_or_b32_e32 v4, s34, v4
	s_ashr_i32 s1, s14, 8
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
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s48, s13, 5
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
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v126, 0, v131
	v_mov_b32_e32 v94, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v122, v120, v1
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v1, 32, v111
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_xor_b32_e32 v123, 16, v122
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v10, 0, v132, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v125, v10, v9
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v49, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
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
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s14, s0
	s_mov_b32 s17, s30
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s18, s13, 5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v25, s14, v42
	v_add_nc_u32_e32 v26, s14, v110
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s17, 31
	s_mov_b32 s15, s12
	s_mov_b32 s30, s44
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s11, s18
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s14, s14, 24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s15, v122
	v_add_nc_u32_e32 v13, s15, v123
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s44, s35
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_add_i32 s17, s17, s14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s15, s15, s33
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s17, 8
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s44, s26, v[41:42]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v195, s15, v109
	v_add_nc_u32_e32 v199, s15, v121
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s15, s15, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v28, v116, s14, 1
	v_add_lshl_u32 v211, v114, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v30, v115, s14, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v127, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v169, v25 offset:928
	ds_load_u8 v171, v25 offset:896
	ds_load_u8 v172, v25 offset:992
	ds_load_u8 v174, v25 offset:960
	ds_load_u8 v156, v26
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v213, v124, s14, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v26, 0x80000000, v30, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v212, 0x80000000, v28 :: v_dual_cndmask_b32 v211, 0x80000000, v211
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[195:198], v195, s[20:23], 0 offen
	buffer_load_b128 v[199:202], v199, s[20:23], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v219, 0x80000000, v213, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v128, v26, s[40:43], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v220, v212, s[36:39], 0 offen
	buffer_load_u16 v221, v211, s[36:39], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[17:20], v11
	ds_load_b128 v[21:24], v11 offset:4096
	ds_load_b128 v[9:12], v13
	ds_load_b128 v[13:16], v13 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v136, v25 offset:96
	ds_load_u8 v137, v25 offset:64
	ds_load_u8 v138, v25
	ds_load_u8 v129, v25 offset:16
	ds_load_u8 v141, v25 offset:32
	ds_load_u8 v130, v25 offset:112
	ds_load_u8 v135, v25 offset:80
	ds_load_u8 v134, v25 offset:48
	ds_load_u8 v149, v25 offset:416
	ds_load_u8 v151, v25 offset:384
	ds_load_u8 v152, v25 offset:480
	ds_load_u8 v153, v25 offset:448
	ds_load_u8 v139, v25 offset:496
	ds_load_u8 v140, v25 offset:464
	ds_load_u8 v142, v25 offset:432
	ds_load_u8 v143, v25 offset:400
	ds_load_u8 v157, v25 offset:288
	ds_load_u8 v158, v25 offset:256
	ds_load_u8 v159, v25 offset:352
	ds_load_u8 v43, v25 offset:320
	ds_load_u8 v144, v25 offset:368
	ds_load_u8 v145, v25 offset:336
	ds_load_u8 v146, v25 offset:304
	ds_load_u8 v147, v25 offset:272
	ds_load_u8 v162, v25 offset:160
	ds_load_u8 v164, v25 offset:128
	ds_load_u8 v165, v25 offset:224
	ds_load_u8 v166, v25 offset:192
	ds_load_u8 v148, v25 offset:240
	ds_load_u8 v150, v25 offset:208
	ds_load_u8 v154, v25 offset:176
	ds_load_u8 v155, v25 offset:144
	s_mov_b32 s16, s10
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v27, s16, v122
	v_add_nc_u32_e32 v29, s16, v123
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v160, v25 offset:976
	ds_load_u8 v161, v25 offset:944
	ds_load_u8 v163, v25 offset:912
	ds_load_u8 v180, v25 offset:800
	ds_load_u8 v182, v25 offset:768
	ds_load_u8 v183, v25 offset:864
	ds_load_u8 v184, v25 offset:832
	ds_load_u8 v167, v25 offset:880
	ds_load_u8 v168, v25 offset:848
	ds_load_u8 v170, v25 offset:816
	ds_load_u8 v173, v25 offset:784
	ds_load_u8 v187, v25 offset:672
	ds_load_u8 v188, v25 offset:640
	ds_load_u8 v189, v25 offset:736
	ds_load_u8 v190, v25 offset:704
	ds_load_u8 v175, v25 offset:752
	ds_load_u8 v176, v25 offset:720
	ds_load_u8 v177, v25 offset:688
	ds_load_u8 v178, v25 offset:656
	ds_load_u8 v191, v25 offset:544
	ds_load_u8 v192, v25 offset:512
	ds_load_u8 v193, v25 offset:608
	ds_load_u8 v194, v25 offset:576
	ds_load_u8 v179, v25 offset:624
	ds_load_u8 v181, v25 offset:592
	ds_load_u8 v185, v25 offset:560
	ds_load_u8 v186, v25 offset:528
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[33:36], v27
	ds_load_b128 v[37:40], v27 offset:4096
	ds_load_b128 v[25:28], v29
	ds_load_b128 v[29:32], v29 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v151, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v152, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v43, v43, v159, 0xc0c0004
	v_perm_b32 v136, v137, v136, 0xc0c0004
	v_perm_b32 v137, v138, v141, 0xc0c0004
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v140, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v153, v164, v162, 0xc0c0004
	v_perm_b32 v143, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v157, v166, v165, 0xc0c0004
	v_perm_b32 v130, v135, v130, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v145, v150, v148, 0xc0c0004
	v_perm_b32 v129, v129, v134, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v144, v155, v154, 0xc0c0004
	v_perm_b32 v138, v171, v169, 0xc0c0004
	v_perm_b32 v141, v174, v172, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v158, v182, v180, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v159, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v162, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v164, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v165, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v166, v194, v193, 0xc0c0004
	v_perm_b32 v134, v163, v161, 0xc0c0004
	v_perm_b32 v135, v160, v156, 0xc0c0004
	v_perm_b32 v146, v173, v170, 0xc0c0004
	v_perm_b32 v147, v168, v167, 0xc0c0004
	v_perm_b32 v148, v178, v177, 0xc0c0004
	v_perm_b32 v150, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v154, v186, v185, 0xc0c0004
	v_perm_b32 v155, v181, v179, 0xc0c0004
	v_lshl_or_b32 v177, v151, 16, v149
	v_lshl_or_b32 v176, v43, 16, v152
	v_lshl_or_b32 v175, v157, 16, v153
	v_lshl_or_b32 v174, v136, 16, v137
	v_lshl_or_b32 v214, v139, 16, v142
	v_lshl_or_b32 v213, v143, 16, v140
	v_lshl_or_b32 v212, v145, 16, v144
	v_lshl_or_b32 v211, v130, 16, v129
	v_lshl_or_b32 v193, v141, 16, v138
	v_lshl_or_b32 v192, v159, 16, v158
	v_lshl_or_b32 v191, v164, 16, v162
	v_lshl_or_b32 v190, v166, 16, v165
	v_lshl_or_b32 v218, v135, 16, v134
	v_lshl_or_b32 v217, v147, 16, v146
	v_lshl_or_b32 v216, v150, 16, v148
	v_lshl_or_b32 v215, v155, 16, v154
	v_wmma_i32_16x16x16_iu8 v[134:141], v[17:20], v[174:177], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[17:20], v[211:214], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[21:24], v[174:177], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[21:24], v[211:214], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[174:177], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[37:40], v[174:177], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[134:141], v[9:12], v[190:193], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[9:12], v[215:218], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[13:16], v[190:193], v[142:149] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[190:193], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[29:32], v[190:193], v[166:173] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v190, v135
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[174:181], v[33:36], v[211:214], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[37:40], v[211:214], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[158:165], v[13:16], v[215:218], v[158:165] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[174:181], v[25:28], v[215:218], v[174:181] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v192, v18
	v_wmma_i32_16x16x16_iu8 v[182:189], v[29:32], v[215:218], v[182:189] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v193, v17
	v_cvt_f32_i32_e32 v212, v20
	v_cvt_f32_i32_e32 v213, v19
	v_cvt_f32_i32_e32 v216, v22
	v_cvt_f32_i32_e32 v217, v21
	v_cvt_f32_i32_e32 v227, v24
	v_cvt_f32_i32_e32 v228, v23
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v191, v134
	v_cvt_f32_i32_e32 v194, v137
	v_cvt_f32_i32_e32 v211, v136
	v_cvt_f32_i32_e32 v214, v139
	v_cvt_f32_i32_e32 v215, v138
	v_cvt_f32_i32_e32 v218, v141
	v_cvt_f32_i32_e32 v226, v140
	v_cvt_f32_i32_e32 v229, v143
	v_cvt_f32_i32_e32 v230, v142
	v_cvt_f32_i32_e32 v231, v145
	v_cvt_f32_i32_e32 v232, v144
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s31, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v150, v150
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s14, 2
	s_mov_b32 s12, s46
	s_cselect_b32 s31, s14, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s16, s31, 13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s46, s16, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v169, v169
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v188, v188
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s13, 1
	s_mov_b32 s0, s47
	s_mov_b32 s10, s45
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	v_perm_b32 v10, v199, v195, 0x7030602
	v_perm_b32 v11, v200, v196, 0x5010400
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v9, 16, v128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v12, v200, v196, 0x7030602
	v_perm_b32 v13, v201, v197, 0x5010400
	v_perm_b32 v14, v201, v197, 0x7030602
	v_perm_b32 v15, v202, v198, 0x5010400
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v125, v9 offset:34816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v9, v199, v195, 0x5010400
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v195, 16, v220
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v203, s15, v109
	v_add_nc_u32_e32 v207, s15, v121
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[203:206], v203, s[20:23], 0 offen
	buffer_load_b128 v[207:210], v207, s[20:23], 0 offen
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v219, v219, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v16, v202, v198, 0x7030602
	v_and_b16 v25.l, 0xff, v9.l
	v_lshrrev_b32_e32 v43, 8, v9
	v_lshrrev_b32_e32 v128, 24, v9
	v_and_b16 v25.h, 0xff, v9.h
	v_and_b16 v26.l, 0xff, v10.l
	v_lshrrev_b32_e32 v9, 8, v10
	v_lshrrev_b32_e32 v129, 24, v10
	v_and_b16 v26.h, 0xff, v10.h
	v_and_b16 v27.l, 0xff, v11.l
	v_lshrrev_b32_e32 v10, 8, v11
	v_lshrrev_b32_e32 v130, 24, v11
	v_and_b16 v27.h, 0xff, v11.h
	v_and_b16 v28.l, 0xff, v12.l
	v_lshrrev_b32_e32 v11, 8, v12
	v_lshrrev_b32_e32 v134, 24, v12
	v_and_b16 v28.h, 0xff, v12.h
	v_and_b16 v29.l, 0xff, v13.l
	v_lshrrev_b32_e32 v12, 8, v13
	v_lshrrev_b32_e32 v135, 24, v13
	v_and_b16 v29.h, 0xff, v13.h
	v_and_b16 v30.l, 0xff, v14.l
	v_lshrrev_b32_e32 v13, 8, v14
	v_lshrrev_b32_e32 v136, 24, v14
	v_and_b16 v30.h, 0xff, v14.h
	v_and_b16 v31.l, 0xff, v15.l
	v_lshrrev_b32_e32 v14, 8, v15
	v_lshrrev_b32_e32 v137, 24, v15
	v_and_b16 v31.h, 0xff, v15.h
	v_and_b16 v32.l, 0xff, v16.l
	v_lshrrev_b32_e32 v15, 8, v16
	v_lshrrev_b32_e32 v138, 24, v16
	v_and_b16 v32.h, 0xff, v16.h
	v_lshlrev_b16 v43.h, 8, v128.l
	v_lshlrev_b16 v128.l, 8, v9.l
	v_lshlrev_b16 v128.h, 8, v129.l
	v_lshlrev_b16 v129.l, 8, v10.l
	v_lshlrev_b16 v129.h, 8, v130.l
	v_lshlrev_b16 v130.l, 8, v11.l
	v_lshlrev_b16 v130.h, 8, v134.l
	v_lshlrev_b16 v134.l, 8, v12.l
	v_lshlrev_b16 v134.h, 8, v135.l
	v_lshlrev_b16 v135.l, 8, v13.l
	v_lshlrev_b16 v135.h, 8, v136.l
	v_lshlrev_b16 v136.l, 8, v14.l
	v_lshlrev_b16 v136.h, 8, v137.l
	v_lshlrev_b16 v137.l, 8, v15.l
	v_lshlrev_b16 v137.h, 8, v138.l
	v_lshlrev_b16 v43.l, 8, v43.l
	v_or_b16 v25.h, v25.h, v43.h
	v_or_b16 v26.l, v26.l, v128.l
	v_or_b16 v26.h, v26.h, v128.h
	v_or_b16 v29.l, v29.l, v134.l
	v_or_b16 v25.l, v25.l, v43.l
	v_or_b16 v29.h, v29.h, v134.h
	v_or_b16 v32.l, v32.l, v137.l
	v_or_b16 v32.h, v32.h, v137.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s15, s31, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v27.l, v27.l, v129.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s15, s15, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v27.h, v27.h, v129.h
	v_or_b16 v28.l, v28.l, v130.l
	v_or_b16 v28.h, v28.h, v130.h
	v_or_b16 v30.l, v30.l, v135.l
	v_or_b16 v30.h, v30.h, v135.h
	v_or_b16 v31.l, v31.l, v136.l
	v_or_b16 v31.h, v31.h, v136.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s47, s15, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s48
	s_mov_b32 s13, s14
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v17, v207, v203, 0x5010400
	v_perm_b32 v18, v207, v203, 0x7030602
	v_perm_b32 v19, v208, v204, 0x5010400
	v_perm_b32 v20, v208, v204, 0x7030602
	v_perm_b32 v21, v209, v205, 0x5010400
	v_perm_b32 v22, v209, v205, 0x7030602
	v_perm_b32 v23, v210, v206, 0x5010400
	v_perm_b32 v24, v210, v206, 0x7030602
	v_and_b16 v33.l, 0xff, v17.l
	v_lshrrev_b32_e32 v16, 8, v17
	v_lshrrev_b32_e32 v139, 24, v17
	v_and_b16 v33.h, 0xff, v17.h
	v_and_b16 v34.l, 0xff, v18.l
	v_lshrrev_b32_e32 v17, 8, v18
	v_lshrrev_b32_e32 v140, 24, v18
	v_and_b16 v34.h, 0xff, v18.h
	v_and_b16 v35.l, 0xff, v19.l
	v_lshrrev_b32_e32 v18, 8, v19
	v_lshrrev_b32_e32 v141, 24, v19
	v_and_b16 v35.h, 0xff, v19.h
	v_and_b16 v36.l, 0xff, v20.l
	v_lshrrev_b32_e32 v19, 8, v20
	v_lshrrev_b32_e32 v142, 24, v20
	v_and_b16 v36.h, 0xff, v20.h
	v_and_b16 v37.l, 0xff, v21.l
	v_lshrrev_b32_e32 v20, 8, v21
	v_lshrrev_b32_e32 v143, 24, v21
	v_and_b16 v37.h, 0xff, v21.h
	v_and_b16 v38.l, 0xff, v22.l
	v_lshrrev_b32_e32 v21, 8, v22
	v_lshrrev_b32_e32 v144, 24, v22
	v_and_b16 v38.h, 0xff, v22.h
	v_and_b16 v39.l, 0xff, v23.l
	v_lshrrev_b32_e32 v22, 8, v23
	v_lshrrev_b32_e32 v145, 24, v23
	v_and_b16 v39.h, 0xff, v23.h
	v_lshrrev_b32_e32 v23, 8, v24
	v_and_b16 v40.l, 0xff, v24.l
	v_lshrrev_b32_e32 v197, 24, v24
	v_and_b16 v40.h, 0xff, v24.h
	v_lshlrev_b16 v138.l, 8, v16.l
	v_lshlrev_b16 v138.h, 8, v139.l
	v_lshlrev_b16 v139.l, 8, v17.l
	v_lshlrev_b16 v139.h, 8, v140.l
	v_lshlrev_b16 v140.l, 8, v18.l
	v_lshlrev_b16 v140.h, 8, v141.l
	v_lshlrev_b16 v141.l, 8, v19.l
	v_lshlrev_b16 v141.h, 8, v142.l
	v_lshlrev_b16 v142.l, 8, v20.l
	v_lshlrev_b16 v142.h, 8, v143.l
	v_lshlrev_b16 v143.l, 8, v21.l
	v_lshlrev_b16 v143.h, 8, v144.l
	v_lshlrev_b16 v144.l, 8, v22.l
	v_lshlrev_b16 v144.h, 8, v145.l
	v_lshlrev_b16 v145.l, 8, v23.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v126 offset:34816
	ds_load_b128 v[13:16], v126 offset:34832
	ds_load_b128 v[17:20], v126 offset:35328
	ds_load_b128 v[21:24], v126 offset:35344
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v145.h, 8, v197.l
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
	v_or_b16 v39.l, v39.l, v144.l
	v_or_b16 v39.h, v39.h, v144.h
	v_or_b16 v40.l, v40.l, v145.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v43, v10, v195
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v40.h, v40.h, v145.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v96, v43, v190
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v137, v15, v195 :: v_dual_lshlrev_b32 v196, 16, v221
	v_mul_f32_e32 v128, v9, v195
	v_mul_f32_e32 v134, v14, v195
	v_dual_mul_f32 v129, v12, v195 :: v_dual_add_nc_u32 v222, s15, v108
	v_mul_f32_e32 v9, v9, v196
	v_dual_mul_f32 v142, v22, v195 :: v_dual_add_nc_u32 v223, s46, v117
	v_dual_mul_f32 v135, v13, v195 :: v_dual_add_nc_u32 v224, s46, v118
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v225, s46, v119
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v130, v11, v195
	v_mul_f32_e32 v136, v16, v195
	v_mul_f32_e32 v138, v18, v195
	v_dual_mul_f32 v139, v17, v195 :: v_dual_mul_f32 v18, v18, v196
	v_mul_f32_e32 v140, v20, v195
	v_dual_mul_f32 v141, v19, v195 :: v_dual_mul_f32 v20, v20, v196
	v_dual_mul_f32 v143, v21, v195 :: v_dual_mul_f32 v22, v22, v196
	v_mul_f32_e32 v144, v24, v195
	v_dual_mul_f32 v145, v23, v195 :: v_dual_mul_f32 v24, v24, v196
	v_mul_f32_e32 v10, v10, v196
	v_mul_f32_e32 v12, v12, v196
	v_dual_mul_f32 v11, v11, v196 :: v_dual_fmac_f32 v92, v129, v194
	v_mul_f32_e32 v14, v14, v196
	v_dual_mul_f32 v13, v13, v196 :: v_dual_fmac_f32 v84, v136, v218
	v_mul_f32_e32 v16, v16, v196
	v_dual_mul_f32 v15, v15, v196 :: v_dual_fmac_f32 v80, v138, v229
	v_dual_mul_f32 v17, v17, v196 :: v_dual_fmac_f32 v76, v140, v231
	v_dual_mul_f32 v19, v19, v196 :: v_dual_fmac_f32 v72, v142, v147
	v_dual_mul_f32 v21, v21, v196 :: v_dual_fmac_f32 v46, v144, v149
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v88, v134, v214 :: v_dual_mul_f32 v23, v23, v196
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v104, v9, v150 :: v_dual_lshlrev_b32 v9, 16, v219
	v_dual_fmac_f32 v95, v128, v191 :: v_dual_fmac_f32 v100, v11, v152
	v_dual_fmac_f32 v91, v130, v211 :: v_dual_fmac_f32 v66, v16, v157
	v_dual_fmac_f32 v87, v135, v215 :: v_dual_fmac_f32 v58, v20, v161
	v_dual_fmac_f32 v83, v137, v226 :: v_dual_fmac_f32 v70, v14, v155
	v_dual_fmac_f32 v79, v139, v230 :: v_dual_fmac_f32 v62, v18, v159
	v_dual_fmac_f32 v75, v141, v232 :: v_dual_fmac_f32 v52, v22, v163
	v_dual_fmac_f32 v105, v10, v151 :: v_dual_fmac_f32 v50, v23, v164
	v_fmac_f32_e32 v101, v12, v153
	v_fmac_f32_e32 v69, v13, v154
	v_fmac_f32_e32 v65, v15, v156
	v_fmac_f32_e32 v61, v17, v158
	v_fmac_f32_e32 v57, v19, v160
	v_fmac_f32_e32 v51, v21, v162
	v_fmac_f32_e32 v49, v24, v165
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v125, v9 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v126 offset:34816
	ds_load_b128 v[13:16], v126 offset:34832
	ds_load_b128 v[17:20], v126 offset:35328
	ds_load_b128 v[21:24], v126 offset:35344
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v71, v143, v146
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b32 v222, v127 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v223, v25
	ds_store_b16_d16_hi v223, v25 offset:32
	ds_store_b16 v223, v26 offset:64
	ds_store_b16_d16_hi v223, v26 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v223, v33 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v224, v27
	ds_store_b16_d16_hi v224, v27 offset:32
	ds_store_b16 v224, v28 offset:64
	ds_store_b16_d16_hi v224, v28 offset:96
	ds_store_b16 v225, v29
	ds_store_b16_d16_hi v225, v29 offset:32
	ds_store_b16 v225, v30 offset:64
	ds_store_b16_d16_hi v225, v30 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v223, v34 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v223, v31 offset:384
	ds_store_b16_d16_hi v223, v31 offset:416
	ds_store_b16 v223, v32 offset:448
	ds_store_b16_d16_hi v223, v32 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
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
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v45, v145, v148
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v223, v39 offset:16768
	ds_store_b16_d16_hi v223, v39 offset:16800
	ds_store_b16 v223, v40 offset:16832
	ds_store_b16_d16_hi v223, v40 offset:16864
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(36)
	v_mul_f32_e32 v26, v9, v195
	v_mul_f32_e32 v27, v12, v195
	s_waitcnt lgkmcnt(35)
	v_mul_f32_e32 v29, v14, v195
	v_mul_f32_e32 v31, v16, v195
	s_waitcnt lgkmcnt(34)
	v_dual_mul_f32 v35, v20, v195 :: v_dual_fmac_f32 v44, v26, v193
	v_dual_mul_f32 v25, v10, v195 :: v_dual_mul_f32 v16, v16, v196
	v_mul_f32_e32 v28, v11, v195
	v_mul_f32_e32 v30, v13, v195
	v_mul_f32_e32 v32, v15, v195
	v_mul_f32_e32 v33, v18, v195
	v_mul_f32_e32 v34, v17, v195
	v_mul_f32_e32 v36, v19, v195
	s_waitcnt lgkmcnt(33)
	v_mul_f32_e32 v38, v21, v195
	v_mul_f32_e32 v10, v10, v196
	v_mul_f32_e32 v12, v12, v196
	v_mul_f32_e32 v14, v14, v196
	v_dual_mul_f32 v13, v13, v196 :: v_dual_fmac_f32 v78, v35, v169
	v_mul_f32_e32 v18, v18, v196
	v_dual_mul_f32 v37, v22, v195 :: v_dual_fmac_f32 v94, v27, v212
	v_mul_f32_e32 v15, v15, v196
	v_mul_f32_e32 v20, v20, v196
	v_dual_mul_f32 v43, v24, v195 :: v_dual_fmac_f32 v90, v29, v216
	v_mul_f32_e32 v17, v17, v196
	v_dual_mul_f32 v19, v19, v196 :: v_dual_fmac_f32 v98, v13, v178
	v_mul_f32_e32 v22, v22, v196
	v_dual_mul_f32 v9, v9, v196 :: v_dual_fmac_f32 v86, v31, v227
	v_mul_f32_e32 v127, v23, v195
	v_dual_mul_f32 v21, v21, v196 :: v_dual_fmac_f32 v68, v16, v181
	v_mul_f32_e32 v24, v24, v196
	v_dual_mul_f32 v11, v11, v196 :: v_dual_fmac_f32 v82, v33, v167
	v_dual_mul_f32 v23, v23, v196 :: v_dual_fmac_f32 v64, v18, v183
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v97, v25, v192 :: v_dual_fmac_f32 v60, v20, v185
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v93, v28, v213 :: v_dual_fmac_f32 v102, v11, v176
	v_fmac_f32_e32 v89, v30, v217
	v_dual_fmac_f32 v85, v32, v228 :: v_dual_fmac_f32 v56, v22, v187
	v_dual_fmac_f32 v81, v34, v166 :: v_dual_fmac_f32 v54, v24, v189
	v_fmac_f32_e32 v77, v36, v168
	v_dual_fmac_f32 v73, v38, v170 :: v_dual_fmac_f32 v74, v37, v171
	v_fmac_f32_e32 v48, v43, v173
	v_dual_fmac_f32 v106, v9, v174 :: v_dual_fmac_f32 v47, v127, v172
	v_fmac_f32_e32 v107, v10, v175
	v_fmac_f32_e32 v103, v12, v177
	v_fmac_f32_e32 v99, v14, v179
	v_fmac_f32_e32 v67, v15, v180
	v_fmac_f32_e32 v63, v17, v182
	v_fmac_f32_e32 v59, v19, v184
	v_fmac_f32_e32 v55, v21, v186
	v_fmac_f32_e32 v53, v23, v188
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
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v44, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v41, s0, v42
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v17
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v27, v41
	ds_load_u8_d16 v3, v41 offset:16
	ds_load_u8_d16 v30, v41 offset:32
	ds_load_u8_d16 v4, v41 offset:48
	ds_load_u8_d16 v23, v41 offset:64
	ds_load_u8_d16 v24, v41 offset:96
	ds_load_u8_d16 v5, v41 offset:112
	ds_load_u8_d16 v6, v41 offset:80
	ds_load_u8_d16 v122, v41 offset:128
	ds_load_u8_d16 v124, v41 offset:160
	ds_load_u8_d16 v121, v41 offset:192
	ds_load_u8_d16 v123, v41 offset:224
	ds_load_u8_d16 v11, v41 offset:240
	ds_load_u8_d16 v12, v41 offset:208
	ds_load_u8_d16 v13, v41 offset:176
	ds_load_u8_d16 v14, v41 offset:144
	ds_load_u8_d16 v126, v41 offset:256
	ds_load_u8_d16 v37, v41 offset:288
	ds_load_u8_d16 v125, v41 offset:320
	ds_load_u8_d16 v127, v41 offset:352
	ds_load_u8_d16 v15, v41 offset:368
	ds_load_u8_d16 v16, v41 offset:336
	ds_load_u8_d16 v18, v41 offset:304
	ds_load_u8_d16 v20, v41 offset:272
	ds_load_u8_d16 v130, v41 offset:384
	ds_load_u8_d16 v135, v41 offset:416
	ds_load_u8_d16 v129, v41 offset:448
	ds_load_u8_d16 v134, v41 offset:480
	ds_load_u8_d16 v25, v41 offset:496
	ds_load_u8_d16 v26, v41 offset:464
	ds_load_u8_d16 v31, v41 offset:432
	ds_load_u8_d16 v32, v41 offset:400
	ds_load_u8_d16 v112, v41 offset:512
	ds_load_u8_d16 v118, v41 offset:544
	ds_load_u8_d16 v111, v41 offset:576
	ds_load_u8_d16 v113, v41 offset:608
	ds_load_u8_d16 v7, v41 offset:624
	ds_load_u8_d16 v8, v41 offset:592
	ds_load_u8_d16 v9, v41 offset:560
	ds_load_u8_d16 v10, v41 offset:528
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v110, s0, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v139, 0, 1, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v28, 0x90, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v19
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v34, v41 offset:640
	ds_load_u8_d16 v36, v41 offset:672
	ds_load_u8_d16 v33, v41 offset:704
	ds_load_u8_d16 v35, v41 offset:736
	ds_load_u8_d16 v17, v41 offset:752
	ds_load_u8_d16 v19, v41 offset:720
	ds_load_u8_d16 v21, v41 offset:688
	ds_load_u8_d16 v22, v41 offset:656
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v185, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v139
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v29, 0x110, 0, vcc_lo
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v183, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v109, v28, v29
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v39, v41 offset:768
	ds_load_u8_d16 v128, v41 offset:800
	ds_load_u8_d16 v38, v41 offset:832
	ds_load_u8_d16 v40, v41 offset:864
	ds_load_u8_d16 v28, v41 offset:880
	ds_load_u8_d16 v29, v41 offset:848
	ds_load_u8_d16 v43, v41 offset:816
	ds_load_u8_d16 v108, v41 offset:784
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v187, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v213, v120, v109
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v136, v41 offset:896
	ds_load_u8_d16 v138, v41 offset:928
	ds_load_u8_d16 v120, v41 offset:960
	ds_load_u8_d16 v137, v41 offset:992
	ds_load_u8_d16 v109, v110
	ds_load_u8_d16 v110, v41 offset:976
	ds_load_u8_d16 v117, v41 offset:944
	ds_load_u8_d16 v119, v41 offset:912
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v169, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v214, 16, v213
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v41, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v41, s12, v214
	v_add_nc_u32_e32 v139, s12, v213
	ds_load_b128 v[147:150], v41 offset:4096
	ds_load_b128 v[155:158], v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v41, v126, v37, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v142, v125, v127, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[183:186], v139 offset:4096
	ds_load_b128 v[187:190], v139
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v139, v23, v24, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v151, v120, v137, 0xc0c0004
	v_perm_b32 v152, v39, v128, 0xc0c0004
	v_lshl_or_b32 v177, v142, 16, v41
	v_perm_b32 v41, v27, v30, 0xc0c0004
	v_perm_b32 v153, v38, v40, 0xc0c0004
	v_perm_b32 v140, v130, v135, 0xc0c0004
	v_perm_b32 v141, v129, v134, 0xc0c0004
	v_perm_b32 v143, v122, v124, 0xc0c0004
	v_lshl_or_b32 v175, v139, 16, v41
	v_perm_b32 v41, v136, v138, 0xc0c0004
	v_perm_b32 v144, v121, v123, 0xc0c0004
	v_lshl_or_b32 v193, v153, 16, v152
	v_perm_b32 v152, v20, v18, 0xc0c0004
	v_perm_b32 v153, v16, v15, 0xc0c0004
	v_lshl_or_b32 v194, v151, 16, v41
	v_perm_b32 v41, v32, v31, 0xc0c0004
	v_perm_b32 v151, v26, v25, 0xc0c0004
	v_perm_b32 v179, v14, v13, 0xc0c0004
	v_perm_b32 v180, v12, v11, 0xc0c0004
	v_perm_b32 v181, v3, v4, 0xc0c0004
	v_perm_b32 v182, v6, v5, 0xc0c0004
	v_lshl_or_b32 v178, v141, 16, v140
	v_lshl_or_b32 v176, v144, 16, v143
	v_dual_mov_b32 v146, s23 :: v_dual_mov_b32 v145, s22
	v_mov_b32_e32 v142, s19
	v_dual_mov_b32 v144, s21 :: v_dual_mov_b32 v143, s20
	v_dual_mov_b32 v140, s17 :: v_dual_mov_b32 v141, s18
	v_mov_b32_e32 v139, s16
	v_perm_b32 v167, v34, v36, 0xc0c0004
	v_perm_b32 v168, v33, v35, 0xc0c0004
	v_perm_b32 v169, v112, v118, 0xc0c0004
	v_perm_b32 v170, v111, v113, 0xc0c0004
	v_lshl_or_b32 v198, v151, 16, v41
	v_lshl_or_b32 v197, v153, 16, v152
	v_lshl_or_b32 v196, v180, 16, v179
	v_lshl_or_b32 v195, v182, 16, v181
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v41, v119, v117, 0xc0c0004
	v_perm_b32 v151, v110, v109, 0xc0c0004
	v_perm_b32 v152, v108, v43, 0xc0c0004
	v_perm_b32 v153, v29, v28, 0xc0c0004
	v_perm_b32 v199, v22, v21, 0xc0c0004
	v_perm_b32 v200, v19, v17, 0xc0c0004
	v_perm_b32 v201, v10, v9, 0xc0c0004
	v_perm_b32 v202, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[159:166], v[187:190], v[175:178], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v192, v168, 16, v167
	v_lshl_or_b32 v191, v170, 16, v169
	v_wmma_i32_16x16x16_iu8 v[167:174], v[183:186], v[175:178], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[187:190], v[195:198], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v190, v151, 16, v41
	v_lshl_or_b32 v189, v153, 16, v152
	v_lshl_or_b32 v188, v200, 16, v199
	v_lshl_or_b32 v187, v202, 16, v201
	v_wmma_i32_16x16x16_iu8 v[139:146], v[183:186], v[195:198], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[155:158], v[191:194], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[167:174], v[147:150], v[191:194], v[167:174] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[175:182], v[155:158], v[187:190], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[147:150], v[187:190], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v188, v161
	v_cvt_f32_i32_e32 v151, v162
	v_cvt_f32_i32_e32 v184, v163
	v_cvt_f32_i32_e32 v185, v164
	v_cvt_f32_i32_e32 v183, v165
	v_cvt_f32_i32_e32 v186, v166
	v_cvt_f32_i32_e32 v166, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v187, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v164, v171
	v_cvt_f32_i32_e32 v165, v172
	v_cvt_f32_i32_e32 v167, v173
	v_cvt_f32_i32_e32 v169, v174
	v_cvt_f32_i32_e32 v157, v175
	v_cvt_f32_i32_e32 v158, v176
	v_cvt_f32_i32_e32 v155, v177
	v_cvt_f32_i32_e32 v156, v178
	v_cvt_f32_i32_e32 v162, v179
	v_cvt_f32_i32_e32 v163, v180
	v_cvt_f32_i32_e32 v150, v181
	v_cvt_f32_i32_e32 v161, v182
	v_cvt_f32_i32_e32 v148, v139
	v_cvt_f32_i32_e32 v149, v140
	v_cvt_f32_i32_e32 v147, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v140, v143
	v_cvt_f32_i32_e32 v141, v144
	v_cvt_f32_i32_e32 v139, v145
	v_cvt_f32_i32_e32 v41, v146
	v_cvt_f32_i32_e32 v152, v159
	v_cvt_f32_i32_e32 v153, v160
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x14                           ; 84-byte Folded Spill
	scratch_store_b32 off, v188, off offset:176
	scratch_store_b32 off, v170, off offset:172
	scratch_store_b32 off, v187, off offset:168
	scratch_store_b32 off, v169, off offset:164
	scratch_store_b32 off, v168, off offset:160
	scratch_store_b32 off, v186, off offset:156
	scratch_store_b32 off, v185, off offset:152
	scratch_store_b32 off, v184, off offset:148
	scratch_store_b32 off, v167, off offset:144
	scratch_store_b32 off, v166, off offset:140
	scratch_store_b32 off, v183, off offset:136
	scratch_store_b32 off, v165, off offset:132
	scratch_store_b32 off, v164, off offset:128
	scratch_store_b32 off, v163, off offset:64
	scratch_store_b32 off, v162, off offset:60
	scratch_store_b32 off, v161, off offset:52
	scratch_store_b32 off, v142, off offset:20
	scratch_store_b32 off, v141, off offset:12
	scratch_store_b32 off, v140, off offset:8
	scratch_store_b32 off, v139, off offset:4
	scratch_store_b32 off, v41, off
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_mov_b32_e32 v159, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v139, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s12, 0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(61)
	v_perm_b32 v27, v27, v30, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v139, s10, v213
	v_add_nc_u32_e32 v41, s10, v214
	ds_load_b128 v[167:170], v139 offset:4096
	ds_load_b128 v[171:174], v139
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v23, v23, v24, 0xc0c0004
	v_mov_b32_e32 v146, s19
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[159:162], v41 offset:4096
	ds_load_b128 v[163:166], v41
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v24, v120, v137, 0xc0c0004
	v_perm_b32 v130, v130, v135, 0xc0c0004
	v_lshl_or_b32 v175, v23, 16, v27
	v_perm_b32 v23, v136, v138, 0xc0c0004
	v_perm_b32 v129, v129, v134, 0xc0c0004
	v_perm_b32 v37, v126, v37, 0xc0c0004
	v_perm_b32 v41, v125, v127, 0xc0c0004
	v_perm_b32 v122, v122, v124, 0xc0c0004
	v_perm_b32 v121, v121, v123, 0xc0c0004
	v_lshl_or_b32 v137, v24, 16, v23
	v_perm_b32 v23, v32, v31, 0xc0c0004
	v_perm_b32 v24, v26, v25, 0xc0c0004
	v_perm_b32 v18, v20, v18, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_perm_b32 v16, v14, v13, 0xc0c0004
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_perm_b32 v3, v3, v4, 0xc0c0004
	v_perm_b32 v4, v6, v5, 0xc0c0004
	v_lshl_or_b32 v178, v129, 16, v130
	v_lshl_or_b32 v177, v41, 16, v37
	v_lshl_or_b32 v176, v121, 16, v122
	v_dual_mov_b32 v145, s18 :: v_dual_mov_b32 v142, s15
	v_dual_mov_b32 v144, s17 :: v_dual_mov_b32 v143, s16
	v_dual_mov_b32 v140, s13 :: v_dual_mov_b32 v141, s14
	v_mov_b32_e32 v139, s12
	v_perm_b32 v27, v39, v128, 0xc0c0004
	v_perm_b32 v30, v38, v40, 0xc0c0004
	v_perm_b32 v41, v34, v36, 0xc0c0004
	v_perm_b32 v120, v33, v35, 0xc0c0004
	v_perm_b32 v112, v112, v118, 0xc0c0004
	v_perm_b32 v111, v111, v113, 0xc0c0004
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
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[171:174], v[175:178], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v30, 16, v27
	v_lshl_or_b32 v135, v120, 16, v41
	v_lshl_or_b32 v134, v111, 16, v112
	v_wmma_i32_16x16x16_iu8 v[120:127], v[167:170], v[175:178], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[171:174], v[11:14], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v16, 16, v15
	v_lshl_or_b32 v17, v23, 16, v20
	v_lshl_or_b32 v16, v19, 16, v21
	v_lshl_or_b32 v15, v24, 16, v22
	v_wmma_i32_16x16x16_iu8 v[139:146], v[167:170], v[11:14], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[163:166], v[134:137], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[159:162], v[134:137], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[163:166], v[15:18], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[159:162], v[15:18], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v179, v35
	v_cvt_f32_i32_e32 v180, v36
	v_cvt_f32_i32_e32 v176, v37
	v_cvt_f32_i32_e32 v177, v38
	v_cvt_f32_i32_e32 v169, v39
	v_cvt_f32_i32_e32 v172, v40
	v_cvt_f32_i32_e32 v170, v120
	v_cvt_f32_i32_e32 v173, v121
	v_cvt_f32_i32_e32 v175, v122
	v_cvt_f32_i32_e32 v178, v123
	v_cvt_f32_i32_e32 v167, v124
	v_cvt_f32_i32_e32 v168, v125
	v_cvt_f32_i32_e32 v171, v126
	v_cvt_f32_i32_e32 v174, v127
	v_cvt_f32_i32_e32 v186, v3
	v_cvt_f32_i32_e32 v187, v4
	v_cvt_f32_i32_e32 v184, v5
	v_cvt_f32_i32_e32 v185, v6
	v_cvt_f32_i32_e32 v182, v7
	v_cvt_f32_i32_e32 v183, v8
	v_cvt_f32_i32_e32 v162, v9
	v_cvt_f32_i32_e32 v163, v10
	v_cvt_f32_i32_e32 v160, v139
	v_cvt_f32_i32_e32 v161, v140
	v_cvt_f32_i32_e32 v159, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v140, v143
	v_cvt_f32_i32_e32 v141, v144
	v_cvt_f32_i32_e32 v41, v145
	v_cvt_f32_i32_e32 v139, v146
	v_cvt_f32_i32_e32 v154, v33
	v_cvt_f32_i32_e32 v181, v34
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s0, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(62)
	v_add_lshl_u32 v3, v116, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt lgkmcnt(60)
	v_add_lshl_u32 v4, v115, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	v_add3_u32 v216, s33, s27, v0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_waitcnt lgkmcnt(56)
	v_add_lshl_u32 v6, v114, s0, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v5, 28, v133
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt lgkmcnt(27)
	v_add_lshl_u32 v7, v216, s4, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v2, 32, v2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v4, v4, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	s_clause 0xd                            ; 56-byte Folded Spill
	scratch_store_b32 off, v163, off offset:100
	scratch_store_b32 off, v162, off offset:96
	scratch_store_b32 off, v161, off offset:76
	scratch_store_b32 off, v160, off offset:72
	scratch_store_b32 off, v142, off offset:68
	scratch_store_b32 off, v159, off offset:56
	scratch_store_b32 off, v150, off offset:48
	scratch_store_b32 off, v141, off offset:44
	scratch_store_b32 off, v140, off offset:40
	scratch_store_b32 off, v139, off offset:36
	scratch_store_b32 off, v41, off offset:32
	scratch_store_b32 off, v149, off offset:28
	scratch_store_b32 off, v148, off offset:24
	scratch_store_b32 off, v147, off offset:16
	v_mov_b32_e32 v194, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v2, 0, v132, v2
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v188, 0, v131
	s_waitcnt lgkmcnt(25)
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v9, s47, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v189, v2, v5
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v5, 0x80000000, v7 :: v_dual_cndmask_b32 v2, 0x80000000, v6
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v215, v3, s[8:11], 0 offen
	buffer_load_u16 v217, v2, s[8:11], 0 offen
	s_waitcnt lgkmcnt(24)
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v10, s47, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v1, 0, 1, s3
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v1
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v31, 0
	s_waitcnt lgkmcnt(10)
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v30, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v18, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v209, 0 :: v_dual_lshlrev_b32 v4, 16, v4
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v189, v4 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v2, v5, s[28:31], 0 offen
	v_mov_b32_e32 v204, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[25:28], v188 offset:34816
	ds_load_b128 v[13:16], v188 offset:34832
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v188 offset:35328
	ds_load_b128 v[1:4], v188 offset:35344
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v189, v11 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
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
	ds_load_u8_d16 v34, v9 offset:256
	ds_load_u8_d16 v36, v9 offset:288
	ds_load_u8_d16 v146, v9 offset:320
	ds_load_u8_d16 v35, v9 offset:352
	ds_load_u8_d16 v255, v9 offset:368
	ds_load_u8_d16 v108, v9 offset:336
	ds_load_u8_d16 v110, v9 offset:304
	ds_load_u8_d16 v111, v9 offset:272
	ds_load_u8_d16 v38, v9 offset:384
	ds_load_u8_d16 v40, v9 offset:416
	ds_load_u8_d16 v37, v9 offset:448
	ds_load_u8_d16 v39, v9 offset:480
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
	ds_load_u8_d16 v33, v9 offset:928
	ds_load_u8_d16 v143, v9 offset:960
	ds_load_u8_d16 v145, v9 offset:992
	ds_load_u8_d16 v112, v10
	ds_load_u8_d16 v113, v9 offset:976
	ds_load_u8_d16 v118, v9 offset:944
	ds_load_u8_d16 v120, v9 offset:912
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v9, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v17, v38, v40, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v18, v37, v39, 0xc0c0004
	v_perm_b32 v19, v34, v36, 0xc0c0004
	v_perm_b32 v20, v146, v35, 0xc0c0004
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v41, s46, v213
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v31, v20, 16, v19
	v_lshl_or_b32 v30, v22, 16, v21
	v_lshl_or_b32 v29, v18, 16, v17
	v_mov_b32_e32 v24, s19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[9:12], v41
	ds_load_b128 v[190:193], v41 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v147, v122, v121, 0xc0c0004
	v_perm_b32 v148, v119, v117, 0xc0c0004
	v_perm_b32 v149, v111, v110, 0xc0c0004
	v_perm_b32 v150, v108, v255, 0xc0c0004
	v_perm_b32 v159, v252, v251, 0xc0c0004
	v_perm_b32 v160, v249, v247, 0xc0c0004
	v_perm_b32 v161, v239, v242, 0xc0c0004
	v_perm_b32 v162, v244, v243, 0xc0c0004
	v_dual_mov_b32 v23, s18 :: v_dual_mov_b32 v22, s17
	v_dual_mov_b32 v21, s16 :: v_dual_mov_b32 v20, s15
	v_dual_mov_b32 v19, s14 :: v_dual_mov_b32 v18, s13
	v_mov_b32_e32 v17, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v41, s46, v214
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v198, v148, 16, v147
	v_lshl_or_b32 v197, v150, 16, v149
	v_lshl_or_b32 v196, v160, 16, v159
	v_lshl_or_b32 v195, v162, 16, v161
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[9:12], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[159:166], v[190:193], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[9:12], v[195:198], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[190:193], v[195:198], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v29, v136, v139, 0xc0c0004
	v_perm_b32 v30, v135, v137, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[9:12], v41
	ds_load_b128 v[190:193], v41 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v199, v144, v33, 0xc0c0004
	v_perm_b32 v147, v143, v145, 0xc0c0004
	v_lshl_or_b32 v31, v30, 16, v29
	v_perm_b32 v29, v132, v134, 0xc0c0004
	v_perm_b32 v30, v130, v133, 0xc0c0004
	v_perm_b32 v41, v254, v253, 0xc0c0004
	v_lshl_or_b32 v32, v147, 16, v199
	v_perm_b32 v147, v123, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v124, v126, 0xc0c0004
	v_lshl_or_b32 v29, v147, 16, v29
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[9:12], v[29:32], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[159:166], v[190:193], v[29:32], v[159:166] neg_lo:[1,1,0]
	v_perm_b32 v29, v120, v118, 0xc0c0004
	v_perm_b32 v30, v113, v112, 0xc0c0004
	v_perm_b32 v31, v109, v43, 0xc0c0004
	v_cvt_f32_i32_e32 v197, v221
	v_cvt_f32_i32_e32 v198, v222
	v_cvt_f32_i32_e32 v195, v223
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v250, v248, 0xc0c0004
	v_perm_b32 v30, v246, v245, 0xc0c0004
	v_lshl_or_b32 v31, v41, 16, v31
	v_perm_b32 v41, v238, v218, 0xc0c0004
	v_cvt_f32_i32_e32 v196, v224
	v_cvt_f32_i32_e32 v199, v159
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v241, v240, 0xc0c0004
	v_cvt_f32_i32_e32 v200, v160
	v_cvt_f32_i32_e32 v203, v161
	v_cvt_f32_i32_e32 v204, v162
	v_cvt_f32_i32_e32 v201, v163
	v_lshl_or_b32 v29, v41, 16, v29
	v_cvt_f32_i32_e32 v202, v164
	v_cvt_f32_i32_e32 v205, v165
	v_cvt_f32_i32_e32 v206, v166
	v_cvt_f32_i32_e32 v207, v225
	v_wmma_i32_16x16x16_iu8 v[227:234], v[9:12], v[29:32], v[227:234] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[190:193], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v208, v226
	v_cvt_f32_i32_e32 v209, v219
	v_cvt_f32_i32_e32 v210, v220
	v_cvt_f32_i32_e32 v211, v227
	v_cvt_f32_i32_e32 v212, v228
	v_cvt_f32_i32_e32 v164, v229
	v_cvt_f32_i32_e32 v163, v230
	v_cvt_f32_i32_e32 v160, v231
	v_cvt_f32_i32_e32 v159, v232
	v_cvt_f32_i32_e32 v32, v233
	v_cvt_f32_i32_e32 v31, v234
	v_cvt_f32_i32_e32 v30, v17
	v_cvt_f32_i32_e32 v29, v18
	v_cvt_f32_i32_e32 v17, v19
	v_cvt_f32_i32_e32 v18, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v32, off offset:124
	scratch_store_b32 off, v31, off offset:120
	scratch_store_b32 off, v30, off offset:116
	scratch_store_b32 off, v29, off offset:112
	scratch_store_b32 off, v18, off offset:108
	scratch_store_b32 off, v17, off offset:104
	scratch_store_b32 off, v12, off offset:92
	scratch_store_b32 off, v11, off offset:88
	scratch_store_b32 off, v10, off offset:84
	scratch_store_b32 off, v9, off offset:80
	ds_load_b128 v[29:32], v188 offset:34816
	ds_load_b128 v[21:24], v188 offset:34832
	ds_load_b128 v[17:20], v188 offset:35328
	ds_load_b128 v[9:12], v188 offset:35344
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v162, 0
	v_mov_b32_e32 v161, 0
	v_mov_b32_e32 v147, 0
	v_mov_b32_e32 v41, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v34, v34, v36, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v35, v146, v35, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v38, v38, v40, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v37, v37, v39, 0xc0c0004
	v_perm_b32 v36, v140, v142, 0xc0c0004
	v_perm_b32 v39, v138, v141, 0xc0c0004
	v_lshl_or_b32 v233, v35, 16, v34
	v_perm_b32 v34, v129, v131, 0xc0c0004
	v_perm_b32 v35, v127, v128, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v41, s45, v214
	v_add_nc_u32_e32 v147, s45, v213
	ds_load_b128 v[190:193], v41 offset:4096
	ds_load_b128 v[219:222], v41
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v234, v37, 16, v38
	v_lshl_or_b32 v232, v39, 16, v36
	v_lshl_or_b32 v231, v35, 16, v34
	v_dual_mov_b32 v41, s19 :: v_dual_mov_b32 v36, s14
	v_mov_b32_e32 v38, s16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[223:226], v147 offset:4096
	ds_load_b128 v[227:230], v147
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v33, v144, v33, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v143, v145, 0xc0c0004
	v_dual_mov_b32 v40, s18 :: v_dual_mov_b32 v39, s17
	v_dual_mov_b32 v34, s12 :: v_dual_mov_b32 v37, s15
	v_mov_b32_e32 v35, s13
	v_perm_b32 v136, v136, v139, 0xc0c0004
	v_perm_b32 v135, v135, v137, 0xc0c0004
	v_perm_b32 v132, v132, v134, 0xc0c0004
	v_perm_b32 v133, v130, v133, 0xc0c0004
	v_perm_b32 v134, v124, v126, 0xc0c0004
	v_perm_b32 v137, v123, v125, 0xc0c0004
	v_lshl_or_b32 v150, v131, 16, v33
	v_perm_b32 v33, v122, v121, 0xc0c0004
	v_perm_b32 v117, v119, v117, 0xc0c0004
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v108, v108, v255, 0xc0c0004
	v_perm_b32 v111, v252, v251, 0xc0c0004
	v_perm_b32 v119, v249, v247, 0xc0c0004
	v_perm_b32 v121, v239, v242, 0xc0c0004
	v_perm_b32 v122, v244, v243, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[227:230], v[231:234], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v149, v135, 16, v136
	v_lshl_or_b32 v148, v133, 16, v132
	v_lshl_or_b32 v147, v137, 16, v134
	v_wmma_i32_16x16x16_iu8 v[131:138], v[223:226], v[231:234], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v234, v117, 16, v33
	v_lshl_or_b32 v233, v108, 16, v110
	v_lshl_or_b32 v232, v119, 16, v111
	v_lshl_or_b32 v231, v122, 16, v121
	v_perm_b32 v33, v120, v118, 0xc0c0004
	v_perm_b32 v108, v113, v112, 0xc0c0004
	v_perm_b32 v43, v109, v43, 0xc0c0004
	v_perm_b32 v109, v254, v253, 0xc0c0004
	v_perm_b32 v112, v250, v248, 0xc0c0004
	v_perm_b32 v113, v246, v245, 0xc0c0004
	v_perm_b32 v117, v241, v240, 0xc0c0004
	v_perm_b32 v118, v238, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[139:146], v[227:230], v[231:234], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v108, 16, v33
	v_lshl_or_b32 v110, v109, 16, v43
	v_lshl_or_b32 v109, v113, 16, v112
	v_lshl_or_b32 v108, v118, 16, v117
	v_wmma_i32_16x16x16_iu8 v[34:41], v[223:226], v[231:234], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[219:222], v[147:150], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[190:193], v[147:150], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[219:222], v[108:111], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[190:193], v[108:111], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v194, v123
	v_cvt_f32_i32_e32 v219, v124
	v_cvt_f32_i32_e32 v222, v125
	v_cvt_f32_i32_e32 v223, v126
	v_cvt_f32_i32_e32 v220, v127
	v_cvt_f32_i32_e32 v221, v128
	v_cvt_f32_i32_e32 v224, v129
	v_cvt_f32_i32_e32 v225, v130
	v_cvt_f32_i32_e32 v226, v131
	v_cvt_f32_i32_e32 v227, v132
	v_cvt_f32_i32_e32 v230, v133
	v_cvt_f32_i32_e32 v231, v134
	v_cvt_f32_i32_e32 v228, v135
	v_cvt_f32_i32_e32 v229, v136
	v_cvt_f32_i32_e32 v232, v137
	v_cvt_f32_i32_e32 v233, v138
	v_cvt_f32_i32_e32 v234, v139
	v_cvt_f32_i32_e32 v235, v140
	v_cvt_f32_i32_e32 v236, v141
	v_cvt_f32_i32_e32 v237, v142
	v_cvt_f32_i32_e32 v192, v143
	v_cvt_f32_i32_e32 v193, v144
	v_cvt_f32_i32_e32 v190, v145
	v_cvt_f32_i32_e32 v191, v146
	v_cvt_f32_i32_e32 v165, v34
	v_cvt_f32_i32_e32 v166, v35
	v_cvt_f32_i32_e32 v161, v36
	v_cvt_f32_i32_e32 v162, v37
	v_cvt_f32_i32_e32 v148, v38
	v_cvt_f32_i32_e32 v149, v39
	v_cvt_f32_i32_e32 v147, v40
	v_cvt_f32_i32_e32 v41, v41
.LBB0_16:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s44, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s44, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(13)
	v_mov_b16_e64 v43.h, v215.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 8
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s34, s34, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(10)
	v_add_lshl_u32 v33, v116, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v34, v115, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v35, v114, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v116.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_mov_b16_e64 v116.h, v217.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v115, s27, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v43.l, v116.l
	v_mov_b32_e32 v242, v41
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_mul_f32 v36, v25, v116
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v37, v32, v116
	v_mul_f32_e32 v38, v31, v116
	v_mul_f32_e32 v31, v31, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v39, v28, v116
	v_dual_mul_f32 v40, v27, v116 :: v_dual_mul_f32 v25, v25, v43
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v27, v27, v43 :: v_dual_mul_f32 v42, v21, v116
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v31, v179, v93
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v36, v157, v104
	v_fma_f32 v40, v40, v155, v100
	v_fma_f32 v39, v39, v156, v101
	v_fma_f32 v25, v25, v152, v95
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v93, v31, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v41, v22, v116 :: v_dual_mul_f32 v110, v24, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v104, v36, s2
	v_cndmask_b32_e64 v101, v101, v39, s2
	v_cndmask_b32_e64 v100, v100, v40, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v42, v42, v182, v98
	v_fma_f32 v41, v41, v183, v99
	v_fma_f32 v110, v110, v172, v86
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v213.h, v116.l
	v_mov_b16_e64 v238.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v98, v98, v42, s2
	v_cndmask_b32_e64 v99, v99, v41, s2
	v_cndmask_b32_e64 v86, v86, v110, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v215.h, v116.l
	v_mov_b16_e64 v214.h, v116.l
	v_mov_b16_e64 v218.h, v116.l
	v_mov_b16_e64 v217.h, v116.l
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v28, v43
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v32, v43
	v_mul_f32_e32 v24, v24, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v28, v151, v92
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v32, v32, v180, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v92, v28, s2
	v_cndmask_b32_e64 v94, v94, v32, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v241, v33, s[8:11], 0 offen
	buffer_load_u16 v240, v35, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v33, v216, s1, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v189, v34 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:176
	scratch_load_b32 v132, off, off offset:136
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_mul_f32 v34, v29, v116
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v29, v29, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v35, v26, v116
	v_mul_f32_e32 v26, v26, v43
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v239, v33, s[28:31], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v33, 0xf0, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v29, v29, v154, v44
	v_fma_f32 v34, v34, v186, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v35, v35, v158, v105
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v38, v38, v184, v102
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v33, 1, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v133, v44, v29, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v37, v37, v185, v103
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v26, v153, v96
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v22, v43
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v114, s34, s33, v33
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v33, v30, v116
	v_mul_f32_e32 v30, v30, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v106, v106, v34, s2
	v_cndmask_b32_e64 v105, v105, v35, s2
	v_cndmask_b32_e64 v103, v103, v37, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v33, v33, v187, v107
	v_fma_f32 v30, v30, v181, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v102, v38, s2
	v_cndmask_b32_e64 v37, v96, v26, s2
	v_cndmask_b32_e64 v38, v95, v25, s2
	v_cndmask_b32_e64 v107, v107, v33, s2
	v_cndmask_b32_e64 v97, v97, v30, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[29:32], v188 offset:34816
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v117, v18, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[33:36], v188 offset:35328
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v130, off, off offset:148
	scratch_load_b32 v131, off, off offset:152
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v108, v14, v43
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v117, v117, v173, v82
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v129, v12, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v216.h, v116.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v14, v116
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v18, v18, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v92, v82, v117, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v129, v129, v174, v48
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v12, v12, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v112, v16, v43 :: v_dual_lshlrev_b32 v117, 16, v241
	v_mul_f32_e32 v120, v5, v43
	v_mul_f32_e32 v127, v2, v43
	v_mul_f32_e32 v109, v13, v43
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v21, v21, v43
	v_mul_f32_e32 v111, v23, v43
	v_mul_f32_e32 v118, v17, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v27, v27, v126, v91
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v122, v19, v43
	v_mul_f32_e32 v126, v9, v43
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v177, v90
	v_fma_f32 v111, v111, v169, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v91, v27, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[25:28], v188 offset:35344
	v_mul_f32_e32 v113, v15, v43
	v_mul_f32_e32 v119, v6, v43
	v_mul_f32_e32 v124, v7, v43
	v_mul_f32_e32 v123, v8, v43
	v_mul_f32_e32 v128, v1, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v113, v113, v132, v83
	scratch_load_b32 v132, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v121, v20, v43
	v_mul_f32_e32 v125, v10, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v90, v22, s2
	v_cndmask_b32_e64 v91, v83, v113, s2
	v_cndmask_b32_e64 v85, v85, v111, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v16, v116
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v23, v116
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v116
	v_mul_f32_e32 v15, v15, v116
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v20, v116
	v_mul_f32_e32 v17, v17, v116
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v116
	v_mul_f32_e32 v8, v8, v116
	v_mul_f32_e32 v5, v5, v116
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v10, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v112, v112, v132, v84
	scratch_load_b32 v132, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v84, v112, s2
	v_cndmask_b32_e64 v112, v48, v129, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v84, v34, v117
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v120, v120, v132, v79
	scratch_load_b32 v132, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v119, v119, v132, v80
	scratch_load_b32 v132, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v96, v80, v119, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v119, v36, v117
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v124, v124, v132, v75
	scratch_load_b32 v132, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v75, v124, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v124, v27, v117
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v125, v125, v168, v74
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v74, v125, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v123, v123, v132, v76
	scratch_load_b32 v132, off, off offset:128 ; 4-byte Folded Reload
	v_fma_f32 v109, v109, v130, v87
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v130, v11, v43
	v_mul_f32_e32 v11, v11, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v76, v123, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v28, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v87, v87, v109, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v130, v130, v171, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v119, v119, v204, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v113, v47, v130, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v128, v128, v132, v71
	scratch_load_b32 v132, off, off offset:132 ; 4-byte Folded Reload
	v_fma_f32 v108, v108, v131, v88
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v131, v4, v43
	v_mul_f32_e32 v43, v3, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v71, v128, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v88, v88, v108, s2
	v_cndmask_b32_e64 v108, v79, v120, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v120, v35, v117
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v121, v121, v178, v78
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v3, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v120, v120, v203, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v78, v121, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v121, v26, v117
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v127, v127, v132, v72
	scratch_load_b32 v132, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v72, v127, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v127, v84, v200, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v121, v121, v202, v72
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v96, v96, v127, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v132, v43, v132, v45
	scratch_load_b32 v43, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v45, v132, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v124, v124, v205, v74
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v74, v124, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v131, v131, v43, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[41:44], v188 offset:34832
	v_mul_f32_e32 v47, v32, v117
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v118, v118, v170, v81
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v31, v117
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v176, v89
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v45, v30, v117
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v95, v81, v118, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v89, v21, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v118, v33, v117 :: v_dual_lshlrev_b32 v21, 16, v240
	v_mul_f32_e32 v7, v7, v116
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v79, v32, v21
	v_mul_f32_e32 v80, v31, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v45, v210, v37
	v_fma_f32 v45, v48, v197, v40
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v83, v43, v117 :: v_dual_lshlrev_b32 v48, 16, v239
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v126, v126, v167, v73
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v81, v41, v117
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v122, v122, v175, v77
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v82, v44, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v130, v37, v32, s3
	v_cndmask_b32_e64 v111, v73, v126, s2
	v_cndmask_b32_e64 v73, v46, v131, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v29, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v109, v77, v122, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v77, v42, v117
	v_mul_f32_e32 v29, v29, v21
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v189, v48 offset:34816
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v46, v209, v38
	v_fma_f32 v46, v47, v198, v39
	v_fma_f32 v47, v77, v196, v88
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v131, v38, v31, s3
	v_cndmask_b32_e64 v132, v39, v46, s3
	v_cndmask_b32_e64 v134, v40, v45, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[37:40], v188 offset:35328
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v125, v81, v195, v87
	v_fma_f32 v77, v83, v207, v91
	v_fma_f32 v126, v82, v208, v90
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[81:84], v188 offset:34816
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v88, v88, v47, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[45:48], v188 offset:34832
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v122, v25, v117
	v_mul_f32_e32 v30, v30, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v128, v29, v211, v104
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v87, v87, v125, s3
	v_cndmask_b32_e64 v91, v91, v77, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v122, v122, v201, v71
	v_fma_f32 v129, v30, v212, v105
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[29:32], v188 offset:35344
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v72, v121, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v118, v118, v199, v108
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v71, v122, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v123, v123, v206, v73
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v208, v147 :: v_dual_mul_f32 v125, v38, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v108, v108, v118, s3
	v_cndmask_b32_e64 v118, v76, v119, s3
	v_cndmask_b32_e64 v119, v75, v120, s3
	v_cndmask_b32_e64 v75, v105, v129, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v125, v125, v227, v92
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v122, v45, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v73, v123, s3
	v_cndmask_b32_e64 v73, v104, v128, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v128, v39, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v92, v92, v125, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v122, v122, v220, v89
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v105, v84, v117
	v_mul_f32_e32 v104, v81, v117
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v129, v30, v117
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v128, v128, v230, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v89, v122, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v122, 0xbfb8aa3b, v92
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v105, v105, v223, v94
	v_fma_f32 v129, v129, v229, v110
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v120, v83, v117
	v_mul_f32_e32 v81, v81, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v122
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v94, v94, v105, s3
	v_cndmask_b32_e64 v105, v109, v128, s3
	v_cndmask_b32_e64 v109, v110, v129, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v83, v83, v21 :: v_dual_mov_b32 v210, v149
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v122, 0, 0x42800000, s9
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v135, v29, v117
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v81, v81, v234, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v83, v83, v236, v102
	v_fma_f32 v120, v120, v222, v93
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v122, 0xbfb8aa3b, v92
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v135, v135, v228, v111
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v106, v106, v81, s3
	v_cndmask_b32_e64 v81, v102, v83, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v102, 0xbfb8aa3b, v94
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v93, v120, s3
	v_cndmask_b32_e64 v110, v111, v135, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v136, v32, v117
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v104, v104, v194, v133
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v102
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v90, v126, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v125, 0xbfb8aa3b, v110
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v136, v136, v233, v112
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v84, v84, v21 :: v_dual_mul_f32 v129, 0xbfb8aa3b, v106
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v102, 0, 0x42800000, s1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v127, v40, v117
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v111, v112, v136, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v123, v48, v117
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v84, v84, v237, v103
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v102, 0xbfb8aa3b, v94
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v127, v127, v231, v78
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v128, 0xbfb8aa3b, v111
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v123, v123, v225, v86
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v125
	v_exp_f32_e32 v102, v102
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v78, v127, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v121, v46, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v86, v123, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v71, v82, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v128
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v209, v148 :: v_dual_mul_f32 v120, 0xbfb8aa3b, v86
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v71, v71, v219, v97
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v128, 0, 0x42800000, s15
	v_cndmask_b32_e64 v125, 0, 0x42800000, s14
	v_exp_f32_e32 v122, v122
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v120
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v97, v71, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v124, v47, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v97, v133, v104, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v128, 0xbfb8aa3b, v111
	v_cndmask_b32_e64 v120, 0, 0x42800000, s7
	v_mul_f32_e32 v83, 0xbfb8aa3b, v71
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v124, v124, v224, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, s7
	v_ldexp_f32 v102, v102, v139
	v_fmac_f32_e32 v120, 0xbfb8aa3b, v86
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v85, v85, v124, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v124, 0xbfb8aa3b, v78
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v121, v121, v221, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v120, v120
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, s9
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v124
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v22, v121, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v126, v37, v117 :: v_dual_fmac_f32 v83, 0xbfb8aa3b, v71
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v125, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v124, 0, 0x42800000, s11
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v117, v31, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v147, 0, 0xffffffc0, s11
	v_ldexp_f32 v120, v120, v143
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v102, 1.0, v102
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v124, 0xbfb8aa3b, v78
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v117, v117, v232, v113
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v122, v122, v145
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v120, 1.0, v120
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v124, v124
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v112, v113, v117, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v82, v82, v21 :: v_dual_mul_f32 v113, 0xbfb8aa3b, v104
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v126, v126, v226, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v122, 1.0, v122 :: v_dual_mul_f32 v127, 0xbfb8aa3b, v112
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v82, v82, v235, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v113
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v95, v95, v126, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v124, v124, v147
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v127
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v107, v107, v82, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v82, v103, v84, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v84, 0xbfb8aa3b, v93 :: v_dual_mul_f32 v121, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v133, 0xbfb8aa3b, v107
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v136, 0xbfb8aa3b, v82
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v84
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v121
	v_cndmask_b32_e64 v113, 0, 0x42800000, s5
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_mul_f32_e32 v126, 0xbfb8aa3b, v109
	v_cndmask_b32_e64 v84, 0, 0x42800000, s4
	v_cndmask_b32_e64 v121, 0, 0x42800000, s10
	v_mul_f32_e32 v103, 0xbfb8aa3b, v89
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v97
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v136
	v_dual_fmac_f32 v84, 0xbfb8aa3b, v93 :: v_dual_fmac_f32 v113, 0xbfb8aa3b, v104
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v126
	v_fmac_f32_e32 v121, 0xbfb8aa3b, v95
	v_exp_f32_e32 v22, v22
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v103
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v133
	v_cndmask_b32_e64 v126, 0, 0x42800000, s13
	v_cndmask_b32_e64 v136, 0, 0x42800000, s19
	v_mul_f32_e32 v117, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s0
	v_exp_f32_e32 v84, v84
	v_cndmask_b32_e64 v103, 0, 0x42800000, s6
	v_cndmask_b32_e64 v133, 0, 0x42800000, s17
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v109
	v_fmac_f32_e32 v136, 0xbfb8aa3b, v82
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v117
	v_exp_f32_e32 v113, v113
	v_ldexp_f32 v22, v22, v138
	v_mul_f32_e32 v123, 0xbfb8aa3b, v105
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v117, 0, 0x42800000, s8
	v_fmac_f32_e32 v103, 0xbfb8aa3b, v89
	v_dual_fmac_f32 v133, 0xbfb8aa3b, v107 :: v_dual_add_f32 v124, 1.0, v124
	v_exp_f32_e32 v126, v126
	v_ldexp_f32 v84, v84, v140
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v123
	v_mul_f32_e32 v135, 0xbfb8aa3b, v81
	v_fmac_f32_e32 v117, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, s13
	v_exp_f32_e32 v133, v133
	v_cndmask_b32_e64 v123, 0, 0x42800000, s12
	v_ldexp_f32 v113, v113, v141
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v84, 1.0, v84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v139, null, v22, v22, v97
	v_div_scale_f32 v141, null, v102, v102, v94
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v105
	v_cndmask_b32_e64 v153, 0, 0xffffffc0, s17
	v_exp_f32_e32 v103, v103
	v_exp_f32_e32 v117, v117
	v_ldexp_f32 v126, v126, v149
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v143, null, v84, v84, v93
	v_div_scale_f32 v149, null, v120, v120, v86
	v_rcp_f32_e32 v179, v139
	v_rcp_f32_e32 v180, v141
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v142, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v144, 0, 0xffffffc0, s8
	v_exp_f32_e32 v121, v121
	v_ldexp_f32 v133, v133, v153
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v153, null, v122, v122, v92
	v_rcp_f32_e32 v181, v143
	v_rcp_f32_e32 v184, v149
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s10
	v_ldexp_f32 v103, v103, v142
	v_ldexp_f32 v117, v117, v144
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v186, v153
	v_fma_f32 v203, -v139, v179, 1.0
	v_fma_f32 v204, -v141, v180, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v127, 0, 0x42800000, s16
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v129
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, s15
	v_exp_f32_e32 v83, v83
	v_exp_f32_e32 v136, v136
	v_ldexp_f32 v121, v121, v146
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v103, 1.0, v103 :: v_dual_fmac_f32 v180, v204, v180
	v_add_f32_e32 v113, 1.0, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v205, -v143, v181, 1.0
	v_fmac_f32_e32 v179, v203, v179
	v_fma_f32 v203, -v149, v184, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v117, 1.0, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v129, 0, 0x42800000, s18
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v127, 0xbfb8aa3b, v112 :: v_dual_add_f32 v126, 1.0, v126
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s19
	v_ldexp_f32 v128, v128, v151
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v140, s5, v97, v22, v97
	v_div_scale_f32 v145, null, v113, v113, v104
	v_fmac_f32_e32 v181, v205, v181
	v_fma_f32 v205, -v153, v186, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v121, 1.0, v121 :: v_dual_fmac_f32 v184, v203, v184
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v151, null, v117, v117, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v129, 0xbfb8aa3b, v106 :: v_dual_add_f32 v128, 1.0, v128
	v_exp_f32_e32 v125, v125
	v_ldexp_f32 v83, v83, v137
	v_ldexp_f32 v136, v136, v155
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v169, null, v126, v126, v109
	v_rcp_f32_e32 v182, v145
	v_rcp_f32_e32 v185, v151
	v_fmac_f32_e32 v186, v205, v186
	v_div_scale_f32 v155, null, v121, v121, v95
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s14
	v_exp_f32_e32 v127, v127
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v83, 1.0, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v172, null, v128, v128, v111
	v_rcp_f32_e32 v187, v155
	v_rcp_f32_e32 v194, v169
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v135
	v_cndmask_b32_e64 v152, 0, 0xffffffc0, s16
	v_ldexp_f32 v125, v125, v150
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v137, null, v83, v83, v71
	v_rcp_f32_e32 v196, v172
	v_fma_f32 v206, -v145, v182, 1.0
	v_fma_f32 v204, -v151, v185, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v135, 0, 0x42800000, s20
	v_ldexp_f32 v127, v127, v152
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v147, null, v103, v103, v89
	v_rcp_f32_e32 v178, v137
	v_fmac_f32_e32 v182, v206, v182
	v_div_scale_f32 v146, s8, v104, v113, v104
	v_fma_f32 v206, -v155, v187, 1.0
	v_fmac_f32_e32 v185, v204, v185
	v_fma_f32 v204, -v169, v194, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v135, 0xbfb8aa3b, v81 :: v_dual_add_f32 v136, 1.0, v136
	v_exp_f32_e32 v123, v123
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v152, s11, v85, v117, v85
	v_div_scale_f32 v157, null, v124, v124, v78
	v_rcp_f32_e32 v183, v147
	v_fmac_f32_e32 v187, v206, v187
	v_fma_f32 v206, -v172, v196, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v127, 1.0, v127 :: v_dual_fmac_f32 v194, v204, v194
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v171, null, v125, v125, v110
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v148, 0, 0xffffffc0, s12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v176, null, v136, v136, v82
	v_rcp_f32_e32 v188, v157
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v195, v171
	v_fma_f32 v202, -v137, v178, 1.0
	v_fmac_f32_e32 v196, v206, v196
	v_div_scale_f32 v173, null, v127, v127, v112
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v123, v123, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v200, v176
	v_fmac_f32_e32 v178, v202, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v197, v173
	v_fma_f32 v202, -v147, v183, 1.0
	v_div_scale_f32 v138, vcc_lo, v71, v83, v71
	v_div_scale_f32 v144, s7, v93, v84, v93
	v_fmac_f32_e32 v183, v202, v183
	v_fma_f32 v202, -v157, v188, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v123, 1.0, v123
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v205, -v171, v195, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v135, v135
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v206, -v176, v200, 1.0
	v_fmac_f32_e32 v188, v202, v188
	v_div_scale_f32 v168, s1, v105, v123, v105
	v_fma_f32 v202, -v173, v197, 1.0
	v_fmac_f32_e32 v195, v205, v195
	v_mul_f32_e32 v205, v138, v178
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s20
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v133, 1.0, v133 :: v_dual_fmac_f32 v200, v206, v200
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v167, null, v123, v123, v105
	v_fmac_f32_e32 v197, v202, v197
	v_fma_f32 v202, -v137, v205, v138
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v129, v129
	v_ldexp_f32 v135, v135, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v142, s6, v94, v102, v94
	v_div_scale_f32 v174, null, v133, v133, v107
	v_rcp_f32_e32 v189, v167
	v_fmac_f32_e32 v205, v202, v178
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, s18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v198, v174
	v_div_scale_f32 v158, s4, v78, v124, v78
	v_fma_f32 v137, -v137, v205, v138
	v_mul_f32_e32 v138, v142, v180
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v129, v129, v154
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v203, -v167, v189, 1.0
	v_div_scale_f32 v177, null, v135, v135, v81
	v_div_fmas_f32 v137, v137, v178, v205
	v_fma_f32 v178, -v141, v138, v142
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v201, v177
	v_div_scale_f32 v156, s13, v95, v121, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v138, v178, v180
	v_dual_mul_f32 v202, v140, v179 :: v_dual_fmac_f32 v189, v203, v189
	v_fma_f32 v203, -v174, v198, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v129, 1.0, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v141, -v141, v138, v142
	v_mul_f32_e32 v142, v146, v182
	v_div_fixup_f32 v71, v137, v83, v71
	v_fmac_f32_e32 v198, v203, v198
	v_div_scale_f32 v175, null, v129, v129, v106
	v_div_scale_f32 v203, s14, v110, v125, v110
	v_div_scale_f32 v148, s9, v89, v103, v89
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v199, v175
	v_div_scale_f32 v154, s12, v92, v122, v92
	v_div_scale_f32 v206, s15, v111, v128, v111
	v_div_scale_f32 v150, s10, v86, v120, v86
	v_div_scale_f32 v205, s16, v112, v127, v112
	v_div_scale_f32 v178, s18, v106, v129, v106
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v204, -v175, v199, 1.0
	v_div_scale_f32 v170, s0, v109, v126, v109
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v80, v164, v100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v42, v42, v21 :: v_dual_fmac_f32 v199, v204, v199
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v204, -v177, v201, 1.0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v48, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v80, v100, v80, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v79, v163, v101
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v45, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v201, v204, v201
	v_fma_f32 v204, -v139, v202, v140
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v44, v44, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v101, v79, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v45, v45, v192, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v47, v47, v21 :: v_dual_fmac_f32 v202, v204, v179
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v204, s17, v107, v133, v107
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v98, v45, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v38, v38, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v139, -v139, v202, v140
	v_mul_f32_e32 v140, v144, v181
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v34, v34, v21
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v37, v37, v21
	v_dual_mul_f32 v19, v19, v116 :: v_dual_mul_f32 v30, v30, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v139, v139, v179, v202
	v_fma_f32 v202, -v143, v140, v144
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v179, v148, v183
	v_div_fmas_f32 v138, v141, v180, v138
	v_mul_f32_e32 v180, v152, v185
	v_fmac_f32_e32 v140, v202, v181
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v202, -v145, v142, v146
	v_div_fixup_f32 v94, v138, v102, v94
	v_fma_f32 v138, -v151, v180, v152
	v_fma_f32 v143, -v143, v140, v144
	v_dual_mul_f32 v144, v158, v188 :: v_dual_mul_f32 v137, v156, v187
	v_div_fixup_f32 v97, v139, v22, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v180, v138, v185
	v_div_fmas_f32 v140, v143, v181, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v138, -v157, v144, v158
	v_dual_mul_f32 v181, v203, v195 :: v_dual_fmac_f32 v142, v202, v182
	v_mul_f32_e32 v202, v168, v189
	v_div_fixup_f32 v84, v140, v84, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v144, v138, v188
	v_fma_f32 v138, -v171, v181, v203
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v93, v131, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v145, -v145, v142, v146
	v_mul_f32_e32 v146, v206, v196
	v_fma_f32 v22, -v147, v179, v148
	v_fmac_f32_e32 v181, v138, v195
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v213.l, v93.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v83, v154, v186
	v_dual_mul_f32 v141, v150, v184 :: v_dual_mul_f32 v94, v132, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v171, -v171, v181, v203
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v203, v46, v21
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v46, v130, v71
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v179, v22, v183
	v_fma_f32 v22, -v153, v83, v154
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v139, v205, v197 :: v_dual_mul_f32 v102, v178, v199
	v_div_fmas_f32 v142, v145, v182, v142
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v83, v22, v186
	v_fma_f32 v22, -v167, v202, v168
	v_mul_f32_e32 v207, v204, v198
	v_fma_f32 v145, -v149, v141, v150
	v_fma_f32 v147, -v147, v179, v148
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v202, v22, v189
	v_fma_f32 v22, -v172, v146, v206
	v_fma_f32 v151, -v151, v180, v152
	v_div_fmas_f32 v71, v147, v183, v179
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v153, -v153, v83, v154
	v_fmac_f32_e32 v146, v22, v196
	v_fma_f32 v22, -v175, v102, v178
	v_fmac_f32_e32 v141, v145, v184
	v_fma_f32 v145, -v155, v137, v156
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v84, v134, v84
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v104, v142, v113, v104
	v_fmac_f32_e32 v102, v22, v199
	v_fma_f32 v149, -v149, v141, v150
	v_fmac_f32_e32 v137, v145, v187
	v_fma_f32 v157, -v157, v144, v158
	v_div_fixup_f32 v71, v71, v103, v89
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v215.l, v84.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v97, v149, v184, v141
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v155, -v155, v137, v156
	v_div_fmas_f32 v113, v151, v185, v180
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v143, v170, v194
	v_div_fmas_f32 v83, v153, v186, v83
	s_mov_b32 vcc_lo, s13
	v_div_fixup_f32 v86, v97, v120, v86
	v_div_fmas_f32 v89, v155, v187, v137
	s_mov_b32 vcc_lo, s4
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v87, v87, v71
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v71, v157, v188, v144
	v_fma_f32 v167, -v167, v202, v168
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v89, v89, v121, v95
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v86, v90, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v71, v71, v124, v78
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v78, 1, v215
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v145, -v169, v143, v170
	v_div_fmas_f32 v90, v167, v189, v202
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v214.l, v46.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v88, v88, v104
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v156.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v143, v145, v194
	v_fma_f32 v145, -v173, v139, v205
	v_div_fixup_f32 v85, v113, v117, v85
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v89, v108, v89
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v83, v83, v122, v92
	v_fma_f32 v169, -v169, v143, v170
	v_fmac_f32_e32 v139, v145, v197
	v_div_fixup_f32 v90, v90, v123, v105
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v172, -v172, v146, v206
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v97, 1, v214
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v173, -v173, v139, v205
	v_div_scale_f32 v205, s5, v82, v136, v82
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v92, 1, v213
	v_mov_b16_e64 v218.l, v88.h
	v_mov_b16_e64 v182.h, v116.l
	v_mov_b16_e64 v182.l, v89.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v85, v91, v85
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v91, v169, v194, v143
	s_mov_b32 vcc_lo, s14
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v154.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v83, v96, v83 :: v_dual_mul_f32 v90, v119, v90
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v96, v171, v195, v181
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v138, -v174, v207, v204
	v_fma_f32 v175, -v175, v102, v178
	v_mul_f32_e32 v178, v205, v200
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s7, v46, v46
	v_cmp_o_f32_e64 s8, v93, v93
	v_add3_u32 v46, v46, v97, 0x7fff
	v_add3_u32 v92, v93, v92, 0x7fff
	v_and_b32_e32 v93, 1, v218
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v97, v172, v196, v146
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v216.l, v94.h
	v_cmp_o_f32_e64 s1, v88, v88
	v_cmp_o_f32_e64 s4, v84, v84
	v_add3_u32 v88, v88, v93, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v93, v97, v128, v111
	v_fmac_f32_e32 v207, v138, v198
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v217.l, v87.h
	v_add3_u32 v78, v84, v78, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v84, v96, v125, v110
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v76, v76, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v174, -v174, v207, v204
	v_div_scale_f32 v204, s6, v81, v135, v81
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v95, 1, v216
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v145.h, v116.l
	v_cmp_o_f32_e64 s9, v94, v94
	v_mov_b16_e64 v238.l, v86.h
	v_add3_u32 v94, v94, v95, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v91, v91, v126, v109
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v95, 1, v217
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v104, v173, v197, v139
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v84, v72, v84
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v72.h, 0x7fff, v88.h, s1
	v_and_b32_e32 v88, 1, v182
	v_mov_b16_e64 v145.l, v85.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v138.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v96, v174, v198, v207
	s_mov_b32 vcc_lo, s18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v87, v87
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v103, v118, v71
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v138.l, v83.h
	v_cndmask_b16 v46.l, 0x7fff, v92.h, s8
	v_and_b32_e32 v92, 1, v238
	v_cndmask_b16 v71.h, 0x7fff, v94.h, s9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v91, v77, v91 :: v_dual_and_b32 v94, 1, v145
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v77, v175, v199, v102
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v87, v87, v95, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v95, v104, v127, v112
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v148.h, v116.l
	v_mov_b16_e64 v150.h, v116.l
	v_mov_b16_e64 v152.h, v116.l
	v_cmp_o_f32_e64 s10, v86, v86
	v_cmp_o_f32_e64 s11, v85, v85
	v_mov_b16_e64 v148.l, v103.h
	v_cndmask_b16 v71.l, 0x7fff, v78.h, s4
	v_and_b32_e32 v78, 1, v138
	v_add3_u32 v86, v86, v92, 0x7fff
	v_mov_b16_e64 v150.l, v90.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v92, v96, v133, v107
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v85, v85, v94, 0x7fff
	v_mov_b16_e64 v152.l, v91.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v77, v77, v129, v106
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v93, v74, v95
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v158.h, v116.l
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s7
	v_cmp_o_f32_e64 s7, v83, v83
	v_cmp_o_f32_e64 s8, v89, v89
	v_cndmask_b16 v72.l, 0x7fff, v87.h, s0
	v_and_b32_e32 v87, 1, v148
	v_add3_u32 v78, v83, v78, 0x7fff
	v_mov_b16_e64 v154.l, v84.h
	v_cndmask_b16 v74.h, 0x7fff, v86.h, s10
	v_and_b32_e32 v83, 1, v150
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v75, v75, v92
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v86, v89, v88, 0x7fff
	v_mov_b16_e64 v156.l, v76.h
	v_cndmask_b16 v74.l, 0x7fff, v85.h, s11
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v88, v73, v77 :: v_dual_and_b32 v85, 1, v152
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v158.l, v93.h
	v_mov_b16_e64 v168.h, v116.l
	v_mov_b16_e64 v170.h, v116.l
	v_cmp_o_f32_e64 s4, v90, v90
	v_cmp_o_f32_e64 s1, v91, v91
	v_add3_u32 v73, v103, v87, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v78.h, s7
	v_and_b32_e32 v78, 1, v154
	v_add3_u32 v83, v90, v83, 0x7fff
	v_mov_b16_e64 v168.l, v75.h
	v_cndmask_b16 v77.l, 0x7fff, v86.h, s8
	v_and_b32_e32 v86, 1, v156
	v_add3_u32 v85, v91, v85, 0x7fff
	v_mov_b16_e64 v170.l, v88.h
	v_and_b32_e32 v87, 1, v158
	v_cmp_o_f32_e64 s0, v84, v84
	v_cmp_o_f32_e64 s9, v76, v76
	v_cmp_o_f32_e64 s10, v93, v93
	v_add3_u32 v84, v84, v78, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v83.h, s4
	v_and_b32_e32 v83, 1, v168
	v_add3_u32 v76, v76, v86, 0x7fff
	v_cndmask_b16 v78.h, 0x7fff, v85.h, s1
	v_and_b32_e32 v85, 1, v170
	v_add3_u32 v86, v93, v87, 0x7fff
	v_cmp_o_f32_e64 s7, v75, v75
	v_add3_u32 v83, v75, v83, 0x7fff
	v_cndmask_b16 v78.l, 0x7fff, v84.h, s0
	v_add3_u32 v84, v88, v85, 0x7fff
	v_cndmask_b16 v75.l, 0x7fff, v86.h, s10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v85, -v176, v178, v205
	v_mul_f32_e32 v86, v204, v201
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v75.h, 0x7fff, v76.h, s9
	v_cndmask_b16 v76.h, 0x7fff, v83.h, s7
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v83, v203, v193, v99
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v178, v85, v200
	v_fma_f32 v85, -v177, v86, v204
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s8, v88, v88
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v39, v39, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v99, v83, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v88, -v176, v178, v205
	v_fmac_f32_e32 v86, v85, v201
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_cndmask_b16 v76.l, 0x7fff, v84.h, s8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v83
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v84.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v89, -v177, v86, v204
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v73.h, 0x7fff, v73.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s5
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v88, v88, v200, v178
	s_mov_b32 vcc_lo, s6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v85, 0xbfb8aa3b, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v86, v89, v201, v86
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v87, 0, 0x42800000, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v82, v88, v136, v82
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v40, v40, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v85
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v81, v86, v135, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v83
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v79, v79, v82
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v85, 0, 0x42800000, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v80, v80, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v87, v87
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v84.l, v79.h
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v45
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v36, v36, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v33, v33, v21 :: v_dual_and_b32 v84, 1, v84
	v_mul_f32_e32 v26, v26, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v82, v85
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v81, v87, v86
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v84, v79, v84, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v87, v13, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v86.l, v80.h
	v_mov_b16_e32 v86.h, v116.l
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.h, 0x7fff, v84.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v84, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v82, v82, v85
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v86, 1, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v85, null, v81, v81, v83
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v35, v35, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v79, 1.0, v82
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v86, v80, v86, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v82, v85
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v9, v116
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v25, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v88, null, v79, v79, v45
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v22, s27, 4, v115
	s_mov_b32 s27, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v89, -v85, v82, 1.0
	v_fmac_f32_e32 v82, v89, v82
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v89, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v14, v14, v84, v70
	scratch_load_b32 v84, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v70, v14, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v70, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v42, v42, v159, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v42, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v24, v24, v70, v68
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, vcc_lo, v83, v81, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v68, v24, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v68, v70, v82
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v48, v48, v191, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v48, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v85, v68, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v48, v82
	v_fma_f32 v42, -v85, v68, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v70, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v89, v67
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v89, 0xbfb8aa3b, v24
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v42, v82, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v67, v23, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v42, v81, v83
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v47, v47, v190, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v14, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v47, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v24
	v_exp_f32_e32 v47, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v16, v16, v70, v66
	scratch_load_b32 v70, off, off offset:48 ; 4-byte Folded Reload
	v_fma_f32 v84, v87, v84, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v69, v84, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v84, -v88, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, s0, v45, v79, v45
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v67, v84, v87
	v_fma_f32 v48, -v88, v67, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v67, v48, v87
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v88, v67, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v67, v68, v87, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v45, v67, v79, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v23
	v_ldexp_f32 v47, v47, v68
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v13.l, 0x7fff, v86.h, vcc_lo
	v_mov_b16_e32 v67.h, v116.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v42, v48
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v42, v42, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v47, v47, v24
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v68, v48
	v_fma_f32 v79, -v48, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v68, v79, v68 :: v_dual_mul_f32 v41, v41, v21
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v41, v41, v160, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v69, v41, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v42, v42, v23
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v41, v45
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v14.h
	v_mov_b16_e32 v45.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v14, v45, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v66, v16, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v66, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v43, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, vcc_lo, v24, v47, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v15, v15, v70, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v65, v15, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v65, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v70, v65, v70
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v65, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v18, v18, v66, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v66, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v64, v18, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v64, s1, v23, v42, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v38, v38, v166, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v79, v64, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v38, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v69, v79, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v38, v70
	v_fma_f32 v38, -v69, v79, v64
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v17, v17, v65, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v65, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v63, v17, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v37, v37, v165, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v37, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v16, v16, v66, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v66, v43, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v16, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v44, v44, v65, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v65, -v48, v66, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v44, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v66, v65, v68
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v16, -v48, v66, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v17
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v48, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v16, v16, v68, v66
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v38, v38, v70, v79
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v43, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v16, v47, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v47, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s4
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v38, v42, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v14, v16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v14.h, 0x7fff, v45.h, s0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v45, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v18
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v15, v23
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v23, v16, v23, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v38
	v_exp_f32_e32 v37, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.l, v15.h
	v_mov_b16_e32 v38.h, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v67.l, v41.h
	v_cmp_o_f32_e64 s0, v41, v41
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v24, v24, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v15, v38, 0x7fff
	v_add3_u32 v67, v41, v67, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v14.l, 0x7fff, v67.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v37, v37, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v42
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v16, v16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v16, null, v37, v37, v17
	v_rcp_f32_e32 v44, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v6, v6, v43, v62
	scratch_load_b32 v43, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v19, v19, v47, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v62, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v19, v59, v19, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v20, v20, v45, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v16, v44, 1.0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v39, v39, v161, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v60, v20, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v44, v45, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v39, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v39, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v40, v40, v162, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v40, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, s1, v17, v37, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v59, v40, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v20
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v5, v5, v43, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v42, v41, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v61, v5, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, vcc_lo, v18, v24, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v33, v48, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v47, v43, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v42, v47, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v39, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v16, v59, v40
	v_fmac_f32_e32 v47, v48, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v34, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v48, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v59, v39, v44
	v_exp_f32_e32 v39, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v42, v47, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v16, -v16, v59, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v34, v34, v41, v47
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v16, v16, v44, v59
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v39, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v18, v34, v24, v18
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v39, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v19
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v16, v37, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v18
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v41, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v42, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_mov_b16_e32 v18.l, v6.h
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v15, 1.0, v33
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.l, 0x7fff, v38.h, vcc_lo
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v24.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v16, v41, v17
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v15, v15, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v18, v6, v18, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v6, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v17
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v5.h
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v16, v16, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v37, v34
	v_fma_f32 v38, -v17, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v5, v24, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v33, v38, v33
	v_div_scale_f32 v38, vcc_lo, v20, v15, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v8, v8, v39, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v34, v37, 1.0
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v19, v16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v39, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v7, v6, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v58, v8, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v8, v38, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v57, v6, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v36, v42, v7
	scratch_load_b32 v42, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v17, v8, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v36, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v8, v40, v33
	v_fma_f32 v40, -v34, v41, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v17, v8, v38
	v_fmac_f32_e32 v41, v40, v37
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v8, v17, v33, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v33, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v17, -v34, v41, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v8, v8, v15, v20
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v15, v29, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v17, v37, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v17, v16, v19
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	scratch_load_b32 v17, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.l, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v24, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fma_f32 v35, v35, v42, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v35, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v16
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v9, v9, v33, v55
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v55, v9, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v5, v15, v209, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v15.l, v6.h
	v_mov_b16_e32 v15.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v9, v5, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v1, v1, v24, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v16, 0xbfb8aa3b, v5 :: v_dual_and_b32 v15, 1, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v51, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v5
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v10, v35, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v56, v10, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v30, v210, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v10, v20, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v20, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v9, 0xbfb8aa3b, v8 :: v_dual_and_b32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v7, v10, 0x7fff
	v_add3_u32 v7, v6, v15, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v15, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v9, 0, 0x42800000, s0
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v9, v9
	v_ldexp_f32 v9, v9, v16
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v16, off, off offset:32 ; 4-byte Folded Reload
	v_fma_f32 v12, v12, v17, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v54, v12, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v15, v15, v17
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v31, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v9, v9, v8
	v_div_scale_f32 v31, s1, v8, v9, v8
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v20, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v15, v15, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v52, v2, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v24, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v11, v16, v53
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v32, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, s4, v5, v15, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v53, v11, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v242, v12
	v_fma_f32 v17, v17, v208, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v12, v16, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v16, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v17, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v12
	v_mul_f32_e32 v29, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v19, v16, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v16, v30, v16
	v_fma_f32 v30, -v20, v24, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v33, v31, v16
	v_dual_fmac_f32 v24, v30, v24 :: v_dual_fmac_f32 v29, 0xbfb8aa3b, v11
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v17, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v35, -v19, v33, v31
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v33, v35, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v17, v17, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v30, v32, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v19, -v19, v33, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v29, v29, v34
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v34, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v16, v19, v16, v33
	s_mov_b32 vcc_lo, s4
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v17, v17, v12
	v_div_fixup_f32 v8, v16, v9, v8
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v16, off, off offset:4 ; 4-byte Folded Reload
	v_fma_f32 v26, v26, v36, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v26, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v25, v25, v34, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v20, v30, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v25, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v30, v34, v24
	v_div_scale_f32 v34, null, v29, v29, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v30, v32
	v_rcp_f32_e32 v31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v20, v24, v30
	v_fma_f32 v20, -v35, v36, 1.0
	v_div_fixup_f32 v5, v19, v15, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v36, v20, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v20, off, off          ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v15, vcc_lo, v12, v17, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v16, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v24, -v34, v31, 1.0
	v_div_scale_f32 v19, s0, v11, v29, v11
	v_mul_f32_e32 v9, v15, v36
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v31, v24, v31
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v50, v3, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v16, -v35, v9, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v5, v19, v31
	v_dual_fmac_f32 v9, v16, v36 :: v_dual_mul_f32 v16, v27, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v34, v5, v19
	v_fma_f32 v15, -v35, v9, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v5, v8, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v28, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v9, v15, v36, v9
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v34, v5, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v15, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v5, v19, v31, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v5, v29, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v10.l, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b32_e32 v11, 0x7632
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v4, v4, v20, v49
	scratch_load_b32 v20, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v49, v4, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v8, v8, v15, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v15.l, v2.h
	v_mov_b16_e32 v15.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v9, v17, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e32 v9.h, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.h, v116.l
	v_and_b32_e32 v6, 1, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v9.l, v4.h
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v1, v6, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v16, v16, v20, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v16, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v5, 1, v15
	v_mov_b16_e32 v8.l, v3.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v2, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 1, v8
	v_and_b32_e32 v8, 1, v9
	v_mov_b32_e32 v9, 0x5410
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v2, v4, v8, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	s_mov_b32 s0, 0x76543210
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_dual_cndmask_b32 v2, v46, v72 :: v_dual_cndmask_b32 v5, v71, v74
	v_cndmask_b32_e32 v7, v77, v78, vcc_lo
	v_dual_cndmask_b32 v12, v73, v75 :: v_dual_cndmask_b32 v15, v14, v76
	v_cndmask_b32_e32 v14, v76, v14, vcc_lo
	v_dual_cndmask_b32 v16, v23, v13 :: v_dual_cndmask_b32 v13, v13, v23
	v_cndmask_b32_e32 v17, v3, v18, vcc_lo
	v_cndmask_b32_e32 v3, v18, v3, vcc_lo
	v_dual_cndmask_b32 v1, v72, v46 :: v_dual_cndmask_b32 v4, v74, v71
	v_cndmask_b32_e32 v6, v78, v77, vcc_lo
	v_cndmask_b32_e32 v8, v75, v73, vcc_lo
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v11, v11, 8, v11
	v_cndmask_b32_e32 v18, v0, v10, vcc_lo
	v_cndmask_b32_e32 v0, v10, v0, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v11, 0x760076, v11
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v10, v11, 4, v11
	v_permlanex16_b32 v11, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v14, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v14, 0x5040504, v9
	v_and_b32_e32 v19, 0x7060706, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v2, v1, v14
	v_perm_b32 v1, v2, v1, v19
	v_perm_b32 v2, v5, v4, v14
	v_perm_b32 v3, v5, v4, v19
	v_perm_b32 v4, v7, v6, v14
	v_perm_b32 v5, v7, v6, v19
	v_perm_b32 v6, v11, v8, v14
	v_perm_b32 v7, v11, v8, v19
	v_perm_b32 v10, v13, v16, v14
	v_perm_b32 v11, v13, v16, v19
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v16, v114, v115, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v8, v12, v15, v14
	v_perm_b32 v9, v12, v15, v19
	v_perm_b32 v12, v20, v17, v14
	v_perm_b32 v13, v20, v17, v19
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v17, v114, v22, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v14, v21, v18, v14
	v_perm_b32 v15, v21, v18, v19
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v16, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v17, s[24:27], 0 offen offset:256
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 184
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 184
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25408
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 184
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 184
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 45
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
