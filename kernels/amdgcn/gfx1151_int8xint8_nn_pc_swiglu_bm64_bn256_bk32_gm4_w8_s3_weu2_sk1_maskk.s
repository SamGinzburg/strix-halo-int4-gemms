	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v86, 0xf0, v0
	s_load_b32 s33, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v85, 15, v0
	v_lshlrev_b32_e32 v87, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v38, 3, v86
	v_mov_b32_e32 v238, v38
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
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v1
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
	s_lshl_b32 s6, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s8, s6
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s8, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s7
	s_sub_i32 s10, 0, s7
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_i32 s10, s4, s7
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s10, s4
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s15, 1
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s7, s3, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s34, v38
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s7, v38
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s34, s7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s8, s3, s8
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s14, s3, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v160, v85, 4, v2
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s33, 31
.Ltmp13:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s28, s2, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s14, s4, v160
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 31
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s28, s33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s31, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s34, v2
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s31
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v3, 0x80000000, v2, vcc_lo
	s_mov_b32 s6, 0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[4:7], v3, s[24:27], 0 offen
	buffer_load_b128 v[8:11], v1, s[24:27], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s15, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s15, 6, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v3, s34, v1
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v28, s15, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[12:15], v1, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v3, s[24:27], 0 offen
	.loc	1 357 14 is_stmt 1              ; generate_amdgcn.py:357:14
	v_and_b32_e32 v1, 3, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v29, s34, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v119, 3, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v3, s33, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v20, s7, v119
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v243, v3, v119, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v20
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v3, s7, v243
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s31
	s_cmp_gt_i32 s5, 63
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s7, s7, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v20, s7, v38
	v_or_b32_e32 v37, s7, v119
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s33, v20
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v20, s34, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v24, 0x80000000, v20, s3
	s_clause 0x1
	buffer_load_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v24, s[24:27], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v2, 0x80000000, v28, s3
	v_cndmask_b32_e64 v32, 0x80000000, v29, s3
	s_clause 0x1
	buffer_load_b128 v[28:31], v2, s[24:27], 0 offen
	buffer_load_b128 v[32:35], v32, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_bfe_i32 v3, v0, 4, 1
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v159, v85, 9, v38
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[49:50], v2, s[20:23], 0 offen
	v_lshlrev_b32_e32 v2, 3, v0
	v_and_b32_e32 v3, 0x90, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v171, 0x90, v159
	v_add_nc_u32_e32 v54, 0, v159
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v36, 0x778, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v120, 0x110, v159
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v2, 16, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v55, 0, v171
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x5f
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v255, v3, v36
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v36, s7, v243
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v56, 0, v120
	v_lshlrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_add_nc_u32 v53, 0, v255
	buffer_load_b64 v[51:52], v36, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v36, v8, v4, 0x5010400
	v_perm_b32 v8, v8, v4, 0x7030602
	v_perm_b32 v37, v9, v5, 0x5010400
	v_perm_b32 v9, v9, v5, 0x7030602
	v_perm_b32 v38, v10, v6, 0x5010400
	v_perm_b32 v10, v10, v6, 0x7030602
	v_perm_b32 v39, v11, v7, 0x5010400
	v_perm_b32 v40, v11, v7, 0x7030602
	v_and_b16 v4.l, 0xff, v36.l
	v_lshrrev_b32_e32 v41, 8, v36
	v_lshrrev_b32_e32 v42, 24, v36
	v_and_b16 v4.h, 0xff, v36.h
	v_and_b16 v5.l, 0xff, v8.l
	v_lshrrev_b32_e32 v36, 8, v8
	v_lshrrev_b32_e32 v43, 24, v8
	v_and_b16 v5.h, 0xff, v8.h
	v_and_b16 v6.l, 0xff, v37.l
	v_lshrrev_b32_e32 v44, 8, v37
	v_lshrrev_b32_e32 v45, 24, v37
	v_and_b16 v6.h, 0xff, v37.h
	v_and_b16 v7.l, 0xff, v9.l
	v_lshrrev_b32_e32 v37, 8, v9
	v_lshrrev_b32_e32 v46, 24, v9
	v_and_b16 v7.h, 0xff, v9.h
	v_and_b16 v8.l, 0xff, v38.l
	v_lshrrev_b32_e32 v47, 8, v38
	v_lshrrev_b32_e32 v48, 24, v38
	v_and_b16 v8.h, 0xff, v38.h
	v_and_b16 v9.l, 0xff, v10.l
	v_lshrrev_b32_e32 v38, 8, v10
	v_lshrrev_b32_e32 v57, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_and_b16 v10.l, 0xff, v39.l
	v_lshrrev_b32_e32 v58, 8, v39
	v_lshrrev_b32_e32 v59, 24, v39
	v_and_b16 v10.h, 0xff, v39.h
	v_and_b16 v11.l, 0xff, v40.l
	v_lshrrev_b32_e32 v39, 8, v40
	v_lshrrev_b32_e32 v60, 24, v40
	v_and_b16 v11.h, 0xff, v40.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v40, v16, v12, 0x5010400
	v_perm_b32 v61, v16, v12, 0x7030602
	v_perm_b32 v62, v17, v13, 0x5010400
	v_perm_b32 v63, v17, v13, 0x7030602
	v_perm_b32 v64, v18, v14, 0x5010400
	v_perm_b32 v65, v18, v14, 0x7030602
	v_perm_b32 v66, v19, v15, 0x5010400
	v_perm_b32 v67, v19, v15, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v12.l, 8, v41.l
	v_lshlrev_b16 v12.h, 8, v42.l
	v_lshlrev_b16 v13.l, 8, v36.l
	v_lshlrev_b16 v13.h, 8, v43.l
	v_lshlrev_b16 v14.l, 8, v44.l
	v_lshlrev_b16 v14.h, 8, v45.l
	v_lshlrev_b16 v15.l, 8, v37.l
	v_lshlrev_b16 v15.h, 8, v46.l
	v_lshlrev_b16 v16.l, 8, v47.l
	v_lshlrev_b16 v16.h, 8, v48.l
	v_lshlrev_b16 v17.l, 8, v38.l
	v_lshlrev_b16 v17.h, 8, v57.l
	v_lshlrev_b16 v18.l, 8, v58.l
	v_lshlrev_b16 v18.h, 8, v59.l
	v_lshlrev_b16 v19.l, 8, v39.l
	v_lshlrev_b16 v19.h, 8, v60.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v36.l, 0xff, v40.l
	v_lshrrev_b32_e32 v44, 8, v40
	v_lshrrev_b32_e32 v45, 24, v40
	v_and_b16 v36.h, 0xff, v40.h
	v_and_b16 v37.l, 0xff, v61.l
	v_lshrrev_b32_e32 v46, 8, v61
	v_lshrrev_b32_e32 v47, 24, v61
	v_and_b16 v37.h, 0xff, v61.h
	v_and_b16 v38.l, 0xff, v62.l
	v_lshrrev_b32_e32 v48, 8, v62
	v_lshrrev_b32_e32 v57, 24, v62
	v_and_b16 v38.h, 0xff, v62.h
	v_and_b16 v39.l, 0xff, v63.l
	v_lshrrev_b32_e32 v58, 8, v63
	v_lshrrev_b32_e32 v59, 24, v63
	v_and_b16 v39.h, 0xff, v63.h
	v_and_b16 v40.l, 0xff, v64.l
	v_lshrrev_b32_e32 v60, 8, v64
	v_lshrrev_b32_e32 v61, 24, v64
	v_and_b16 v40.h, 0xff, v64.h
	v_and_b16 v41.l, 0xff, v65.l
	v_lshrrev_b32_e32 v62, 8, v65
	v_lshrrev_b32_e32 v63, 24, v65
	v_and_b16 v41.h, 0xff, v65.h
	v_and_b16 v42.l, 0xff, v66.l
	v_lshrrev_b32_e32 v64, 8, v66
	v_lshrrev_b32_e32 v65, 24, v66
	v_and_b16 v42.h, 0xff, v66.h
	v_and_b16 v43.l, 0xff, v67.l
	v_lshrrev_b32_e32 v66, 8, v67
	v_lshrrev_b32_e32 v68, 24, v67
	v_and_b16 v43.h, 0xff, v67.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v67, v24, v20, 0x5010400
	v_perm_b32 v24, v24, v20, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v73, v32, v28, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v69, v25, v21, 0x5010400
	v_perm_b32 v25, v25, v21, 0x7030602
	v_perm_b32 v70, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	v_perm_b32 v71, v27, v23, 0x5010400
	v_perm_b32 v72, v27, v23, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v32, v32, v28, 0x7030602
	v_perm_b32 v74, v33, v29, 0x5010400
	v_perm_b32 v33, v33, v29, 0x7030602
	v_perm_b32 v75, v34, v30, 0x5010400
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v76, v35, v31, 0x5010400
	v_perm_b32 v77, v35, v31, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v4.l, v4.l, v12.l
	v_or_b16 v5.l, v5.l, v13.l
	v_or_b16 v8.h, v8.h, v16.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v12.l, 8, v44.l
	v_lshlrev_b16 v13.l, 8, v46.l
	v_lshlrev_b16 v16.h, 8, v61.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v44, 8, v67
	v_or_b16 v4.h, v4.h, v12.h
	v_or_b16 v5.h, v5.h, v13.h
	v_or_b16 v9.l, v9.l, v17.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v12.h, 8, v45.l
	v_lshlrev_b16 v13.h, 8, v47.l
	v_lshlrev_b16 v17.l, 8, v62.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v45, 24, v67
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v9.h, v9.h, v17.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.l, 8, v48.l
	v_lshlrev_b16 v17.h, 8, v63.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v46, 8, v24
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v10.l, v10.l, v18.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.h, 8, v57.l
	v_lshlrev_b16 v18.l, 8, v64.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v47, 24, v24
	v_or_b16 v11.h, v11.h, v19.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v19.h, 8, v68.l
	v_lshrrev_b32_e32 v68, 8, v73
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v15.l, 8, v58.l
	v_lshlrev_b16 v15.h, 8, v59.l
	v_lshlrev_b16 v16.l, 8, v60.l
	v_lshlrev_b16 v18.h, 8, v65.l
	v_lshlrev_b16 v19.l, 8, v66.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v20.l, 0xff, v67.l
	v_and_b16 v20.h, 0xff, v67.h
	v_and_b16 v21.l, 0xff, v24.l
	v_and_b16 v21.h, 0xff, v24.h
	v_and_b16 v22.l, 0xff, v69.l
	v_lshrrev_b32_e32 v48, 8, v69
	v_lshrrev_b32_e32 v57, 24, v69
	v_and_b16 v22.h, 0xff, v69.h
	v_and_b16 v23.l, 0xff, v25.l
	v_lshrrev_b32_e32 v58, 8, v25
	v_lshrrev_b32_e32 v59, 24, v25
	v_and_b16 v23.h, 0xff, v25.h
	v_and_b16 v24.l, 0xff, v70.l
	v_lshrrev_b32_e32 v60, 8, v70
	v_lshrrev_b32_e32 v61, 24, v70
	v_and_b16 v24.h, 0xff, v70.h
	v_and_b16 v25.l, 0xff, v26.l
	v_lshrrev_b32_e32 v62, 8, v26
	v_lshrrev_b32_e32 v63, 24, v26
	v_and_b16 v25.h, 0xff, v26.h
	v_and_b16 v26.l, 0xff, v71.l
	v_lshrrev_b32_e32 v64, 8, v71
	v_lshrrev_b32_e32 v65, 24, v71
	v_and_b16 v26.h, 0xff, v71.h
	v_and_b16 v27.l, 0xff, v72.l
	v_lshrrev_b32_e32 v66, 8, v72
	v_lshrrev_b32_e32 v67, 24, v72
	v_and_b16 v27.h, 0xff, v72.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v28.l, 0xff, v73.l
	v_lshrrev_b32_e32 v69, 24, v73
	v_and_b16 v28.h, 0xff, v73.h
	v_and_b16 v29.l, 0xff, v32.l
	v_lshrrev_b32_e32 v70, 8, v32
	v_lshrrev_b32_e32 v71, 24, v32
	v_and_b16 v29.h, 0xff, v32.h
	v_and_b16 v30.l, 0xff, v74.l
	v_lshrrev_b32_e32 v72, 8, v74
	v_lshrrev_b32_e32 v73, 24, v74
	v_and_b16 v30.h, 0xff, v74.h
	v_and_b16 v31.l, 0xff, v33.l
	v_lshrrev_b32_e32 v74, 8, v33
	v_lshrrev_b32_e32 v78, 24, v33
	v_and_b16 v31.h, 0xff, v33.h
	v_and_b16 v32.l, 0xff, v75.l
	v_lshrrev_b32_e32 v79, 8, v75
	v_lshrrev_b32_e32 v80, 24, v75
	v_and_b16 v32.h, 0xff, v75.h
	v_and_b16 v33.l, 0xff, v34.l
	v_lshrrev_b32_e32 v75, 8, v34
	v_lshrrev_b32_e32 v81, 24, v34
	v_and_b16 v33.h, 0xff, v34.h
	v_and_b16 v34.l, 0xff, v76.l
	v_lshrrev_b32_e32 v82, 8, v76
	v_lshrrev_b32_e32 v83, 24, v76
	v_and_b16 v34.h, 0xff, v76.h
	v_lshrrev_b32_e32 v76, 8, v77
	v_lshrrev_b32_e32 v84, 24, v77
	v_or_b16 v12.l, v36.l, v12.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v54, v4
	ds_store_b16_d16_hi v54, v4 offset:32
	ds_store_b16 v54, v5 offset:64
	ds_store_b16_d16_hi v54, v5 offset:96
	ds_store_b16_d16_hi v55, v6 offset:32
	ds_store_b16 v55, v7 offset:64
	ds_store_b16_d16_hi v55, v7 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.h, v37.l, v13.l
	v_or_b16 v13.l, v40.h, v16.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v16.h, 8, v44.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v5.l, v37.h, v13.h
	v_or_b16 v13.h, v41.l, v17.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.l, 8, v45.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v5.h, v38.l, v14.l
	v_or_b16 v14.l, v41.h, v17.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.h, 8, v46.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v6.h, v38.h, v14.h
	v_or_b16 v14.h, v42.l, v18.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.l, 8, v47.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.l, v36.h, v12.h
	v_lshlrev_b16 v40.h, 8, v68.l
	v_and_b16 v35.l, 0xff, v77.l
	v_and_b16 v35.h, 0xff, v77.h
	v_or_b16 v7.l, v39.l, v15.l
	v_or_b16 v7.h, v39.h, v15.h
	v_or_b16 v12.h, v40.l, v16.l
	v_or_b16 v15.l, v42.h, v18.h
	v_or_b16 v15.h, v43.l, v19.l
	v_or_b16 v16.l, v43.h, v19.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.h, 8, v48.l
	v_lshlrev_b16 v19.l, 8, v57.l
	v_lshlrev_b16 v19.h, 8, v58.l
	v_lshlrev_b16 v36.l, 8, v59.l
	v_lshlrev_b16 v36.h, 8, v60.l
	v_lshlrev_b16 v37.l, 8, v61.l
	v_lshlrev_b16 v37.h, 8, v62.l
	v_lshlrev_b16 v38.l, 8, v63.l
	v_lshlrev_b16 v38.h, 8, v64.l
	v_lshlrev_b16 v39.l, 8, v65.l
	v_lshlrev_b16 v39.h, 8, v66.l
	v_lshlrev_b16 v40.l, 8, v67.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v41.l, 8, v69.l
	v_lshlrev_b16 v41.h, 8, v70.l
	v_lshlrev_b16 v42.l, 8, v71.l
	v_lshlrev_b16 v42.h, 8, v72.l
	v_lshlrev_b16 v43.l, 8, v73.l
	v_lshlrev_b16 v43.h, 8, v74.l
	v_lshlrev_b16 v44.l, 8, v78.l
	v_lshlrev_b16 v44.h, 8, v79.l
	v_lshlrev_b16 v45.l, 8, v80.l
	v_lshlrev_b16 v45.h, 8, v75.l
	v_lshlrev_b16 v46.l, 8, v81.l
	v_lshlrev_b16 v46.h, 8, v82.l
	v_lshlrev_b16 v47.l, 8, v83.l
	v_lshlrev_b16 v47.h, 8, v76.l
	v_lshlrev_b16 v48.l, 8, v84.l
	ds_store_b16 v54, v12 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v55, v6
	ds_store_b16 v56, v8
	ds_store_b16_d16_hi v56, v8 offset:32
	ds_store_b16 v56, v9 offset:64
	ds_store_b16_d16_hi v56, v9 offset:96
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v53, v[49:50] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v54, v4 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v54, v10 offset:384
	ds_store_b16_d16_hi v54, v10 offset:416
	ds_store_b16 v54, v11 offset:448
	ds_store_b16_d16_hi v54, v11 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v54, v4 offset:16416
	ds_store_b16 v54, v5 offset:16480
	ds_store_b16_d16_hi v55, v5 offset:16384
	ds_store_b16_d16_hi v55, v6 offset:16416
	ds_store_b16 v55, v7 offset:16448
	ds_store_b16_d16_hi v55, v7 offset:16480
	ds_store_b16_d16_hi v56, v12 offset:16384
	ds_store_b16 v56, v13 offset:16416
	ds_store_b16_d16_hi v56, v13 offset:16448
	ds_store_b16 v56, v14 offset:16480
	ds_store_b16_d16_hi v54, v14 offset:16768
	ds_store_b16 v54, v15 offset:16800
	ds_store_b16_d16_hi v54, v15 offset:16832
	ds_store_b16 v54, v16 offset:16864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v4.l, v20.l, v16.h
	v_or_b16 v4.h, v20.h, v17.l
	v_or_b16 v5.l, v21.l, v17.h
	v_or_b16 v5.h, v21.h, v18.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v12.l, v28.l, v40.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.l, v22.l, v18.h
	v_or_b16 v6.h, v22.h, v19.l
	v_or_b16 v7.l, v23.l, v19.h
	v_or_b16 v7.h, v23.h, v36.l
	v_or_b16 v8.l, v24.l, v36.h
	v_or_b16 v8.h, v24.h, v37.l
	v_or_b16 v9.l, v25.l, v37.h
	v_or_b16 v9.h, v25.h, v38.l
	v_or_b16 v10.l, v26.l, v38.h
	v_or_b16 v10.h, v26.h, v39.l
	v_or_b16 v11.l, v27.l, v39.h
	v_or_b16 v11.h, v27.h, v40.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v12.h, v28.h, v41.l
	v_or_b16 v13.l, v29.l, v41.h
	v_or_b16 v13.h, v29.h, v42.l
	v_or_b16 v14.l, v30.l, v42.h
	v_or_b16 v14.h, v30.h, v43.l
	v_or_b16 v15.l, v31.l, v43.h
	v_or_b16 v15.h, v31.h, v44.l
	v_or_b16 v16.l, v32.l, v44.h
	v_or_b16 v16.h, v32.h, v45.l
	v_or_b16 v17.l, v33.l, v45.h
	v_or_b16 v17.h, v33.h, v46.l
	v_or_b16 v18.l, v34.l, v46.h
	v_or_b16 v18.h, v34.h, v47.l
	v_or_b16 v19.l, v35.l, v47.h
	v_or_b16 v19.h, v35.h, v48.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v54, v4 offset:8192
	ds_store_b16_d16_hi v54, v4 offset:8224
	ds_store_b16 v54, v5 offset:8256
	ds_store_b16_d16_hi v54, v5 offset:8288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v54, v12 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v55, v6 offset:8192
	ds_store_b16_d16_hi v55, v6 offset:8224
	ds_store_b16 v55, v7 offset:8256
	ds_store_b16_d16_hi v55, v7 offset:8288
	ds_store_b16 v56, v8 offset:8192
	ds_store_b16_d16_hi v56, v8 offset:8224
	ds_store_b16 v56, v9 offset:8256
	ds_store_b16_d16_hi v56, v9 offset:8288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v53, v[51:52] offset:34816
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v54, v13 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v54, v10 offset:8576
	ds_store_b16_d16_hi v54, v10 offset:8608
	ds_store_b16 v54, v11 offset:8640
	ds_store_b16_d16_hi v54, v11 offset:8672
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v54, v12 offset:24608
	ds_store_b16_d16_hi v54, v13 offset:24672
	ds_store_b16 v55, v14 offset:24576
	ds_store_b16_d16_hi v55, v14 offset:24608
	ds_store_b16 v55, v15 offset:24640
	ds_store_b16_d16_hi v55, v15 offset:24672
	ds_store_b16 v56, v16 offset:24576
	ds_store_b16_d16_hi v56, v16 offset:24608
	ds_store_b16 v56, v17 offset:24640
	ds_store_b16_d16_hi v56, v17 offset:24672
	ds_store_b16 v54, v18 offset:24960
	ds_store_b16_d16_hi v54, v18 offset:24992
	ds_store_b16 v54, v19 offset:25024
	ds_store_b16_d16_hi v54, v19 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v67, 5, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 0xe00, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v4, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v168, 8, v0
	s_mov_b32 s3, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v6, 0x160, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v5, v1, 5, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr168
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow608
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v2
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v85, off offset:236
	scratch_store_b32 off, v86, off offset:240
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 2, 1
	v_bfe_i32 v4, v0, 3, 1
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v0, s34, v160
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s36, s5, 5
	s_add_i32 s1, s7, 32
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v3, 0xe00, v3
	v_and_b32_e32 v2, 0x90, v2
	v_and_b32_e32 v4, 0x110, v4
	v_and_b32_e32 v5, 0x160, v87
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_lshl_or_b32 v0, v1, 5, v3
	v_mov_b32_e32 v86, 0
	v_xor_b32_e32 v1, v2, v4
	v_or_b32_e32 v2, v2, v5
	scratch_store_b32 off, v5, off offset:256 ; 4-byte Folded Spill
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v237, 0
	v_or_b32_e32 v1, v1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:184
	scratch_store_b32 off, v1, off offset:180
	v_xor_b32_e32 v1, 16, v1
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v248, 0
	v_mov_b32_e32 v83, 0
	scratch_store_b32 off, v1, off offset:192 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[1:4], off offset:196
	scratch_store_b128 off, v[5:8], off offset:212
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v245, 0
	scratch_store_b64 off, v[2:3], off offset:48 ; 8-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v239, 0
	scratch_store_b64 off, v[2:3], off offset:56 ; 8-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v129, 0
	v_mov_b32_e32 v3, 0
	scratch_store_b32 off, v87, off offset:248 ; 4-byte Folded Spill
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v85, 0
	scratch_store_b64 off, v[2:3], off offset:8 ; 8-byte Folded Spill
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v65, 0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v169, 0
	v_mov_b32_e32 v170, 0
	s_add_i32 s38, 0, 0x8000
	s_add_i32 s30, 0, 0x8800
	s_add_i32 s29, 0, 0x2000
	s_add_i32 s35, 0, 0x4000
	s_add_i32 s3, 0, 0x6000
	s_add_i32 s36, s36, -3
	s_mov_b32 s37, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, 0
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[2:3], off offset:16
	scratch_store_b32 off, v171, off offset:228
	scratch_store_b32 off, v119, off offset:232
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	scratch_load_b32 v2, off, off offset:184 ; 4-byte Folded Reload
	s_mov_b32 s6, s4
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s4, s5, 5
	s_clause 0x10                           ; 136-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:160
	scratch_store_b64 off, v[251:252], off offset:152
	scratch_store_b64 off, v[0:1], off
	scratch_store_b64 off, v[95:96], off offset:144
	scratch_store_b64 off, v[103:104], off offset:136
	scratch_store_b64 off, v[89:90], off offset:128
	scratch_store_b64 off, v[65:66], off offset:120
	scratch_store_b64 off, v[206:207], off offset:112
	scratch_store_b64 off, v[204:205], off offset:40
	scratch_store_b64 off, v[218:219], off offset:32
	scratch_store_b64 off, v[7:8], off offset:24
	scratch_store_b64 off, v[137:138], off offset:104
	scratch_store_b64 off, v[99:100], off offset:96
	scratch_store_b64 off, v[91:92], off offset:88
	scratch_store_b64 off, v[208:209], off offset:80
	scratch_store_b64 off, v[93:94], off offset:72
	scratch_store_b64 off, v[129:130], off offset:64
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s4, s1, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v95, v253 :: v_dual_add_nc_u32 v14, s4, v243
	v_or_b32_e32 v13, s4, v119
	v_dual_mov_b32 v119, v255 :: v_dual_mov_b32 v82, v74
	v_mov_b32_e32 v81, v73
	v_mov_b32_e32 v91, v239
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v13
	v_dual_mov_b32 v99, v241 :: v_dual_mov_b32 v8, v238
	scratch_load_b32 v25, off, off offset:192 ; 4-byte Folded Reload
	v_dual_mov_b32 v104, v86 :: v_dual_cndmask_b32 v13, 0x80000000, v14
	v_dual_mov_b32 v171, v243 :: v_dual_mov_b32 v96, v254
	v_dual_mov_b32 v103, v85 :: v_dual_mov_b32 v90, v88
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[0:1], v13, s[20:23], 0 offen
	v_dual_mov_b32 v86, v71 :: v_dual_mov_b32 v85, v70
	v_dual_mov_b32 v89, v87 :: v_dual_mov_b32 v124, v80
	v_mov_b32_e32 v73, v236
	v_dual_mov_b32 v123, v79 :: v_dual_mov_b32 v88, v78
	v_dual_mov_b32 v79, v151 :: v_dual_mov_b32 v80, v152
	v_mov_b32_e32 v151, v157
	v_dual_mov_b32 v87, v77 :: v_dual_mov_b32 v152, v158
	v_dual_mov_b32 v158, v154 :: v_dual_mov_b32 v157, v153
	v_dual_mov_b32 v154, v148 :: v_dual_mov_b32 v153, v147
	v_mov_b32_e32 v138, v132
	v_dual_mov_b32 v148, v142 :: v_dual_mov_b32 v147, v141
	v_dual_mov_b32 v142, v136 :: v_dual_mov_b32 v137, v131
	v_dual_mov_b32 v141, v135 :: v_dual_mov_b32 v130, v118
	v_dual_mov_b32 v136, v126 :: v_dual_mov_b32 v135, v125
	v_dual_mov_b32 v129, v117 :: v_dual_mov_b32 v118, v102
	v_dual_mov_b32 v126, v110 :: v_dual_mov_b32 v117, v101
	v_dual_mov_b32 v102, v69 :: v_dual_mov_b32 v101, v68
	v_dual_mov_b32 v125, v109 :: v_dual_mov_b32 v132, v76
	v_dual_mov_b32 v109, v249 :: v_dual_mov_b32 v92, v240
	v_dual_mov_b32 v131, v75 :: v_dual_mov_b32 v100, v242
	v_dual_mov_b32 v75, v234 :: v_dual_mov_b32 v74, v237
	v_mov_b32_e32 v110, v250
	v_dual_mov_b32 v76, v235 :: v_dual_mov_b32 v77, v244
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v78, v245 :: v_dual_add_nc_u32 v9, s38, v2
	v_xor_b32_e32 v10, 16, v2
	scratch_load_b32 v2, off, off offset:180 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v10, s38, v10
	s_mov_b32 s38, s30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v12, s6, v25
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	scratch_store_b64 off, v[0:1], off offset:168 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[252:255], v9 offset:1536
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[47:50], v12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[161:164], v10
	ds_load_b128 v[165:168], v10 offset:512
	ds_load_b128 v[51:54], v10 offset:1024
	ds_load_b128 v[55:58], v10 offset:1536
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[220:223], v12 offset:4096
	scratch_load_b64 v[93:94], off, off offset:16 ; 8-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v11, s6, v2
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v59, s35, v2
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:196
	scratch_load_b128 v[4:7], off, off offset:212
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[27:30], v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[31:34], v11
	ds_load_b128 v[35:38], v11 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[39:42], v9 offset:512
	ds_load_b128 v[43:46], v9 offset:1024
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s6, s4, s34
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[31:34], v[27:30], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[31:34], v[39:42], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[188:195], v[31:34], v[43:46], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[31:34], v[252:255], v[0:7] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v31, s35, v25
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[47:50], v[161:164], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[47:50], v[165:168], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[188:195], v[47:50], v[51:54], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[47:50], v[55:58], v[196:203] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[47:50], v59
	ds_load_b128 v[59:62], v59 offset:4096
	ds_load_b128 v[63:66], v31
	ds_load_b128 v[67:70], v31 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[35:38], v[27:30], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[35:38], v[39:42], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[204:211], v[35:38], v[43:46], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[35:38], v[252:255], v[0:7] neg_lo:[1,1,0]
	v_dual_mov_b32 v25, v83 :: v_dual_mov_b32 v26, v84
	v_mov_b32_e32 v83, v247
	v_wmma_i32_16x16x16_iu8 v[17:24], v[220:223], v[161:164], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[220:223], v[165:168], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[204:211], v[220:223], v[51:54], v[204:211] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[220:223], v[55:58], v[212:219] neg_lo:[1,1,0]
	v_mov_b32_e32 v84, v248
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[220:227], v[47:50], v[27:30], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[228:235], v[59:62], v[27:30], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[236:243], v[47:50], v[39:42], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[244:251], v[59:62], v[39:42], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[220:227], v[63:66], v[161:164], v[220:227] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[228:235], v[67:70], v[161:164], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[236:243], v[63:66], v[165:168], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[244:251], v[67:70], v[165:168], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[47:50], v[43:46], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[27:34], v[59:62], v[43:46], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[35:42], v[47:50], v[252:255], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[59:62], v[252:255], v[0:7] neg_lo:[1,1,0]
	scratch_load_b64 v[0:1], off, off offset:48 ; 8-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[161:168], v[63:66], v[51:54], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[35:42], v[63:66], v[55:58], v[35:42] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v64, v233
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v233, s6, v160
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v22, v22
	v_mov_b32_e32 v3, v89
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[27:34], v[67:70], v[51:54], v[27:34] neg_lo:[1,1,0]
	v_mov_b32_e32 v4, v90
	v_wmma_i32_16x16x16_iu8 v[43:50], v[67:70], v[55:58], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v65, v234
	v_cvt_f32_i32_e32 v66, v235
	v_mov_b32_e32 v235, v76
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v67, v172
	v_cvt_f32_i32_e32 v68, v173
	v_cvt_f32_i32_e32 v172, v176
	v_cvt_f32_i32_e32 v173, v177
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v176, v236
	v_cvt_f32_i32_e32 v177, v237
	v_mov_b32_e32 v237, v74
	v_mov_b32_e32 v255, v119
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v51, v220
	v_cvt_f32_i32_e32 v55, v224
	v_cvt_f32_i32_e32 v56, v225
	v_cvt_f32_i32_e32 v58, v227
	v_cvt_f32_i32_e32 v59, v228
	v_mov_b32_e32 v234, v75
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v70, v175
	v_cvt_f32_i32_e32 v175, v179
	v_mov_b32_e32 v236, v73
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v179, v239
	v_cvt_f32_i32_e32 v220, v240
	v_mov_b32_e32 v240, v92
	v_cvt_f32_i32_e32 v224, v244
	v_cvt_f32_i32_e32 v225, v245
	v_dual_mov_b32 v245, v78 :: v_dual_add_f32 v236, v236, v9
	v_cvt_f32_i32_e32 v227, v247
	v_cvt_f32_i32_e32 v228, v248
	v_mov_b32_e32 v248, v84
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v11
	v_dual_mov_b32 v239, v91 :: v_dual_mov_b32 v244, v77
	v_dual_mov_b32 v247, v83 :: v_dual_mov_b32 v84, v26
	v_cvt_f32_i32_e32 v14, v14
	v_mov_b32_e32 v83, v25
	v_mov_b32_e32 v25, v103
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v62, v231
	v_cvt_f32_i32_e32 v231, v251
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v115, v115, v23 :: v_dual_mov_b32 v26, v104
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v69, v174
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v60, v229
	v_cvt_f32_i32_e32 v61, v230
	v_cvt_f32_i32_e32 v229, v249
	v_cvt_f32_i32_e32 v230, v250
	v_dual_mov_b32 v250, v110 :: v_dual_mov_b32 v249, v109
	v_mov_b32_e32 v109, v125
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v235, v235, v68
	v_dual_add_f32 v155, v155, v69 :: v_dual_mov_b32 v110, v126
	v_mov_b32_e32 v125, v135
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v63, v232
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v174, v178
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v232, v161
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v161, v204
	v_cvt_f32_i32_e32 v204, v205
	v_cvt_f32_i32_e32 v205, v206
	v_cvt_f32_i32_e32 v206, v207
	v_cvt_f32_i32_e32 v207, v208
	v_cvt_f32_i32_e32 v208, v209
	v_cvt_f32_i32_e32 v209, v210
	v_cvt_f32_i32_e32 v210, v211
	v_cvt_f32_i32_e32 v211, v212
	v_cvt_f32_i32_e32 v212, v213
	v_cvt_f32_i32_e32 v213, v214
	v_cvt_f32_i32_e32 v214, v215
	v_cvt_f32_i32_e32 v215, v216
	v_cvt_f32_i32_e32 v216, v217
	v_cvt_f32_i32_e32 v217, v218
	v_cvt_f32_i32_e32 v218, v219
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v219, s4, v8
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v54, v223
	v_cvt_f32_i32_e32 v223, v243
	v_mov_b32_e32 v243, v171
	v_mov_b32_e32 v75, v131
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v191, v191
	v_dual_mov_b32 v76, v132 :: v_dual_mov_b32 v131, v137
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v194, v194
	v_cvt_f32_i32_e32 v197, v197
	v_dual_mov_b32 v132, v138 :: v_dual_mov_b32 v77, v87
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v199, v199
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v219
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v237, v237, v10 :: v_dual_add_f32 v112, v112, v20
	v_add_f32_e32 v244, v244, v11
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v52, v221
	v_cvt_f32_i32_e32 v53, v222
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v221, v241
	v_cvt_f32_i32_e32 v222, v242
	v_dual_mov_b32 v242, v100 :: v_dual_add_f32 v85, v85, v215
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v108, v108, v62
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v178, v238
	v_dual_mov_b32 v241, v99 :: v_dual_mov_b32 v238, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v195, v195
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v245, v245, v12 :: v_dual_add_f32 v240, v240, v18
	v_dual_add_f32 v84, v84, v14 :: v_dual_add_f32 v83, v83, v13
	v_add_f32_e32 v116, v116, v24
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v119, off, off offset:232
	scratch_load_b32 v171, off, off offset:228
	scratch_load_b64 v[7:8], off, off offset:8
	v_dual_add_f32 v111, v111, v19 :: v_dual_add_f32 v156, v156, v70
	v_dual_add_f32 v239, v239, v17 :: v_dual_add_f32 v234, v234, v67
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v201, v201
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v203, v203
	s_mov_b32 s35, s3
	s_mov_b32 s4, s29
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v57, v226
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v198, v198
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v249, v249, v209 :: v_dual_add_f32 v76, v76, v214
	v_dual_add_f32 v169, v169, v217 :: v_dual_add_f32 v242, v242, v66
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v241, v241, v65
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v113, v113, v167 :: v_dual_add_f32 v26, v26, v42
	v_add_f32_e32 v25, v25, v41
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v143, v143, v224 :: v_dual_add_f32 v106, v106, v30
	v_dual_add_f32 v133, v133, v228 :: v_dual_add_f32 v98, v98, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v181, v181
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v81, v81, v49
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v187, v187
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v226, v246
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v192, v192
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v168, v168
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v132, v132, v185 :: v_dual_add_f32 v149, v149, v222
	scratch_load_b32 v2, off, off offset:176 ; 4-byte Folded Reload
	v_mov_b32_e32 v254, v96
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v114, v114, v168 :: v_dual_mov_b32 v253, v95
	v_mov_b32_e32 v68, v101
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[251:252], off, off offset:152
	scratch_load_b64 v[95:96], off, off offset:144
	scratch_load_b64 v[103:104], off, off offset:136
	scratch_load_b64 v[89:90], off, off offset:128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v127, v127, v186
	v_dual_mov_b32 v69, v102 :: v_dual_mov_b32 v126, v136
	v_mov_b32_e32 v135, v141
	v_dual_mov_b32 v101, v117 :: v_dual_mov_b32 v136, v142
	v_dual_mov_b32 v141, v147 :: v_dual_mov_b32 v78, v88
	v_dual_mov_b32 v102, v118 :: v_dual_mov_b32 v117, v129
	v_add_f32_e32 v121, v121, v188
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v123, v123, v200 :: v_dual_add_f32 v78, v78, v54
	v_mov_b32_e32 v118, v130
	v_dual_mov_b32 v142, v148 :: v_dual_mov_b32 v147, v153
	v_dual_mov_b32 v148, v154 :: v_dual_mov_b32 v153, v157
	v_dual_add_f32 v109, v109, v194 :: v_dual_add_f32 v4, v4, v197
	v_mov_b32_e32 v154, v158
	v_dual_mov_b32 v158, v152 :: v_dual_add_f32 v69, v69, v199
	v_add_f32_e32 v86, v86, v216
	v_dual_add_f32 v3, v3, v196 :: v_dual_mov_b32 v70, v85
	v_dual_add_f32 v102, v102, v206 :: v_dual_add_f32 v101, v101, v205
	v_add_f32_e32 v68, v68, v198
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v248, v248, v56 :: v_dual_mov_b32 v157, v151
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v140, v140, v181
	v_dual_mov_b32 v152, v80 :: v_dual_mov_b32 v151, v79
	v_add_f32_e32 v136, v136, v183
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v145, v145, v51
	v_dual_add_f32 v77, v77, v53 :: v_dual_add_f32 v158, v158, v179
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v118, v118, v191
	v_add_f32_e32 v110, v110, v195
	v_dual_add_f32 v148, v148, v173 :: v_dual_add_f32 v247, v247, v55
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v154, v154, v221
	v_dual_add_f32 v253, v253, v45 :: v_dual_add_f32 v142, v142, v175
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v147, v147, v172 :: v_dual_add_f32 v128, v128, v187
	v_dual_add_f32 v135, v135, v182 :: v_dual_add_f32 v122, v122, v189
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v152, v152, v177 :: v_dual_add_f32 v151, v151, v176
	v_add_f32_e32 v126, v126, v162
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v124, v124, v201
	v_dual_mov_b32 v79, v123 :: v_dual_add_f32 v146, v146, v52
	v_mov_b32_e32 v88, v4
	v_add_f32_e32 v94, v94, v212
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v80, v124 :: v_dual_mov_b32 v87, v3
	v_add_f32_e32 v170, v170, v218
	v_add_f32_e32 v250, v250, v210
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v134, v134, v229
	v_add_f32_e32 v150, v150, v223
	v_add_f32_e32 v144, v144, v225
	v_add_f32_e32 v254, v254, v46
	v_add_f32_e32 v82, v82, v50
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v73, v81 :: v_dual_mov_b32 v74, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(8)
	v_dual_add_f32 v1, v1, v16 :: v_dual_add_f32 v0, v0, v15
	v_dual_add_f32 v139, v139, v180 :: v_dual_cndmask_b32 v12, 0x80000000, v233
	scratch_store_b64 off, v[0:1], off offset:48 ; 8-byte Folded Spill
	scratch_load_b64 v[0:1], off, off offset:56 ; 8-byte Folded Reload
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[17:20], v12, s[24:27], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v9, s6, v2
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	s_add_i32 s6, s6, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v141, v141, v174 :: v_dual_add_nc_u32 v10, s6, v160
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v90, v90, v193 :: v_dual_add_nc_u32 v11, s6, v2
	v_add_f32_e32 v131, v131, v184
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_dual_cndmask_b32 v13, 0x80000000, v11 :: v_dual_add_f32 v104, v104, v204
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v103, v103, v161
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s37, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v95, v95, v207
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s6, 2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v96, v96, v208
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s37, s6, 0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v252, v252, v38
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s3, s37, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s37, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s3, s3, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s29, s7, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v67, s3, v255
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v161, s29, v171
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v251, v251, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v117, v117, v190 :: v_dual_add_nc_u32 v172, s29, v159
	v_add_f32_e32 v89, v89, v192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s30, s3, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s3, s29, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s36
	s_mov_b32 s5, s6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v1, v1, v22 :: v_dual_add_f32 v0, v0, v21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v9, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v10, s[24:27], 0 offen
	scratch_store_b64 off, v[0:1], off offset:56 ; 8-byte Folded Spill
	scratch_load_b64 v[0:1], off, off       ; 8-byte Folded Reload
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[4:5], off, off offset:160
	scratch_load_b64 v[2:3], off, off offset:168
	scratch_load_b64 v[206:207], off, off offset:112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v8, v203 :: v_dual_add_nc_u32 v173, s29, v120
	v_add_f32_e32 v7, v7, v202
	v_add_f32_e32 v93, v93, v211
	v_mov_b32_e32 v71, v86
	v_dual_mov_b32 v86, v26 :: v_dual_mov_b32 v85, v25
	v_add_f32_e32 v75, v75, v213
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(5)
	v_perm_b32 v25, v21, v17, 0x5010400
	v_perm_b32 v17, v21, v17, 0x7030602
	v_perm_b32 v21, v22, v18, 0x5010400
	v_perm_b32 v18, v22, v18, 0x7030602
	v_perm_b32 v22, v23, v19, 0x5010400
	v_perm_b32 v19, v23, v19, 0x7030602
	v_perm_b32 v23, v24, v20, 0x5010400
	v_perm_b32 v20, v24, v20, 0x7030602
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v4, v4, v57
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[7:8], off offset:8
	scratch_store_b64 off, v[93:94], off offset:16
	s_clause 0x9                            ; 80-byte Folded Reload
	scratch_load_b64 v[65:66], off, off offset:120
	scratch_load_b64 v[129:130], off, off offset:64
	scratch_load_b64 v[204:205], off, off offset:40
	scratch_load_b64 v[218:219], off, off offset:32
	scratch_load_b64 v[7:8], off, off offset:24
	scratch_load_b64 v[137:138], off, off offset:104
	scratch_load_b64 v[99:100], off, off offset:96
	scratch_load_b64 v[91:92], off, off offset:88
	scratch_load_b64 v[208:209], off, off offset:80
	scratch_load_b64 v[93:94], off, off offset:72
	v_add_f32_e32 v105, v105, v29
	v_add_f32_e32 v97, v97, v33
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v24, v13, v9, 0x5010400
	v_perm_b32 v26, v13, v9, 0x7030602
	v_perm_b32 v29, v15, v11, 0x5010400
	v_perm_b32 v30, v15, v11, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v33, 8, v25
	v_lshrrev_b32_e32 v34, 24, v25
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v125, v125, v232
	v_add_f32_e32 v5, v5, v58
	s_waitcnt vmcnt(10)
	v_dual_add_f32 v207, v207, v60 :: v_dual_add_f32 v206, v206, v59
	v_add_f32_e32 v107, v107, v61
	v_dual_add_f32 v1, v1, v64 :: v_dual_add_f32 v0, v0, v63
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v9.l, 0xff, v25.l
	v_lshrrev_b32_e32 v37, 8, v21
	v_lshrrev_b32_e32 v38, 24, v21
	v_lshrrev_b32_e32 v41, 8, v22
	v_lshrrev_b32_e32 v42, 24, v22
	v_lshrrev_b32_e32 v45, 8, v23
	v_lshrrev_b32_e32 v46, 24, v23
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v49, 8, v24
	v_lshrrev_b32_e32 v50, 24, v24
	v_lshrrev_b32_e32 v51, 8, v26
	v_lshrrev_b32_e32 v52, 24, v26
	v_lshrrev_b32_e32 v57, 8, v29
	v_lshrrev_b32_e32 v58, 24, v29
	v_lshrrev_b32_e32 v59, 8, v30
	v_lshrrev_b32_e32 v60, 24, v30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v9.h, 0xff, v25.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v157, v157, v178
	v_add_f32_e32 v153, v153, v220
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v11.l, 0xff, v21.l
	v_and_b16 v11.h, 0xff, v21.h
	v_and_b16 v13.l, 0xff, v22.l
	v_and_b16 v13.h, 0xff, v22.h
	v_and_b16 v15.l, 0xff, v23.l
	v_and_b16 v15.h, 0xff, v23.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v21.l, 0xff, v29.l
	v_and_b16 v21.h, 0xff, v29.h
	v_and_b16 v22.l, 0xff, v30.l
	v_and_b16 v22.h, 0xff, v30.h
	v_lshlrev_b16 v37.h, 8, v58.l
	v_lshlrev_b16 v38.h, 8, v60.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v67, v[2:3] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v25.l, 8, v33.l
	v_lshlrev_b16 v25.h, 8, v34.l
	v_lshlrev_b16 v29.l, 8, v41.l
	v_lshlrev_b16 v29.h, 8, v42.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v33.l, 8, v49.l
	v_lshlrev_b16 v33.h, 8, v50.l
	v_lshlrev_b16 v34.l, 8, v51.l
	v_lshlrev_b16 v34.h, 8, v52.l
	v_or_b16 v21.h, v21.h, v37.h
	v_or_b16 v22.h, v22.h, v38.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.l, v25.l
	v_or_b16 v9.h, v9.h, v25.h
	v_or_b16 v13.l, v13.l, v29.l
	v_or_b16 v13.h, v13.h, v29.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(9)
	v_add_f32_e32 v66, v66, v48
	s_waitcnt vmcnt(7)
	v_dual_add_f32 v130, v130, v44 :: v_dual_add_f32 v205, v205, v227
	s_waitcnt vmcnt(6)
	v_add_f32_e32 v219, v219, v231
	s_waitcnt vmcnt(5)
	v_add_f32_e32 v7, v7, v163
	s_waitcnt vmcnt(4)
	v_add_f32_e32 v137, v137, v165
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v99, v99, v27 :: v_dual_add_f32 v100, v100, v28
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v92, v92, v32 :: v_dual_add_f32 v91, v91, v31
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v27, v14, v10, 0x5010400
	v_perm_b32 v28, v14, v10, 0x7030602
	v_perm_b32 v31, v16, v12, 0x5010400
	v_perm_b32 v32, v16, v12, 0x7030602
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v208, v208, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v35, 8, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v209, v209, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v36, 24, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v93, v93, v39
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v39, 8, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v94, v94, v40 :: v_dual_add_f32 v129, v129, v43
	v_add_f32_e32 v65, v65, v47
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v40, 24, v18
	v_lshrrev_b32_e32 v43, 8, v19
	v_lshrrev_b32_e32 v44, 24, v19
	v_lshrrev_b32_e32 v47, 8, v20
	v_lshrrev_b32_e32 v48, 24, v20
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v53, 8, v27
	v_lshrrev_b32_e32 v54, 24, v27
	v_lshrrev_b32_e32 v55, 8, v28
	v_lshrrev_b32_e32 v56, 24, v28
	v_lshrrev_b32_e32 v61, 8, v31
	v_lshrrev_b32_e32 v62, 24, v31
	v_lshrrev_b32_e32 v63, 8, v32
	v_lshrrev_b32_e32 v64, 24, v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v10.l, 0xff, v17.l
	v_and_b16 v12.l, 0xff, v18.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v18.l, 0xff, v26.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v26.l, 8, v35.l
	v_and_b16 v10.h, 0xff, v17.h
	v_and_b16 v12.h, 0xff, v18.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v18.h, 0xff, v26.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v26.h, 8, v36.l
	v_and_b16 v16.l, 0xff, v20.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v20.l, 0xff, v28.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v28.l, 8, v39.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v204, v204, v226
	v_add_f32_e32 v218, v218, v230
	v_add_f32_e32 v8, v8, v164
	v_add_f32_e32 v138, v138, v166
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v14.l, 0xff, v19.l
	v_and_b16 v14.h, 0xff, v19.h
	v_and_b16 v16.h, 0xff, v20.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v17.l, 0xff, v24.l
	v_and_b16 v17.h, 0xff, v24.h
	v_and_b16 v19.l, 0xff, v27.l
	v_and_b16 v19.h, 0xff, v27.h
	v_and_b16 v20.h, 0xff, v28.h
	v_and_b16 v23.l, 0xff, v31.l
	v_and_b16 v23.h, 0xff, v31.h
	v_and_b16 v24.l, 0xff, v32.l
	v_and_b16 v24.h, 0xff, v32.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v27.l, 8, v37.l
	v_lshlrev_b16 v27.h, 8, v38.l
	v_lshlrev_b16 v28.h, 8, v40.l
	v_lshlrev_b16 v30.l, 8, v43.l
	v_lshlrev_b16 v30.h, 8, v44.l
	v_lshlrev_b16 v31.l, 8, v45.l
	v_lshlrev_b16 v31.h, 8, v46.l
	v_lshlrev_b16 v32.l, 8, v47.l
	v_lshlrev_b16 v32.h, 8, v48.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v35.l, 8, v53.l
	v_lshlrev_b16 v35.h, 8, v54.l
	v_lshlrev_b16 v36.l, 8, v55.l
	v_lshlrev_b16 v36.h, 8, v56.l
	v_lshlrev_b16 v37.l, 8, v57.l
	v_lshlrev_b16 v38.l, 8, v59.l
	v_lshlrev_b16 v39.l, 8, v61.l
	v_lshlrev_b16 v39.h, 8, v62.l
	v_lshlrev_b16 v40.l, 8, v63.l
	v_lshlrev_b16 v40.h, 8, v64.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v10.l, v10.l, v26.l
	v_or_b16 v10.h, v10.h, v26.h
	v_or_b16 v12.l, v12.l, v28.l
	v_or_b16 v11.l, v11.l, v27.l
	v_or_b16 v11.h, v11.h, v27.h
	v_or_b16 v12.h, v12.h, v28.h
	v_or_b16 v14.l, v14.l, v30.l
	v_or_b16 v14.h, v14.h, v30.h
	v_or_b16 v15.l, v15.l, v31.l
	v_or_b16 v15.h, v15.h, v31.h
	v_or_b16 v16.l, v16.l, v32.l
	v_or_b16 v16.h, v16.h, v32.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v17.l, v17.l, v33.l
	v_or_b16 v17.h, v17.h, v33.h
	v_or_b16 v18.l, v18.l, v34.l
	v_or_b16 v18.h, v18.h, v34.h
	v_or_b16 v19.l, v19.l, v35.l
	v_or_b16 v19.h, v19.h, v35.h
	v_or_b16 v20.l, v20.l, v36.l
	v_or_b16 v20.h, v20.h, v36.h
	v_or_b16 v21.l, v21.l, v37.l
	v_or_b16 v22.l, v22.l, v38.l
	v_or_b16 v23.l, v23.l, v39.l
	v_or_b16 v23.h, v23.h, v39.h
	v_or_b16 v24.l, v24.l, v40.l
	v_or_b16 v24.h, v24.h, v40.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v172, v9
	ds_store_b16_d16_hi v172, v9 offset:32
	ds_store_b16 v172, v10 offset:64
	ds_store_b16_d16_hi v172, v10 offset:96
	ds_store_b16 v161, v12 offset:64
	ds_store_b16_d16_hi v161, v12 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v172, v17 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v161, v11
	ds_store_b16_d16_hi v161, v11 offset:32
	ds_store_b16 v173, v13
	ds_store_b16_d16_hi v173, v13 offset:32
	ds_store_b16 v173, v14 offset:64
	ds_store_b16_d16_hi v173, v14 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v172, v18 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v172, v15 offset:384
	ds_store_b16_d16_hi v172, v15 offset:416
	ds_store_b16 v172, v16 offset:448
	ds_store_b16_d16_hi v172, v16 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v172, v17 offset:16416
	ds_store_b16_d16_hi v172, v18 offset:16480
	ds_store_b16 v161, v19 offset:16384
	ds_store_b16_d16_hi v161, v19 offset:16416
	ds_store_b16 v161, v20 offset:16448
	ds_store_b16_d16_hi v161, v20 offset:16480
	ds_store_b16 v173, v21 offset:16384
	ds_store_b16_d16_hi v173, v21 offset:16416
	ds_store_b16 v173, v22 offset:16448
	ds_store_b16_d16_hi v173, v22 offset:16480
	ds_store_b16 v172, v23 offset:16768
	ds_store_b16_d16_hi v172, v23 offset:16800
	ds_store_b16 v172, v24 offset:16832
	ds_store_b16_d16_hi v172, v24 offset:16864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v160, v5 :: v_dual_mov_b32 v159, v4
	s_clause 0x5                            ; 32-byte Folded Reload
	scratch_load_b32 v2, off, off offset:244
	scratch_load_b32 v67, off, off offset:248
	scratch_load_b64 v[221:222], off, off offset:56
	scratch_load_b64 v[228:229], off, off offset:48
	scratch_load_b32 v5, off, off offset:252
	scratch_load_b32 v6, off, off offset:256
	v_dual_mov_b32 v224, v236 :: v_dual_mov_b32 v81, v115
	s_mov_b32 s6, s4
	v_dual_mov_b32 v82, v116 :: v_dual_mov_b32 v225, v237
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v168, 8, v2
	v_dual_mov_b32 v255, v2 :: v_dual_and_b32 v4, 4, v2
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v255, v0
	s_add_i32 s38, 0, 0x8000
	s_add_i32 s30, 0, 0x8800
	s_add_i32 s29, 0, 0x2000
	v_mov_b32_e32 v146, v145
	v_mov_b32_e32 v83, v145
	v_mov_b32_e32 v77, v145
	v_mov_b32_e32 v0, v145
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v107, v145 :: v_dual_mov_b32 v108, v146
	v_dual_mov_b32 v225, v146 :: v_dual_mov_b32 v224, v145
	v_dual_mov_b32 v248, v146 :: v_dual_mov_b32 v247, v145
	v_mov_b32_e32 v84, v146
	v_mov_b32_e32 v78, v146
	v_dual_mov_b32 v245, v146 :: v_dual_mov_b32 v244, v145
	v_dual_mov_b32 v160, v146 :: v_dual_mov_b32 v159, v145
	v_dual_mov_b32 v229, v146 :: v_dual_mov_b32 v228, v145
	v_dual_mov_b32 v207, v146 :: v_dual_mov_b32 v206, v145
	v_dual_mov_b32 v240, v146 :: v_dual_mov_b32 v239, v145
	v_mov_b32_e32 v1, v146
	v_dual_mov_b32 v222, v146 :: v_dual_mov_b32 v221, v145
	v_dual_mov_b32 v111, v145 :: v_dual_mov_b32 v112, v146
	v_dual_mov_b32 v242, v146 :: v_dual_mov_b32 v241, v145
	v_dual_mov_b32 v81, v145 :: v_dual_mov_b32 v82, v146
	v_dual_mov_b32 v152, v146 :: v_dual_mov_b32 v151, v145
	v_dual_mov_b32 v235, v146 :: v_dual_mov_b32 v234, v145
	v_dual_mov_b32 v154, v146 :: v_dual_mov_b32 v153, v145
	v_dual_mov_b32 v148, v146 :: v_dual_mov_b32 v147, v145
	v_dual_mov_b32 v158, v146 :: v_dual_mov_b32 v157, v145
	v_dual_mov_b32 v156, v146 :: v_dual_mov_b32 v155, v145
	v_dual_mov_b32 v150, v146 :: v_dual_mov_b32 v149, v145
	v_dual_mov_b32 v141, v145 :: v_dual_mov_b32 v142, v146
	v_dual_mov_b32 v143, v145 :: v_dual_mov_b32 v144, v146
	v_dual_mov_b32 v139, v145 :: v_dual_mov_b32 v140, v146
	v_dual_mov_b32 v133, v145 :: v_dual_mov_b32 v134, v146
	v_dual_mov_b32 v131, v145 :: v_dual_mov_b32 v132, v146
	v_dual_mov_b32 v205, v146 :: v_dual_mov_b32 v204, v145
	v_dual_mov_b32 v135, v145 :: v_dual_mov_b32 v136, v146
	v_dual_mov_b32 v219, v146 :: v_dual_mov_b32 v218, v145
	v_dual_mov_b32 v127, v145 :: v_dual_mov_b32 v128, v146
	v_dual_mov_b32 v125, v145 :: v_dual_mov_b32 v126, v146
	v_dual_mov_b32 v121, v145 :: v_dual_mov_b32 v122, v146
	v_dual_mov_b32 v137, v145 :: v_dual_mov_b32 v138, v146
	v_dual_mov_b32 v89, v145 :: v_dual_mov_b32 v90, v146
	v_dual_mov_b32 v7, v145 :: v_dual_mov_b32 v8, v146
	v_dual_mov_b32 v117, v145 :: v_dual_mov_b32 v118, v146
	v_dual_mov_b32 v113, v145 :: v_dual_mov_b32 v114, v146
	v_dual_mov_b32 v109, v145 :: v_dual_mov_b32 v110, v146
	v_dual_mov_b32 v99, v145 :: v_dual_mov_b32 v100, v146
	v_dual_mov_b32 v103, v145 :: v_dual_mov_b32 v104, v146
	v_dual_mov_b32 v91, v145 :: v_dual_mov_b32 v92, v146
	v_dual_mov_b32 v95, v145 :: v_dual_mov_b32 v96, v146
	v_dual_mov_b32 v105, v145 :: v_dual_mov_b32 v106, v146
	v_dual_mov_b32 v101, v145 :: v_dual_mov_b32 v102, v146
	v_dual_mov_b32 v97, v145 :: v_dual_mov_b32 v98, v146
	v_dual_mov_b32 v250, v146 :: v_dual_mov_b32 v249, v145
	v_dual_mov_b32 v209, v146 :: v_dual_mov_b32 v208, v145
	v_dual_mov_b32 v87, v145 :: v_dual_mov_b32 v88, v146
	v_dual_mov_b32 v93, v145 :: v_dual_mov_b32 v94, v146
	v_dual_mov_b32 v79, v145 :: v_dual_mov_b32 v80, v146
	v_dual_mov_b32 v252, v146 :: v_dual_mov_b32 v251, v145
	v_dual_mov_b32 v68, v145 :: v_dual_mov_b32 v69, v146
	v_dual_mov_b32 v85, v145 :: v_dual_mov_b32 v86, v146
	v_dual_mov_b32 v129, v145 :: v_dual_mov_b32 v130, v146
	v_dual_mov_b32 v65, v145 :: v_dual_mov_b32 v66, v146
	v_dual_mov_b32 v70, v145 :: v_dual_mov_b32 v71, v146
	v_dual_mov_b32 v254, v146 :: v_dual_mov_b32 v253, v145
	v_dual_mov_b32 v75, v145 :: v_dual_mov_b32 v76, v146
	v_dual_mov_b32 v73, v145 :: v_dual_mov_b32 v74, v146
	v_dual_mov_b32 v170, v146 :: v_dual_mov_b32 v169, v145
	s_add_i32 s35, 0, 0x4000
	s_add_i32 s3, 0, 0x6000
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[145:146], off offset:8
	scratch_store_b64 off, v[145:146], off offset:16
