	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
	v_mov_b32_e32 v188, v0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s34, s[0:1], 0x38
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s14, 63
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
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s23
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v0, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v0
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
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
	s_min_i32 s8, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v0, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v0, 0xf0, v188
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v251, 3, v0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s10
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_i32 s10, s4, s6
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s10, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s6, s3, 5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s6, v251
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s34, 31
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s8, s3, s8
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s35, s15, 1
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s8
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s28, s3, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s29, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s35, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s33, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s33
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v34, 15, v188
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v0, s35, v251
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v82, v34, 4, v0
	v_add3_u32 v0, s28, s4, v82
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s14, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s35, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v9, s15, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v123, 3, v188
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v2, 0x80000000, v0, vcc_lo
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v153, 3, v188
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v5, 0x80000000, v1, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s35, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v19, s6, v123
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v17, s14, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_dual_cndmask_b32 v13, 0x80000000, v10 :: v_dual_and_b32 v18, 56, v153
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v19
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v0, s15, 6, v0
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	v_lshl_or_b32 v179, v34, 9, v251
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s33
	s_cmp_gt_i32 s5, 63
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v129, v17, v18, s29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s6, 32
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v25, s15, v0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v17, s6, v251
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v33, s4, v129
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v180, 0x90, v179
	scratch_store_b32 off, v34, off offset:192 ; 4-byte Folded Spill
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v26, s35, v25
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s34, v17
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v17, s35, v0
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v51, 0, v179
	v_xor_b32_e32 v181, 0x110, v179
	v_or_b32_e32 v124, 0x3f0, v188
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	v_or_b32_e32 v130, 0x7f0, v188
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cndmask_b32_e64 v21, 0x80000000, v17, s3
	s_clause 0x1
	buffer_load_b128 v[17:20], v0, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v0, 0x80000000, v25, s3
	v_cndmask_b32_e64 v29, 0x80000000, v26, s3
	s_clause 0x1
	buffer_load_b128 v[25:28], v0, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v0, 0x80000000, v33, vcc_lo
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v33, s6, v123
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s3, s14, 5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v53, 0, v181
	v_add_nc_u32_e32 v52, 0, v180
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[46:47], v0, s[20:23], 0 offen
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v33
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v33, s4, s3, v129
	v_lshlrev_b32_e32 v83, 5, v188
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v50, 0, v153
	s_mov_b32 s26, 0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x5f
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	buffer_load_b64 v[48:49], v33, s[20:23], 0 offen
	v_lshlrev_b32_e32 v0, 4, v188
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v33, v5, v1, 0x5010400
	v_perm_b32 v5, v5, v1, 0x7030602
	v_perm_b32 v34, v6, v2, 0x5010400
	v_perm_b32 v6, v6, v2, 0x7030602
	v_perm_b32 v35, v7, v3, 0x5010400
	v_perm_b32 v7, v7, v3, 0x7030602
	v_perm_b32 v36, v8, v4, 0x5010400
	v_perm_b32 v37, v8, v4, 0x7030602
	v_and_b16 v1.l, 0xff, v33.l
	v_lshrrev_b32_e32 v38, 8, v33
	v_lshrrev_b32_e32 v39, 24, v33
	v_and_b16 v1.h, 0xff, v33.h
	v_and_b16 v2.l, 0xff, v5.l
	v_lshrrev_b32_e32 v33, 8, v5
	v_lshrrev_b32_e32 v40, 24, v5
	v_and_b16 v2.h, 0xff, v5.h
	v_and_b16 v3.l, 0xff, v34.l
	v_lshrrev_b32_e32 v41, 8, v34
	v_lshrrev_b32_e32 v42, 24, v34
	v_and_b16 v3.h, 0xff, v34.h
	v_and_b16 v4.l, 0xff, v6.l
	v_lshrrev_b32_e32 v34, 8, v6
	v_lshrrev_b32_e32 v43, 24, v6
	v_and_b16 v4.h, 0xff, v6.h
	v_and_b16 v5.l, 0xff, v35.l
	v_lshrrev_b32_e32 v44, 8, v35
	v_lshrrev_b32_e32 v45, 24, v35
	v_and_b16 v5.h, 0xff, v35.h
	v_and_b16 v6.l, 0xff, v7.l
	v_lshrrev_b32_e32 v35, 8, v7
	v_lshrrev_b32_e32 v54, 24, v7
	v_and_b16 v6.h, 0xff, v7.h
	v_and_b16 v7.l, 0xff, v36.l
	v_lshrrev_b32_e32 v55, 8, v36
	v_lshrrev_b32_e32 v56, 24, v36
	v_and_b16 v7.h, 0xff, v36.h
	v_and_b16 v8.l, 0xff, v37.l
	v_lshrrev_b32_e32 v36, 8, v37
	v_lshrrev_b32_e32 v57, 24, v37
	v_and_b16 v8.h, 0xff, v37.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v37, v13, v9, 0x5010400
	v_perm_b32 v58, v13, v9, 0x7030602
	v_perm_b32 v59, v14, v10, 0x5010400
	v_perm_b32 v60, v14, v10, 0x7030602
	v_perm_b32 v61, v15, v11, 0x5010400
	v_perm_b32 v62, v15, v11, 0x7030602
	v_perm_b32 v63, v16, v12, 0x5010400
	v_perm_b32 v64, v16, v12, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.l, 8, v38.l
	v_lshlrev_b16 v9.h, 8, v39.l
	v_lshlrev_b16 v10.l, 8, v33.l
	v_lshlrev_b16 v10.h, 8, v40.l
	v_lshlrev_b16 v11.l, 8, v41.l
	v_lshlrev_b16 v11.h, 8, v42.l
	v_lshlrev_b16 v12.l, 8, v34.l
	v_lshlrev_b16 v12.h, 8, v43.l
	v_lshlrev_b16 v13.l, 8, v44.l
	v_lshlrev_b16 v13.h, 8, v45.l
	v_lshlrev_b16 v14.l, 8, v35.l
	v_lshlrev_b16 v14.h, 8, v54.l
	v_lshlrev_b16 v15.l, 8, v55.l
	v_lshlrev_b16 v15.h, 8, v56.l
	v_lshlrev_b16 v16.l, 8, v36.l
	v_lshlrev_b16 v16.h, 8, v57.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v33.l, 0xff, v37.l
	v_lshrrev_b32_e32 v41, 8, v37
	v_lshrrev_b32_e32 v42, 24, v37
	v_and_b16 v33.h, 0xff, v37.h
	v_and_b16 v34.l, 0xff, v58.l
	v_lshrrev_b32_e32 v43, 8, v58
	v_lshrrev_b32_e32 v44, 24, v58
	v_and_b16 v34.h, 0xff, v58.h
	v_and_b16 v35.l, 0xff, v59.l
	v_lshrrev_b32_e32 v45, 8, v59
	v_lshrrev_b32_e32 v54, 24, v59
	v_and_b16 v35.h, 0xff, v59.h
	v_and_b16 v36.l, 0xff, v60.l
	v_lshrrev_b32_e32 v55, 8, v60
	v_lshrrev_b32_e32 v56, 24, v60
	v_and_b16 v36.h, 0xff, v60.h
	v_and_b16 v37.l, 0xff, v61.l
	v_lshrrev_b32_e32 v57, 8, v61
	v_lshrrev_b32_e32 v58, 24, v61
	v_and_b16 v37.h, 0xff, v61.h
	v_and_b16 v38.l, 0xff, v62.l
	v_lshrrev_b32_e32 v59, 8, v62
	v_lshrrev_b32_e32 v60, 24, v62
	v_and_b16 v38.h, 0xff, v62.h
	v_and_b16 v39.l, 0xff, v63.l
	v_lshrrev_b32_e32 v61, 8, v63
	v_lshrrev_b32_e32 v62, 24, v63
	v_and_b16 v39.h, 0xff, v63.h
	v_and_b16 v40.l, 0xff, v64.l
	v_lshrrev_b32_e32 v63, 8, v64
	v_lshrrev_b32_e32 v65, 24, v64
	v_and_b16 v40.h, 0xff, v64.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v64, v21, v17, 0x5010400
	v_perm_b32 v21, v21, v17, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v70, v29, v25, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v66, v22, v18, 0x5010400
	v_perm_b32 v22, v22, v18, 0x7030602
	v_perm_b32 v67, v23, v19, 0x5010400
	v_perm_b32 v23, v23, v19, 0x7030602
	v_perm_b32 v68, v24, v20, 0x5010400
	v_perm_b32 v69, v24, v20, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v29, v29, v25, 0x7030602
	v_perm_b32 v71, v30, v26, 0x5010400
	v_perm_b32 v30, v30, v26, 0x7030602
	v_perm_b32 v72, v31, v27, 0x5010400
	v_perm_b32 v31, v31, v27, 0x7030602
	v_perm_b32 v73, v32, v28, 0x5010400
	v_perm_b32 v74, v32, v28, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v1.l, v1.l, v9.l
	v_or_b16 v2.l, v2.l, v10.l
	v_or_b16 v5.h, v5.h, v13.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v9.l, 8, v41.l
	v_lshlrev_b16 v10.l, 8, v43.l
	v_lshlrev_b16 v13.h, 8, v58.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v41, 8, v64
	v_or_b16 v1.h, v1.h, v9.h
	v_or_b16 v2.h, v2.h, v10.h
	v_or_b16 v6.l, v6.l, v14.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v9.h, 8, v42.l
	v_lshlrev_b16 v10.h, 8, v44.l
	v_lshlrev_b16 v14.l, 8, v59.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v42, 24, v64
	v_or_b16 v3.l, v3.l, v11.l
	v_or_b16 v6.h, v6.h, v14.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.l, 8, v45.l
	v_lshlrev_b16 v14.h, 8, v60.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v43, 8, v21
	v_or_b16 v3.h, v3.h, v11.h
	v_or_b16 v7.l, v7.l, v15.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.h, 8, v54.l
	v_lshlrev_b16 v15.l, 8, v61.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v44, 24, v21
	v_or_b16 v8.h, v8.h, v16.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v16.h, 8, v65.l
	v_lshrrev_b32_e32 v65, 8, v70
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v4.l, v4.l, v12.l
	v_or_b16 v4.h, v4.h, v12.h
	v_or_b16 v5.l, v5.l, v13.l
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v8.l, v8.l, v16.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v12.l, 8, v55.l
	v_lshlrev_b16 v12.h, 8, v56.l
	v_lshlrev_b16 v13.l, 8, v57.l
	v_lshlrev_b16 v15.h, 8, v62.l
	v_lshlrev_b16 v16.l, 8, v63.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v17.l, 0xff, v64.l
	v_and_b16 v17.h, 0xff, v64.h
	v_and_b16 v18.l, 0xff, v21.l
	v_and_b16 v18.h, 0xff, v21.h
	v_and_b16 v19.l, 0xff, v66.l
	v_lshrrev_b32_e32 v45, 8, v66
	v_lshrrev_b32_e32 v54, 24, v66
	v_and_b16 v19.h, 0xff, v66.h
	v_and_b16 v20.l, 0xff, v22.l
	v_lshrrev_b32_e32 v55, 8, v22
	v_lshrrev_b32_e32 v56, 24, v22
	v_and_b16 v20.h, 0xff, v22.h
	v_and_b16 v21.l, 0xff, v67.l
	v_lshrrev_b32_e32 v57, 8, v67
	v_lshrrev_b32_e32 v58, 24, v67
	v_and_b16 v21.h, 0xff, v67.h
	v_and_b16 v22.l, 0xff, v23.l
	v_lshrrev_b32_e32 v59, 8, v23
	v_lshrrev_b32_e32 v60, 24, v23
	v_and_b16 v22.h, 0xff, v23.h
	v_and_b16 v23.l, 0xff, v68.l
	v_lshrrev_b32_e32 v61, 8, v68
	v_lshrrev_b32_e32 v62, 24, v68
	v_and_b16 v23.h, 0xff, v68.h
	v_and_b16 v24.l, 0xff, v69.l
	v_lshrrev_b32_e32 v63, 8, v69
	v_lshrrev_b32_e32 v64, 24, v69
	v_and_b16 v24.h, 0xff, v69.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v25.l, 0xff, v70.l
	v_lshrrev_b32_e32 v66, 24, v70
	v_and_b16 v25.h, 0xff, v70.h
	v_and_b16 v26.l, 0xff, v29.l
	v_lshrrev_b32_e32 v67, 8, v29
	v_lshrrev_b32_e32 v68, 24, v29
	v_and_b16 v26.h, 0xff, v29.h
	v_and_b16 v27.l, 0xff, v71.l
	v_lshrrev_b32_e32 v69, 8, v71
	v_lshrrev_b32_e32 v70, 24, v71
	v_and_b16 v27.h, 0xff, v71.h
	v_and_b16 v28.l, 0xff, v30.l
	v_lshrrev_b32_e32 v71, 8, v30
	v_lshrrev_b32_e32 v75, 24, v30
	v_and_b16 v28.h, 0xff, v30.h
	v_and_b16 v29.l, 0xff, v72.l
	v_lshrrev_b32_e32 v76, 8, v72
	v_lshrrev_b32_e32 v77, 24, v72
	v_and_b16 v29.h, 0xff, v72.h
	v_and_b16 v30.l, 0xff, v31.l
	v_lshrrev_b32_e32 v72, 8, v31
	v_lshrrev_b32_e32 v78, 24, v31
	v_and_b16 v30.h, 0xff, v31.h
	v_and_b16 v31.l, 0xff, v73.l
	v_lshrrev_b32_e32 v79, 8, v73
	v_lshrrev_b32_e32 v80, 24, v73
	v_and_b16 v31.h, 0xff, v73.h
	v_lshrrev_b32_e32 v73, 8, v74
	v_lshrrev_b32_e32 v81, 24, v74
	v_or_b16 v9.l, v33.l, v9.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v51, v1
	ds_store_b16_d16_hi v51, v1 offset:32
	ds_store_b16 v51, v2 offset:64
	ds_store_b16_d16_hi v51, v2 offset:96
	ds_store_b16_d16_hi v52, v3 offset:32
	ds_store_b16 v52, v4 offset:64
	ds_store_b16_d16_hi v52, v4 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.h, v34.l, v10.l
	v_or_b16 v10.l, v37.h, v13.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v13.h, 8, v41.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v2.l, v34.h, v10.h
	v_or_b16 v10.h, v38.l, v14.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v14.l, 8, v42.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v2.h, v35.l, v11.l
	v_or_b16 v11.l, v38.h, v14.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v14.h, 8, v43.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v3.h, v35.h, v11.h
	v_or_b16 v11.h, v39.l, v15.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v15.l, 8, v44.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.l, v33.h, v9.h
	v_lshlrev_b16 v37.h, 8, v65.l
	v_and_b16 v32.l, 0xff, v74.l
	v_and_b16 v32.h, 0xff, v74.h
	v_or_b16 v4.l, v36.l, v12.l
	v_or_b16 v4.h, v36.h, v12.h
	v_or_b16 v9.h, v37.l, v13.l
	v_or_b16 v12.l, v39.h, v15.h
	v_or_b16 v12.h, v40.l, v16.l
	v_or_b16 v13.l, v40.h, v16.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v15.h, 8, v45.l
	v_lshlrev_b16 v16.l, 8, v54.l
	v_lshlrev_b16 v16.h, 8, v55.l
	v_lshlrev_b16 v33.l, 8, v56.l
	v_lshlrev_b16 v33.h, 8, v57.l
	v_lshlrev_b16 v34.l, 8, v58.l
	v_lshlrev_b16 v34.h, 8, v59.l
	v_lshlrev_b16 v35.l, 8, v60.l
	v_lshlrev_b16 v35.h, 8, v61.l
	v_lshlrev_b16 v36.l, 8, v62.l
	v_lshlrev_b16 v36.h, 8, v63.l
	v_lshlrev_b16 v37.l, 8, v64.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v38.l, 8, v66.l
	v_lshlrev_b16 v38.h, 8, v67.l
	v_lshlrev_b16 v39.l, 8, v68.l
	v_lshlrev_b16 v39.h, 8, v69.l
	v_lshlrev_b16 v40.l, 8, v70.l
	v_lshlrev_b16 v40.h, 8, v71.l
	v_lshlrev_b16 v41.l, 8, v75.l
	v_lshlrev_b16 v41.h, 8, v76.l
	v_lshlrev_b16 v42.l, 8, v77.l
	v_lshlrev_b16 v42.h, 8, v72.l
	v_lshlrev_b16 v43.l, 8, v78.l
	v_lshlrev_b16 v43.h, 8, v79.l
	v_lshlrev_b16 v44.l, 8, v80.l
	v_lshlrev_b16 v44.h, 8, v73.l
	v_lshlrev_b16 v45.l, 8, v81.l
	ds_store_b16 v51, v9 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v52, v3
	ds_store_b16 v53, v5
	ds_store_b16_d16_hi v53, v5 offset:32
	ds_store_b16 v53, v6 offset:64
	ds_store_b16_d16_hi v53, v6 offset:96
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v50, v[46:47] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v51, v1 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v51, v7 offset:384
	ds_store_b16_d16_hi v51, v7 offset:416
	ds_store_b16 v51, v8 offset:448
	ds_store_b16_d16_hi v51, v8 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v51, v1 offset:16416
	ds_store_b16 v51, v2 offset:16480
	ds_store_b16_d16_hi v52, v2 offset:16384
	ds_store_b16_d16_hi v52, v3 offset:16416
	ds_store_b16 v52, v4 offset:16448
	ds_store_b16_d16_hi v52, v4 offset:16480
	ds_store_b16_d16_hi v53, v9 offset:16384
	ds_store_b16 v53, v10 offset:16416
	ds_store_b16_d16_hi v53, v10 offset:16448
	ds_store_b16 v53, v11 offset:16480
	ds_store_b16_d16_hi v51, v11 offset:16768
	ds_store_b16 v51, v12 offset:16800
	ds_store_b16_d16_hi v51, v12 offset:16832
	ds_store_b16 v51, v13 offset:16864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v1.l, v17.l, v13.h
	v_or_b16 v1.h, v17.h, v14.l
	v_or_b16 v2.l, v18.l, v14.h
	v_or_b16 v2.h, v18.h, v15.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v9.l, v25.l, v37.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v3.l, v19.l, v15.h
	v_or_b16 v3.h, v19.h, v16.l
	v_or_b16 v4.l, v20.l, v16.h
	v_or_b16 v4.h, v20.h, v33.l
	v_or_b16 v5.l, v21.l, v33.h
	v_or_b16 v5.h, v21.h, v34.l
	v_or_b16 v6.l, v22.l, v34.h
	v_or_b16 v6.h, v22.h, v35.l
	v_or_b16 v7.l, v23.l, v35.h
	v_or_b16 v7.h, v23.h, v36.l
	v_or_b16 v8.l, v24.l, v36.h
	v_or_b16 v8.h, v24.h, v37.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v9.h, v25.h, v38.l
	v_or_b16 v10.l, v26.l, v38.h
	v_or_b16 v10.h, v26.h, v39.l
	v_or_b16 v11.l, v27.l, v39.h
	v_or_b16 v11.h, v27.h, v40.l
	v_or_b16 v12.l, v28.l, v40.h
	v_or_b16 v12.h, v28.h, v41.l
	v_or_b16 v13.l, v29.l, v41.h
	v_or_b16 v13.h, v29.h, v42.l
	v_or_b16 v14.l, v30.l, v42.h
	v_or_b16 v14.h, v30.h, v43.l
	v_or_b16 v15.l, v31.l, v43.h
	v_or_b16 v15.h, v31.h, v44.l
	v_or_b16 v16.l, v32.l, v44.h
	v_or_b16 v16.h, v32.h, v45.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v51, v1 offset:8192
	ds_store_b16_d16_hi v51, v1 offset:8224
	ds_store_b16 v51, v2 offset:8256
	ds_store_b16_d16_hi v51, v2 offset:8288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v51, v9 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v52, v3 offset:8192
	ds_store_b16_d16_hi v52, v3 offset:8224
	ds_store_b16 v52, v4 offset:8256
	ds_store_b16_d16_hi v52, v4 offset:8288
	ds_store_b16 v53, v5 offset:8192
	ds_store_b16_d16_hi v53, v5 offset:8224
	ds_store_b16 v53, v6 offset:8256
	ds_store_b16_d16_hi v53, v6 offset:8288
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v50, v[48:49] offset:34816
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v51, v10 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v51, v7 offset:8576
	ds_store_b16_d16_hi v51, v7 offset:8608
	ds_store_b16 v51, v8 offset:8640
	ds_store_b16_d16_hi v51, v8 offset:8672
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v51, v9 offset:24608
	ds_store_b16_d16_hi v51, v10 offset:24672
	ds_store_b16 v52, v11 offset:24576
	ds_store_b16_d16_hi v52, v11 offset:24608
	ds_store_b16 v52, v12 offset:24640
	ds_store_b16_d16_hi v52, v12 offset:24672
	ds_store_b16 v53, v13 offset:24576
	ds_store_b16_d16_hi v53, v13 offset:24608
	ds_store_b16 v53, v14 offset:24640
	ds_store_b16_d16_hi v53, v14 offset:24672
	ds_store_b16 v51, v15 offset:24960
	ds_store_b16_d16_hi v51, v15 offset:24992
	ds_store_b16 v51, v16 offset:25024
	ds_store_b16_d16_hi v51, v16 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v4, 5, v188
	v_and_b32_e32 v3, 0xe00, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v1, 0x7f0, v188
	v_or_b32_e32 v68, 0x3f0, v188
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v2, 8, v188
	s_mov_b32 s3, 0
	v_and_or_b32 v9, 0x60, v4, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:56
	scratch_store_b32 off, v4, off offset:272
	v_and_b32_e32 v1, 4, v188
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr1
                                        ; kill: killed $vgpr1
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr68
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow577
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	scratch_store_b32 off, v188, off offset:308 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v188, 2, 1
	v_bfe_i32 v2, v188, 3, 1
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v0, 0xe00, v0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s36, s5, 5
	s_add_i32 s0, s6, 32
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s35, v82
	v_and_b32_e32 v1, 0x90, v1
	v_dual_mov_b32 v15, s11 :: v_dual_and_b32 v2, 0x110, v2
	v_mov_b32_e32 v14, s10
	scratch_store_b32 off, v3, off offset:248 ; 4-byte Folded Spill
	v_and_or_b32 v3, 0x60, v83, v0
	v_mov_b32_e32 v12, s8
	v_xor_b32_e32 v0, v1, v2
	v_dual_mov_b32 v13, s9 :: v_dual_mov_b32 v10, s6
	v_dual_mov_b32 v11, s7 :: v_dual_mov_b32 v8, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v0, v3, v0
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v9, s5 :: v_dual_mov_b32 v6, 0
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b128 off, v[8:11], off offset:272
	scratch_store_b128 off, v[12:15], off offset:288
	scratch_store_b32 off, v0, off offset:256
	v_xor_b32_e32 v0, 16, v0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v83, off offset:320 ; 4-byte Folded Spill
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	scratch_store_b64 off, v[0:1], off offset:128 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	scratch_store_b64 off, v[0:1], off offset:136 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	scratch_store_b64 off, v[0:1], off offset:144 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:32
	scratch_store_b32 off, v82, off offset:304
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	s_add_i32 s38, 0, 0x8000
	s_add_i32 s30, 0, 0x8800
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s36, s36, -3
	s_mov_b32 s37, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_clause 0x9                            ; 48-byte Folded Spill
	scratch_store_b32 off, v3, off offset:316
	scratch_store_b64 off, v[0:1], off offset:48
	scratch_store_b32 off, v123, off offset:196
	scratch_store_b32 off, v153, off offset:200
	scratch_store_b64 off, v[129:130], off offset:204
	scratch_store_b32 off, v124, off offset:212
	scratch_store_b32 off, v130, off offset:216
	scratch_store_b32 off, v179, off offset:224
	scratch_store_b32 off, v180, off offset:232
	scratch_store_b32 off, v181, off offset:240
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s7, s5, 5
	s_mov_b32 s6, s4
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s4, s0, s7
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_clause 0xf                            ; 128-byte Folded Spill
	scratch_store_b64 off, v[141:142], off offset:64
	scratch_store_b64 off, v[143:144], off offset:72
	scratch_store_b64 off, v[131:132], off offset:56
	scratch_store_b64 off, v[7:8], off offset:24
	scratch_store_b64 off, v[5:6], off offset:40
	scratch_store_b64 off, v[137:138], off offset:80
	scratch_store_b64 off, v[149:150], off offset:88
	scratch_store_b64 off, v[191:192], off offset:160
	scratch_store_b64 off, v[170:171], off
	scratch_store_b64 off, v[168:169], off offset:16
	scratch_store_b64 off, v[29:30], off offset:8
	scratch_store_b64 off, v[31:32], off offset:112
	scratch_store_b64 off, v[223:224], off offset:96
	scratch_store_b64 off, v[139:140], off offset:104
	scratch_store_b64 off, v[177:178], off offset:120
	scratch_store_b64 off, v[151:152], off offset:152
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[10:11], null, s4, s14, v[129:130]
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s4, v123
	v_mov_b32_e32 v140, v128
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:192
	scratch_load_b32 v29, off, off offset:256
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v23, s38, v124
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v11
	v_dual_mov_b32 v131, v219 :: v_dual_add_nc_u32 v24, s38, v130
	v_dual_mov_b32 v132, v220 :: v_dual_mov_b32 v139, v127
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_mov_b32 v129, v235
	v_mov_b32_e32 v130, v236
	v_dual_mov_b32 v128, v122 :: v_dual_mov_b32 v127, v121
	buffer_load_b64 v[1:2], v10, s[20:23], 0 offen
	v_dual_mov_b32 v124, v118 :: v_dual_mov_b32 v123, v117
	v_dual_mov_b32 v122, v116 :: v_dual_mov_b32 v121, v115
	v_dual_mov_b32 v118, v112 :: v_dual_mov_b32 v117, v111
	v_dual_mov_b32 v116, v110 :: v_dual_mov_b32 v115, v109
	v_dual_mov_b32 v112, v106 :: v_dual_mov_b32 v111, v105
	v_dual_mov_b32 v110, v104 :: v_dual_mov_b32 v109, v103
	v_dual_mov_b32 v106, v100 :: v_dual_mov_b32 v105, v99
	v_dual_mov_b32 v104, v98 :: v_dual_mov_b32 v103, v97
	v_dual_mov_b32 v100, v94 :: v_dual_mov_b32 v99, v93
	v_dual_mov_b32 v98, v92 :: v_dual_mov_b32 v97, v91
	v_dual_mov_b32 v94, v88 :: v_dual_mov_b32 v93, v87
	v_dual_mov_b32 v92, v86 :: v_dual_mov_b32 v91, v85
	v_dual_mov_b32 v88, v82 :: v_dual_mov_b32 v87, v81
	v_dual_mov_b32 v86, v80 :: v_dual_mov_b32 v85, v79
	v_dual_mov_b32 v82, v76 :: v_dual_mov_b32 v81, v75
	v_dual_mov_b32 v80, v74 :: v_dual_mov_b32 v79, v73
	v_dual_mov_b32 v31, v71 :: v_dual_mov_b32 v32, v72
	v_dual_mov_b32 v150, v70 :: v_dual_mov_b32 v149, v69
	v_dual_mov_b32 v69, v241 :: v_dual_mov_b32 v70, v242
	v_dual_mov_b32 v71, v243 :: v_dual_mov_b32 v72, v244
	v_dual_mov_b32 v75, v249 :: v_dual_mov_b32 v76, v250
	v_dual_mov_b32 v73, v247 :: v_dual_mov_b32 v74, v248
	v_dual_mov_b32 v155, v251 :: v_dual_mov_b32 v152, v134
	v_mov_b32_e32 v141, v245
	v_mov_b32_e32 v27, v239
	v_dual_mov_b32 v151, v133 :: v_dual_mov_b32 v142, v246
	v_dual_mov_b32 v134, v126 :: v_dual_mov_b32 v133, v125
	v_dual_mov_b32 v126, v120 :: v_dual_mov_b32 v125, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v28, v240 :: v_dual_mov_b32 v119, v125
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v120, v126 :: v_dual_add_nc_u32 v9, s38, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s6, v29
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v8, s31, v29
	s_mov_b32 s38, s30
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[1:2], off offset:168 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v30, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v176, v9 offset:64
	ds_load_u8 v177, v9
	ds_load_u8 v10, v9 offset:16
	ds_load_u8 v13, v9 offset:32
	ds_load_u8 v12, v9 offset:80
	ds_load_u8 v14, v9 offset:96
	ds_load_u8 v156, v9 offset:112
	ds_load_u8 v157, v9 offset:48
	ds_load_u8 v179, v9 offset:1984
	ds_load_u8 v11, v9 offset:2000
	ds_load_u8 v180, v9 offset:1600
	ds_load_u8 v178, v9 offset:1664
	ds_load_u8 v17, v9 offset:1616
	ds_load_u8 v15, v9 offset:1632
	ds_load_u8 v186, v9 offset:1792
	ds_load_u8 v181, v9 offset:1728
	ds_load_u8 v18, v9 offset:1744
	ds_load_u8 v16, v9 offset:1760
	ds_load_u8 v183, v9 offset:1344
	ds_load_u8 v182, v9 offset:1408
	ds_load_u8 v19, v9 offset:1360
	ds_load_u8 v172, v9 offset:1376
	ds_load_u8 v189, v9 offset:1536
	ds_load_u8 v184, v9 offset:1472
	ds_load_u8 v20, v9 offset:1488
	ds_load_u8 v173, v9 offset:1504
	ds_load_u8 v187, v9 offset:1088
	ds_load_u8 v185, v9 offset:1152
	ds_load_u8 v21, v9 offset:1104
	ds_load_u8 v174, v9 offset:1120
	ds_load_u8 v190, v9 offset:1280
	ds_load_u8 v188, v9 offset:1216
	ds_load_u8 v22, v9 offset:1232
	ds_load_u8 v175, v9 offset:1248
	ds_load_u8 v33, v9 offset:832
	ds_load_u8 v34, v9 offset:768
	ds_load_u8 v35, v9 offset:848
	ds_load_u8 v36, v9 offset:784
	ds_load_u8 v37, v9 offset:864
	ds_load_u8 v38, v9 offset:800
	ds_load_u8 v39, v9 offset:880
	ds_load_u8 v40, v9 offset:816
	ds_load_u8 v41, v9 offset:960
	ds_load_u8 v42, v9 offset:896
	ds_load_u8 v43, v9 offset:1024
	ds_load_u8 v44, v9 offset:976
	ds_load_u8 v45, v9 offset:912
	ds_load_u8 v46, v9 offset:992
	ds_load_u8 v47, v9 offset:928
	ds_load_u8 v48, v9 offset:944
	ds_load_u8 v49, v9 offset:576
	ds_load_u8 v50, v9 offset:512
	ds_load_u8 v51, v9 offset:592
	ds_load_u8 v52, v9 offset:528
	ds_load_u8 v53, v9 offset:608
	ds_load_u8 v54, v9 offset:544
	ds_load_u8 v55, v9 offset:624
	ds_load_u8 v56, v9 offset:560
	ds_load_u8 v57, v9 offset:704
	ds_load_u8 v58, v9 offset:640
	ds_load_u8 v59, v9 offset:720
	ds_load_u8 v60, v9 offset:656
	ds_load_u8 v61, v9 offset:736
	ds_load_u8 v62, v9 offset:672
	ds_load_u8 v63, v9 offset:752
	ds_load_u8 v64, v9 offset:688
	ds_load_u8 v65, v9 offset:320
	ds_load_u8 v66, v9 offset:256
	ds_load_u8 v67, v9 offset:336
	ds_load_u8 v68, v9 offset:272
	ds_load_u8 v158, v9 offset:352
	ds_load_u8 v159, v9 offset:288
	ds_load_u8 v160, v9 offset:368
	ds_load_u8 v161, v9 offset:304
	ds_load_u8 v162, v9 offset:448
	ds_load_u8 v163, v9 offset:384
	ds_load_u8 v164, v9 offset:464
	ds_load_u8 v165, v9 offset:400
	ds_load_u8 v166, v9 offset:480
	ds_load_u8 v167, v9 offset:416
	ds_load_u8 v168, v9 offset:496
	ds_load_u8 v169, v9 offset:432
	ds_load_u8 v170, v9 offset:192
	ds_load_u8 v171, v9 offset:128
	ds_load_u8 v191, v9 offset:208
	ds_load_u8 v192, v9 offset:144
	ds_load_u8 v193, v9 offset:224
	ds_load_u8 v194, v9 offset:160
	ds_load_u8 v195, v9 offset:240
	ds_load_u8 v196, v9 offset:176
	ds_load_u8 v197, v9 offset:1856
	ds_load_u8 v198, v9 offset:1920
	ds_load_u8 v199, v9 offset:1872
	ds_load_u8 v200, v9 offset:1888
	ds_load_u8 v201, v9 offset:1904
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v9 offset:2016
	ds_load_u8 v202, v23
	ds_load_u8 v203, v24
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v9 offset:1648
	ds_load_u8 v23, v9 offset:1808
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v9 offset:1776
	ds_load_u8 v205, v9 offset:1520
	v_perm_b32 v212, v36, v35, 0xc0c0004
	ds_load_u8 v35, v9 offset:1552
	ds_load_u8 v36, v9 offset:1680
	v_perm_b32 v44, v45, v44, 0xc0c0004
	v_perm_b32 v45, v52, v51, 0xc0c0004
	v_perm_b32 v52, v68, v67, 0xc0c0004
	v_perm_b32 v68, v10, v12, 0xc0c0004
	ds_load_u8 v10, v9 offset:1040
	ds_load_u8 v208, v9 offset:1264
	ds_load_u8 v209, v9 offset:1136
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v9 offset:1840
	ds_load_u8 v24, v9 offset:1936
	v_perm_b32 v204, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v9 offset:1392
	ds_load_u8 v67, v9 offset:1424
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v198, v198, v179, 0xc0c0004
	v_perm_b32 v43, v43, v187, 0xc0c0004
	v_perm_b32 v51, v60, v59, 0xc0c0004
	ds_load_u8 v59, v9 offset:1296
	v_perm_b32 v60, v165, v164, 0xc0c0004
	v_perm_b32 v164, v192, v191, 0xc0c0004
	ds_load_u8 v165, v9 offset:1824
	ds_load_u8 v176, v9 offset:1712
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v191, v23, v199, 0xc0c0004
	ds_load_u8 v179, v9 offset:1568
	ds_load_u8 v206, v9 offset:1456
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v199, v35, v17, 0xc0c0004
	ds_load_u8 v35, v9 offset:1696
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v213, v36, v18, 0xc0c0004
	ds_load_u8 v36, v9 offset:1312
	ds_load_u8 v187, v9 offset:1200
	ds_load_u8 v211, v9 offset:1072
	v_perm_b32 v207, v178, v181, 0xc0c0004
	v_perm_b32 v210, v182, v184, 0xc0c0004
	ds_load_u8 v181, v9 offset:1056
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v214, v10, v21, 0xc0c0004
	ds_load_u8 v10, v9 offset:1168
	ds_load_u8 v182, v9 offset:1184
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v9 offset:1968
	ds_load_u8 v178, v9 offset:1952
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v9 offset:1584
	v_perm_b32 v186, v186, v197, 0xc0c0004
	v_perm_b32 v189, v189, v180, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v192, v24, v11, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v59, v59, v19, 0xc0c0004
	ds_load_u8 v180, v9 offset:1440
	ds_load_u8 v197, v9 offset:1328
	v_perm_b32 v67, v67, v20, 0xc0c0004
	v_perm_b32 v53, v54, v53, 0xc0c0004
	v_perm_b32 v54, v62, v61, 0xc0c0004
	v_perm_b32 v61, v159, v158, 0xc0c0004
	v_perm_b32 v62, v167, v166, 0xc0c0004
	v_perm_b32 v158, v13, v14, 0xc0c0004
	v_perm_b32 v159, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v215, v10, v22, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[21:24], v0
	ds_load_b128 v[9:12], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v167, v179, v15, 0xc0c0004
	v_perm_b32 v193, v35, v16, 0xc0c0004
	v_perm_b32 v0, v211, v209, 0xc0c0004
	v_perm_b32 v190, v190, v183, 0xc0c0004
	v_perm_b32 v188, v185, v188, 0xc0c0004
	v_perm_b32 v216, v38, v37, 0xc0c0004
	v_perm_b32 v217, v47, v46, 0xc0c0004
	v_perm_b32 v165, v165, v200, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v166, v178, v42, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v200, v180, v173, 0xc0c0004
	v_perm_b32 v185, v181, v174, 0xc0c0004
	v_perm_b32 v218, v182, v175, 0xc0c0004
	v_perm_b32 v181, v40, v39, 0xc0c0004
	v_perm_b32 v182, v48, v202, 0xc0c0004
	v_perm_b32 v183, v56, v55, 0xc0c0004
	v_perm_b32 v184, v64, v63, 0xc0c0004
	v_perm_b32 v179, v161, v160, 0xc0c0004
	v_perm_b32 v180, v169, v168, 0xc0c0004
	v_perm_b32 v178, v196, v195, 0xc0c0004
	v_perm_b32 v194, v36, v172, 0xc0c0004
	v_perm_b32 v173, v34, v201, 0xc0c0004
	v_perm_b32 v174, v50, v203, 0xc0c0004
	v_perm_b32 v175, v66, v58, 0xc0c0004
	v_perm_b32 v176, v176, v163, 0xc0c0004
	v_perm_b32 v172, v206, v205, 0xc0c0004
	v_lshl_or_b32 v36, v41, 16, v33
	v_lshl_or_b32 v35, v57, 16, v49
	v_lshl_or_b32 v34, v162, 16, v65
	v_lshl_or_b32 v33, v170, 16, v204
	v_lshl_or_b32 v37, v188, 16, v43
	v_lshl_or_b32 v44, v44, 16, v212
	v_lshl_or_b32 v43, v51, 16, v45
	v_lshl_or_b32 v42, v60, 16, v52
	v_lshl_or_b32 v41, v164, 16, v68
	v_lshl_or_b32 v52, v217, 16, v216
	v_lshl_or_b32 v51, v54, 16, v53
	v_lshl_or_b32 v50, v62, 16, v61
	v_lshl_or_b32 v49, v159, 16, v158
	v_lshl_or_b32 v170, v184, 16, v183
	v_lshl_or_b32 v169, v180, 16, v179
	v_lshl_or_b32 v40, v198, 16, v186
	v_lshl_or_b32 v39, v207, 16, v189
	v_lshl_or_b32 v38, v210, 16, v190
	v_lshl_or_b32 v48, v192, 16, v191
	v_lshl_or_b32 v47, v213, 16, v199
	v_lshl_or_b32 v46, v67, 16, v59
	v_lshl_or_b32 v45, v215, 16, v214
	v_lshl_or_b32 v56, v166, 16, v165
	v_lshl_or_b32 v55, v193, 16, v167
	v_lshl_or_b32 v54, v200, 16, v194
	v_lshl_or_b32 v53, v218, 16, v185
	v_lshl_or_b32 v255, v174, 16, v173
	v_lshl_or_b32 v254, v176, 16, v175
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v177, s6, v30
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s6, s4, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s28
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[17:20], v177
	ds_load_b128 v[13:16], v177 offset:4096
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_perm_b32 v177, v157, v156, 0xc0c0004
	v_perm_b32 v156, v187, v208, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v157, v197, v171, 0xc0c0004
	v_lshl_or_b32 v171, v182, 16, v181
	v_lshl_or_b32 v168, v178, 16, v177
	v_lshl_or_b32 v252, v156, 16, v0
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:272
	scratch_load_b128 v[4:7], off, off offset:288
	v_lshl_or_b32 v253, v172, 16, v157
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[21:24], v[33:36], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[188:195], v[21:24], v[41:44], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[21:24], v[49:52], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[204:211], v[21:24], v[168:171], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[9:12], v[33:36], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[9:12], v[41:44], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[17:20], v[37:40], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[188:195], v[17:20], v[45:48], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[17:20], v[53:56], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[204:211], v[17:20], v[252:255], v[204:211] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[9:12], v[49:52], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[220:227], v[9:12], v[168:171], v[0:7] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v9, s31, v30
	ds_load_b128 v[156:159], v8
	ds_load_b128 v[57:60], v8 offset:4096
	ds_load_b128 v[61:64], v9
	ds_load_b128 v[65:68], v9 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[13:16], v[37:40], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[13:16], v[45:48], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[13:16], v[53:56], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[220:227], v[13:16], v[252:255], v[220:227] neg_lo:[1,1,0]
	v_dual_mov_b32 v29, v237 :: v_dual_mov_b32 v30, v238
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v197, v197
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v226, v226
	v_cvt_f32_i32_e32 v227, v227
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v210, v210
	v_cvt_f32_i32_e32 v220, v220
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[156:159], v[33:36], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[228:235], v[57:60], v[33:36], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[236:243], v[156:159], v[41:44], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[228:235], v[65:68], v[37:40], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[244:251], v[57:60], v[41:44], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[156:159], v[49:52], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[57:60], v[49:52], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[236:243], v[61:64], v[45:48], v[236:243] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[244:251], v[65:68], v[45:48], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[61:64], v[53:56], v[160:167] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[53:56], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[156:159], v[168:171], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[57:60], v[168:171], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v11
	v_wmma_i32_16x16x16_iu8 v[41:48], v[61:64], v[252:255], v[41:48] neg_lo:[1,1,0]
	v_mov_b32_e32 v58, v131
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[252:255], v[49:56] neg_lo:[1,1,0]
	v_dual_mov_b32 v253, v80 :: v_dual_mov_b32 v64, v81
	v_mov_b32_e32 v65, v82
	v_dual_mov_b32 v81, v87 :: v_dual_mov_b32 v82, v88
	v_mov_b32_e32 v87, v93
	v_dual_mov_b32 v67, v32 :: v_dual_mov_b32 v252, v79
	v_dual_mov_b32 v79, v85 :: v_dual_mov_b32 v80, v86
	v_dual_mov_b32 v85, v91 :: v_dual_mov_b32 v88, v94
	v_dual_mov_b32 v93, v99 :: v_dual_mov_b32 v86, v92
	v_dual_mov_b32 v91, v97 :: v_dual_mov_b32 v94, v100
	v_dual_mov_b32 v99, v105 :: v_dual_mov_b32 v92, v98
	v_dual_mov_b32 v97, v103 :: v_dual_mov_b32 v100, v106
	v_dual_mov_b32 v105, v111 :: v_dual_mov_b32 v98, v104
	v_dual_mov_b32 v103, v109 :: v_dual_mov_b32 v106, v112
	v_mov_b32_e32 v111, v117
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	v_dual_mov_b32 v104, v110 :: v_dual_mov_b32 v109, v115
	v_dual_mov_b32 v112, v118 :: v_dual_mov_b32 v117, v123
	v_dual_mov_b32 v110, v116 :: v_dual_mov_b32 v115, v121
	v_dual_mov_b32 v118, v124 :: v_dual_mov_b32 v123, v129
	v_dual_mov_b32 v255, v150 :: v_dual_mov_b32 v66, v31
	v_dual_mov_b32 v116, v122 :: v_dual_mov_b32 v121, v127
	v_dual_mov_b32 v124, v130 :: v_dual_mov_b32 v59, v132
	v_mov_b32_e32 v131, v133
	v_mov_b32_e32 v254, v149
	v_mov_b32_e32 v122, v128
	v_dual_mov_b32 v132, v134 :: v_dual_mov_b32 v127, v139
	v_dual_mov_b32 v150, v142 :: v_dual_mov_b32 v133, v151
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[3:4], off, off offset:48
	scratch_load_b64 v[7:8], off, off offset:24
	v_dual_mov_b32 v128, v140 :: v_dual_mov_b32 v149, v141
	v_mov_b32_e32 v134, v152
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b64 v[31:32], off, off offset:112
	scratch_load_b64 v[129:130], off, off offset:96
	scratch_load_b64 v[139:140], off, off offset:104
	scratch_load_b64 v[125:126], off, off offset:120
	scratch_load_b64 v[151:152], off, off offset:152
	scratch_load_b64 v[153:154], off, off offset:32
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v174
	v_cvt_f32_i32_e32 v57, v175
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v174, v233
	v_cvt_f32_i32_e32 v175, v234
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v233, v19
	v_cvt_f32_i32_e32 v234, v20
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:128
	scratch_load_b64 v[5:6], off, off offset:40
	scratch_load_b64 v[19:20], off, off offset:136
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v159, v15
	v_cvt_f32_i32_e32 v168, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v186
	v_cvt_f32_i32_e32 v16, v187
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v186, v239
	v_cvt_f32_i32_e32 v187, v240
	v_mov_b32_e32 v240, v28
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v156, v188
	v_cvt_f32_i32_e32 v157, v189
	v_mov_b32_e32 v239, v27
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v188, v241
	v_cvt_f32_i32_e32 v189, v242
	v_mov_b32_e32 v242, v70
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v61, v177
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v68, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v181
	v_cvt_f32_i32_e32 v177, v190
	v_cvt_f32_i32_e32 v181, v194
	v_mov_b32_e32 v241, v69
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v190, v243
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v194, v215
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v215, v244
	v_mov_b32_e32 v244, v72
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v141, v172
	v_cvt_f32_i32_e32 v142, v173
	v_cvt_f32_i32_e32 v60, v176
	v_cvt_f32_i32_e32 v62, v178
	v_cvt_f32_i32_e32 v63, v179
	v_cvt_f32_i32_e32 v178, v191
	v_cvt_f32_i32_e32 v179, v192
	v_cvt_f32_i32_e32 v191, v212
	v_cvt_f32_i32_e32 v192, v213
	v_mov_b32_e32 v243, v71
	v_mov_b32_e32 v69, v149
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v144, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v180
	v_cvt_f32_i32_e32 v11, v182
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v171, v230
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v180, v193
	v_cvt_f32_i32_e32 v182, v195
	v_mov_b32_e32 v70, v150
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v230, v251
	v_mov_b32_e32 v251, v155
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v243, v243, v15
	v_dual_add_f32 v147, v147, v181 :: v_dual_add_f32 v134, v134, v192
	v_dual_add_f32 v133, v133, v191 :: v_dual_add_f32 v146, v146, v194
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v176, v235
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v235, v21
	scratch_load_b32 v21, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v26, v26, v10 :: v_dual_add_f32 v25, v25, v9
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v172, v231
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v231, v17
	v_cvt_f32_i32_e32 v193, v214
	v_cvt_f32_i32_e32 v213, v218
	v_cvt_f32_i32_e32 v214, v219
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v218, v247
	v_cvt_f32_i32_e32 v219, v248
	v_mov_b32_e32 v248, v74
	v_cvt_f32_i32_e32 v173, v232
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v232, v18
	v_cvt_f32_i32_e32 v13, v184
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v143, v12
	v_cvt_f32_i32_e32 v158, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v183
	v_cvt_f32_i32_e32 v14, v185
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v239, v239, v13 :: v_dual_add_f32 v244, v244, v16
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v183, v236
	v_cvt_f32_i32_e32 v184, v237
	v_cvt_f32_i32_e32 v185, v238
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[137:138], off, off offset:80
	scratch_load_b64 v[149:150], off, off offset:88
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v236, v22
	v_cvt_f32_i32_e32 v237, v23
	v_cvt_f32_i32_e32 v238, v24
	v_cvt_f32_i32_e32 v195, v216
	v_cvt_f32_i32_e32 v212, v217
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v145, v145, v193
	v_dual_add_f32 v67, v67, v225 :: v_dual_add_f32 v254, v254, v226
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v69, v69, v195 :: v_dual_add_f32 v128, v128, v214
	v_add_f32_e32 v70, v70, v212
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v216, v245
	v_cvt_f32_i32_e32 v217, v246
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v255, v255, v227
	v_dual_add_f32 v109, v109, v233 :: v_dual_add_f32 v102, v102, v238
	v_dual_mov_b32 v246, v70 :: v_dual_mov_b32 v245, v69
	v_add_f32_e32 v103, v103, v235
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v170, v229
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v222, v222
	v_cvt_f32_i32_e32 v223, v223
	v_cvt_f32_i32_e32 v224, v224
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v169, v228
	v_cvt_f32_i32_e32 v228, v249
	v_cvt_f32_i32_e32 v229, v250
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v85, v85, v210
	v_add_f32_e32 v81, v81, v220
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v164, v164
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v202, v202
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v167, v167
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v135, v135, v160 :: v_dual_add_f32 v124, v124, v165
	v_add_f32_e32 v123, v123, v164
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v117, v117, v202 :: v_dual_add_f32 v104, v104, v236
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v122, v122, v167
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v199, v199
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v115, v115, v33 :: v_dual_add_f32 v108, v108, v38
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v42, v42
	s_mov_b32 s31, s1
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v59, v59, v199 :: v_dual_add_f32 v112, v112, v232
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v65, v65, v54
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v207, v207
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v121, v121, v166 :: v_dual_add_f32 v114, v114, v36
	v_dual_add_f32 v113, v113, v35 :: v_dual_add_f32 v106, v106, v40
	v_dual_add_f32 v107, v107, v37 :: v_dual_add_f32 v100, v100, v42
	v_dual_add_f32 v105, v105, v39 :: v_dual_add_f32 v96, v96, v44
	v_dual_add_f32 v99, v99, v41 :: v_dual_add_f32 v92, v92, v46
	v_dual_add_f32 v79, v79, v51 :: v_dual_add_f32 v64, v64, v53
	v_dual_add_f32 v95, v95, v43 :: v_dual_add_f32 v88, v88, v48
	v_dual_add_f32 v87, v87, v47 :: v_dual_add_f32 v80, v80, v52
	v_dual_add_f32 v252, v252, v55 :: v_dual_add_f32 v83, v83, v49
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v203, v203
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v163, v163
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v209, v209
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v221, v221
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v91, v91, v45 :: v_dual_add_f32 v84, v84, v50
	v_add_f32_e32 v253, v253, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v119, v119, v200 :: v_dual_add_f32 v118, v118, v203
	v_dual_add_f32 v111, v111, v231 :: v_dual_add_f32 v110, v110, v234
	v_dual_add_f32 v93, v93, v206 :: v_dual_add_f32 v86, v86, v211
	v_dual_add_f32 v89, v89, v208 :: v_dual_add_f32 v82, v82, v221
	v_add_f32_e32 v66, v66, v224
	v_add_f32_e32 v242, v242, v57
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v76, v76, v158
	v_add_f32_e32 v78, v78, v143
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v181, off, off offset:240
	scratch_load_b64 v[191:192], off, off offset:160
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v241, v241, v2
	v_add_f32_e32 v148, v148, v182
	v_mov_b32_e32 v72, v67
	scratch_load_b32 v10, off, off offset:248 ; 4-byte Folded Reload
	v_mov_b32_e32 v247, v73
	v_mov_b32_e32 v73, v252
	v_add_f32_e32 v240, v240, v14
	v_dual_add_f32 v248, v248, v12 :: v_dual_add_f32 v127, v127, v213
	v_dual_add_f32 v131, v131, v196 :: v_dual_add_f32 v58, v58, v198
	v_add_f32_e32 v120, v120, v201
	v_dual_add_f32 v94, v94, v207 :: v_dual_add_f32 v97, v97, v204
	v_add_f32_e32 v90, v90, v209
	v_dual_add_f32 v101, v101, v237 :: v_dual_mov_b32 v238, v30
	v_dual_mov_b32 v237, v29 :: v_dual_add_f32 v98, v98, v205
	v_mov_b32_e32 v74, v253
	v_mov_b32_e32 v236, v124
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v238, v238, v172 :: v_dual_mov_b32 v235, v123
	v_add_f32_e32 v116, v116, v34
	s_waitcnt vmcnt(14)
	v_dual_add_f32 v136, v136, v161 :: v_dual_add_f32 v31, v31, v179
	scratch_load_b32 v179, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(12)
	v_dual_add_f32 v32, v32, v180 :: v_dual_add_f32 v125, v125, v177
	s_waitcnt vmcnt(10)
	v_dual_add_f32 v126, v126, v178 :: v_dual_add_f32 v153, v153, v156
	v_add_f32_e32 v154, v154, v157
	scratch_load_b32 v180, off, off offset:232 ; 4-byte Folded Reload
	v_add_f32_e32 v4, v4, v223
	v_dual_mov_b32 v178, v126 :: v_dual_mov_b32 v177, v125
	scratch_store_b64 off, v[153:154], off offset:32 ; 8-byte Folded Spill
	scratch_load_b32 v153, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(11)
	v_dual_add_f32 v1, v1, v142 :: v_dual_add_f32 v0, v0, v141
	s_waitcnt vmcnt(9)
	v_dual_add_f32 v20, v20, v61 :: v_dual_add_f32 v19, v19, v60
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v17, s4, v251
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v6, v6, v68
	scratch_store_b64 off, v[0:1], off offset:128 ; 8-byte Folded Spill
	v_mov_b32_e32 v69, v254
	scratch_store_b64 off, v[19:20], off offset:136 ; 8-byte Folded Spill
	scratch_load_b64 v[19:20], off, off offset:144 ; 8-byte Folded Reload
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v17
	s_mov_b32 s4, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s3, s37, 1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v5, v5, v144
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v3, v3, v222 :: v_dual_mov_b32 v224, v130
	v_mov_b32_e32 v223, v129
	v_dual_mov_b32 v71, v66 :: v_dual_mov_b32 v70, v255
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v8, v8, v176 :: v_dual_add_f32 v151, v151, v183
	v_dual_add_f32 v140, v140, v188 :: v_dual_add_f32 v139, v139, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_add_f32 v224, v224, v190 :: v_dual_add_f32 v223, v223, v189
	v_add_f32_e32 v152, v152, v184
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(9)
	v_dual_add_f32 v247, v247, v11 :: v_dual_add_nc_u32 v18, s6, v21
	v_dual_add_f32 v132, v132, v197 :: v_dual_cndmask_b32 v11, 0x80000000, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v125, v131 :: v_dual_mov_b32 v126, v132
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(7)
	v_dual_add_f32 v137, v137, v217 :: v_dual_add_f32 v150, v150, v216
	s_waitcnt vmcnt(5)
	v_dual_add_f32 v138, v138, v218 :: v_dual_add_f32 v191, v191, v169
	v_add_f32_e32 v192, v192, v170
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s6, v10
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s6, s6, s15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s3, 2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v9, s6, v21
	v_add_nc_u32_e32 v10, s6, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s37, s3, 0
	s_add_i32 s6, s5, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[21:24], v0, s[24:27], 0 offen
	s_lshl_b32 s3, s37, 13
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s1, s37, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s3, s3, 0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v156, s3, v181
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s30, s1, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v157, s3, v180
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v57, s1, v153
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s1, s3, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s36
	s_mov_b32 s5, s6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v20, v20, v63 :: v_dual_add_f32 v19, v19, v62
	scratch_store_b64 off, v[19:20], off offset:144 ; 8-byte Folded Spill
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[17:20], v11, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v1, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s3, v179
	s_clause 0x6                            ; 48-byte Folded Reload
	scratch_load_b64 v[29:30], off, off offset:8
	scratch_load_b64 v[141:142], off, off offset:64
	scratch_load_b64 v[131:132], off, off offset:56
	scratch_load_b64 v[143:144], off, off offset:72
	scratch_load_b64 v[129:130], off, off offset:204
	scratch_load_b32 v124, off, off offset:212
	scratch_load_b32 v123, off, off offset:196
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v149, v149, v215
	scratch_store_b64 off, v[3:4], off offset:48 ; 8-byte Folded Spill
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(9)
	v_perm_b32 v33, v21, v17, 0x5010400
	v_perm_b32 v17, v21, v17, 0x7030602
	v_perm_b32 v21, v22, v18, 0x5010400
	v_perm_b32 v18, v22, v18, 0x7030602
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(7)
	v_add_f32_e32 v77, v77, v1
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_f32_e32 v30, v30, v168
	scratch_load_b64 v[168:169], off, off offset:16 ; 8-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_add_f32_e32 v131, v131, v162
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v22, v23, v19, 0x5010400
	v_perm_b32 v19, v23, v19, 0x7030602
	v_perm_b32 v23, v24, v20, 0x5010400
	v_perm_b32 v20, v24, v20, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v24, v13, v9, 0x5010400
	v_perm_b32 v34, v13, v9, 0x7030602
	v_perm_b32 v35, v14, v10, 0x5010400
	v_perm_b32 v36, v14, v10, 0x7030602
	v_perm_b32 v37, v15, v11, 0x5010400
	v_perm_b32 v38, v15, v11, 0x7030602
	v_perm_b32 v39, v16, v12, 0x5010400
	v_perm_b32 v40, v16, v12, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v41, 8, v33
	v_lshrrev_b32_e32 v42, 24, v33
	v_lshrrev_b32_e32 v43, 8, v17
	v_lshrrev_b32_e32 v44, 24, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(5)
	v_dual_add_f32 v143, v143, v219 :: v_dual_add_f32 v142, v142, v230
	v_mov_b32_e32 v220, v59
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v47, 8, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v29, v29, v159
	v_mov_b32_e32 v219, v58
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v9.l, 0xff, v33.l
	v_lshrrev_b32_e32 v45, 8, v21
	v_lshrrev_b32_e32 v46, 24, v21
	v_lshrrev_b32_e32 v48, 24, v18
	v_lshrrev_b32_e32 v49, 8, v22
	v_lshrrev_b32_e32 v50, 24, v22
	v_lshrrev_b32_e32 v51, 8, v19
	v_lshrrev_b32_e32 v52, 24, v19
	v_lshrrev_b32_e32 v53, 8, v23
	v_lshrrev_b32_e32 v54, 24, v23
	v_lshrrev_b32_e32 v55, 8, v20
	v_lshrrev_b32_e32 v56, 24, v20
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v58, 24, v24
	v_lshrrev_b32_e32 v59, 8, v34
	v_lshrrev_b32_e32 v60, 24, v34
	v_lshrrev_b32_e32 v61, 8, v35
	v_lshrrev_b32_e32 v62, 24, v35
	v_lshrrev_b32_e32 v63, 8, v36
	v_lshrrev_b32_e32 v66, 24, v37
	v_lshrrev_b32_e32 v67, 8, v38
	v_lshrrev_b32_e32 v68, 24, v38
	v_lshrrev_b32_e32 v154, 8, v39
	v_lshrrev_b32_e32 v155, 24, v39
	v_lshrrev_b32_e32 v158, 8, v40
	v_lshrrev_b32_e32 v159, 24, v40
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v33.l, 8, v41.l
	v_and_b16 v9.h, 0xff, v33.h
	v_lshlrev_b16 v33.h, 8, v42.l
	v_and_b16 v10.l, 0xff, v17.l
	v_and_b16 v12.l, 0xff, v18.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v18.l, 0xff, v34.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v34.l, 8, v43.l
	v_and_b16 v10.h, 0xff, v17.h
	v_and_b16 v12.h, 0xff, v18.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v18.h, 0xff, v34.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v34.h, 8, v44.l
	v_and_b16 v16.l, 0xff, v20.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v20.l, 0xff, v36.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v144, v144, v228 :: v_dual_add_f32 v141, v141, v229
	v_add_f32_e32 v132, v132, v163
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v11.l, 0xff, v21.l
	v_and_b16 v11.h, 0xff, v21.h
	v_and_b16 v13.l, 0xff, v22.l
	v_and_b16 v13.h, 0xff, v22.h
	v_and_b16 v14.l, 0xff, v19.l
	v_and_b16 v14.h, 0xff, v19.h
	v_and_b16 v15.l, 0xff, v23.l
	v_and_b16 v15.h, 0xff, v23.h
	v_and_b16 v16.h, 0xff, v20.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v17.l, 0xff, v24.l
	v_and_b16 v17.h, 0xff, v24.h
	v_and_b16 v19.l, 0xff, v35.l
	v_and_b16 v19.h, 0xff, v35.h
	v_and_b16 v20.h, 0xff, v36.h
	v_and_b16 v21.l, 0xff, v37.l
	v_and_b16 v21.h, 0xff, v37.h
	v_and_b16 v22.l, 0xff, v38.l
	v_and_b16 v22.h, 0xff, v38.h
	v_and_b16 v23.l, 0xff, v39.l
	v_and_b16 v23.h, 0xff, v39.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v35.l, 8, v45.l
	v_lshlrev_b16 v35.h, 8, v46.l
	v_lshlrev_b16 v38.l, 8, v51.l
	v_lshlrev_b16 v38.h, 8, v52.l
	v_lshlrev_b16 v39.l, 8, v53.l
	v_lshlrev_b16 v39.h, 8, v54.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v43.l, 8, v61.l
	v_lshlrev_b16 v43.h, 8, v62.l
	v_lshlrev_b16 v44.l, 8, v63.l
	v_lshlrev_b16 v45.h, 8, v66.l
	v_lshlrev_b16 v46.l, 8, v67.l
	v_lshlrev_b16 v46.h, 8, v68.l
	v_lshlrev_b16 v47.h, 8, v155.l
	v_lshlrev_b16 v48.h, 8, v159.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.l, v33.l
	v_or_b16 v9.h, v9.h, v33.h
	v_or_b16 v11.l, v11.l, v35.l
	v_or_b16 v11.h, v11.h, v35.h
	v_or_b16 v14.l, v14.l, v38.l
	v_or_b16 v14.h, v14.h, v38.h
	v_or_b16 v15.l, v15.l, v39.l
	v_or_b16 v15.h, v15.h, v39.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v19.h, v19.h, v43.h
	v_or_b16 v21.h, v21.h, v45.h
	v_or_b16 v22.l, v22.l, v46.l
	v_or_b16 v22.h, v22.h, v46.h
	v_or_b16 v23.h, v23.h, v47.h
	v_lshlrev_b16 v41.h, 8, v58.l
	v_lshlrev_b16 v42.l, 8, v59.l
	v_lshlrev_b16 v42.h, 8, v60.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v10.l, v10.l, v34.l
	v_or_b16 v10.h, v10.h, v34.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v19.l, v19.l, v43.l
	v_or_b16 v20.l, v20.l, v44.l
	v_or_b16 v17.h, v17.h, v41.h
	v_or_b16 v18.l, v18.l, v42.l
	v_or_b16 v18.h, v18.h, v42.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v75, v75, v1
	v_mov_b32_e32 v250, v76
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	scratch_load_b64 v[1:2], off, off offset:168 ; 8-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v237, v237, v171
	scratch_load_b64 v[170:171], off, off   ; 8-byte Folded Reload
	v_mov_b32_e32 v249, v75
	scratch_load_b32 v130, off, off offset:216 ; 4-byte Folded Reload
	v_dual_mov_b32 v76, v65 :: v_dual_mov_b32 v75, v64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v64, 24, v36
	v_lshrrev_b32_e32 v65, 8, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v36.l, 8, v47.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v169, v169, v174 :: v_dual_add_f32 v168, v168, v173
	v_add_f32_e32 v7, v7, v175
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v36.h, 8, v48.l
	v_lshlrev_b16 v37.l, 8, v49.l
	v_lshlrev_b16 v37.h, 8, v50.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v44.h, 8, v64.l
	v_lshlrev_b16 v45.l, 8, v65.l
	v_lshlrev_b16 v47.l, 8, v154.l
	v_lshlrev_b16 v48.l, 8, v158.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v12.l, v12.l, v36.l
	v_or_b16 v12.h, v12.h, v36.h
	v_or_b16 v13.l, v13.l, v37.l
	v_or_b16 v13.h, v13.h, v37.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v20.h, v20.h, v44.h
	v_or_b16 v21.l, v21.l, v45.l
	v_or_b16 v23.l, v23.l, v47.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v57, v[1:2] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v57, 8, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v171, v171, v186 :: v_dual_add_f32 v170, v170, v185
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v24.l, 0xff, v40.l
	v_and_b16 v24.h, 0xff, v40.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v40.l, 8, v55.l
	v_lshlrev_b16 v40.h, 8, v56.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v41.l, 8, v57.l
	v_or_b16 v24.l, v24.l, v48.l
	v_or_b16 v24.h, v24.h, v48.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v16.l, v16.l, v40.l
	v_or_b16 v16.h, v16.h, v40.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v17.l, v17.l, v41.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v0, v9
	ds_store_b16_d16_hi v0, v9 offset:32
	ds_store_b16 v0, v10 offset:64
	ds_store_b16_d16_hi v0, v10 offset:96
	ds_store_b16 v157, v12 offset:64
	ds_store_b16_d16_hi v157, v12 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v0, v17 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v157, v11
	ds_store_b16_d16_hi v157, v11 offset:32
	ds_store_b16 v156, v13
	ds_store_b16_d16_hi v156, v13 offset:32
	ds_store_b16 v156, v14 offset:64
	ds_store_b16_d16_hi v156, v14 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v0, v18 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v0, v15 offset:384
	ds_store_b16_d16_hi v0, v15 offset:416
	ds_store_b16 v0, v16 offset:448
	ds_store_b16_d16_hi v0, v16 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v0, v17 offset:16416
	ds_store_b16_d16_hi v0, v18 offset:16480
	ds_store_b16 v157, v19 offset:16384
	ds_store_b16_d16_hi v157, v19 offset:16416
	ds_store_b16 v157, v20 offset:16448
	ds_store_b16_d16_hi v157, v20 offset:16480
	ds_store_b16 v156, v21 offset:16384
	ds_store_b16_d16_hi v156, v21 offset:16416
	ds_store_b16 v156, v22 offset:16448
	ds_store_b16_d16_hi v156, v22 offset:16480
	ds_store_b16 v0, v23 offset:16768
	ds_store_b16_d16_hi v0, v23 offset:16800
	ds_store_b16 v0, v24 offset:16832
	ds_store_b16_d16_hi v0, v24 offset:16864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v188, off, off offset:308
	scratch_load_b32 v0, off, off offset:320
	scratch_load_b32 v9, off, off offset:316
	v_dual_mov_b32 v10, v237 :: v_dual_mov_b32 v11, v238
	v_mov_b32_e32 v158, v191
	v_mov_b32_e32 v186, v219
	v_mov_b32_e32 v214, v241
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[135:136], off offset:152
	scratch_store_b64 off, v[127:128], off offset:160
	s_waitcnt vmcnt(3)
	scratch_store_b32 off, v130, off offset:56 ; 4-byte Folded Spill
	s_mov_b32 s26, s4
	v_mov_b32_e32 v187, v220
	v_dual_mov_b32 v215, v242 :: v_dual_mov_b32 v68, v124
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[237:238], off, off offset:144
	scratch_load_b64 v[123:124], off, off offset:136
	scratch_load_b64 v[252:253], off, off offset:128
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v159, v192 :: v_dual_and_b32 v2, 8, v188
	v_and_b32_e32 v1, 4, v188
	s_waitcnt vmcnt(4)
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v5, 0
	s_add_i32 s38, 0, 0x8000
	s_add_i32 s30, 0, 0x8800
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s31, 0, 0x4000
	v_mov_b32_e32 v6, v5
	s_add_i32 s1, 0, 0x6000
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[5:6], off offset:160
	scratch_store_b64 off, v[5:6], off offset:152
	v_dual_mov_b32 v253, v6 :: v_dual_mov_b32 v252, v5
	v_dual_mov_b32 v250, v6 :: v_dual_mov_b32 v249, v5
	v_dual_mov_b32 v124, v6 :: v_dual_mov_b32 v123, v5
	v_dual_mov_b32 v78, v6 :: v_dual_mov_b32 v77, v5
	v_dual_mov_b32 v215, v6 :: v_dual_mov_b32 v214, v5
	v_dual_mov_b32 v30, v6 :: v_dual_mov_b32 v29, v5
	v_dual_mov_b32 v238, v6 :: v_dual_mov_b32 v237, v5
	v_dual_mov_b32 v159, v6 :: v_dual_mov_b32 v158, v5
	v_dual_mov_b32 v26, v6 :: v_dual_mov_b32 v25, v5
	v_dual_mov_b32 v169, v6 :: v_dual_mov_b32 v168, v5
	v_dual_mov_b32 v240, v6 :: v_dual_mov_b32 v239, v5
	v_dual_mov_b32 v11, v6 :: v_dual_mov_b32 v10, v5
	v_dual_mov_b32 v248, v6 :: v_dual_mov_b32 v247, v5
	v_dual_mov_b32 v8, v6 :: v_dual_mov_b32 v7, v5
	v_dual_mov_b32 v244, v6 :: v_dual_mov_b32 v243, v5
	v_dual_mov_b32 v152, v6 :: v_dual_mov_b32 v151, v5
	v_dual_mov_b32 v140, v6 :: v_dual_mov_b32 v139, v5
	v_dual_mov_b32 v32, v6 :: v_dual_mov_b32 v31, v5
	v_dual_mov_b32 v171, v6 :: v_dual_mov_b32 v170, v5
	v_dual_mov_b32 v178, v6 :: v_dual_mov_b32 v177, v5
	v_dual_mov_b32 v224, v6 :: v_dual_mov_b32 v223, v5
	v_dual_mov_b32 v148, v6 :: v_dual_mov_b32 v147, v5
	v_dual_mov_b32 v150, v6 :: v_dual_mov_b32 v149, v5
	v_dual_mov_b32 v134, v6 :: v_dual_mov_b32 v133, v5
	v_dual_mov_b32 v144, v6 :: v_dual_mov_b32 v143, v5
	v_dual_mov_b32 v246, v6 :: v_dual_mov_b32 v245, v5
	v_dual_mov_b32 v138, v6 :: v_dual_mov_b32 v137, v5
	v_dual_mov_b32 v146, v6 :: v_dual_mov_b32 v145, v5
	v_dual_mov_b32 v142, v6 :: v_dual_mov_b32 v141, v5
	v_dual_mov_b32 v126, v6 :: v_dual_mov_b32 v125, v5
	v_dual_mov_b32 v236, v6 :: v_dual_mov_b32 v235, v5
	v_dual_mov_b32 v120, v6 :: v_dual_mov_b32 v119, v5
	v_dual_mov_b32 v132, v6 :: v_dual_mov_b32 v131, v5
	v_dual_mov_b32 v187, v6 :: v_dual_mov_b32 v186, v5
	v_dual_mov_b32 v122, v6 :: v_dual_mov_b32 v121, v5
	v_dual_mov_b32 v118, v6 :: v_dual_mov_b32 v117, v5
	v_dual_mov_b32 v116, v6 :: v_dual_mov_b32 v115, v5
	v_dual_mov_b32 v112, v6 :: v_dual_mov_b32 v111, v5
	v_dual_mov_b32 v108, v6 :: v_dual_mov_b32 v107, v5
	v_dual_mov_b32 v104, v6 :: v_dual_mov_b32 v103, v5
	v_dual_mov_b32 v114, v6 :: v_dual_mov_b32 v113, v5
	v_dual_mov_b32 v110, v6 :: v_dual_mov_b32 v109, v5
	v_dual_mov_b32 v106, v6 :: v_dual_mov_b32 v105, v5
	v_dual_mov_b32 v102, v6 :: v_dual_mov_b32 v101, v5
	v_dual_mov_b32 v100, v6 :: v_dual_mov_b32 v99, v5
	v_dual_mov_b32 v98, v6 :: v_dual_mov_b32 v97, v5
	v_dual_mov_b32 v92, v6 :: v_dual_mov_b32 v91, v5
	v_dual_mov_b32 v90, v6 :: v_dual_mov_b32 v89, v5
	v_dual_mov_b32 v96, v6 :: v_dual_mov_b32 v95, v5
	v_dual_mov_b32 v94, v6 :: v_dual_mov_b32 v93, v5
	v_dual_mov_b32 v88, v6 :: v_dual_mov_b32 v87, v5
	v_dual_mov_b32 v86, v6 :: v_dual_mov_b32 v85, v5
	v_dual_mov_b32 v84, v6 :: v_dual_mov_b32 v83, v5
	v_dual_mov_b32 v82, v6 :: v_dual_mov_b32 v81, v5
	v_dual_mov_b32 v76, v6 :: v_dual_mov_b32 v75, v5
	v_dual_mov_b32 v72, v6 :: v_dual_mov_b32 v71, v5
	v_dual_mov_b32 v80, v6 :: v_dual_mov_b32 v79, v5
	v_dual_mov_b32 v74, v6 :: v_dual_mov_b32 v73, v5
	v_dual_mov_b32 v70, v6 :: v_dual_mov_b32 v69, v5
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[5:6], off offset:32
	scratch_store_b64 off, v[5:6], off offset:48
