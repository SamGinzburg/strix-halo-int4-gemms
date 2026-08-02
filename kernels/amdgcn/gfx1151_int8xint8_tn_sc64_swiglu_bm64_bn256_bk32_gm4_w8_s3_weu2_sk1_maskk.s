	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
	v_mov_b32_e32 v144, v0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v85, 0xf0, v144
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v181, 3, v85
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s26, 63
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s6
	v_readfirstlane_b32 s6, v0
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
	s_min_i32 s6, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s16
	s_sub_i32 s18, 0, s16
	v_rcp_iflag_f32_e32 v0, s8
	s_load_b256 s[8:15], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s17, v0
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s17, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_xor_b32 s10, s2, s6
	s_mul_i32 s18, s18, s17
	s_mov_b64 s[28:29], s[14:15]
	s_mul_hi_u32 s4, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s4
	s_mul_hi_u32 s4, s5, s17
	s_ashr_i32 s17, s10, 31
	s_mul_i32 s11, s4, s16
	s_add_i32 s10, s4, 1
	s_sub_i32 s5, s5, s11
	s_mov_b32 s11, 0x31027000
	s_sub_i32 s18, s5, s16
	s_cmp_ge_u32 s5, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s39, s11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s18, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s18, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s31, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s30, v181
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s17, s4, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s16, s3, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s16, s16, 26
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s31, 31
.Ltmp19:
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s35, s27, 1
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s4, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s16
.Ltmp21:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v0, s35, v181
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v135, 15, v144
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	s_mul_i32 s7, s26, s30
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v183, v135, 4, v0
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s33, s18, v183
	v_add_nc_u32_e32 v1, s35, v0
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v2, 0x80000000, v0, vcc_lo
	.loc	1 357 14 is_stmt 1              ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v86, 3, v144
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v87, 3, v144
	v_or_b32_e32 v89, 0x3f0, v144
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[6:9], v2, s[36:39], 0 offen
	buffer_load_b128 v[10:13], v1, s[36:39], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s27, v0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s30, v86
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v0, s27, 6, v0
	v_or_b32_e32 v90, 0x7f0, v144
	v_lshlrev_b32_e32 v91, 5, v144
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s35, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[14:17], v1, s[36:39], 0 offen
	buffer_load_b128 v[18:21], v2, s[36:39], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s26, v86
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 56, v87
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s5, 63
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v3, s27, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s30, 32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v143, v135, 9, v181
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v88, v1, v2, s34
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s44, v181
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s35, v3
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v5, 48, v135
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v145, 0x90, v143
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v1, s7, v88
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s35, v0
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v54, 0, v143
	v_xor_b32_e32 v136, 0x110, v143
	v_add_nc_u32_e32 v55, 0, v145
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_clause 0x1
	buffer_load_b128 v[22:25], v0, s[36:39], 0 offen
	buffer_load_b128 v[26:29], v2, s[36:39], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v0, 0x80000000, v3, s4
	v_cndmask_b32_e64 v2, 0x80000000, v4, s4
	s_clause 0x1
	buffer_load_b128 v[30:33], v0, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v2, s[36:39], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v0, 0x80000000, v1, vcc_lo
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s26, 5
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v56, 0, v136
	v_lshlrev_b32_e32 v2, 4, v144
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v3, 16, v135
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[49:50], v0, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v0, s44, v86
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 32, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v0, s7, s4, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v53, 0, v87
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x5f
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[51:52], v0, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
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
	v_and_b16 v8.l, 0xff, v38.l
	v_lshrrev_b32_e32 v48, 8, v38
	v_lshrrev_b32_e32 v57, 24, v38
	v_and_b16 v8.h, 0xff, v38.h
	v_lshrrev_b32_e32 v38, 8, v12
	v_lshrrev_b32_e32 v58, 24, v12
	v_and_b16 v10.l, 0xff, v39.l
	v_lshrrev_b32_e32 v59, 8, v39
	v_lshrrev_b32_e32 v60, 24, v39
	v_and_b16 v10.h, 0xff, v39.h
	v_lshrrev_b32_e32 v39, 8, v13
	v_lshrrev_b32_e32 v61, 24, v13
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v62, v18, v14, 0x5010400
	v_perm_b32 v63, v18, v14, 0x7030602
	v_perm_b32 v64, v19, v15, 0x5010400
	v_perm_b32 v65, v19, v15, 0x7030602
	v_perm_b32 v66, v20, v16, 0x5010400
	v_perm_b32 v68, v21, v17, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v47, 24, v11
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v67, v20, v16, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v7.l, 0xff, v11.l
	v_and_b16 v9.l, 0xff, v12.l
	v_and_b16 v11.l, 0xff, v13.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v69, v21, v17, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v12.l, 8, v40.l
	v_lshlrev_b16 v13.l, 8, v42.l
	v_lshlrev_b16 v14.l, 8, v44.l
	v_lshlrev_b16 v15.l, 8, v46.l
	v_lshlrev_b16 v16.l, 8, v48.l
	v_lshlrev_b16 v16.h, 8, v57.l
	v_lshlrev_b16 v17.l, 8, v38.l
	v_lshlrev_b16 v17.h, 8, v58.l
	v_lshlrev_b16 v18.l, 8, v59.l
	v_lshlrev_b16 v19.l, 8, v39.l
	v_lshlrev_b16 v19.h, 8, v61.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v44, 8, v62
	v_lshrrev_b32_e32 v46, 8, v63
	v_and_b16 v38.l, 0xff, v64.l
	v_lshrrev_b32_e32 v48, 8, v64
	v_lshrrev_b32_e32 v57, 24, v64
	v_and_b16 v38.h, 0xff, v64.h
	v_and_b16 v39.l, 0xff, v65.l
	v_lshrrev_b32_e32 v58, 8, v65
	v_lshrrev_b32_e32 v59, 24, v65
	v_and_b16 v39.h, 0xff, v65.h
	v_lshrrev_b32_e32 v61, 24, v66
	v_and_b16 v42.l, 0xff, v68.l
	v_lshrrev_b32_e32 v64, 8, v68
	v_lshrrev_b32_e32 v65, 24, v68
	v_and_b16 v42.h, 0xff, v68.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v68, v26, v22, 0x5010400
	v_and_b16 v7.h, 0xff, v11.h
	v_and_b16 v9.h, 0xff, v12.h
	v_and_b16 v11.h, 0xff, v13.h
	v_lshlrev_b16 v12.h, 8, v41.l
	v_lshlrev_b16 v13.h, 8, v43.l
	v_lshlrev_b16 v14.h, 8, v45.l
	v_lshlrev_b16 v15.h, 8, v47.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v20.l, 0xff, v62.l
	v_lshrrev_b32_e32 v45, 24, v62
	v_and_b16 v20.h, 0xff, v62.h
	v_lshrrev_b32_e32 v47, 24, v63
	v_lshrrev_b32_e32 v62, 8, v67
	v_and_b16 v21.l, 0xff, v63.l
	v_and_b16 v21.h, 0xff, v63.h
	v_lshrrev_b32_e32 v63, 24, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v26, v26, v22, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v73, v34, v30, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.h, 8, v60.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v40.l, 0xff, v66.l
	v_lshrrev_b32_e32 v60, 8, v66
	v_and_b16 v40.h, 0xff, v66.h
	v_and_b16 v41.l, 0xff, v67.l
	v_and_b16 v41.h, 0xff, v67.h
	v_and_b16 v43.l, 0xff, v69.l
	v_lshrrev_b32_e32 v66, 8, v69
	v_lshrrev_b32_e32 v67, 24, v69
	v_and_b16 v43.h, 0xff, v69.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v69, v27, v23, 0x5010400
	v_perm_b32 v27, v27, v23, 0x7030602
	v_perm_b32 v70, v28, v24, 0x5010400
	v_perm_b32 v28, v28, v24, 0x7030602
	v_perm_b32 v71, v29, v25, 0x5010400
	v_perm_b32 v72, v29, v25, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v74, v35, v31, 0x5010400
	v_perm_b32 v35, v35, v31, 0x7030602
	v_perm_b32 v75, v36, v32, 0x5010400
	v_perm_b32 v36, v36, v32, 0x7030602
	v_perm_b32 v76, v37, v33, 0x5010400
	v_perm_b32 v77, v37, v33, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v0.l, v0.l, v12.l
	v_or_b16 v1.l, v1.l, v13.l
	v_or_b16 v8.h, v8.h, v16.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v12.l, 8, v44.l
	v_lshlrev_b16 v13.l, 8, v46.l
	v_lshlrev_b16 v16.h, 8, v61.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v44, 8, v68
	v_or_b16 v0.h, v0.h, v12.h
	v_or_b16 v1.h, v1.h, v13.h
	v_or_b16 v9.l, v9.l, v17.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v12.h, 8, v45.l
	v_lshlrev_b16 v13.h, 8, v47.l
	v_lshlrev_b16 v17.l, 8, v62.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v45, 24, v68
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v9.h, v9.h, v17.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.l, 8, v48.l
	v_lshlrev_b16 v17.h, 8, v63.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v46, 8, v26
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v10.l, v10.l, v18.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.h, 8, v57.l
	v_lshlrev_b16 v18.l, 8, v64.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v47, 24, v26
	v_and_b16 v22.l, 0xff, v68.l
	v_and_b16 v22.h, 0xff, v68.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v68, 8, v73
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v15.l, 8, v58.l
	v_lshlrev_b16 v15.h, 8, v59.l
	v_lshlrev_b16 v16.l, 8, v60.l
	v_lshlrev_b16 v18.h, 8, v65.l
	v_lshlrev_b16 v19.l, 8, v66.l
	v_lshlrev_b16 v19.h, 8, v67.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v23.l, 0xff, v26.l
	v_and_b16 v23.h, 0xff, v26.h
	v_and_b16 v24.l, 0xff, v69.l
	v_lshrrev_b32_e32 v48, 8, v69
	v_lshrrev_b32_e32 v57, 24, v69
	v_and_b16 v24.h, 0xff, v69.h
	v_and_b16 v25.l, 0xff, v27.l
	v_lshrrev_b32_e32 v58, 8, v27
	v_lshrrev_b32_e32 v59, 24, v27
	v_and_b16 v25.h, 0xff, v27.h
	v_and_b16 v26.l, 0xff, v70.l
	v_lshrrev_b32_e32 v60, 8, v70
	v_lshrrev_b32_e32 v61, 24, v70
	v_and_b16 v26.h, 0xff, v70.h
	v_and_b16 v27.l, 0xff, v28.l
	v_lshrrev_b32_e32 v62, 8, v28
	v_lshrrev_b32_e32 v63, 24, v28
	v_and_b16 v27.h, 0xff, v28.h
	v_and_b16 v28.l, 0xff, v71.l
	v_lshrrev_b32_e32 v64, 8, v71
	v_lshrrev_b32_e32 v65, 24, v71
	v_and_b16 v28.h, 0xff, v71.h
	v_and_b16 v29.l, 0xff, v72.l
	v_lshrrev_b32_e32 v66, 8, v72
	v_lshrrev_b32_e32 v67, 24, v72
	v_and_b16 v29.h, 0xff, v72.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v30.l, 0xff, v73.l
	v_lshrrev_b32_e32 v69, 24, v73
	v_and_b16 v30.h, 0xff, v73.h
	v_and_b16 v31.l, 0xff, v34.l
	v_lshrrev_b32_e32 v70, 8, v34
	v_lshrrev_b32_e32 v71, 24, v34
	v_and_b16 v31.h, 0xff, v34.h
	v_and_b16 v32.l, 0xff, v74.l
	v_lshrrev_b32_e32 v72, 8, v74
	v_lshrrev_b32_e32 v73, 24, v74
	v_and_b16 v32.h, 0xff, v74.h
	v_and_b16 v33.l, 0xff, v35.l
	v_lshrrev_b32_e32 v74, 8, v35
	v_lshrrev_b32_e32 v78, 24, v35
	v_and_b16 v33.h, 0xff, v35.h
	v_and_b16 v34.l, 0xff, v75.l
	v_lshrrev_b32_e32 v79, 8, v75
	v_lshrrev_b32_e32 v80, 24, v75
	v_and_b16 v34.h, 0xff, v75.h
	v_and_b16 v35.l, 0xff, v36.l
	v_lshrrev_b32_e32 v75, 8, v36
	v_lshrrev_b32_e32 v81, 24, v36
	v_and_b16 v35.h, 0xff, v36.h
	v_and_b16 v36.l, 0xff, v76.l
	v_lshrrev_b32_e32 v82, 8, v76
	v_lshrrev_b32_e32 v83, 24, v76
	v_and_b16 v36.h, 0xff, v76.h
	v_lshrrev_b32_e32 v76, 8, v77
	v_lshrrev_b32_e32 v84, 24, v77
	v_or_b16 v12.l, v20.l, v12.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v54, v0
	ds_store_b16_d16_hi v54, v0 offset:32
	ds_store_b16 v54, v1 offset:64
	ds_store_b16_d16_hi v54, v1 offset:96
	ds_store_b16_d16_hi v55, v6 offset:32
	ds_store_b16 v55, v7 offset:64
	ds_store_b16_d16_hi v55, v7 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v0.h, v21.l, v13.l
	v_or_b16 v13.l, v40.h, v16.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v16.h, 8, v44.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.l, v21.h, v13.h
	v_or_b16 v13.h, v41.l, v17.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.l, 8, v45.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.h, v38.l, v14.l
	v_or_b16 v14.l, v41.h, v17.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.h, 8, v46.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v6.h, v38.h, v14.h
	v_or_b16 v14.h, v42.l, v18.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.l, 8, v47.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v0.l, v20.h, v12.h
	v_lshlrev_b16 v40.h, 8, v68.l
	v_and_b16 v37.l, 0xff, v77.l
	v_and_b16 v37.h, 0xff, v77.h
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
	v_lshlrev_b16 v20.l, 8, v59.l
	v_lshlrev_b16 v20.h, 8, v60.l
	v_lshlrev_b16 v21.l, 8, v61.l
	v_lshlrev_b16 v21.h, 8, v62.l
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
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v53, v[49:50] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v54, v0 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v54, v10 offset:384
	ds_store_b16_d16_hi v54, v10 offset:416
	ds_store_b16 v54, v11 offset:448
	ds_store_b16_d16_hi v54, v11 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v54, v0 offset:16416
	ds_store_b16 v54, v1 offset:16480
	ds_store_b16_d16_hi v55, v1 offset:16384
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
	v_or_b16 v0.l, v22.l, v16.h
	v_or_b16 v0.h, v22.h, v17.l
	v_or_b16 v1.l, v23.l, v17.h
	v_or_b16 v1.h, v23.h, v18.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v12.l, v30.l, v40.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.l, v24.l, v18.h
	v_or_b16 v6.h, v24.h, v19.l
	v_or_b16 v7.l, v25.l, v19.h
	v_or_b16 v7.h, v25.h, v20.l
	v_or_b16 v8.l, v26.l, v20.h
	v_or_b16 v8.h, v26.h, v21.l
	v_or_b16 v9.l, v27.l, v21.h
	v_or_b16 v9.h, v27.h, v38.l
	v_or_b16 v10.l, v28.l, v38.h
	v_or_b16 v10.h, v28.h, v39.l
	v_or_b16 v11.l, v29.l, v39.h
	v_or_b16 v11.h, v29.h, v40.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v12.h, v30.h, v41.l
	v_or_b16 v13.l, v31.l, v41.h
	v_or_b16 v13.h, v31.h, v42.l
	v_or_b16 v14.l, v32.l, v42.h
	v_or_b16 v14.h, v32.h, v43.l
	v_or_b16 v15.l, v33.l, v43.h
	v_or_b16 v15.h, v33.h, v44.l
	v_or_b16 v16.l, v34.l, v44.h
	v_or_b16 v16.h, v34.h, v45.l
	v_or_b16 v17.l, v35.l, v45.h
	v_or_b16 v17.h, v35.h, v46.l
	v_or_b16 v18.l, v36.l, v46.h
	v_or_b16 v18.h, v36.h, v47.l
	v_or_b16 v19.l, v37.l, v47.h
	v_or_b16 v19.h, v37.h, v48.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v54, v0 offset:8192
	ds_store_b16_d16_hi v54, v0 offset:8224
	ds_store_b16 v54, v1 offset:8256
	ds_store_b16_d16_hi v54, v1 offset:8288
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
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v7, 5, v144
	v_and_b32_e32 v6, 0xe00, v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v26, 0x3f0, v144
	v_or_b32_e32 v45, 0x7f0, v144
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v0, 4, v144
	v_and_b32_e32 v1, 8, v144
	v_and_or_b32 v65, 0x60, v7, v6
	s_mov_b32 s4, 0
	scratch_store_b32 off, v7, off offset:328 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr0
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr45
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr65
.LBB0_3:                                ; %Flow1174
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v6, s34, v135
	v_or_b32_e32 v3, s34, v3
	v_or_b32_e32 v4, s34, v4
	v_or_b32_e32 v5, s34, v5
	s_ashr_i32 s1, s6, 6
	v_or_b32_e32 v7, s33, v144
	v_mul_lo_u32 v233, v6, s1
	v_mul_lo_u32 v228, v3, s1
	v_mul_lo_u32 v229, v4, s1
	v_mul_lo_u32 v231, v5, s1
	v_lshlrev_b32_e32 v4, 2, v85
	v_lshlrev_b32_e32 v5, 1, v144
	v_lshlrev_b32_e32 v3, 1, v85
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v7, off offset:628
	scratch_store_b32 off, v135, off offset:624
	scratch_store_b32 off, v85, off offset:720
	scratch_store_b32 off, v3, off offset:728
	scratch_store_b32 off, v4, off offset:732
	scratch_store_b32 off, v5, off offset:736
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v144, 2, 1
	v_bfe_i32 v1, v144, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v2, 0xe00, v2
	v_and_b32_e32 v0, 0x90, v0
	v_dual_mov_b32 v10, s16 :: v_dual_and_b32 v1, 0x110, v1
	v_mov_b32_e32 v11, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v2, 0x60, v91, v2
	v_mov_b32_e32 v13, s19
	v_xor_b32_e32 v0, v0, v1
	v_dual_mov_b32 v12, s18 :: v_dual_and_b32 v9, 28, v5
	v_dual_mov_b32 v15, s21 :: v_dual_mov_b32 v14, s20
	v_mov_b32_e32 v17, s23
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v1, v2, v0
	v_and_b32_e32 v0, 32, v91
	v_dual_mov_b32 v16, s22 :: v_dual_mov_b32 v227, 0
	v_mov_b32_e32 v189, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[10:13], off offset:676
	scratch_store_b128 off, v[14:17], off offset:692
	v_add3_u32 v0, 0, v4, v0
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v6, s35, v183
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v0, v0, v9
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v196, 0
	v_mov_b32_e32 v185, 0
	v_mov_b32_e32 v219, 0
	scratch_store_b32 off, v0, off offset:708 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v255, 0
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v6, off offset:664 ; 4-byte Folded Spill
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v190, 0
	v_mov_b32_e32 v207, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v91, off offset:744 ; 4-byte Folded Spill
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v217, 0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v2, off offset:740 ; 4-byte Folded Spill
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v47, 0
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v144, off offset:724 ; 4-byte Folded Spill
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v253, 0
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b32 off, v1, off offset:668 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v1
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v35, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v55, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v214, 0
	v_mov_b32_e32 v234, 0
	v_mov_b32_e32 v206, 0
	v_mov_b32_e32 v210, 0
	v_mov_b32_e32 v204, 0
	v_mov_b32_e32 v202, 0
	v_mov_b32_e32 v200, 0
	v_mov_b32_e32 v182, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v198, 0
	v_mov_b32_e32 v194, 0
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v50, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s48, s5, 5
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_add_i32 s0, s44, 32
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s15, 1
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s48, s48, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.Ltmp23:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_clause 0x9                            ; 44-byte Folded Spill
	scratch_store_b32 off, v1, off offset:672
	scratch_store_b32 off, v0, off offset:44
	scratch_store_b32 off, v87, off offset:716
	scratch_store_b32 off, v86, off offset:632
	scratch_store_b64 off, v[88:89], off offset:636
	scratch_store_b32 off, v89, off offset:644
	scratch_store_b32 off, v90, off offset:648
	scratch_store_b32 off, v143, off offset:652
	scratch_store_b32 off, v145, off offset:656
	scratch_store_b32 off, v136, off offset:660
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 5
	s_mov_b32 s18, s30
	s_mov_b32 s30, s44
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s0, s19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v55, off offset:52
	scratch_store_b32 off, v50, off offset:48
	scratch_store_b32 off, v46, off offset:248
	scratch_store_b32 off, v44, off offset:244
	scratch_store_b32 off, v43, off offset:240
	scratch_store_b32 off, v17, off offset:236
	scratch_store_b32 off, v23, off offset:224
	scratch_store_b32 off, v16, off offset:220
	scratch_store_b32 off, v219, off offset:300
	scratch_store_b32 off, v218, off offset:296
	scratch_store_b32 off, v217, off offset:292
	scratch_store_b32 off, v216, off offset:288
	scratch_store_b32 off, v215, off offset:284
	scratch_store_b32 off, v47, off offset:216
	scratch_store_b32 off, v42, off offset:32
	scratch_store_b32 off, v39, off offset:212
	scratch_store_b32 off, v38, off offset:208
	scratch_store_b32 off, v37, off offset:204
	scratch_store_b32 off, v36, off offset:200
	scratch_store_b32 off, v35, off offset:196
	scratch_store_b32 off, v34, off offset:192
	scratch_store_b32 off, v33, off offset:188
	scratch_store_b32 off, v32, off offset:184
	scratch_store_b32 off, v31, off offset:180
	scratch_store_b32 off, v30, off offset:176
	scratch_store_b32 off, v20, off offset:172
	scratch_store_b32 off, v196, off offset:152
	scratch_store_b32 off, v172, off offset:168
	scratch_store_b32 off, v22, off offset:164
	scratch_store_b32 off, v19, off offset:160
	scratch_store_b32 off, v14, off offset:156
	scratch_store_b32 off, v212, off offset:280
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v214, off offset:276
	scratch_store_b32 off, v213, off offset:272
	scratch_store_b32 off, v160, off offset:24
	scratch_store_b32 off, v2, off offset:20
	scratch_store_b32 off, v107, off offset:16
	scratch_store_b32 off, v173, off offset:148
	scratch_store_b32 off, v168, off offset:144
	scratch_store_b32 off, v154, off offset:12
	scratch_store_b32 off, v153, off offset:28
	scratch_store_b32 off, v21, off offset:8
	scratch_store_b32 off, v106, off offset:140
	scratch_store_b32 off, v101, off offset:136
	scratch_store_b32 off, v177, off offset:4
	scratch_store_b32 off, v100, off offset:132
	scratch_store_b32 off, v141, off offset:268
	scratch_store_b32 off, v142, off offset:264
	scratch_store_b32 off, v175, off offset:128
	scratch_store_b32 off, v171, off offset:124
	scratch_store_b32 off, v18, off offset:120
	scratch_store_b32 off, v48, off offset:116
	scratch_store_b32 off, v165, off offset:112
	scratch_store_b32 off, v10, off offset:108
	scratch_store_b32 off, v102, off offset:104
	scratch_store_b32 off, v62, off offset:100
	scratch_store_b32 off, v103, off offset:96
	scratch_store_b32 off, v53, off offset:92
	scratch_store_b32 off, v15, off offset:88
	scratch_store_b32 off, v52, off offset:84
	scratch_store_b32 off, v197, off offset:80
	scratch_store_b32 off, v9, off offset:76
	scratch_store_b32 off, v12, off offset:72
	scratch_store_b32 off, v13, off
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v139, off offset:68
	scratch_store_b32 off, v11, off offset:64
	scratch_store_b32 off, v174, off offset:60
	scratch_store_b32 off, v60, off offset:56
	scratch_store_b32 off, v152, off offset:260
	scratch_store_b32 off, v155, off offset:256
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s44, s26, v[88:89]
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v10, s44, v86
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v0, s49, v135
	v_add_nc_u32_e32 v29, s49, v89
	v_add_nc_u32_e32 v30, s49, v90
	s_mov_b32 s49, s47
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v10
	v_dual_mov_b32 v196, v191 :: v_dual_mov_b32 v191, v190
	v_dual_mov_b32 v190, v185 :: v_dual_mov_b32 v185, v184
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_mov_b32 v184, v180
	buffer_load_b64 v[1:2], v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[1:2], off offset:304 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v1, off, off offset:668
	scratch_load_b32 v2, off, off offset:672
	scratch_load_b128 v[235:238], off, off offset:676
	scratch_load_b128 v[239:242], off, off offset:692
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v32, v0 offset:64
	ds_load_u8 v33, v0
	ds_load_u8 v16, v0 offset:16
	ds_load_u8 v9, v0 offset:32
	ds_load_u8 v17, v0 offset:80
	ds_load_u8 v10, v0 offset:96
	ds_load_u8 v25, v0 offset:112
	ds_load_u8 v28, v0 offset:48
	ds_load_u8 v31, v0 offset:1280
	ds_load_u8 v24, v0 offset:1088
	ds_load_u8 v34, v0 offset:1984
	ds_load_u8 v18, v0 offset:2000
	ds_load_u8 v37, v0 offset:1856
	ds_load_u8 v35, v0 offset:1920
	ds_load_u8 v21, v0 offset:1872
	ds_load_u8 v11, v0 offset:1888
	ds_load_u8 v38, v0 offset:1600
	ds_load_u8 v36, v0 offset:1664
	ds_load_u8 v19, v0 offset:1616
	ds_load_u8 v12, v0 offset:1632
	ds_load_u8 v44, v0 offset:1792
	ds_load_u8 v39, v0 offset:1728
	ds_load_u8 v20, v0 offset:1744
	ds_load_u8 v13, v0 offset:1760
	ds_load_u8 v42, v0 offset:1344
	ds_load_u8 v40, v0 offset:1408
	ds_load_u8 v22, v0 offset:1360
	ds_load_u8 v14, v0 offset:1376
	ds_load_u8 v45, v0 offset:1536
	ds_load_u8 v43, v0 offset:1472
	ds_load_u8 v23, v0 offset:1488
	ds_load_u8 v15, v0 offset:1504
	ds_load_u8 v46, v0 offset:832
	ds_load_u8 v47, v0 offset:768
	ds_load_u8 v50, v0 offset:848
	ds_load_u8 v54, v0 offset:784
	ds_load_u8 v55, v0 offset:864
	ds_load_u8 v56, v0 offset:800
	ds_load_u8 v57, v0 offset:880
	ds_load_u8 v58, v0 offset:816
	ds_load_u8 v59, v0 offset:960
	ds_load_u8 v60, v0 offset:896
	ds_load_u8 v61, v0 offset:1024
	ds_load_u8 v62, v0 offset:976
	ds_load_u8 v63, v0 offset:912
	ds_load_u8 v64, v0 offset:992
	ds_load_u8 v65, v0 offset:928
	ds_load_u8 v66, v0 offset:944
	ds_load_u8 v67, v0 offset:576
	ds_load_u8 v68, v0 offset:512
	ds_load_u8 v69, v0 offset:592
	ds_load_u8 v70, v0 offset:528
	ds_load_u8 v71, v0 offset:608
	ds_load_u8 v72, v0 offset:544
	ds_load_u8 v73, v0 offset:624
	ds_load_u8 v74, v0 offset:560
	ds_load_u8 v75, v0 offset:704
	ds_load_u8 v76, v0 offset:640
	ds_load_u8 v77, v0 offset:720
	ds_load_u8 v78, v0 offset:656
	ds_load_u8 v79, v0 offset:736
	ds_load_u8 v80, v0 offset:672
	ds_load_u8 v81, v0 offset:752
	ds_load_u8 v82, v0 offset:688
	ds_load_u8 v83, v0 offset:320
	ds_load_u8 v84, v0 offset:256
	ds_load_u8 v85, v0 offset:336
	ds_load_u8 v86, v0 offset:272
	ds_load_u8 v87, v0 offset:352
	ds_load_u8 v88, v0 offset:288
	ds_load_u8 v89, v0 offset:368
	ds_load_u8 v90, v0 offset:304
	ds_load_u8 v91, v0 offset:448
	ds_load_u8 v92, v0 offset:384
	ds_load_u8 v93, v0 offset:464
	ds_load_u8 v94, v0 offset:400
	ds_load_u8 v95, v0 offset:480
	ds_load_u8 v96, v0 offset:416
	ds_load_u8 v97, v0 offset:496
	ds_load_u8 v98, v0 offset:432
	ds_load_u8 v99, v0 offset:192
	ds_load_u8 v100, v0 offset:128
	ds_load_u8 v101, v0 offset:208
	ds_load_u8 v102, v0 offset:144
	ds_load_u8 v103, v0 offset:224
	ds_load_u8 v104, v0 offset:160
	ds_load_u8 v105, v0 offset:240
	ds_load_u8 v106, v0 offset:176
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v109, v33, v32, 0xc0c0004
	ds_load_u8 v33, v0 offset:1776
	ds_load_u8 v108, v0 offset:1904
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v63, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v69, v78, v77, 0xc0c0004
	v_perm_b32 v78, v16, v17, 0xc0c0004
	ds_load_u8 v16, v0 offset:1808
	ds_load_u8 v17, v0 offset:1824
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v0 offset:1968
	ds_load_u8 v60, v0 offset:1840
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v70, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v77, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v85, v102, v101, 0xc0c0004
	v_perm_b32 v112, v35, v34, 0xc0c0004
	v_perm_b32 v61, v61, v24, 0xc0c0004
	ds_load_u8 v24, v0 offset:1152
	ds_load_u8 v32, v0 offset:1216
	ds_load_u8 v34, v0 offset:1232
	ds_load_u8 v35, v0 offset:1248
	ds_load_u8 v123, v0 offset:1200
	v_perm_b32 v116, v36, v39, 0xc0c0004
	v_perm_b32 v107, v47, v46, 0xc0c0004
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v46, v0 offset:2016
	ds_load_u8 v29, v29
	ds_load_u8 v68, v30
	v_perm_b32 v120, v31, v42, 0xc0c0004
	ds_load_u8 v30, v0 offset:1104
	ds_load_u8 v31, v0 offset:1120
	ds_load_u8 v119, v0 offset:1136
	ds_load_u8 v122, v0 offset:1072
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v0 offset:1648
	ds_load_u8 v111, v0 offset:1392
	ds_load_u8 v113, v0 offset:1520
	ds_load_u8 v117, v0 offset:1264
	ds_load_u8 v118, v0 offset:1456
	ds_load_u8 v115, v0 offset:1328
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v86, v16, v21, 0xc0c0004
	ds_load_u8 v16, v0 offset:1936
	ds_load_u8 v21, v0 offset:1952
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v124, v24, v32, 0xc0c0004
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v0 offset:1712
	ds_load_u8 v92, v0 offset:1584
	v_perm_b32 v125, v54, v50, 0xc0c0004
	v_perm_b32 v114, v45, v38, 0xc0c0004
	v_perm_b32 v56, v56, v55, 0xc0c0004
	v_perm_b32 v47, v17, v11, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v65, v72, v71, 0xc0c0004
	v_perm_b32 v71, v80, v79, 0xc0c0004
	v_perm_b32 v80, v9, v10, 0xc0c0004
	v_perm_b32 v110, v44, v37, 0xc0c0004
	v_perm_b32 v121, v40, v43, 0xc0c0004
	v_perm_b32 v72, v88, v87, 0xc0c0004
	v_perm_b32 v79, v96, v95, 0xc0c0004
	v_perm_b32 v87, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v93, v16, v18, 0xc0c0004
	ds_load_u8 v16, v0 offset:1552
	ds_load_u8 v18, v0 offset:1568
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v21, v46, 0xc0c0004
	v_perm_b32 v38, v58, v57, 0xc0c0004
	v_perm_b32 v39, v66, v29, 0xc0c0004
	v_perm_b32 v40, v74, v73, 0xc0c0004
	v_perm_b32 v42, v82, v81, 0xc0c0004
	v_perm_b32 v37, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v33, v100, v33, 0xc0c0004
	v_perm_b32 v29, v118, v113, 0xc0c0004
	v_lshl_or_b32 v104, v75, 16, v67
	v_lshl_or_b32 v103, v91, 16, v83
	v_lshl_or_b32 v102, v99, 16, v109
	v_lshl_or_b32 v135, v62, 16, v125
	v_lshl_or_b32 v134, v69, 16, v63
	v_lshl_or_b32 v133, v77, 16, v70
	v_lshl_or_b32 v132, v85, 16, v78
	v_lshl_or_b32 v151, v64, 16, v56
	v_lshl_or_b32 v150, v71, 16, v65
	v_lshl_or_b32 v149, v79, 16, v72
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v94, v16, v19, 0xc0c0004
	ds_load_u8 v16, v0 offset:1680
	ds_load_u8 v19, v0 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v18, v12, 0xc0c0004
	v_lshl_or_b32 v148, v87, 16, v80
	v_lshl_or_b32 v39, v39, 16, v38
	v_lshl_or_b32 v38, v42, 16, v40
	v_lshl_or_b32 v118, v116, 16, v114
	v_lshl_or_b32 v116, v124, 16, v61
	v_lshl_or_b32 v139, v93, 16, v86
	v_lshl_or_b32 v155, v50, 16, v47
	v_mov_b32_e32 v47, v49
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v101, v16, v20, 0xc0c0004
	ds_load_u8 v16, v0 offset:1296
	ds_load_u8 v20, v0 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v55, v19, v13, 0xc0c0004
	v_lshl_or_b32 v138, v101, 16, v94
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v154, v55, 16, v54
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v126, v16, v22, 0xc0c0004
	ds_load_u8 v16, v0 offset:1424
	ds_load_u8 v32, v0 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v20, v14, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v127, v16, v23, 0xc0c0004
	ds_load_u8 v16, v0 offset:1040
	ds_load_u8 v36, v0 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v32, v15, 0xc0c0004
	v_perm_b32 v32, v92, v84, 0xc0c0004
	v_lshl_or_b32 v137, v127, 16, v126
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v153, v46, 16, v45
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v128, v16, v30, 0xc0c0004
	ds_load_u8 v16, v0 offset:1168
	ds_load_u8 v0, v0 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v36, v31, 0xc0c0004
	v_perm_b32 v36, v90, v89, 0xc0c0004
	v_perm_b32 v31, v76, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v129, v16, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v0, v35, 0xc0c0004
	v_perm_b32 v34, v28, v25, 0xc0c0004
	v_perm_b32 v35, v106, v105, 0xc0c0004
	v_perm_b32 v28, v115, v111, 0xc0c0004
	v_lshl_or_b32 v105, v59, 16, v107
	v_perm_b32 v0, v122, v119, 0xc0c0004
	v_perm_b32 v25, v123, v117, 0xc0c0004
	v_lshl_or_b32 v36, v35, 16, v34
	v_lshl_or_b32 v119, v112, 16, v110
	v_lshl_or_b32 v117, v121, 16, v120
	v_lshl_or_b32 v152, v44, 16, v43
	v_lshl_or_b32 v44, v33, 16, v32
	v_lshl_or_b32 v43, v29, 16, v28
	v_lshl_or_b32 v136, v129, 16, v128
	v_lshl_or_b32 v42, v25, 16, v0
	v_dual_mov_b32 v107, v230 :: v_dual_mov_b32 v106, v232
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v16, s16, v1
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v30, s16, v2
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s14, v1
	v_mov_b32_e32 v1, v231
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[21:24], v16
	ds_load_b128 v[9:12], v16 offset:4096
	ds_load_b128 v[17:20], v30
	ds_load_b128 v[13:16], v30 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v30, v60, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v31, 16, v30
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[21:24], v[102:105], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[21:24], v[132:135], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[21:24], v[148:151], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[21:24], v[36:39], v[235:242] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[28:35], v[17:20], v[116:119], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[9:12], v[102:105], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[17:20], v[136:139], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[17:20], v[152:155], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[17:20], v[42:45], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[9:12], v[132:135], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[9:12], v[148:151], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[9:12], v[36:39], v[235:242] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v9, s14, v2
	ds_load_b128 v[164:167], v0
	ds_load_b128 v[168:171], v0 offset:4096
	ds_load_b128 v[172:175], v9
	ds_load_b128 v[176:179], v9 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v0, v29
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[13:16], v[116:119], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[13:16], v[136:139], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[13:16], v[152:155], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[13:16], v[42:45], v[108:115] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:560 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v28
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s14, s44, s35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v230, v57
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s14, s14, s33
	v_mov_b32_e32 v180, v140
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v31
	v_cvt_f32_i32_e32 v197, v58
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:708
	scratch_load_b32 v58, off, off offset:628
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[164:167], v[102:105], v[235:242] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v30
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[168:171], v[102:105], v[235:242] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[172:175], v[116:119], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[168:171], v[132:135], v[235:242] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:572 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[176:179], v[116:119], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[164:167], v[132:135], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[176:179], v[136:139], v[124:131] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:576 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[116:123], v[172:175], v[136:139], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[164:167], v[148:151], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[168:171], v[148:151], v[235:242] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[132:139], v[172:175], v[152:155], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[176:179], v[152:155], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[164:167], v[36:39], v[235:242] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:584 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[212:219], v[168:171], v[36:39], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[172:175], v[42:45], v[148:155] neg_lo:[1,1,0]
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v32, s44, v181
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	v_wmma_i32_16x16x16_iu8 v[212:219], v[176:179], v[42:45], v[212:219] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v172, v67
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v67, s14, v183
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v32
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v173, v84
	v_cvt_f32_i32_e32 v176, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v32, 0x80000000, v67, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v170, v86
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v169, v89
	v_cvt_f32_i32_e32 v167, v88
	v_cvt_f32_i32_e32 v166, v91
	v_cvt_f32_i32_e32 v164, v90
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v221, v61
	v_cvt_f32_i32_e32 v232, v54
	v_cvt_f32_i32_e32 v168, v56
	v_cvt_f32_i32_e32 v103, v60
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v209, v20
	v_cvt_f32_i32_e32 v199, v22
	v_cvt_f32_i32_e32 v60, v23
	v_mov_b32_e32 v23, v188
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v222, v59
	v_cvt_f32_i32_e32 v211, v18
	v_cvt_f32_i32_e32 v174, v17
	v_cvt_f32_i32_e32 v179, v24
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v177, v63
	v_cvt_f32_i32_e32 v175, v62
	v_cvt_f32_i32_e32 v178, v65
	v_cvt_f32_i32_e32 v165, v64
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v102, v66
	v_cvt_f32_i32_e32 v171, v69
	v_cvt_f32_i32_e32 v62, v68
	v_cvt_f32_i32_e32 v162, v93
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v79
	v_cvt_f32_i32_e32 v66, v92
	v_cvt_f32_i32_e32 v65, v71
	v_cvt_f32_i32_e32 v68, v70
	v_cvt_f32_i32_e32 v69, v73
	scratch_store_b32 off, v0, off offset:592 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v78
	v_cvt_f32_i32_e32 v70, v72
	v_cvt_f32_i32_e32 v71, v75
	v_cvt_f32_i32_e32 v72, v74
	v_cvt_f32_i32_e32 v73, v77
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v81
	v_cvt_f32_i32_e32 v74, v76
	v_cvt_f32_i32_e32 v75, v109
	v_cvt_f32_i32_e32 v76, v108
	v_cvt_f32_i32_e32 v77, v111
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v80
	v_cvt_f32_i32_e32 v78, v110
	v_cvt_f32_i32_e32 v79, v113
	v_cvt_f32_i32_e32 v80, v112
	v_mov_b32_e32 v63, v226
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v83
	v_cvt_f32_i32_e32 v83, v114
	v_mov_b32_e32 v31, v224
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v39, v229
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v82
	v_cvt_f32_i32_e32 v82, v115
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v85
	scratch_store_b32 off, v0, off offset:616 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v95
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v94
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v97
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v96
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v99
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v98
	scratch_store_b32 off, v0, off offset:536 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v101, v19
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v100, v21
	v_mov_b32_e32 v21, v220
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v55
	v_mov_b32_e32 v55, v183
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v117
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v116
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v119
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v118
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v121
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v120
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v123
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v122
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v125
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v124
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v127
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v126
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v129
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v128
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v131
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v130
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v133
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v132
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v135
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v134
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v137
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v136
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v139
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v138
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v141
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v140
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v143
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v142
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v145
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v144
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v147
	v_cvt_f32_i32_e32 v147, v218
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v146
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v149
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v148
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v151
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v150
	v_cvt_f32_i32_e32 v150, v212
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v153
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v152
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v155
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v154
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v213
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v215
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v214
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v217
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v216
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v219
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s14, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s14, s14, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[84:87], v32, s[36:39], 0 offen
	buffer_load_b128 v[88:91], v67, s[36:39], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v32, s14, v183
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v141, v88, v84, 0x5010400
	v_perm_b32 v142, v88, v84, 0x7030602
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v84, s14, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v143, v89, v85, 0x5010400
	v_perm_b32 v144, v89, v85, 0x7030602
	v_perm_b32 v136, v90, v86, 0x5010400
	v_perm_b32 v135, v90, v86, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v88, 0x80000000, v84, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v67, v91, v87, 0x5010400
	v_perm_b32 v81, v91, v87, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[84:87], v32, s[36:39], 0 offen
	buffer_load_b128 v[88:91], v88, s[36:39], 0 offen
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s18, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 26
	s_add_i32 s18, s18, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s14, s18, 6
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s16, s14, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v32, v233, s14, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v145, v88, v84, 0x5010400
	v_perm_b32 v146, v88, v84, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v84, v58, s16, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v148, v89, v85, 0x5010400
	v_perm_b32 v149, v89, v85, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v85, v229, s14, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v151, v90, v86, 0x5010400
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v152, v90, v86, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v86, v231, s14, 1
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v122, v91, v87, 0x5010400
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v84, v84, s[40:43], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v115, v91, v87, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v57, v84 offset:36864
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v84, v228, s14, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s15, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s14, 2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	s_clause 0x3
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v61, off, off offset:712 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s15, s14, 0
	s_add_i32 s19, s17, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s14, s15, 11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s18, s14, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s14, s15, 13
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s47, s18, 0x8000
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v121, 16, v84
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v153, 16, v85
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v154, 16, v86
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[84:87], v61 offset:36864
	ds_load_b128 v[88:91], v61 offset:36880
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v120, 16, v32
	v_add_nc_u32_e32 v32, s27, v58
	v_mov_b32_e32 v46, v51
	v_mov_b32_e32 v50, v181
	v_mov_b32_e32 v56, v186
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v32, v32, s16, 1
	s_mov_b32 s16, s46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s46, s14, 0
	s_mov_b32 s14, s45
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s48
	s_mov_b32 s17, s19
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v32, v32, s[40:43], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v215, v85, v121
	v_mul_f32_e32 v216, v84, v121
	v_mul_f32_e32 v217, v87, v121
	v_mul_f32_e32 v218, v86, v121
	v_mul_f32_e32 v219, v85, v153
	v_mul_f32_e32 v51, v84, v153
	v_mul_f32_e32 v155, v85, v120
	v_dual_mul_f32 v212, v84, v120 :: v_dual_mul_f32 v187, v86, v154
	v_mul_f32_e32 v213, v87, v120
	v_dual_mul_f32 v214, v86, v120 :: v_dual_mul_f32 v183, v84, v154
	v_mul_f32_e32 v49, v87, v153
	v_dual_mul_f32 v181, v86, v153 :: v_dual_mul_f32 v54, v85, v154
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v33, v88, v153 :: v_dual_mul_f32 v186, v87, v154
	v_dual_mul_f32 v188, v89, v120 :: v_dual_mul_f32 v37, v91, v153
	v_mul_f32_e32 v19, v88, v120
	v_dual_mul_f32 v22, v91, v120 :: v_dual_mul_f32 v45, v89, v154
	v_dual_mul_f32 v20, v90, v120 :: v_dual_mul_f32 v43, v88, v154
	v_mul_f32_e32 v29, v89, v121
	v_mul_f32_e32 v25, v88, v121
	v_mul_f32_e32 v28, v91, v121
	v_mul_f32_e32 v26, v90, v121
	v_mul_f32_e32 v38, v89, v153
	v_mul_f32_e32 v34, v90, v153
	v_mul_f32_e32 v44, v91, v154
	v_mul_f32_e32 v254, v90, v154
	ds_load_b128 v[84:87], v61 offset:37376
	ds_load_b128 v[88:91], v61 offset:37392
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v14, v157
	v_mov_b32_e32 v36, v223
	v_mov_b32_e32 v30, v225
	v_mov_b32_e32 v42, v227
	v_mov_b32_e32 v40, v228
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v106, v25, v197
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v25.h, 0xff, v141.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v107, v29, v222
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v29.h, 0xff, v115.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v5, v54, v65
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v157, v85, v120
	v_mul_f32_e32 v9, v84, v120
	v_mul_f32_e32 v11, v87, v120
	v_mul_f32_e32 v160, v86, v120
	v_dual_mul_f32 v18, v85, v121 :: v_dual_mul_f32 v227, v84, v154
	v_mul_f32_e32 v15, v84, v121
	v_mul_f32_e32 v48, v87, v121
	v_mul_f32_e32 v220, v86, v121
	v_mul_f32_e32 v223, v85, v153
	v_dual_mul_f32 v224, v84, v153 :: v_dual_mul_f32 v229, v86, v154
	v_mul_f32_e32 v41, v87, v153
	v_dual_mul_f32 v225, v86, v153 :: v_dual_mul_f32 v226, v85, v154
	v_dual_mul_f32 v235, v88, v153 :: v_dual_mul_f32 v228, v87, v154
	v_mul_f32_e32 v17, v89, v153
	v_mul_f32_e32 v231, v89, v120
	v_mul_f32_e32 v0, v88, v120
	v_mul_f32_e32 v53, v91, v120
	v_dual_mul_f32 v52, v90, v120 :: v_dual_mul_f32 v237, v88, v154
	v_dual_mul_f32 v13, v89, v121 :: v_dual_fmac_f32 v4, v183, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v205, v44, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v208, v52, v173
	v_dual_fmac_f32 v200, v227, v76 :: v_dual_mov_b32 v227, v42
	v_fmac_f32_e32 v193, v229, v78
	v_mov_b32_e32 v229, v39
	v_fmac_f32_e32 v159, v28, v221
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v28.h, 0xff, v122.l
	v_mov_b32_e32 v183, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v201, v226, v75 :: v_dual_mov_b32 v226, v63
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v57, v32 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[94:97], v61 offset:36864
	ds_load_b128 v[116:119], v61 offset:36880
	ds_load_b128 v[129:132], v61 offset:37376
	ds_load_b128 v[137:140], v61 offset:37392
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v88, v121
	v_mov_b32_e32 v10, v234
	v_mul_f32_e32 v12, v91, v121
	v_mul_f32_e32 v234, v90, v121
	v_mul_f32_e32 v16, v91, v153
	v_mul_f32_e32 v236, v90, v153
	v_mul_f32_e32 v24, v89, v154
	v_mov_b32_e32 v64, v27
	v_mul_f32_e32 v27, v91, v154
	v_mul_f32_e32 v238, v90, v154
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v52, off, off offset:84
	scratch_load_b32 v44, off, off offset:244
	scratch_load_b32 v55, off, off offset:52
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v32, v95, v120 :: v_dual_mul_f32 v99, v118, v153
	v_mul_f32_e32 v239, v94, v120
	v_mul_f32_e32 v57, v97, v120
	v_mul_f32_e32 v240, v96, v120
	v_mul_f32_e32 v58, v95, v121
	v_mul_f32_e32 v241, v94, v121
	v_mul_f32_e32 v59, v97, v121
	v_dual_mul_f32 v242, v96, v121 :: v_dual_mul_f32 v91, v119, v154
	v_mul_f32_e32 v88, v95, v153
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v92, v94, v153 :: v_dual_mul_f32 v247, v132, v120
	v_mul_f32_e32 v89, v97, v153
	v_dual_mul_f32 v93, v96, v153 :: v_dual_mul_f32 v84, v95, v154
	v_mul_f32_e32 v123, v130, v121
	v_dual_mul_f32 v86, v94, v154 :: v_dual_mul_f32 v127, v129, v121
	v_mul_f32_e32 v85, v97, v154
	v_mul_f32_e32 v87, v96, v154
	v_mul_f32_e32 v243, v117, v120
	v_dual_mul_f32 v244, v116, v120 :: v_dual_mul_f32 v113, v130, v153
	v_mul_f32_e32 v245, v119, v120
	v_dual_mul_f32 v246, v118, v120 :: v_dual_mul_f32 v109, v117, v121
	v_mul_f32_e32 v111, v116, v121
	v_dual_mul_f32 v110, v119, v121 :: v_dual_mul_f32 v61, v130, v154
	v_dual_mul_f32 v112, v118, v121 :: v_dual_mul_f32 v105, v129, v154
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v96, v117, v153 :: v_dual_mul_f32 v249, v138, v120
	v_mul_f32_e32 v98, v116, v153
	v_dual_mul_f32 v97, v119, v153 :: v_dual_mul_f32 v90, v117, v154
	v_mul_f32_e32 v251, v140, v120
	v_mul_f32_e32 v94, v116, v154
	v_mul_f32_e32 v95, v118, v154
	v_dual_mul_f32 v116, v130, v120 :: v_dual_mul_f32 v133, v137, v121
	v_mul_f32_e32 v117, v129, v120
	v_dual_mul_f32 v248, v131, v120 :: v_dual_mul_f32 v125, v138, v153
	v_mul_f32_e32 v124, v132, v121
	v_mul_f32_e32 v128, v131, v121
	v_mul_f32_e32 v118, v129, v153
	v_mul_f32_e32 v114, v132, v153
	v_dual_mul_f32 v119, v131, v153 :: v_dual_mul_f32 v104, v132, v154
	v_dual_mul_f32 v129, v137, v153 :: v_dual_mul_f32 v108, v131, v154
	v_mul_f32_e32 v250, v137, v120
	v_dual_mul_f32 v252, v139, v120 :: v_dual_mul_f32 v131, v138, v121
	v_mul_f32_e32 v132, v140, v121
	v_mul_f32_e32 v134, v139, v121
	v_mul_f32_e32 v126, v140, v153
	v_mul_f32_e32 v120, v137, v154
	v_mul_f32_e32 v137, v140, v154
	v_mov_b32_e32 v140, v180
	v_mov_b32_e32 v180, v184
	v_dual_mov_b32 v184, v185 :: v_dual_mov_b32 v185, v190
	v_mul_f32_e32 v130, v139, v153
	v_mul_f32_e32 v121, v139, v154
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	scratch_load_b32 v139, off, off offset:716 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v138, v138, v154
	v_dual_mov_b32 v190, v191 :: v_dual_mov_b32 v191, v196
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v196, off, off offset:152
	scratch_load_b64 v[153:154], off, off offset:304
	scratch_load_b32 v197, off, off offset:80
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v202, v105, v150
	v_fmac_f32_e32 v158, v121, v147
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v55, v238, v83
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v139, s18, v139
	s_waitcnt vmcnt(1)
	ds_store_b64 v139, v[153:154] offset:32768
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:36
	scratch_load_b32 v153, off, off offset:564
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v139, v212, v153
	scratch_store_b32 off, v139, off offset:36 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v212, off, off offset:280
	scratch_load_b32 v139, off, off offset:560
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v212, v43, v72
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v196, v155, v139
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v155, off, off offset:256
	scratch_load_b32 v139, off, off offset:572
	scratch_load_b32 v43, off, off offset:240
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v8, v236, v66 :: v_dual_fmac_f32 v155, v237, v80
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v190, v214, v139
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v214, off, off offset:276
	scratch_load_b32 v139, off, off offset:568
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v191, v213, v139
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v213, off, off offset:272
	scratch_load_b32 v139, off, off offset:252
	scratch_load_b32 v153, off, off offset:580
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v213, v45, v71
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v139, v19, v153
	scratch_load_b32 v19, off, off offset:576 ; 4-byte Folded Reload
	scratch_store_b32 off, v139, off offset:252 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v189, v188, v19
	scratch_load_b32 v19, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v188, v23 :: v_dual_fmac_f32 v185, v20, v19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:68
	scratch_load_b32 v19, off, off offset:584
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v139, v235, v164 :: v_dual_fmac_f32 v188, v22, v19
	scratch_load_b32 v19, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v180, v9, v19
	scratch_load_b32 v9, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v184, v157, v9 :: v_dual_mov_b32 v157, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:232
	scratch_load_b32 v14, off, off offset:604
	v_fmac_f32_e32 v157, v15, v174
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v9, v160, v14
	scratch_store_b32 off, v9, off offset:232 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:228
	scratch_load_b32 v14, off, off offset:600
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v9, v11, v14
	scratch_store_b32 off, v9, off offset:228 ; 4-byte Folded Spill
	scratch_load_b32 v9, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v255, v0, v9
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v0, off, off offset:608
	scratch_load_b32 v23, off, off offset:224
	scratch_load_b32 v20, off, off offset:172
	scratch_load_b32 v19, off, off offset:160
	scratch_load_b32 v15, off, off offset:88
	scratch_load_b32 v9, off, off offset:76
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v207, v231, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v173, off, off offset:148
	scratch_load_b32 v0, off, off offset:616
	v_dual_mov_b32 v231, v1 :: v_dual_fmac_f32 v140, v26, v103
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v173, v53, v0
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:40
	scratch_load_b32 v22, off, off offset:164
	scratch_load_b32 v103, off, off offset:96
	scratch_load_b32 v53, off, off offset:92
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v0, v216, v232
	v_mov_b32_e32 v232, v106
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v106, off, off offset:140
	scratch_load_b32 v174, off, off offset:60
	scratch_load_b32 v11, off, off offset:28
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v103, v224, v170 :: v_dual_mov_b32 v224, v31
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v106, v220, v101
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v220, v21 :: v_dual_fmac_f32 v11, v18, v211
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v216, off, off offset:288
	scratch_load_b32 v0, off, off offset:620
	scratch_store_b32 off, v11, off offset:28 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v101, off, off offset:136
	scratch_load_b32 v11, off, off offset:24
	scratch_load_b32 v153, off, off offset:28
	v_dual_fmac_f32 v52, v41, v169 :: v_dual_mov_b32 v41, v35
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v253, v215, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v215, off, off offset:284
	scratch_load_b32 v0, off, off offset:44
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v101, v13, v199
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v11, v48, v209
	scratch_load_b32 v48, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v0, v218, v168
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v218, off, off offset:296
	scratch_load_b32 v168, off, off offset:144
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v48, v34, v62
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	v_fmac_f32_e32 v197, v225, v167
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v225, v30 :: v_dual_fmac_f32 v168, v217, v230
	scratch_load_b32 v217, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v0, v234, v60
	scratch_store_b32 off, v11, off offset:24 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v160, off, off offset:24
	scratch_load_b32 v11, off, off offset:20
	scratch_load_b32 v60, off, off offset:56
	v_mov_b32_e32 v234, v10
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	v_fmac_f32_e32 v234, v186, v69
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v11, v2, v100 :: v_dual_fmac_f32 v0, v51, v175
	scratch_store_b32 off, v11, off offset:20 ; 4-byte Folded Spill
	scratch_load_b32 v2, off, off offset:20 ; 4-byte Folded Reload
	v_mov_b32_e32 v51, v46
	scratch_load_b32 v46, off, off offset:248 ; 4-byte Folded Reload
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:8
	scratch_load_b32 v154, off, off offset:12
	v_dual_mov_b32 v230, v107 :: v_dual_fmac_f32 v51, v38, v172
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v100, off, off offset:132
	scratch_load_b32 v107, off, off offset:16
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v0, v219, v177
	scratch_load_b32 v219, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v100, v12, v179
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:8
	scratch_load_b32 v0, off, off offset:4
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v181, v165
	scratch_load_b32 v165, off, off offset:112 ; 4-byte Folded Reload
	v_mov_b32_e32 v181, v50
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v175, off, off offset:128
	scratch_load_b32 v177, off, off offset:4
	scratch_load_b32 v0, off, off
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v165, v37, v171
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v171, off, off offset:124
	scratch_load_b32 v18, off, off offset:120
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v175, v49, v178
	v_mov_b32_e32 v49, v47
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:48
	scratch_load_b32 v47, off, off offset:216
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v0, v17, v166
	scratch_load_b32 v17, off, off offset:236 ; 4-byte Folded Reload
	v_fmac_f32_e32 v49, v33, v102
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v172, off, off offset:168
	scratch_load_b32 v10, off, off offset:108
	scratch_load_b32 v102, off, off offset:104
	scratch_load_b32 v62, off, off offset:100
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v141
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off
	scratch_load_b32 v11, off, off offset:64
	v_lshlrev_b16 v25.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 24, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v26.l, v25.h, v25.l
	v_and_b16 v25.l, 0xff, v141.h
	v_lshlrev_b16 v25.h, 8, v0.l
	v_lshrrev_b32_e32 v0, 8, v142
	scratch_load_b32 v141, off, off offset:268 ; 4-byte Folded Reload
	v_or_b16 v26.h, v25.l, v25.h
	v_lshlrev_b16 v25.l, 8, v0.l
	v_and_b16 v25.h, 0xff, v142.l
	v_lshrrev_b32_e32 v0, 24, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v50, v27, v82
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v27.l, v25.h, v25.l
	v_and_b16 v25.l, 0xff, v142.h
	v_lshlrev_b16 v25.h, 8, v0.l
	v_lshrrev_b32_e32 v0, 8, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v62, v223, v176 :: v_dual_mov_b32 v223, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v27.h, v25.l, v25.h
	v_lshlrev_b16 v25.l, 8, v0.l
	v_and_b16 v25.h, 0xff, v143.l
	v_lshrrev_b32_e32 v0, 24, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v31.l, v25.h, v25.l
	v_and_b16 v25.l, 0xff, v143.h
	v_lshlrev_b16 v25.h, 8, v0.l
	v_lshrrev_b32_e32 v0, 8, v144
	scratch_load_b32 v143, off, off offset:652 ; 4-byte Folded Reload
	v_or_b16 v31.h, v25.l, v25.h
	v_lshlrev_b16 v25.l, 8, v0.l
	v_and_b16 v25.h, 0xff, v144.l
	v_lshrrev_b32_e32 v0, 24, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v33.l, v25.h, v25.l
	v_and_b16 v25.l, 0xff, v144.h
	v_lshlrev_b16 v25.h, 8, v0.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v0, 8, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v33.h, v25.l, v25.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v25.l, 8, v0.l
	v_and_b16 v25.h, 0xff, v145.l
	v_lshrrev_b32_e32 v0, 24, v145
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v34.l, v25.h, v25.l
	v_and_b16 v25.l, 0xff, v145.h
	scratch_load_b32 v145, off, off offset:656 ; 4-byte Folded Reload
	v_lshlrev_b16 v25.h, 8, v0.l
	v_lshrrev_b32_e32 v0, 8, v146
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v60, v16, v162
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v16, off, off offset:220
	scratch_load_b32 v14, off, off offset:156
	scratch_load_b32 v12, off, off offset:72
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v34.h, v25.l, v25.h
	v_lshlrev_b16 v25.l, 8, v0.l
	v_and_b16 v25.h, 0xff, v146.l
	v_lshrrev_b32_e32 v0, 24, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v35.l, v25.h, v25.l
	v_and_b16 v25.l, 0xff, v146.h
	v_lshlrev_b16 v25.h, 8, v0.l
	v_lshrrev_b32_e32 v0, 8, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v35.h, v25.l, v25.h
	v_lshlrev_b16 v25.l, 8, v0.l
	v_and_b16 v25.h, 0xff, v148.l
	v_lshrrev_b32_e32 v0, 24, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v36.l, v25.h, v25.l
	v_and_b16 v25.l, 0xff, v148.h
	v_lshlrev_b16 v25.h, 8, v0.l
	v_lshrrev_b32_e32 v0, 8, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v36.h, v25.l, v25.h
	v_lshlrev_b16 v25.l, 8, v0.l
	v_and_b16 v25.h, 0xff, v149.l
	v_lshrrev_b32_e32 v0, 24, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v37.l, v25.h, v25.l
	v_and_b16 v25.l, 0xff, v149.h
	v_lshlrev_b16 v25.h, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v37.h, v25.l, v25.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v25, s46, v143
	ds_store_b16 v25, v26
	ds_store_b16_d16_hi v25, v26 offset:32
	ds_store_b16 v25, v27 offset:64
	ds_store_b16_d16_hi v25, v27 offset:96
	v_and_b16 v26.h, 0xff, v136.l
	v_and_b16 v27.h, 0xff, v135.l
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s46, v145
	ds_store_b16 v0, v33 offset:64
	ds_store_b16_d16_hi v0, v33 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v25, v34 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v0, v31
	ds_store_b16_d16_hi v0, v31 offset:32
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v25, v35 offset:16448
	ds_store_b16_d16_hi v25, v34 offset:16416
	ds_store_b16_d16_hi v25, v35 offset:16480
	ds_store_b16 v0, v36 offset:16384
	ds_store_b16_d16_hi v0, v36 offset:16416
	ds_store_b16 v0, v37 offset:16448
	ds_store_b16_d16_hi v0, v37 offset:16480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v136
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v31.h, 0xff, v151.l
	v_and_b16 v33.h, 0xff, v152.l
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v35, off, off offset:196
	scratch_load_b32 v36, off, off offset:200
	scratch_load_b32 v37, off, off offset:204
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v26.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 24, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_or_b16 v26.l, v26.h, v26.l
	v_and_b16 v26.h, 0xff, v136.h
	scratch_load_b32 v136, off, off offset:660 ; 4-byte Folded Reload
	v_lshlrev_b16 v27.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 8, v135
	v_or_b16 v26.h, v26.h, v27.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v27.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 24, v135
	v_or_b16 v27.l, v27.h, v27.l
	v_and_b16 v27.h, 0xff, v135.h
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b16 v31.l, 8, v0.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v0, 8, v151
	scratch_load_b32 v135, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v27.h, v27.h, v31.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v31.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 24, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v31.l, v31.h, v31.l
	v_and_b16 v31.h, 0xff, v151.h
	v_lshlrev_b16 v33.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 8, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v31.h, v31.h, v33.l
	v_lshlrev_b16 v33.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 24, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v33.l, v33.h, v33.l
	v_and_b16 v33.h, 0xff, v152.h
	v_lshlrev_b16 v34.l, 8, v0.l
	scratch_load_b32 v152, off, off offset:260 ; 4-byte Folded Reload
	v_or_b16 v33.h, v33.h, v34.l
	scratch_load_b32 v34, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s46, v136
	ds_store_b16 v0, v26
	ds_store_b16_d16_hi v0, v26 offset:32
	ds_store_b16 v0, v27 offset:64
	ds_store_b16_d16_hi v0, v27 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v0, v31 offset:16384
	ds_store_b16_d16_hi v0, v31 offset:16416
	ds_store_b16 v0, v33 offset:16448
	ds_store_b16_d16_hi v0, v33 offset:16480
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:188
	scratch_load_b32 v0, off, off offset:496
	v_mov_b32_e32 v186, v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v26.h, 0xff, v67.l
	v_and_b16 v27.h, 0xff, v81.l
	scratch_load_b32 v31, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v43, v239, v0
	scratch_load_b32 v0, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v46, v32, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:184
	scratch_load_b32 v0, off, off offset:500
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v214, v187, v70 :: v_dual_fmac_f32 v17, v240, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v0, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v44, v57, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:208
	scratch_load_b32 v0, off, off offset:504
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v204, v254, v74 :: v_dual_fmac_f32 v227, v244, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v0, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v186, v243, v0
	scratch_load_b32 v0, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v16, v246, v0
	scratch_load_b32 v0, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v194, v228, v77 :: v_dual_fmac_f32 v23, v245, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v0, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v224, v117, v0
	scratch_load_b32 v0, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v225, v116, v0
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v220, v248, v0
	scratch_load_b32 v0, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v228, v40 :: v_dual_fmac_f32 v223, v247, v0
	scratch_load_b32 v0, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v218, v250, v0
	scratch_load_b32 v0, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v156, v24, v79 :: v_dual_fmac_f32 v219, v249, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v216, v252, v0
	scratch_load_b32 v0, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v217, v251, v0
	scratch_load_b32 v0, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v47, v241, v0
	scratch_load_b32 v0, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v215, v58, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:212
	scratch_load_b32 v0, off, off offset:556
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v41, v242, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:32
	scratch_load_b32 v1, off, off offset:548
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v59, v1
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v67
	scratch_load_b32 v42, off, off offset:32 ; 4-byte Folded Reload
	v_lshlrev_b16 v26.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 24, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v26.l, v26.h, v26.l
	v_and_b16 v26.h, 0xff, v67.h
	v_lshlrev_b16 v27.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 8, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v26.h, v26.h, v27.l
	v_lshlrev_b16 v27.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 24, v81
	ds_store_b16 v25, v26 offset:384
	ds_store_b16_d16_hi v25, v26 offset:416
	v_or_b16 v27.l, v27.h, v27.l
	v_and_b16 v27.h, 0xff, v81.h
	v_lshlrev_b16 v28.l, 8, v0.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v0, 8, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v27.h, v27.h, v28.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v28.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 24, v122
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v25, v27 offset:448
	ds_store_b16_d16_hi v25, v27 offset:480
	v_mov_b32_e32 v27, v64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v28.l, v28.h, v28.l
	v_and_b16 v28.h, 0xff, v122.h
	v_lshlrev_b16 v29.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 8, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v28.h, v28.h, v29.l
	v_lshlrev_b16 v29.l, 8, v0.l
	v_lshrrev_b32_e32 v0, 24, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v29.l, v29.h, v29.l
	v_lshlrev_b16 v30.l, 8, v0.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v29.h, 0xff, v115.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v29.h, v29.h, v30.l
	scratch_load_b32 v30, off, off offset:176 ; 4-byte Folded Reload
	ds_store_b16 v25, v28 offset:16768
	ds_store_b16_d16_hi v25, v28 offset:16800
	ds_store_b16 v25, v29 offset:16832
	ds_store_b16_d16_hi v25, v29 offset:16864
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v38, v111, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:312
	scratch_load_b32 v142, off, off offset:264
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v39, v109, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v36, v112, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v37, v110, v0
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v34, v127, v0
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v35, v123, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v32, v128, v0
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v33, v124, v0
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v30, v133, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v31, v131, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v20, v134, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v27, v132, v0
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v226, v92, v0
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v192, v88, v0
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v22, v93, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v172, v89, v0
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b64 v[88:89], off, off offset:636
	scratch_load_b32 v89, off, off offset:644
	scratch_load_b32 v0, off, off offset:384
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v14, v98, v0
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v19, v96, v0
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v18, v99, v0
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v171, v97, v0
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v102, v118, v0
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v10, v113, v0
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v15, v119, v0
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v53, v114, v0
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v12, v129, v0
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v9, v125, v0
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v174, v130, v0
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v11, v126, v0
	scratch_load_b32 v0, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v6, v86, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v86, off, off offset:632
	scratch_load_b32 v0, off, off offset:424
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v7, v84, v0
	scratch_load_b32 v0, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v152, v87, v0
	scratch_load_b32 v0, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v3, v85, v0
	scratch_load_b32 v0, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v141, v94, v0
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v142, v90, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:648
	scratch_load_b32 v0, off, off offset:452
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v206, v95, v0
	scratch_load_b32 v0, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v210, v91, v0
	scratch_load_b32 v0, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v203, v61, v0
	scratch_load_b32 v0, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v195, v108, v0
	scratch_load_b32 v0, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v198, v104, v0
	scratch_load_b32 v0, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v163, v120, v0
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v182, v138, v0
	scratch_load_b32 v0, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v161, v137, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v144, off, off offset:724
	scratch_load_b32 v24, off, off offset:744
	scratch_load_b32 v143, off, off offset:44
	scratch_load_b32 v145, off, off offset:40
	scratch_load_b32 v181, off, off offset:36
	scratch_load_b32 v65, off, off offset:740
	v_dual_mov_b32 v146, v253 :: v_dual_mov_b32 v151, v255
	v_dual_mov_b32 v26, v89 :: v_dual_mov_b32 v45, v90
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v0, 4, v144
	v_and_b32_e32 v1, 8, v144
	s_waitcnt vmcnt(4)
	scratch_store_b32 off, v24, off offset:328 ; 4-byte Folded Spill
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v225, 0
	v_mov_b32_e32 v24, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	scratch_store_b32 off, v16, off offset:228 ; 4-byte Folded Spill
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v219, 0
	scratch_store_b32 off, v16, off offset:232 ; 4-byte Folded Spill
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v190, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v186, 0
	v_mov_b32_e32 v196, 0
	v_mov_b32_e32 v46, 0
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	scratch_store_b32 off, v24, off offset:252 ; 4-byte Folded Spill
.LBB0_8:                                ; %Flow1175
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v46, off offset:248
	scratch_store_b32 off, v44, off offset:244
	scratch_store_b32 off, v43, off offset:240
	scratch_store_b32 off, v17, off offset:236
	scratch_store_b32 off, v23, off offset:224
	scratch_store_b32 off, v16, off offset:220
	scratch_store_b32 off, v47, off offset:216
	scratch_store_b32 off, v42, off offset:32
	scratch_store_b32 off, v41, off offset:552
	scratch_store_b32 off, v39, off offset:212
	scratch_store_b32 off, v38, off offset:208
	scratch_store_b32 off, v37, off offset:204
	scratch_store_b32 off, v36, off offset:200
	scratch_store_b32 off, v35, off offset:196
	scratch_store_b32 off, v34, off offset:192
	scratch_store_b32 off, v33, off offset:188
	scratch_store_b32 off, v32, off offset:184
	scratch_store_b32 off, v31, off offset:180
	scratch_store_b32 off, v30, off offset:176
	scratch_store_b32 off, v27, off offset:524
	scratch_store_b32 off, v20, off offset:172
	scratch_store_b32 off, v226, off offset:512
	scratch_store_b32 off, v172, off offset:168
	scratch_store_b32 off, v22, off offset:164
	scratch_store_b32 off, v19, off offset:160
	scratch_store_b32 off, v14, off offset:156
	scratch_store_b32 off, v196, off offset:152
	scratch_store_b32 off, v191, off offset:480
	scratch_store_b32 off, v190, off offset:472
	scratch_store_b32 off, v185, off offset:460
	scratch_store_b32 off, v184, off offset:456
	scratch_store_b32 off, v180, off offset:452
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v207, off offset:448
	scratch_store_b32 off, v173, off offset:148
	scratch_store_b32 off, v208, off offset:440
	scratch_store_b32 off, v168, off offset:144
	scratch_store_b32 off, v230, off offset:432
	scratch_store_b32 off, v232, off offset:428
	scratch_store_b32 off, v153, off offset:28
	scratch_store_b32 off, v106, off offset:140
	scratch_store_b32 off, v160, off offset:24
	scratch_store_b32 off, v2, off offset:20
	scratch_store_b32 off, v101, off offset:136
	scratch_store_b32 off, v107, off offset:16
	scratch_store_b32 off, v100, off offset:132
	scratch_store_b32 off, v154, off offset:12
	scratch_store_b32 off, v21, off offset:8
	scratch_store_b32 off, v177, off offset:4
	scratch_store_b32 off, v175, off offset:128
	scratch_store_b32 off, v49, off offset:424
	scratch_store_b32 off, v51, off offset:420
	scratch_store_b32 off, v18, off offset:120
	scratch_store_b32 off, v171, off offset:124
	scratch_store_b32 off, v48, off offset:116
	scratch_store_b32 off, v165, off offset:112
	scratch_store_b32 off, v10, off offset:108
	scratch_store_b32 off, v102, off offset:104
	scratch_store_b32 off, v62, off offset:100
	scratch_store_b32 off, v103, off offset:96
	scratch_store_b32 off, v53, off offset:92
	scratch_store_b32 off, v15, off offset:88
	scratch_store_b32 off, v52, off offset:84
	scratch_store_b32 off, v197, off offset:80
	scratch_store_b32 off, v9, off offset:76
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v12, off offset:72
	scratch_store_b32 off, v13, off
	scratch_store_b32 off, v139, off offset:68
	scratch_store_b32 off, v11, off offset:64
	scratch_store_b32 off, v174, off offset:60
	scratch_store_b32 off, v60, off offset:56
	scratch_store_b32 off, v8, off offset:416
	scratch_store_b32 off, v7, off offset:404
	scratch_store_b32 off, v6, off offset:400
	scratch_store_b32 off, v5, off offset:388
	scratch_store_b32 off, v4, off offset:384
	scratch_store_b32 off, v3, off offset:380
	scratch_store_b32 off, v234, off offset:376
	scratch_store_b32 off, v55, off offset:52
	scratch_store_b32 off, v50, off offset:48
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v41, s49, v135
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v20, v41
	ds_load_u8_d16 v147, v41 offset:16
	ds_load_u8_d16 v136, v41 offset:32
	ds_load_u8_d16 v2, v41 offset:48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v18, s49, v26
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v35, s49, v45
	ds_load_u8_d16 v237, v41 offset:256
	ds_load_u8_d16 v238, v41 offset:320
	ds_load_u8_d16 v171, v41 offset:272
	ds_load_u8_d16 v172, v41 offset:336
	ds_load_u8_d16 v47, v41 offset:288
	ds_load_u8_d16 v42, v41 offset:352
	ds_load_u8_d16 v9, v41 offset:368
	ds_load_u8_d16 v10, v41 offset:304
	ds_load_u8_d16 v240, v41 offset:384
	ds_load_u8_d16 v241, v41 offset:448
	ds_load_u8_d16 v173, v41 offset:400
	ds_load_u8_d16 v174, v41 offset:464
	ds_load_u8_d16 v49, v41 offset:416
	ds_load_u8_d16 v51, v41 offset:480
	ds_load_u8_d16 v14, v41 offset:496
	ds_load_u8_d16 v15, v41 offset:432
	ds_load_u8_d16 v245, v41 offset:512
	ds_load_u8_d16 v247, v41 offset:576
	ds_load_u8_d16 v175, v41 offset:528
	ds_load_u8_d16 v176, v41 offset:592
	ds_load_u8_d16 v59, v41 offset:544
	ds_load_u8_d16 v60, v41 offset:608
	ds_load_u8_d16 v22, v41 offset:624
	ds_load_u8_d16 v23, v41 offset:560
	ds_load_u8_d16 v250, v41 offset:640
	ds_load_u8_d16 v252, v41 offset:704
	ds_load_u8_d16 v177, v41 offset:656
	ds_load_u8_d16 v178, v41 offset:720
	ds_load_u8_d16 v61, v41 offset:672
	ds_load_u8_d16 v62, v41 offset:736
	ds_load_u8_d16 v24, v41 offset:752
	ds_load_u8_d16 v25, v41 offset:688
	ds_load_u8_d16 v28, v41 offset:768
	ds_load_u8_d16 v29, v41 offset:832
	ds_load_u8_d16 v180, v41 offset:784
	ds_load_u8_d16 v185, v41 offset:848
	ds_load_u8_d16 v106, v41 offset:800
	ds_load_u8_d16 v107, v41 offset:864
	ds_load_u8_d16 v33, v41 offset:880
	ds_load_u8_d16 v34, v41 offset:816
	ds_load_u8_d16 v30, v41 offset:896
	ds_load_u8_d16 v3, v41 offset:960
	ds_load_u8_d16 v222, v41 offset:1024
	ds_load_u8_d16 v191, v41 offset:912
	ds_load_u8_d16 v197, v41 offset:976
	ds_load_u8_d16 v150, v41 offset:928
	ds_load_u8_d16 v162, v41 offset:992
	ds_load_u8_d16 v36, v41 offset:944
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v4, v41 offset:1728
	ds_load_u8_d16 v1, v41 offset:1792
	ds_load_u8_d16 v246, v41 offset:1680
	ds_load_u8_d16 v249, v41 offset:1744
	ds_load_u8_d16 v168, v41 offset:1696
	ds_load_u8_d16 v169, v41 offset:1760
	ds_load_u8_d16 v57, v41 offset:1776
	ds_load_u8_d16 v58, v41 offset:1712
	v_mov_b32_e32 v75, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v43, 0, 1, s2
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v43
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v154, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(56)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:332
	scratch_store_b32 off, v26, off offset:320
	ds_load_u8_d16 v54, v41 offset:64
	ds_load_u8_d16 v167, v41 offset:80
	ds_load_u8_d16 v17, v41 offset:96
	ds_load_u8_d16 v138, v41 offset:112
	ds_load_u8_d16 v199, v41 offset:128
	ds_load_u8_d16 v207, v41 offset:192
	ds_load_u8_d16 v13, v41 offset:144
	ds_load_u8_d16 v170, v41 offset:208
	ds_load_u8_d16 v39, v41 offset:160
	ds_load_u8_d16 v40, v41 offset:224
	ds_load_u8_d16 v187, v41 offset:240
	ds_load_u8_d16 v2, v41 offset:176
	ds_load_u8_d16 v236, v41 offset:1216
	ds_load_u8_d16 v239, v41 offset:1280
	ds_load_u8_d16 v190, v41 offset:1168
	ds_load_u8_d16 v196, v41 offset:1232
	ds_load_u8_d16 v55, v41 offset:1184
	ds_load_u8_d16 v56, v41 offset:1248
	ds_load_u8_d16 v16, v41 offset:1264
	ds_load_u8_d16 v21, v41 offset:1200
	ds_load_u8_d16 v242, v41 offset:1344
	ds_load_u8_d16 v243, v41 offset:1408
	ds_load_u8_d16 v208, v41 offset:1296
	ds_load_u8_d16 v209, v41 offset:1360
	ds_load_u8_d16 v63, v41 offset:1312
	ds_load_u8_d16 v64, v41 offset:1376
	ds_load_u8_d16 v26, v41 offset:1392
	ds_load_u8_d16 v27, v41 offset:1328
	ds_load_u8_d16 v244, v41 offset:1472
	ds_load_u8_d16 v248, v41 offset:1536
	ds_load_u8_d16 v211, v41 offset:1424
	ds_load_u8_d16 v221, v41 offset:1488
	ds_load_u8_d16 v100, v41 offset:1440
	ds_load_u8_d16 v101, v41 offset:1504
	ds_load_u8_d16 v31, v41 offset:1520
	ds_load_u8_d16 v32, v41 offset:1456
	ds_load_u8_d16 v253, v41 offset:1600
	ds_load_u8_d16 v251, v41 offset:1664
	ds_load_u8_d16 v230, v41 offset:1552
	ds_load_u8_d16 v232, v41 offset:1616
	ds_load_u8_d16 v164, v41 offset:1568
	ds_load_u8_d16 v165, v41 offset:1632
	ds_load_u8_d16 v37, v41 offset:1648
	ds_load_u8_d16 v38, v41 offset:1584
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v153, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v149, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v89, 0
	s_waitcnt lgkmcnt(32)
	scratch_store_b32 off, v2, off offset:336 ; 4-byte Folded Spill
	ds_load_u8_d16 v234, v41 offset:1088
	ds_load_u8_d16 v235, v41 offset:1152
	ds_load_u8_d16 v179, v41 offset:1040
	ds_load_u8_d16 v184, v41 offset:1104
	ds_load_u8_d16 v50, v41 offset:1056
	ds_load_u8_d16 v52, v41 offset:1120
	ds_load_u8_d16 v2, v41 offset:1136
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v43, 0
	s_mov_b32 s4, 0
	v_mov_b32_e32 v160, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v148, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v94, 0
	scratch_store_b32 off, v75, off offset:352 ; 4-byte Folded Spill
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v90, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:340 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v41 offset:1072
	v_mov_b32_e32 v88, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v75, off offset:348 ; 4-byte Folded Spill
	v_mov_b32_e32 v84, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:356 ; 4-byte Folded Spill
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x110, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v0, v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v7, v41 offset:1856
	ds_load_u8_d16 v2, v41 offset:1920
	ds_load_u8_d16 v254, v41 offset:1808
	ds_load_u8_d16 v255, v41 offset:1872
	ds_load_u8_d16 v0, v41 offset:1824
	ds_load_u8_d16 v19, v41 offset:1888
	ds_load_u8_d16 v102, v41 offset:1904
	ds_load_u8_d16 v103, v41 offset:1840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v44, v65, v5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v8, v41 offset:1984
	ds_load_u8_d16 v5, v41 offset:1936
	ds_load_u8_d16 v6, v41 offset:2000
	ds_load_u8_d16 v65, v41 offset:1952
	ds_load_u8_d16 v66, v41 offset:2016
	ds_load_u8_d16 v18, v18
	ds_load_u8_d16 v35, v35
	ds_load_u8_d16 v166, v41 offset:1968
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v41, 16, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v44, off offset:256
	scratch_store_b32 off, v45, off offset:324
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	scratch_store_b32 off, v41, off offset:260 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v41, off offset:344 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:312 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:316 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:292 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:296 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:300 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:304 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:284 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:288 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:276 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:280 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:264 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:268 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	scratch_store_b32 off, v41, off offset:272 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	v_perm_b32 v41, v28, v29, 0xc0c0004
	v_perm_b32 v43, v30, v3, 0xc0c0004
	v_perm_b32 v44, v245, v247, 0xc0c0004
	v_perm_b32 v45, v250, v252, 0xc0c0004
	v_perm_b32 v48, v191, v197, 0xc0c0004
	v_dual_mov_b32 v148, v143 :: v_dual_mov_b32 v99, v141
	v_lshl_or_b32 v46, v43, 16, v41
	v_perm_b32 v41, v237, v238, 0xc0c0004
	v_perm_b32 v43, v240, v241, 0xc0c0004
	v_lshl_or_b32 v45, v45, 16, v44
	v_mov_b16_e32 v11.l, v9.l
	v_dual_mov_b32 v160, v146 :: v_dual_mov_b32 v149, v145
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v44, v43, 16, v41
	v_perm_b32 v41, v20, v54, 0xc0c0004
	v_perm_b32 v43, v199, v207, 0xc0c0004
	v_mov_b32_e32 v146, v140
	v_perm_b32 v53, v175, v176, 0xc0c0004
	v_perm_b32 v67, v177, v178, 0xc0c0004
	s_mov_b32 s5, s4
	v_lshl_or_b32 v43, v43, 16, v41
	v_perm_b32 v41, v180, v185, 0xc0c0004
	s_mov_b32 s6, s4
	v_lshl_or_b32 v118, v67, 16, v53
	v_perm_b32 v53, v59, v60, 0xc0c0004
	v_perm_b32 v67, v61, v62, 0xc0c0004
	v_lshl_or_b32 v119, v48, 16, v41
	v_perm_b32 v41, v171, v172, 0xc0c0004
	v_perm_b32 v48, v173, v174, 0xc0c0004
	s_mov_b32 s7, s4
	v_lshl_or_b32 v134, v67, 16, v53
	v_perm_b32 v53, v23, v22, 0xc0c0004
	v_perm_b32 v67, v25, v24, 0xc0c0004
	v_lshl_or_b32 v117, v48, 16, v41
	v_perm_b32 v41, v147, v167, 0xc0c0004
	v_perm_b32 v48, v13, v170, 0xc0c0004
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_lshl_or_b32 v116, v48, 16, v41
	v_perm_b32 v41, v106, v107, 0xc0c0004
	v_perm_b32 v48, v150, v162, 0xc0c0004
	v_mov_b32_e32 v145, v152
	v_mov_b32_e32 v226, v224
	v_dual_mov_b32 v224, v220 :: v_dual_mov_b32 v105, v214
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v135, v48, 16, v41
	v_perm_b32 v41, v47, v42, 0xc0c0004
	v_perm_b32 v48, v49, v51, 0xc0c0004
	v_mov_b32_e32 v220, v218
	v_dual_mov_b32 v218, v216 :: v_dual_mov_b32 v183, v186
	v_mov_b32_e32 v216, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v133, v48, 16, v41
	v_perm_b32 v41, v136, v17, 0xc0c0004
	v_perm_b32 v48, v39, v40, 0xc0c0004
	v_dual_mov_b32 v192, v181 :: v_dual_mov_b32 v181, v151
	v_dual_mov_b32 v186, v227 :: v_dual_mov_b32 v227, v225
	v_lshl_or_b32 v132, v48, 16, v41
	v_perm_b32 v41, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v36, v18, 0xc0c0004
	v_mov_b32_e32 v225, v223
	v_mov_b16_e32 v12.l, v10.l
	v_mov_b32_e32 v223, v219
	v_mov_b32_e32 v219, v217
	v_lshl_or_b32 v143, v48, 16, v41
	v_perm_b32 v41, v10, v9, 0xc0c0004
	v_perm_b32 v48, v15, v14, 0xc0c0004
	scratch_load_b32 v9, off, off offset:336 ; 4-byte Folded Reload
	v_mov_b32_e32 v217, v215
	v_mov_b16_e64 v10.l, v187.l
	v_lshl_or_b32 v141, v48, 16, v41
	scratch_load_b32 v41, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v48, v9, v187, 0xc0c0004
	v_mov_b16_e64 v187.l, v136.l
	v_mov_b32_e32 v9, v144
	v_mov_b16_e64 v144.l, v138.l
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v41, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v48, 16, v41
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	scratch_load_b32 v41, off, off offset:256 ; 4-byte Folded Reload
	v_mov_b32_e32 v104, v142
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v142, v67, 16, v53
	v_dual_mov_b32 v48, v212 :: v_dual_mov_b32 v53, v213
	v_dual_mov_b32 v74, s11 :: v_dual_mov_b32 v73, s10
	v_dual_mov_b32 v72, s9 :: v_dual_mov_b32 v71, s8
	v_dual_mov_b32 v70, s7 :: v_dual_mov_b32 v69, s6
	v_dual_mov_b32 v68, s5 :: v_dual_mov_b32 v67, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s16, v41
	ds_load_b128 v[151:154], v41
	ds_load_b128 v[212:215], v41 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v41, v1, v7, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[151:154], v[43:46], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[212:215], v[43:46], v[67:74] neg_lo:[1,1,0]
	v_perm_b32 v43, v2, v8, 0xc0c0004
	v_perm_b32 v44, v248, v253, 0xc0c0004
	v_perm_b32 v45, v251, v4, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[91:98], v[151:154], v[116:119], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v46, v43, 16, v41
	v_perm_b32 v41, v239, v242, 0xc0c0004
	v_perm_b32 v43, v243, v244, 0xc0c0004
	v_lshl_or_b32 v45, v45, 16, v44
	v_wmma_i32_16x16x16_iu8 v[108:115], v[212:215], v[116:119], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[151:154], v[132:135], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v44, v43, 16, v41
	v_perm_b32 v41, v222, v234, 0xc0c0004
	v_perm_b32 v43, v235, v236, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[124:131], v[212:215], v[132:135], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[151:154], v[140:143], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v43, 16, v41
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	scratch_load_b32 v41, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[67:74], v[212:215], v[140:143], v[67:74] neg_lo:[1,1,0]
	v_dual_mov_b32 v215, v217 :: v_dual_mov_b32 v212, v48
	v_mov_b32_e32 v214, v105
	v_mov_b32_e32 v213, v53
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s16, v41
	ds_load_b128 v[140:143], v41
	ds_load_b128 v[151:154], v41 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v41, v254, v255, 0xc0c0004
	v_mov_b32_e32 v217, v219
	v_mov_b32_e32 v219, v223
	v_mov_b32_e32 v223, v225
	v_mov_b32_e32 v225, v227
	v_dual_mov_b32 v227, v186 :: v_dual_mov_b32 v186, v183
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[140:143], v[43:46], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[151:154], v[43:46], v[83:90] neg_lo:[1,1,0]
	v_perm_b32 v43, v5, v6, 0xc0c0004
	v_perm_b32 v44, v230, v232, 0xc0c0004
	v_perm_b32 v45, v246, v249, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v46, v43, 16, v41
	v_perm_b32 v41, v208, v209, 0xc0c0004
	v_perm_b32 v43, v211, v221, 0xc0c0004
	v_lshl_or_b32 v45, v45, 16, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v43, 16, v41
	v_perm_b32 v41, v179, v184, 0xc0c0004
	v_perm_b32 v43, v190, v196, 0xc0c0004
	v_lshl_or_b32 v43, v43, 16, v41
	v_perm_b32 v41, v0, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[140:143], v[43:46], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[151:154], v[43:46], v[108:115] neg_lo:[1,1,0]
	v_perm_b32 v43, v65, v66, 0xc0c0004
	v_perm_b32 v44, v164, v165, 0xc0c0004
	v_perm_b32 v45, v168, v169, 0xc0c0004
	v_cvt_f32_i32_e32 v183, v98
	v_cvt_f32_i32_e32 v112, v112
	v_lshl_or_b32 v46, v43, 16, v41
	v_perm_b32 v41, v63, v64, 0xc0c0004
	v_perm_b32 v43, v100, v101, 0xc0c0004
	v_lshl_or_b32 v45, v45, 16, v44
	v_cvt_f32_i32_e32 v113, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v43, 16, v41
	v_perm_b32 v41, v50, v52, 0xc0c0004
	v_perm_b32 v43, v55, v56, 0xc0c0004
	v_lshl_or_b32 v43, v43, 16, v41
	v_perm_b32 v41, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[116:123], v[140:143], v[43:46], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[151:154], v[43:46], v[124:131] neg_lo:[1,1,0]
	v_perm_b32 v43, v166, v35, 0xc0c0004
	v_perm_b32 v44, v38, v37, 0xc0c0004
	v_perm_b32 v45, v58, v57, 0xc0c0004
	v_cvt_f32_i32_e32 v105, v119
	v_cvt_f32_i32_e32 v98, v123
	v_lshl_or_b32 v46, v43, 16, v41
	v_perm_b32 v41, v27, v26, 0xc0c0004
	v_perm_b32 v43, v32, v31, 0xc0c0004
	v_lshl_or_b32 v45, v45, 16, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v44, v43, 16, v41
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:340
	scratch_load_b32 v43, off, off offset:356
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	v_perm_b32 v43, v21, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v43, v43, 16, v41
	v_cvt_f32_i32_e32 v41, v83
	v_wmma_i32_16x16x16_iu8 v[132:139], v[140:143], v[43:46], v[132:139] neg_lo:[1,1,0]
	scratch_store_b32 off, v41, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v84
	v_wmma_i32_16x16x16_iu8 v[67:74], v[151:154], v[43:46], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v43, v97
	v_dual_mov_b32 v143, v148 :: v_dual_mov_b32 v140, v146
	scratch_store_b32 off, v41, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v85
	v_cvt_f32_i32_e32 v46, v67
	v_cvt_f32_i32_e32 v67, v73
	v_mov_b32_e32 v146, v160
	v_mov_b32_e32 v142, v104
	scratch_store_b32 off, v41, off offset:300 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v86
	scratch_store_b32 off, v67, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v74
	v_dual_mov_b32 v141, v99 :: v_dual_mov_b32 v152, v145
	scratch_store_b32 off, v41, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v87
	v_cvt_f32_i32_e32 v87, v135
	scratch_load_b32 v135, off, off offset:624 ; 4-byte Folded Reload
	v_mov_b32_e32 v151, v181
	v_mov_b32_e32 v181, v192
	scratch_store_b32 off, v41, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v88
	v_mov_b32_e32 v192, v216
	v_mov_b32_e32 v216, v218
	v_mov_b32_e32 v218, v220
	v_mov_b32_e32 v220, v224
	scratch_store_b32 off, v41, off offset:296 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v89
	v_dual_mov_b32 v224, v226 :: v_dual_mov_b32 v145, v149
	v_cvt_f32_i32_e32 v226, v95
	v_cvt_f32_i32_e32 v154, v108
	scratch_store_b32 off, v41, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v90
	v_cvt_f32_i32_e32 v160, v109
	v_cvt_f32_i32_e32 v153, v111
	v_cvt_f32_i32_e32 v111, v115
	v_cvt_f32_i32_e32 v108, v116
	scratch_store_b32 off, v41, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v91
	v_cvt_f32_i32_e32 v109, v117
	v_cvt_f32_i32_e32 v104, v118
	v_cvt_f32_i32_e32 v148, v120
	v_cvt_f32_i32_e32 v149, v121
	scratch_store_b32 off, v41, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v92
	v_cvt_f32_i32_e32 v99, v122
	v_cvt_f32_i32_e32 v97, v125
	v_cvt_f32_i32_e32 v95, v127
	v_cvt_f32_i32_e32 v92, v128
	scratch_store_b32 off, v41, off offset:280 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v93
	v_cvt_f32_i32_e32 v93, v129
	v_cvt_f32_i32_e32 v90, v130
	v_cvt_f32_i32_e32 v91, v131
	v_cvt_f32_i32_e32 v88, v132
	scratch_store_b32 off, v41, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v94
	v_cvt_f32_i32_e32 v94, v126
	v_cvt_f32_i32_e32 v89, v133
	v_cvt_f32_i32_e32 v86, v134
	v_cvt_f32_i32_e32 v84, v136
	scratch_store_b32 off, v41, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v96
	v_cvt_f32_i32_e32 v96, v124
	v_mov_b16_e64 v136.l, v187.l
	v_mov_b16_e64 v187.l, v10.l
	v_mov_b16_e32 v10.l, v12.l
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v41, off offset:264
	scratch_store_b32 off, v67, off offset:348
	v_cvt_f32_i32_e32 v41, v110
	v_cvt_f32_i32_e32 v110, v114
	v_cvt_f32_i32_e32 v85, v137
	v_cvt_f32_i32_e32 v53, v138
	v_mov_b16_e64 v138.l, v144.l
	v_mov_b32_e32 v137, v41
	v_mov_b32_e32 v144, v9
	v_mov_b16_e32 v9.l, v11.l
	v_cvt_f32_i32_e32 v83, v139
	v_mov_b32_e32 v139, v43
	v_cvt_f32_i32_e32 v48, v68
	v_cvt_f32_i32_e32 v44, v69
	v_cvt_f32_i32_e32 v45, v70
	v_cvt_f32_i32_e32 v41, v71
	v_cvt_f32_i32_e32 v43, v72
	v_cvt_f32_i32_e32 v71, v77
	v_cvt_f32_i32_e32 v72, v78
	v_cvt_f32_i32_e32 v69, v79
	v_cvt_f32_i32_e32 v70, v80
	v_cvt_f32_i32_e32 v67, v81
	v_cvt_f32_i32_e32 v68, v82
	v_cvt_f32_i32_e32 v73, v75
	v_cvt_f32_i32_e32 v74, v76
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v181, off offset:36
	scratch_store_b32 off, v151, off offset:936
	scratch_store_b32 off, v146, off offset:932
	scratch_store_b32 off, v145, off offset:40
	scratch_store_b32 off, v143, off offset:44
	scratch_store_b32 off, v74, off offset:928
	scratch_store_b32 off, v73, off offset:924
	scratch_store_b32 off, v72, off offset:920
	scratch_store_b32 off, v71, off offset:916
	scratch_store_b32 off, v70, off offset:756
	scratch_store_b32 off, v69, off offset:752
	scratch_store_b32 off, v68, off offset:748
	scratch_store_b32 off, v67, off offset:744
	scratch_store_b32 off, v183, off offset:724
	scratch_store_b32 off, v160, off offset:716
	scratch_store_b32 off, v154, off offset:712
	scratch_store_b32 off, v153, off offset:708
	scratch_store_b32 off, v113, off offset:676
	scratch_store_b32 off, v112, off offset:672
	scratch_store_b32 off, v111, off offset:668
	scratch_store_b32 off, v110, off offset:664
	scratch_store_b32 off, v109, off offset:660
	scratch_store_b32 off, v108, off offset:656
	scratch_store_b32 off, v105, off offset:652
	scratch_store_b32 off, v104, off offset:648
	scratch_store_b32 off, v99, off offset:632
	scratch_store_b32 off, v98, off offset:620
	scratch_store_b32 off, v97, off offset:616
	scratch_store_b32 off, v96, off offset:612
	scratch_store_b32 off, v95, off offset:608
	scratch_store_b32 off, v94, off offset:604
	scratch_store_b32 off, v93, off offset:600
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v92, off offset:596
	scratch_store_b32 off, v91, off offset:592
	scratch_store_b32 off, v90, off offset:588
	scratch_store_b32 off, v89, off offset:540
	scratch_store_b32 off, v88, off offset:536
	scratch_store_b32 off, v87, off offset:520
	scratch_store_b32 off, v86, off offset:516
	scratch_store_b32 off, v85, off offset:508
	scratch_store_b32 off, v84, off offset:504
	scratch_store_b32 off, v83, off offset:500
	scratch_store_b32 off, v53, off offset:496
	scratch_store_b32 off, v48, off offset:492
	scratch_store_b32 off, v46, off offset:488
	scratch_store_b32 off, v45, off offset:412
	scratch_store_b32 off, v44, off offset:408
	scratch_store_b32 off, v43, off offset:396
	scratch_store_b32 off, v41, off offset:392
	scratch_load_b32 v183, off, off offset:628 ; 4-byte Folded Reload
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v43, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v41, off, off offset:260
	scratch_load_b32 v11, off, off offset:332
	scratch_load_b32 v12, off, off offset:336
	scratch_load_b32 v43, off, off offset:256
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v28, v28, v29, 0xc0c0004
	v_perm_b32 v3, v30, v3, 0xc0c0004
	v_perm_b32 v13, v13, v170, 0xc0c0004
	v_perm_b32 v29, v245, v247, 0xc0c0004
	v_perm_b32 v30, v250, v252, 0xc0c0004
	s_mov_b32 s5, s4
	v_lshl_or_b32 v94, v3, 16, v28
	v_perm_b32 v3, v20, v54, 0xc0c0004
	v_perm_b32 v20, v199, v207, 0xc0c0004
	v_perm_b32 v28, v235, v236, 0xc0c0004
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	v_lshl_or_b32 v91, v20, 16, v3
	v_perm_b32 v20, v222, v234, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_perm_b32 v53, v240, v241, 0xc0c0004
	v_lshl_or_b32 v95, v28, 16, v20
	v_perm_b32 v20, v147, v167, 0xc0c0004
	v_lshl_or_b32 v93, v30, 16, v29
	v_perm_b32 v28, v230, v232, 0xc0c0004
	v_perm_b32 v29, v246, v249, 0xc0c0004
	v_perm_b32 v17, v136, v17, 0xc0c0004
	v_lshl_or_b32 v108, v13, 16, v20
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v13, v254, v255, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v5, v6, 0xc0c0004
	v_perm_b32 v39, v39, v40, 0xc0c0004
	v_perm_b32 v30, v208, v209, 0xc0c0004
	v_lshl_or_b32 v126, v29, 16, v28
	v_perm_b32 v28, v59, v60, 0xc0c0004
	v_lshl_or_b32 v127, v20, 16, v13
	v_perm_b32 v13, v106, v107, 0xc0c0004
	v_perm_b32 v20, v150, v162, 0xc0c0004
	v_perm_b32 v29, v61, v62, 0xc0c0004
	v_lshl_or_b32 v128, v39, 16, v17
	v_perm_b32 v0, v0, v19, 0xc0c0004
	v_perm_b32 v17, v164, v165, 0xc0c0004
	v_lshl_or_b32 v131, v20, 16, v13
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v13, v65, v66, 0xc0c0004
	v_perm_b32 v19, v168, v169, 0xc0c0004
	v_lshl_or_b32 v130, v29, 16, v28
	v_perm_b32 v29, v50, v52, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v52, v13, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v36, v18, 0xc0c0004
	v_perm_b32 v18, v25, v24, 0xc0c0004
	v_perm_b32 v10, v15, v14, 0xc0c0004
	v_perm_b32 v1, v1, v7, 0xc0c0004
	v_perm_b32 v2, v2, v8, 0xc0c0004
	v_perm_b32 v3, v248, v253, 0xc0c0004
	v_perm_b32 v4, v251, v4, 0xc0c0004
	v_perm_b32 v7, v239, v242, 0xc0c0004
	v_perm_b32 v8, v243, v244, 0xc0c0004
	v_lshl_or_b32 v98, v2, 16, v1
	v_perm_b32 v1, v180, v185, 0xc0c0004
	v_lshl_or_b32 v97, v4, 16, v3
	v_perm_b32 v2, v191, v197, 0xc0c0004
	v_lshl_or_b32 v96, v8, 16, v7
	v_perm_b32 v3, v175, v176, 0xc0c0004
	v_perm_b32 v4, v177, v178, 0xc0c0004
	v_perm_b32 v7, v171, v172, 0xc0c0004
	v_perm_b32 v8, v173, v174, 0xc0c0004
	v_perm_b32 v20, v63, v64, 0xc0c0004
	v_perm_b32 v28, v100, v101, 0xc0c0004
	v_perm_b32 v0, v34, v33, 0xc0c0004
	v_lshl_or_b32 v111, v2, 16, v1
	v_lshl_or_b32 v110, v4, 16, v3
	v_lshl_or_b32 v109, v8, 16, v7
	v_lshl_or_b32 v50, v28, 16, v20
	v_lshl_or_b32 v20, v13, 16, v0
	v_perm_b32 v0, v103, v102, 0xc0c0004
	v_perm_b32 v25, v58, v57, 0xc0c0004
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_perm_b32 v27, v32, v31, 0xc0c0004
	v_perm_b32 v21, v21, v16, 0xc0c0004
	v_dual_mov_b32 v74, s11 :: v_dual_mov_b32 v73, s10
	v_dual_mov_b32 v72, s9 :: v_dual_mov_b32 v71, s8
	v_dual_mov_b32 v70, s7 :: v_dual_mov_b32 v69, s6
	v_dual_mov_b32 v68, s5 :: v_dual_mov_b32 v67, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v41, s14, v41
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt vmcnt(2)
	v_perm_b32 v11, v11, v138, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v12, v12, v187, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s14, v43
	ds_load_b128 v[43:46], v41 offset:4096
	ds_load_b128 v[112:115], v41
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v41, v237, v238, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[116:119], v48 offset:4096
	ds_load_b128 v[120:123], v48
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v48, v179, v184, 0xc0c0004
	v_lshl_or_b32 v92, v53, 16, v41
	v_perm_b32 v41, v211, v221, 0xc0c0004
	v_perm_b32 v53, v190, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v125, v41, 16, v30
	v_perm_b32 v41, v49, v51, 0xc0c0004
	v_lshl_or_b32 v51, v19, 16, v17
	v_perm_b32 v17, v23, v22, 0xc0c0004
	v_perm_b32 v30, v47, v42, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v22, v166, v35, 0xc0c0004
	v_perm_b32 v23, v38, v37, 0xc0c0004
	v_lshl_or_b32 v124, v53, 16, v48
	v_lshl_or_b32 v19, v18, 16, v17
	v_lshl_or_b32 v18, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:340
	scratch_load_b32 v10, off, off offset:356
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[120:123], v[91:94], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[116:119], v[91:94], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v129, v41, 16, v30
	v_perm_b32 v30, v55, v56, 0xc0c0004
	v_lshl_or_b32 v17, v12, 16, v11
	v_wmma_i32_16x16x16_iu8 v[1:8], v[120:123], v[108:111], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[112:115], v[95:98], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[43:46], v[95:98], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[116:119], v[108:111], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[120:123], v[128:131], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v30, 16, v29
	v_wmma_i32_16x16x16_iu8 v[104:111], v[116:119], v[128:131], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v22, 16, v0
	v_lshl_or_b32 v23, v25, 16, v23
	v_lshl_or_b32 v22, v27, 16, v26
	v_wmma_i32_16x16x16_iu8 v[1:8], v[112:115], v[124:127], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[43:46], v[124:127], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[112:115], v[49:52], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[43:46], v[49:52], v[104:111] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v154, v77
	v_cvt_f32_i32_e32 v160, v78
	v_cvt_f32_i32_e32 v134, v79
	v_cvt_f32_i32_e32 v153, v80
	v_cvt_f32_i32_e32 v132, v81
	v_cvt_f32_i32_e32 v133, v82
	v_cvt_f32_i32_e32 v130, v83
	v_cvt_f32_i32_e32 v131, v84
	v_cvt_f32_i32_e32 v129, v85
	v_cvt_f32_i32_e32 v181, v86
	v_cvt_f32_i32_e32 v127, v87
	v_cvt_f32_i32_e32 v128, v88
	v_cvt_f32_i32_e32 v125, v89
	v_cvt_f32_i32_e32 v126, v90
	v_cvt_f32_i32_e32 v124, v2
	v_cvt_f32_i32_e32 v99, v95
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v95, v59
	v_cvt_f32_i32_e32 v146, v61
	v_cvt_f32_i32_e32 v151, v62
	v_cvt_f32_i32_e32 v143, v63
	v_cvt_f32_i32_e32 v145, v64
	v_cvt_f32_i32_e32 v89, v106
	v_cvt_f32_i32_e32 v90, v107
	v_cvt_f32_i32_e32 v87, v108
	v_cvt_f32_i32_e32 v88, v109
	v_cvt_f32_i32_e32 v85, v110
	v_cvt_f32_i32_e32 v86, v111
	v_cvt_f32_i32_e32 v0, v75
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_perm_b32 v28, v10, v9, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[120:123], v[17:20], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[116:119], v[17:20], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v123, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v21, v21, 16, v28
	v_cvt_f32_i32_e32 v121, v3
	v_cvt_f32_i32_e32 v122, v4
	v_cvt_f32_i32_e32 v119, v5
	v_cvt_f32_i32_e32 v120, v6
	v_wmma_i32_16x16x16_iu8 v[9:16], v[112:115], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[43:46], v[21:24], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v117, v7
	v_cvt_f32_i32_e32 v118, v8
	v_cvt_f32_i32_e32 v115, v91
	v_cvt_f32_i32_e32 v116, v92
	v_cvt_f32_i32_e32 v113, v93
	v_cvt_f32_i32_e32 v114, v94
	v_cvt_f32_i32_e32 v112, v96
	v_cvt_f32_i32_e32 v96, v60
	v_cvt_f32_i32_e32 v93, v65
	v_cvt_f32_i32_e32 v94, v66
	v_cvt_f32_i32_e32 v91, v104
	v_cvt_f32_i32_e32 v92, v105
	v_cvt_f32_i32_e32 v83, v9
	v_cvt_f32_i32_e32 v84, v10
	v_cvt_f32_i32_e32 v81, v11
	v_cvt_f32_i32_e32 v82, v12
	v_cvt_f32_i32_e32 v79, v13
	v_cvt_f32_i32_e32 v80, v14
	v_cvt_f32_i32_e32 v77, v15
	v_cvt_f32_i32_e32 v78, v16
	v_cvt_f32_i32_e32 v53, v67
	v_cvt_f32_i32_e32 v67, v68
	v_cvt_f32_i32_e32 v46, v69
	v_cvt_f32_i32_e32 v48, v70
	v_cvt_f32_i32_e32 v44, v71
	v_cvt_f32_i32_e32 v45, v72
	v_cvt_f32_i32_e32 v41, v73
	v_cvt_f32_i32_e32 v43, v74
	v_cvt_f32_i32_e32 v68, v76
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s30, 31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(14)
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v2, off, off offset:328
	scratch_load_b32 v3, off, off offset:736
	scratch_load_b32 v4, off, off offset:732
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 26
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v68, off offset:1080
	scratch_store_b32 off, v145, off offset:1076
	scratch_store_b32 off, v143, off offset:1072
	scratch_store_b32 off, v160, off offset:1068
	scratch_store_b32 off, v154, off offset:1060
	scratch_store_b32 off, v153, off offset:1056
	scratch_store_b32 off, v134, off offset:1052
	scratch_store_b32 off, v133, off offset:1048
	scratch_store_b32 off, v132, off offset:1044
	scratch_store_b32 off, v131, off offset:1040
	scratch_store_b32 off, v130, off offset:1036
	scratch_store_b32 off, v129, off offset:1032
	scratch_store_b32 off, v128, off offset:1028
	scratch_store_b32 off, v127, off offset:1024
	scratch_store_b32 off, v126, off offset:1020
	scratch_store_b32 off, v125, off offset:1016
	scratch_store_b32 off, v124, off offset:1012
	scratch_store_b32 off, v123, off offset:1008
	scratch_store_b32 off, v122, off offset:1004
	scratch_store_b32 off, v121, off offset:1000
	scratch_store_b32 off, v120, off offset:996
	scratch_store_b32 off, v119, off offset:988
	scratch_store_b32 off, v118, off offset:984
	scratch_store_b32 off, v117, off offset:980
	scratch_store_b32 off, v116, off offset:976
	scratch_store_b32 off, v115, off offset:972
	scratch_store_b32 off, v114, off offset:968
	scratch_store_b32 off, v113, off offset:964
	scratch_store_b32 off, v112, off offset:960
	scratch_store_b32 off, v99, off offset:956
	scratch_store_b32 off, v98, off offset:952
	scratch_store_b32 off, v97, off offset:948
	s_clause 0x1a                           ; 108-byte Folded Spill
	scratch_store_b32 off, v96, off offset:944
	scratch_store_b32 off, v95, off offset:940
	scratch_store_b32 off, v94, off offset:796
	scratch_store_b32 off, v93, off offset:792
	scratch_store_b32 off, v92, off offset:788
	scratch_store_b32 off, v91, off offset:784
	scratch_store_b32 off, v90, off offset:780
	scratch_store_b32 off, v89, off offset:776
	scratch_store_b32 off, v88, off offset:772
	scratch_store_b32 off, v87, off offset:768
	scratch_store_b32 off, v86, off offset:764
	scratch_store_b32 off, v85, off offset:760
	scratch_store_b32 off, v149, off offset:644
	scratch_store_b32 off, v148, off offset:636
	scratch_store_b32 off, v84, off offset:584
	scratch_store_b32 off, v83, off offset:580
	scratch_store_b32 off, v82, off offset:576
	scratch_store_b32 off, v81, off offset:572
	scratch_store_b32 off, v80, off offset:568
	scratch_store_b32 off, v79, off offset:564
	scratch_store_b32 off, v78, off offset:560
	scratch_store_b32 off, v77, off offset:556
	scratch_store_b32 off, v67, off offset:548
	scratch_store_b32 off, v45, off offset:484
	scratch_store_b32 off, v44, off offset:476
	scratch_store_b32 off, v43, off offset:444
	scratch_store_b32 off, v41, off offset:436
	s_add_i32 s0, s30, s0
	s_mov_b32 s15, 0x31027000
	s_ashr_i32 s0, s0, 6
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(11)
	v_add_lshl_u32 v0, v233, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v145, v183 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s0, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(5)
	v_add_lshl_u32 v6, v231, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v1, v183, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v5, v229, s0, 1
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	s_mov_b32 s31, s15
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_and_b32 s29, s29, 0xffff
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	v_add3_u32 v15, s33, s27, v144
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v9, s47, v135
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v129, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 426 31 is_stmt 0              ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v7, v15, s4, 1
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v125, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v154, 0
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v89, 0
	s_mov_b32 s4, 0
	v_mov_b32_e32 v160, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v197, 0
	v_mov_b32_e32 v164, 0
	v_mov_b32_e32 v126, 0
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v2, 32, v2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(2)
	v_add3_u32 v2, 0, v4, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v4, v228, s0, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v3, 28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v55, v2, v3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v2, 0x80000000, v4 :: v_dual_cndmask_b32 v3, 0x80000000, v5
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v0, off offset:1084 ; 4-byte Folded Spill
	buffer_load_u16 v0, v2, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v55, v1 offset:36864
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1064 ; 4-byte Folded Spill
	buffer_load_u16 v0, v3, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:992 ; 4-byte Folded Spill
	buffer_load_u16 v0, v4, s[12:15], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v196, 0, v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v0, v5, s[28:31], 0 offen
	v_mov_b32_e32 v75, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[29:32], v196 offset:36864
	ds_load_b128 v[25:28], v196 offset:36880
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s47, v1
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s47, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v1, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v196 offset:37376
	ds_load_b128 v[1:4], v196 offset:37392
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v55, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v24, v9
	ds_load_u8_d16 v171, v9 offset:16
	ds_load_u8_d16 v0, v9 offset:32
	ds_load_u8_d16 v243, v9 offset:1984
	ds_load_u8_d16 v176, v9 offset:1936
	ds_load_u8_d16 v246, v9 offset:2000
	ds_load_u8_d16 v167, v9 offset:1952
	ds_load_u8_d16 v168, v9 offset:2016
	ds_load_u8_d16 v10, v10
	s_waitcnt lgkmcnt(6)
	scratch_store_b32 off, v0, off offset:1152 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v10, off offset:1248 ; 4-byte Folded Spill
	ds_load_u8_d16 v187, v9 offset:48
	ds_load_u8_d16 v45, v9 offset:64
	ds_load_u8_d16 v170, v9 offset:80
	ds_load_u8_d16 v0, v9 offset:96
	ds_load_u8_d16 v10, v11
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:1156 ; 4-byte Folded Spill
	ds_load_u8_d16 v245, v9 offset:112
	ds_load_u8_d16 v22, v9 offset:128
	ds_load_u8_d16 v23, v9 offset:192
	ds_load_u8_d16 v169, v9 offset:144
	ds_load_u8_d16 v172, v9 offset:208
	ds_load_u8_d16 v0, v9 offset:160
	s_waitcnt lgkmcnt(6)
	scratch_store_b32 off, v10, off offset:1176 ; 4-byte Folded Spill
	v_mov_b32_e32 v10, 0
	scratch_store_b32 off, v10, off offset:356 ; 4-byte Folded Spill
	v_mov_b32_e32 v10, 0
	scratch_store_b32 off, v10, off offset:372 ; 4-byte Folded Spill
	v_mov_b32_e32 v10, 0
	scratch_store_b32 off, v10, off offset:360 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1160 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:224
	v_mov_b32_e32 v10, 0
	scratch_store_b32 off, v10, off offset:364 ; 4-byte Folded Spill
	v_mov_b32_e32 v10, 0
	scratch_store_b32 off, v10, off offset:368 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1164 ; 4-byte Folded Spill
	ds_load_u8_d16 v247, v9 offset:240
	ds_load_u8_d16 v248, v9 offset:176
	ds_load_u8_d16 v251, v9 offset:256
	ds_load_u8_d16 v207, v9 offset:320
	ds_load_u8_d16 v173, v9 offset:272
	ds_load_u8_d16 v174, v9 offset:336
	ds_load_u8_d16 v0, v9 offset:288
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1188 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1196 ; 4-byte Folded Spill
	ds_load_u8_d16 v250, v9 offset:368
	ds_load_u8_d16 v136, v9 offset:304
	ds_load_u8_d16 v208, v9 offset:384
	ds_load_u8_d16 v211, v9 offset:448
	ds_load_u8_d16 v175, v9 offset:400
	ds_load_u8_d16 v177, v9 offset:464
	ds_load_u8_d16 v0, v9 offset:416
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1204 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:480
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1212 ; 4-byte Folded Spill
	ds_load_u8_d16 v252, v9 offset:496
	ds_load_u8_d16 v254, v9 offset:432
	ds_load_u8_d16 v230, v9 offset:512
	ds_load_u8_d16 v234, v9 offset:576
	ds_load_u8_d16 v178, v9 offset:528
	ds_load_u8_d16 v18, v9 offset:592
	ds_load_u8_d16 v0, v9 offset:544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1216 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1224 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:624
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1092 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:560
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1096 ; 4-byte Folded Spill
	ds_load_u8_d16 v235, v9 offset:640
	ds_load_u8_d16 v237, v9 offset:704
	ds_load_u8_d16 v56, v9 offset:656
	ds_load_u8_d16 v19, v9 offset:720
	ds_load_u8_d16 v0, v9 offset:672
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1236 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1244 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:752
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1104 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:688
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1112 ; 4-byte Folded Spill
	ds_load_u8_d16 v241, v9 offset:768
	ds_load_u8_d16 v242, v9 offset:832
	ds_load_u8_d16 v180, v9 offset:784
	ds_load_u8_d16 v0, v9 offset:848
	ds_load_u8_d16 v13, v9 offset:800
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1252 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v9 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1260 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v9 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1124 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v9 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1128 ; 4-byte Folded Spill
	ds_load_u8_d16 v244, v9 offset:896
	ds_load_u8_d16 v165, v9 offset:960
	ds_load_u8_d16 v59, v9 offset:1024
	ds_load_u8_d16 v190, v9 offset:912
	ds_load_u8_d16 v191, v9 offset:976
	ds_load_u8_d16 v17, v9 offset:928
	ds_load_u8_d16 v42, v9 offset:992
	ds_load_u8_d16 v13, v9 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1140 ; 4-byte Folded Spill
	ds_load_u8_d16 v60, v9 offset:1088
	ds_load_u8_d16 v61, v9 offset:1152
	ds_load_u8_d16 v20, v9 offset:1040
	ds_load_u8_d16 v179, v9 offset:1104
	ds_load_u8_d16 v13, v9 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1184 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v9 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1192 ; 4-byte Folded Spill
	ds_load_u8_d16 v138, v9 offset:1136
	ds_load_u8_d16 v253, v9 offset:1072
	ds_load_u8_d16 v64, v9 offset:1216
	ds_load_u8_d16 v249, v9 offset:1280
	ds_load_u8_d16 v184, v9 offset:1168
	ds_load_u8_d16 v66, v9 offset:1232
	ds_load_u8_d16 v13, v9 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1200 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v9 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1208 ; 4-byte Folded Spill
	ds_load_u8_d16 v255, v9 offset:1264
	ds_load_u8_d16 v13, v9 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1088 ; 4-byte Folded Spill
	ds_load_u8_d16 v14, v9 offset:1344
	ds_load_u8_d16 v199, v9 offset:1408
	ds_load_u8_d16 v65, v9 offset:1296
	ds_load_u8_d16 v54, v9 offset:1360
	ds_load_u8_d16 v13, v9 offset:1312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1220 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v9 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1228 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v9 offset:1392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1100 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v9 offset:1328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1108 ; 4-byte Folded Spill
	ds_load_u8_d16 v209, v9 offset:1472
	ds_load_u8_d16 v221, v9 offset:1536
	ds_load_u8_d16 v16, v9 offset:1424
	ds_load_u8_d16 v21, v9 offset:1488
	ds_load_u8_d16 v13, v9 offset:1440
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1232 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v9 offset:1504
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1240 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v9 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1116 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v9 offset:1456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v13, off offset:1120 ; 4-byte Folded Spill
	ds_load_u8_d16 v232, v9 offset:1600
	ds_load_u8_d16 v222, v9 offset:1664
	ds_load_u8_d16 v13, v9 offset:1552
	ds_load_u8_d16 v47, v9 offset:1616
	ds_load_u8_d16 v36, v9 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v36, off offset:1256 ; 4-byte Folded Spill
	ds_load_u8_d16 v36, v9 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v36, off offset:1264 ; 4-byte Folded Spill
	ds_load_u8_d16 v36, v9 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v36, off offset:1132 ; 4-byte Folded Spill
	ds_load_u8_d16 v36, v9 offset:1584
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v36, off offset:1136 ; 4-byte Folded Spill
	ds_load_u8_d16 v236, v9 offset:1728
	ds_load_u8_d16 v238, v9 offset:1792
	ds_load_u8_d16 v57, v9 offset:1680
	ds_load_u8_d16 v58, v9 offset:1744
	ds_load_u8_d16 v36, v9 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v36, off offset:1268 ; 4-byte Folded Spill
	ds_load_u8_d16 v36, v9 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v36, off offset:1272 ; 4-byte Folded Spill
	ds_load_u8_d16 v36, v9 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v36, off offset:1144 ; 4-byte Folded Spill
	ds_load_u8_d16 v36, v9 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v36, off offset:1148 ; 4-byte Folded Spill
	ds_load_u8_d16 v240, v9 offset:1856
	ds_load_u8_d16 v239, v9 offset:1920
	ds_load_u8_d16 v62, v9 offset:1808
	ds_load_u8_d16 v63, v9 offset:1872
	ds_load_u8_d16 v43, v9 offset:1824
	ds_load_u8_d16 v166, v9 offset:1888
	ds_load_u8_d16 v36, v9 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v36, off offset:1168 ; 4-byte Folded Spill
	ds_load_u8_d16 v36, v9 offset:1840
	ds_load_u8_d16 v9, v9 offset:1968
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v36, off offset:1172 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:1180 ; 4-byte Folded Spill
	v_mov_b32_e32 v9, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v9, v241, v242, 0xc0c0004
	v_perm_b32 v10, v244, v165, 0xc0c0004
	v_perm_b32 v11, v230, v234, 0xc0c0004
	v_perm_b32 v33, v235, v237, 0xc0c0004
	v_perm_b32 v34, v190, v191, 0xc0c0004
	v_perm_b32 v35, v178, v18, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v251, v207, 0xc0c0004
	v_perm_b32 v10, v208, v211, 0xc0c0004
	v_lshl_or_b32 v11, v33, 16, v11
	v_perm_b32 v33, v22, v23, 0xc0c0004
	v_perm_b32 v36, v56, v19, 0xc0c0004
	s_mov_b32 s5, s4
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v24, v45, 0xc0c0004
	s_mov_b32 s6, s4
	v_lshl_or_b32 v51, v36, 16, v35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:1216
	scratch_load_b32 v36, off, off offset:1224
	s_mov_b32 s7, s4
	v_lshl_or_b32 v9, v33, 16, v9
	v_perm_b32 v33, v180, v0, 0xc0c0004
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_lshl_or_b32 v52, v34, 16, v33
	v_perm_b32 v33, v173, v174, 0xc0c0004
	v_perm_b32 v34, v175, v177, 0xc0c0004
	v_perm_b32 v41, v222, v236, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v34, 16, v33
	v_perm_b32 v33, v171, v170, 0xc0c0004
	v_perm_b32 v34, v169, v172, 0xc0c0004
	v_lshl_or_b32 v49, v34, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1252
	scratch_load_b32 v34, off, off offset:1260
	s_waitcnt vmcnt(2)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:1236
	scratch_load_b32 v37, off, off offset:1244
	s_waitcnt vmcnt(2)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	v_perm_b32 v34, v17, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v34, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1188
	scratch_load_b32 v34, off, off offset:1196
	s_waitcnt vmcnt(2)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v36, 16, v35
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:1204
	scratch_load_b32 v35, off, off offset:1212
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v34, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v34, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1152
	scratch_load_b32 v34, off, off offset:1156
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:1160
	scratch_load_b32 v35, off, off offset:1164
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v34, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v34, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1124
	scratch_load_b32 v34, off, off offset:1128
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:1140
	scratch_load_b32 v35, off, off offset:1248
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v34, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:1092
	scratch_load_b32 v36, off, off offset:1096
	v_lshl_or_b32 v126, v34, 16, v33
	v_perm_b32 v33, v136, v250, 0xc0c0004
	v_perm_b32 v34, v254, v252, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v124, v34, 16, v33
	v_perm_b32 v33, v187, v245, 0xc0c0004
	v_perm_b32 v34, v248, v247, 0xc0c0004
	v_lshl_or_b32 v123, v34, 16, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	scratch_load_b32 v33, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt vmcnt(1)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:1104
	scratch_load_b32 v37, off, off offset:1112
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s46, v33
	ds_load_b128 v[127:130], v33
	ds_load_b128 v[131:134], v33 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt vmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v36, 16, v35
	v_dual_mov_b32 v40, s11 :: v_dual_mov_b32 v39, s10
	v_dual_mov_b32 v38, s9 :: v_dual_mov_b32 v37, s8
	v_dual_mov_b32 v36, s7 :: v_dual_mov_b32 v35, s6
	v_dual_mov_b32 v34, s5 :: v_dual_mov_b32 v33, s4
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[127:130], v[9:12], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[131:134], v[9:12], v[33:40] neg_lo:[1,1,0]
	v_perm_b32 v9, v238, v240, 0xc0c0004
	v_perm_b32 v10, v239, v243, 0xc0c0004
	v_perm_b32 v11, v221, v232, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[83:90], v[127:130], v[49:52], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[131:134], v[49:52], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v249, v14, 0xc0c0004
	v_perm_b32 v10, v199, v209, 0xc0c0004
	v_lshl_or_b32 v11, v41, 16, v11
	v_perm_b32 v41, v61, v64, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[99:106], v[127:130], v[115:118], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v59, v60, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[107:114], v[131:134], v[115:118], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[127:130], v[123:126], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v41, 16, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	scratch_load_b32 v41, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[33:40], v[131:134], v[123:126], v[33:40] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s46, v41
	ds_load_b128 v[49:52], v41
	ds_load_b128 v[123:126], v41 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v41, v57, v58, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[49:52], v[9:12], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[123:126], v[9:12], v[75:82] neg_lo:[1,1,0]
	v_perm_b32 v9, v62, v63, 0xc0c0004
	v_perm_b32 v10, v176, v246, 0xc0c0004
	v_perm_b32 v11, v13, v47, 0xc0c0004
	v_cvt_f32_i32_e32 v160, v71
	v_cvt_f32_i32_e32 v148, v81
	v_cvt_f32_i32_e32 v149, v82
	v_lshl_or_b32 v12, v10, 16, v9
	v_perm_b32 v9, v65, v54, 0xc0c0004
	v_perm_b32 v10, v16, v21, 0xc0c0004
	v_lshl_or_b32 v11, v41, 16, v11
	v_perm_b32 v41, v184, v66, 0xc0c0004
	v_cvt_f32_i32_e32 v164, v75
	v_cvt_f32_i32_e32 v185, v76
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v20, v179, 0xc0c0004
	v_cvt_f32_i32_e32 v153, v77
	v_cvt_f32_i32_e32 v154, v78
	v_cvt_f32_i32_e32 v150, v79
	v_cvt_f32_i32_e32 v162, v80
	v_lshl_or_b32 v9, v41, 16, v9
	v_cvt_f32_i32_e32 v183, v67
	v_cvt_f32_i32_e32 v143, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[49:52], v[9:12], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[123:126], v[9:12], v[91:98] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:1256
	scratch_load_b32 v12, off, off offset:1264
	v_perm_b32 v9, v43, v166, 0xc0c0004
	v_perm_b32 v10, v167, v168, 0xc0c0004
	v_cvt_f32_i32_e32 v127, v83
	v_cvt_f32_i32_e32 v147, v84
	v_cvt_f32_i32_e32 v133, v95
	v_cvt_f32_i32_e32 v134, v96
	v_cvt_f32_i32_e32 v83, v97
	v_cvt_f32_i32_e32 v84, v98
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:1268
	scratch_load_b32 v41, off, off offset:1272
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v12, v41, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:1220
	scratch_load_b32 v10, off, off offset:1228
	v_lshl_or_b32 v11, v41, 16, v11
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:1232
	scratch_load_b32 v41, off, off offset:1240
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v10, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:1184
	scratch_load_b32 v41, off, off offset:1192
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v41, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:1200
	scratch_load_b32 v44, off, off offset:1208
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v41, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v41, 16, v9
	v_wmma_i32_16x16x16_iu8 v[99:106], v[49:52], v[9:12], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[123:126], v[9:12], v[107:114] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:1168
	scratch_load_b32 v10, off, off offset:1172
	v_cvt_f32_i32_e32 v81, v99
	v_cvt_f32_i32_e32 v82, v100
	v_cvt_f32_i32_e32 v79, v101
	v_cvt_f32_i32_e32 v80, v102
	v_cvt_f32_i32_e32 v78, v103
	v_cvt_f32_i32_e32 v76, v105
	v_cvt_f32_i32_e32 v77, v106
	v_cvt_f32_i32_e32 v75, v107
	v_cvt_f32_i32_e32 v44, v112
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:1176
	scratch_load_b32 v11, off, off offset:1180
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:1132
	scratch_load_b32 v12, off, off offset:1136
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:1144
	scratch_load_b32 v41, off, off offset:1148
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v41, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:1100
	scratch_load_b32 v10, off, off offset:1108
	v_lshl_or_b32 v11, v41, 16, v11
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:1116
	scratch_load_b32 v41, off, off offset:1120
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v41, v10, 0xc0c0004
	scratch_load_b32 v41, off, off offset:1088 ; 4-byte Folded Reload
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v253, v138, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v41, v255, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v41, 16, v9
	v_cvt_f32_i32_e32 v41, v113
	v_wmma_i32_16x16x16_iu8 v[115:122], v[49:52], v[9:12], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[123:126], v[9:12], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v90
	v_cvt_f32_i32_e32 v12, v114
	v_cvt_f32_i32_e32 v125, v85
	v_cvt_f32_i32_e32 v126, v86
	v_cvt_f32_i32_e32 v11, v87
	v_mov_b32_e32 v114, v10
	v_cvt_f32_i32_e32 v10, v120
	v_cvt_f32_i32_e32 v124, v88
	v_cvt_f32_i32_e32 v9, v89
	v_cvt_f32_i32_e32 v87, v91
	v_cvt_f32_i32_e32 v88, v92
	scratch_store_b32 off, v10, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v34
	v_cvt_f32_i32_e32 v85, v93
	v_cvt_f32_i32_e32 v86, v94
	v_cvt_f32_i32_e32 v123, v104
	v_cvt_f32_i32_e32 v52, v108
	scratch_store_b32 off, v10, off offset:372 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v35
	v_cvt_f32_i32_e32 v51, v109
	v_cvt_f32_i32_e32 v50, v110
	v_cvt_f32_i32_e32 v49, v111
	v_mov_b32_e32 v113, v9
	scratch_store_b32 off, v10, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v36
	v_cvt_f32_i32_e32 v9, v115
	v_mov_b32_e32 v115, v11
	v_cvt_f32_i32_e32 v132, v116
	v_mov_b32_e32 v116, v124
	v_cvt_f32_i32_e32 v131, v117
	v_dual_mov_b32 v117, v125 :: v_dual_mov_b32 v120, v147
	v_cvt_f32_i32_e32 v130, v118
	v_mov_b32_e32 v118, v126
	v_cvt_f32_i32_e32 v129, v119
	v_mov_b32_e32 v119, v127
	v_cvt_f32_i32_e32 v127, v121
	v_mov_b32_e32 v121, v148
	v_cvt_f32_i32_e32 v126, v122
	v_mov_b32_e32 v122, v149
	v_cvt_f32_i32_e32 v125, v33
	scratch_store_b32 off, v10, off offset:368 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v37
	v_cvt_f32_i32_e32 v91, v38
	v_cvt_f32_i32_e32 v90, v39
	v_cvt_f32_i32_e32 v89, v40
	v_cvt_f32_i32_e32 v148, v69
	v_cvt_f32_i32_e32 v35, v70
	v_cvt_f32_i32_e32 v149, v72
	v_cvt_f32_i32_e32 v33, v73
	v_cvt_f32_i32_e32 v34, v74
	scratch_store_b32 off, v10, off offset:360 ; 4-byte Folded Spill
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_mov_b16_e64 v128.l, v138.l
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v35, off offset:912
	scratch_store_b32 off, v153, off offset:908
	scratch_store_b32 off, v154, off offset:904
	scratch_store_b32 off, v34, off offset:900
	scratch_store_b32 off, v33, off offset:896
	scratch_store_b32 off, v185, off offset:892
	scratch_store_b32 off, v164, off offset:888
	scratch_store_b32 off, v162, off offset:884
	scratch_store_b32 off, v150, off offset:880
	scratch_store_b32 off, v88, off offset:876
	scratch_store_b32 off, v87, off offset:872
	scratch_store_b32 off, v86, off offset:868
	scratch_store_b32 off, v85, off offset:864
	scratch_store_b32 off, v84, off offset:860
	scratch_store_b32 off, v83, off offset:856
	scratch_store_b32 off, v82, off offset:852
	scratch_store_b32 off, v81, off offset:848
	scratch_store_b32 off, v80, off offset:844
	scratch_store_b32 off, v79, off offset:840
	scratch_store_b32 off, v78, off offset:836
	scratch_store_b32 off, v77, off offset:832
	scratch_store_b32 off, v76, off offset:828
	scratch_store_b32 off, v75, off offset:824
	scratch_store_b32 off, v52, off offset:820
	scratch_store_b32 off, v51, off offset:812
	scratch_store_b32 off, v50, off offset:808
	scratch_store_b32 off, v49, off offset:804
	scratch_store_b32 off, v44, off offset:800
	scratch_store_b32 off, v41, off offset:740
	scratch_store_b32 off, v12, off offset:736
	scratch_store_b32 off, v9, off offset:732
	scratch_store_b32 off, v226, off offset:728
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v53, off offset:544
	scratch_store_b32 off, v48, off offset:532
	scratch_store_b32 off, v46, off offset:528
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v41, 0
	ds_load_b128 v[49:52], v196 offset:36864
	ds_load_b128 v[37:40], v196 offset:36880
	ds_load_b128 v[33:36], v196 offset:37376
	ds_load_b128 v[9:12], v196 offset:37392
	v_mov_b32_e32 v226, 0
	v_dual_mov_b32 v154, v189 :: v_dual_mov_b32 v153, v188
	scratch_store_b32 off, v41, off offset:336 ; 4-byte Folded Spill
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	scratch_store_b32 off, v41, off offset:340 ; 4-byte Folded Spill
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v108, 0
	scratch_store_b32 off, v41, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v67, 0
	scratch_store_b32 off, v41, off offset:332 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	scratch_store_b32 off, v41, off offset:320 ; 4-byte Folded Spill
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v112, 0
	scratch_store_b32 off, v41, off offset:324 ; 4-byte Folded Spill
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v85, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v159, off offset:468
	scratch_store_b32 off, v157, off offset:464
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:260
	scratch_load_b32 v44, off, off offset:256
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_perm_b32 v48, v244, v165, 0xc0c0004
	v_mov_b32_e32 v159, v90
	v_mov_b32_e32 v165, v91
	v_perm_b32 v46, v241, v242, 0xc0c0004
	v_perm_b32 v53, v235, v237, 0xc0c0004
	v_perm_b32 v67, v251, v207, 0xc0c0004
	v_perm_b32 v68, v208, v211, 0xc0c0004
	v_perm_b32 v24, v24, v45, 0xc0c0004
	v_perm_b32 v22, v22, v23, 0xc0c0004
	v_perm_b32 v14, v249, v14, 0xc0c0004
	v_lshl_or_b32 v111, v48, 16, v46
	v_lshl_or_b32 v109, v68, 16, v67
	v_perm_b32 v23, v239, v243, 0xc0c0004
	v_lshl_or_b32 v108, v22, 16, v24
	v_perm_b32 v22, v238, v240, 0xc0c0004
	v_perm_b32 v0, v180, v0, 0xc0c0004
	v_perm_b32 v18, v178, v18, 0xc0c0004
	v_perm_b32 v19, v56, v19, 0xc0c0004
	v_perm_b32 v45, v59, v60, 0xc0c0004
	v_perm_b32 v46, v61, v64, 0xc0c0004
	v_mov_b32_e32 v189, v115
	v_lshl_or_b32 v115, v23, 16, v22
	v_perm_b32 v22, v173, v174, 0xc0c0004
	v_perm_b32 v13, v13, v47, 0xc0c0004
	v_perm_b32 v16, v16, v21, 0xc0c0004
	v_perm_b32 v21, v184, v66, 0xc0c0004
	v_lshl_or_b32 v112, v46, 16, v45
	v_perm_b32 v24, v221, v232, 0xc0c0004
	v_dual_mov_b32 v173, v133 :: v_dual_mov_b32 v184, v122
	v_perm_b32 v23, v175, v177, 0xc0c0004
	v_perm_b32 v20, v20, v179, 0xc0c0004
	v_mov_b32_e32 v175, v116
	v_mov_b32_e32 v177, v118
	v_mov_b32_e32 v157, v89
	v_dual_mov_b32 v91, s11 :: v_dual_mov_b32 v84, s4
	v_dual_mov_b32 v90, s10 :: v_dual_mov_b32 v89, s9
	v_mov_b32_e32 v188, v114
	v_dual_mov_b32 v88, s8 :: v_dual_mov_b32 v87, s7
	v_mov_b32_e32 v66, v126
	v_dual_mov_b32 v86, s6 :: v_dual_mov_b32 v85, s5
	v_dual_mov_b32 v174, v134 :: v_dual_mov_b32 v179, v120
	v_mov_b32_e32 v164, v139
	v_mov_b32_e32 v180, v121
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v178, v119 :: v_dual_add_nc_u32 v41, s45, v41
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s45, v44
	ds_load_b128 v[100:103], v44 offset:4096
	ds_load_b128 v[104:107], v44
	ds_load_b128 v[75:78], v41 offset:4096
	ds_load_b128 v[79:82], v41
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v41, v230, v234, 0xc0c0004
	v_perm_b32 v44, v199, v209, 0xc0c0004
	v_mov_b32_e32 v199, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v110, v53, 16, v41
	v_lshl_or_b32 v113, v44, 16, v14
	v_perm_b32 v14, v190, v191, 0xc0c0004
	v_perm_b32 v41, v222, v236, 0xc0c0004
	v_lshl_or_b32 v44, v21, 16, v20
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v114, v41, 16, v24
	v_perm_b32 v24, v171, v170, 0xc0c0004
	v_perm_b32 v41, v169, v172, 0xc0c0004
	v_mov_b32_e32 v169, v127
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[100:103], v[108:111], v[84:91] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[104:107], v[108:111], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v14, 16, v0
	v_lshl_or_b32 v110, v19, 16, v18
	v_perm_b32 v0, v62, v63, 0xc0c0004
	v_perm_b32 v14, v176, v246, 0xc0c0004
	v_perm_b32 v18, v57, v58, 0xc0c0004
	v_perm_b32 v19, v65, v54, 0xc0c0004
	v_lshl_or_b32 v108, v41, 16, v24
	v_mov_b32_e32 v65, v125
	v_lshl_or_b32 v47, v14, 16, v0
	v_lshl_or_b32 v46, v18, 16, v13
	v_lshl_or_b32 v45, v16, 16, v19
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1252
	scratch_load_b32 v13, off, off offset:1260
	scratch_load_b32 v14, off, off offset:1216
	scratch_load_b32 v16, off, off offset:1224
	v_mov_b32_e32 v171, v132
	v_mov_b32_e32 v83, v137
	v_lshl_or_b32 v109, v23, 16, v22
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[79:82], v[112:115], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[75:78], v[112:115], v[92:99] neg_lo:[1,1,0]
	v_mov_b32_e32 v172, v123
	v_mov_b32_e32 v176, v117
	v_wmma_i32_16x16x16_iu8 v[56:63], v[104:107], v[108:111], v[84:91] neg_lo:[1,1,0]
	v_mov_b32_e32 v170, v131
	v_cvt_f32_i32_e32 v197, v67
	v_cvt_f32_i32_e32 v67, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[79:82], v[44:47], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v162, v60
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v13, 0xc0c0004
	v_perm_b32 v13, v17, v42, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v14, v14, v16, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:1236
	scratch_load_b32 v17, off, off offset:1244
	v_lshl_or_b32 v127, v13, 16, v0
	v_perm_b32 v0, v43, v166, 0xc0c0004
	v_perm_b32 v13, v167, v168, 0xc0c0004
	v_dual_mov_b32 v167, v129 :: v_dual_mov_b32 v168, v130
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v135, v13, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1124
	scratch_load_b32 v13, off, off offset:1128
	s_waitcnt vmcnt(2)
	v_perm_b32 v24, v16, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:1188
	scratch_load_b32 v17, off, off offset:1196
	v_lshl_or_b32 v126, v24, 16, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:1256
	scratch_load_b32 v24, off, off offset:1264
	s_waitcnt vmcnt(4)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v41, v16, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:1204
	scratch_load_b32 v17, off, off offset:1212
	s_waitcnt vmcnt(2)
	v_perm_b32 v14, v14, v24, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v42, v16, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:1152
	scratch_load_b32 v17, off, off offset:1156
	v_lshl_or_b32 v125, v42, 16, v41
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:1268
	scratch_load_b32 v41, off, off offset:1272
	s_waitcnt vmcnt(2)
	v_perm_b32 v48, v16, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:1160
	scratch_load_b32 v17, off, off offset:1164
	s_waitcnt vmcnt(2)
	v_perm_b32 v24, v24, v41, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:1220
	scratch_load_b32 v42, off, off offset:1228
	v_lshl_or_b32 v134, v24, 16, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:1140
	scratch_load_b32 v14, off, off offset:1248
	s_waitcnt vmcnt(4)
	v_perm_b32 v53, v16, v17, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[16:23], v[100:103], v[108:111], v[84:91] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:1232
	scratch_load_b32 v43, off, off offset:1240
	v_lshl_or_b32 v124, v53, 16, v48
	v_wmma_i32_16x16x16_iu8 v[16:23], v[75:78], v[44:47], v[16:23] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v44, v73
	s_waitcnt vmcnt(2)
	v_perm_b32 v13, v13, v14, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:1092
	scratch_load_b32 v24, off, off offset:1096
	v_wmma_i32_16x16x16_iu8 v[108:115], v[104:107], v[124:127], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[100:103], v[124:127], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v13, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1168
	scratch_load_b32 v13, off, off offset:1172
	v_cvt_f32_i32_e32 v73, v97
	v_cvt_f32_i32_e32 v150, v17
	v_cvt_f32_i32_e32 v147, v20
	v_cvt_f32_i32_e32 v185, v21
	s_waitcnt vmcnt(4)
	v_perm_b32 v42, v42, v43, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:1184
	scratch_load_b32 v48, off, off offset:1192
	v_lshl_or_b32 v133, v42, 16, v41
	s_waitcnt vmcnt(4)
	v_perm_b32 v14, v24, v14, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:1104
	scratch_load_b32 v41, off, off offset:1112
	v_perm_b32 v42, v254, v252, 0xc0c0004
	s_waitcnt vmcnt(4)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v43, v43, v48, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:1200
	scratch_load_b32 v53, off, off offset:1208
	s_waitcnt vmcnt(2)
	v_perm_b32 v24, v41, v24, 0xc0c0004
	v_perm_b32 v41, v136, v250, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v138, v24, 16, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:1176
	scratch_load_b32 v14, off, off offset:1180
	v_lshl_or_b32 v137, v42, 16, v41
	s_waitcnt vmcnt(2)
	v_perm_b32 v48, v48, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v132, v48, 16, v43
	v_perm_b32 v43, v187, v245, 0xc0c0004
	v_perm_b32 v48, v248, v247, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[108:115], v[79:82], v[132:135], v[108:115] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:1132
	scratch_load_b32 v24, off, off offset:1136
	v_lshl_or_b32 v136, v48, 16, v43
	scratch_load_b32 v48, off, off offset:1088 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[116:123], v[75:78], v[132:135], v[116:123] neg_lo:[1,1,0]
	scratch_load_b32 v135, off, off offset:624 ; 4-byte Folded Reload
	v_dual_mov_b32 v134, v174 :: v_dual_mov_b32 v133, v173
	v_mov_b32_e32 v132, v171
	v_cvt_f32_i32_e32 v97, v112
	v_cvt_f32_i32_e32 v226, v121
	v_mov_b32_e32 v121, v180
	v_cvt_f32_i32_e32 v96, v122
	v_mov_b32_e32 v122, v184
	s_waitcnt vmcnt(2)
	v_perm_b32 v14, v24, v14, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:1144
	scratch_load_b32 v41, off, off offset:1148
	s_waitcnt vmcnt(3)
	v_perm_b32 v48, v48, v255, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v24, v41, v24, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:1100
	scratch_load_b32 v42, off, off offset:1108
	s_waitcnt vmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:1116
	scratch_load_b32 v43, off, off offset:1120
	s_waitcnt vmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_perm_b32 v43, v253, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[124:131], v[104:107], v[136:139], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v13, 16, v0
	v_cvt_f32_i32_e32 v0, v114
	v_lshl_or_b32 v106, v24, 16, v14
	v_lshl_or_b32 v105, v42, 16, v41
	v_lshl_or_b32 v104, v48, 16, v43
	v_wmma_i32_16x16x16_iu8 v[84:91], v[100:103], v[136:139], v[84:91] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v115
	v_mov_b32_e32 v139, v164
	v_wmma_i32_16x16x16_iu8 v[124:131], v[79:82], v[104:107], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[75:78], v[104:107], v[84:91] neg_lo:[1,1,0]
	v_mov_b32_e32 v137, v83
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v116
	v_cvt_f32_i32_e32 v83, v68
	v_cvt_f32_i32_e32 v81, v69
	v_cvt_f32_i32_e32 v82, v70
	v_cvt_f32_i32_e32 v79, v71
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v117
	v_cvt_f32_i32_e32 v80, v72
	v_cvt_f32_i32_e32 v78, v74
	v_cvt_f32_i32_e32 v76, v92
	v_cvt_f32_i32_e32 v77, v93
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v118
	v_cvt_f32_i32_e32 v74, v94
	v_cvt_f32_i32_e32 v75, v95
	v_cvt_f32_i32_e32 v71, v98
	v_cvt_f32_i32_e32 v72, v99
	v_cvt_f32_i32_e32 v69, v56
	v_cvt_f32_i32_e32 v70, v57
	v_cvt_f32_i32_e32 v102, v58
	v_cvt_f32_i32_e32 v68, v59
	v_cvt_f32_i32_e32 v164, v61
	v_cvt_f32_i32_e32 v106, v62
	v_cvt_f32_i32_e32 v107, v63
	v_cvt_f32_i32_e32 v100, v16
	v_cvt_f32_i32_e32 v101, v18
	v_cvt_f32_i32_e32 v103, v19
	v_cvt_f32_i32_e32 v94, v22
	v_cvt_f32_i32_e32 v95, v23
	v_cvt_f32_i32_e32 v92, v108
	v_cvt_f32_i32_e32 v93, v109
	v_cvt_f32_i32_e32 v99, v110
	v_cvt_f32_i32_e32 v138, v111
	v_cvt_f32_i32_e32 v98, v113
	v_dual_mov_b32 v113, v199 :: v_dual_mov_b32 v114, v188
	v_dual_mov_b32 v115, v189 :: v_dual_mov_b32 v116, v175
	v_mov_b32_e32 v117, v176
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_mov_b32_e32 v118, v177
	v_cvt_f32_i32_e32 v0, v119
	v_mov_b32_e32 v119, v178
	v_cvt_f32_i32_e32 v189, v120
	v_mov_b32_e32 v120, v179
	v_cvt_f32_i32_e32 v188, v123
	v_mov_b32_e32 v123, v172
	v_cvt_f32_i32_e32 v111, v124
	v_cvt_f32_i32_e32 v112, v125
	v_mov_b32_e32 v125, v65
	v_cvt_f32_i32_e32 v109, v126
	v_mov_b32_e32 v126, v66
	v_cvt_f32_i32_e32 v110, v127
	v_mov_b32_e32 v127, v169
	v_cvt_f32_i32_e32 v105, v128
	v_cvt_f32_i32_e32 v108, v129
	v_mov_b32_e32 v129, v167
	v_cvt_f32_i32_e32 v53, v130
	v_mov_b32_e32 v130, v168
	v_cvt_f32_i32_e32 v104, v131
	v_mov_b32_e32 v131, v170
	v_cvt_f32_i32_e32 v46, v84
	v_cvt_f32_i32_e32 v48, v85
	v_cvt_f32_i32_e32 v124, v86
	v_cvt_f32_i32_e32 v41, v87
	v_cvt_f32_i32_e32 v86, v88
	v_cvt_f32_i32_e32 v87, v89
	v_mov_b32_e32 v89, v157
	v_cvt_f32_i32_e32 v84, v90
	v_mov_b32_e32 v90, v159
	v_cvt_f32_i32_e32 v85, v91
	v_mov_b32_e32 v91, v165
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
.LBB0_16:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s44, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s44, s0
	v_mov_b32_e32 v211, v86
	s_ashr_i32 s0, s0, 6
	v_mov_b32_e32 v221, v87
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v0, v233, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v13, v145, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v16, v229, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v14, v228, s0, 1
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	v_add_lshl_u32 v17, v231, s0, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v176.l, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v14, 0x80000000, v14 :: v_dual_mov_b32 v199, v53
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v13, v13, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_mov_b16_e64 v251.l, v176.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s34, s34, s27
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	v_mov_b32_e32 v208, v84
	v_dual_mov_b32 v184, v41 :: v_dual_mov_b32 v191, v48
	v_mov_b32_e32 v190, v46
	v_mov_b32_e32 v207, v226
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x3
	buffer_load_u16 v18, v0, s[12:15], 0 offen
	buffer_load_u16 v45, v14, s[12:15], 0 offen
	buffer_load_u16 v0, v16, s[12:15], 0 offen
	buffer_load_u16 v246, v17, s[12:15], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v55, v13 offset:36864
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v13, v15, s1, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v196 offset:36864
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	buffer_load_u16 v13, v13, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v249, 16, v18
	v_mov_b32_e32 v209, v85
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v13
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[84:87], v196 offset:36880
	ds_load_b128 v[21:24], v196 offset:37376
	ds_load_b128 v[13:16], v196 offset:37392
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:248
	scratch_load_b32 v20, off, off offset:1080
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v55, v17 offset:36864
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v17, off, off offset:1084 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v196 offset:36864
	ds_load_b128 v[53:56], v196 offset:36880
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v18, v62, v249
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v251.h, v17.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v50, v251
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v19, v17, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v18, v18, v83, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v18, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
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
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v41, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v41, v20
	v_div_scale_f32 v41, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v42, v41, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v19, v42, v41
	v_fmac_f32_e32 v42, v43, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v42, v41
	v_div_fmas_f32 v19, v19, v20, v42
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:240
	scratch_load_b32 v42, off, off offset:344
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v49, v251
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v231, v19, v18, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:236
	scratch_load_b32 v19, off, off offset:1060
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v51, v251
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v20, v20, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v41, v20, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v41, v61, v249
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v17, v17, v19, v18
	v_fma_f32 v41, v41, v197, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v18, v17, s2
	v_cndmask_b32_e64 v20, v20, v41, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v20
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v41, v41, v42
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v41, v41, v20
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v46, v43
	v_div_scale_f32 v46, vcc_lo, v20, v41, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v46, v43
	v_fma_f32 v48, -v42, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v43
	v_fma_f32 v42, -v42, v47, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v47
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:244
	scratch_load_b32 v47, off, off offset:1068
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v43, v52, v251
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v229, v42, v41, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v41, off, off offset:1056 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v38, v251
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v43, v43, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v46, v43, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v46, v64, v249
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v46, v46, v82, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v46, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v46, v46, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v46, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v65, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v65, v48
	v_div_scale_f32 v65, vcc_lo, v43, v46, v43
	v_mul_f32_e32 v66, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v47, v66, v65
	v_fmac_f32_e32 v66, v82, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v66, v65
	v_div_fmas_f32 v47, v47, v48, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v228, v47, v46, v43
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	scratch_load_b32 v46, off, off offset:1052 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v20, v20, v41, v186
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v41, v54, v249
	v_mul_f32_e32 v43, v37, v251
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v186, v20, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v41, v41, v80, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v41, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v18, v63, v249 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v18, v18, v81, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v18, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v18, v18, v17
	v_rcp_f32_e32 v48, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v19, v48, 1.0
	v_fmac_f32_e32 v48, v65, v48
	v_div_scale_f32 v65, vcc_lo, v17, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v65, v48
	v_fma_f32 v81, -v19, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v81, v48
	v_fma_f32 v19, -v19, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v48, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v41, v41, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v42
	v_fma_f32 v65, -v42, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v65, v48
	v_div_scale_f32 v65, vcc_lo, v20, v41, v20
	v_mul_f32_e32 v66, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v42, v66, v65
	v_fmac_f32_e32 v66, v80, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v66, v65
	v_div_fmas_f32 v42, v42, v48, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v226, v42, v41, v20
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v43, v43, v46, v227
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v46, v53, v249
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v227, v43, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v227, v19, v18, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:224
	scratch_load_b32 v19, off, off offset:1048
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v40, v251
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v46, v46, v79, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v46, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v46, v46, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v46, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v65, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v65, v48
	v_div_scale_f32 v65, vcc_lo, v43, v46, v43
	v_mul_f32_e32 v66, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v47, v66, v65
	v_fmac_f32_e32 v66, v79, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v66, v65
	v_div_fmas_f32 v47, v47, v48, v66
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v17, v17, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v18, v17, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v18, v56, v249
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v18, v18, v78, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v17, v18, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v65, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v17
	v_fma_f32 v19, -v17, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v48, v65, v48
	v_mul_f32_e32 v66, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v17, v66, v19
	v_fmac_f32_e32 v66, v78, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v66, v19
	v_div_fmas_f32 v66, v17, v18, v66
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:220
	scratch_load_b32 v19, off, off offset:1044
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v39, v251
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, v17, v19, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v18, v17, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v18, v55, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v18, v18, v44, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v17, v18, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v78
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v18
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v79, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v79, v79, v78
	v_rcp_f32_e32 v18, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v78, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v20, v19, v18
	v_fma_f32 v41, -v17, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v41, v18
	v_fma_f32 v17, -v17, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v17, v18, v20
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	scratch_load_b32 v18, off, off offset:1040 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v34, v251
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v233, v47, v46, v43
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v17, v17, v18, v225
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v225, v17, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v225, v66, v65, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v65, off, off offset:1036 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[41:44], v196 offset:37376
	ds_load_b128 v[17:20], v196 offset:37392
	v_mul_f32_e32 v48, v33, v251
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v196, v188 :: v_dual_mul_f32 v47, v42, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v47, v47, v77, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v77
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v77, null, v47, v47, v46
	v_rcp_f32_e32 v81, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v77, v81, 1.0
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v46, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v83, v82, v81
	v_fma_f32 v88, -v77, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v88, v81
	v_fma_f32 v77, -v77, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v77, v77, v81, v83
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v48, v65, v224
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v41, v249
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v224, v48, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v224, v80, v79, v78
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v78, v44, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v76, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v65, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v48
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v48
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v48
	v_rcp_f32_e32 v76, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v66, v76, 1.0
	v_fmac_f32_e32 v76, v81, v76
	v_div_scale_f32 v81, vcc_lo, v48, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v76
	v_fma_f32 v83, -v66, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v76
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	scratch_load_b32 v83, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v66, -v66, v82, v81
	v_div_fmas_f32 v66, v66, v76, v82
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v76, v36, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v76, v76, v181, v223
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v223, v76, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v223, v77, v47, v46
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v47, off, off offset:1032 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v46, v35, v251 :: v_dual_mov_b32 v197, v189
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v75, v78, v75, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v76, v75, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v76
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v75
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v46, v47, v220
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v47, v43, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v220, v46, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v220, v66, v65, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v65, off, off offset:1028 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v10, v251
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v47, v47, v74, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v48, v65, v219
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v65, v18, v249
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v219, v48, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v73, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v76, v76, v78
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v65, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v78, null, v76, v76, v75
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v75, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v80, v79
	v_fma_f32 v82, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v79
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	scratch_load_b32 v82, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v78, -v78, v81, v80
	v_div_fmas_f32 v78, v78, v79, v81
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v74
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v219, v78, v76, v75
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	scratch_load_b32 v75, off, off offset:1024 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v47, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v74
	v_fma_f32 v79, -v74, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, vcc_lo, v46, v47, v46
	v_mul_f32_e32 v80, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v74, v80, v79
	v_fmac_f32_e32 v80, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v74, v80, v79
	v_div_fmas_f32 v74, v74, v77, v80
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v48
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v48
	v_rcp_f32_e32 v73, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v66, v73, 1.0
	v_fmac_f32_e32 v73, v77, v73
	v_div_scale_f32 v77, vcc_lo, v48, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v77, v73
	v_fma_f32 v80, -v66, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v73
	v_fma_f32 v66, -v66, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v73, v79
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v73, v9, v251
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v73, v73, v75, v218
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v75, v17, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v218, v73, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v218, v74, v47, v46
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v47, off, off offset:1020 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v46, v12, v251
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v46, v47, v217
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v47, v20, v249
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v217, v46, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v217, v66, v65, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v65, off, off offset:1016 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v11, v251
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v67, v75, v67, v73
	v_fma_f32 v47, v47, v72, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v73, v67, s3
	v_cndmask_b32_e64 v46, v46, v47, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v67
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v73, v73, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v75, null, v73, v73, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v77, -v75, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v67, v73, v67
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v75, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v78, v77
	v_div_fmas_f32 v75, v75, v76, v78
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_ldexp_f32 v47, v47, v72
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v48, v65, v216
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v19, v249
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v216, v48, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v216.l, v176.l
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v71, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v47, v47, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v65, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v76, -v72, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, vcc_lo, v46, v47, v46
	v_mul_f32_e32 v77, v76, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v72, v77, v76
	v_fmac_f32_e32 v77, v78, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v77, v76
	v_div_fmas_f32 v72, v72, v74, v77
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v170, v72, v47, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v66
	v_fma_f32 v74, -v66, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v74, v71
	v_div_scale_f32 v74, vcc_lo, v48, v65, v48
	v_mul_f32_e32 v76, v74, v71
	v_div_fixup_f32 v169, v75, v73, v67
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	scratch_load_b32 v67, off, off offset:1064 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v77, -v66, v76, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v71
	v_fma_f32 v66, -v66, v76, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v71, v76
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v71, off, off offset:1012 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v171, v66, v65, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:32
	scratch_load_b32 v66, off, off offset:1004
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v216.h, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v50, v216
	v_mul_f32_e32 v46, v49, v216
	v_mul_f32_e32 v48, v52, v216
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v67, v67, v71, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v215, v67, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v215, 16, v45
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v48, v66, v65
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v62, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v65, v48, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v45, v45, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v67, v45, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, null, v67, v67, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v73, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v73, vcc_lo, v45, v67, v45
	v_mul_f32_e32 v74, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v70, v74, v73
	v_fmac_f32_e32 v74, v75, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v74, v73
	v_div_fmas_f32 v70, v70, v71, v74
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:216
	scratch_load_b32 v71, off, off offset:1008
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v168, v70, v67, v45
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v51, v216
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v46, v71, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v47, v61, v215
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v47, v47, v69, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v47, v47, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v47, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v69
	v_fma_f32 v72, -v69, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v46, v47, v46
	v_mul_f32_e32 v73, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v69, v73, v72
	v_fmac_f32_e32 v73, v74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v73, v72
	v_div_fmas_f32 v69, v69, v71, v73
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v167, v69, v47, v46
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v46, v38, v216 :: v_dual_mul_f32 v65, v64, v215
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:212
	scratch_load_b32 v69, off, off offset:996
	v_fma_f32 v65, v65, v68, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v65, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v66
	v_fma_f32 v71, -v66, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v71, v68
	v_div_scale_f32 v71, vcc_lo, v48, v65, v48
	v_mul_f32_e32 v72, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v66, v72, v71
	v_fmac_f32_e32 v72, v73, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v72, v71
	v_div_fmas_f32 v66, v66, v68, v72
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:552
	scratch_load_b32 v68, off, off offset:1000
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v166, v66, v65, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:208
	scratch_load_b32 v66, off, off offset:988
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v37, v216
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(4)
	v_fma_f32 v46, v46, v69, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v47, v54, v215
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v47, v47, v164, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v45, v45, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v67, v45, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v63, v215
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v48, v66, v65
	v_fma_f32 v67, v67, v102, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v65, v48, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v53, v215
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v67, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v162, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v65, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v65, 0xbfb8aa3b, v48
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v67, v67, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v68
	v_fma_f32 v71, -v68, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v45, v67, v45
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v68, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v72, v71
	v_div_fmas_f32 v68, v68, v70, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v102, v68, v67, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:204
	scratch_load_b32 v68, off, off offset:984
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v40, v216
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v47, v47, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v47, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v71, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v46, v47, v46
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v69, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v72, v71
	v_div_fmas_f32 v69, v69, v70, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v164, v69, v47, v46
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:200
	scratch_load_b32 v69, off, off offset:980
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v46, v39, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v48
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v48
	v_rcp_f32_e32 v70, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v66, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v48, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v71, v70
	v_fma_f32 v73, -v66, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v70
	v_fma_f32 v66, -v66, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v70, v72
	v_div_fixup_f32 v162, v66, v65, v48
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:196
	scratch_load_b32 v66, off, off offset:976
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v34, v216
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(4)
	v_fma_f32 v45, v45, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v67, v45, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v56, v215
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v67, v67, v107, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v67, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v67, v67, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v68
	v_fma_f32 v71, -v68, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v45, v67, v45
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v46, v46, v69, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v47, v55, v215
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v73, -v68, v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v47, v47, v106, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v68, v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v68, v68, v70, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v107, v68, v67, v45
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:192
	scratch_load_b32 v68, off, off offset:972
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v33, v216
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v69
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v47, v47, v46
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v69, v70, 1.0
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v48, v48, v66, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v46, v47, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v65, v48, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v65, v42, v215 :: v_dual_mul_f32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v150, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v73, -v69, v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v65, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v72, v73, v70 :: v_dual_mul_f32 v65, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v72, v71
	v_div_fmas_f32 v69, v69, v70, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v172, v69, v47, v46
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:188
	scratch_load_b32 v69, off, off offset:968
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v46, v36, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v48
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v48
	v_rcp_f32_e32 v70, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v66, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v48, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v71, v70
	v_fma_f32 v73, -v66, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v70
	v_fma_f32 v66, -v66, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v70, v72
	v_div_fixup_f32 v106, v66, v65, v48
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:184
	scratch_load_b32 v66, off, off offset:964
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v35, v216
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(4)
	v_fma_f32 v45, v45, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v67, v45, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v41, v215
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v67, v67, v100, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v67, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v67, v67, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v68
	v_fma_f32 v71, -v68, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v45, v67, v45
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v46, v46, v69, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v47, v46, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v47, v44, v215
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v73, -v68, v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v47, v47, v103, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v47, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v68, v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v68, v68, v70, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v150, v68, v67, v45
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v10, v216
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v69
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v47, v47, v46
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v46, v47, v46
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v48, v66, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v72, v71, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v65, v48, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v43, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v73, -v69, v72, v71
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v101, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v72, v73, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v65, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v69, -v69, v72, v71
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v69, v69, v70, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v100, v69, v47, v46
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:180
	scratch_load_b32 v47, off, off offset:960
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v48
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v48
	v_rcp_f32_e32 v70, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v66, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v48, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v71, v70
	v_fma_f32 v73, -v66, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v70
	v_fma_f32 v66, -v66, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v70, v72
	v_div_fixup_f32 v177, v66, v65, v48
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v45, v45, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v45, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v46, v18, v215
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v46, v46, v185, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v46, s3
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
	v_rcp_f32_e32 v67, v47
	v_fma_f32 v68, -v47, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v45, v46, v45
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v47, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v69, v68
	v_div_fmas_f32 v47, v47, v67, v69
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:176
	scratch_load_b32 v69, off, off offset:956
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v9, v216
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v173, v47, v46, v45
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:992
	scratch_load_b32 v46, off, off offset:944
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v67, v67, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v68, v67, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v68, v17, v215
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v68, v68, v147, v67
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v147.h, v45.l
	v_mov_b16_e64 v147.l, v176.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v67, v67, v68, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v50, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v67
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v45, v45, v46, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v192, v45, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v192, 16, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v62, v192
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v93, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v45, v0, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v69
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v68, v68, v67
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v67, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v71, v70
	v_fma_f32 v73, -v69, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v70
	v_fma_f32 v69, -v69, v72, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v69, v69, v70, v72
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:524
	scratch_load_b32 v72, off, off offset:952
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v70, v12, v216
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v174, v69, v68, v67
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, v70, v72, v71
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v71, v70, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v71, v20, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v71, v71, v95, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v70, v71, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v70
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v70
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v72
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v71, v71, v70
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v70, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v72, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:172
	scratch_load_b32 v75, off, off offset:948
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v73, v11, v216
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v101, v72, v71, v70
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, v73, v75, v74
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v74, v73, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v74, v19, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v74, v74, v94, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v74, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v74
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v73
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v74, v74, v75
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v74, 1.0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v75, null, v74, v74, v73
	v_rcp_f32_e32 v76, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v75, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v73, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v75, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v75, -v75, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v75, v75, v76, v78
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v103, v75, v74, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v0
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v45, v45, v46
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, null, v45, v45, v0
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v0, v45, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v48, v47
	v_fma_f32 v66, -v46, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v47
	v_fma_f32 v46, -v46, v65, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v46, v46, v47, v65
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:512
	scratch_load_b32 v65, off, off offset:940
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v47, v49, v147
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v188, v46, v45, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:156
	scratch_load_b32 v46, off, off offset:1072
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v37, v147
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v47, v47, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v48, v47, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v61, v192
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v46, v45
	v_fma_f32 v48, v48, v92, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v45, v0, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v53, v192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v48, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v45, v45, v97, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v175, v0, v45, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v175
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v48, v48, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v65, null, v48, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v47, v48, v47
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v65, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v65, v68, v67
	scratch_load_b32 v67, off, off offset:168 ; 4-byte Folded Reload
	v_div_fmas_f32 v65, v65, v66, v68
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v66, v52, v147
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v189, v65, v48, v47
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v60, v249
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, v66, v151, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v67, v66, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v64, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v67, v67, v138, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v66, v67, s3
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v68, -v68, v71, v70
	scratch_load_b32 v70, off, off offset:164 ; 4-byte Folded Reload
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v69, v51, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v186, v68, v67, v66
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v68.h, v176.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v146, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v70, v69, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v70, v63, v192
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v70, v70, v99, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
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
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
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
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:160
	scratch_load_b32 v74, off, off offset:1076
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v72, v38, v147
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v187, v71, v70, v69
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	scratch_load_b32 v70, off, off offset:720 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v72, v72, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v73, v72, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v73, v54, v192
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v73, v73, v98, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v73, v73, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v73, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v76, -v74, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v72, v73, v72
	v_mul_f32_e32 v77, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v74, v77, v76
	v_fmac_f32_e32 v77, v78, v75
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v78, v34, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v74, -v74, v77, v76
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v76, v87, v192
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v74, v74, v75, v77
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v175
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v45
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v178, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v0, null, v178, v178, v175
	v_rcp_f32_e32 v45, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v0, v45, 1.0
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, vcc_lo, v175, v178, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v46, v45
	v_fma_f32 v48, -v0, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v45
	v_fma_f32 v0, -v0, v47, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v71, v0, v45, v47
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v46, off, off offset:152
	scratch_load_b32 v45, off, off offset:928
	scratch_load_b32 v47, off, off offset:924
	scratch_load_b32 v48, off, off offset:36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v30, v251
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, v0, v45, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v45, v29, v251
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v46, v0, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v45, v45, v47, v48
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v58, v249
	v_mul_f32_e32 v47, v57, v249
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v48, v45, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v46, v46, v143, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v59, v249
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v47, v183, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v0, v46, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v32, v251
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v179, v45, v47, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:480
	scratch_load_b32 v45, off, off offset:920
	s_waitcnt vmcnt(0)
	v_fma_f32 v180, v0, v45, v46
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:472
	scratch_load_b32 v45, off, off offset:916
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v31, v251
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v180, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v181, v0, v45, v47
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v66, v231
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:912
	scratch_load_b32 v0, off, off offset:816
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v181, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v48, v148, v47
	s_waitcnt vmcnt(1)
	v_fma_f32 v65, v65, v66, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v66.l, v45.h
	v_mov_b16_e64 v66.h, v176.l
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v66, v45, v66, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v65, s3
	v_cndmask_b32_e64 v46, v47, v48, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:752
	scratch_load_b32 v67, off, off offset:252
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v47.h, v176.l
	v_cndmask_b16 v159.h, 0x7fff, v66.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:900
	scratch_load_b32 v65, off, off offset:756
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v176.h, v0.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v179, v229 :: v_dual_mul_f32 v45, v45, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v52, v52, v176
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s0, v0, v0
	v_cmp_o_f32_e64 s1, v45, v45
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v38, v38, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v34, v34, v176 :: v_dual_and_b32 v47, 1, v47
	v_mul_f32_e32 v51, v51, v176
	v_mul_f32_e32 v37, v37, v176
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v47, v0, v47, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v46, v227
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v25, v251
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v159.l, 0x7fff, v47.h, s0
	v_mov_b16_e32 v68.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v0, v68, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v46, v46, v48, v67
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v26, v251
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v67, v46, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v48, v48, v65, v154
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v65.l, v45.h
	v_mov_b16_e64 v65.h, v176.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v85, v249
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v45, v65, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v154, v48, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v84, v249
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v67, v149, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v48, v48, v160, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v160.h, 0x7fff, v65.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:460
	scratch_load_b32 v47, off, off offset:744
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v160.l, 0x7fff, v68.h, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v45, v67, s3
	v_cndmask_b32_e64 v45, v46, v48, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v48, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v27, v251
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:456
	scratch_load_b32 v68, off, off offset:316
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v0, v226 :: v_dual_mul_f32 v45, v45, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v46, v46, v47, v65
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v28, v251
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v65, v46, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:896
	scratch_load_b32 v69, off, off offset:336
	s_waitcnt vmcnt(4)
	v_fma_f32 v47, v47, v48, v153
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v0.h
	v_mov_b16_e64 v48.h, v176.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v0, v48, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v153, v47, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v86, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v157.h, 0x7fff, v48.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v21, v249
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v47, v47, v65, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v87, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v66, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v66.l, v45.h
	v_mov_b16_e64 v66.h, v176.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v66, 1, v66
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v225
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v66, v45, v66, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v47, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:452
	scratch_load_b32 v47, off, off offset:312
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v5, v251
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v157.l, 0x7fff, v66.h, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v66, off, off offset:892 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v45, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v46, v46, v47, v65
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v6, v251
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v65, v46, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v65, off, off offset:888 ; 4-byte Folded Reload
	v_fma_f32 v47, v47, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v67, v47, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v48, v65, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v22, v249
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v48, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v66, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v66.l, v0.h
	v_mov_b16_e64 v66.h, v176.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:300
	scratch_load_b32 v67, off, off offset:232
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v66, 1, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v165, v74, v73, v72
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v66, v0, v66, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v47, v65, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:304
	scratch_load_b32 v68, off, off offset:228
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.l, v45.h
	v_mov_b16_e64 v47.h, v176.l
	v_cndmask_b16 v153.h, 0x7fff, v66.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v47, 1, v47
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v45, v47, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v45, v46, v220 :: v_dual_mul_f32 v46, v7, v251
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v153.l, 0x7fff, v47.h, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:292
	scratch_load_b32 v66, off, off offset:936
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v45, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v46, v46, v48, v67
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v8, v251
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v67, v46, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v67, off, off offset:908 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fma_f32 v48, v48, v65, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v65.l, v0.h
	v_mov_b16_e64 v65.h, v176.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v0, v65, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v68, v48, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v68, off, off offset:904 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v23, v249
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v154.h, 0x7fff, v65.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v48, v48, v67, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v24, v249
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v67, v67, v68, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.l, v45.h
	v_mov_b16_e64 v68.h, v176.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v67, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v219
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v68, v45, v68, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v48, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:448
	scratch_load_b32 v48, off, off offset:296
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v1, v251
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v154.l, 0x7fff, v68.h, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v45, v218
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:148
	scratch_load_b32 v68, off, off offset:288
	v_fma_f32 v46, v46, v47, v66
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v2, v251
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v45, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v66, v46, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v66, off, off offset:884 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fma_f32 v47, v47, v48, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v0.h
	v_mov_b16_e64 v48.h, v176.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v0, v48, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v65, v47, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v65, off, off offset:880 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v13, v249
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v151.h, 0x7fff, v48.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v15, v249
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v47, v47, v65, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v14, v249
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v66, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v66.l, v45.h
	v_mov_b16_e64 v66.h, v176.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v217
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v66, v45, v66, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v47, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:440
	scratch_load_b32 v47, off, off offset:284
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v3, v251
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v66.l, v0.h
	v_cndmask_b16 v151.l, 0x7fff, v66.h, s0
	v_mov_b16_e64 v66.h, v176.l
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v45, v45, v169 :: v_dual_and_b32 v66, 1, v66
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v0, v66, 0x7fff
	v_cndmask_b16 v145.h, 0x7fff, v66.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v46, v47, v65
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v4, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v65, v46, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v47, v68, v67
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v16, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v48, v121, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v67, v47, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v46, v46, v48, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v122, v47
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:276
	scratch_load_b32 v67, off, off offset:40
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v122, 16, v246
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v47, v65, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:280
	scratch_load_b32 v68, off, off offset:932
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.l, v45.h
	v_mov_b16_e64 v47.h, v176.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v61, v61, v122
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v170
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v63, v63, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v64, v64, v122 :: v_dual_and_b32 v47, 1, v47
	v_mul_f32_e32 v54, v54, v122
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v53, v53, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v47, v45, v47, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v45, v46, v171 :: v_dual_mul_f32 v46, v29, v216
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v145.l, 0x7fff, v47.h, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:268
	scratch_load_b32 v66, off, off offset:44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v45, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v46, v46, v48, v67
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v30, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v67, v46, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v48, v48, v65, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v65.l, v0.h
	v_mov_b16_e64 v65.h, v176.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v58, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v0, v65, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v68, v48, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v57, v215
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.l, v45.h
	v_mov_b16_e64 v68.h, v176.l
	v_cndmask_b16 v146.h, 0x7fff, v65.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v67, v120, v0
	v_fma_f32 v48, v48, v119, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v119, v16, v192
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v67, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v68, v45, v68, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v48, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:144
	scratch_load_b32 v48, off, off offset:272
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v31, v216
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v168
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v146.l, 0x7fff, v68.h, s4
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v45, v167
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:432
	scratch_load_b32 v68, off, off offset:264
	s_waitcnt vmcnt(4)
	v_fma_f32 v46, v46, v47, v66
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v32, v216
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s0, v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v66, v46, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v66.l, v45.h
	v_mov_b16_e64 v66.h, v176.l
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v45, v66, 0x7fff
	v_cndmask_b16 v143.l, 0x7fff, v66.h, s0
	v_mov_b16_e64 v66.h, v176.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v47, v47, v48, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v0.h
	v_mov_b16_e64 v48.h, v176.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v0, v48, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v65, v47, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v59, v215
	v_mul_f32_e32 v65, v60, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v143.h, 0x7fff, v48.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v84, v215
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v47, v117, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, v65, v118, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v47, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v0, v0, v65, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:428
	scratch_load_b32 v47, off, off offset:728
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v25, v216
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v45, v102
	v_mul_f32_e32 v0, v0, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v45, v45
	v_mov_b16_e32 v66.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v0, v66, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v46, v47, v65
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v26, v216
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v65, v46, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v47, v68, v67
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v85, v215
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v68.h, v176.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v48, v115, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v67, v47, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v87, v215
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v48, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v116, v47
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v28, v216
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v47, v65, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:468
	scratch_load_b32 v65, off, off offset:724
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.l, v45.h
	v_mov_b16_e64 v47.h, v176.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v0, v164 :: v_dual_and_b32 v47, 1, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v45, v47, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v45, v46, v162 :: v_dual_mul_f32 v46, v27, v216
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v46, v46, v139, v140
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v139.l, 0x7fff, v47.h, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:464
	scratch_load_b32 v47, off, off offset:712
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v45, v45
	v_and_b32_e32 v68, 1, v68
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v140, v46, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v139.h, 0x7fff, v66.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v66, off, off offset:876 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v68, v45, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v140.l, 0x7fff, v68.h, s4
	v_mov_b16_e64 v68.h, v176.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v48, v48, v65, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v65.l, v0.h
	v_mov_b16_e64 v65.h, v176.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v0, v65, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v148, v48, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v86, v215
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v140.h, 0x7fff, v65.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v65, off, off offset:872 ; 4-byte Folded Reload
	v_fma_f32 v48, v48, v113, v46
	v_fma_f32 v67, v67, v114, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v113, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v48, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:28
	scratch_load_b32 v48, off, off offset:716
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v67, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v46, v5, v216 :: v_dual_mul_f32 v67, v14, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v45, v45, v172 :: v_dual_mul_f32 v0, v0, v107
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v46, v46, v47, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v6, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v45, v45
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v149, v46, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v47, v47, v48, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v0.h
	v_mov_b16_e64 v48.h, v176.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v0, v48, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v148, v47, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v21, v215
	scratch_load_b32 v148, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v47, v65, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v22, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v66, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v66.l, v45.h
	v_mov_b16_e64 v66.h, v176.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:24
	scratch_load_b32 v65, off, off offset:708
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v66, 1, v66
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v66, v45, v66, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v47, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v8, v216
	v_dual_mul_f32 v46, v7, v216 :: v_dual_mul_f32 v45, v45, v150
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v46, v46, v137, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v137.l, 0x7fff, v66.h, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v66, off, off offset:868 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v137.h, 0x7fff, v48.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v23, v215
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v148, v46, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v47, v47, v65, v149
	scratch_load_b32 v65, off, off offset:864 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v149, v47, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v48, v65, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v24, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v48, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v66, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v66.l, v0.h
	v_mov_b16_e64 v66.h, v176.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:20
	scratch_load_b32 v48, off, off offset:672
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v66, v0, v66, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v47, v65, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:136
	scratch_load_b32 v65, off, off offset:676
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.l, v45.h
	v_mov_b16_e64 v47.h, v176.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v0, v100 :: v_dual_and_b32 v47, 1, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v45, v47, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v45, v46, v177 :: v_dual_mul_f32 v46, v1, v216
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v45, v45
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v45, v68, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v46, v46, v48, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v2, v216
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v149, v46, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v48, v48, v65, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v65.l, v0.h
	v_mov_b16_e64 v65.h, v176.l
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v0, v65, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v148, v48, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v13, v215
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v67, v134, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v48, v48, v133, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v133.l, 0x7fff, v47.h, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:16
	scratch_load_b32 v47, off, off offset:664
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v134.h, 0x7fff, v65.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v65, off, off offset:856 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v48, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:132
	scratch_load_b32 v48, off, off offset:668
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v133.h, 0x7fff, v66.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v66, off, off offset:860 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v67, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v46, v3, v216 :: v_dual_mul_f32 v45, v45, v174
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v134.l, 0x7fff, v68.h, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v67, off, off offset:840 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v173
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v46, v46, v47, v148
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v4, v216
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v148, v46, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v47, v47, v48, v149
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v0.h
	v_mov_b16_e64 v48.h, v176.l
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v48, v0, v48, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v149, v47, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v15, v215
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v102.h, 0x7fff, v48.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v57, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v47, v65, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v16, v215
	v_mul_f32_e32 v57, v57, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v65, v65, v66, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v66.l, v45.h
	v_mov_b16_e64 v66.h, v176.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:8
	scratch_load_b32 v65, off, off offset:660
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v66, 1, v66
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v101
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v66, v45, v66, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v47, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:12
	scratch_load_b32 v47, off, off offset:656
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v29, v147
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v102.l, 0x7fff, v66.h, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:852
	scratch_load_b32 v68, off, off offset:844
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v45, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v46, v46, v47, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v30, v147
	v_mul_f32_e32 v30, v30, v176
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v149, v46, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v47, v47, v65, v148
	scratch_load_b32 v65, off, off offset:848 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v148, v47, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v48, v65, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v58, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v48, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v66, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v66.l, v0.h
	v_mov_b16_e64 v66.h, v176.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:4
	scratch_load_b32 v48, off, off offset:648
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v66, v0, v66, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v47, v65, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:128
	scratch_load_b32 v65, off, off offset:652
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.l, v45.h
	v_mov_b16_e64 v47.h, v176.l
	v_cndmask_b16 v106.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v0, v188 :: v_dual_and_b32 v47, 1, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v47, v45, v47, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v45, v46, v189 :: v_dual_mul_f32 v46, v31, v147
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v31, v176
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v106.l, 0x7fff, v47.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v45, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v46, v46, v48, v148
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v32, v147
	v_mul_f32_e32 v32, v32, v176
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v148, v46, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v48, v48, v65, v149
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v65.l, v0.h
	v_mov_b16_e64 v65.h, v176.l
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v65, v0, v65, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v149, v48, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v59, v192
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:424
	scratch_load_b32 v47, off, off offset:636
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v59, v59, v122
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v107.h, 0x7fff, v65.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v48, v48, v67, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v60, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v67, v68, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.l, v45.h
	v_mov_b16_e64 v68.h, v176.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v67, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v67, off, off offset:836 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v68, 1, v68
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v186
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v68, v45, v68, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v46, v48, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:420
	scratch_load_b32 v48, off, off offset:644
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v25, v147
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v107.l, 0x7fff, v68.h, s4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v68, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v45, v187
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v46, v46, v47, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v26, v147
	v_mul_f32_e32 v26, v26, v176
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v149, v46, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:124
	scratch_load_b32 v66, off, off offset:796
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v47, v47, v48, v148
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v0.h
	v_mov_b16_e64 v48.h, v176.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v0, v48, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v148, v47, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:120
	scratch_load_b32 v65, off, off offset:792
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v47, v39, v147
	v_mul_f32_e32 v39, v39, v176
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v47, v47, v65, v148
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v40, v147
	v_mul_f32_e32 v40, v40, v176
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v148, v47, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v66, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v66, v84, v192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v149, v65, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v66, v67, v46
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v56, v192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v66, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v67, v67, v68, v65
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v68, v55, v192
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v66, v71, v178, v175
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v55, v55, v122
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v68, v68, v69, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v65, v67, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v65, v85, v192 :: v_dual_mul_f32 v46, v46, v66
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v66.h, v176.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v68, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v123, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v123.h, 0x7fff, v48.h, vcc_lo
	v_mov_b16_e32 v66.l, v46.h
	v_cmp_o_f32_e64 s1, v46, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v65, 0xbfb8aa3b, v47 :: v_dual_and_b32 v66, 1, v66
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v68.h, v176.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v67, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v165
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v72, v46, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v66, v27, v147 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v69
	v_mul_f32_e32 v27, v27, v176
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v120.l, 0x7fff, v72.h, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v5, v147
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v48, v67
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_2)
	v_ldexp_f32 v48, v48, v67
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v65, v65, v67
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:116
	scratch_load_b32 v67, off, off offset:632
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, null, v48, v48, v69
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v46, v46, v47
	v_rcp_f32_e32 v75, v74
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v66, v66, v67, v149
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:112
	scratch_load_b32 v67, off, off offset:620
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v149, v66, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:108
	scratch_load_b32 v80, off, off offset:788
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v66, v86, v192
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.l, v45.h
	v_cmp_o_f32_e64 s0, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v45, v68, 0x7fff
	v_mov_b16_e32 v45.l, v0.h
	v_mov_b16_e64 v45.h, v176.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v123.l, 0x7fff, v68.h, s0
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v68, v71
	v_fma_f32 v65, -v71, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v68, v65, v68
	v_div_scale_f32 v65, vcc_lo, v69, v48, v69
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v78, v78, v80, v149
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v80, -v74, v75, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v149, v78, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v75, v80, v75
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v77, v65, v68
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v80, v42, v192
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v45, v0, v45, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v28, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v80, v80, v82, v78
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v28, v176
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v120.h, 0x7fff, v45.h, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v67, v148
	scratch_load_b32 v67, off, off offset:828 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v78, v80, s3
	v_cndmask_b32_e64 v0, v148, v0, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:104
	scratch_load_b32 v81, off, off offset:784
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v82
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v82, v43, v192
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v79, v66, v67, v73
	scratch_load_b32 v66, off, off offset:832 ; 4-byte Folded Reload
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v67, s27, v135
	v_mov_b32_e32 v135, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_add_u32 v103, s27, 4, v67
	v_lshl_add_u32 v101, s27, 5, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v76, v76, v66, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v66, -v71, v77, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v76, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v77, v66, v68 :: v_dual_mul_f32 v66, v33, v147
	v_fma_f32 v65, -v71, v77, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v66, v66, v81, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v81, s4, v47, v46, v47
	v_div_fmas_f32 v68, v65, v68, v77
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v65, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v70, 1, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v148, v66, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v66, v41, v192
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v48, v68, v48, v69
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v100, s34, s33, v70
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v69.h, v176.l
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v41, v41, v122
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v77, v66, v65, v71
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[65:66], null, s27, 48, v[67:68]
	v_add_nc_u32_e32 v66, 0x80, v100
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v70, v81, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v71, v77, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, s5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v73, v79, s3
	s_mov_b32 s27, 0x31027000
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v80, -v74, v70, v81
	v_fmac_f32_e32 v70, v80, v75
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v80, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v45, -v74, v70, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v45, v45, v75, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s0
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v45, v45, v46, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v70, v77
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s5
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v77, v35, v147
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_2)
	v_ldexp_f32 v46, v70, v46
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v45, v68, v45 :: v_dual_mul_f32 v70, v6, v147
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v69.l, v45.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v48.h, v176.l
	v_cmp_o_f32_e64 s0, v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v47, v47, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v69, 1, v69
	v_mov_b16_e32 v48.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v46, v46, v78
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v69, v45, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v48, 1, v48
	v_cndmask_b16 v121.l, 0x7fff, v69.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v48, v0, v48, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v0, 1.0, v47
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v47, v68
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v69.h, v176.l
	v_cndmask_b16 v121.h, 0x7fff, v48.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:100
	scratch_load_b32 v48, off, off offset:616
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v75, vcc_lo, v78, v46, v78
	v_fma_f32 v74, -v68, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v74, v47
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v74, v36, v147
	v_mul_f32_e32 v36, v36, v176
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v80, v75, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v70, v48, v149
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:96
	scratch_load_b32 v70, off, off offset:612
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v149, v48, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:92
	scratch_load_b32 v79, off, off offset:780
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v70, v72, v70, v148
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v74, v74, v79, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v79, v21, v192
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v73, null, v0, v0, v71
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v148, v70, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v70, v22, v192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v149, v74, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v72, v73
	v_div_scale_f32 v81, s1, v71, v0, v71
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v22, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v76, -v73, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v72, v76, v72
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:88
	scratch_load_b32 v76, off, off offset:776
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v88, v81, v72
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v76, v77, v76, v148
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v77, v44, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v148, v76, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v77, v77, v83, v74
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v83, off, off offset:824 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v82, v82, v113, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v74, v77, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v77, off, off offset:820 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v76, v82, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v82
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v82, v17, v192
	v_mul_f32_e32 v17, v17, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v79, v79, v83, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v83, -v68, v80, v75
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v80, v83, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v83, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v70, v70, v77, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v77, -v73, v88, v81
	v_fma_f32 v68, -v68, v80, v75
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v75, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v70, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v88, v77, v72
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v76
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v68, v47, v80
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v68, -v73, v88, v81
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v47, v46, v78
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v48, v79, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v68, v68, v72, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v72, v75
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v45, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v70, 0, 0x42800000, s5
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v78, v9, v147
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v68, v0, v71
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v70, 0xbfb8aa3b, v76 :: v_dual_mul_f32 v71, v7, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v47, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v47, v72, v48
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v45.h
	v_mov_b16_e64 v48.h, v176.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v70
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v70, v8, v147
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v69.l, v0.h
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_and_b32 v48, 1, v48
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v8, v8, v176 :: v_dual_and_b32 v69, 1, v69
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v48, v45, v48, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v46, v68
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v47, v47, v74
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v69, v0, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v116.h, 0x7fff, v48.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:84
	scratch_load_b32 v48, off, off offset:608
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v46
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v68
	v_div_scale_f32 v75, vcc_lo, v74, v47, v74
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v116.l, 0x7fff, v69.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v45, v45, v76
	v_div_scale_f32 v81, s1, v76, v45, v76
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v69.h, v176.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v9, v176
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v73, -v68, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v46, v73, v46 :: v_dual_mul_f32 v73, v10, v147
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v10, v10, v176
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v80, v75, v46
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v70, v48, v149
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:80
	scratch_load_b32 v70, off, off offset:604
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v149, v48, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:76
	scratch_load_b32 v79, off, off offset:772
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v70, v71, v70, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v71, v72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v148, v70, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v73, v73, v79, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v79, v23, v192
	v_dual_mul_f32 v70, v24, v192 :: v_dual_mul_f32 v23, v23, v122
	v_mul_f32_e32 v24, v24, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v77, -v72, v71, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v149, v73, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v71, v77, v71
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:72
	scratch_load_b32 v77, off, off offset:768
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v88, v81, v71
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v77, v78, v77, v148
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v78, v18, v192
	v_mul_f32_e32 v18, v18, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v148, v77, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v78, v78, v207, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, v82, v197, v77
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v78, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v78, off, off offset:808 ; 4-byte Folded Reload
	v_fma_f32 v79, v79, v83, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v83, -v68, v80, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v77, v82, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v80, v83, v46
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v83, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v82
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v82, v19, v192
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v68, v80, v75
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v75, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v68, v46, v80
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v46, v47, v74
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v48, v79, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v70, v70, v78, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v78, -v72, v88, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v70, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v88, v78, v71
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v77
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v78, v11, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v11, v11, v176 :: v_dual_mul_f32 v0, v0, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v72, v88, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v68, v68, v71, v88
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v71, v75
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v70, 0, 0x42800000, s5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v75, v14, v192
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v45, v68, v45, v76
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s5
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v14, v122
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v47, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v47, v71, v48
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v0.h
	v_mov_b16_e64 v48.h, v176.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v46, v70
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v71, v1, v147
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v69.l, v45.h
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_and_b32 v48, 1, v48
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v48, v0, v48, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v2, v147
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v46, v46, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v69, v45, v69, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v47, v47, v73
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v112.h, 0x7fff, v48.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off
	scratch_load_b32 v48, off, off offset:600
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v70, v68
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v112.l, 0x7fff, v69.h, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v46, v46, v77
	v_div_scale_f32 v81, s1, v77, v46, v77
	v_fma_f32 v74, -v68, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v74, v70
	v_div_scale_f32 v74, vcc_lo, v73, v47, v73
	v_mul_f32_e32 v80, v74, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v48, v149
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:68
	scratch_load_b32 v48, off, off offset:596
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v149, v0, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:64
	scratch_load_b32 v79, off, off offset:764
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v12, v147
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v48, v71, v48, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v148, v48, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v79, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v79, v13, v192
	v_mul_f32_e32 v13, v13, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v76, -v72, v71, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v149, v0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v71, v76, v71
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:60
	scratch_load_b32 v76, off, off offset:760
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v88, v81, v71
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v76, v78, v76, v148
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v78, v20, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v148, v76, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v78, v78, v196, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, v82, v96, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v78, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v78, off, off offset:800 ; 4-byte Folded Reload
	v_fma_f32 v79, v79, v83, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v83, -v68, v80, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v79, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v80, v83, v70 :: v_dual_mov_b32 v83, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v109, v76, v82, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v68, v80, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v76
	v_mov_b32_e32 v76, v108
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v68, v68, v70, v80
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v74
	v_mov_b32_e32 v74, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v47, v68, v47, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s5
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v75, v75, v78, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v78, -v72, v88, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v75, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v88, v78, v71
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v75, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v45, v45, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v70, -v72, v88, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v72, 0, 0x42800000, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v70, v70, v71, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v71, v75
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v109
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_mov_b32_e32 v75, v105
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v46, v70, v46, v77
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v70.h, v176.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v72
	v_mov_b32_e32 v72, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v46, v48, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v48, v71, v68
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v68.l, v45.h
	v_mov_b16_e64 v68.h, v176.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v70.l, v46.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v110, 1.0, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v47, v47, v69
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v48, 1, v68
	v_cmp_o_f32_e64 s0, v46, v46
	v_and_b32_e32 v68, 1, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v115, null, v110, v110, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v48, v45, v48, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v45, v4, v147 :: v_dual_mov_b32 v70, v111
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v111, 1.0, v47
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v114, v115
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v108.h, 0x7fff, v48.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:56
	scratch_load_b32 v48, off, off offset:592
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v3, v147
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v117, null, v111, v111, v109
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v113, v46, v68, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v68, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v46, vcc_lo, v0, v110, v0
	v_rcp_f32_e32 v118, v117
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v108.l, 0x7fff, v113.h, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v3, v176
	v_mul_f32_e32 v4, v4, v176
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v45, v45, v48, v149
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:416
	scratch_load_b32 v48, off, off offset:588
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v105, v149, v45, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v50, v176
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v47, v47, v48, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v115, v114, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v148, v47, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v114, v48, v114
	v_fma_f32 v47, -v117, v118, 1.0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v49, v176
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:404
	scratch_load_b32 v49, off, off offset:584
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v50, v46, v114
	v_fmac_f32_e32 v118, v47, v118
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:400
	scratch_load_b32 v47, off, off offset:580
	s_waitcnt vmcnt(2)
	v_fma_f32 v45, v45, v49, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v49, v15, v192
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v47, v48, v47, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v149, v45, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v62, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v62, s1, v109, v111, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v148, v47, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v48, v48, v135, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v69, v62, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v61, v61, v70, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v48, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v48, off, off offset:736 ; 4-byte Folded Reload
	v_fma_f32 v49, v49, v68, v104
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v115, v50, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v61, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v61, 0xbfb8aa3b, v45 :: v_dual_fmac_f32 v50, v68, v114
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v117, v69, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v115, v50, v46
	v_fmac_f32_e32 v69, v68, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v61, 0, 0x42800000, s4
	v_mul_f32_e32 v68, 0xbfb8aa3b, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v46, v114, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v117, v69, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v45
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v68
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v46, v110, v0
	v_div_fmas_f32 v50, v50, v118, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v61, v61
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v104, v49, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v68, v29, v176
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s5
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v49, v50, v111, v109
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v47
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v46, v46, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v49, v61, v50
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v50.h, v176.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v46, v46
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v119, v48, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v105, v48, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v48, v0
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v48, v62
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v62.l, v46.h
	v_mov_b16_e64 v62.h, v176.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v50.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v50, 1, v50
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v48, v48, v61
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v61, null, v49, v49, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v62, v46, v62, 0x7fff
	v_add3_u32 v50, v0, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v0, 1.0, v48
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v48, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v29.l, 0x7fff, v62.h, s0
	v_cndmask_b16 v29.h, 0x7fff, v50.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:388
	scratch_load_b32 v50, off, off offset:540
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v0, v0, v47
	v_fma_f32 v70, -v61, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v48, v70, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v30, v30, v50, v149
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:384
	scratch_load_b32 v50, off, off offset:536
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v149, v30, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:380
	scratch_load_b32 v71, off, off offset:576
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v50, v68, v50, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v68, v69
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v52, v52, v71, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v148, v50, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v50, v58, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v58, vcc_lo, v45, v49, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v149, v52, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v70, -v69, v68, 1.0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v50, v50, v132, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v71, v58, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v64, v64, v72, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v68, v70, v68
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:572
	scratch_load_b32 v72, off, off offset:732
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v50, s3
	v_cndmask_b32_e64 v52, v52, v64, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v51, v51, v70, v152
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, s1, v47, v0, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v57, v57, v72, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v72, -v61, v71, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v152, v51, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v73, v70, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v57, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v71, v72, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v63, v63, v83, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v64, -v69, v73, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v61, v71, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v51, v63, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v63, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v73, v64, v68
	v_div_fmas_f32 v48, v50, v48, v71
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v69, v73, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v45, v48, v49, v45
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v49.h, v176.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v61, 0, 0x42800000, s4
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v50, v50, v68, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v30, v30, v45 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v50, v0, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, s5
	v_exp_f32_e32 v61, v61
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v46, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v49.l, v0.h
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v45, v58
	v_ldexp_f32 v46, v61, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.l, v30.h
	v_mov_b16_e64 v47.h, v176.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v61, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_and_b32 v49, 1, v49
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v47, 1, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v45, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v49, v0, v49, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v48, null, v46, v46, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v47, v30, v47, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v30.l, 0x7fff, v49.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v50, v48
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v49, v25, v176
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v30.h, 0x7fff, v47.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:376
	scratch_load_b32 v47, off, off offset:520
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v57, null, v45, v45, v51
	v_fma_f32 v58, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v50, v58, v50
	v_div_scale_f32 v58, vcc_lo, v52, v46, v52
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v38, v38, v61, v142
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v61, v58, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v142, v38, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v62, -v48, v61, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v54, v54, v76, v38
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v61, v62, v50
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v54, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v32, v47, v148
	scratch_load_b32 v47, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v148, v32, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v60, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v32, v130, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v32, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v32, -v48, v61, v58
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v58, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v32, v50, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v32, v32, v46, v52
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v52, v85, v122
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v31, v31, v47, v214
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v47, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v214, v31, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v59, v59, v131, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v60, -v57, v47, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v59, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v47, v60, v47
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v60, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v39, v39, v58, v206
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v206, v39, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v55, v55, v199, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v55, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v37, v37, v60, v141
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v60, s1, v51, v45, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v141, v37, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v63, v60, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v53, v53, v75, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v54, -v57, v63, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v53, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v53, 0xbfb8aa3b, v38
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v63, v54, v47 :: v_dual_mul_f32 v54, v56, v122
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v56, v84, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v57, v63, v60
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v60, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v48
	v_cndmask_b32_e64 v53, 0, 0x42800000, s4
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v47, v50, v47, v63
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s5
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v38
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v45, v47, v45, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v37
	v_exp_f32_e32 v50, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v31, v31, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v32, v48
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v48.h, v176.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mov_b16_e32 v48.l, v31.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v45, v50, v46
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.l, v0.h
	v_mov_b16_e64 v46.h, v176.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v48, 1, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v32, v32, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v45, 1.0, v45 :: v_dual_and_b32 v46, 1, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v48, v31, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v45, v45, v38
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v46, v0, v46, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v0, 1.0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v32, v47
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v25.h, 0x7fff, v46.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v46, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v50, null, v0, v0, v37
	v_fma_f32 v51, -v47, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v32, v51, v32
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v51, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v26, v26, v46, v213
	scratch_load_b32 v46, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v213, v26, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v40, v40, v51, v210
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v51, vcc_lo, v38, v45, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v210, v40, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v57, v51, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v49, v46, v212
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v212, v46, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v53, -v50, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v53, v49
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v53, v54, v74, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v54, s0, v37, v0, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v53, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v53, v56, v129, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v47, v57, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v58, v54, v49 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v40
	v_fmac_f32_e32 v57, v56, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v50, v58, v54
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v47, -v47, v57, v51
	v_dual_fmac_f32 v58, v56, v49 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v47, v32, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v47, -v50, v58, v54
	s_mov_b32 vcc_lo, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v51
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v32, v45, v38
	v_div_fmas_f32 v47, v47, v49, v58
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v46, v53, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v50, v55
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v47, v0, v37
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v25.l, 0x7fff, v48.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v48, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v39
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s1
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v38, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v37.h, v176.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v50, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v45.l, v0.h
	v_mov_b16_e64 v45.h, v176.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v0, v45, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v28, v28, v48, v205
	scratch_load_b32 v48, off, off offset:496 ; 4-byte Folded Reload
	v_fma_f32 v52, v52, v60, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v52, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v52, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v26, v32
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v32, v51
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v51, v87, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v37.l, v26.h
	v_cmp_o_f32_e64 s0, v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v37, 1, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v32, v32, v38
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, null, v31, v31, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v37, v26, v37, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v38
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v205, v28, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v47, null, v32, v32, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v38, v46, 1.0
	v_fmac_f32_e32 v46, v49, v46
	v_div_scale_f32 v49, vcc_lo, v40, v31, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v53, v49, v46
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v27, v27, v48, v204
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v48, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v204, v27, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v86, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v47, v48, 1.0
	v_fmac_f32_e32 v48, v50, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v50, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v34, v34, v52, v203
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v52, v27, v127, v28
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v27, v33, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v203, v34, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v34, v42, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, s1, v39, v32, v39
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v34, v34, v191, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v54, v42, v48
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v27, v27, v50, v202
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v50, v51, v126, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v51, -v38, v53, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v202, v27, s2
	v_cndmask_b32_e64 v27, v33, v34, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v51, v46
	v_fma_f32 v33, -v47, v54, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v50, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v34, v41, v190, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v27
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v38, v53, v49
	v_fmac_f32_e32 v54, v33, v48
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v28, v52, s3
	v_cndmask_b32_e64 v28, v55, v34, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v41
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v34, v38, v46, v53
	v_fma_f32 v38, -v47, v54, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v28
	v_cndmask_b32_e64 v33, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v31, v34, v31, v40
	v_div_fmas_f32 v38, v38, v48, v54
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v46, v43, v122
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v27
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v41, v26, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v38, v32, v39
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v26.h, 0x7fff, v37.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v34, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v50, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v32.l, v41.h
	v_mov_b16_e64 v32.h, v176.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v26.l, 0x7fff, v45.h, s0
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v32, 1, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v37, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v40, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v38.l, v33.h
	v_add3_u32 v32, v41, v32, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v41, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v38.h, v176.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v34, v31
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v21, v122
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v0, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v34, 1.0, v31 :: v_dual_and_b32 v31, 1, v38
	v_add_f32_e32 v37, 1.0, v0
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v6, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v39, null, v34, v34, v27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v5, v176
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v5, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v31, v33, v31, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v39, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v42, v38
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v42, v35, v176
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, vcc_lo, v27, v34, v27
	v_mul_f32_e32 v21, v35, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v0, v0, v40, v201
	scratch_load_b32 v40, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v45, v36, v41, v198
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v201, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, v198, v45, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v45, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v6, v6, v40, v200
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v40, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v200, v6, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v6, v44, v122
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v42, v45, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v47, v125, v36
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v6, v6, v184, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v44, -v5, v40, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v195, v42, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v36, v36, v43, s3
	v_cndmask_b32_e64 v6, v0, v6, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s1, v28, v37, v28
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v46, v124, v42
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v46, -v39, v21, v35
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v47, v44, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v42, v0, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v42, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v21, v46, v38
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	v_mul_f32_e32 v46, 0xbfb8aa3b, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v35, -v39, v21, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v35, v38, v21
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v21, v21, v34, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v45
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v34.h, v176.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v35, v39, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v22, v22, v42, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v5, v47, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v41, v22, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, s5
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v47, v42, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v22, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v5, -v5, v47, v44
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v21, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v38, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v41, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v5, v5, v40, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_mov_b16_e32 v33.l, v21.h
	v_mov_b16_e64 v33.h, v176.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v5, v37, v28
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v35
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v32.l, 0x7fff, v31.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v38, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v38, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v33, 1, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v28, v28, v6
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v36, v5 :: v_dual_add_f32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v33, v21, v33, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v21, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v35, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v34.l, v5.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v36, null, v22, v22, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v31, 1, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v34, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v27, v35, 1.0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v31, v5, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v35, v37, v35
	v_div_scale_f32 v37, vcc_lo, v6, v28, v6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v8, v8, v38, v194
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v36, v34, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v194, v8, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s1, v0, v22, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v41, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v40, v38, v34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v24, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v24, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v10, v24, v182
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:476
	scratch_load_b32 v41, off, off offset:364
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v21, v193
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v21, v37, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v182, v10, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v7, v193, v7, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v27, v21, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v18, v18, v221, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v21, v39, v35
	v_fma_f32 v39, -v36, v40, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v39, v34
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v9, v9, v24, v163
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v23, v23, v41, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v163, v9, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v7, v7, v23, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v27, v21, v37
	v_div_fmas_f32 v21, v23, v35, v21
	v_fma_f32 v23, -v36, v40, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v6, v21, v28, v6
	v_div_fmas_f32 v23, v23, v34, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v5, v17, v211, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v21, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v8, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v10, v18, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v23, v22, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v9, v5, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v10.h, v176.l
	v_cmp_o_f32_e64 s4, v6, v6
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v7, v0 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.l, v6.h
	v_mov_b16_e64 v7.h, v176.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.l, v0.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v18, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v7, 1, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v10, 1, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v33.l, 0x7fff, v31.h, vcc_lo
	v_add3_u32 v7, v6, v7, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v0, v10, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v10, v12, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v12, v17
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v17, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v11, v17, v158
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v20, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v20, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v10, v18, v161
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v158, v11, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, s1, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v161, v10, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v12, v12, v18
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v18, v19, v122
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v9, v9, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v209, v10
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v18, v18, v208, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v17, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v17, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v18, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, s4, v5, v12, v5
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v22, 0xbfb8aa3b, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v19, v17, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v17, v23, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v28, v24, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v11
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v19, v28, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v28, v34, v17
	v_fma_f32 v19, -v19, v28, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v22, v31
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v31, off, off offset:360 ; 4-byte Folded Reload
	v_fma_f32 v1, v1, v21, v155
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v155, v1, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v20, v156
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v20, null, v12, v12, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v156, v2, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v91, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v14, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v20, v21, 1.0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:52
	scratch_load_b32 v14, off, off offset:352
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v21, v23, v21
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v17, v19, v17, v28
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v18, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v23, v27, v21
	v_div_fixup_f32 v8, v17, v9, v8
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:48
	scratch_load_b32 v17, off, off offset:348
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, null, v18, v18, v10
	v_rcp_f32_e32 v35, v34
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v13, v13, v31, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v20, v23, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v13, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v23, v31, v21
	v_div_scale_f32 v31, null, v22, v22, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v27
	v_rcp_f32_e32 v24, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v20, v21, v23
	v_fma_f32 v20, -v34, v35, 1.0
	v_div_fixup_f32 v5, v19, v12, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v31, v24, 1.0
	v_fmac_f32_e32 v35, v20, v35
	v_div_scale_f32 v12, vcc_lo, v10, v18, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v24, v13, v24
	v_div_scale_f32 v13, s0, v11, v22, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v9, v12, v35
	v_mul_f32_e32 v5, v13, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v31, v5, v13
	v_fmac_f32_e32 v5, v8, v24
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v16, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v13, -v31, v5, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v14, v149
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v14, -v34, v9, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v149, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v9, v14, v35 :: v_dual_mul_f32 v14, v15, v122
	v_fma_f32 v12, -v34, v9, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v90, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v34, 0x7632
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v4, v4, v17, v148
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v9, v12, v35, v9
	s_mov_b32 vcc_lo, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v14, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v4, v148, v4, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v5, v13, v24, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.l, v2.h
	v_mov_b16_e64 v12.h, v176.l
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v89, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v5, v22, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v9, v18, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e64 v9.h, v176.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v5, 1, v9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v4, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v4, 1, v12
	v_mov_b16_e32 v8.l, v3.h
	v_mov_b16_e64 v8.h, v176.l
	v_cndmask_b16 v7.l, 0x7fff, v6.h, vcc_lo
	v_mov_b16_e32 v9.l, v0.h
	v_add3_u32 v5, v1, v5, 0x7fff
	v_add3_u32 v4, v2, v4, 0x7fff
	v_and_b32_e32 v6, 1, v8
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_and_b32_e32 v8, 1, v9
	v_and_b32_e32 v2, 16, v144
	v_cmp_o_f32_e64 s1, v0, v0
	v_add3_u32 v1, v3, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v6, v0, v8, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v4.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s2
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s1
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v27, v29, v112, vcc_lo
	v_dual_cndmask_b32 v31, v0, v33 :: v_dual_cndmask_b32 v0, v33, v0
	v_dual_mov_b32 v33, 0x5410 :: v_dual_cndmask_b32 v28, v112, v29
	v_cndmask_b32_e32 v29, v26, v30, vcc_lo
	v_cndmask_b32_e32 v26, v30, v26, vcc_lo
	v_dual_cndmask_b32 v30, v32, v25 :: v_dual_cndmask_b32 v25, v25, v32
	v_cndmask_b32_e32 v32, v2, v7, vcc_lo
	v_dual_cndmask_b32 v2, v7, v2 :: v_dual_cndmask_b32 v7, 0x1054, v33
	v_cndmask_b32_e32 v33, 0x3276, v34, vcc_lo
	v_cndmask_b32_e32 v3, v159, v157, vcc_lo
	v_cndmask_b32_e32 v5, v160, v153, vcc_lo
	v_cndmask_b32_e32 v8, v154, v145, vcc_lo
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v33, v33, 8, v33
	v_cndmask_b32_e32 v10, v151, v146, vcc_lo
	v_cndmask_b32_e32 v12, v143, v140, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v14, v139, v137 :: v_dual_and_b32 v7, 0x540054, v7
	v_dual_cndmask_b32 v16, v133, v102 :: v_dual_and_b32 v33, 0x760076, v33
	v_cndmask_b32_e32 v18, v134, v106, vcc_lo
	v_cndmask_b32_e32 v20, v107, v120, vcc_lo
	v_cndmask_b32_e32 v22, v123, v121, vcc_lo
	v_cndmask_b32_e32 v24, v116, v108, vcc_lo
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v33, v33, 4, v33
	v_cndmask_b32_e32 v1, v157, v159, vcc_lo
	v_cndmask_b32_e32 v4, v153, v160, vcc_lo
	v_dual_cndmask_b32 v6, v145, v154 :: v_dual_cndmask_b32 v9, v146, v151
	v_cndmask_b32_e32 v11, v140, v143, vcc_lo
	v_cndmask_b32_e32 v13, v137, v139, vcc_lo
	v_cndmask_b32_e32 v15, v102, v133, vcc_lo
	v_cndmask_b32_e32 v17, v106, v134, vcc_lo
	v_cndmask_b32_e32 v19, v120, v107, vcc_lo
	v_cndmask_b32_e32 v21, v121, v123, vcc_lo
	v_cndmask_b32_e32 v23, v108, v116, vcc_lo
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v34, 0x5040504, v7
	v_and_b32_e32 v33, 0x7060706, v33
	v_permlanex16_b32 v35, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v3, v1, v34
	v_perm_b32 v1, v3, v1, v33
	v_perm_b32 v2, v5, v4, v34
	v_perm_b32 v3, v5, v4, v33
	v_perm_b32 v4, v8, v6, v34
	v_perm_b32 v5, v8, v6, v33
	v_perm_b32 v6, v10, v9, v34
	v_perm_b32 v7, v10, v9, v33
	v_perm_b32 v8, v12, v11, v34
	v_perm_b32 v9, v12, v11, v33
	v_perm_b32 v10, v14, v13, v34
	v_perm_b32 v11, v14, v13, v33
	v_perm_b32 v12, v16, v15, v34
	v_perm_b32 v13, v16, v15, v33
	v_perm_b32 v14, v18, v17, v34
	v_perm_b32 v15, v18, v17, v33
	v_perm_b32 v16, v20, v19, v34
	v_perm_b32 v17, v20, v19, v33
	v_perm_b32 v18, v22, v21, v34
	v_perm_b32 v19, v22, v21, v33
	v_perm_b32 v20, v24, v23, v34
	v_perm_b32 v21, v24, v23, v33
	v_perm_b32 v22, v28, v27, v34
	v_perm_b32 v23, v28, v27, v33
	v_perm_b32 v24, v26, v29, v34
	v_perm_b32 v25, v26, v29, v33
	v_perm_b32 v26, v35, v30, v34
	v_perm_b32 v27, v35, v30, v33
	v_perm_b32 v28, v36, v31, v34
	v_perm_b32 v30, v37, v32, v34
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v34, v100, v67, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add_lshl_u32 v35, v100, v103, 1
	s_clause 0x2
	buffer_store_b128 v[0:3], v34, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v34, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v35, s[24:27], 0 offen
	v_add_lshl_u32 v0, v66, v103, 1
	v_add_lshl_u32 v1, v100, v101, 1
	v_add_lshl_u32 v2, v66, v101, 1
	v_add_lshl_u32 v3, v100, v65, 1
	v_perm_b32 v29, v36, v31, v33
	v_perm_b32 v31, v37, v32, v33
	v_add_lshl_u32 v4, v66, v65, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[24:27], 0 offen
	buffer_store_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v3, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v4, s[24:27], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1280
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 1280
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 54764
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 1280
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
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 1280
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 544
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