.LBB0_8:                                ; %Flow609
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[234:235], off offset:48
	scratch_store_b64 off, v[0:1], off
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v123, v244 :: v_dual_mov_b32 v124, v245
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v168
	v_dual_mov_b32 v119, v145 :: v_dual_mov_b32 v120, v146
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v161, v0, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v33, 0x110, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v162, 16, v161
	v_add_nc_u32_e32 v1, s38, v161
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v0, v0, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v33, 0, 1, s31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v2, s38, v162
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[25:28], v1 offset:512
	ds_load_b128 v[17:20], v1 offset:1024
	ds_load_b128 v[163:166], v1 offset:1536
	ds_load_b128 v[21:24], v2
	ds_load_b128 v[13:16], v2 offset:512
	ds_load_b128 v[9:12], v2 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v2 offset:1536
	v_or_b32_e32 v223, v0, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s1, 1, v33
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v220, 16, v223
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	scratch_load_b64 v[5:6], off, off offset:48 ; 8-byte Folded Reload
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s6, v223
	ds_load_b128 v[49:52], v0
	ds_load_b128 v[53:56], v0 offset:4096
	v_add_nc_u32_e32 v0, s6, v220
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s6, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v40, s11 :: v_dual_mov_b32 v35, s6
	v_mov_b32_e32 v37, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[57:60], v0
	ds_load_b128 v[61:64], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v39, s10 :: v_dual_mov_b32 v38, s9
	v_dual_mov_b32 v33, s4 :: v_dual_mov_b32 v36, s7
	v_mov_b32_e32 v34, s5
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[49:52], v[29:32], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[57:60], v[21:24], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v44
	v_cvt_f32_i32_e32 v44, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v123, v123, v43
	v_add_f32_e32 v83, v83, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[171:178], v[53:56], v[29:32], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v43, v47
	v_wmma_i32_16x16x16_iu8 v[179:186], v[49:52], v[25:28], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[61:64], v[21:24], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[187:194], v[53:56], v[25:28], v[33:40] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v228, v228, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[179:186], v[57:60], v[13:16], v[179:186] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v45, v171
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v124, v124, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v48
	v_cvt_f32_i32_e32 v43, v173
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v84, v84, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v44, v172
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v239, v239, v45
	v_add_f32_e32 v229, v229, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v174
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v111, v111, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v177
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v240, v240, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v44, v175
	v_cvt_f32_i32_e32 v45, v178
	v_wmma_i32_16x16x16_iu8 v[187:194], v[61:64], v[13:16], v[187:194] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v81, v81, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v179
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v112, v112, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v176
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v221, v221, v44 :: v_dual_add_f32 v82, v82, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v45, v181
	v_cvt_f32_i32_e32 v44, v182
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v222, v222, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v180
	v_wmma_i32_16x16x16_iu8 v[195:202], v[49:52], v[17:20], v[33:40] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v155, v155, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v45, v188
	v_wmma_i32_16x16x16_iu8 v[210:217], v[53:56], v[17:20], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[195:202], v[57:60], v[9:12], v[195:202] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[231:238], v[49:52], v[163:166], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[61:64], v[9:12], v[210:217] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[53:56], v[163:166], v[33:40] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v140, v140, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v45, v191
	v_wmma_i32_16x16x16_iu8 v[231:238], v[57:60], v[1:4], v[231:238] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[1:4], v[33:40] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v131, v131, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v45, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v118, v118, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v45, v201
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v75, v75, v35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v35, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v109, v109, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v45, v215
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v225, v225, v35 :: v_dual_add_f32 v96, v96, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v45, v231
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v87, v87, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v45, v238
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v5, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v183
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v6, v6, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v184
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v147, v147, v43
	scratch_store_b64 off, v[5:6], off offset:48 ; 8-byte Folded Spill
	scratch_load_b64 v[5:6], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v187
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v156, v156, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v44, v185
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v139, v139, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v189
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v148, v148, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v186
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v141, v141, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v44, v192
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v135, v135, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v193
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v142, v142, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v127, v127, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v197
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v136, v136, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v194
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v132, v132, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v44, v195
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v117, v117, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v199
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v128, v128, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v196
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v121, v121, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v44, v202
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v89, v89, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v210
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v122, v122, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v103, v103, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v214
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v90, v90, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v211
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v110, v110, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v44, v212
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v95, v95, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v216
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v104, v104, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v213
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v101, v101, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v44, v232
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v249, v249, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v233
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v102, v102, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v68, v68, v43
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v237
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v250, v250, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v69, v69, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v236
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v80, v80, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v34
	v_cvt_f32_i32_e32 v34, v36
	v_cvt_f32_i32_e32 v36, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v76, v76, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v34, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v224, v224, v36 :: v_dual_add_f32 v169, v169, v34
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v6, v6, v45 :: v_dual_add_f32 v5, v5, v43
	scratch_store_b64 off, v[5:6], off offset:8 ; 8-byte Folded Spill
	scratch_load_b64 v[5:6], off, off offset:16 ; 8-byte Folded Reload
	v_add_f32_e32 v88, v88, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v44, v235
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v79, v79, v44
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v6, v6, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v5, v5, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v33, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v71, v71, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v70, v70, v33
	scratch_store_b64 off, v[5:6], off offset:16 ; 8-byte Folded Spill
	v_add_f32_e32 v170, v170, v0
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v115, v224 :: v_dual_mov_b32 v116, v225
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[111:112], off offset:144
	scratch_store_b64 off, v[81:82], off offset:136
	scratch_store_b64 off, v[239:240], off offset:152
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s35, v223
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v40, s11 :: v_dual_mov_b32 v35, s6
	v_mov_b32_e32 v39, s10
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[49:52], v0
	ds_load_b128 v[53:56], v0 offset:4096
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v37, s8 :: v_dual_add_nc_u32 v0, s35, v220
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[57:60], v0 offset:4096
	ds_load_b128 v[61:64], v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v38, s9 :: v_dual_mov_b32 v33, s4
	v_mov_b32_e32 v36, s7
	v_mov_b32_e32 v34, s5
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[49:52], v[29:32], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[61:64], v[21:24], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v5, v43
	v_cvt_f32_i32_e32 v0, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v6, v46
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v77, v77, v5
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[171:178], v[53:56], v[29:32], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[49:52], v[25:28], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[187:194], v[53:56], v[25:28], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[49:52], v[17:20], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[53:56], v[17:20], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[171:178], v[57:60], v[21:24], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[163:166], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[61:64], v[13:16], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[61:64], v[9:12], v[25:32] neg_lo:[1,1,0]
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v78, v78, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[1:4], v[17:24] neg_lo:[1,1,0]
	v_mov_b32_e32 v63, v77
	v_wmma_i32_16x16x16_iu8 v[33:40], v[53:56], v[163:166], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v48
	v_wmma_i32_16x16x16_iu8 v[187:194], v[57:60], v[13:16], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[57:60], v[9:12], v[195:202] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[57:60], v[1:4], v[33:40] neg_lo:[1,1,0]
	scratch_load_b64 v[4:5], off, off       ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v1, v45
	v_cvt_f32_i32_e32 v2, v172
	v_cvt_f32_i32_e32 v3, v171
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v247, v247, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v47
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v248, v248, v6
	v_add_f32_e32 v207, v207, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v159, v159, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v173
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v160, v160, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v174
	v_dual_mov_b32 v64, v78 :: v_dual_mov_b32 v145, v247
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v107, v107, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v177
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v108, v108, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v176
	v_mov_b32_e32 v146, v248
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v206, v206, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v178
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v241, v241, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v151, v151, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v183
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v242, v242, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v181
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v153, v153, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v187
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v157, v157, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v188
	scratch_store_b64 off, v[241:242], off offset:160 ; 8-byte Folded Spill
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v143, v143, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v189
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v144, v144, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v191
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v133, v133, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v28
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v5, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v180
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v4, v4, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v152, v152, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v184
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v158, v158, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v185
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[4:5], off
	scratch_store_b64 off, v[107:108], off offset:168
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v154, v154, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v186
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v149, v149, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v192
	v_cvt_f32_i32_e32 v4, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v150, v150, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v190
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v119, v119, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_f32_e32 v205, v205, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v194
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v204, v204, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v193
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v219, v219, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v218, v218, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v27
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v134, v134, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v25
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v7, v7, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v29
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v126, v126, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v30
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v125, v125, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v32
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v137, v137, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v195
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v8, v8, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v31
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v138, v138, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v196
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v99, v99, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v199
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v114, v114, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v197
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v100, v100, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v198
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v91, v91, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v201
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v113, v113, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v200
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v106, v106, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v202
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v97, v97, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v19
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v105, v105, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v98, v98, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v92, v92, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v251, v251, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v23
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v252, v252, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v22
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v209, v209, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v208, v208, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v85, v85, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v33
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v94, v94, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v34
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v93, v93, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v36
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v129, v129, v1
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v1, v37
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v86, v86, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v35
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v130, v130, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v38
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v254, v254, v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v2, v39
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v253, v253, v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v3, v42
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v66, v66, v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v40
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v65, v65, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v73, v73, v2 :: v_dual_add_f32 v120, v120, v3
	v_add_f32_e32 v74, v74, v0
	s_branch .LBB0_13
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	v_dual_mov_b32 v63, v77 :: v_dual_mov_b32 v64, v78
	v_dual_mov_b32 v145, v247 :: v_dual_mov_b32 v146, v248
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[107:108], off offset:168
	scratch_store_b64 off, v[241:242], off offset:160