.LBB0_8:                                ; %Flow578
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_cmp_eq_u32_e64 s0, 0, v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_clause 0x6                            ; 56-byte Folded Spill
	scratch_store_b64 off, v[77:78], off offset:184
	scratch_store_b64 off, v[247:248], off offset:176
	scratch_store_b64 off, v[243:244], off offset:168
	scratch_store_b64 off, v[7:8], off offset:24
	scratch_store_b64 off, v[25:26], off offset:136
	scratch_store_b64 off, v[239:240], off offset:128
	scratch_store_b64 off, v[170:171], off
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_cndmask_b32_e64 v2, 0x110, 0, s0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	v_add_nc_u32_e32 v4, s38, v68
	s_mov_b32 s4, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v7, v9, v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	scratch_load_b32 v1, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v171, 16, v7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s38, v0
	ds_load_u8_d16 v13, v3
	ds_load_u8_d16 v41, v3 offset:16
	ds_load_u8_d16 v21, v3 offset:32
	ds_load_u8_d16 v17, v3 offset:48
	ds_load_u8_d16 v14, v3 offset:64
	ds_load_u8_d16 v8, v3 offset:128
	ds_load_u8_d16 v12, v3 offset:192
	ds_load_u8_d16 v16, v3 offset:256
	ds_load_u8_d16 v50, v3 offset:320
	ds_load_u8_d16 v51, v3 offset:384
	ds_load_u8_d16 v65, v3 offset:448
	ds_load_u8_d16 v58, v3 offset:512
	ds_load_u8_d16 v60, v3 offset:576
	ds_load_u8_d16 v57, v3 offset:640
	ds_load_u8_d16 v59, v3 offset:704
	ds_load_u8_d16 v62, v3 offset:768
	ds_load_u8_d16 v64, v3 offset:832
	ds_load_u8_d16 v61, v3 offset:896
	ds_load_u8_d16 v63, v3 offset:960
	ds_load_u8_d16 v0, v3 offset:1024
	ds_load_u8_d16 v225, v3 offset:1760
	ds_load_u8_d16 v248, v3 offset:1824
	ds_load_u8_d16 v160, v3 offset:1888
	ds_load_u8_d16 v161, v3 offset:1952
	ds_load_u8_d16 v163, v3 offset:2016
	ds_load_u8_d16 v189, v3 offset:112
	ds_load_u8_d16 v190, v3 offset:176
	ds_load_u8_d16 v191, v3 offset:240
	ds_load_u8_d16 v192, v3 offset:304
	ds_load_u8_d16 v193, v3 offset:368
	ds_load_u8_d16 v194, v3 offset:432
	ds_load_u8_d16 v200, v4
	ds_load_u8_d16 v195, v3 offset:496
	ds_load_u8_d16 v197, v3 offset:560
	ds_load_u8_d16 v199, v3 offset:624
	ds_load_u8_d16 v196, v3 offset:688
	ds_load_u8_d16 v198, v3 offset:752
	ds_load_u8_d16 v202, v3 offset:816
	ds_load_u8_d16 v203, v3 offset:880
	ds_load_u8_d16 v201, v3 offset:944
	ds_load_u8_d16 v164, v3 offset:1072
	ds_load_u8_d16 v165, v3 offset:1136
	ds_load_u8_d16 v166, v3 offset:1200
	ds_load_u8_d16 v167, v3 offset:1264
	ds_load_u8_d16 v38, v3 offset:1328
	ds_load_u8_d16 v39, v3 offset:1392
	ds_load_u8_d16 v254, v3 offset:1456
	ds_load_u8_d16 v255, v3 offset:1520
	ds_load_u8_d16 v129, v3 offset:1584
	ds_load_u8_d16 v130, v3 offset:1648
	ds_load_u8_d16 v27, v3 offset:1712
	ds_load_u8_d16 v25, v3 offset:1776
	ds_load_u8_d16 v2, v3 offset:1840
	ds_load_u8_d16 v4, v3 offset:1904
	ds_load_u8_d16 v40, v3 offset:1968
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s38, v1
	ds_load_u8_d16 v162, v1
	s_waitcnt lgkmcnt(36)
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	ds_load_u8_d16 v28, v3 offset:1088
	ds_load_u8_d16 v54, v3 offset:1152
	ds_load_u8_d16 v55, v3 offset:1216
	ds_load_u8_d16 v170, v3 offset:1280
	ds_load_u8_d16 v217, v3 offset:1344
	ds_load_u8_d16 v218, v3 offset:1408
	ds_load_u8_d16 v221, v3 offset:1472
	ds_load_u8_d16 v222, v3 offset:1536
	ds_load_u8_d16 v226, v3 offset:1600
	ds_load_u8_d16 v227, v3 offset:1664
	ds_load_u8_d16 v228, v3 offset:1728
	ds_load_u8_d16 v229, v3 offset:1792
	ds_load_u8_d16 v230, v3 offset:1856
	ds_load_u8_d16 v231, v3 offset:1920
	ds_load_u8_d16 v19, v3 offset:1984
	ds_load_u8_d16 v36, v3 offset:80
	ds_load_u8_d16 v42, v3 offset:144
	ds_load_u8_d16 v43, v3 offset:208
	ds_load_u8_d16 v44, v3 offset:272
	ds_load_u8_d16 v45, v3 offset:336
	ds_load_u8_d16 v46, v3 offset:400
	ds_load_u8_d16 v47, v3 offset:464
	ds_load_u8_d16 v49, v3 offset:528
	ds_load_u8_d16 v78, v3 offset:592
	ds_load_u8_d16 v48, v3 offset:656
	ds_load_u8_d16 v77, v3 offset:720
	ds_load_u8_d16 v15, v3 offset:784
	ds_load_u8_d16 v182, v3 offset:848
	ds_load_u8_d16 v172, v3 offset:912
	ds_load_u8_d16 v173, v3 offset:976
	ds_load_u8_d16 v157, v3 offset:1040
	ds_load_u8_d16 v232, v3 offset:1104
	ds_load_u8_d16 v216, v3 offset:1168
	ds_load_u8_d16 v233, v3 offset:1232
	ds_load_u8_d16 v234, v3 offset:1296
	ds_load_u8_d16 v239, v3 offset:1360
	ds_load_u8_d16 v240, v3 offset:1424
	ds_load_u8_d16 v241, v3 offset:1488
	ds_load_u8_d16 v242, v3 offset:1552
	ds_load_u8_d16 v243, v3 offset:1616
	ds_load_u8_d16 v244, v3 offset:1680
	ds_load_u8_d16 v219, v3 offset:1744
	ds_load_u8_d16 v247, v3 offset:1808
	ds_load_u8_d16 v18, v3 offset:1872
	ds_load_u8_d16 v220, v3 offset:1936
	ds_load_u8_d16 v251, v3 offset:2000
	ds_load_u8_d16 v52, v3 offset:96
	ds_load_u8_d16 v53, v3 offset:160
	ds_load_u8_d16 v56, v3 offset:224
	ds_load_u8_d16 v135, v3 offset:288
	ds_load_u8_d16 v136, v3 offset:352
	ds_load_u8_d16 v153, v3 offset:416
	ds_load_u8_d16 v174, v3 offset:480
	ds_load_u8_d16 v154, v3 offset:544
	ds_load_u8_d16 v37, v3 offset:608
	ds_load_u8_d16 v175, v3 offset:672
	ds_load_u8_d16 v176, v3 offset:736
	ds_load_u8_d16 v179, v3 offset:800
	ds_load_u8_d16 v181, v3 offset:864
	ds_load_u8_d16 v155, v3 offset:928
	ds_load_u8_d16 v180, v3 offset:992
	ds_load_u8_d16 v33, v3 offset:1056
	ds_load_u8_d16 v34, v3 offset:1120
	ds_load_u8_d16 v35, v3 offset:1184
	ds_load_u8_d16 v156, v3 offset:1248
	ds_load_u8_d16 v0, v3 offset:1312
	ds_load_u8_d16 v20, v3 offset:1376
	ds_load_u8_d16 v22, v3 offset:1440
	ds_load_u8_d16 v23, v3 offset:1504
	ds_load_u8_d16 v127, v3 offset:1568
	ds_load_u8_d16 v128, v3 offset:1632
	ds_load_u8_d16 v24, v3 offset:1696
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_clause 0x3                            ; 32-byte Folded Spill
	scratch_store_b64 off, v[29:30], off offset:8
	scratch_store_b64 off, v[168:169], off offset:16
	scratch_store_b64 off, v[10:11], off offset:144
	scratch_store_b64 off, v[5:6], off offset:40
	s_waitcnt lgkmcnt(24)
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v53, off offset:72
	scratch_store_b32 off, v21, off offset:80
	scratch_store_b32 off, v52, off offset:88
	s_waitcnt lgkmcnt(20)
	s_clause 0xc                            ; 52-byte Folded Spill
	scratch_store_b32 off, v153, off offset:96
	scratch_store_b32 off, v41, off offset:104
	scratch_store_b32 off, v135, off offset:196
	scratch_store_b32 off, v36, off offset:200
	scratch_store_b32 off, v43, off offset:204
	scratch_store_b32 off, v136, off offset:212
	scratch_store_b32 off, v42, off offset:224
	scratch_store_b32 off, v44, off offset:232
	scratch_store_b32 off, v47, off offset:240
	scratch_store_b32 off, v45, off offset:248
	scratch_store_b32 off, v46, off offset:256
	scratch_store_b32 off, v7, off offset:492
	scratch_store_b32 off, v56, off offset:304
	s_waitcnt lgkmcnt(17)
	scratch_store_b32 off, v37, off offset:316 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(12)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v155, off offset:320
	scratch_store_b32 off, v179, off offset:324
	s_waitcnt lgkmcnt(11)
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v180, off offset:328
	scratch_store_b32 off, v181, off offset:332
	scratch_store_b32 off, v8, off offset:336
	scratch_store_b32 off, v12, off offset:340
	scratch_store_b32 off, v48, off offset:344
	scratch_store_b32 off, v13, off offset:348
	scratch_store_b32 off, v49, off offset:352
	scratch_store_b32 off, v77, off offset:356
	scratch_store_b32 off, v78, off offset:360
	scratch_store_b32 off, v174, off offset:364
	scratch_store_b32 off, v14, off offset:368
	scratch_store_b32 off, v176, off offset:372
	scratch_store_b32 off, v172, off offset:376
	scratch_store_b32 off, v15, off offset:380
	scratch_store_b32 off, v173, off offset:384
	scratch_store_b32 off, v16, off offset:388
	scratch_store_b32 off, v182, off offset:392
	scratch_store_b32 off, v50, off offset:396
	scratch_store_b32 off, v51, off offset:400
	scratch_store_b32 off, v2, off offset:404
	scratch_store_b32 off, v65, off offset:408
	scratch_store_b32 off, v4, off offset:420
	scratch_store_b32 off, v57, off offset:424
	scratch_store_b32 off, v58, off offset:428
	scratch_store_b32 off, v59, off offset:432
	scratch_store_b32 off, v60, off offset:436
	scratch_store_b32 off, v61, off offset:440
	scratch_store_b32 off, v62, off offset:444
	scratch_store_b32 off, v63, off offset:448
	scratch_store_b32 off, v64, off offset:452
	scratch_store_b32 off, v189, off offset:456
	scratch_store_b32 off, v190, off offset:460
	s_clause 0xc                            ; 52-byte Folded Spill
	scratch_store_b32 off, v191, off offset:464
	scratch_store_b32 off, v192, off offset:468
	scratch_store_b32 off, v193, off offset:472
	scratch_store_b32 off, v194, off offset:476
	scratch_store_b32 off, v195, off offset:480
	scratch_store_b32 off, v196, off offset:484
	scratch_store_b32 off, v197, off offset:488
	scratch_store_b32 off, v198, off offset:496
	scratch_store_b32 off, v199, off offset:500
	scratch_store_b32 off, v200, off offset:504
	scratch_store_b32 off, v201, off offset:508
	scratch_store_b32 off, v202, off offset:512
	scratch_store_b32 off, v203, off offset:516
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v184, v237 :: v_dual_add_nc_u32 v1, s26, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v3, v61, v63, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v162, off offset:264
	scratch_store_b32 off, v68, off offset:112
	v_mov_b16_e64 v162.l, v40.l
	v_mov_b16_e32 v40.l, v4.l
	v_perm_b32 v4, v58, v60, 0xc0c0004
	v_perm_b32 v5, v57, v59, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b32_e32 v185, v238
	v_mov_b16_e64 v238.l, v2.l
	v_perm_b32 v2, v62, v64, 0xc0c0004
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	ds_load_b128 v[57:60], v1 offset:4096
	ds_load_b128 v[61:64], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v1, v16, v50, 0xc0c0004
	v_perm_b32 v9, v13, v14, 0xc0c0004
	v_perm_b32 v10, v8, v12, 0xc0c0004
	v_lshl_or_b32 v68, v3, 16, v2
	v_perm_b32 v2, v51, v65, 0xc0c0004
	v_lshl_or_b32 v67, v5, 16, v4
	v_mov_b32_e32 v50, v158
	v_lshl_or_b32 v65, v10, 16, v9
	v_mov_b32_e32 v51, v159
	v_lshl_or_b32 v66, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_perm_b32 v158, v15, v182, 0xc0c0004
	v_perm_b32 v159, v172, v173, 0xc0c0004
	v_perm_b32 v168, v49, v78, 0xc0c0004
	v_perm_b32 v169, v48, v77, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_mov_b16_e64 v78.l, v170.l
	v_perm_b32 v170, v44, v45, 0xc0c0004
	v_mov_b32_e32 v77, v171
	v_perm_b32 v171, v46, v47, 0xc0c0004
	v_perm_b32 v173, v42, v43, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[57:60], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v159, 16, v158
	v_perm_b32 v158, v179, v181, 0xc0c0004
	v_perm_b32 v159, v155, v180, 0xc0c0004
	v_lshl_or_b32 v66, v171, 16, v170
	v_lshl_or_b32 v67, v169, 16, v168
	v_perm_b32 v168, v154, v37, 0xc0c0004
	v_perm_b32 v169, v175, v176, 0xc0c0004
	v_lshl_or_b32 v171, v159, 16, v158
	v_perm_b32 v158, v202, v203, 0xc0c0004
	v_perm_b32 v159, v201, v200, 0xc0c0004
	v_perm_b32 v180, v135, v136, 0xc0c0004
	v_perm_b32 v181, v153, v174, 0xc0c0004
	v_perm_b32 v182, v21, v52, 0xc0c0004
	v_perm_b32 v183, v53, v56, 0xc0c0004
	v_dual_mov_b32 v213, v178 :: v_dual_mov_b32 v52, v151
	v_perm_b32 v172, v41, v36, 0xc0c0004
	v_mov_b16_e64 v36.l, v255.l
	v_lshl_or_b32 v255, v159, 16, v158
	v_mov_b16_e64 v153.l, v17.l
	v_perm_b32 v158, v17, v189, 0xc0c0004
	v_dual_mov_b32 v53, v152 :: v_dual_mov_b32 v152, v150
	v_mov_b16_e64 v17.l, v242.l
	v_mov_b16_e64 v242.l, v239.l
	v_mov_b16_e64 v239.l, v216.l
	v_mov_b16_e64 v216.l, v232.l
	v_mov_b16_e64 v232.l, v228.l
	v_mov_b16_e64 v228.l, v221.l
	v_mov_b16_e64 v56.l, v243.l
	v_mov_b16_e64 v243.l, v240.l
	v_mov_b16_e64 v240.l, v233.l
	v_mov_b16_e64 v233.l, v222.l
	v_dual_mov_b32 v222, v140 :: v_dual_mov_b32 v221, v139
	v_mov_b16_e32 v21.l, v24.l
	v_mov_b16_e32 v24.l, v23.l
	v_mov_b16_e32 v23.l, v22.l
	v_mov_b16_e32 v22.l, v20.l
	v_mov_b16_e32 v20.l, v0.l
	v_mov_b16_e64 v0.l, v156.l
	v_mov_b16_e64 v156.l, v35.l
	v_mov_b16_e32 v35.l, v34.l
	v_mov_b16_e32 v34.l, v33.l
	v_mov_b16_e64 v33.l, v251.l
	v_mov_b16_e64 v251.l, v220.l
	v_mov_b16_e64 v220.l, v18.l
	v_mov_b16_e64 v18.l, v247.l
	v_mov_b16_e64 v247.l, v219.l
	v_mov_b16_e64 v219.l, v244.l
	v_mov_b16_e64 v244.l, v241.l
	v_mov_b16_e64 v241.l, v226.l
	v_mov_b16_e64 v226.l, v217.l
	v_mov_b16_e64 v41.l, v218.l
	v_dual_mov_b32 v218, v32 :: v_dual_mov_b32 v151, v149
	v_mov_b16_e64 v149.l, v54.l
	v_mov_b16_e64 v150.l, v55.l
	v_mov_b32_e32 v54, v147
	v_lshl_or_b32 v170, v169, 16, v168
	v_lshl_or_b32 v169, v181, 16, v180
	v_lshl_or_b32 v168, v183, 16, v182
	v_perm_b32 v180, v197, v199, 0xc0c0004
	v_perm_b32 v181, v196, v198, 0xc0c0004
	v_perm_b32 v182, v192, v193, 0xc0c0004
	v_perm_b32 v183, v194, v195, 0xc0c0004
	v_perm_b32 v159, v190, v191, 0xc0c0004
	v_mov_b32_e32 v217, v31
	v_dual_mov_b32 v55, v148 :: v_dual_mov_b32 v148, v138
	v_mov_b32_e32 v29, v249
	v_dual_mov_b32 v147, v137 :: v_dual_mov_b32 v30, v250
	v_dual_mov_b32 v137, v141 :: v_dual_mov_b32 v250, v215
	v_mov_b32_e32 v249, v214
	v_dual_mov_b32 v215, v132 :: v_dual_mov_b32 v214, v131
	v_mov_b32_e32 v132, v124
	v_mov_b16_e32 v26.l, v25.l
	v_mov_b16_e32 v25.l, v27.l
	v_mov_b16_e64 v136.l, v28.l
	v_mov_b32_e32 v131, v123
	v_mov_b32_e32 v123, v125
	v_mov_b16_e32 v27.l, v127.l
	v_mov_b16_e64 v28.l, v128.l
	v_mov_b32_e32 v127, v252
	v_lshl_or_b32 v65, v173, 16, v172
	v_mov_b32_e32 v138, v142
	v_dual_mov_b32 v124, v126 :: v_dual_mov_b32 v125, v184
	v_mov_b32_e32 v128, v253
	v_mov_b16_e64 v141.l, v254.l
	v_lshl_or_b32 v254, v181, 16, v180
	v_lshl_or_b32 v253, v183, 16, v182
	v_lshl_or_b32 v252, v159, 16, v158
	v_mov_b32_e32 v31, v186
	v_mov_b16_e64 v155.l, v154.l
	v_mov_b16_e64 v154.l, v175.l
	v_mov_b32_e32 v212, v177
	v_wmma_i32_16x16x16_iu8 v[172:179], v[61:64], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v126, v185
	v_mov_b32_e32 v32, v187
	v_wmma_i32_16x16x16_iu8 v[180:187], v[57:60], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[188:195], v[61:64], v[168:171], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[57:60], v[168:171], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[204:211], v[61:64], v[252:255], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[252:255], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v253, v128
	v_mov_b16_e64 v170.l, v78.l
	v_dual_mov_b32 v171, v77 :: v_dual_mov_b32 v252, v127
	v_mov_b16_e32 v127.l, v27.l
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[77:78], off, off offset:48
	scratch_load_b32 v27, off, off offset:64
	v_dual_mov_b32 v169, v126 :: v_dual_mov_b32 v168, v125
	v_dual_mov_b32 v126, v124 :: v_dual_mov_b32 v125, v123
	v_dual_mov_b32 v123, v131 :: v_dual_mov_b32 v124, v132
	v_mov_b32_e32 v131, v214
	v_mov_b16_e64 v255.l, v36.l
	v_dual_mov_b32 v37, v32 :: v_dual_mov_b32 v132, v215
	v_dual_mov_b32 v214, v249 :: v_dual_mov_b32 v215, v250
	v_mov_b32_e32 v250, v30
	v_mov_b16_e64 v254.l, v141.l
	v_dual_mov_b32 v36, v31 :: v_dual_mov_b32 v249, v29
	v_dual_mov_b32 v142, v138 :: v_dual_mov_b32 v31, v217
	v_mov_b32_e32 v141, v137
	v_dual_mov_b32 v137, v147 :: v_dual_mov_b32 v32, v218
	v_mov_b16_e64 v218.l, v41.l
	v_mov_b16_e64 v217.l, v226.l
	v_mov_b16_e64 v226.l, v241.l
	v_mov_b16_e64 v222.l, v233.l
	v_mov_b16_e64 v221.l, v228.l
	v_mov_b16_e64 v228.l, v232.l
	v_perm_b32 v57, v229, v230, 0xc0c0004
	v_perm_b32 v58, v231, v19, 0xc0c0004
	v_mov_b32_e32 v138, v148
	v_mov_b32_e32 v148, v55
	v_mov_b16_e64 v128.l, v28.l
	v_mov_b16_e64 v28.l, v136.l
	v_mov_b32_e32 v147, v54
	v_mov_b16_e64 v55.l, v150.l
	v_mov_b16_e64 v54.l, v149.l
	v_perm_b32 v59, v222, v226, 0xc0c0004
	v_perm_b32 v61, v227, v228, 0xc0c0004
	v_lshl_or_b32 v60, v58, 16, v57
	v_perm_b32 v57, v170, v217, 0xc0c0004
	v_perm_b32 v58, v218, v221, 0xc0c0004
	scratch_load_b64 v[29:30], off, off offset:160 ; 8-byte Folded Reload
	v_lshl_or_b32 v59, v61, 16, v59
	v_perm_b32 v61, v54, v55, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v65, s26, v171
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v58, v58, 16, v57
	v_mov_b16_e64 v241.l, v244.l
	v_mov_b16_e64 v244.l, v219.l
	v_mov_b16_e64 v219.l, v247.l
	v_mov_b16_e64 v247.l, v18.l
	v_mov_b16_e64 v18.l, v220.l
	v_mov_b16_e64 v220.l, v251.l
	v_mov_b16_e64 v251.l, v33.l
	v_mov_b16_e64 v233.l, v240.l
	v_mov_b16_e64 v240.l, v243.l
	v_mov_b16_e64 v243.l, v56.l
	v_mov_b16_e64 v232.l, v216.l
	v_mov_b16_e64 v216.l, v239.l
	v_mov_b16_e64 v239.l, v242.l
	v_mov_b16_e64 v242.l, v17.l
	v_perm_b32 v158, v244, v219, 0xc0c0004
	v_mov_b16_e32 v33.l, v34.l
	v_mov_b16_e32 v34.l, v35.l
	v_mov_b16_e64 v35.l, v156.l
	v_mov_b16_e64 v156.l, v0.l
	v_mov_b16_e32 v0.l, v20.l
	v_mov_b16_e32 v20.l, v22.l
	v_mov_b16_e32 v22.l, v23.l
	v_mov_b16_e32 v23.l, v24.l
	v_mov_b16_e32 v24.l, v21.l
	v_dual_mov_b32 v149, v151 :: v_dual_mov_b32 v150, v152
	v_mov_b32_e32 v152, v53
	v_mov_b16_e64 v237.l, v129.l
	s_waitcnt vmcnt(1)
	v_perm_b32 v57, v27, v28, 0xc0c0004
	v_mov_b16_e32 v27.l, v25.l
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v57, v61, 16, v57
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[61:64], v65
	ds_load_b128 v[65:68], v65 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[57:60], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[65:68], v[57:60], v[42:49] neg_lo:[1,1,0]
	v_perm_b32 v57, v247, v18, 0xc0c0004
	v_perm_b32 v58, v220, v251, 0xc0c0004
	v_perm_b32 v59, v242, v243, 0xc0c0004
	v_cvt_f32_i32_e32 v11, v11
	v_mov_b32_e32 v151, v52
	v_cvt_f32_i32_e32 v12, v12
	v_lshl_or_b32 v60, v58, 16, v57
	v_perm_b32 v57, v234, v239, 0xc0c0004
	v_perm_b32 v58, v240, v241, 0xc0c0004
	v_lshl_or_b32 v59, v158, 16, v59
	v_perm_b32 v158, v216, v233, 0xc0c0004
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v214, v214, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v14
	v_lshl_or_b32 v58, v58, 16, v57
	v_perm_b32 v57, v157, v232, 0xc0c0004
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v215, v215, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v124, v124, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v13
	v_lshl_or_b32 v57, v158, 16, v57
	v_perm_b32 v158, v24, v225, 0xc0c0004
	scratch_load_b64 v[52:53], off, off offset:32 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v123, v123, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[172:179], v[61:64], v[57:60], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[65:68], v[57:60], v[180:187] neg_lo:[1,1,0]
	v_perm_b32 v57, v248, v160, 0xc0c0004
	v_perm_b32 v58, v161, v163, 0xc0c0004
	v_perm_b32 v59, v127, v128, 0xc0c0004
	v_cvt_f32_i32_e32 v11, v16
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v47, v47
	v_lshl_or_b32 v60, v58, 16, v57
	v_perm_b32 v57, v0, v20, 0xc0c0004
	v_perm_b32 v58, v22, v23, 0xc0c0004
	v_lshl_or_b32 v59, v158, 16, v59
	v_perm_b32 v158, v35, v156, 0xc0c0004
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_lshl_or_b32 v58, v58, 16, v57
	v_perm_b32 v57, v33, v34, 0xc0c0004
	v_cvt_f32_i32_e32 v14, v181
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v57, v158, 16, v57
	v_perm_b32 v158, v25, v26, 0xc0c0004
	v_mov_b16_e32 v25.l, v26.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v134, v134, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v184
	v_wmma_i32_16x16x16_iu8 v[188:195], v[61:64], v[57:60], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[65:68], v[57:60], v[196:203] neg_lo:[1,1,0]
	v_perm_b32 v57, v238, v40, 0xc0c0004
	v_mov_b16_e64 v40.l, v162.l
	scratch_load_b32 v162, off, off offset:264 ; 4-byte Folded Reload
	v_perm_b32 v59, v237, v130, 0xc0c0004
	v_dual_mov_b32 v238, v169 :: v_dual_mov_b32 v237, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v59, v158, 16, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v238, v238, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v15
	v_perm_b32 v158, v166, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v237, v237, v11
	scratch_load_b64 v[11:12], off, off offset:136 ; 8-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt vmcnt(1)
	v_perm_b32 v58, v40, v162, 0xc0c0004
	v_lshl_or_b32 v60, v58, 16, v57
	v_perm_b32 v57, v38, v39, 0xc0c0004
	v_perm_b32 v58, v254, v255, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v58, v58, 16, v57
	v_perm_b32 v57, v164, v165, 0xc0c0004
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v12, v12, v43 :: v_dual_add_f32 v11, v11, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v57, v158, 16, v57
	v_mov_b32_e32 v159, v51
	scratch_store_b64 off, v[11:12], off offset:136 ; 8-byte Folded Spill
	scratch_load_b64 v[11:12], off, off offset:176 ; 8-byte Folded Reload
	v_mov_b32_e32 v158, v50
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[57:60], v[1:8] neg_lo:[1,1,0]
	scratch_load_b32 v68, off, off offset:112 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[204:211], v[61:64], v[57:60], v[204:211] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v82, v82, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v81, v81, v1 :: v_dual_add_f32 v78, v78, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v5
	v_cvt_f32_i32_e32 v4, v10
	v_cvt_f32_i32_e32 v5, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v71, v71, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_add_f32 v253, v253, v4 :: v_dual_add_f32 v252, v252, v5
	scratch_store_b64 off, v[77:78], off offset:48 ; 8-byte Folded Spill
	v_dual_add_f32 v69, v69, v3 :: v_dual_add_f32 v72, v72, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v70, v70, v2
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v12, v12, v45 :: v_dual_add_f32 v11, v11, v44
	scratch_store_b64 off, v[11:12], off offset:176 ; 8-byte Folded Spill
	scratch_load_b64 v[11:12], off, off offset:128 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v12, v12, v47 :: v_dual_add_f32 v11, v11, v46
	scratch_store_b64 off, v[11:12], off offset:128 ; 8-byte Folded Spill
	scratch_load_b64 v[12:13], off, off offset:168 ; 8-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v53, v53, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v175
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v213, v213, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v179
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v148, v148, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v146, v146, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v187
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v30, v30, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v126, v126, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v193
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v245, v245, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v191
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v120, v120, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v112, v112, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v199
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v194
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v110, v110, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v117, v117, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v201
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v102, v102, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v104, v104, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v204
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v94, v94, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v97, v97, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v211
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v90, v90, v11
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_add_f32 v86, v86, v14 :: v_dual_add_f32 v13, v13, v49
	v_add_f32_e32 v12, v12, v48
	scratch_store_b64 off, v[12:13], off offset:168 ; 8-byte Folded Spill
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v172
	v_cvt_f32_i32_e32 v13, v178
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v147, v147, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v185
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v212, v212, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v176
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v246, v246, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v188
	scratch_store_b64 off, v[52:53], off offset:32 ; 8-byte Folded Spill
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v31, v31, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v180
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v125, v125, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v133, v133, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v182
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v118, v118, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v145, v145, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v186
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v109, v109, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v29, v29, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v190
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v98, v98, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v208
	scratch_store_b64 off, v[29:30], off offset:160 ; 8-byte Folded Spill
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v192
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v89, v89, v13
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[212:213], off offset:120
	scratch_store_b64 off, v[36:37], off offset:216
	v_add_f32_e32 v119, v119, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v111, v111, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v200
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v103, v103, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v101, v101, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v206
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v93, v93, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v210
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v85, v85, v12
	s_branch .LBB0_11
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[186:187], off offset:216
	scratch_store_b64 off, v[177:178], off offset:120
	v_mov_b16_e64 v155.l, v154.l
	v_mov_b16_e64 v154.l, v175.l
	v_mov_b16_e64 v153.l, v17.l
.LBB0_11:
	v_mov_b16_e64 v168.l, v38.l
	v_mov_b16_e64 v169.l, v39.l
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[31:32], off offset:112
	scratch_store_b64 off, v[214:215], off offset:264
	s_cbranch_vccnz .LBB0_13
; %bb.12:
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:444
	scratch_load_b32 v2, off, off offset:452
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e32 v31.l, v0.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v135.l, v24.l
	v_mov_b16_e32 v78.l, v23.l
	v_mov_b16_e32 v32.l, v22.l
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_perm_b32 v16, v229, v230, 0xc0c0004
	v_perm_b32 v17, v231, v19, 0xc0c0004
	v_mov_b16_e32 v29.l, v34.l
	v_mov_b16_e32 v30.l, v35.l
	v_mov_b16_e32 v26.l, v40.l
	v_perm_b32 v19, v222, v226, 0xc0c0004
	v_mov_b16_e64 v204.l, v254.l
	v_mov_b16_e64 v205.l, v255.l
	scratch_load_b32 v77, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:440
	scratch_load_b32 v3, off, off offset:448
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:428
	scratch_load_b32 v3, off, off offset:436
	v_lshl_or_b32 v45, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:424
	scratch_load_b32 v4, off, off offset:432
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v3, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:388
	scratch_load_b32 v1, off, off offset:396
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:400
	scratch_load_b32 v2, off, off offset:408
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:348
	scratch_load_b32 v1, off, off offset:368
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:336
	scratch_load_b32 v2, off, off offset:340
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:380
	scratch_load_b32 v1, off, off offset:392
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:376
	scratch_load_b32 v2, off, off offset:384
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:352
	scratch_load_b32 v3, off, off offset:360
	v_lshl_or_b32 v59, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:232
	scratch_load_b32 v1, off, off offset:248
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:344
	scratch_load_b32 v4, off, off offset:356
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v3, 16, v2
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:240
	scratch_load_b32 v2, off, off offset:256
	scratch_load_b32 v3, off, off offset:372
	s_waitcnt vmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v154, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v57, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:104
	scratch_load_b32 v1, off, off offset:200
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:204
	scratch_load_b32 v2, off, off offset:224
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:324
	scratch_load_b32 v1, off, off offset:332
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:320
	scratch_load_b32 v2, off, off offset:328
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	scratch_load_b32 v2, off, off offset:316 ; 4-byte Folded Reload
	v_lshl_or_b32 v53, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:196
	scratch_load_b32 v1, off, off offset:212
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v155, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:96
	scratch_load_b32 v2, off, off offset:364
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:80
	scratch_load_b32 v1, off, off offset:88
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:72
	scratch_load_b32 v2, off, off offset:304
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:512
	scratch_load_b32 v1, off, off offset:516
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:504
	scratch_load_b32 v2, off, off offset:508
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:488
	scratch_load_b32 v3, off, off offset:500
	v_lshl_or_b32 v24, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:468
	scratch_load_b32 v1, off, off offset:472
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:484
	scratch_load_b32 v4, off, off offset:496
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:476
	scratch_load_b32 v2, off, off offset:480
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v1, 16, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:456
	scratch_load_b32 v1, off, off offset:460
	scratch_load_b32 v2, off, off offset:464
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v1, 16, v0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s31, v77
	ds_load_b128 v[60:63], v0
	ds_load_b128 v[64:67], v0 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v0, s4 :: v_dual_mov_b32 v3, s7
	v_dual_mov_b32 v1, s5 :: v_dual_mov_b32 v2, s6
	v_dual_mov_b32 v5, s9 :: v_dual_mov_b32 v4, s8
	v_dual_mov_b32 v7, s11 :: v_dual_mov_b32 v6, s10
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[60:63], v[42:45], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[64:67], v[42:45], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[60:63], v[56:59], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[64:67], v[56:59], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[60:63], v[50:53], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[188:195], v[64:67], v[50:53], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[60:63], v[21:24], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[64:67], v[21:24], v[0:7] neg_lo:[1,1,0]
	v_mov_b16_e32 v23.l, v20.l
	v_perm_b32 v20, v227, v228, 0xc0c0004
	v_lshl_or_b32 v22, v17, 16, v16
	v_perm_b32 v16, v170, v217, 0xc0c0004
	v_perm_b32 v17, v218, v221, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v21, v20, 16, v19
	v_lshl_or_b32 v20, v17, 16, v16
	scratch_load_b32 v16, off, off offset:64 ; 4-byte Folded Reload
	v_perm_b32 v17, v54, v55, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v16, v16, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v17, 16, v16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v16, s31, v171
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v17, v220, v251, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[50:53], v16
	ds_load_b128 v[54:57], v16 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v16, v247, v18, 0xc0c0004
	v_perm_b32 v18, v129, v130, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[50:53], v[19:22], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[54:57], v[19:22], v[34:41] neg_lo:[1,1,0]
	v_perm_b32 v19, v242, v243, 0xc0c0004
	v_perm_b32 v20, v244, v219, 0xc0c0004
	v_lshl_or_b32 v22, v17, 16, v16
	v_perm_b32 v16, v234, v239, 0xc0c0004
	v_perm_b32 v17, v240, v241, 0xc0c0004
	v_cvt_f32_i32_e32 v10, v10
	v_lshl_or_b32 v21, v20, 16, v19
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v17, 16, v16
	v_perm_b32 v16, v157, v232, 0xc0c0004
	v_perm_b32 v17, v216, v233, 0xc0c0004
	v_lshl_or_b32 v19, v17, 16, v16
	v_perm_b32 v16, v248, v160, 0xc0c0004
	v_perm_b32 v17, v161, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[50:53], v[19:22], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[54:57], v[19:22], v[172:179] neg_lo:[1,1,0]
	v_perm_b32 v19, v127, v128, 0xc0c0004
	v_perm_b32 v20, v135, v225, 0xc0c0004
	v_lshl_or_b32 v22, v17, 16, v16
	v_perm_b32 v16, v31, v23, 0xc0c0004
	v_perm_b32 v17, v32, v78, 0xc0c0004
	v_cvt_f32_i32_e32 v23, v40
	v_lshl_or_b32 v21, v20, 16, v19
	v_cvt_f32_i32_e32 v40, v173
	v_cvt_f32_i32_e32 v24, v43
	v_lshl_or_b32 v20, v17, 16, v16
	v_perm_b32 v16, v33, v29, 0xc0c0004
	v_perm_b32 v17, v30, v156, 0xc0c0004
	v_cvt_f32_i32_e32 v33, v42
	v_cvt_f32_i32_e32 v42, v175
	v_cvt_f32_i32_e32 v43, v174
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v19, v17, 16, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:404
	scratch_load_b32 v17, off, off offset:420
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v151, v151, v33
	v_add_f32_e32 v137, v137, v43
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[180:187], v[50:53], v[19:22], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[188:195], v[54:57], v[19:22], v[188:195] neg_lo:[1,1,0]
	v_perm_b32 v20, v27, v25, 0xc0c0004
	scratch_load_b64 v[27:28], off, off offset:184 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v22, v41
	v_cvt_f32_i32_e32 v21, v38
	v_cvt_f32_i32_e32 v41, v172
	v_lshl_or_b32 v18, v20, 16, v18
	v_perm_b32 v20, v166, v167, 0xc0c0004
	v_cvt_f32_i32_e32 v38, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v149, v149, v41 :: v_dual_add_f32 v224, v224, v38
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt vmcnt(1)
	v_perm_b32 v16, v16, v17, 0xc0c0004
	v_perm_b32 v17, v26, v162, 0xc0c0004
	v_lshl_or_b32 v19, v17, 16, v16
	v_perm_b32 v16, v168, v169, 0xc0c0004
	v_perm_b32 v17, v204, v205, 0xc0c0004
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v27, v27, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v13
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v28, v28, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v17, v17, 16, v16
	v_perm_b32 v16, v164, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v16, v20, 16, v16
	v_cvt_f32_i32_e32 v20, v39
	v_cvt_f32_i32_e32 v39, v48
	v_wmma_i32_16x16x16_iu8 v[196:203], v[50:53], v[16:19], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[54:57], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v16, v35
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v250, v250, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v12
	scratch_load_b64 v[11:12], off, off offset:8 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v19, v36
	v_cvt_f32_i32_e32 v36, v47
	v_cvt_f32_i32_e32 v47, v178
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v249, v249, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v17, v34
	v_cvt_f32_i32_e32 v18, v37
	v_cvt_f32_i32_e32 v34, v45
	v_cvt_f32_i32_e32 v35, v44
	v_cvt_f32_i32_e32 v37, v46
	v_cvt_f32_i32_e32 v44, v177
	v_cvt_f32_i32_e32 v45, v176
	v_cvt_f32_i32_e32 v46, v179
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v138, v138, v42 :: v_dual_add_f32 v141, v141, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v150, v150, v40 :: v_dual_add_f32 v143, v143, v45
	v_add_f32_e32 v142, v142, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_add_f32 v144, v144, v44 :: v_dual_mov_b32 v135, v141
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v159, v159, v16 :: v_dual_add_f32 v84, v84, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v83, v83, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v5
	v_cvt_f32_i32_e32 v0, v4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v80, v80, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v9
	v_cvt_f32_i32_e32 v4, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v76, v76, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v7
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v75, v75, v0
	v_dual_add_f32 v152, v152, v24 :: v_dual_add_f32 v139, v139, v37
	v_dual_add_f32 v140, v140, v36 :: v_dual_add_f32 v223, v223, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_f32_e32 v74, v74, v1
	scratch_load_b64 v[0:1], off, off offset:40 ; 8-byte Folded Reload
	scratch_store_b64 off, v[143:144], off offset:72 ; 8-byte Folded Spill
	v_add_f32_e32 v79, v79, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v6
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v73, v73, v2
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v12, v12, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v14
	scratch_load_b64 v[13:14], off, off offset:152 ; 8-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v11, v11, v10
	scratch_store_b64 off, v[11:12], off offset:8 ; 8-byte Folded Spill
	scratch_load_b64 v[10:11], off, off offset:144 ; 8-byte Folded Reload
	v_add_f32_e32 v158, v158, v17
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v12, v183
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v1, v1, v3 :: v_dual_add_f32 v0, v0, v4
	scratch_store_b64 off, v[0:1], off offset:40 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v11, v11, v18 :: v_dual_add_f32 v10, v10, v19
	scratch_store_b64 off, v[10:11], off offset:144 ; 8-byte Folded Spill
	scratch_load_b64 v[10:11], off, off offset:16 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v11, v11, v20 :: v_dual_add_f32 v10, v10, v21
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[27:28], off offset:184
	scratch_store_b64 off, v[10:11], off offset:16
	scratch_load_b64 v[10:11], off, off offset:24 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v11, v11, v22 :: v_dual_add_f32 v10, v10, v23
	scratch_store_b64 off, v[10:11], off offset:24 ; 8-byte Folded Spill
	scratch_load_b64 v[10:11], off, off     ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v11, v11, v34 :: v_dual_add_f32 v10, v10, v35
	scratch_store_b64 off, v[10:11], off    ; 8-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v181
	v_cvt_f32_i32_e32 v11, v180
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v14, v14, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v182
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v13, v13, v11 :: v_dual_mov_b32 v136, v142
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v185
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v131, v131, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v184
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v132, v132, v12
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v12, v187
	scratch_store_b64 off, v[13:14], off offset:152 ; 8-byte Folded Spill
	v_cvt_f32_i32_e32 v13, v186
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v235, v235, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v188
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v236, v236, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v189
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v121, v121, v13
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v13, v193
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v115, v115, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v192
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v122, v122, v12
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v12, v190
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v116, v116, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v191
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v107, v107, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v194
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v113, v113, v12
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v12, v197
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v114, v114, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v195
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v105, v105, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v198
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v108, v108, v13
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v13, v196
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v106, v106, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v199
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v95, v95, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v10, v202
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v100, v100, v12
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v12, v200
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v96, v96, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v11, v201
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v99, v99, v13
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v13, v203
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v91, v91, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v87, v87, v10 :: v_dual_add_f32 v92, v92, v11
	v_add_f32_e32 v88, v88, v13
	s_branch .LBB0_14