.LBB0_13:
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v0, s30, v161
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v5, s30, v162
	v_dual_mov_b32 v248, v207 :: v_dual_mov_b32 v247, v206
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[21:24], v0
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[13:16], v0 offset:512
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[9:12], v0 offset:1024
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[1:4], v0 offset:1536
	ds_load_b128 v[29:32], v5
	ds_load_b128 v[25:28], v5 offset:512
	ds_load_b128 v[17:20], v5 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[171:174], v5 offset:1536
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v178, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s1, 1, v0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v188, 0
	v_mov_b32_e32 v44, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s29, v223
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v46, s11 :: v_dual_mov_b32 v41, s6
	v_mov_b32_e32 v45, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[33:36], v0
	ds_load_b128 v[47:50], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v43, s8 :: v_dual_add_nc_u32 v0, s29, v220
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[51:54], v0 offset:4096
	ds_load_b128 v[55:58], v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v44, s9 :: v_dual_mov_b32 v39, s4
	v_mov_b32_e32 v42, s7
	v_mov_b32_e32 v40, s5
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[33:36], v[21:24], v[39:46] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[47:50], v[21:24], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[188:195], v[33:36], v[13:16], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[47:50], v[13:16], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[33:36], v[9:12], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[231:238], v[47:50], v[9:12], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[239:246], v[33:36], v[1:4], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[47:50], v[1:4], v[39:46] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[55:58], v[29:32], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[51:54], v[29:32], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[188:195], v[55:58], v[25:28], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[51:54], v[25:28], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[55:58], v[17:20], v[210:217] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[231:238], v[51:54], v[17:20], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[239:246], v[55:58], v[171:174], v[239:246] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[51:54], v[171:174], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v177, v163
	v_cvt_f32_i32_e32 v178, v164
	v_cvt_f32_i32_e32 v175, v165
	v_cvt_f32_i32_e32 v176, v166
	v_cvt_f32_i32_e32 v165, v167
	v_cvt_f32_i32_e32 v167, v168
	v_cvt_f32_i32_e32 v166, v180
	v_cvt_f32_i32_e32 v38, v181
	v_cvt_f32_i32_e32 v0, v182
	v_cvt_f32_i32_e32 v6, v183
	v_cvt_f32_i32_e32 v168, v184
	v_cvt_f32_i32_e32 v35, v185
	v_cvt_f32_i32_e32 v77, v186
	v_cvt_f32_i32_e32 v206, v187
	v_cvt_f32_i32_e32 v163, v188
	v_cvt_f32_i32_e32 v164, v189
	v_cvt_f32_i32_e32 v81, v190
	v_cvt_f32_i32_e32 v112, v191
	v_cvt_f32_i32_e32 v78, v192
	v_cvt_f32_i32_e32 v82, v193
	v_cvt_f32_i32_e32 v111, v194
	v_cvt_f32_i32_e32 v33, v195
	v_cvt_f32_i32_e32 v5, v196
	v_cvt_f32_i32_e32 v36, v197
	v_cvt_f32_i32_e32 v37, v198
	v_cvt_f32_i32_e32 v49, v199
	v_cvt_f32_i32_e32 v34, v200
	v_cvt_f32_i32_e32 v47, v201
	v_cvt_f32_i32_e32 v48, v202
	v_cvt_f32_i32_e32 v51, v203
	v_cvt_f32_i32_e32 v50, v210
	v_cvt_f32_i32_e32 v53, v211
	v_cvt_f32_i32_e32 v54, v212
	v_cvt_f32_i32_e32 v57, v213
	v_cvt_f32_i32_e32 v52, v214
	v_cvt_f32_i32_e32 v55, v215
	v_cvt_f32_i32_e32 v56, v216
	v_cvt_f32_i32_e32 v58, v217
	v_cvt_f32_i32_e32 v231, v231
	v_cvt_f32_i32_e32 v59, v232
	v_cvt_f32_i32_e32 v60, v233
	v_cvt_f32_i32_e32 v72, v234
	v_cvt_f32_i32_e32 v232, v235
	v_cvt_f32_i32_e32 v61, v236
	v_cvt_f32_i32_e32 v62, v237
	v_cvt_f32_i32_e32 v108, v238
	v_cvt_f32_i32_e32 v107, v239
	v_cvt_f32_i32_e32 v181, v240
	v_cvt_f32_i32_e32 v182, v241
	v_cvt_f32_i32_e32 v185, v242
	v_cvt_f32_i32_e32 v180, v243
	v_cvt_f32_i32_e32 v183, v244
	v_cvt_f32_i32_e32 v184, v245
	v_cvt_f32_i32_e32 v186, v246
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v187, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v188, v42
	v_cvt_f32_i32_e32 v40, v43
	v_cvt_f32_i32_e32 v42, v44
	v_cvt_f32_i32_e32 v43, v45
	v_cvt_f32_i32_e32 v44, v46
	v_cvt_f32_i32_e32 v193, v161
	v_cvt_f32_i32_e32 v194, v162