.LBB0_13:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	scratch_load_b32 v77, off, off offset:492 ; 4-byte Folded Reload
	v_dual_mov_b32 v135, v141 :: v_dual_mov_b32 v136, v142
	scratch_store_b64 off, v[143:144], off offset:72 ; 8-byte Folded Spill
.LBB0_14:
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(6)
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v222, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v3, 0, 1, s2
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v196, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v3
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	v_mov_b32_e32 v177, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v181, 0
	v_mov_b32_e32 v189, 0
	v_mov_b32_e32 v3, 0
	scratch_store_b32 off, v39, off offset:212 ; 4-byte Folded Spill
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v37, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v5, 0 :: v_dual_add_nc_u32 v0, s30, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v240, v0 offset:1088
	ds_load_u8_d16 v241, v0 offset:1152
	ds_load_u8_d16 v13, v0 offset:1040
	ds_load_u8_d16 v14, v0 offset:1104
	ds_load_u8_d16 v129, v0 offset:1056
	ds_load_u8_d16 v2, v0 offset:1120
	ds_load_u8_d16 v1, v0
	ds_load_u8_d16 v35, v0 offset:1984
	ds_load_u8_d16 v16, v0 offset:1936
	s_waitcnt lgkmcnt(9)
	ds_load_u8_d16 v24, v0 offset:2000
	ds_load_u8_d16 v4, v0 offset:1952
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v2, off offset:568 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1136
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:612 ; 4-byte Folded Spill
	ds_load_u8_d16 v4, v0 offset:2016
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:432 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1072
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:616 ; 4-byte Folded Spill
	v_mov_b32_e32 v4, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:436 ; 4-byte Folded Spill
	ds_load_u8_d16 v244, v0 offset:1216
	ds_load_u8_d16 v247, v0 offset:1280
	ds_load_u8_d16 v175, v0 offset:1168
	ds_load_u8_d16 v194, v0 offset:1232
	ds_load_u8_d16 v2, v0 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:520 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:524 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1264
	scratch_store_b32 off, v1, off offset:620 ; 4-byte Folded Spill
	ds_load_u8_d16 v190, v0 offset:16
	ds_load_u8_d16 v206, v0 offset:32
	ds_load_u8_d16 v219, v0 offset:48
	ds_load_u8_d16 v1, v0 offset:64
	s_waitcnt lgkmcnt(4)
	scratch_store_b32 off, v2, off offset:440 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1200
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:624 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:80
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:444 ; 4-byte Folded Spill
	ds_load_u8_d16 v32, v0 offset:1344
	ds_load_u8_d16 v9, v0 offset:1408
	ds_load_u8_d16 v53, v0 offset:1296
	ds_load_u8_d16 v54, v0 offset:1360
	ds_load_u8_d16 v2, v0 offset:1312
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v1, off offset:600 ; 4-byte Folded Spill
	ds_load_u8_d16 v207, v0 offset:96
	ds_load_u8_d16 v221, v0 offset:112
	ds_load_u8_d16 v229, v0 offset:128
	ds_load_u8_d16 v230, v0 offset:192
	ds_load_u8_d16 v55, v0 offset:144
	ds_load_u8_d16 v33, v0 offset:208
	ds_load_u8_d16 v210, v0 offset:160
	ds_load_u8_d16 v211, v0 offset:224
	ds_load_u8_d16 v225, v0 offset:240
	ds_load_u8_d16 v226, v0 offset:176
	ds_load_u8_d16 v25, v0 offset:256
	ds_load_u8_d16 v26, v0 offset:320
	ds_load_u8_d16 v56, v0 offset:272
	ds_load_u8_d16 v41, v0 offset:336
	ds_load_u8_d16 v214, v0 offset:288
	ds_load_u8_d16 v215, v0 offset:352
	ds_load_u8_d16 v227, v0 offset:368
	ds_load_u8_d16 v228, v0 offset:304
	ds_load_u8_d16 v248, v0 offset:384
	ds_load_u8_d16 v31, v0 offset:448
	ds_load_u8_d16 v42, v0 offset:400
	ds_load_u8_d16 v172, v0 offset:464
	ds_load_u8_d16 v130, v0 offset:416
	ds_load_u8_d16 v254, v0 offset:480
	ds_load_u8_d16 v1, v0 offset:496
	s_waitcnt lgkmcnt(25)
	scratch_store_b32 off, v2, off offset:544 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1376
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:424 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:432
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:548 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:464 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1328
	scratch_store_b32 off, v1, off offset:428 ; 4-byte Folded Spill
	ds_load_u8_d16 v10, v0 offset:512
	ds_load_u8_d16 v11, v0 offset:576
	ds_load_u8_d16 v173, v0 offset:528
	ds_load_u8_d16 v52, v0 offset:592
	ds_load_u8_d16 v1, v0 offset:544
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v2, off offset:468 ; 4-byte Folded Spill
	ds_load_u8_d16 v18, v0 offset:1472
	ds_load_u8_d16 v12, v0 offset:1536
	ds_load_u8_d16 v231, v0 offset:1424
	ds_load_u8_d16 v233, v0 offset:1488
	ds_load_u8_d16 v2, v0 offset:1440
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v1, off offset:528 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:608
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:560 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1504
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:532 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:624
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:564 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1520
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:448 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:560
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:472 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1456
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:452 ; 4-byte Folded Spill
	ds_load_u8_d16 v15, v0 offset:640
	ds_load_u8_d16 v22, v0 offset:704
	ds_load_u8_d16 v156, v0 offset:656
	ds_load_u8_d16 v174, v0 offset:720
	ds_load_u8_d16 v1, v0 offset:672
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v2, off offset:476 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v0 offset:1600
	ds_load_u8_d16 v23, v0 offset:1664
	ds_load_u8_d16 v234, v0 offset:1552
	ds_load_u8_d16 v27, v0 offset:1616
	ds_load_u8_d16 v2, v0 offset:1568
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v1, off offset:536 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:736
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:576 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1632
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:540 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:752
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:584 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1648
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:456 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:688
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:496 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1584
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:460 ; 4-byte Folded Spill
	ds_load_u8_d16 v203, v0 offset:768
	ds_load_u8_d16 v204, v0 offset:832
	ds_load_u8_d16 v20, v0 offset:784
	ds_load_u8_d16 v176, v0 offset:848
	ds_load_u8_d16 v255, v0 offset:800
	ds_load_u8_d16 v128, v0 offset:864
	ds_load_u8_d16 v1, v0 offset:880
	s_waitcnt lgkmcnt(7)
	scratch_store_b32 off, v2, off offset:500 ; 4-byte Folded Spill
	ds_load_u8_d16 v201, v0 offset:1728
	ds_load_u8_d16 v202, v0 offset:1792
	ds_load_u8_d16 v29, v0 offset:1680
	ds_load_u8_d16 v30, v0 offset:1744
	ds_load_u8_d16 v2, v0 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:588 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:592 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1776
	scratch_store_b32 off, v1, off offset:480 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:816
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:504 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1712
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:484 ; 4-byte Folded Spill
	ds_load_u8_d16 v251, v0 offset:896
	ds_load_u8_d16 v34, v0 offset:960
	ds_load_u8_d16 v28, v0 offset:1024
	ds_load_u8_d16 v51, v0 offset:912
	ds_load_u8_d16 v8, v0 offset:976
	ds_load_u8_d16 v1, v0 offset:928
	s_waitcnt lgkmcnt(6)
	scratch_store_b32 off, v2, off offset:508 ; 4-byte Folded Spill
	ds_load_u8_d16 v239, v0 offset:1856
	ds_load_u8_d16 v232, v0 offset:1920
	ds_load_u8_d16 v242, v0 offset:1808
	ds_load_u8_d16 v243, v0 offset:1872
	ds_load_u8_d16 v2, v0 offset:1824
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v1, off offset:572 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:992
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:604 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:608 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1904
	scratch_store_b32 off, v1, off offset:580 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:944
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:512 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v0 offset:1840
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v1, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s30, v68
	ds_load_u8_d16 v0, v0 offset:1968
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v188, 0
	ds_load_u8_d16 v1, v1
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:596
	scratch_store_b32 off, v0, off offset:196
	scratch_store_b32 off, v2, off offset:516
	scratch_load_b32 v2, off, off offset:56 ; 4-byte Folded Reload
	v_mov_b32_e32 v0, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s30, v2
	ds_load_u8_d16 v1, v2
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:552 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	v_perm_b32 v0, v203, v204, 0xc0c0004
	v_perm_b32 v1, v251, v34, 0xc0c0004
	v_perm_b32 v2, v10, v11, 0xc0c0004
	v_perm_b32 v4, v15, v22, 0xc0c0004
	v_perm_b32 v5, v51, v8, 0xc0c0004
	v_perm_b32 v6, v173, v52, 0xc0c0004
	v_lshl_or_b32 v3, v1, 16, v0
	v_perm_b32 v0, v25, v26, 0xc0c0004
	v_perm_b32 v1, v248, v31, 0xc0c0004
	v_lshl_or_b32 v2, v4, 16, v2
	v_perm_b32 v7, v156, v174, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	v_lshl_or_b32 v1, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:620
	scratch_load_b32 v4, off, off offset:624
	v_lshl_or_b32 v38, v7, 16, v6
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v50, s11 :: v_dual_mov_b32 v49, s10
	v_dual_mov_b32 v48, s9 :: v_dual_mov_b32 v47, s8
	v_dual_mov_b32 v46, s7 :: v_dual_mov_b32 v45, s6
	v_dual_mov_b32 v44, s5 :: v_dual_mov_b32 v43, s4
	v_mov_b32_e32 v153, v223
	v_dual_mov_b32 v127, v77 :: v_dual_mov_b32 v154, v224
	v_mov_b16_e64 v78.l, v206.l
	v_mov_b16_e64 v196.l, v207.l
	v_mov_b16_e64 v197.l, v210.l
	v_mov_b16_e64 v198.l, v211.l
	v_mov_b16_e64 v40.l, v219.l
	v_mov_b16_e64 v199.l, v214.l
	v_mov_b16_e64 v200.l, v215.l
	v_mov_b16_e64 v141.l, v221.l
	v_mov_b16_e64 v142.l, v225.l
	v_mov_b16_e64 v155.l, v226.l
	v_mov_b16_e64 v157.l, v227.l
	v_mov_b16_e64 v195.l, v228.l
	v_perm_b32 v19, v232, v35, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v4, 0xc0c0004
	v_perm_b32 v4, v229, v230, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v0, v4, 16, v0
	v_perm_b32 v4, v20, v176, 0xc0c0004
	v_lshl_or_b32 v39, v5, 16, v4
	v_perm_b32 v4, v56, v41, 0xc0c0004
	v_perm_b32 v5, v42, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v5, 16, v4
	scratch_load_b32 v4, off, off offset:600 ; 4-byte Folded Reload
	v_perm_b32 v5, v55, v33, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v4, v190, v4, 0xc0c0004
	v_lshl_or_b32 v36, v5, 16, v4
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:572
	scratch_load_b32 v6, off, off offset:580
	v_perm_b32 v4, v255, v128, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:528
	scratch_load_b32 v7, off, off offset:532
	v_lshl_or_b32 v60, v5, 16, v4
	v_perm_b32 v4, v214, v215, 0xc0c0004
	v_perm_b32 v5, v130, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v5, 16, v4
	v_perm_b32 v4, v206, v207, 0xc0c0004
	v_perm_b32 v5, v210, v211, 0xc0c0004
	v_lshl_or_b32 v57, v5, 16, v4
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:480
	scratch_load_b32 v5, off, off offset:484
	s_waitcnt vmcnt(2)
	v_perm_b32 v6, v6, v7, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:536
	scratch_load_b32 v17, off, off offset:540
	s_waitcnt vmcnt(2)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v7, v7, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v7, 16, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:488
	scratch_load_b32 v6, off, off offset:596
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:448
	scratch_load_b32 v7, off, off offset:452
	v_lshl_or_b32 v64, v5, 16, v4
	v_perm_b32 v4, v228, v227, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:456
	scratch_load_b32 v17, off, off offset:460
	s_waitcnt vmcnt(0)
	v_perm_b32 v7, v17, v7, 0xc0c0004
	v_mov_b32_e32 v17, v171
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v63, v7, 16, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:424
	scratch_load_b32 v6, off, off offset:428
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v5, 16, v4
	v_perm_b32 v4, v219, v221, 0xc0c0004
	v_perm_b32 v5, v226, v225, 0xc0c0004
	v_lshl_or_b32 v61, v5, 16, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v4, s3, v77
	v_mov_b16_e64 v77.l, v255.l
	v_mov_b16_e64 v255.l, v190.l
	ds_load_b128 v[65:68], v4
	ds_load_b128 v[168:171], v4 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[160:167], v[65:68], v[0:3], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[178:185], v[168:171], v[0:3], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[186:193], v[65:68], v[36:39], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[168:171], v[36:39], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[205:212], v[65:68], v[57:60], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[213:220], v[168:171], v[57:60], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[221:228], v[65:68], v[61:64], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[168:171], v[61:64], v[43:50] neg_lo:[1,1,0]
	v_mov_b32_e32 v171, v17
	v_perm_b32 v17, v202, v239, 0xc0c0004
	v_perm_b32 v36, v12, v21, 0xc0c0004
	v_perm_b32 v37, v23, v201, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v39, v19, 16, v17
	v_perm_b32 v17, v247, v32, 0xc0c0004
	v_perm_b32 v19, v9, v18, 0xc0c0004
	v_lshl_or_b32 v38, v37, 16, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v19, 16, v17
	v_perm_b32 v17, v28, v240, 0xc0c0004
	v_perm_b32 v19, v241, v244, 0xc0c0004
	v_lshl_or_b32 v36, v19, 16, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v17, s3, v171
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v19, v16, v24, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[57:60], v17
	ds_load_b128 v[61:64], v17 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v17, v242, v243, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[160:167], v[57:60], v[36:39], v[160:167] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[178:185], v[61:64], v[36:39], v[178:185] neg_lo:[1,1,0]
	v_perm_b32 v36, v234, v27, 0xc0c0004
	v_perm_b32 v37, v29, v30, 0xc0c0004
	v_lshl_or_b32 v39, v19, 16, v17
	v_perm_b32 v17, v53, v54, 0xc0c0004
	v_perm_b32 v19, v231, v233, 0xc0c0004
	v_cvt_f32_i32_e32 v68, v178
	v_lshl_or_b32 v38, v37, 16, v36
	v_cvt_f32_i32_e32 v178, v179
	v_cvt_f32_i32_e32 v180, v180
	v_lshl_or_b32 v37, v19, 16, v17
	v_perm_b32 v17, v13, v14, 0xc0c0004
	v_perm_b32 v19, v175, v194, 0xc0c0004
	v_cvt_f32_i32_e32 v179, v181
	v_cvt_f32_i32_e32 v144, v182
	v_cvt_f32_i32_e32 v181, v183
	v_cvt_f32_i32_e32 v182, v184
	v_lshl_or_b32 v36, v19, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:604
	scratch_load_b32 v19, off, off offset:608
	v_cvt_f32_i32_e32 v185, v185
	v_wmma_i32_16x16x16_iu8 v[186:193], v[57:60], v[36:39], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[61:64], v[36:39], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v143, v186
	v_cvt_f32_i32_e32 v184, v187
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v67, v189
	v_cvt_f32_i32_e32 v65, v191
	v_cvt_f32_i32_e32 v66, v192
	v_cvt_f32_i32_e32 v168, v0
	v_cvt_f32_i32_e32 v187, v1
	v_cvt_f32_i32_e32 v192, v3
	v_cvt_f32_i32_e32 v186, v4
	v_cvt_f32_i32_e32 v189, v5
	v_cvt_f32_i32_e32 v191, v6
	v_cvt_f32_i32_e32 v0, v7
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v17, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:612
	scratch_load_b32 v36, off, off offset:616
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v19, v36, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:576
	scratch_load_b32 v37, off, off offset:584
	v_lshl_or_b32 v39, v19, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:544
	scratch_load_b32 v19, off, off offset:548
	s_waitcnt vmcnt(2)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:588
	scratch_load_b32 v38, off, off offset:592
	s_waitcnt vmcnt(2)
	v_perm_b32 v17, v17, v19, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v37, 16, v36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:560
	scratch_load_b32 v36, off, off offset:564
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v19, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v19, 16, v17
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v17, off, off offset:568
	scratch_load_b32 v19, off, off offset:520
	scratch_load_b32 v36, off, off offset:524
	s_waitcnt vmcnt(2)
	v_perm_b32 v17, v129, v17, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v19, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v19, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:512
	scratch_load_b32 v19, off, off offset:516
	v_wmma_i32_16x16x16_iu8 v[205:212], v[57:60], v[36:39], v[205:212] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[213:220], v[61:64], v[36:39], v[213:220] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v206
	v_mov_b16_e64 v206.l, v78.l
	v_cvt_f32_i32_e32 v3, v208
	v_cvt_f32_i32_e32 v208, v210
	v_mov_b16_e64 v210.l, v197.l
	v_cvt_f32_i32_e32 v4, v212
	v_cvt_f32_i32_e32 v212, v213
	v_cvt_f32_i32_e32 v5, v214
	v_mov_b16_e64 v214.l, v199.l
	v_cvt_f32_i32_e32 v6, v215
	v_mov_b16_e64 v215.l, v200.l
	v_cvt_f32_i32_e32 v213, v217
	v_cvt_f32_i32_e32 v7, v218
	v_cvt_f32_i32_e32 v199, v162
	v_cvt_f32_i32_e32 v200, v163
	v_cvt_f32_i32_e32 v197, v165
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:552
	scratch_load_b32 v36, off, off offset:556
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v36, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:496
	scratch_load_b32 v37, off, off offset:500
	v_lshl_or_b32 v39, v19, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:464
	scratch_load_b32 v19, off, off offset:468
	s_waitcnt vmcnt(2)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:504
	scratch_load_b32 v38, off, off offset:508
	s_waitcnt vmcnt(2)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v37, 16, v36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:472
	scratch_load_b32 v36, off, off offset:476
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v36, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v19, 16, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:432
	scratch_load_b32 v19, off, off offset:436
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:440
	scratch_load_b32 v36, off, off offset:444
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v36, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v19, 16, v17
	v_cvt_f32_i32_e32 v17, v193
	v_cvt_f32_i32_e32 v193, v205
	v_cvt_f32_i32_e32 v205, v209
	v_cvt_f32_i32_e32 v209, v211
	v_wmma_i32_16x16x16_iu8 v[221:228], v[57:60], v[36:39], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[61:64], v[36:39], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v64, v188
	v_cvt_f32_i32_e32 v63, v190
	v_mov_b16_e64 v190.l, v255.l
	v_cvt_f32_i32_e32 v36, v221
	scratch_store_b32 off, v17, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v219
	v_mov_b16_e64 v219.l, v40.l
	v_cvt_f32_i32_e32 v40, v223
	v_cvt_f32_i32_e32 v59, v224
	v_mov_b32_e32 v224, v154
	v_mov_b16_e64 v255.l, v77.l
	v_mov_b32_e32 v77, v127
	v_cvt_f32_i32_e32 v188, v2
	v_cvt_f32_i32_e32 v2, v207
	v_mov_b16_e64 v207.l, v196.l
	v_mov_b16_e64 v211.l, v198.l
	v_cvt_f32_i32_e32 v19, v216
	v_cvt_f32_i32_e32 v38, v220
	scratch_store_b32 off, v36, off offset:212 ; 4-byte Folded Spill
	v_mov_b16_e64 v221.l, v141.l
	v_cvt_f32_i32_e32 v39, v222
	v_mov_b32_e32 v223, v153
	v_cvt_f32_i32_e32 v222, v225
	v_mov_b16_e64 v225.l, v142.l
	v_cvt_f32_i32_e32 v57, v226
	v_mov_b16_e64 v226.l, v155.l
	v_cvt_f32_i32_e32 v58, v227
	v_mov_b16_e64 v227.l, v157.l
	v_cvt_f32_i32_e32 v60, v228
	v_mov_b16_e64 v228.l, v195.l
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v61, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v62, v46
	v_cvt_f32_i32_e32 v44, v47
	v_cvt_f32_i32_e32 v46, v48
	v_cvt_f32_i32_e32 v47, v49
	v_cvt_f32_i32_e32 v48, v50
	v_cvt_f32_i32_e32 v195, v164
	v_cvt_f32_i32_e32 v196, v166
	v_cvt_f32_i32_e32 v198, v167
	v_cvt_f32_i32_e32 v36, v160
	v_cvt_f32_i32_e32 v37, v161
.LBB0_16:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 152-byte Folded Spill
	scratch_store_b32 off, v63, off offset:420
	scratch_store_b32 off, v48, off offset:408
	scratch_store_b32 off, v62, off offset:404
	scratch_store_b32 off, v47, off offset:400
	scratch_store_b32 off, v46, off offset:396
	scratch_store_b32 off, v45, off offset:392
	scratch_store_b32 off, v61, off offset:388
	scratch_store_b32 off, v44, off offset:384
	scratch_store_b32 off, v60, off offset:380
	scratch_store_b32 off, v43, off offset:376
	scratch_store_b32 off, v59, off offset:372
	scratch_store_b32 off, v58, off offset:368
	scratch_store_b32 off, v57, off offset:364
	scratch_store_b32 off, v40, off offset:360
	scratch_store_b32 off, v39, off offset:356
	scratch_store_b32 off, v38, off offset:352
	scratch_store_b32 off, v19, off offset:348
	scratch_store_b32 off, v17, off offset:344
	scratch_store_b32 off, v7, off offset:340
	scratch_store_b32 off, v6, off offset:336
	scratch_store_b32 off, v5, off offset:332
	scratch_store_b32 off, v4, off offset:328
	scratch_store_b32 off, v3, off offset:324
	scratch_store_b32 off, v2, off offset:320
	scratch_store_b32 off, v1, off offset:316
	scratch_store_b32 off, v0, off offset:304
	scratch_store_b64 off, v[139:140], off offset:104
	scratch_store_b64 off, v[223:224], off offset:96
	scratch_store_b64 off, v[149:150], off offset:88
	scratch_store_b64 off, v[147:148], off offset:256
	scratch_store_b64 off, v[137:138], off offset:80
	scratch_store_b64 off, v[133:134], off offset:248
	s_clause 0x4                            ; 40-byte Folded Spill
	scratch_store_b64 off, v[145:146], off offset:240
	scratch_store_b64 off, v[135:136], off offset:64
	scratch_store_b64 off, v[245:246], off offset:232
	scratch_store_b64 off, v[131:132], off offset:56
	scratch_store_b64 off, v[125:126], off offset:224
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v1, 0
	v_mov_b16_e64 v220.l, v130.l
	v_mov_b16_e64 v216.l, v129.l
	v_dual_mov_b32 v183, v68 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v2, 0
	v_mov_b32_e32 v141, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:200
	scratch_store_b32 off, v4, off offset:204
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v5, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_18
; %bb.17:
	v_perm_b32 v4, v15, v22, 0xc0c0004
	v_perm_b32 v9, v9, v18, 0xc0c0004
	v_perm_b32 v18, v28, v240, 0xc0c0004
	v_perm_b32 v22, v234, v27, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:572
	scratch_load_b32 v28, off, off offset:580
	v_perm_b32 v3, v251, v34, 0xc0c0004
	v_perm_b32 v12, v12, v21, 0xc0c0004
	v_perm_b32 v15, v23, v201, 0xc0c0004
	v_perm_b32 v21, v55, v33, 0xc0c0004
	v_perm_b32 v23, v29, v30, 0xc0c0004
	v_perm_b32 v33, v53, v54, 0xc0c0004
	v_perm_b32 v34, v231, v233, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s1, v171
	v_dual_mov_b32 v126, v67 :: v_dual_add_nc_u32 v1, s1, v77
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v23, v23, 16, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v22, v34, 16, v33
	v_mov_b32_e32 v77, v64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[57:60], v0 offset:4096
	ds_load_b128 v[61:64], v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v0, v10, v11, 0xc0c0004
	v_perm_b32 v17, v247, v32, 0xc0c0004
	v_perm_b32 v5, v25, v26, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b32_e32 v25, v158
	v_perm_b32 v6, v248, v31, 0xc0c0004
	v_dual_mov_b32 v31, v65 :: v_dual_mov_b32 v26, v159
	v_mov_b32_e32 v125, v66
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[65:68], v1 offset:4096
	ds_load_b128 v[157:160], v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v163, v4, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:620
	scratch_load_b32 v1, off, off offset:624
	v_lshl_or_b32 v166, v9, 16, v17
	scratch_load_b32 v17, off, off offset:600 ; 4-byte Folded Reload
	v_perm_b32 v10, v202, v239, 0xc0c0004
	v_perm_b32 v11, v232, v35, 0xc0c0004
	v_perm_b32 v2, v203, v204, 0xc0c0004
	v_mov_b32_e32 v127, v168
	v_perm_b32 v19, v241, v244, 0xc0c0004
	v_lshl_or_b32 v167, v15, 16, v12
	v_lshl_or_b32 v168, v11, 16, v10
	v_perm_b32 v9, v20, v176, 0xc0c0004
	v_perm_b32 v8, v51, v8, 0xc0c0004
	v_perm_b32 v10, v173, v52, 0xc0c0004
	v_perm_b32 v11, v156, v174, 0xc0c0004
	v_perm_b32 v12, v56, v41, 0xc0c0004
	v_perm_b32 v15, v42, v172, 0xc0c0004
	v_lshl_or_b32 v164, v3, 16, v2
	v_lshl_or_b32 v162, v6, 16, v5
	v_lshl_or_b32 v165, v19, 16, v18
	v_lshl_or_b32 v20, v8, 16, v9
	v_lshl_or_b32 v19, v11, 16, v10
	v_lshl_or_b32 v18, v15, 16, v12
	v_perm_b32 v16, v16, v24, 0xc0c0004
	v_perm_b32 v35, v13, v14, 0xc0c0004
	v_perm_b32 v38, v175, v194, 0xc0c0004
	v_mov_b32_e32 v133, v193
	v_perm_b32 v40, v206, v207, 0xc0c0004
	v_perm_b32 v39, v220, v254, 0xc0c0004
	v_perm_b32 v41, v210, v211, 0xc0c0004
	v_dual_mov_b32 v129, v188 :: v_dual_mov_b32 v134, v213
	v_perm_b32 v53, v226, v225, 0xc0c0004
	v_dual_mov_b32 v131, v191 :: v_dual_mov_b32 v132, v192
	v_mov_b32_e32 v32, v186
	v_mov_b32_e32 v78, v187
	v_mov_b32_e32 v130, v189
	v_mov_b32_e32 v136, v222
	s_waitcnt vmcnt(3)
	v_perm_b32 v33, v27, v28, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:528
	scratch_load_b32 v28, off, off offset:532
	s_waitcnt vmcnt(3)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	v_perm_b32 v1, v229, v230, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v17, v190, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v161, v1, 16, v0
	v_dual_mov_b32 v0, s4 :: v_dual_mov_b32 v1, s5
	v_mov_b32_e32 v6, s10
	v_dual_mov_b32 v2, s6 :: v_dual_mov_b32 v3, s7
	v_dual_mov_b32 v4, s8 :: v_dual_mov_b32 v5, s9
	v_mov_b32_e32 v7, s11
	v_lshl_or_b32 v17, v21, 16, v17
	v_perm_b32 v21, v242, v243, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[157:160], v[161:164], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[157:160], v[17:20], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v24, v16, 16, v21
	v_lshl_or_b32 v21, v38, 16, v35
	v_perm_b32 v16, v255, v128, 0xc0c0004
	v_perm_b32 v38, v214, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[186:193], v[65:68], v[161:164], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[61:64], v[165:168], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[61:64], v[21:24], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[186:193], v[57:60], v[165:168], v[186:193] neg_lo:[1,1,0]
	v_mov_b32_e32 v168, v127
	v_cvt_f32_i32_e32 v177, v43
	v_cvt_f32_i32_e32 v167, v45
	v_cvt_f32_i32_e32 v165, v47
	v_cvt_f32_i32_e32 v166, v48
	v_cvt_f32_i32_e32 v153, v49
	v_cvt_f32_i32_e32 v155, v50
	v_cvt_f32_i32_e32 v154, v186
	v_mov_b32_e32 v186, v32
	v_cvt_f32_i32_e32 v163, v189
	v_mov_b32_e32 v189, v130
	v_cvt_f32_i32_e32 v161, v191
	v_cvt_f32_i32_e32 v162, v192
	v_cvt_f32_i32_e32 v164, v193
	v_cvt_f32_i32_e32 v217, v10
	v_cvt_f32_i32_e32 v218, v11
	v_cvt_f32_i32_e32 v43, v12
	v_cvt_f32_i32_e32 v45, v14
	v_cvt_f32_i32_e32 v47, v15
	v_mov_b32_e32 v191, v131
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v27, v28, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:536
	scratch_load_b32 v28, off, off offset:540
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v27, v28, 0xc0c0004
	v_dual_mov_b32 v27, v205 :: v_dual_mov_b32 v28, v208
	v_wmma_i32_16x16x16_iu8 v[201:208], v[65:68], v[17:20], v[0:7] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:604
	scratch_load_b32 v29, off, off offset:608
	v_lshl_or_b32 v19, v33, 16, v16
	v_lshl_or_b32 v18, v35, 16, v34
	v_lshl_or_b32 v17, v39, 16, v38
	v_lshl_or_b32 v16, v41, 16, v40
	v_wmma_i32_16x16x16_iu8 v[201:208], v[57:60], v[21:24], v[201:208] neg_lo:[1,1,0]
	v_dual_mov_b32 v192, v132 :: v_dual_mov_b32 v193, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v49, v202
	v_cvt_f32_i32_e32 v50, v203
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v48, v205
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v20, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:612
	scratch_load_b32 v30, off, off offset:616
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v29, v30, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:576
	scratch_load_b32 v30, off, off offset:584
	v_lshl_or_b32 v41, v33, 16, v20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:480
	scratch_load_b32 v33, off, off offset:484
	s_waitcnt vmcnt(2)
	v_perm_b32 v34, v29, v30, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:588
	scratch_load_b32 v30, off, off offset:592
	s_waitcnt vmcnt(2)
	v_perm_b32 v20, v33, v20, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v29, v30, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:544
	scratch_load_b32 v30, off, off offset:548
	v_lshl_or_b32 v40, v35, 16, v34
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:488
	scratch_load_b32 v34, off, off offset:596
	s_waitcnt vmcnt(2)
	v_perm_b32 v38, v29, v30, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:560
	scratch_load_b32 v30, off, off offset:564
	s_waitcnt vmcnt(2)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:448
	scratch_load_b32 v35, off, off offset:452
	s_waitcnt vmcnt(2)
	v_perm_b32 v39, v29, v30, 0xc0c0004
	scratch_load_b32 v29, off, off offset:568 ; 4-byte Folded Reload
	v_lshl_or_b32 v39, v39, 16, v38
	s_waitcnt vmcnt(1)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v42, v216, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:520
	scratch_load_b32 v30, off, off offset:524
	s_waitcnt vmcnt(0)
	v_perm_b32 v51, v29, v30, 0xc0c0004
	v_dual_mov_b32 v29, v209 :: v_dual_mov_b32 v30, v212
	v_wmma_i32_16x16x16_iu8 v[209:216], v[157:160], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v38, v51, 16, v42
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v51, off, off offset:424
	scratch_load_b32 v52, off, off offset:428
	scratch_load_b32 v35, off, off offset:456
	scratch_load_b32 v42, off, off offset:460
	v_mov_b32_e32 v205, v27
	v_wmma_i32_16x16x16_iu8 v[209:216], v[61:64], v[38:41], v[209:216] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v147, v212
	v_cvt_f32_i32_e32 v127, v215
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v130, v216
	v_mov_b32_e32 v212, v30
	s_waitcnt vmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	v_perm_b32 v52, v219, v221, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[219:226], v[65:68], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v19, v33, 16, v20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:512
	scratch_load_b32 v33, off, off offset:516
	s_waitcnt vmcnt(2)
	v_perm_b32 v35, v42, v35, 0xc0c0004
	v_perm_b32 v42, v228, v227, 0xc0c0004
	v_lshl_or_b32 v16, v53, 16, v52
	v_wmma_i32_16x16x16_iu8 v[219:226], v[57:60], v[38:41], v[219:226] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v40, v46
	v_lshl_or_b32 v18, v35, 16, v34
	v_lshl_or_b32 v17, v51, 16, v42
	v_cvt_f32_i32_e32 v39, v187
	v_mov_b32_e32 v187, v78
	v_cvt_f32_i32_e32 v38, v190
	v_cvt_f32_i32_e32 v46, v201
	v_wmma_i32_16x16x16_iu8 v[227:234], v[157:160], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[65:68], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_dual_mov_b32 v159, v26 :: v_dual_mov_b32 v158, v25
	v_dual_mov_b32 v67, v126 :: v_dual_mov_b32 v66, v125
	v_mov_b32_e32 v65, v31
	v_cvt_f32_i32_e32 v17, v44
	v_cvt_f32_i32_e32 v160, v188
	v_mov_b32_e32 v188, v129
	v_cvt_f32_i32_e32 v157, v8
	v_cvt_f32_i32_e32 v19, v9
	v_cvt_f32_i32_e32 v44, v13
	v_cvt_f32_i32_e32 v125, v211
	v_cvt_f32_i32_e32 v126, v214
	v_cvt_f32_i32_e32 v129, v219
	v_cvt_f32_i32_e32 v132, v220
	v_cvt_f32_i32_e32 v133, v221
	v_cvt_f32_i32_e32 v137, v222
	v_mov_b32_e32 v222, v136
	v_cvt_f32_i32_e32 v131, v223
	v_cvt_f32_i32_e32 v150, v225
	v_cvt_f32_i32_e32 v138, v226
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v33, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:552
	scratch_load_b32 v34, off, off offset:556
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:496
	scratch_load_b32 v35, off, off offset:500
	v_lshl_or_b32 v54, v33, 16, v20
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:504
	scratch_load_b32 v42, off, off offset:508
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v42, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:464
	scratch_load_b32 v51, off, off offset:468
	s_waitcnt vmcnt(0)
	v_perm_b32 v42, v51, v42, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:472
	scratch_load_b32 v52, off, off offset:476
	s_waitcnt vmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:432
	scratch_load_b32 v53, off, off offset:436
	s_waitcnt vmcnt(0)
	v_perm_b32 v55, v53, v52, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:440
	scratch_load_b32 v53, off, off offset:444
	s_waitcnt vmcnt(0)
	v_perm_b32 v56, v53, v52, 0xc0c0004
	v_lshl_or_b32 v53, v35, 16, v34
	v_lshl_or_b32 v52, v51, 16, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v56, 16, v55
	v_wmma_i32_16x16x16_iu8 v[0:7], v[57:60], v[51:54], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[61:64], v[51:54], v[227:234] neg_lo:[1,1,0]
	v_mov_b32_e32 v64, v77
	v_cvt_f32_i32_e32 v59, v204
	v_cvt_f32_i32_e32 v57, v206
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v58, v207
	v_cvt_f32_i32_e32 v61, v208
	v_mov_b32_e32 v208, v28
	v_cvt_f32_i32_e32 v60, v209
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v3
	v_mov_b32_e32 v209, v29
	v_cvt_f32_i32_e32 v63, v210
	v_cvt_f32_i32_e32 v62, v213
	v_mov_b32_e32 v213, v134
	v_cvt_f32_i32_e32 v134, v224
	v_cvt_f32_i32_e32 v136, v227
	v_cvt_f32_i32_e32 v139, v228
	v_cvt_f32_i32_e32 v140, v229
	v_cvt_f32_i32_e32 v142, v230
	v_cvt_f32_i32_e32 v78, v231
	v_cvt_f32_i32_e32 v149, v232
	v_cvt_f32_i32_e32 v141, v233
	v_cvt_f32_i32_e32 v68, v234
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v2, v2
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v5, v7
.LBB0_18:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:436
	scratch_store_b32 off, v1, off offset:432
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v0, v252, v36 :: v_dual_add_f32 v1, v253, v37
	v_mov_b32_e32 v242, v50
	v_mov_b32_e32 v232, v2
	v_mov_b32_e32 v204, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v252, v0, s2
	v_cndmask_b32_e64 v51, v253, v1, s2
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	v_mov_b32_e32 v202, v5
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	v_dual_mov_b32 v172, v78 :: v_dual_add_f32 v11, v159, v39
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s0, s28, s15
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v12, v158, v154
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s10
	v_mov_b32_e32 v243, v63
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v63, off, off offset:312
	scratch_load_b64 v[254:255], off, off offset:264
	v_dual_mov_b32 v203, v4 :: v_dual_add_f32 v4, v249, v165
	v_mov_b32_e32 v201, v139
	v_mov_b32_e32 v171, v141
	v_mov_b32_e32 v253, v133
	v_mov_b32_e32 v77, v138
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v249, v4, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v19, v152, v19
	v_mov_b32_e32 v173, v46
	v_mov_b32_e32 v175, v72
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v138, v152, v19, s2
	v_mov_b32_e32 v152, v45
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 1, v1
	v_mov_b32_e32 v6, v1
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	v_and_b32_e32 v0, 28, v0
	s_waitcnt vmcnt(2)
	v_lshl_add_u32 v2, v63, 2, 0
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 32, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v13, v2, v1, v0
	scratch_load_b64 v[2:3], off, off offset:40 ; 8-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v2, v177
	v_add_f32_e32 v1, v3, v17
	v_mov_b32_e32 v177, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v2, v0, s2
	v_cndmask_b32_e64 v18, v3, v1, s2
	scratch_load_b64 v[2:3], off, off offset:184 ; 8-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v0, v254, v199 :: v_dual_add_f32 v1, v255, v200
	v_mov_b32_e32 v252, v131
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v254, v0, s2
	scratch_load_b32 v254, off, off offset:192 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v52, v255, v1, s2
	v_mov_b32_e32 v255, v134
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v0, v2, v167 :: v_dual_add_f32 v1, v3, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v2, v0, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v0, v123, v195
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v3, v1, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v3, v250, v166
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v1, v124, v197 :: v_dual_add_f32 v2, v237, v196
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v145, v123, v0, s2
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s29, v254
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v148, v250, v3, s2
	v_cndmask_b32_e64 v146, v124, v1, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v1, v238, v198
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v3, s28, v6
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v139, v237, v2, s2
	v_mov_b32_e32 v250, v129
	v_cndmask_b32_e64 v53, v238, v1, s2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v2, 1, v3
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v5, 32, v0
	v_or_b32_e32 v4, 64, v0
	v_or_b32_e32 v1, 0x60, v0
	s_clause 0x3
	buffer_load_u16 v14, v0, s[8:11], 0 offen
	buffer_load_u16 v141, v5, s[8:11], 0 offen
	buffer_load_u16 v239, v4, s[8:11], 0 offen
	buffer_load_u16 v251, v1, s[8:11], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v1, s0, v6, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v0, v2, s[8:11], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v197, v112
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v254, s15, v254
	s_mul_i32 s29, s29, s15
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v134, 16, v14
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v13, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[29:30], off, off offset:128
	scratch_load_b64 v[25:26], off, off offset:8
	scratch_load_b64 v[39:40], off, off offset:144
	scratch_load_b64 v[27:28], off, off offset:16
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[31:32], off, off offset:136
	scratch_load_b64 v[33:34], off, off offset:176
	scratch_load_b64 v[41:42], off, off offset:168
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(7)
	v_add_f32_e32 v5, v30, v181
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(6)
	v_add_f32_e32 v10, v25, v153
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v29, v144 :: v_dual_mov_b32 v181, v127
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(4)
	v_add_f32_e32 v24, v27, v38
	scratch_load_b64 v[37:38], off, off offset:24 ; 8-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v0, v31, v183 :: v_dual_add_f32 v23, v28, v161
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v3, v34, v179 :: v_dual_add_f32 v4, v33, v180
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v7, v42, v185 :: v_dual_add_f32 v8, v41, v182
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v9, v26, v155
	v_dual_add_f32 v21, v40, v163 :: v_dual_add_f32 v22, v39, v160
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v156, v25, v10, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v2, v32, v178 :: v_dual_lshlrev_b32 v25, 16, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v154, v26, v9, s2
	v_cndmask_b32_e64 v160, v158, v12, s2
	v_cndmask_b32_e64 v163, v159, v11, s2
	v_mov_b32_e32 v185, v130
	v_cndmask_b32_e64 v125, v33, v4, s2
	v_cndmask_b32_e64 v130, v34, v3, s2
	v_cndmask_b32_e64 v34, v39, v22, s2
	v_cndmask_b32_e64 v161, v40, v21, s2
	v_dual_mov_b32 v178, v126 :: v_dual_mov_b32 v183, v132
	v_cndmask_b32_e64 v126, v29, v6, s2
	v_cndmask_b32_e64 v128, v30, v5, s2
	v_cndmask_b32_e64 v155, v27, v24, s2
	v_cndmask_b32_e64 v33, v28, v23, s2
	v_cndmask_b32_e64 v127, v41, v8, s2
	v_cndmask_b32_e64 v133, v42, v7, s2
	v_cndmask_b32_e64 v0, v31, v0, s2
	v_mov_b32_e32 v182, v147
	v_mov_b32_e32 v4, v142
	v_mov_b32_e32 v196, v111
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v162
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v162, v63, 1, 0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v35, v38, v164
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[21:24], v162
	ds_load_b128 v[9:12], v162 offset:16
	ds_load_b128 v[5:8], v162 offset:512
	ds_load_b128 v[164:167], v162 offset:528
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v13, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[245:246], off, off offset:32
	scratch_load_b64 v[169:170], off, off offset:120
	scratch_load_b64 v[248:249], off, off offset:248
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v129, v32, v2, s2
	scratch_load_b64 v[1:2], off, off       ; 8-byte Folded Reload
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_load_b128 v[25:28], v162
	ds_load_b128 v[29:32], v162 offset:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v147, v37, v36, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v36, v151, v157
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v153, v38, v35, s2
	v_mov_b32_e32 v78, v136
	v_mov_b32_e32 v176, v47
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v63, 1, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v13, v245, v143
	v_dual_add_f32 v35, v246, v184 :: v_dual_mov_b32 v184, v68
	v_mov_b32_e32 v68, v140
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v1, v217
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v131, v245, v13, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v13, v26, v134
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v132, v246, v35, s2
	v_cndmask_b32_e64 v136, v151, v36, s2
	v_cndmask_b32_e64 v123, v1, v14, s2
	v_mov_b32_e32 v1, v43
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v13, v18, v13
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v18, v2, v218 :: v_dual_mov_b32 v151, v44
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v190, 16, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v141, v49 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v124, v2, v18, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v233, v170, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v55, v22, v190
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[246:247], off, off offset:240
	scratch_load_b64 v[2:3], off, off offset:112
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v234, v169, v64 :: v_dual_mul_f32 v55, v132, v55
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v56, v21, v190
	scratch_load_b64 v[244:245], off, off offset:64 ; 8-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v211, v248, v168
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v56, v131, v56
	scratch_load_b64 v[131:132], off, off offset:80 ; 8-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v14, v14
	v_ldexp_f32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v14, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v18
	v_fma_f32 v35, -v18, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v19, v35, v19
	v_div_scale_f32 v35, vcc_lo, v13, v14, v13
	v_mov_b32_e32 v140, v137
	v_mul_f32_e32 v36, v35, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v18, v36, v35
	v_fmac_f32_e32 v36, v37, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v36, v35
	v_div_fmas_f32 v18, v18, v19, v36
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v19, v25, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v17, v17, v19
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v135, v18, v14, v13
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v13, v27, v134
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v13, v15, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v14, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v17
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v35
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v19, v19, v17
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v17, v19, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v36, v28, v134
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v137, v35, v19, v17
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v16, v16, v36 :: v_dual_mul_f32 v17, v30, v134
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v36, 0xbfb8aa3b, v16 :: v_dual_mul_f32 v17, v148, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v36, v36
	v_ldexp_f32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v36, v36, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v39, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v16, v36, v16
	v_mul_f32_e32 v40, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v37, v40, v39
	v_fmac_f32_e32 v40, v41, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v40, v39
	v_div_fmas_f32 v37, v37, v38, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v13
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v14, v14, v15
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v15, null, v14, v14, v13
	v_rcp_f32_e32 v18, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v15, v18, 1.0
	v_fmac_f32_e32 v18, v38, v18
	v_div_scale_f32 v38, vcc_lo, v13, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v39, v38, v18
	v_fma_f32 v40, -v15, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v18
	v_fma_f32 v15, -v15, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v15, v15, v18, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v148, v15, v14, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v13, v32, v134
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v19
	v_fma_f32 v38, -v19, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v39, v38, v35
	v_div_fixup_f32 v142, v37, v36, v16
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v16, v29, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v19, v39, v38
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v16, v20, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v39, v40, v35 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v16
	v_fma_f32 v19, -v19, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v19, v19, v35, v39
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v16
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v35
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v20, v20, v16
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v16, v20, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v36, v154, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v154, v19, v18, v17
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v13, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v13, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v13, null, v37, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v13
	v_fma_f32 v15, -v13, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v36, v37, v36
	v_mul_f32_e32 v38, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v13, v38, v15
	v_fmac_f32_e32 v38, v39, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v38, v15
	v_div_fmas_f32 v38, v13, v14, v38
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v13, v31, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v157, v38, v37, v36
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v39, v156, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v156, v35, v20, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v13, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v39
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v13, v13, v14
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v13, null, v40, v40, v39
	v_rcp_f32_e32 v14, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v13, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v39, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v17, v15, v14
	v_mov_b32_e32 v174, v71
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_add_f32_e32 v71, v99, v78
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v13, v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v14
	v_fma_f32 v13, -v13, v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v13, v14, v17
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_load_b128 v[17:20], v162 offset:512
	ds_load_b128 v[13:16], v162 offset:528
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v35, v18, v134
	v_dual_mul_f32 v36, v17, v134 :: v_dual_mul_f32 v35, v163, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v36, v160, v36
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v160, v41, v40, v39
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v39, v20, v134 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v39, v161, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_mul_f32_e32 v40, 0xbfb8aa3b, v39
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v35
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v43
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v42, v42, v35
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v43, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v35, v42, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v43, -v43, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v43, v43, v44, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v161, v43, v42, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v35, v19, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v35, v34, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v37
	v_mul_f32_e32 v34, 0xbfb8aa3b, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v38
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v37, v37, v36
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v38, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v38, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v38, -v38, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v44, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v40, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v45, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v39, v40, v39
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v41, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v46, v45
	v_div_fmas_f32 v41, v41, v44, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v35
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v42
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v42, v42, v35
	v_rcp_f32_e32 v43, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v34, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v35, v42, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v34, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v34, -v34, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v43, v34, v43, v45
	v_div_fixup_f32 v34, v38, v37, v36
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v36, v14, v134
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v216, v43, v42, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v35, v16, v134 :: v_dual_mul_f32 v36, v33, v36
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v153, v153, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v36
	v_mul_f32_e32 v35, 0xbfb8aa3b, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v37, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v33
	v_fma_f32 v44, -v33, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, vcc_lo, v36, v37, v36
	v_mul_f32_e32 v45, v44, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v33, v45, v44
	v_fmac_f32_e32 v45, v46, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v33, v45, v44
	v_div_fmas_f32 v38, v33, v38, v45
	v_div_fixup_f32 v33, v41, v40, v39
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v39, v13, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v219, v38, v37, v36
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v36, v15, v134
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v155, v155, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v36, v147, v36 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v155
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v162, 1.0, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v162, v162, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v155, v162, v155
	v_mul_f32_e32 v44, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v41
	v_fmac_f32_e32 v44, v45, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v41
	v_div_fmas_f32 v163, v39, v40, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v153
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v39
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v35, v35, v153
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v153, v35, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v40, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v37, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v38
	v_fma_f32 v41, -v38, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v36, v37, v36
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v38, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v42, v41
	v_div_fmas_f32 v38, v38, v40, v42
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v40, v26, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v40, v138, v40
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v43, v25, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v43, v136, v43
	v_mov_b32_e32 v136, v48
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
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
	v_fma_f32 v49, -v45, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v49, v5, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v45, v48, v47
	v_div_fixup_f32 v47, v39, v35, v153
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v35, v22, v134
	v_mul_f32_e32 v39, v10, v134
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v35, v51, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v39, v146, v39 :: v_dual_mul_f32 v0, v0, v49
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v49, v8, v134
	v_mul_f32_e32 v51, v165, v134
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v35, v35, v135
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v45, v45, v46, v48
	v_div_fixup_f32 v48, v38, v37, v36
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v36, v21, v134 :: v_dual_mul_f32 v49, v130, v49
	v_mul_f32_e32 v37, v24, v134
	v_dual_mov_b32 v135, v60 :: v_dual_add_f32 v130, v117, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v36, v50, v36
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v50, v7, v134 :: v_dual_mul_f32 v49, v49, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v37, v52, v37
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v52, v164, v134
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v163, v162, v155
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v50, v125, v50
	v_mov_b32_e32 v125, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v57, v28, v190 :: v_dual_mul_f32 v52, v126, v52
	v_mov_b32_e32 v126, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v40, v42, v41, v40
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v37, v142
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v217, v124, v57
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v57, v27, v190 :: v_dual_mov_b32 v124, v58
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v45, v44, v43
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v45, v6, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v43, v12, v134 :: v_dual_mul_f32 v218, v123, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v217
	v_mov_b32_e32 v163, v96
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v45, v129, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.h, 0
	v_mov_b16_e64 v129.l, v35.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v43, v53, v43
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v53, v167, v134
	v_dual_mul_f32 v44, v11, v134 :: v_dual_mul_f32 v45, v45, v161
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v53, v133, v53 :: v_dual_mul_f32 v44, v139, v44
	v_mov_b32_e32 v139, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v217
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v37, v37
	v_mov_b32_e32 v162, v95
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v44, v44, v160
	v_mov_b32_e32 v161, v120
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v57, v57
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v51, v128, v51 :: v_dual_mul_f32 v40, v55, v40
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v43, v157
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v157, v103, v213
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v47, v53, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v51, v51, v219
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v53.h, v129.h
	v_cmp_o_f32_e64 s6, v40, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v57, v57, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v58, 0xbfb8aa3b, v218 :: v_dual_add_f32 v221, 1.0, v57
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v229, null, v221, v221, v217
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v226, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v218
	v_exp_f32_e32 v58, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v57, -v229, v226, 1.0
	v_fmac_f32_e32 v226, v57, v226
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v58, v58, v59
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v223, 1.0, v58 :: v_dual_mul_f32 v36, v36, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v228, null, v223, v223, v218
	v_rcp_f32_e32 v227, v228
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v228, v227, 1.0
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v38, v23, v134 :: v_dual_fmac_f32 v227, v57, v227
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v38, v54, v38
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v57, v39, v154
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v54, v166, v134 :: v_dual_and_b32 v39, 1, v129
	v_mov_b32_e32 v155, v82
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v37.h
	v_mov_b32_e32 v154, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v58, v35, v39, 0x7fff
	v_mov_b16_e64 v35.h, v129.h
	v_mov_b16_e32 v35.l, v36.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v42, v9, v134
	scratch_load_b64 v[133:134], off, off offset:72 ; 8-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v60, v0, v34
	v_dual_mov_b32 v160, v119 :: v_dual_and_b32 v35, 1, v35
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v42, v145, v42
	v_mov_b32_e32 v34, v61
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v57, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v156
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v58.l, v42.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v209, v134, v125
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v38, v38, v148 :: v_dual_add_f32 v119, v160, v205
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v125, v163, v4
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v4, off, off offset:200
	scratch_load_b64 v[143:144], off, off offset:104
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v210, v249, v187 :: v_dual_add_f32 v187, v122, v185
	v_dual_add_f32 v137, v196, v212 :: v_dual_and_b32 v0, 1, v129
	v_add_f32_e32 v224, v3, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v38, v38
	v_mov_b16_e64 v129.l, v57.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v61, v37, v0, 0x7fff
	v_mov_b16_e64 v0.h, v129.h
	v_mov_b16_e32 v0.l, v38.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v3, v224, s2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v50, v50, v216
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v219.h, 0x7fff, v61.h, s1
	v_mov_b16_e64 v61.h, v129.h
	v_and_b32_e32 v0, 1, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v212, v131, v242
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v61.l, v50.h
	v_cmp_o_f32_e64 s1, v43, v43
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v216, v56, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v62, v38, v0, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v54, v127, v54
	v_dual_mov_b32 v38, v85 :: v_dual_mov_b32 v39, v86
	scratch_load_b64 v[127:128], off, off offset:232 ; 8-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v207, v246, v188
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v219.l, 0x7fff, v62.h, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v65, v143, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v225, v2, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[194:195], off, off offset:256
	scratch_load_b32 v0, off, off offset:196
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v48, v54, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v53.l, v48.h
	v_cmp_o_f32_e64 s5, v48, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v215, v194, v66 :: v_dual_add_f32 v214, v195, v0
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b64 v[158:159], off, off offset:160
	scratch_load_b32 v0, off, off offset:304
	scratch_load_b64 v[66:67], off, off offset:152
	scratch_load_b64 v[145:146], off, off offset:88
	v_dual_add_f32 v120, v161, v208 :: v_dual_add_f32 v199, v127, v186
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v46, v52, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v52.h, v129.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v186, v121, v181 :: v_dual_add_f32 v181, v108, v255
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v255, s15, 4, v254
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v52.l, v46.h
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v168, v158, v191 :: v_dual_add_f32 v153, v159, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[240:241], off, off offset:224
	scratch_load_b32 v0, off, off offset:316
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v82, v67, v243
	scratch_load_b64 v[242:243], off, off offset:56 ; 8-byte Folded Reload
	v_add_f32_e32 v81, v66, v135
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v135.h, 0x7fff, v58.h, vcc_lo
	v_mov_b16_e64 v58.h, v129.h
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v200, v244, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v58, 1, v58
	v_add3_u32 v42, v42, v58, 0x7fff
	v_mov_b16_e64 v58.h, v129.h
	v_mov_b16_e32 v58.l, v44.h
	v_mov_b16_e64 v42.l, v216.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v33, v240, v193 :: v_dual_and_b32 v58, 1, v58
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v191, v241, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[237:238], off, off offset:216
	scratch_load_b32 v0, off, off offset:324
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v124, v242, v177
	v_add_f32_e32 v177, v106, v77
	v_dual_mov_b32 v77, v79 :: v_dual_mov_b32 v78, v80
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v80.l, 0x7fff, v42.h, vcc_lo
	v_mov_b16_e64 v42.h, v129.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v216, v42, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v123, v238, v0
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v213, v132, v126
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v126, s29, s28, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v37, v237, v0
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v36, v36
	v_add3_u32 v59, v36, v35, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v237, v37, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v135.l, 0x7fff, v59.h, s0
	v_and_b32_e32 v59, 1, v129
	v_mov_b16_e64 v129.l, v43.h
	v_cmp_o_f32_e64 s0, v44, v44
	v_add3_u32 v44, v44, v58, 0x7fff
	v_add3_u32 v57, v57, v59, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v58, 1, v129
	v_mov_b16_e64 v129.l, v45.h
	v_mov_b16_e64 v59.h, v129.h
	v_cndmask_b16 v80.h, 0x7fff, v57.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v43, v58, 0x7fff
	v_and_b32_e32 v41, 1, v129
	v_mov_b16_e64 v129.l, v49.h
	v_cmp_o_f32_e64 s4, v46, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v41, v45, v41, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v147, v118, v0
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v59.l, v60.h
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v58, 1, v59
	v_add3_u32 v54, v60, v58, 0x7fff
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[58:59], null, s15, 48, v[254:255]
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	scratch_store_b64 off, v[58:59], off    ; 8-byte Folded Spill
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v58, v31, v190
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v138, v197, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v179, v110, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	scratch_store_b32 off, v71, off offset:336 ; 4-byte Folded Spill
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v71, v162, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v206, v247, v192 :: v_dual_add_f32 v205, v245, v34
	v_dual_mov_b32 v193, v116 :: v_dual_add_f32 v34, v243, v182
	scratch_store_b32 off, v71, off offset:332 ; 4-byte Folded Spill
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v185, v193, v183
	v_add_f32_e32 v183, v114, v140
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v180, v109, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v104, v0
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v102, v0
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v101, v0
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v98, v0
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v97, v0
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v94, v0
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v93, v0
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v90, v0
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_add_f32_e32 v0, v89, v222
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v222, v146, v141
	v_dual_mov_b32 v142, v92 :: v_dual_mov_b32 v141, v91
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v240, v33, s2
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v71, v142, v149
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v33, off, off offset:352 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v92, v241, v191, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_store_b32 off, v71, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v71, v87 :: v_dual_mov_b32 v72, v88
	s_delay_alu instid0(VALU_DEP_1)
	v_add_f32_e32 v87, v71, v171
	scratch_store_b32 off, v87, off offset:316 ; 4-byte Folded Spill
	v_add_f32_e32 v87, v84, v4
	scratch_load_b32 v4, off, off offset:436 ; 4-byte Folded Reload
	v_add_f32_e32 v64, v144, v151
	scratch_store_b32 off, v87, off offset:312 ; 4-byte Folded Spill
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v0, v39, v0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v87, v83, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v144, v64, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v4, off, off offset:204 ; 4-byte Folded Reload
	v_add_f32_e32 v220, v145, v173
	v_add_f32_e32 v173, v100, v201
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v64, v12, v190
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v0, v38, v0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v155, v0
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v154, v0
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[35:36], off, off offset:48
	scratch_load_b32 v0, off, off offset:404
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v36, v0
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v35, v0
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v175, v0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v174, v0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:32
	scratch_store_b64 off, v[69:70], off offset:412
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v70, v0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v69, v0
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	scratch_load_b64 v[0:1], off, off offset:96 ; 8-byte Folded Reload
	v_add_f32_e32 v198, v128, v189
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v189, v236, v178
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v231, v1, v176
	v_add_f32_e32 v176, v105, v150
	v_add_f32_e32 v150, v141, v172
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v172.h, 0x7fff, v43.h, s1
	v_and_b32_e32 v43, 1, v61
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v61, v10, v190
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v172.l, 0x7fff, v44.h, s0
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v44, v30, v190 :: v_dual_and_b32 v45, 1, v129
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v51.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v55, v55, v61
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v50, v50
	v_add3_u32 v43, v50, v43, 0x7fff
	v_add3_u32 v45, v49, v45, 0x7fff
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v44, v57, v44
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v188, v235, v139
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v139.h, 0x7fff, v41.h, s0
	v_cmp_o_f32_e64 s0, v49, v49
	v_cndmask_b16 v144.l, 0x7fff, v43.h, s1
	v_and_b32_e32 v43, 1, v129
	v_mov_b16_e64 v129.l, v47.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v230, v0, v152
	v_add_f32_e32 v208, v133, v136
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v144.h, 0x7fff, v45.h, s0
	v_cmp_o_f32_e64 s0, v51, v51
	v_and_b32_e32 v45, 1, v53
	v_add3_u32 v43, v51, v43, 0x7fff
	v_and_b32_e32 v51, 1, v129
	v_mov_b16_e64 v129.l, v40.h
	v_cndmask_b16 v139.l, 0x7fff, v54.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, vcc_lo, v217, v221, v217
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v50, 1, v52
	v_add3_u32 v45, v48, v45, 0x7fff
	v_and_b32_e32 v48, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v49, s3, v218, v223, v218
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v46, v50, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v50, v41, v226
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v40, v40, v48, 0x7fff
	v_cmp_o_f32_e64 s1, v47, v47
	v_add3_u32 v47, v47, v51, 0x7fff
	v_cndmask_b16 v149.l, 0x7fff, v46.h, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v229, v50, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v201.h, 0x7fff, v40.h, s6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v40, v49, v227
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v136.h, 0x7fff, v47.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v143, v65, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v50, v51, v226
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v48, v29, v190
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v228, v40, v49
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v149.h, 0x7fff, v43.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v229, v50, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v136.l, 0x7fff, v45.h, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v40, v46, v227
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v46, v47, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v51
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v41, v226, v50
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v48, -v228, v40, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v46
	v_cndmask_b32_e64 v47, 0, 0x42800000, s0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v169, v234, s2
	v_cndmask_b32_e64 v45, v170, v233, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v40, v48, v227, v40
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v52, v23, v190
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v49, v24, v190 :: v_dual_mov_b32 v192, v115
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v47, v47
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v43, v43, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v40, v40, v223, v218
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v48, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v45, v45, v49
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_add_f32_e32 v152, v192, v250
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v41, v221, v217
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v43, v40
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_add_f32_e32 v178, v107, v252
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v43, v47, v50
	v_exp_f32_e32 v47, v48
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v45, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_dual_add_f32 v182, v113, v253 :: v_dual_add_f32 v43, 1.0, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v216, v216
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v129.l, v41.h
	v_dual_mov_b32 v253, v76 :: v_dual_mov_b32 v252, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v49, null, v43, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v201.l, 0x7fff, v42.h, s0
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v75, v253, v204
	scratch_store_b32 off, v87, off offset:304 ; 4-byte Folded Spill
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v0, v230, s2
	v_cndmask_b32_e64 v50, v1, v231, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v51, v32, v190
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_store_b32 off, v75, off offset:176 ; 4-byte Folded Spill
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v2, v225, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v40.h
	v_mov_b16_e64 v45.h, v129.h
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v50, v50, v51 :: v_dual_mul_f32 v51, v9, v190
	v_mov_b32_e32 v217, v118
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v243, v34, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v56, 0xbfb8aa3b, v50 :: v_dual_and_b32 v45, 1, v45
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v51, v52, v51
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v151, v72, v184
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v250, s15, 5, v254
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_mov_b32 s15, s11
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v47, v47, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v48, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v49
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v57, v57, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v56
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v40, v45, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v48, v41, v48, 0x7fff
	v_mov_b32_e32 v171, v106
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, s1
	v_mov_b32_e32 v1, v93
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v47, v47, v46
	v_fma_f32 v53, -v49, v42, 1.0
	v_div_scale_f32 v58, s3, v46, v47, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v54, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v53, v42
	v_div_scale_f32 v53, vcc_lo, v44, v43, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v115.h, 0x7fff, v48.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v56, v56
	v_mov_b32_e32 v2, v94
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v60, v53, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v41, v54, 1.0
	v_fma_f32 v62, -v49, v60, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v54, v59, v54 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v57
	v_fmac_f32_e32 v60, v62, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v63, v58, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v49, v60, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v52, v56, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v61, -v41, v63, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s4
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v145, v220, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v49, v42, v60
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v63, v61, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v42, v42, v43, v44
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v41, v63, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v53, v59
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v58, v17, v190
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v55, v42
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v52, v52, v50
	v_div_fmas_f32 v41, v41, v54, v63
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v56, v56, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v195, v214, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v63, v11, v190
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v43, v53, v49
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v41, v47, v46
	.loc	1 448 18 is_stmt 1              ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v140, 0x80, v126
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v44
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v53, v18, v190
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v51, v41
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v146, v222, s2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v156, 16, v239
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v115.l, 0x7fff, v45.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v43, v43, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v51, v51, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v44, v46, 1.0
	v_div_scale_f32 v59, s0, v57, v43, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v47
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v62, 0xbfb8aa3b, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v45, v46
	v_div_scale_f32 v45, vcc_lo, v50, v52, v50
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v148, 16, v251
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v62
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v194, v215, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v55, v45, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v42.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v47, v48, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s3
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v53, v53, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v44, v55, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v41.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v54, v48
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v62, 0xbfb8aa3b, v56 :: v_dual_fmac_f32 v55, v60, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v40.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v61, v59, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v49, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v44, v55, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v40, 1, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v47, v61, v59
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v44, v46, v55
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v61, v60, v48 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v51
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v40, v41, v40, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v44, v44, v52, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v50.h, v129.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v47, v61, v59
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v47, v62
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v49, v42, v49, 0x7fff
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v46, v48, v61
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v48, v58, v64
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v131, v212, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v111.l, 0x7fff, v40.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v43, v46, v43, v57
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v54, v45
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v44, v48, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v111.h, 0x7fff, v49.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v53, v43
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v47, v54
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v132, v213, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v54, v20, v190
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v50.l, v43.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v45, v45, v51
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v49, vcc_lo, v51, v45, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v47
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v42, 1, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, null, v46, v46, v56
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v53, v53, v54
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v62, v19, v190
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v52
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v249, v210, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v60, 0xbfb8aa3b, v53
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v47, v48, 1.0
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v61, v61, v62 :: v_dual_and_b32 v40, 1, v129
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v42, v43, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v60
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v50, v48
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v248, v211, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v52, v41, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v40, v44, v40, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v55, v49, v48 :: v_dual_mul_f32 v64, v8, v190
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, s0, v56, v46, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v47, v55, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v60, 0xbfb8aa3b, v53 :: v_dual_mov_b32 v215, v114
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v59, v50, v41
	v_mov_b32_e32 v195, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v58, v48
	v_dual_mov_b32 v211, v110 :: v_dual_mov_b32 v194, v107
	v_fma_f32 v58, -v52, v59, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v47, v55, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v59, v58, v41
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v133, v208, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v47, v48, v55
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v48, v60
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v52, v59, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v45, v47, v45, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v50, v41, v59
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v6, v190
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s3
	v_ldexp_f32 v48, v48, v52
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v61
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v41, v46, v56
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v246, v207, s2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v49
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v49, v57, v50
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v56, v7, v190
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v131.h, 0x7fff, v40.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, null, v48, v48, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v44, v49, v45
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v51, v51, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v127, v199, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v46, v47
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v47, v50
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v62, v5, v190
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v131.l, 0x7fff, v42.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v59, v13, v190 :: v_dual_add_f32 v40, 1.0, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v247, v206, s2
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v52, v54, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, vcc_lo, v53, v48, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v45, null, v40, v40, v61
	v_fma_f32 v42, -v50, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v41, v52, v41 :: v_dual_mul_f32 v52, v14, v190
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v45
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v58, v58, v59
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v47, v42, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v134, v209, s2
	v_mov_b32_e32 v216, v117
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.l, v41.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v63, 0xbfb8aa3b, v58
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v57, v54, v47
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v42, v42, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v46.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v45, v49, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v63
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v44.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v60, 0xbfb8aa3b, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v52, s0, v61, v40, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v60
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v50, v57, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v63, 0, 0x42800000, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v62, v52, v49
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v46, 1, v129
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v57, v60, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v45, v62, v52
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v41, v43, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v42
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v50, v57, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v62, v60, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v59, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v50, v47, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v50, v63
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v45, v62, v52
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v47, v47, v48, v53
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v53, v16, v190
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v45, v45, v49, v62
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s3
	v_ldexp_f32 v52, v59, v54
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v54, v55, v64
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v40, v45, v40, v61
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v50, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v52, 1.0, v52 :: v_dual_mul_f32 v47, v54, v47
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v132.l, 0x7fff, v43.h, s0
	v_mov_b32_e32 v63, v99
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v49, null, v52, v52, v42
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v47.h
	v_add3_u32 v46, v44, v46, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, null, v45, v45, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v49
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v40, v51, v40 :: v_dual_and_b32 v43, 1, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v50
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v47, v47
	v_cndmask_b16 v132.h, 0x7fff, v46.h, vcc_lo
	v_add3_u32 v43, v47, v43, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, vcc_lo, v42, v52, v42
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v59, v15, v190
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v49, v48, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v133.h, 0x7fff, v43.h, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v245, v205, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v40.h
	v_mov_b16_e64 v41.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v51, v48
	v_fma_f32 v51, -v50, v44, 1.0
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v43, v43, v53
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v61, v164, v190
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v128, v198, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v62, v10, v156
	v_mul_f32_e32 v10, v10, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v47, v46, v48
	v_fmac_f32_e32 v44, v51, v44
	v_div_scale_f32 v51, s1, v58, v45, v58
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v60, 0xbfb8aa3b, v43
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v40, v41, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v49, v47, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v51, v44 :: v_dual_mov_b32 v214, v113
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v47, v54, v48
	v_fma_f32 v53, -v50, v55, v51
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v244, v200, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v49, v47, v46
	v_fmac_f32_e32 v55, v53, v44
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v53, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v49, v54, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v46, v48, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v50, v55, v51
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v49
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v51, v56, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v66, v81, s2
	v_mov_b32_e32 v65, v101
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v165, v190
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v47, v44, v55
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v53
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v46, v52, v42
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v50, v57, v50
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v57, v25, v156
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v158, v168, s2
	v_mov_b32_e32 v169, v98
	v_cndmask_b32_e64 v55, v159, v153, s2
	v_mov_b32_e32 v168, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v44, v44, v45, v58
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v40, v40
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v50, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v67, v82, s2
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v97, v56, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v42.h, v129.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v47, v45
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v49
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v133.l, 0x7fff, v41.h, s0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v44, v51, v44
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v51, v26, v156
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v40.h
	v_cmp_o_f32_e64 s0, v40, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v57, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v26, v26, v148
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v48
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v96, v50, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v57
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v166, v190
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v44.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v45, v45, v43
	v_div_scale_f32 v51, vcc_lo, v43, v45, v43
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v42, 1, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v48
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v46, v47
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v47, 1, v129
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v97
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v42, v44, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v25, v25, v148 :: v_dual_add_f32 v46, 1.0, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v47, v40, v47, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v53, -v48, v41, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v95.h, 0x7fff, v47.h, s0
	v_mov_b16_e64 v47.h, v129.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v53, v41
	v_dual_mov_b32 v210, v109 :: v_dual_mul_f32 v59, v51, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v48, v59, v51
	v_fmac_f32_e32 v59, v60, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v48, v59, v51
	v_div_fmas_f32 v41, v48, v41, v59
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v59, v29, v156
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v53, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v29, v29, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v41, v45, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v53
	v_cndmask_b32_e64 v53, 0, 0x42800000, s1
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v96
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v51, v53, v60
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v53, v30, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, null, v46, v46, v49
	v_div_scale_f32 v56, s3, v49, v46, v49
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v54, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v40, v54, 1.0
	v_fmac_f32_e32 v54, v58, v54
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v58, v167, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v61, v56, v54
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v55, v55, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v58, -v40, v61, v56
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v98, v55, v41 :: v_dual_fmac_f32 v61, v58, v54
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v235, v188, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v98.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v40, v61, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v58, v58, v59 :: v_dual_mul_f32 v59, v23, v156
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v50, v52, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v52, v57
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v40, v40, v54, v61
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v37, v37, v59 :: v_dual_mov_b32 v66, v102
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v44, v22, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v40, v40, v46, v49
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v95.l, 0x7fff, v42.h, vcc_lo
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v42, v28, v156
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v102, 1, v129
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v43, v52, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v236, v189, s2
	v_mov_b32_e32 v170, v105
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v0, v0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v42, v27, v156 :: v_dual_add_f32 v101, 1.0, v43
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v52, v52, v53
	v_mov_b32_e32 v64, v100
	.loc	1 441 34 is_stmt 1              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v100, 1.0, v51 :: v_dual_mul_f32 v99, v50, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v108, null, v101, v101, v97
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v40.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v105, null, v100, v100, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v109, v108
	v_div_scale_f32 v110, vcc_lo, v96, v100, v96
	v_rcp_f32_e32 v106, v105
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v99.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v113, s0, v97, v101, v97
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v44, v92, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v40, 1, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v238, v123, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v27, v27, v148
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v22, v22, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v105, v106, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v99, v40, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v106, v41, v106
	v_fma_f32 v41, -v108, v109, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v40
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v40, v21, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v21, v21, v148 :: v_dual_mul_f32 v112, v110, v106
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v109, v41, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v242, v124, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v116, 0, 0x42800000, s1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v40, v91, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v117, -v105, v112, v110
	v_mul_f32_e32 v114, v113, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v93, v41, v42 :: v_dual_fmac_f32 v116, 0xbfb8aa3b, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v112, v117, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v108, v114, v113
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v118, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v42, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v105, v112, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v114, v41, v109
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v45, v45, v106, v112
	v_dual_mov_b32 v106, v86 :: v_dual_mov_b32 v105, v85
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v118
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v108, v114, v113
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v41, v42, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	v_mov_b32_e32 v113, v90
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v45, v45, v100, v96
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v99, v99
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s1
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v93
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v44, v44, v45
	v_mov_b32_e32 v112, v89
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v91.l, 0x7fff, v3.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v52
	v_exp_f32_e32 v42, v43
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v43, v46, v109, v114
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_mov_b16_e64 v129.l, v44.h
	v_mov_b32_e32 v86, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v43, v43, v101, v97
	v_mov_b32_e32 v85, v73
	v_mov_b32_e32 v109, v72
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v3, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v42, v42, v46
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, null, v41, v41, v0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v43
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v98, v102, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v45, v46
	v_mov_b32_e32 v88, v252
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.l, v40.h
	v_cndmask_b16 v91.h, 0x7fff, v43.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v42, v42, v93
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v47, 1, v47
	v_mov_b32_e32 v89, v253
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v46, v45, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v44, v43, 0x7fff
	v_add3_u32 v47, v40, v47, 0x7fff
	v_dual_mov_b32 v97, v78 :: v_dual_mov_b32 v96, v77
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v45, v50, v45
	v_div_scale_f32 v50, vcc_lo, v0, v41, v0
	v_mov_b32_e32 v108, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v48, v49, 1.0
	v_mul_f32_e32 v54, v50, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, s0, v93, v42, v93
	v_fma_f32 v55, -v46, v54, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v56, v51, v49
	v_fmac_f32_e32 v54, v55, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v48, v56, v51
	v_fma_f32 v46, -v46, v54, v50
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v56, v55, v49
	v_div_fmas_f32 v45, v46, v45, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v48, v56, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v57, v31, v156
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v48, v48, v49, v56
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v121, v186, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v46, v51
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v58
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v48, v42, v93
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v56, v56, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v44.h, v129.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v48, v50
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v37, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v45, v41, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v46, v46, v52
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v37.h
	v_cndmask_b16 v87.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v41, v48, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v45, v42
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v40, 1, v44
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v50, v32, v156
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v87.l, 0x7fff, v47.h, vcc_lo
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v51, vcc_lo, v52, v46, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v61
	v_mov_b32_e32 v93, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v41, v41, v58
	v_fma_f32 v44, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v61, 0, 0x42800000, s3
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v49, v24, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v48, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v54, v9, v156 :: v_dual_fmac_f32 v45, v44, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v122, v187, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v56
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v49, v53, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v161, v120, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v55, v51, v45 :: v_dual_mul_f32 v44, v44, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v40, v37, v40, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v43, v48, 1.0
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v49, v0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v160, v119, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v44
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v24, v24, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s0, v58, v41, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v42, v55, v51
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v0.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v60, v50, v48 :: v_dual_mul_f32 v49, v49, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v55, v59, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v47, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v43, v60, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v216, v130, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v44
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v42, v55, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v60, v59, v48
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v59, v11, v156
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v57, v57
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v42, v45, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v45, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v43, v60, v50
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v37, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v42, v46, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v0, v47, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v43, v43, v48, v60
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	v_ldexp_f32 v50, v57, v51
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v51, v53, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v43, v41, v58
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v43, v45, v48
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v51, v42
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v90.h, 0x7fff, v46.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v49, v41
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v50, v50, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v42.h
	v_cndmask_b16 v90.l, 0x7fff, v40.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v43, v43, v56
	v_rcp_f32_e32 v47, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v40, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, vcc_lo, v44, v50, v44
	v_rcp_f32_e32 v37, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_add3_u32 v40, v42, v40, 0x7fff
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v51, v18, v156
	v_mul_f32_e32 v57, v17, v156
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v0.l, v41.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v45, v47, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v94.h, 0x7fff, v40.h, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v193, v185, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v0.h, v129.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v217, v147, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v47, v49, v47
	v_fma_f32 v49, -v48, v37, 1.0
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v40, v40, v51
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 1, v0
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v18, v18, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v42, v46, v47 :: v_dual_fmac_f32 v37, v49, v37
	v_div_scale_f32 v49, s1, v56, v43, v56
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v45, v42, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v0, v41, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v53, v49, v37
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v11, v11, v148
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v58
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v52, v47
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v192, v152, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v48, v53, v49
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v31, v31, v148
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v9, v9, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v45, v42, v46
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v46, v52, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v51, v37
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s0
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v17, v17, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v45, v47, v42
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v48, v53, v49
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v40
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v48, v12, v156 :: v_dual_mul_f32 v49, v54, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v45, v37, v53
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_exp_f32_e32 v45, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v48, v55, v48
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v59, v6, v156
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v37, v37, v43, v56
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v42, v50, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v214, v182, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	v_ldexp_f32 v43, v45, v43
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v48, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v94.l, 0x7fff, v0.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v47
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v41.h
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v56, v19, v156
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v197, v138, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v43, v43, v40
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v49, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v55, v55, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v44, v44, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v0, v47
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v53, v53, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v215, v183, s2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v41, v45, 0x7fff
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v49, v20, v156
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v196, v137, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v37.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v44, v44, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v47, v0, 1.0
	v_div_scale_f32 v56, s3, v46, v44, v46
	v_rcp_f32_e32 v52, v41
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v48, v48, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v0, v51, v0
	v_div_scale_f32 v51, vcc_lo, v40, v43, v40
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v49, v5, v156
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v42.h, v129.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v58, v51, v0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v6, v6, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v57, -v41, v52, 1.0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v49, v50, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v47, v58, v51
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v42, 1, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v52, v57, v52 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v58, v60, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v61, v56, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v57
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v47, v58, v51
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v42, v37, v42, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v59, -v41, v61, v56
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s4
	v_exp_f32_e32 v54, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v0, v47, v0, v58
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v61, v59, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v55
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v0, v43, v40
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v19, v19, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v41, v61, v56
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v51, v57
	v_ldexp_f32 v50, v54, v60
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v53, v0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v194, v178, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v41, v52, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v61, v7, v156 :: v_dual_add_f32 v50, 1.0, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v56, v13, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v41, v44, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v40, v51, v47
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v51, v14, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v50, v50, v48
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v49, v41
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v195, v181, s2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v43
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v54, v54, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v211, v179, s2
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v49, v49, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v210, v180, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v0.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v60, 0xbfb8aa3b, v54
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.l, v41.h
	v_mov_b16_e64 v37.h, v129.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v51, v51, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v168, v33, s2
	scratch_load_b32 v33, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v79, v78, v4
	scratch_load_b32 v4, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v163, v125, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v47, 1, v129
	v_and_b32_e32 v37, 1, v37
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v21, v61, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s3
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v30, v30, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v47, v0, v47, 0x7fff
	v_add3_u32 v37, v41, v37, 0x7fff
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v12, v12, v148
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v54
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v20, v20, v148
	v_mul_f32_e32 v14, v14, v148
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v5, v5, v148
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v13, v13, v148
	v_mul_f32_e32 v34, v32, v148
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v7, v7, v148
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v75, v252, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v4, off, off offset:8  ; 4-byte Folded Reload
	scratch_store_b32 off, v75, off offset:144 ; 4-byte Folded Spill
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v75, v74, v202
	scratch_store_b32 off, v79, off offset:200 ; 4-byte Folded Spill
	v_add_f32_e32 v79, v77, v232
	scratch_store_b32 off, v75, off offset:128 ; 4-byte Folded Spill
	v_add_f32_e32 v75, v73, v203
	scratch_store_b32 off, v79, off offset:184 ; 4-byte Folded Spill
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v79, v28, v148
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v62, v8, v156
	v_mul_f32_e32 v8, v8, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	scratch_store_b32 off, v75, off offset:40 ; 4-byte Folded Spill
	v_cndmask_b16 v75.h, 0x7fff, v45.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v40, v40, v55
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v75.l, 0x7fff, v42.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v43, v44, 1.0
	v_div_scale_f32 v57, s0, v55, v40, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v45
	v_fmac_f32_e32 v44, v42, v44
	v_div_scale_f32 v42, vcc_lo, v48, v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v53, v42, v44
	v_fma_f32 v52, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v43, v53, v42
	v_fmac_f32_e32 v46, v52, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v52, 0xbfb8aa3b, v49 :: v_dual_fmac_f32 v53, v58, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v59, v57, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v43, v53, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v45, v59, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s1
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v42, v44, v53
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v59, v58, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v42, v42, v50, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v48.h, v129.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v45, v59, v57
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v45, v60
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v71.l, 0x7fff, v37.h, s0
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v60, v15, v156
	v_mul_f32_e32 v15, v15, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v44, v46, v59
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v46, v56, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v170, v176, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v40, v44, v40, v55
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v104, v3, s2
	scratch_load_b32 v3, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v49
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v46, v42
	v_mul_f32_e32 v40, v51, v40
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v71.h, 0x7fff, v47.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v171, v177, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v52, v52
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v59, v59, v60
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v40.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v60, v164, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v43, v52, v43
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v40, v41, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v44, v45, v52
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v52, v16, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v43, v43, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, vcc_lo, v49, v43, v49
	v_rcp_f32_e32 v46, v45
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, null, v44, v44, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v103, v157, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v0, v50
	v_fma_f32 v48, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v48, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v50, v0, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v53, v47, v46 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v51
	v_fmac_f32_e32 v0, v48, v0
	v_div_scale_f32 v48, s0, v54, v44, v54
	v_mov_b32_e32 v92, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v45, v53, v47
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v35, v78, v79
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v57, v48, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v53, v56, v46
	v_fma_f32 v56, -v50, v57, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v45, v53, v47
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v57, v56, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v45, v45, v46, v53
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v48, -v50, v57, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v58
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v43, v45, v43, v49
	v_div_fmas_f32 v0, v48, v0, v57
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v57, v167, v156
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v42.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v48, v165, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v0, v44, v54
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v46, v50
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v59 :: v_dual_mul_f32 v50, v52, v60
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v37, 1, v129
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v47
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v47, v55, v48
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v50, v0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, s3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v37, v42, v37, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v169, v33, s2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v47, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v43.l, v45.h
	v_mov_b16_e64 v43.h, v129.h
	v_cndmask_b16 v67.h, 0x7fff, v37.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v0, v44, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v33, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v46, v46, v51
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v37, 1.0, v0 :: v_dual_and_b32 v0, 1, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v44, v48
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v166, v156
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v67.l, 0x7fff, v41.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, null, v37, v37, v59
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v47, v45, v0, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v0, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v55, s0, v59, v37, v59
	v_rcp_f32_e32 v49, v40
	v_fma_f32 v41, -v48, v44, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v42.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v22, v60, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, vcc_lo, v51, v46, v51
	v_dual_mul_f32 v52, v41, v44 :: v_dual_and_b32 v43, 1, v129
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v38, v66, v3, s2
	scratch_load_b32 v3, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v38, v38, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v39, v65, v0, s2
	v_cndmask_b32_e64 v0, v64, v173, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v0, v0, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v40, v49, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v54, 0xbfb8aa3b, v0 :: v_dual_fmac_f32 v49, v26, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v54, v55, v49
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v53, v63, v3, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v26, v53, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v53, -v48, v52, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v56, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v52, v53, v44
	v_fma_f32 v53, -v40, v54, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v25, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v48, v52, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v54, v53, v49
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v41, v44, v52
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v40, -v40, v54, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v26
	v_ldexp_f32 v25, v25, v48
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v40, v40, v49, v54
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v56
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v64, 1.0, v25 :: v_dual_mul_f32 v25, v39, v50
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v37, v40, v37, v59
	v_div_fixup_f32 v40, v41, v46, v51
	v_div_scale_f32 v69, null, v64, v64, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v42, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v63, v25, v37
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v39, v44, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v70, v69
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v68, v38, v40
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v37.h, v129.h
	v_mov_b16_e32 v37.l, v63.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v66, 1.0, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v25.h, 0x7fff, v41.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v76, vcc_lo, v0, v64, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v25.l, 0x7fff, v47.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v73, null, v66, v66, v26
	v_fma_f32 v38, -v69, v70, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v37, 1, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, s0, v26, v66, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v74, v73
	v_fmac_f32_e32 v70, v38, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v65, v63, v37, 0x7fff
	v_mov_b16_e64 v129.l, v68.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v141, v150, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v77, v76, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v39, 1, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v73, v74, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v69, v77, v76
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v72, v68, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v39, 0xbfb8aa3b, v35 :: v_dual_fmac_f32 v74, v38, v74
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v162, v33, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v77, v36, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v33, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v39
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v37, v28, v74
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v27, v38, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v69, v77, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v73, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v70, v77
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v35 :: v_dual_fmac_f32 v37, v36, v74
	v_mul_f32_e32 v36, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v39, v64, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v28, -v73, v37, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v22, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v28, v28, v74, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_mov_b16_e64 v129.l, v0.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v26, v28, v66, v26
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v27
	v_ldexp_f32 v22, v38, v37
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v37.h, v129.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v28, v36
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v21, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.h, 0x7fff, v72.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_mov_b16_e32 v37.l, v36.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v22, v22, v35
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v26, v28, v26
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.l, 0x7fff, v65.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v28, 1, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v40, 1.0, v26 :: v_dual_and_b32 v37, 1, v129
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	scratch_load_b32 v26, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v28, v36, v28, 0x7fff
	v_add3_u32 v37, v0, v37, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v40, v40, v27
	v_fma_f32 v43, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v44, v41
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v43, vcc_lo, v35, v22, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v48, v43, v39
	v_fma_f32 v47, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v47, v44
	v_fma_f32 v47, -v38, v48, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v48, v47, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v42, v1, v33, s2
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v45, v2, v1, s2
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v26, v142, v26, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v2, v165, v148
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v24, v45, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v26, v26, v30
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v30, v23, v148 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v42, v42, v30
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v38, v48, v43
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v23, v46, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v29, s1, v27, v40, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v39, v48
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v50, v29, v44
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v46, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v22, v30, v22, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v41, v50, v29
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v36, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v46
	v_exp_f32_e32 v49, v49
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v24, v24, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v50, v45, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.l, 0x7fff, v28.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v109, v151, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v24.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v41, v50, v29
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v23
	v_ldexp_f32 v38, v49, v47
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v28, v28, v34 :: v_dual_and_b32 v55, 1, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v43, v46
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v39, v44, v50
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e64 v0.h, v129.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v28
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v60, null, v29, v29, v26
	v_div_fixup_f32 v27, v38, v40, v27
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.h, 0x7fff, v37.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v30, v43, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v59, v60
	v_div_scale_f32 v61, vcc_lo, v26, v29, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v27, v42, v27 :: v_dual_add_f32 v30, 1.0, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v0.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v58, null, v30, v30, v23
	v_fma_f32 v35, -v60, v59, 1.0
	v_div_scale_f32 v32, s0, v23, v30, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v56, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v57, v58
	v_fmac_f32_e32 v59, v35, v59
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v52, v61, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v28
	v_exp_f32_e32 v34, v34
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v53, v112, v0, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v0, -v58, v57, 1.0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v9, v53, v9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v57, v0, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v54, v113, v1, s2
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v33, v32, v57 :: v_dual_mul_f32 v10, v54, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v51, v108, v0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v0, -v60, v52, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v31, v51, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v52, v0, v59
	v_fma_f32 v0, -v58, v33, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v60, v52, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v0, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v35, v36, v59, v52
	v_fma_f32 v32, -v58, v33, v32
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v27, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v0, 0, 0x42800000, s3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v26, v35, v29, v26
	v_div_fmas_f32 v32, v32, v57, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v31
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v10, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v32, v30, v23
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v30, v27, v56, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v34, v36
	v_exp_f32_e32 v0, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v26, v24, v55, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v9, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v10.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v9, v9
	v_and_b32_e32 v24, 1, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v32, v32, v28
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v0, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v10, v24, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v0.l, v9.h
	v_mov_b16_e64 v0.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v29, v29, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v27, 1, v0
	v_cndmask_b16 v0.h, 0x7fff, v26.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v23, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v35, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v0.l, 0x7fff, v30.h, s0
	v_add3_u32 v27, v9, v27, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v9, v84, v1, s2
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v33, v26, v33
	v_div_scale_f32 v10, vcc_lo, v28, v32, v28
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v18, v9, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v34, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v30, v10, v33 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v18
	v_fmac_f32_e32 v35, v26, v35
	v_div_scale_f32 v26, s3, v31, v29, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v23, v30, v10
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v38, v26, v35
	v_fmac_f32_e32 v30, v37, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v34, v38, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v10, -v23, v30, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v38, v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v10, v33, v30
	s_mov_b32 vcc_lo, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v30, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v34, v38, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v10, v32, v28
	v_div_fmas_f32 v26, v26, v35, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v30, v30, v33
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v9, v105, v1, s2
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v9, v9, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v11, v26, v29, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v26, 1.0, v30 :: v_dual_mul_f32 v11, v9, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v26, v26, v18
	v_div_scale_f32 v34, vcc_lo, v18, v26, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v28
	v_fma_f32 v30, -v28, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v29
	v_mul_f32_e32 v35, v34, v29
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v36, v106, v1, s2
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v12, v36, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v12, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e64 v12.h, v129.h
	v_mov_b16_e64 v129.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v40, v83, v1, s2
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v17, v40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s5
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.l, 0x7fff, v27.h, s1
	v_cndmask_b16 v9.h, 0x7fff, v24.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_and_b32 v24, 1, v129
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v10, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v23, v23, v17
	v_rcp_f32_e32 v32, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v31, v154, v1, s2
	scratch_load_b32 v1, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v5, v31, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v155, v1, s2
	scratch_load_b32 v1, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v6, v33, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v30, v97, v1, s2
	scratch_load_b32 v1, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v20, v30, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v27, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v32, v30, v32
	v_div_scale_f32 v30, s0, v17, v23, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v28, v35, v34
	v_dual_mul_f32 v38, v30, v32 :: v_dual_fmac_f32 v35, v37, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v27, v38, v30
	v_fma_f32 v28, -v28, v35, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v33, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v28, v28, v29, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v27, -v27, v38, v30
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v11, v11
	v_mov_b16_e64 v11.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v18, v28, v26, v18
	v_div_fmas_f32 v27, v27, v32, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cndmask_b16 v24.l, 0x7fff, v12.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v18
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v27, v23, v17
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v129.l, v6.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v11.l, v5.h
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v11, v5, v11, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v36, v96, v1, s2
	scratch_load_b32 v1, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v19, v36, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v39, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v36, v36
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v19
	v_ldexp_f32 v30, v36, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v29, v37
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v26, null, v30, v30, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v29, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v17, v26
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v10, 1.0, v23 :: v_dual_and_b32 v23, 1, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v10, v10, v19
	v_fma_f32 v28, -v26, v17, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v12, v6, v23, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v6, s0, v20, v30, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v17, v28, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v27, v18
	v_mul_f32_e32 v5, v6, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v31, -v26, v5, v6
	v_fma_f32 v23, -v18, v27, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v5, v31, v17
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s3, v19, v10, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v26, v5, v6
	v_mul_f32_e32 v32, v23, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v5, v6, v17, v5
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v5, v30, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v28, v92, v1, s2
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v7, v28, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v29, v89, v1, s2
	scratch_load_b32 v1, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v14, v29, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v18, v32, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v31, 0xbfb8aa3b, v14 :: v_dual_fmac_f32 v32, v29, v27
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v6, -v18, v32, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v6, v6, v27, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v6, v10, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v19.h, v129.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v18, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v7, v6
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v6.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v7, v18, v10
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v10, v16, v148 :: v_dual_and_b32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v19, v6, v19, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v93, v1, s2
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v8, v33, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v8, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v5.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v129
	v_add3_u32 v23, v5, v23, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v26, v88, v1, s2
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v13, v26, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v13
	v_exp_f32_e32 v16, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v8, v86, v1, s2
	scratch_load_b32 v1, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v8, v8, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v17, 0xbfb8aa3b, v8
	v_ldexp_f32 v10, v16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v10, v10, v13
	v_div_scale_f32 v30, s1, v13, v10, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v27, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v17, v17, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v28, -v20, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_mul_f32_e32 v34, v30, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v20, v34, v30
	v_fmac_f32_e32 v34, v36, v27
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v11, v85, v1, s2
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v11, v11, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v15, null, v7, v7, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v15, v16, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v5, 1.0, v17 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v16, v26, v16
	v_div_scale_f32 v26, vcc_lo, v14, v7, v14
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v18, v18
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, null, v5, v5, v8
	v_mul_f32_e32 v17, v26, v16
	v_div_scale_f32 v36, s0, v8, v5, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v28
	v_fma_f32 v32, -v15, v17, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v18, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v17, v32, v16 :: v_dual_add_f32 v18, 1.0, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v28, v31, 1.0
	v_fma_f32 v15, -v15, v17, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v29, null, v18, v18, v11
	v_fmac_f32_e32 v31, v37, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v15, v15, v16, v17
	v_fma_f32 v16, -v20, v34, v30
	v_rcp_f32_e32 v33, v29
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v17, v36, v31
	v_div_fixup_f32 v7, v15, v7, v14
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v3, off, off offset:16
	scratch_load_b64 v[14:15], off, off offset:412
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v16, v16, v27, v34
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v27, -v28, v17, v36
	v_fma_f32 v26, -v29, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v16, v10, v13
	v_fmac_f32_e32 v17, v27, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v26, v33
	v_div_scale_f32 v26, s3, v11, v18, v11
	v_fma_f32 v13, -v28, v17, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v20, v26, v33
	v_div_fmas_f32 v13, v13, v31, v17
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v29, v20, v26
	v_div_fixup_f32 v5, v13, v5, v8
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v20, v30, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v35, v174, v1, s2
	scratch_load_b32 v1, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v15, v15, v4, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v4, v167, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v4, v15, v4
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v32, v175, v1, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v1, v164, v148
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v2, v32, v2 :: v_dual_mul_f32 v1, v35, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v2, v2, v7 :: v_dual_mul_f32 v1, v1, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v14, v3, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v29, v20, v26
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v3, v166, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v129.l, v2.h
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v14, v14, v33, v20
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v10, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e64 v10.h, v129.h
	v_mov_b16_e64 v6.h, v129.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v14, v18, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v23.l, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_and_b32_e32 v5, 1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v7, 1, v129
	v_mov_b16_e64 v129.l, v4.h
	v_add3_u32 v5, v1, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v6.l, v3.h
	v_add3_u32 v7, v2, v7, 0x7fff
	scratch_load_b32 v2, off, off offset:308 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v8, 1, v129
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v3, v6, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s0
	v_add3_u32 v6, v4, v8, 0x7fff
	s_mov_b32 s0, 0x76543210
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s2
	v_dual_cndmask_b32 v32, v9, v22 :: v_dual_cndmask_b32 v9, v22, v9
	v_dual_cndmask_b32 v34, v3, v12 :: v_dual_cndmask_b32 v3, v12, v3
	v_mov_b32_e32 v12, 0x5410
	v_mov_b32_e32 v22, 0x7632
	v_cndmask_b32_e32 v4, v135, v80, vcc_lo
	v_cndmask_b32_e32 v6, v219, v172, vcc_lo
	v_dual_cndmask_b32 v8, v139, v149 :: v_dual_cndmask_b32 v11, v144, v136
	v_cndmask_b32_e32 v14, v201, v111, vcc_lo
	v_cndmask_b32_e32 v16, v115, v131, vcc_lo
	v_cndmask_b32_e32 v18, v132, v95, vcc_lo
	v_cndmask_b32_e32 v20, v133, v91, vcc_lo
	v_cndmask_b32_e32 v29, v90, v75, vcc_lo
	v_dual_cndmask_b32 v30, v25, v71 :: v_dual_cndmask_b32 v25, v71, v25
	v_cndmask_b32_e32 v27, v87, v94, vcc_lo
	v_cndmask_b32_e32 v31, v21, v67, vcc_lo
	v_cndmask_b32_e32 v21, v67, v21, vcc_lo
	v_cndmask_b32_e32 v33, v24, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v24, vcc_lo
	v_cndmask_b32_e32 v1, v80, v135, vcc_lo
	v_cndmask_b32_e32 v5, v172, v219, vcc_lo
	v_dual_cndmask_b32 v7, v149, v139 :: v_dual_cndmask_b32 v10, v136, v144
	v_cndmask_b32_e32 v13, v111, v201, vcc_lo
	v_cndmask_b32_e32 v15, v131, v115, vcc_lo
	v_cndmask_b32_e32 v17, v95, v132, vcc_lo
	v_cndmask_b32_e32 v19, v91, v133, vcc_lo
	v_dual_cndmask_b32 v28, v75, v90 :: v_dual_cndmask_b32 v35, v2, v23
	v_cndmask_b32_e32 v2, v23, v2, vcc_lo
	v_cndmask_b32_e32 v26, v94, v87, vcc_lo
	v_cndmask_b32_e32 v12, 0x1054, v12, vcc_lo
	v_cndmask_b32_e32 v22, 0x3276, v22, vcc_lo
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v22, v22, 8, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v12, 0x540054, v12
	v_and_b32_e32 v22, 0x760076, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v12, v12, 4, v12
	v_lshl_or_b32 v22, v22, 4, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v36, 0x5040504, v12
	v_and_b32_e32 v37, 0x7060706, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v4, v1, v36
	v_perm_b32 v1, v4, v1, v37
	v_perm_b32 v2, v6, v5, v36
	v_perm_b32 v3, v6, v5, v37
	v_perm_b32 v4, v8, v7, v36
	v_perm_b32 v5, v8, v7, v37
	v_perm_b32 v6, v11, v10, v36
	v_perm_b32 v7, v11, v10, v37
	v_perm_b32 v8, v14, v13, v36
	v_perm_b32 v9, v14, v13, v37
	v_perm_b32 v10, v16, v15, v36
	v_perm_b32 v11, v16, v15, v37
	v_perm_b32 v12, v18, v17, v36
	v_perm_b32 v13, v18, v17, v37
	v_perm_b32 v14, v20, v19, v36
	v_perm_b32 v15, v20, v19, v37
	v_perm_b32 v18, v24, v28, v36
	v_perm_b32 v19, v24, v28, v37
	v_perm_b32 v20, v25, v30, v36
	v_perm_b32 v21, v25, v30, v37
	v_perm_b32 v24, v29, v32, v36
	v_perm_b32 v25, v29, v32, v37
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v32, v126, v254, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v16, v23, v26, v36
	v_perm_b32 v17, v23, v26, v37
	v_perm_b32 v22, v27, v31, v36
	v_perm_b32 v23, v27, v31, v37
	v_perm_b32 v26, v38, v33, v36
	v_perm_b32 v27, v38, v33, v37
	v_add_lshl_u32 v33, v126, v255, 1
	v_perm_b32 v28, v39, v34, v36
	v_perm_b32 v29, v39, v34, v37
	v_perm_b32 v30, v40, v35, v36
	v_perm_b32 v31, v40, v35, v37
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v32, s[12:15], 0 offen offset:256
	buffer_store_b128 v[8:11], v33, s[12:15], 0 offen
	scratch_load_b64 v[4:5], off, off       ; 8-byte Folded Reload
	v_add_lshl_u32 v0, v140, v255, 1
	v_add_lshl_u32 v1, v126, v250, 1
	v_add_lshl_u32 v2, v140, v250, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, v126, v4, 1
	v_add_lshl_u32 v4, v140, v4, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[12:15], 0 offen
	buffer_store_b128 v[16:19], v1, s[12:15], 0 offen
	buffer_store_b128 v[20:23], v2, s[12:15], 0 offen
	buffer_store_b128 v[24:27], v3, s[12:15], 0 offen
	buffer_store_b128 v[28:31], v4, s[12:15], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 632
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
		.amdhsa_next_free_sgpr 39
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 632
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 46792
; TotalNumSgprs: 41
; NumVgprs: 256
; ScratchSize: 632
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 41
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 632
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 376
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