.LBB0_15:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_mov_b32_e32 v201, v158
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[155:156], off offset:184
	scratch_store_b64 off, v[153:154], off offset:128
	scratch_store_b64 off, v[149:150], off offset:120
	v_mov_b32_e32 v150, v148
	v_dual_mov_b32 v45, v220 :: v_dual_mov_b32 v200, v157
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v44, off offset:372
	scratch_store_b32 off, v188, off offset:368
	scratch_store_b32 off, v43, off offset:364
	scratch_store_b32 off, v42, off offset:360
	scratch_store_b32 off, v41, off offset:356
	scratch_store_b32 off, v187, off offset:352
	scratch_store_b32 off, v40, off offset:348
	scratch_store_b32 off, v186, off offset:344
	scratch_store_b32 off, v39, off offset:340
	scratch_store_b32 off, v185, off offset:336
	scratch_store_b32 off, v184, off offset:332
	scratch_store_b32 off, v183, off offset:328
	scratch_store_b32 off, v182, off offset:324
	scratch_store_b32 off, v181, off offset:320
	scratch_store_b32 off, v180, off offset:316
	scratch_store_b32 off, v108, off offset:312
	scratch_store_b32 off, v107, off offset:308
	scratch_store_b32 off, v72, off offset:304
	scratch_store_b32 off, v62, off offset:300
	scratch_store_b32 off, v61, off offset:296
	scratch_store_b32 off, v60, off offset:292
	scratch_store_b32 off, v59, off offset:288
	scratch_store_b32 off, v58, off offset:284
	scratch_store_b32 off, v57, off offset:280
	scratch_store_b32 off, v56, off offset:276
	scratch_store_b32 off, v55, off offset:272
	scratch_store_b32 off, v54, off offset:268
	scratch_store_b32 off, v53, off offset:264
	scratch_store_b32 off, v52, off offset:260
	scratch_store_b32 off, v51, off offset:256
	scratch_store_b32 off, v50, off offset:252
	scratch_store_b32 off, v49, off offset:248
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v48, off offset:244
	scratch_store_b32 off, v47, off offset:232
	scratch_store_b32 off, v37, off offset:228
	scratch_store_b32 off, v36, off offset:196
	scratch_store_b32 off, v34, off offset:192
	scratch_store_b32 off, v33, off offset:180
	scratch_store_b32 off, v5, off offset:176
	v_dual_mov_b32 v149, v147 :: v_dual_mov_b32 v198, 0
	s_clause 0xa                            ; 88-byte Folded Spill
	scratch_store_b64 off, v[143:144], off offset:104
	scratch_store_b64 off, v[141:142], off offset:112
	scratch_store_b64 off, v[204:205], off offset:40
	scratch_store_b64 off, v[139:140], off offset:96
	scratch_store_b64 off, v[135:136], off offset:88
	scratch_store_b64 off, v[133:134], off offset:72
	scratch_store_b64 off, v[218:219], off offset:32
	scratch_store_b64 off, v[131:132], off offset:80
	scratch_store_b64 off, v[127:128], off offset:64
	scratch_store_b64 off, v[125:126], off offset:56
	scratch_store_b64 off, v[7:8], off offset:24
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v34, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_17
; %bb.16:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v33, s3, v45
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_mov_b32_e32 v46, s11
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[47:50], v33 offset:4096
	ds_load_b128 v[51:54], v33
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v44, s9 :: v_dual_add_nc_u32 v33, s3, v223
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[55:58], v33 offset:4096
	ds_load_b128 v[59:62], v33
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v45, s10 :: v_dual_mov_b32 v42, s7
	v_dual_mov_b32 v43, s8 :: v_dual_mov_b32 v40, s5
	v_mov_b32_e32 v41, s6
	v_mov_b32_e32 v39, s4
	v_mov_b32_e32 v5, v231
	v_mov_b32_e32 v7, v232
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[210:217], v[55:58], v[21:24], v[39:46] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[59:62], v[21:24], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[47:50], v[29:32], v[210:217] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[51:54], v[29:32], v[179:186] neg_lo:[1,1,0]
	v_dual_mov_b32 v31, v228 :: v_dual_mov_b32 v32, v229
	v_dual_mov_b32 v29, v221 :: v_dual_mov_b32 v30, v222
	v_wmma_i32_16x16x16_iu8 v[218:225], v[59:62], v[13:16], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[226:233], v[55:58], v[13:16], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[55:58], v[9:12], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[218:225], v[51:54], v[25:28], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[226:233], v[47:50], v[25:28], v[226:233] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[59:62], v[9:12], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[59:62], v[1:4], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[55:58], v[1:4], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[51:54], v[17:20], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[47:50], v[17:20], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[51:54], v[171:174], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v191, v217
	v_wmma_i32_16x16x16_iu8 v[39:46], v[47:50], v[171:174], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v161, v220
	v_cvt_f32_i32_e32 v217, v228
	v_cvt_f32_i32_e32 v220, v229
	v_mov_b32_e32 v229, v32
	v_cvt_f32_i32_e32 v192, v183
	v_cvt_f32_i32_e32 v183, v210
	v_cvt_f32_i32_e32 v162, v221
	v_cvt_f32_i32_e32 v210, v222
	v_mov_b32_e32 v228, v31
	v_mov_b32_e32 v222, v30
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v198, v180
	v_cvt_f32_i32_e32 v196, v181
	v_cvt_f32_i32_e32 v197, v182
	v_cvt_f32_i32_e32 v195, v184
	v_cvt_f32_i32_e32 v182, v185
	v_cvt_f32_i32_e32 v184, v186
	v_cvt_f32_i32_e32 v186, v211
	v_cvt_f32_i32_e32 v187, v212
	v_cvt_f32_i32_e32 v190, v213
	v_cvt_f32_i32_e32 v185, v214
	v_cvt_f32_i32_e32 v188, v215
	v_cvt_f32_i32_e32 v189, v216
	v_cvt_f32_i32_e32 v180, v218
	v_cvt_f32_i32_e32 v181, v219
	v_mov_b32_e32 v221, v29
	v_cvt_f32_i32_e32 v62, v223
	v_cvt_f32_i32_e32 v8, v224
	v_cvt_f32_i32_e32 v72, v225
	v_cvt_f32_i32_e32 v213, v226
	v_cvt_f32_i32_e32 v216, v227
	v_cvt_f32_i32_e32 v212, v230
	v_cvt_f32_i32_e32 v218, v231
	v_mov_b32_e32 v231, v5
	v_cvt_f32_i32_e32 v215, v232
	v_mov_b32_e32 v232, v7
	v_cvt_f32_i32_e32 v214, v233
	v_cvt_f32_i32_e32 v5, v21
	v_cvt_f32_i32_e32 v202, v22
	v_cvt_f32_i32_e32 v226, v23
	v_cvt_f32_i32_e32 v199, v24
	v_cvt_f32_i32_e32 v7, v25
	v_cvt_f32_i32_e32 v227, v26
	v_cvt_f32_i32_e32 v203, v27
	v_cvt_f32_i32_e32 v230, v28
	v_cvt_f32_i32_e32 v211, v235
	v_cvt_f32_i32_e32 v234, v236
	v_cvt_f32_i32_e32 v235, v237
	v_cvt_f32_i32_e32 v238, v238
	v_cvt_f32_i32_e32 v233, v239
	v_cvt_f32_i32_e32 v236, v240
	v_cvt_f32_i32_e32 v237, v241
	v_cvt_f32_i32_e32 v240, v242
	v_cvt_f32_i32_e32 v239, v9
	v_cvt_f32_i32_e32 v242, v10
	v_cvt_f32_i32_e32 v243, v11
	v_cvt_f32_i32_e32 v246, v12
	v_cvt_f32_i32_e32 v241, v13
	v_cvt_f32_i32_e32 v244, v14
	v_cvt_f32_i32_e32 v245, v15
	v_cvt_f32_i32_e32 v225, v16
	v_cvt_f32_i32_e32 v107, v39
	v_cvt_f32_i32_e32 v37, v40
	v_cvt_f32_i32_e32 v108, v41
	v_cvt_f32_i32_e32 v33, v42
	v_cvt_f32_i32_e32 v219, v43
	v_cvt_f32_i32_e32 v224, v44
	v_cvt_f32_i32_e32 v36, v45
	v_cvt_f32_i32_e32 v34, v46
.LBB0_17:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	scratch_load_b32 v61, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt lgkmcnt(4)
	v_dual_add_f32 v1, v115, v193 :: v_dual_add_f32 v2, v116, v194
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v4, s14, v255
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v32, v115, v1, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v1, 1, v255
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v116, v2, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_and_b32_e32 v2, 32, v67
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v171, v5 :: v_dual_lshlrev_b32 v4, 1, v4
	v_and_b32_e32 v1, 28, v1
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s8, s16
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s1, s14, s15
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v20, v248, v186 :: v_dual_add_f32 v21, v247, v183
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v174, v95, v232
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v194, v7 :: v_dual_add_f32 v7, v222, v35
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v11, v160, v184
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v158, v247, v21, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v35, v152, v181
	v_add_f32_e32 v33, v254, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v160, v11, s2
	v_cndmask_b32_e64 v144, v152, v35, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v3, v61, 2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v3, v2, v1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v2, v120, v198 :: v_dual_add_f32 v1, v119, v179
	v_add_f32_e32 v3, v146, v195
	v_add_f32_e32 v195, v138, v227
	v_add_f32_e32 v227, v251, v243
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v120, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v2, v124, v178
	v_mov_b32_e32 v120, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v135, v222, v7, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v243, v130, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v124, v2, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v2, v64, v197
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v119, v1, s2
	scratch_load_b32 v119, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v1, v123, v177
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v64, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v2, v84, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v123, v1, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v1, v63, v196
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v154, v84, v2, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v2, v145, v192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v146, v3, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v12, v63, v1, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v1, v83, v175
	v_mov_b32_e32 v193, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v145, v2, s2
	v_mov_b32_e32 v192, v87
	v_cndmask_b32_e64 v153, v83, v1, s2
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s28, v119
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s28, s28, s15
	v_mul_lo_u32 v198, s15, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	v_or_b32_e32 v2, 32, v1
	v_or_b32_e32 v3, 64, v1
	v_or_b32_e32 v5, 0x60, v1
	s_clause 0x3
	buffer_load_u16 v28, v1, s[8:11], 0 offen
	buffer_load_u16 v155, v2, s[8:11], 0 offen
	buffer_load_u16 v177, v3, s[8:11], 0 offen
	buffer_load_u16 v178, v5, s[8:11], 0 offen
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v2, v229, v167
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v1, v4, s[8:11], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v229, v2, s2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v140, 16, v28
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v24, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[145:146], off, off offset:152
	scratch_load_b64 v[115:116], off, off offset:168
	scratch_load_b64 v[30:31], off, off offset:136
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v1, s1, v255, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v8, v221, v168
	scratch_load_b64 v[83:84], off, off offset:160 ; 8-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v255, v97, v237
	v_add_f32_e32 v237, v93, v241
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_add_f32_e32 v4, v146, v38
	v_add_f32_e32 v5, v145, v166
	scratch_load_b64 v[38:39], off, off offset:144 ; 8-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v9, v31, v206
	scratch_load_b64 v[206:207], off, off   ; 8-byte Folded Reload
	v_add_f32_e32 v3, v228, v165
	v_add_f32_e32 v10, v30, v77
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v22, v116, v190 :: v_dual_add_f32 v23, v115, v187
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v165, v61, 1, 0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v17, v159, v182
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v145, v5, s2
	v_cndmask_b32_e64 v139, v146, v4, s2
	v_cndmask_b32_e64 v166, v248, v20, s2
	v_cndmask_b32_e64 v148, v115, v23, s2
	v_cndmask_b32_e64 v157, v116, v22, s2
	v_cndmask_b32_e64 v133, v221, v8, s2
	v_cndmask_b32_e64 v131, v30, v10, s2
	v_cndmask_b32_e64 v132, v31, v9, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[20:23], v165
	ds_load_b128 v[8:11], v165 offset:16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v182, v103, v231
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v29, v83, v189
	v_add_f32_e32 v31, v151, v180
	v_add_f32_e32 v189, v114, v230
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v61, 1, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v136, v83, v29, s2
	v_cndmask_b32_e64 v142, v151, v31, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v6, v39, v6
	v_add_f32_e32 v0, v38, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v25, v207, v188 :: v_dual_add_f32 v26, v206, v185
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v228, v3, s2
	v_cndmask_b32_e64 v134, v39, v6, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[4:7], v165 offset:512
	ds_load_b128 v[185:188], v165 offset:528
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v147, v207, v25, s2
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_lshlrev_b32_e32 v25, 16, v1
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v39, v201, v162
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v143, v206, v26, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_store_b32 v24, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[204:205], off, off offset:48
	scratch_load_b64 v[231:232], off, off offset:104
	v_mov_b32_e32 v248, v71
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[63:64], off, off offset:184
	scratch_load_b64 v[228:229], off, off offset:40
	v_mov_b32_e32 v247, v70
	scratch_load_b64 v[70:71], off, off offset:72 ; 8-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v201, v39, s2
	v_cndmask_b32_e64 v3, v38, v0, s2
	v_cndmask_b32_e64 v17, v159, v17, s2
	scratch_load_b64 v[183:184], off, off offset:120 ; 8-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v201, v232, v216 :: v_dual_add_f32 v196, v231, v213
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v220, v229, v220
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v216, v228, v217 :: v_dual_add_f32 v213, v71, v218
	scratch_load_b64 v[217:218], off, off offset:32 ; 8-byte Folded Reload
	v_dual_add_f32 v27, v84, v191 :: v_dual_add_f32 v30, v205, v164
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v29, v204, v163
	scratch_load_b64 v[190:191], off, off offset:24 ; 8-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v212, v70, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v141, v84, v27, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_load_b128 v[24:27], v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v127, v204, v29, s2
	v_cndmask_b32_e64 v128, v205, v30, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_load_b128 v[28:31], v165 offset:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v35, v25, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v15, v15, v35
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v38, v200, v161 :: v_dual_add_f32 v35, 1.0, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v200, v38, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v35, v35, v15
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v15, v35, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v39, v41
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v39, v24, v140
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v125, v38, v35, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v14, v14, v39
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v15, v26, v140
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v39, 0xbfb8aa3b, v14 :: v_dual_mul_f32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_mul_f32_e32 v15, 0xbfb8aa3b, v12
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v14
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v39, v39, v40
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, null, v39, v39, v14
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v14, v39, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v41
	v_fma_f32 v44, -v40, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v41
	v_fma_f32 v40, -v40, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v40, v41, v43
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v41, v27, v140
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v126, v40, v39, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v13, v13, v41
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v14, v29, v140 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v14, v18, v14
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v18, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v41, v41, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v13, v41, v13
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v83, v218, v214
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v145, v42, v41, v13
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v13, v28, v140 :: v_dual_add_f32 v200, v191, v199
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v199, v190, v226
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v226, v98, v240 :: v_dual_mul_f32 v13, v16, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v16, 0xbfb8aa3b, v13
	v_ldexp_f32 v15, v15, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v15, v15, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v35
	v_fma_f32 v43, -v35, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v43, v38
	v_div_scale_f32 v43, vcc_lo, v12, v15, v12
	v_mul_f32_e32 v44, v43, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v35, v44, v43
	v_fmac_f32_e32 v44, v45, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v35, v44, v43
	v_div_fmas_f32 v35, v35, v38, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v146, v35, v15, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v12, v31, v140
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v14 :: v_dual_mul_f32 v35, v19, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v18, v18
	v_mul_f32_e32 v12, 0xbfb8aa3b, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v38
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v18, v18, v14
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v14, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v40, v39
	v_fma_f32 v44, -v38, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v39
	v_fma_f32 v38, -v38, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v39, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v156, v38, v18, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v13
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v39
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v16, v16, v13
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v13, v16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v40, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v160, v39, v16, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v35
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v12, v12, v15
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v12, null, v40, v40, v35
	v_rcp_f32_e32 v15, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v12, v15, 1.0
	v_fmac_f32_e32 v15, v19, v15
	v_div_scale_f32 v19, vcc_lo, v35, v40, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v19, v15
	v_fma_f32 v42, -v12, v41, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v15
	v_fma_f32 v12, -v12, v41, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v12, v15, v41
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v12, v30, v140
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v161, v41, v40, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v38, v17, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v12, null, v42, v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v12
	v_fma_f32 v15, -v12, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v38, v42, v38
	v_mul_f32_e32 v17, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v12, v17, v15
	v_fmac_f32_e32 v17, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v17, v15
	v_div_fmas_f32 v43, v12, v14, v17
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	ds_load_b128 v[16:19], v165 offset:512
	ds_load_b128 v[12:15], v165 offset:528
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v35, v16, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v35, v158, v35
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v158, v43, v42, v38
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v38, v19, v140
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v38, v157, v38
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v39, v17, v140 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v39, v166, v39
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v44, v44
	v_ldexp_f32 v44, v44, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v44, v44, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v39, v44, v39
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v45, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	v_div_fmas_f32 v45, v45, v46, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v35
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v41
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v40, v40, v35
	v_rcp_f32_e32 v46, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v41, v46, 1.0
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v35, v40, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v47, v46
	v_fma_f32 v49, -v41, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v46
	v_fma_f32 v41, -v41, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v46, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v157, v45, v44, v39
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v39, v18, v140
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v42, v42, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v39, v148, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v43, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v38, v42, v38
	v_mul_f32_e32 v48, v47, v46
	v_div_fixup_f32 v148, v41, v40, v35
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v35, v13, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v43, v48, v47
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v35, v147, v35 :: v_dual_fmac_f32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v35
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v43, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v43, v43, v46, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v147, v43, v42, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v38, v12, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v39
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v162, v143, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v44
	v_ldexp_f32 v44, v44, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, null, v44, v44, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v39, v44, v39
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v45, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	v_div_fmas_f32 v45, v45, v46, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v143, v45, v44, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v40, v40, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v41
	v_fma_f32 v47, -v41, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v35, v40, v35
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v41, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v48, v47
	v_div_fmas_f32 v41, v41, v46, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v164, v41, v40, v35
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v35, v14, v140
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v35, v136, v35
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v136, 16, v155
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v40, 0xbfb8aa3b, v35
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v162
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v42
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v163, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v163, v163, v162
	v_rcp_f32_e32 v42, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v162, v163, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v43, v42
	v_fma_f32 v47, -v38, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v42
	v_fma_f32 v38, -v38, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v165, v38, v42, v46
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v38, v15, v140
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v141, v141, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v141
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v141
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v39
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v38, v38, v141
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v141, v38, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v39, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v39, -v39, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v42, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v40, v40, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v35, v40, v35
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v42, v25, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v40, v41, v40, v35
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v42, v144, v42 :: v_dual_mul_f32 v35, v21, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v42
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v35, v54, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v35, v35, v125
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v42
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v43, v43, v44
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
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
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v45, v24, v136
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v44, v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v45, v142, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v46, v46, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v46, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v49, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v45, v46, v45
	v_mul_f32_e32 v50, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v47, v50, v49
	v_fmac_f32_e32 v50, v51, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v47, v50, v49
	v_div_fixup_f32 v49, v39, v38, v141
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v38, v20, v140
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v47, v48, v50
	v_div_fixup_f32 v48, v165, v163, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v38, v32, v38
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v23, v140
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v142, v47, v46, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v39, v53, v32
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v32, v22, v140 :: v_dual_mul_f32 v39, v39, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v42, v52, v32
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v32, v9, v140 :: v_dual_lshlrev_b32 v145, 16, v178
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v42, v42, v146
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v43, v154, v32
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v8, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v43, v156
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v44, v153, v32
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v11, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v43, v43
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v45, v56, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v32, v10, v140 :: v_dual_mul_f32 v45, v45, v161
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v46, v55, v32
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v32, v5, v140 :: v_dual_lshlrev_b32 v161, 16, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v46, v46, v158 :: v_dual_mul_f32 v47, v139, v32
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v32, v4, v140 :: v_dual_mul_f32 v47, v47, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v50, v2, v32
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v32, v7, v140 :: v_dual_add_f32 v157, v106, v238
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_add_f32_e32 v238, v208, v239
	v_dual_mov_b32 v240, v74 :: v_dual_mov_b32 v239, v73
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v51, v134, v32
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v6, v140
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v50, v50, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v34, v240, v34 :: v_dual_mul_f32 v37, v51, v147
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v52, v3, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v51.l, v42.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v186, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v53, v135, v32
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v185, v140
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v54, v133, v32
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v188, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v48, v54, v48
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v55, v132, v32
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v187, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v49, v55, v49
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v56, v131, v32
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v21, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 1              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v56, v40
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v57, v128, v32
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v20, v136
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.h, 0
	v_mov_b16_e64 v128.l, v35.h
	v_cmp_o_f32_e64 s6, v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v41, v57, v41 :: v_dual_mul_f32 v144, v127, v32
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v32, v27, v136
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v51.h, v128.h
	v_mov_b16_e64 v54.h, v128.h
	v_cmp_o_f32_e64 s7, v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v127, v1, v32
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v32, v26, v136
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v159, v0, v32
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[2:3], off, off offset:112
	scratch_load_b32 v0, off, off offset:180
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v155, v3, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[179:180], off, off offset:96
	scratch_load_b32 v0, off, off offset:196
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v32, 0xbfb8aa3b, v127
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_store_b32 off, v34, off offset:196 ; 4-byte Folded Spill
	v_add_f32_e32 v34, v239, v36
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v52, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v151, v180, v0
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v154, v179, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[175:176], off, off offset:88
	scratch_load_b32 v0, off, off offset:248
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v32, 0xbfb8aa3b, v127 :: v_dual_add_f32 v141, v176, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v58
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v165, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v168, null, v165, v165, v127
	v_rcp_f32_e32 v131, v168
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v168, v131, 1.0
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v131, v32, v131 :: v_dual_add_f32 v148, v175, v0
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[221:222], off, off offset:80
	scratch_load_b32 v0, off, off offset:232
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v58, 0xbfb8aa3b, v159 :: v_dual_add_f32 v139, v222, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	scratch_store_b32 off, v34, off offset:192 ; 4-byte Folded Spill
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v34.h, v128.h
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v140, v221, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[172:173], off, off offset:64
	scratch_load_b32 v0, off, off offset:256
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_store_b32 off, v33, off offset:256 ; 4-byte Folded Spill
	v_add_f32_e32 v33, v253, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v116, v173, v0
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_store_b32 off, v33, off offset:244 ; 4-byte Folded Spill
	v_dual_add_f32 v33, v66, v224 :: v_dual_add_f32 v224, v65, v219
	scratch_store_b32 off, v33, off offset:228 ; 4-byte Folded Spill
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v33, 1, v51
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v51, v53, v164
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v53.h, v128.h
	v_mov_b16_e32 v53.l, v40.h
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v164, s15, 5, v198
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v166, v172, v0
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v159 :: v_dual_add_f32 v133, v122, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v58, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v58, v58, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v134, v121, v0
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v32, 1.0, v58 :: v_dual_add_f32 v123, v118, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v135, null, v32, v32, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v132, v135
	v_fma_f32 v58, -v135, v132, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v132, v58, v132
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v58, 1, v128
	v_mov_b16_e64 v128.l, v39.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v88, v209, v242
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[241:242], null, s15, 48, v[198:199]
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_add3_u32 v58, v35, v58, 0x7fff
	v_mov_b16_e64 v35.h, v128.h
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v124, v117, v0
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v156, v149, v78 :: v_dual_add_f32 v223, v90, v0
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v152, v89, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v153, v110, v0
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v146, v109, v0
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v38, v38, v126 :: v_dual_add_f32 v181, v104, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v35.l, v38.h
	v_cmp_o_f32_e64 s1, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v59, v38, v35, 0x7fff
	v_and_b32_e32 v35, 1, v128
	v_mov_b16_e64 v128.l, v43.h
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v60, v39, v35, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v39, v100, v234
	v_add_f32_e32 v234, v252, v246
	v_add_f32_e32 v246, v94, v244
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v244, s28, s14, v61
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v206, v217, v215
	scratch_load_b64 v[214:215], off, off offset:56 ; 8-byte Folded Reload
	v_add_f32_e32 v35, v113, v203
	v_dual_add_f32 v203, v91, v233 :: v_dual_mul_f32 v44, v44, v160
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v52, 1, v128
	v_mov_b16_e64 v128.l, v45.h
	v_cndmask_b16 v207.h, 0x7fff, v60.h, s3
	v_cmp_o_f32_e64 s3, v45, v45
	v_mov_b16_e32 v34.l, v44.h
	v_add3_u32 v43, v43, v52, 0x7fff
	v_mov_b16_e64 v52.h, v128.h
	v_mov_b16_e32 v52.l, v36.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v84, v2, v111 :: v_dual_add_f32 v205, v183, v120
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v34, 1, v34
	v_cndmask_b16 v233.h, 0x7fff, v43.h, s5
	v_cmp_o_f32_e64 s5, v48, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v120, v99, v211 :: v_dual_add_nc_u32 v219, 0x80, v244
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v34, v44, v34, 0x7fff
	s_mov_b32 s14, s10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v162, v102, v0
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v204, v215, v202
	v_add_f32_e32 v202, v214, v171
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v171.h, 0x7fff, v58.h, vcc_lo
	v_cndmask_b16 v171.l, 0x7fff, v59.h, s1
	v_cmp_o_f32_e64 s1, v44, v44
	v_mov_b16_e64 v44.h, v128.h
	v_mov_b16_e32 v44.l, v50.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v58, v11, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v233.l, 0x7fff, v34.h, s1
	v_cmp_o_f32_e64 s1, v50, v50
	v_and_b32_e32 v43, 1, v44
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v44, v144, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v50, v43, 0x7fff
	v_mov_b16_e32 v54.l, v44.h
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v142.l, 0x7fff, v43.h, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, s1, v159, v32, v159
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v230, v105, v235
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v158, v101, v0
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v163, v96, v0
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	v_add_f32_e32 v38, v63, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v42, v42
	v_add3_u32 v33, v42, v33, 0x7fff
	v_mov_b16_e64 v42.h, v128.h
	v_mov_b16_e32 v33.l, v48.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.l, 0x7fff, v33.h, s4
	v_mov_b16_e64 v33.h, v128.h
	v_cmp_o_f32_e64 s4, v36, v36
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v48, v33, 0x7fff
	v_and_b32_e32 v48, 1, v54
	v_cndmask_b16 v144.l, 0x7fff, v33.h, s5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v197, v250, v0
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v167, v249, v0
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v42.l, v46.h
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v46, v42, 0x7fff
	v_and_b32_e32 v46, 1, v128
	v_mov_b16_e64 v128.l, v47.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v242.l, 0x7fff, v42.h, vcc_lo
	v_add3_u32 v34, v45, v46, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v45, 1, v128
	v_mov_b16_e64 v128.l, v37.h
	v_and_b32_e32 v42, 1, v52
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_cndmask_b16 v242.h, 0x7fff, v34.h, s3
	v_add3_u32 v45, v47, v45, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, s3, v127, v165, v127
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v36, v36, v42, 0x7fff
	v_and_b32_e32 v42, 1, v128
	v_mov_b16_e64 v128.l, v51.h
	v_cndmask_b16 v142.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_cndmask_b16 v143.l, 0x7fff, v36.h, s4
	v_add3_u32 v37, v37, v42, 0x7fff
	v_and_b32_e32 v45, 1, v128
	v_mov_b16_e64 v128.l, v49.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v194, v137, v194
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v42, v46, v131
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v49, v49
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v34, v29, v136
	v_mul_f32_e32 v52, v30, v136
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v143.h, 0x7fff, v37.h, vcc_lo
	v_and_b32_e32 v37, 1, v53
	v_and_b32_e32 v47, 1, v128
	v_mov_b16_e64 v128.l, v41.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v168, v42, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_add3_u32 v45, v51, v45, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v183, v205, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v37, v40, v37, 0x7fff
	v_and_b32_e32 v40, 1, v128
	v_add3_u32 v33, v49, v47, 0x7fff
	v_cndmask_b16 v144.h, 0x7fff, v45.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v36, v131
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v45, v28, v136
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v40, v41, v40, 0x7fff
	v_cndmask_b16 v177.h, 0x7fff, v33.h, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v33, v43, v132
	v_fma_f32 v46, -v168, v42, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v44, v48, 0x7fff
	v_cndmask_b16 v177.l, 0x7fff, v37.h, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v63, v38, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v48, v22, v136
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v147.h, 0x7fff, v40.h, s7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v135, v33, v43
	v_div_fmas_f32 v42, v46, v131, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v149, v156, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v160, v64, v112
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v37, v37, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v44, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v33, v36, v132
	v_div_fixup_f32 v42, v42, v165, v127
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v64, v160, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v147.l, 0x7fff, v41.h, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v135, v33, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v43, v132, v33
	v_dual_mov_b32 v132, v92 :: v_dual_mov_b32 v131, v91
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v51, v51, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v33, v32, v159
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v37, v32
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v193, v0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v126, v150, v82 :: v_dual_add_f32 v125, v192, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v150, v126, s2
	v_dual_mov_b32 v127, v98 :: v_dual_mov_b32 v126, v97
	v_cndmask_b32_e64 v61, v192, v125, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v69, v0
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v68, v0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v80, v0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v79, v0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[77:78], off, off offset:8
	scratch_load_b32 v0, off, off offset:344
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v78, v0
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v77, v0
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[81:82], off, off offset:16
	scratch_load_b32 v0, off, off offset:352
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v82, v0
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v81, v0
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v76, v0
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v75, v0
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v248, v0
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v247, v0
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v170, v0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v169, v0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	scratch_load_b64 v[0:1], off, off offset:128 ; 8-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v62, v1, v62
	v_add_f32_e32 v67, v0, v210
	v_add_f32_e32 v210, v184, v72
	v_add_f32_e32 v72, v92, v236
	v_mov_b32_e32 v236, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v1, v62, s2
	v_cndmask_b32_e64 v40, v0, v67, s2
	v_mov_b32_e32 v235, v85
	v_cndmask_b32_e64 v44, v184, v210, s2
	v_mov_b32_e32 v0, v105
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v34, v55, v34
	v_dual_mul_f32 v36, v40, v45 :: v_dual_mul_f32 v55, v9, v136
	v_mov_b32_e32 v1, v106
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v211, v235, v245
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v34
	v_mul_f32_e32 v45, 0xbfb8aa3b, v36
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v49, v49, v55
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v225, v236, v225
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v245, s15, 4, v198
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v47
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v45, v23, v136
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s15, s11
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, s4
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v86, v129, v107
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v38, v38, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, 0xbfb8aa3b, v34 :: v_dual_fmac_f32 v43, 0xbfb8aa3b, v36
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v45, v31, v136 :: v_dual_mul_f32 v38, v38, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v37, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v44, v44, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v38.h
	v_cmp_o_f32_e64 s1, v38, v38
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v45, v8, v136
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v33, v40, v33
	v_ldexp_f32 v37, v37, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v42, 1, v128
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v45, v46, v45
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v42, v38, v42, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v32.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v33, v33, v34
	v_div_scale_f32 v38, null, v37, v37, v36
	v_div_scale_f32 v52, s4, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v43
	v_rcp_f32_e32 v48, v38
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v40.h, v128.h
	v_cndmask_b16 v115.h, 0x7fff, v42.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v50, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v43, v41, 1.0
	v_fma_f32 v53, -v38, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v40, v32, v40, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v47, v41
	v_div_scale_f32 v47, vcc_lo, v34, v33, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v48, v53, v48 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v51
	v_dual_mul_f32 v54, v47, v41 :: v_dual_mul_f32 v57, v52, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v43, v54, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v38, v57, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v53, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v54, v56, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v57, v55, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v43, v54, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v50, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v38, v57, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v53
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v231, v196, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v43, v41, v54
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v38, v48, v57
	v_div_fixup_f32 v33, v41, v33, v34
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v52, v16, v136
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v34, v47, v43
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v38, v37, v36
	v_div_scale_f32 v41, null, v46, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v47, v17, v136 :: v_dual_add_f32 v34, 1.0, v34
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v45, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v37, v41
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v232, v201, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v115.l, 0x7fff, v40.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v34, v34, v51
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v50, v50, v52 :: v_dual_mul_f32 v45, v45, v47
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v49, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v38
	v_div_scale_f32 v53, s1, v51, v34, v51
	v_fma_f32 v40, -v41, v37, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v50
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v2, v84, s2
	v_cndmask_b32_e64 v52, v3, v155, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v57, v10, v136
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v37, v40, v37
	v_div_scale_f32 v40, vcc_lo, v44, v46, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v38, v42, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v56
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v47, v47, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v49, v40, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v33.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v48, v42
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v56, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v41, v49, v40
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v32.l, v36.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v55, v53, v42
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v56, 0xbfb8aa3b, v50 :: v_dual_fmac_f32 v49, v54, v37
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v32.h, v128.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v38, v55, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v41, v49, v40
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v55, v54, v42 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v45
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v40, v37, v49
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v38, v55, v53
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v48, v48
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v32, v36, v32, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v37, v37, v46, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v44.h, v128.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v38, v42, v55
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v42, v52, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v33, v43, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v38, v34, v51
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v40, v48, v41
	v_exp_f32_e32 v41, v56
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v37, v42, v37 :: v_dual_mul_f32 v34, v47, v34
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v229, v220, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v111.h, 0x7fff, v43.h, vcc_lo
	v_cndmask_b16 v111.l, 0x7fff, v32.h, s1
	v_mov_b16_e32 v44.l, v34.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, vcc_lo, v45, v40, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v41, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v40, v40, v45
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v36, 1, v44
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v48, v19, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v41
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v228, v216, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v56, v18, v136
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v47, v47, v48
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, null, v38, v38, v50
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v37.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v55, v55, v56 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v44, -v41, v42, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v180, v151, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v32, 1, v128
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v54
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v36, v34, v36, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v44, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v179, v154, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v32, v37, v32, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v46, v33, 1.0
	v_dual_mul_f32 v49, v43, v42 :: v_dual_mul_f32 v56, v4, v136
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v58, v7, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v47 :: v_dual_fmac_f32 v33, v44, v33
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, s1, v50, v38, v50
	v_fma_f32 v52, -v41, v49, v43
	v_dual_mov_b32 v151, v100 :: v_dual_mov_b32 v150, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v44, v33
	v_fmac_f32_e32 v49, v52, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v46, v53, v44
	v_fma_f32 v41, -v41, v49, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v52, v33
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v70, v212, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v41, v42, v49
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v42, v54
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v46, v53, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v40, v41, v40, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v33, v44, v33, v53
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v44, v5, v136
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	v_ldexp_f32 v42, v42, v46
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v55
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v33, v33, v38, v50
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v46, v48, v56
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v43
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v43, v51, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v107.h, 0x7fff, v32.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v42, v42, v47
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v46, v33
	v_mul_f32_e32 v37, v43, v40
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v107.l, 0x7fff, v36.h, vcc_lo
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v46, v13, v136
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v38, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v44
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v53, v12, v136
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, vcc_lo, v47, v42, v47
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v38
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v176, v141, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v52, v52, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v33.h
	v_mov_b16_e64 v40.h, v128.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v32, v32, v55
	v_fma_f32 v36, -v44, v41, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v52
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v37.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v43, v38
	v_dual_fmac_f32 v41, v36, v41 :: v_dual_and_b32 v34, 1, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v71, v213, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v40, 1, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v51, v48, v41
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v36, v36, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s4
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v38, v43, 1.0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v175, v148, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v6, v136
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v36
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v52
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v43, v46, v43
	v_div_scale_f32 v46, s1, v55, v32, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v44, v51, v48
	v_dual_mov_b32 v149, v104 :: v_dual_mul_f32 v56, v46, v43
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v45, v45, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v53, 0, 0x42800000, s3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v51, v54, v41
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v40, v37, v40, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v38, v56, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v148, v103 :: v_dual_fmac_f32 v53, 0xbfb8aa3b, v36
	v_fma_f32 v44, -v44, v51, v48
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v56, v54, v43
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v221, v140, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v53, v53
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v44, v41, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v38, v56, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v33, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v41, v42, v47
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v47, v15, v136
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v38, v43, v56
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s4
	v_ldexp_f32 v46, v53, v48
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v48, v49, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v38, v32, v55
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v44, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_mul_f32 v41, v48, v41
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v103.l, 0x7fff, v34.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v45, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v46, v46, v36
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v41.h
	v_cmp_o_f32_e64 s1, v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v38, v38, v52
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v34, 1, v128
	v_cndmask_b16 v103.h, 0x7fff, v40.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v37, v44
	v_div_scale_f32 v40, vcc_lo, v36, v46, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v34, v41, v34, 0x7fff
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v53, v14, v136
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v33.l, v32.h
	v_mov_b16_e64 v33.h, v128.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v43, v42, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v104.h, 0x7fff, v34.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v218, v83, s2
	v_cndmask_b32_e64 v51, v222, v139, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v42, v45, v42 :: v_dual_and_b32 v33, 1, v33
	v_fma_f32 v45, -v44, v37, 1.0
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v34, v34, v47 :: v_dual_mul_f32 v55, v185, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v33, v32, v33, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v41, v40, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v45, v37
	v_div_scale_f32 v45, s3, v52, v38, v52
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v43, v41, v40
	v_mov_b32_e32 v56, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v49, v45, v37
	v_mov_b32_e32 v57, v122
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v41, v48, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v217, v206, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v44, v49, v45
	v_dual_mov_b32 v122, v96 :: v_dual_mov_b32 v121, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v43, v41, v40
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v43, v48, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v47, v37
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	v_mov_b32_e32 v140, v110
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v40, v40, v42, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v44, v49, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v44, v186, v136
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v40, v46, v36
	v_div_fmas_f32 v37, v41, v37, v49
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v41, v47
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v44, v51, v44 :: v_dual_mul_f32 v45, v50, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v37, v37, v38, v52
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v32, v44, v36 :: v_dual_mul_f32 v37, v45, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v43
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v32.h
	v_cndmask_b16 v104.l, 0x7fff, v33.h, s1
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v42
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v215, v204, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v45, v25, v161
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v38, v38, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v214, v202, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v96, v44, v45
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v51, v24, v161
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v40, v40, v41
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, vcc_lo, v34, v38, v34
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v97, v50, v51 :: v_dual_add_f32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v32, v41, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v172, v166, s2
	v_cndmask_b32_e64 v49, v173, v116, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v42, v33, 1.0
	v_div_scale_f32 v32, null, v40, v40, v43
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, s4, v43, v40, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v48, v32
	v_fmac_f32_e32 v33, v47, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v96
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v51
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v44, v187, v136
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v36.l, v37.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v53, v45, v33
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	v_cndmask_b32_e64 v51, 0, 0x42800000, s5
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v44, v46, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v32, v48, 1.0
	v_fma_f32 v54, -v42, v53, v45
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v97
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v36.h, v128.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v52, v48
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v52, v188, v136
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v96
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v54, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v55, v50, v48
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v49, v49, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v47
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v42, v53, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v32, v55, v50
	v_dual_mov_b32 v136, v102 :: v_dual_mov_b32 v135, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v42, v33, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v55, v52, v48
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v47, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v33, v33, v38, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v34, v46, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v32, v55, v50
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v36, 1, v36
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v100, 1.0, v45 :: v_dual_mov_b32 v139, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v101, 1.0, v34
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v32, v48, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v36, v37, v36, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v106, null, v100, v100, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v109, null, v101, v101, v97
	v_div_fixup_f32 v32, v32, v40, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v108, v106
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v110, v109
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v98, v49, v33 :: v_dual_mul_f32 v99, v44, v32
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v32.h, v128.h
	v_cndmask_b16 v95.l, 0x7fff, v36.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v191, v200, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v36, v27, v161
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v32.l, v99.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v106, v108, 1.0
	v_div_scale_f32 v112, vcc_lo, v96, v100, v96
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v2, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v32, 1, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v108, v33, v108
	v_fma_f32 v33, -v109, v110, 1.0
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v34, v26, v161
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v56, v134, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v102, v99, v32, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v32, 0xbfb8aa3b, v2
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v110, v33, v110
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v190, v199, s2
	v_mov_b32_e32 v55, v113
	v_mov_b32_e32 v49, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v95.h, 0x7fff, v41.h, s1
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v3, v33, v34 :: v_dual_mov_b32 v56, v114
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v114, s1, v97, v101, v97
	v_mov_b32_e32 v50, v118
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v117, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v119, 0xbfb8aa3b, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v113, v112, v108 :: v_dual_mul_f32 v116, v114, v110
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v92, v57, v133, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v117, 0xbfb8aa3b, v2
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v118, -v106, v113, v112
	v_fma_f32 v33, -v109, v116, v114
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v37, v21, v161
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v34, v117
	v_cndmask_b32_e64 v36, 0, 0x42800000, s4
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v113, v118, v108 :: v_dual_fmac_f32 v116, v33, v110
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v37, v92, v37 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v106, v113, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v40, -v109, v116, v114
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v98.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v34, v33
	v_exp_f32_e32 v34, v36
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v38, v108, v113
	s_mov_b32 vcc_lo, s1
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v20, v161
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v40, v110, v116
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s4
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v38, v38, v100, v96
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v105, 1, v128
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v32, v91, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v34, v34, v40
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v40, null, v33, v33, v2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v37, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v36, v101, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v38, v40
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v138, v195, s2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v32, v36
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v34, v34, v3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v36, v98, v105, 0x7fff
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v47, v29, v161
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v40, v38, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v91.h, 0x7fff, v36.h, vcc_lo
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v46, v46, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v91.l, 0x7fff, v102.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v49, v124, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, vcc_lo, v2, v33, v2
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v52, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v25, v25, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v42, v43, 1.0
	v_mul_f32_e32 v48, v44, v38
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v50, v123, s2
	v_cndmask_b32_e64 v53, v137, v194, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v52
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s1, v3, v34, v3
	v_fma_f32 v50, -v40, v48, v44
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v24, v24, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v54, v28, v161 :: v_dual_mul_f32 v51, v45, v43
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v50, v38
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v37.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v53, v53, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v42, v51, v45
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v40, v48, v44
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v54, v22, v161
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v44, 0xbfb8aa3b, v53 :: v_dual_fmac_f32 v51, v50, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v36, 1, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v38, v40, v38, v48
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v52
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v42, v51, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v33, v38, v33, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v42, v43, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v32.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v40, v40, v45
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v53
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v42, v34, v3
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v45, v47, v54
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v41.h, v128.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v42, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v36, v37, v36, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v34, v45, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v40, v40, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v41
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v43, v23, v161
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v87.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v37, v42, v38
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.l, v34.h
	v_mov_b16_e64 v38.h, v128.h
	v_add3_u32 v41, v32, v41, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v36, 1.0, v37 :: v_dual_mul_f32 v43, v49, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v47, v31, v161 :: v_dual_and_b32 v32, 1, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v55, v35, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v36, v36, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v44, v42, 1.0
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v43, v33
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v54, v30, v161
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v43, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v87.l, 0x7fff, v41.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v38, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v56, v189, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, vcc_lo, v46, v40, v46
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v52, v52, v54 :: v_dual_mov_b32 v97, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v38, v38, v47 :: v_dual_mul_f32 v21, v21, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v37, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v48, v42
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, 0xbfb8aa3b, v38
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v90, v223, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v43, v47, v43
	v_div_scale_f32 v47, s1, v53, v36, v53
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v44, v51, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v56, v47, v43
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v58, v9, v161
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v51, v55, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v37, v56, v47
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v20, v20, v145
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v38
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v44, v51, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v52 :: v_dual_fmac_f32 v56, v55, v43
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	v_exp_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v44, v42, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v44, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v37, v56, v47
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v33.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v89, v152, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v50, v8, v161
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v37, v43, v56
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s4
	v_ldexp_f32 v47, v54, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v40, v42, v40, v46
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v20, v61, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v37, v36, v53
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v37, v44, v43
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_mul_f32 v48, v49, v58
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v128
	v_add3_u32 v32, v34, v32, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, null, v47, v47, v38
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v45, v45, v50 :: v_dual_mul_f32 v40, v48, v40
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v29, v29, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v42, v43
	v_div_scale_f32 v44, null, v37, v37, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v34, v34
	v_add3_u32 v41, v33, v41, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v45, v36
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v34, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_mov_b16_e64 v128.l, v40.h
	v_cndmask_b16 v83.l, 0x7fff, v32.h, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v43, v42, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v40, v40
	v_cndmask_b16 v83.h, 0x7fff, v41.h, vcc_lo
	v_and_b32_e32 v32, 1, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, vcc_lo, v38, v47, v38
	v_fmac_f32_e32 v42, v45, v42
	v_fma_f32 v45, -v44, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v32, v40, v32, 0x7fff
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v23, v23, v145
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v46, v17, v161
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v40, v41, v42
	v_fmac_f32_e32 v34, v45, v34
	v_div_scale_f32 v45, s3, v52, v37, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v84.h, 0x7fff, v32.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v151, v39, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v43, v40, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v49, v45, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v140, v153, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v53, v16, v161
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v32, v32, v46
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v40, v48, v42
	v_fma_f32 v46, -v44, v49, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v150, v120, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v33.l, v36.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v32
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v43, v40, v41
	v_fmac_f32_e32 v49, v46, v34
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v43, v48, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v33.h, v128.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v40, v41, v42, v40
	v_fma_f32 v41, -v44, v49, v45
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v44, v11, v161
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v43
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v34, v41, v34, v49
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v44, v51, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v0, v230, s2
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_dual_fmac_f32 v46, 0xbfb8aa3b, v32 :: v_dual_and_b32 v33, 1, v33
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v34, v37, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_exp_f32_e32 v41, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v38, v40, v47, v38
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v33, v36, v33, 0x7fff
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v42, 0xbfb8aa3b, v43 :: v_dual_mul_f32 v9, v9, v145
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v44, v38
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v139, v146, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v55, v10, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v42
	v_ldexp_f32 v37, v41, v37
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v36.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v45, v50, v55
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v84.l, 0x7fff, v33.h, s1
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v1, v157, s2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v34, v45, v34
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v40, v40, v41
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v41, 1, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v37, v37, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v45, v19, v161 :: v_dual_add_f32 v40, 1.0, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v41, v36, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v42
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v52, v18, v161
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v44, v44, v45
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v40, v40, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v149, v181, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v51, v51, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v48, v36
	v_div_scale_f32 v52, s4, v43, v40, v43
	v_fma_f32 v47, -v42, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v55, v5, v161
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v148, v182, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v45, v4, v161
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v33, v47, v33
	v_div_scale_f32 v47, vcc_lo, v32, v37, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v36, v48, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v49, v49, v55 :: v_dual_mul_f32 v54, v47, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v45, v46, v45 :: v_dual_fmac_f32 v48, v53, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v53, 0xbfb8aa3b, v51 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v42, v54, v47
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.l, v34.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v57, v52, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v53
	v_exp_f32_e32 v50, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v54, v56, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v36, v57, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v53, 0, 0x42800000, s5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v38.h, v128.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v42, v54, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v85.h, 0x7fff, v41.h, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v57, v55, v48
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v51
	v_ldexp_f32 v46, v50, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v33, v42, v33, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v36, v57, v52
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v53
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v33, v37, v32
	s_mov_b32 vcc_lo, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v38, 1, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v36, v48, v57
	v_div_scale_f32 v37, null, v46, v46, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v38, v34, v38, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v33, v47, v42
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v36, v36, v40, v43
	v_rcp_f32_e32 v40, v37
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v34.h, v128.h
	v_cndmask_b16 v85.l, 0x7fff, v38.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v33, 1.0, v33 :: v_dual_mul_f32 v36, v45, v36
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v17, v17, v145
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v49, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v132, v72, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v33, v33, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v37, v40, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v34.l, v36.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v53, s1, v51, v33, v51
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v38, v40
	v_div_scale_f32 v38, vcc_lo, v44, v46, v44
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v47, v13, v161 :: v_dual_and_b32 v34, 1, v34
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v57, v6, v161
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v49, v38, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v131, v203, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v34, v36, v34, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v41, v42, 1.0
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v45, v45, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v37, v49, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v135, v158, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v19, v19, v145 :: v_dual_fmac_f32 v42, v48, v42
	v_dual_mul_f32 v52, v12, v161 :: v_dual_fmac_f32 v49, v54, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v47, v47, v57
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v11, v11, v145
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v55, v53, v42 :: v_dual_mul_f32 v50, v50, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v37, v49, v38
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v136, v162, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v41, v55, v53
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v37, v37, v40, v49
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v55, v54, v42
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v37, v37, v46, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v44.h, v128.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v56
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v41, v55, v53
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s3
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s3
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v58, v7, v161
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, s4
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v40, v40, v42, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v45
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v32.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v42, v52, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v50
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v33, v40, v33, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v48, v48
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v43, 1, v128
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v42, v37
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v41, v56
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v47, v33
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v5, v5, v145
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v43, v32, v43, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v127, v226, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v44.l, v33.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v48, v38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v71.h, 0x7fff, v43.h, vcc_lo
	v_cndmask_b16 v71.l, 0x7fff, v34.h, s1
	v_and_b32_e32 v36, 1, v44
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v40, v41, v48
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v48, v15, v161
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v126, v255, s2
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v56, v14, v161
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v38, v38, v45
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v43, vcc_lo, v45, v38, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v41
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v47, v47, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, null, v40, v40, v50
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v55, v55, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 439 25 is_stmt 0              ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v13, v13, v145 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v47
	.loc	1 441 22 is_stmt 1              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v32, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v121, v174, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v56, v185, v161
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v41, v42, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v54
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v37.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v122, v163, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v7, v7, v145 :: v_dual_fmac_f32 v42, v44, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v46, v32, 1.0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v34, 1, v128
	v_add3_u32 v36, v33, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v49, v43, v42 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v47
	v_fmac_f32_e32 v32, v44, v32
	v_div_scale_f32 v44, s1, v50, v40, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v41, v49, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v34, v37, v34, 0x7fff
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v14, v14, v145 :: v_dual_mul_f32 v53, v44, v32
	v_mov_b32_e32 v57, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v49, v52, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v249, v167, s2
	v_mov_b32_e32 v58, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v46, v53, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v250, v197, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v41, v49, v43
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v55
	v_mov_b32_e32 v1, v75
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v52, v32
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v52, v188, v161
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v41, v42, v49
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v42, v54
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v46, v53, v44
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v38, v41, v38, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v44, v32, v53
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v44, v186, v161
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	v_ldexp_f32 v42, v42, v46
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v55 :: v_dual_mul_f32 v46, v48, v56
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v32, v40, v50
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v40, v43
	.loc	1 436 9 is_stmt 1               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v43, v51, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v208, v238, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v67.h, 0x7fff, v34.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v44, null, v42, v42, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v43, v38
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v63, v49, v24
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v32, v46, v32
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v40, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v41, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v67.l, 0x7fff, v36.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v45, vcc_lo, v47, v42, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v34, 1.0, v38 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v63
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v40.l, v32.h
	v_mov_b16_e64 v40.h, v128.h
	v_mov_b16_e64 v128.l, v37.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v34, v34, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v44, v41, 1.0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v51
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v33, 1, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v43, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v41, v36, v41 :: v_dual_and_b32 v40, 1, v128
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v209, v88, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s4
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v46, v187, v161
	v_dual_mov_b32 v53, v79 :: v_dual_mul_f32 v48, v45, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v25, v36, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v38, v43, 1.0
	v_mov_b32_e32 v54, v80
	v_fma_f32 v49, -v44, v48, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v50, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v39, v39, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, s1, v55, v34, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v49, v41
	v_mov_b32_e32 v2, v76
	v_mul_f32_e32 v50, v36, v43
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v33, v32, v33, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v44, v48, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v38, v50, v36
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v252, v234, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v25
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v41, v44, v41, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v50, v49, v43
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v32.h, v128.h
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v80, v27, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v38, v50, v36
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v51
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v3, v188, v145 :: v_dual_mov_b32 v96, v77
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v26, v26, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v36, v43, v50
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s4
	v_ldexp_f32 v24, v24, v45
	v_dual_mov_b32 v49, v65 :: v_dual_mov_b32 v50, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v34, v36, v34, v55
	v_div_fixup_f32 v36, v41, v42, v47
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v65, 1.0, v24 :: v_dual_mul_f32 v24, v35, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v35, v38, v43
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v38, v37, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v69, v39, v36
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, null, v65, v65, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v68, 1.0, v35
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v64, v24, v34
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v72, v70
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v69.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v68, v68, v63
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v32.l, v64.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v60, v193, v0, s2
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v76, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v24.h, 0x7fff, v38.h, vcc_lo
	v_and_b32_e32 v32, 1, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v70, v72, 1.0
	v_div_scale_f32 v77, vcc_lo, v25, v65, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v24.l, 0x7fff, v33.h, s1
	v_and_b32_e32 v33, 1, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v72, v34, v72
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v66, v64, v32, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v74, v76, 1.0
	v_div_scale_f32 v27, s1, v63, v68, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v77, v72
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v32, v79, v80
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v76, v34, v76
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v73, v69, v33, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v251, v227, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v70, v78, v77
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_mul_f32 v34, v27, v76 :: v_dual_mul_f32 v21, v60, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v26, v35, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v78, v33, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v36
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v74, v34, v27
	v_dual_mov_b32 v99, v94 :: v_dual_mul_f32 v28, v28, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v70, v78, v77
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v34, v33, v76 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v26
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v235, v211, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v36, v72, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v74, v34, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v36, v65, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v35, v35
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v27, v76, v34
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, s4
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v21, v25
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v27, v27, v68, v63
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v30, v30, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v21.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v25, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v20, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v33, v33
	v_mov_b32_e32 v98, v93
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v35.h, v128.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v34, 1.0, v25
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v35.l, v27.h
	v_cndmask_b16 v20.h, 0x7fff, v73.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v34, v34, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v25, v33, v25
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v33, 1, v35
	v_and_b32_e32 v35, 1, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v37, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v98, v237, s2
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v99, v246, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.l, 0x7fff, v66.h, vcc_lo
	v_add3_u32 v33, v27, v33, 0x7fff
	v_add3_u32 v35, v21, v35, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v38, v38, v26
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v25, v25, v29
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v29, v22, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v36, v37, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v42, v39
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v30, v51, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v25
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v8, v8, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, vcc_lo, v32, v34, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v22, v44, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v28, s3, v26, v38, v26
	v_fma_f32 v45, -v39, v42, 1.0
	v_mul_f32_e32 v46, v41, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v16, v16, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v45, v42
	v_fma_f32 v45, -v36, v46, v41
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v25
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v10, v10, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v48, v28, v42
	v_fmac_f32_e32 v46, v45, v37
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, s4
	v_exp_f32_e32 v47, v47
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v27, v27
	v_mov_b16_e64 v27.h, v128.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v22
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v18, v18, v145
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v4, v4, v145
	v_mul_f32_e32 v6, v6, v145
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v12, v12, v145
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v40, v57, v0, s2
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v40, v40, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v36, v46, v41
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v41, v44
	v_ldexp_f32 v36, v47, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v29, v29, v37, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v29, v34, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v43, v58, v0, s2
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v23, v43, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v43, -v39, v48, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v23, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v48, v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v23.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v39, v48, v28
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s4
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v55, 1, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v36, v37, v42, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v29, v41, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v60, null, v28, v28, v25
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v26, v36, v38, v26
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v59, v60
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v21.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v21.h, 0x7fff, v35.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v40, v26
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v58, null, v29, v29, v22
	v_div_scale_f32 v61, vcc_lo, v25, v28, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v27.l, v26.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v57, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v60, v59, 1.0
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v33, v31, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, s1, v22, v29, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v56, 1, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v59, v32, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v236, v225, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v129, v86, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v58, v57, 1.0
	v_mul_f32_e32 v52, v61, v59
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 439 13 is_stmt 1              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v16, v40, v16 :: v_dual_fmac_f32 v57, v27, v57
	v_mul_f32_e32 v27, v32, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v60, v52, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v33, v31, v57 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v27
	v_fmac_f32_e32 v52, v32, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v58, v33, v31
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v36, -v60, v52, v61
	v_fmac_f32_e32 v33, v32, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v35, v36, v59, v52
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v26, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v58, v33, v31
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v35, v28, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v34, 0, 0x42800000, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v31, v31, v57, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v32, v32
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v27
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v22, v31, v29, v22
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v29, v26, v56, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v33, v34, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v33
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v53, v53, v0, s2
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v8, v53, v8
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v8, v22
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v32, v28
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v28, v23, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v22, v22
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v22.h
	v_mov_b16_e64 v8.h, v128.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v32, v32, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v26, 1, v8
	v_cndmask_b16 v8.h, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v29.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v35, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v26, v22, v26, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v130, v243, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v17, v22, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v54, v54, v0, s2
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v9, v54, v9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v9, v25
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, null, v31, v31, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v9.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v33, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v9, v9
	v_and_b32_e32 v23, 1, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v23, v9, v23, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v28, -v25, v33, 1.0
	v_div_scale_f32 v9, vcc_lo, v27, v31, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v28, v33
	v_fma_f32 v28, -v34, v35, 1.0
	v_mul_f32_e32 v29, v9, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v28, v35
	v_div_scale_f32 v28, s4, v30, v32, v30
	v_fma_f32 v37, -v25, v29, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v38, v28, v35 :: v_dual_fmac_f32 v29, v37, v33
	v_fma_f32 v37, -v34, v38, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v9, -v25, v29, v9
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v25, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v38, v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v9, v9, v33, v29
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v29, v39
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v28, -v34, v38, v28
	v_div_fixup_f32 v9, v9, v31, v27
	s_mov_b32 vcc_lo, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v28, v28, v35, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v29, v29, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v16
	v_exp_f32_e32 v25, v25
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v22, v96, v0, s2
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v10, v22, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v22, v28, v32, v30
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v29
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v29.h, v128.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v10, v22
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v28, v28, v17
	v_div_scale_f32 v34, vcc_lo, v17, v28, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v25, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v25, v27
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v29.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v27, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v30, v25
	v_mul_f32_e32 v35, v34, v25
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v36, v97, v0, s2
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v11, v36, v11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v11, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.h, 0x7fff, v23.h, s1
	v_and_b32_e32 v23, 1, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v29, null, v22, v22, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.l, 0x7fff, v26.h, s3
	v_mov_b16_e64 v128.l, v11.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v23, v10, v23, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v32, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v26, 1, v128
	v_add3_u32 v26, v11, v26, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v31, v81, v0, s2
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v4, v31, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v82, v0, s2
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v5, v33, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v30, v254, v0, s2
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v19, v30, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v29, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v37, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v32, v30, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v30, s1, v16, v22, v16
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v37, -v27, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v38, v30, v32 :: v_dual_fmac_f32 v35, v37, v25
	v_fma_f32 v33, -v29, v38, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v35, v34
	v_fmac_f32_e32 v38, v33, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v27, v25, v35
	v_fma_f32 v27, -v29, v38, v30
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v10, v10
	v_mov_b16_e64 v10.h, v128.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v17, v25, v28, v17
	v_div_fmas_f32 v27, v27, v32, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cndmask_b16 v26.l, 0x7fff, v23.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v17
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v16, v27, v22, v16
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v128.l, v5.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v10.l, v4.h
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v4, v10, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v36, v253, v0, s2
	scratch_load_b32 v0, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v18, v36, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v39, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v36, v36
	v_cndmask_b32_e64 v37, 0, 0x42800000, s4
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v18
	v_ldexp_f32 v30, v36, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v29, v37
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, null, v30, v30, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v29, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v16, v25
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v11, 1.0, v22 :: v_dual_and_b32 v22, 1, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v11, v11, v18
	v_fma_f32 v28, -v25, v16, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v5, v22, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v5, s1, v19, v30, v19
	v_rcp_f32_e32 v27, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, v28, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.l, 0x7fff, v10.h, s3
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v10, v15, v145
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v4, v5, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v17, v27, 1.0
	v_fma_f32 v31, -v25, v4, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v27, v23, v27
	v_fmac_f32_e32 v4, v31, v16
	v_div_scale_f32 v23, s4, v18, v11, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v5, -v25, v4, v5
	v_mul_f32_e32 v32, v23, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v49, v224, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v4, v5, v16, v4
	s_mov_b32 vcc_lo, s4
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v12, v25, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v4, v4, v30, v19
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v12
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v28, v1, v0, s2
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v1, v186, v145 :: v_dual_mul_f32 v6, v28, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v29, v50, v0, s2
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v13, v29, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v17, v32, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v31, 0xbfb8aa3b, v13 :: v_dual_fmac_f32 v32, v29, v27
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v5, -v17, v32, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v5, v5, v27, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v5, v11, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v18.h, v128.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v17, v29
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v6, v5 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v5.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v15, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v6, v17, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v18, v5, v18, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v2, v0, s2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:196
	scratch_load_b32 v2, off, off offset:48
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v7, v33, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v7, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v128.l, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v128
	v_add3_u32 v28, v4, v28, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v7, v240, v0, s2
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v7, v7, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v16, 0xbfb8aa3b, v7
	v_ldexp_f32 v10, v15, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v10, v10, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v25, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v16, v16, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v19, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_fmac_f32 v25, v27, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v16, v16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v32, v27
	v_fma_f32 v38, -v27, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v32, v38, v32
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v11, v239, v0, s2
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v11, v11, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v14, null, v6, v6, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v14, v15, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, s1, v12, v10, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v15, v23, v15
	v_div_scale_f32 v23, vcc_lo, v13, v6, v13
	v_mul_f32_e32 v36, v31, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v29, v23, v15
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v14, v29, v23
	v_div_scale_f32 v30, null, v17, v17, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v34, v15
	v_fma_f32 v34, -v19, v36, v31
	v_rcp_f32_e32 v35, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v14, -v14, v29, v23
	v_fmac_f32_e32 v36, v34, v25
	v_div_scale_f32 v34, s3, v7, v16, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v14, v15, v29
	v_fma_f32 v15, -v19, v36, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v19, v34, v32
	v_fma_f32 v23, -v30, v35, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v6, v14, v6, v13
	v_div_fmas_f32 v15, v15, v25, v36
	v_fma_f32 v25, -v27, v19, v34
	v_fmac_f32_e32 v35, v23, v35
	v_div_scale_f32 v23, s4, v11, v17, v11
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v19, v25, v32
	v_div_fixup_f32 v10, v15, v10, v12
	v_mul_f32_e32 v29, v23, v35
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v31, v20, v67, s0
	v_cndmask_b32_e64 v20, v67, v20, s0
	v_cndmask_b32_e64 v15, v107, v115, s0
	v_cndmask_b32_e64 v25, v84, v87, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v13, -v30, v29, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v13, v35
	v_fma_f32 v13, -v27, v19, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v27, v87, v84, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v30, v29, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v13, v13, v32, v19
	s_mov_b32 vcc_lo, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v32, v9, v21, s0
	v_cndmask_b32_e64 v9, v21, v9, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v14, v14, v35, v29
	v_div_fixup_f32 v7, v13, v16, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_mov_b32_e32 v21, 0x5410
	v_cndmask_b32_e64 v16, v115, v107, s0
	v_cndmask_b32_e64 v23, v104, v91, s0
	v_cndmask_b32_e64 v29, v83, v85, s0
	v_cndmask_b32_e64 v30, v24, v71, s0
	v_cndmask_b32_e64 v24, v71, v24, s0
	v_cndmask_b32_e64 v13, v111, v147, s0
	v_cndmask_b32_e64 v19, v91, v104, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v247, v0, s2
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v37, v248, v0, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v0, v185, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v1, v37, v1
	v_mul_f32_e32 v0, v33, v0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v33, v26, v8, s0
	v_cndmask_b32_e64 v8, v8, v26, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v169, v2, s2
	scratch_load_b32 v2, off, off           ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v10.h, v128.h
	v_mov_b16_e64 v128.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v10.l, v0.h
	v_and_b32_e32 v4, 1, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v1, v4, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v12, v170, v2, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v2, v187, v145
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s2, v0, v0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v3, v12, v3 :: v_dual_mul_f32 v2, v6, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v14, v17, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v12, v143, v177, s0
	v_cndmask_b32_e64 v14, v147, v111, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v7.h, v128.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v6, 1, v10
	v_cndmask_b16 v10.h, 0x7fff, v28.h, vcc_lo
	v_mov_b16_e64 v128.l, v3.h
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_mov_b16_e32 v7.l, v2.h
	v_add3_u32 v5, v0, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v3, v3
	v_cmp_o_f32_e64 s4, v2, v2
	v_cndmask_b16 v10.l, 0x7fff, v18.h, vcc_lo
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v128
	v_cndmask_b32_e64 v18, v103, v95, s0
	v_cndmask_b32_e64 v11, v177, v143, s0
	v_cndmask_b32_e64 v17, v95, v103, s0
	v_add3_u32 v0, v2, v6, 0x7fff
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s2
	s_mov_b32 s1, 0x76543210
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s4
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s3
	v_cndmask_b32_e64 v0, v171, v233, s0
	v_cndmask_b32_e64 v34, v2, v22, s0
	v_cndmask_b32_e64 v2, v22, v2, s0
	v_mov_b32_e32 v22, 0x7632
	v_cndmask_b32_e64 v35, v1, v10, s0
	v_cndmask_b32_e64 v1, v10, v1, s0
	v_permlanex16_b32 v10, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, 0x1054, v21, s0
	v_cndmask_b32_e64 v21, 0x3276, v22, s0
	v_cndmask_b32_e64 v5, v207, v242, s0
	v_cndmask_b32_e64 v7, v142, v144, s0
	v_cndmask_b32_e64 v3, v233, v171, s0
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v21, v21, 8, v21
	v_cndmask_b32_e64 v4, v242, v207, s0
	v_cndmask_b32_e64 v6, v144, v142, s0
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v21, 0x760076, v21
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v21, v21, 4, v21
	v_permlanex16_b32 v16, v16, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v27, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v36, 0x5040504, v0
	v_and_b32_e32 v37, 0x7060706, v21
	v_cndmask_b32_e64 v28, v85, v83, s0
	v_permlanex16_b32 v27, v20, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v10, v3, v36
	v_perm_b32 v1, v10, v3, v37
	v_perm_b32 v2, v5, v4, v36
	v_perm_b32 v3, v5, v4, v37
	v_perm_b32 v4, v7, v6, v36
	v_perm_b32 v5, v7, v6, v37
	v_perm_b32 v6, v12, v11, v36
	v_perm_b32 v7, v12, v11, v37
	v_perm_b32 v8, v14, v13, v36
	v_perm_b32 v9, v14, v13, v37
	v_perm_b32 v10, v16, v15, v36
	v_perm_b32 v11, v16, v15, v37
	v_perm_b32 v12, v18, v17, v36
	v_perm_b32 v13, v18, v17, v37
	v_perm_b32 v16, v23, v25, v36
	v_perm_b32 v17, v23, v25, v37
	v_perm_b32 v20, v24, v30, v36
	v_perm_b32 v21, v24, v30, v37
	v_perm_b32 v24, v29, v32, v36
	v_perm_b32 v25, v29, v32, v37
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v32, v244, v198, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v14, v22, v19, v36
	v_perm_b32 v15, v22, v19, v37
	v_perm_b32 v18, v26, v28, v36
	v_perm_b32 v19, v26, v28, v37
	v_perm_b32 v22, v27, v31, v36
	v_perm_b32 v23, v27, v31, v37
	v_perm_b32 v26, v38, v33, v36
	v_perm_b32 v27, v38, v33, v37
	v_add_lshl_u32 v33, v244, v245, 1
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v32, s[12:15], 0 offen offset:256
	buffer_store_b128 v[8:11], v33, s[12:15], 0 offen
	v_add_lshl_u32 v0, v219, v245, 1
	v_add_lshl_u32 v1, v244, v164, 1
	v_add_lshl_u32 v2, v219, v164, 1
	v_add_lshl_u32 v3, v244, v241, 1
	v_perm_b32 v28, v39, v34, v36
	v_perm_b32 v29, v39, v34, v37
	v_perm_b32 v30, v40, v35, v36
	v_perm_b32 v31, v40, v35, v37
	v_add_lshl_u32 v4, v219, v241, 1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 380
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 380
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 33052
; TotalNumSgprs: 41
; NumVgprs: 256
; ScratchSize: 380
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 380
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 189
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
