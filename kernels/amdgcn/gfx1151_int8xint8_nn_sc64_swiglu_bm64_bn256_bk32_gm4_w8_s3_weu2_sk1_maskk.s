	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
	v_mov_b32_e32 v123, v0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v88, 0xf0, v123
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v114, 3, v88
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
	v_or_b32_e32 v1, s30, v114
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
	s_lshl_b32 s34, s27, 1
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s26, s4, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s16
.Ltmp21:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v0, s34, v114
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s34, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v87, 15, v123
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s33, s31
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v120, v87, 4, v0
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, s26, s18, v120
	v_add_nc_u32_e32 v1, s34, v0
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v2, 0x80000000, v0 :: v_dual_lshlrev_b32 v91, 5, v123
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[6:9], v2, s[36:39], 0 offen
	buffer_load_b128 v[10:13], v1, s[36:39], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s27, v0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v0, s27, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s34, v1
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[14:17], v1, s[36:39], 0 offen
	buffer_load_b128 v[18:21], v2, s[36:39], 0 offen
	.loc	1 357 14 is_stmt 1              ; generate_amdgcn.py:357:14
	v_and_b32_e32 v1, 3, v123
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v123
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v5, s34, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v95, v87, 9, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v89, 3, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v2, s31, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v96, 0x90, v95
	v_add_nc_u32_e32 v56, 0, v95
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s30, v89
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v101, 0x110, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v57, 0, v96
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v90, v2, v89, s3
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v58, 0, v101
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s30, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s5, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s30, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v3, s35, v114
	v_or_b32_e32 v38, s35, v89
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s34, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x1
	buffer_load_b128 v[22:25], v0, s[36:39], 0 offen
	buffer_load_b128 v[26:29], v3, s[36:39], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v0, 0x80000000, v4, s4
	v_cndmask_b32_e64 v3, 0x80000000, v5, s4
	s_clause 0x1
	buffer_load_b128 v[30:33], v0, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v3, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v38
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v38, s35, v90
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_bfe_i32 v2, v123, 4, 1
	v_and_b32_e32 v3, 16, v123
	buffer_load_b64 v[51:52], v0, s[8:11], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s5, 0x5f
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	v_and_b32_e32 v5, 0x90, v2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v2, 16, v87
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[53:54], v38, s[8:11], 0 offen
	v_lshlrev_b32_e32 v0, 3, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v4, 0x778, v0
	v_lshlrev_b32_e32 v0, 4, v123
	v_xor_b32_e32 v92, v5, v4
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 32, v87
	v_or_b32_e32 v5, 48, v87
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v55, 0, v92
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v38, v10, v6, 0x5010400
	v_perm_b32 v10, v10, v6, 0x7030602
	v_perm_b32 v39, v11, v7, 0x5010400
	v_perm_b32 v11, v11, v7, 0x7030602
	v_perm_b32 v40, v12, v8, 0x5010400
	v_perm_b32 v12, v12, v8, 0x7030602
	v_perm_b32 v41, v13, v9, 0x5010400
	v_perm_b32 v42, v13, v9, 0x7030602
	v_and_b16 v6.l, 0xff, v38.l
	v_lshrrev_b32_e32 v43, 8, v38
	v_lshrrev_b32_e32 v44, 24, v38
	v_and_b16 v6.h, 0xff, v38.h
	v_and_b16 v7.l, 0xff, v10.l
	v_lshrrev_b32_e32 v38, 8, v10
	v_lshrrev_b32_e32 v45, 24, v10
	v_and_b16 v7.h, 0xff, v10.h
	v_and_b16 v8.l, 0xff, v39.l
	v_lshrrev_b32_e32 v46, 8, v39
	v_lshrrev_b32_e32 v47, 24, v39
	v_and_b16 v8.h, 0xff, v39.h
	v_and_b16 v9.l, 0xff, v11.l
	v_lshrrev_b32_e32 v39, 8, v11
	v_lshrrev_b32_e32 v48, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	v_and_b16 v10.l, 0xff, v40.l
	v_lshrrev_b32_e32 v49, 8, v40
	v_lshrrev_b32_e32 v50, 24, v40
	v_and_b16 v10.h, 0xff, v40.h
	v_and_b16 v11.l, 0xff, v12.l
	v_lshrrev_b32_e32 v40, 8, v12
	v_lshrrev_b32_e32 v59, 24, v12
	v_and_b16 v11.h, 0xff, v12.h
	v_and_b16 v12.l, 0xff, v41.l
	v_lshrrev_b32_e32 v60, 8, v41
	v_lshrrev_b32_e32 v61, 24, v41
	v_and_b16 v12.h, 0xff, v41.h
	v_and_b16 v13.l, 0xff, v42.l
	v_lshrrev_b32_e32 v41, 8, v42
	v_lshrrev_b32_e32 v62, 24, v42
	v_and_b16 v13.h, 0xff, v42.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v42, v18, v14, 0x5010400
	v_perm_b32 v63, v18, v14, 0x7030602
	v_perm_b32 v64, v19, v15, 0x5010400
	v_perm_b32 v65, v19, v15, 0x7030602
	v_perm_b32 v66, v20, v16, 0x5010400
	v_perm_b32 v67, v20, v16, 0x7030602
	v_perm_b32 v68, v21, v17, 0x5010400
	v_perm_b32 v69, v21, v17, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v14.l, 8, v43.l
	v_lshlrev_b16 v14.h, 8, v44.l
	v_lshlrev_b16 v15.l, 8, v38.l
	v_lshlrev_b16 v15.h, 8, v45.l
	v_lshlrev_b16 v16.l, 8, v46.l
	v_lshlrev_b16 v16.h, 8, v47.l
	v_lshlrev_b16 v17.l, 8, v39.l
	v_lshlrev_b16 v17.h, 8, v48.l
	v_lshlrev_b16 v18.l, 8, v49.l
	v_lshlrev_b16 v18.h, 8, v50.l
	v_lshlrev_b16 v19.l, 8, v40.l
	v_lshlrev_b16 v19.h, 8, v59.l
	v_lshlrev_b16 v20.l, 8, v60.l
	v_lshlrev_b16 v20.h, 8, v61.l
	v_lshlrev_b16 v21.l, 8, v41.l
	v_lshlrev_b16 v21.h, 8, v62.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v38.l, 0xff, v42.l
	v_lshrrev_b32_e32 v46, 8, v42
	v_lshrrev_b32_e32 v47, 24, v42
	v_and_b16 v38.h, 0xff, v42.h
	v_and_b16 v39.l, 0xff, v63.l
	v_lshrrev_b32_e32 v48, 8, v63
	v_lshrrev_b32_e32 v49, 24, v63
	v_and_b16 v39.h, 0xff, v63.h
	v_and_b16 v40.l, 0xff, v64.l
	v_lshrrev_b32_e32 v50, 8, v64
	v_lshrrev_b32_e32 v59, 24, v64
	v_and_b16 v40.h, 0xff, v64.h
	v_and_b16 v41.l, 0xff, v65.l
	v_lshrrev_b32_e32 v60, 8, v65
	v_lshrrev_b32_e32 v61, 24, v65
	v_and_b16 v41.h, 0xff, v65.h
	v_and_b16 v42.l, 0xff, v66.l
	v_lshrrev_b32_e32 v62, 8, v66
	v_lshrrev_b32_e32 v63, 24, v66
	v_and_b16 v42.h, 0xff, v66.h
	v_and_b16 v43.l, 0xff, v67.l
	v_lshrrev_b32_e32 v64, 8, v67
	v_lshrrev_b32_e32 v65, 24, v67
	v_and_b16 v43.h, 0xff, v67.h
	v_and_b16 v44.l, 0xff, v68.l
	v_lshrrev_b32_e32 v66, 8, v68
	v_lshrrev_b32_e32 v67, 24, v68
	v_and_b16 v44.h, 0xff, v68.h
	v_and_b16 v45.l, 0xff, v69.l
	v_lshrrev_b32_e32 v68, 8, v69
	v_lshrrev_b32_e32 v70, 24, v69
	v_and_b16 v45.h, 0xff, v69.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v69, v26, v22, 0x5010400
	v_perm_b32 v26, v26, v22, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v75, v34, v30, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v71, v27, v23, 0x5010400
	v_perm_b32 v27, v27, v23, 0x7030602
	v_perm_b32 v72, v28, v24, 0x5010400
	v_perm_b32 v28, v28, v24, 0x7030602
	v_perm_b32 v73, v29, v25, 0x5010400
	v_perm_b32 v74, v29, v25, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v76, v35, v31, 0x5010400
	v_perm_b32 v35, v35, v31, 0x7030602
	v_perm_b32 v77, v36, v32, 0x5010400
	v_perm_b32 v36, v36, v32, 0x7030602
	v_perm_b32 v78, v37, v33, 0x5010400
	v_perm_b32 v79, v37, v33, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v10.h, v10.h, v18.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.l, 8, v46.l
	v_lshlrev_b16 v15.l, 8, v48.l
	v_lshlrev_b16 v18.h, 8, v63.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v46, 8, v69
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v11.l, v11.l, v19.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v14.h, 8, v47.l
	v_lshlrev_b16 v15.h, 8, v49.l
	v_lshlrev_b16 v19.l, 8, v64.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v47, 24, v69
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v11.h, v11.h, v19.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v16.l, 8, v50.l
	v_lshlrev_b16 v19.h, 8, v65.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v48, 8, v26
	v_or_b16 v8.h, v8.h, v16.h
	v_or_b16 v12.l, v12.l, v20.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v16.h, 8, v59.l
	v_lshlrev_b16 v20.l, 8, v66.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v49, 24, v26
	v_or_b16 v13.h, v13.h, v21.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v21.h, 8, v70.l
	v_lshrrev_b32_e32 v70, 8, v75
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v12.h, v12.h, v20.h
	v_or_b16 v13.l, v13.l, v21.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v17.l, 8, v60.l
	v_lshlrev_b16 v17.h, 8, v61.l
	v_lshlrev_b16 v18.l, 8, v62.l
	v_lshlrev_b16 v20.h, 8, v67.l
	v_lshlrev_b16 v21.l, 8, v68.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v22.l, 0xff, v69.l
	v_and_b16 v22.h, 0xff, v69.h
	v_and_b16 v23.l, 0xff, v26.l
	v_and_b16 v23.h, 0xff, v26.h
	v_and_b16 v24.l, 0xff, v71.l
	v_lshrrev_b32_e32 v50, 8, v71
	v_lshrrev_b32_e32 v59, 24, v71
	v_and_b16 v24.h, 0xff, v71.h
	v_and_b16 v25.l, 0xff, v27.l
	v_lshrrev_b32_e32 v60, 8, v27
	v_lshrrev_b32_e32 v61, 24, v27
	v_and_b16 v25.h, 0xff, v27.h
	v_and_b16 v26.l, 0xff, v72.l
	v_lshrrev_b32_e32 v62, 8, v72
	v_lshrrev_b32_e32 v63, 24, v72
	v_and_b16 v26.h, 0xff, v72.h
	v_and_b16 v27.l, 0xff, v28.l
	v_lshrrev_b32_e32 v64, 8, v28
	v_lshrrev_b32_e32 v65, 24, v28
	v_and_b16 v27.h, 0xff, v28.h
	v_and_b16 v28.l, 0xff, v73.l
	v_lshrrev_b32_e32 v66, 8, v73
	v_lshrrev_b32_e32 v67, 24, v73
	v_and_b16 v28.h, 0xff, v73.h
	v_and_b16 v29.l, 0xff, v74.l
	v_lshrrev_b32_e32 v68, 8, v74
	v_lshrrev_b32_e32 v69, 24, v74
	v_and_b16 v29.h, 0xff, v74.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v30.l, 0xff, v75.l
	v_lshrrev_b32_e32 v71, 24, v75
	v_and_b16 v30.h, 0xff, v75.h
	v_and_b16 v31.l, 0xff, v34.l
	v_lshrrev_b32_e32 v72, 8, v34
	v_lshrrev_b32_e32 v73, 24, v34
	v_and_b16 v31.h, 0xff, v34.h
	v_and_b16 v32.l, 0xff, v76.l
	v_lshrrev_b32_e32 v74, 8, v76
	v_lshrrev_b32_e32 v75, 24, v76
	v_and_b16 v32.h, 0xff, v76.h
	v_and_b16 v33.l, 0xff, v35.l
	v_lshrrev_b32_e32 v76, 8, v35
	v_lshrrev_b32_e32 v80, 24, v35
	v_and_b16 v33.h, 0xff, v35.h
	v_and_b16 v34.l, 0xff, v77.l
	v_lshrrev_b32_e32 v81, 8, v77
	v_lshrrev_b32_e32 v82, 24, v77
	v_and_b16 v34.h, 0xff, v77.h
	v_and_b16 v35.l, 0xff, v36.l
	v_lshrrev_b32_e32 v77, 8, v36
	v_lshrrev_b32_e32 v83, 24, v36
	v_and_b16 v35.h, 0xff, v36.h
	v_and_b16 v36.l, 0xff, v78.l
	v_lshrrev_b32_e32 v84, 8, v78
	v_lshrrev_b32_e32 v85, 24, v78
	v_and_b16 v36.h, 0xff, v78.h
	v_lshrrev_b32_e32 v78, 8, v79
	v_lshrrev_b32_e32 v86, 24, v79
	v_or_b16 v14.l, v38.l, v14.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v56, v6
	ds_store_b16_d16_hi v56, v6 offset:32
	ds_store_b16 v56, v7 offset:64
	ds_store_b16_d16_hi v56, v7 offset:96
	ds_store_b16_d16_hi v57, v8 offset:32
	ds_store_b16 v57, v9 offset:64
	ds_store_b16_d16_hi v57, v9 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v6.h, v39.l, v15.l
	v_or_b16 v15.l, v42.h, v18.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.h, 8, v46.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v7.l, v39.h, v15.h
	v_or_b16 v15.h, v43.l, v19.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v19.l, 8, v47.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v7.h, v40.l, v16.l
	v_or_b16 v16.l, v43.h, v19.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v19.h, 8, v48.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v8.h, v40.h, v16.h
	v_or_b16 v16.h, v44.l, v20.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v20.l, 8, v49.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v6.l, v38.h, v14.h
	v_lshlrev_b16 v42.h, 8, v70.l
	v_and_b16 v37.l, 0xff, v79.l
	v_and_b16 v37.h, 0xff, v79.h
	v_or_b16 v9.l, v41.l, v17.l
	v_or_b16 v9.h, v41.h, v17.h
	v_or_b16 v14.h, v42.l, v18.l
	v_or_b16 v17.l, v44.h, v20.h
	v_or_b16 v17.h, v45.l, v21.l
	v_or_b16 v18.l, v45.h, v21.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v20.h, 8, v50.l
	v_lshlrev_b16 v21.l, 8, v59.l
	v_lshlrev_b16 v21.h, 8, v60.l
	v_lshlrev_b16 v38.l, 8, v61.l
	v_lshlrev_b16 v38.h, 8, v62.l
	v_lshlrev_b16 v39.l, 8, v63.l
	v_lshlrev_b16 v39.h, 8, v64.l
	v_lshlrev_b16 v40.l, 8, v65.l
	v_lshlrev_b16 v40.h, 8, v66.l
	v_lshlrev_b16 v41.l, 8, v67.l
	v_lshlrev_b16 v41.h, 8, v68.l
	v_lshlrev_b16 v42.l, 8, v69.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v43.l, 8, v71.l
	v_lshlrev_b16 v43.h, 8, v72.l
	v_lshlrev_b16 v44.l, 8, v73.l
	v_lshlrev_b16 v44.h, 8, v74.l
	v_lshlrev_b16 v45.l, 8, v75.l
	v_lshlrev_b16 v45.h, 8, v76.l
	v_lshlrev_b16 v46.l, 8, v80.l
	v_lshlrev_b16 v46.h, 8, v81.l
	v_lshlrev_b16 v47.l, 8, v82.l
	v_lshlrev_b16 v47.h, 8, v77.l
	v_lshlrev_b16 v48.l, 8, v83.l
	v_lshlrev_b16 v48.h, 8, v84.l
	v_lshlrev_b16 v49.l, 8, v85.l
	v_lshlrev_b16 v49.h, 8, v78.l
	v_lshlrev_b16 v50.l, 8, v86.l
	ds_store_b16 v56, v14 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v8
	ds_store_b16 v58, v10
	ds_store_b16_d16_hi v58, v10 offset:32
	ds_store_b16 v58, v11 offset:64
	ds_store_b16_d16_hi v58, v11 offset:96
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v55, v[51:52] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v56, v6 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v56, v12 offset:384
	ds_store_b16_d16_hi v56, v12 offset:416
	ds_store_b16 v56, v13 offset:448
	ds_store_b16_d16_hi v56, v13 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v56, v6 offset:16416
	ds_store_b16 v56, v7 offset:16480
	ds_store_b16_d16_hi v57, v7 offset:16384
	ds_store_b16_d16_hi v57, v8 offset:16416
	ds_store_b16 v57, v9 offset:16448
	ds_store_b16_d16_hi v57, v9 offset:16480
	ds_store_b16_d16_hi v58, v14 offset:16384
	ds_store_b16 v58, v15 offset:16416
	ds_store_b16_d16_hi v58, v15 offset:16448
	ds_store_b16 v58, v16 offset:16480
	ds_store_b16_d16_hi v56, v16 offset:16768
	ds_store_b16 v56, v17 offset:16800
	ds_store_b16_d16_hi v56, v17 offset:16832
	ds_store_b16 v56, v18 offset:16864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v6.l, v22.l, v18.h
	v_or_b16 v6.h, v22.h, v19.l
	v_or_b16 v7.l, v23.l, v19.h
	v_or_b16 v7.h, v23.h, v20.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v14.l, v30.l, v42.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v8.l, v24.l, v20.h
	v_or_b16 v8.h, v24.h, v21.l
	v_or_b16 v9.l, v25.l, v21.h
	v_or_b16 v9.h, v25.h, v38.l
	v_or_b16 v10.l, v26.l, v38.h
	v_or_b16 v10.h, v26.h, v39.l
	v_or_b16 v11.l, v27.l, v39.h
	v_or_b16 v11.h, v27.h, v40.l
	v_or_b16 v12.l, v28.l, v40.h
	v_or_b16 v12.h, v28.h, v41.l
	v_or_b16 v13.l, v29.l, v41.h
	v_or_b16 v13.h, v29.h, v42.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
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
	v_or_b16 v20.l, v36.l, v48.h
	v_or_b16 v20.h, v36.h, v49.l
	v_or_b16 v21.l, v37.l, v49.h
	v_or_b16 v21.h, v37.h, v50.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v56, v6 offset:8192
	ds_store_b16_d16_hi v56, v6 offset:8224
	ds_store_b16 v56, v7 offset:8256
	ds_store_b16_d16_hi v56, v7 offset:8288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v56, v14 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v8 offset:8192
	ds_store_b16_d16_hi v57, v8 offset:8224
	ds_store_b16 v57, v9 offset:8256
	ds_store_b16_d16_hi v57, v9 offset:8288
	ds_store_b16 v58, v10 offset:8192
	ds_store_b16_d16_hi v58, v10 offset:8224
	ds_store_b16 v58, v11 offset:8256
	ds_store_b16_d16_hi v58, v11 offset:8288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v55, v[53:54] offset:34816
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v56, v15 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v56, v12 offset:8576
	ds_store_b16_d16_hi v56, v12 offset:8608
	ds_store_b16 v56, v13 offset:8640
	ds_store_b16_d16_hi v56, v13 offset:8672
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v56, v14 offset:24608
	ds_store_b16_d16_hi v56, v15 offset:24672
	ds_store_b16 v57, v16 offset:24576
	ds_store_b16_d16_hi v57, v16 offset:24608
	ds_store_b16 v57, v17 offset:24640
	ds_store_b16_d16_hi v57, v17 offset:24672
	ds_store_b16 v58, v18 offset:24576
	ds_store_b16_d16_hi v58, v18 offset:24608
	ds_store_b16 v58, v19 offset:24640
	ds_store_b16_d16_hi v58, v19 offset:24672
	ds_store_b16 v56, v20 offset:24960
	ds_store_b16_d16_hi v56, v20 offset:24992
	ds_store_b16 v56, v21 offset:25024
	ds_store_b16_d16_hi v56, v21 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v36, 5, v123
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v8, 0xe00, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v7, 4, v123
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 8, v123
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v13, 0x160, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v11, v1, 5, v8
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr11
.LBB0_3:                                ; %Flow1205
	s_load_b64 s[24:25], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v3
	v_or_b32_e32 v3, s33, v87
	v_or_b32_e32 v2, s33, v2
	v_or_b32_e32 v4, s33, v4
	v_or_b32_e32 v5, s33, v5
	s_ashr_i32 s44, s6, 6
	v_or_b32_e32 v8, s26, v123
	v_mul_lo_u32 v180, v3, s44
	v_mul_lo_u32 v210, v2, s44
	v_mul_lo_u32 v203, v4, s44
	v_mul_lo_u32 v2, v5, s44
	v_lshlrev_b32_e32 v141, 2, v88
	v_lshlrev_b32_e32 v142, 1, v123
	v_lshlrev_b32_e32 v140, 1, v88
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v8, off offset:632
	scratch_store_b32 off, v180, off offset:636
	scratch_store_b32 off, v87, off offset:728
	scratch_store_b32 off, v88, off offset:732
	scratch_store_b32 off, v2, off offset:628
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v123, 2, 1
	v_bfe_i32 v3, v123, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v3, 0x110, v3
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v0, 0xe00, v0
	v_and_b32_e32 v2, 0x90, v2
	v_and_b32_e32 v9, 28, v142
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v4, s34, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v1, 5, v0
	v_xor_b32_e32 v0, v2, v3
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v205, 0
	scratch_store_b32 off, v1, off offset:756 ; 4-byte Folded Spill
	v_or_b32_e32 v1, v0, v1
	v_and_b32_e32 v0, 32, v91
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v25, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v0, 0, v141, v0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v0, v0, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:716
	scratch_store_b32 off, v140, off offset:740
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v0, 0, v140
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v208, 0
	v_mov_b32_e32 v191, 0
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:668
	scratch_store_b32 off, v142, off offset:748
	v_dual_mov_b32 v233, 0 :: v_dual_and_b32 v4, 0x160, v91
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v29, 0
	v_or_b32_e32 v2, v2, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:676
	scratch_store_b32 off, v1, off offset:672
	v_xor_b32_e32 v1, 16, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v91, off offset:752
	scratch_store_b32 off, v0, off offset:4
	scratch_store_b32 off, v4, off offset:760
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v123, off offset:736
	scratch_store_b32 off, v1, off offset:680
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_mov_b32_e32 v243, 0
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_mov_b32_e32 v239, 0
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b128 off, v[1:4], off offset:684
	scratch_store_b128 off, v[5:8], off offset:700
	scratch_store_b32 off, v0, off offset:8
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v168, 0
	v_mov_b32_e32 v174, 0
	v_mov_b32_e32 v182, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s15, s5, 5
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_add_i32 s1, s35, 32
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s14, 1
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s15, s15, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.Ltmp23:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v141, off offset:744
	scratch_store_b32 off, v0, off offset:12
	scratch_store_b32 off, v210, off offset:640
	scratch_store_b32 off, v203, off offset:644
	scratch_store_b32 off, v92, off offset:724
	scratch_store_b32 off, v89, off offset:648
	scratch_store_b32 off, v90, off offset:652
	scratch_store_b32 off, v95, off offset:656
	scratch_store_b32 off, v96, off offset:660
	scratch_store_b32 off, v101, off offset:664
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v233, off offset:208
	scratch_store_b32 off, v33, off offset:16
	scratch_store_b32 off, v39, off offset:204
	scratch_store_b32 off, v34, off offset:200
	scratch_store_b32 off, v112, off offset:196
	scratch_store_b32 off, v32, off offset:192
	scratch_store_b32 off, v243, off offset:188
	scratch_store_b32 off, v29, off offset:184
	scratch_store_b32 off, v3, off offset:180
	scratch_store_b32 off, v214, off offset:272
	scratch_store_b32 off, v207, off offset:268
	scratch_store_b32 off, v202, off offset:264
	scratch_store_b32 off, v201, off offset:260
	scratch_store_b32 off, v205, off offset:256
	scratch_store_b32 off, v206, off offset:252
	scratch_store_b32 off, v208, off offset:176
	scratch_store_b32 off, v185, off offset:172
	scratch_store_b32 off, v184, off offset:168
	scratch_store_b32 off, v179, off offset:164
	scratch_store_b32 off, v178, off offset:160
	scratch_store_b32 off, v176, off offset:156
	scratch_store_b32 off, v173, off offset:152
	scratch_store_b32 off, v200, off offset:248
	scratch_store_b32 off, v162, off offset:244
	scratch_store_b32 off, v159, off offset:148
	scratch_store_b32 off, v158, off offset:144
	scratch_store_b32 off, v118, off offset:140
	scratch_store_b32 off, v115, off offset:136
	scratch_store_b32 off, v65, off offset:132
	scratch_store_b32 off, v64, off offset:128
	scratch_store_b32 off, v63, off offset:124
	scratch_store_b32 off, v62, off offset:120
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v61, off offset:116
	scratch_store_b32 off, v60, off offset:112
	scratch_store_b32 off, v51, off offset:108
	scratch_store_b32 off, v49, off offset:104
	scratch_store_b32 off, v19, off offset:100
	scratch_store_b32 off, v48, off offset:96
	scratch_store_b32 off, v50, off offset:92
	scratch_store_b32 off, v18, off offset:88
	scratch_store_b32 off, v20, off offset:84
	scratch_store_b32 off, v47, off offset:80
	scratch_store_b32 off, v45, off offset:76
	scratch_store_b32 off, v17, off offset:72
	scratch_store_b32 off, v43, off offset:68
	scratch_store_b32 off, v41, off offset:64
	scratch_store_b32 off, v46, off offset:60
	scratch_store_b32 off, v16, off offset:56
	scratch_store_b32 off, v40, off offset:52
	scratch_store_b32 off, v38, off offset:48
	scratch_store_b32 off, v15, off offset:44
	scratch_store_b32 off, v14, off offset:40
	scratch_store_b32 off, v2, off offset:36
	scratch_store_b32 off, v31, off offset:32
	scratch_store_b32 off, v12, off offset:28
	scratch_store_b32 off, v10, off offset:24
	scratch_store_b32 off, v175, off offset:240
	scratch_store_b32 off, v174, off offset:236
	scratch_store_b32 off, v9, off offset:20
	scratch_store_b32 off, v168, off offset:232
	scratch_store_b32 off, v177, off offset:228
	scratch_store_b32 off, v183, off offset:224
	scratch_store_b32 off, v182, off offset:220
	scratch_store_b32 off, v106, off offset:216
	scratch_store_b32 off, v157, off offset:212 ; 4-byte Folded Spill
	scratch_load_b32 v2, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 5
	s_mov_b32 s18, s16
	s_mov_b32 s16, s30
	s_mov_b32 s30, s35
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s1, s19
	scratch_load_b32 v3, off, off offset:680 ; 4-byte Folded Reload
	v_dual_mov_b32 v233, v163 :: v_dual_add_nc_u32 v10, s35, v90
	v_dual_mov_b32 v112, v124 :: v_dual_mov_b32 v113, v85
	v_mov_b32_e32 v245, v230
	s_waitcnt vmcnt(1)
	v_xor_b32_e32 v9, 16, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v0, s49, v2
	scratch_load_b32 v2, off, off offset:672 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v11, s49, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s35, v89
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, s18, v3
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v19, s48, v3
	v_mov_b32_e32 v3, v222
	s_mov_b32 s49, s47
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b64 v[6:7], v9, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v9, v197 :: v_dual_add_nc_u32 v12, s18, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s35, s34
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s18, s18, s26
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[6:7], off offset:500 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[200:203], off, off offset:684
	scratch_load_b128 v[204:207], off, off offset:700
	ds_load_b128 v[60:63], v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[64:67], v12
	ds_load_b128 v[95:98], v12 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[99:102], v0 offset:512
	ds_load_b128 v[103:106], v0 offset:1024
	ds_load_b128 v[115:118], v0 offset:1536
	ds_load_b128 v[107:110], v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[77:80], v13
	ds_load_b128 v[124:127], v13 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[156:159], v11 offset:512
	ds_load_b128 v[187:190], v11 offset:1024
	ds_load_b128 v[208:211], v11 offset:1536
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v0, s48, v2
	s_mov_b32 s48, s45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt vmcnt(0) lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[11:18], v[64:67], v[60:63], v[200:207] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[64:67], v[99:102], v[200:207] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[64:67], v[103:106], v[200:207] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[64:67], v[115:118], v[200:207] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[64:67], v0
	ds_load_b128 v[248:251], v0 offset:4096
	ds_load_b128 v[176:179], v19
	ds_load_b128 v[182:185], v19 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[28:35], v[95:98], v[60:63], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[95:98], v[99:102], v[200:207] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[11:18], v[77:80], v[107:110], v[11:18] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[77:80], v[156:159], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[77:80], v[187:190], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[208:211], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[95:98], v[103:106], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[95:98], v[115:118], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[28:35], v[124:127], v[107:110], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[124:127], v[156:159], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[124:127], v[187:190], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[124:127], v[208:211], v[87:94] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[124:131], v[64:67], v[60:63], v[200:207] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[132:139], v[248:251], v[60:63], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[64:67], v[99:102], v[200:207] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[124:131], v[176:179], v[107:110], v[124:131] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[132:139], v[182:185], v[107:110], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[248:251], v[99:102], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[176:179], v[156:159], v[140:147] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v125
	v_wmma_i32_16x16x16_iu8 v[160:167], v[64:67], v[103:106], v[200:207] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[182:185], v[156:159], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[248:251], v[103:106], v[200:207] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v124
	v_wmma_i32_16x16x16_iu8 v[160:167], v[176:179], v[187:190], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[182:185], v[187:190], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[64:67], v[115:118], v[200:207] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v127
	v_wmma_i32_16x16x16_iu8 v[103:110], v[248:251], v[115:118], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[176:179], v[208:211], v[95:102] neg_lo:[1,1,0]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v66, s18, v120
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v126
	v_wmma_i32_16x16x16_iu8 v[103:110], v[182:185], v[208:211], v[103:110] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v184, v12
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v12, s35, v114
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v61, v49
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v129
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v49, v53
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v248, v81
	v_cvt_f32_i32_e32 v81, v91
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v12, 0x80000000, v66, vcc_lo
	scratch_load_b32 v53, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v48
	v_cvt_f32_i32_e32 v48, v52
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v131
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v211, v83
	scratch_load_b32 v52, off, off offset:716 ; 4-byte Folded Reload
	v_mov_b32_e32 v19, v238
	v_cvt_f32_i32_e32 v65, v18
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v130
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v63, v31
	v_cvt_f32_i32_e32 v124, v32
	v_mov_b32_e32 v238, v235
	v_cvt_f32_i32_e32 v185, v16
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v29
	v_cvt_f32_i32_e32 v208, v17
	v_cvt_f32_i32_e32 v188, v74
	v_cvt_f32_i32_e32 v159, v11
	v_cvt_f32_i32_e32 v158, v14
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	v_cvt_f32_i32_e32 v118, v13
	v_cvt_f32_i32_e32 v115, v15
	v_cvt_f32_i32_e32 v64, v28
	v_cvt_f32_i32_e32 v62, v30
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	v_cvt_f32_i32_e32 v251, v80
	v_cvt_f32_i32_e32 v250, v79
	v_cvt_f32_i32_e32 v249, v82
	v_cvt_f32_i32_e32 v210, v70
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	v_cvt_f32_i32_e32 v209, v69
	v_cvt_f32_i32_e32 v190, v72
	v_cvt_f32_i32_e32 v189, v71
	v_cvt_f32_i32_e32 v187, v73
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v133
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v76
	v_cvt_f32_i32_e32 v116, v75
	v_cvt_f32_i32_e32 v82, v92
	v_cvt_f32_i32_e32 v213, v84
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v132
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v84, v94
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v107, v107
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v135
	v_mov_b32_e32 v33, v247
	v_mov_b32_e32 v13, v224
	v_mov_b32_e32 v31, v252
	v_mov_b32_e32 v75, v215
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v134
	v_mov_b32_e32 v73, v1
	v_mov_b32_e32 v15, v111
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v137
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v136
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v139
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v138
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	v_mov_b32_e32 v37, v86
	scratch_store_b32 off, v0, off offset:560 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v39
	v_mov_b32_e32 v39, v237
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v38
	scratch_store_b32 off, v0, off offset:572 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v41
	v_mov_b32_e32 v41, v8
	scratch_store_b32 off, v0, off offset:576 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v40
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v43
	v_mov_b32_e32 v43, v114
	scratch_store_b32 off, v0, off offset:584 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v42
	v_mov_b32_e32 v42, v120
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v141
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v140
	scratch_store_b32 off, v0, off offset:536 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v143
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v142
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v145
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v144
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v147
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v146
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v45
	v_cvt_f32_i32_e32 v45, v56
	scratch_store_b32 off, v0, off offset:592 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v44
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v47
	v_cvt_f32_i32_e32 v47, v55
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v46
	v_cvt_f32_i32_e32 v46, v54
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v149
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v148
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v151
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v150
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v153
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v152
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v155
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v154
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v57
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v59
	scratch_store_b32 off, v0, off offset:616 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v58
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v161
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v160
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v163
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v162
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v165
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v164
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v167
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v166
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v78
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v77
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v169
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v168
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v171
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v170
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v173
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v172
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v175
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v174
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v96, v87
	v_cvt_f32_i32_e32 v87, v93
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v89
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v98
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v97
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v100
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v99
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v102
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v102, v90
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v101, v88
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v0, v104
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v103
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v106
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v105
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v108
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v110
	v_cvt_f32_i32_e32 v110, v109
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s18, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s18, s18, s27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[88:91], v12, s[36:39], 0 offen
	buffer_load_b128 v[97:100], v66, s[36:39], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v12, s18, v120
	v_add_nc_u32_e32 v66, s18, v0
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s16, 31
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v0, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s18, 26
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s16, s16, s18
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s16, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s16, s34
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s16, s44
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s14, 1
	s_cmp_lt_i32 s14, 2
	s_cselect_b32 s14, s14, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s19, s14, 13
	s_waitcnt vmcnt(1)
	v_perm_b32 v108, v97, v88, 0x5010400
	v_perm_b32 v109, v97, v88, 0x7030602
	v_perm_b32 v164, v98, v89, 0x5010400
	v_perm_b32 v165, v98, v89, 0x7030602
	v_perm_b32 v157, v99, v90, 0x5010400
	v_perm_b32 v156, v99, v90, 0x7030602
	v_perm_b32 v142, v100, v91, 0x5010400
	v_perm_b32 v83, v100, v91, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[88:91], v12, s[36:39], 0 offen
	buffer_load_b128 v[97:100], v66, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v66, v53, s18, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v12, v180, s16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v66, v66, s[40:43], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v166, v97, v88, 0x5010400
	v_perm_b32 v167, v97, v88, 0x7030602
	v_perm_b32 v168, v98, v89, 0x5010400
	v_perm_b32 v169, v98, v89, 0x7030602
	v_perm_b32 v170, v99, v90, 0x5010400
	v_perm_b32 v171, v99, v90, 0x7030602
	v_perm_b32 v143, v100, v91, 0x5010400
	v_perm_b32 v138, v100, v91, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v52, v66 offset:36864
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v66, v0, s16, 1
	scratch_load_b32 v0, off, off offset:644 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v88, v0, s16, 1
	scratch_load_b32 v0, off, off offset:628 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v89, v0, s16, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s16, s14, 11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	s_clause 0x3
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	buffer_load_u16 v88, v88, s[4:7], 0 offen
	buffer_load_u16 v89, v89, s[4:7], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:720 ; 4-byte Folded Reload
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v140, 16, v12
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v141, 16, v66
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v172, 16, v88
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v173, 16, v89
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[88:91], v0 offset:36864
	ds_load_b128 v[97:100], v0 offset:36880
	v_mov_b32_e32 v18, v240
	v_mov_b32_e32 v34, v241
	v_mov_b32_e32 v32, v244
	v_mov_b32_e32 v38, v255
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v174, v89, v140 :: v_dual_mul_f32 v247, v100, v141
	v_dual_mul_f32 v175, v88, v140 :: v_dual_add_nc_u32 v12, s27, v53
	v_mul_f32_e32 v176, v91, v140
	v_dual_mul_f32 v177, v90, v140 :: v_dual_mul_f32 v178, v89, v141
	v_mul_f32_e32 v237, v100, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v12, v12, s18, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v179, v88, v141
	v_dual_mul_f32 v182, v91, v141 :: v_dual_mul_f32 v243, v97, v140
	v_dual_mul_f32 v183, v90, v141 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	v_mul_f32_e32 v196, v89, v172
	v_mul_f32_e32 v204, v88, v172
	v_mul_f32_e32 v122, v91, v172
	v_dual_mul_f32 v180, v90, v172 :: v_dual_mul_f32 v123, v100, v173
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	v_dual_mov_b32 v246, v227 :: v_dual_mul_f32 v255, v98, v172
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v227, v89, v173
	v_dual_mul_f32 v230, v88, v173 :: v_dual_mul_f32 v85, v97, v172
	v_mul_f32_e32 v234, v91, v173
	v_dual_mov_b32 v44, v232 :: v_dual_mul_f32 v203, v99, v172
	v_mul_f32_e32 v232, v90, v173
	v_mul_f32_e32 v235, v98, v140
	v_dual_mul_f32 v240, v99, v140 :: v_dual_mul_f32 v241, v98, v141
	v_mul_f32_e32 v244, v97, v141
	v_mul_f32_e32 v252, v99, v141
	v_mul_f32_e32 v218, v100, v172
	v_mul_f32_e32 v114, v98, v173
	v_mul_f32_e32 v120, v97, v173
	v_mul_f32_e32 v40, v99, v173
	ds_load_b128 v[88:91], v0 offset:37376
	ds_load_b128 v[97:100], v0 offset:37392
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v74, v217
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v242, v235, v185
	v_mov_b32_e32 v36, v194
	v_mov_b32_e32 v224, v186
	v_mov_b32_e32 v76, v219
	v_fmac_f32_e32 v236, v237, v65
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s18, s16, 0
	s_mov_b32 s16, s46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s46, s19, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s19, s17, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s47, s18, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s15
	s_mov_b32 s17, s19
	v_mov_b32_e32 v235, v238
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v239, v243, v115 :: v_dual_mul_f32 v186, v89, v140
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v98, v172
	v_dual_mul_f32 v29, v98, v173 :: v_dual_mul_f32 v6, v88, v140
	v_mul_f32_e32 v11, v91, v140
	v_mul_f32_e32 v197, v90, v140
	v_mul_f32_e32 v201, v88, v141
	v_mul_f32_e32 v205, v90, v141
	v_mul_f32_e32 v207, v88, v172
	v_mul_f32_e32 v215, v90, v172
	v_mul_f32_e32 v217, v89, v173
	v_mul_f32_e32 v219, v88, v173
	v_mul_f32_e32 v35, v90, v173
	v_mul_f32_e32 v1, v100, v140
	v_mul_f32_e32 v7, v100, v141
	v_dual_mul_f32 v111, v97, v172 :: v_dual_mov_b32 v238, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v235, v240, v208
	v_fmac_f32_e32 v113, v17, v249
	v_mov_b32_e32 v237, v39
	v_fmac_f32_e32 v121, v227, v210
	v_mov_b32_e32 v227, v246
	v_fmac_f32_e32 v195, v40, v116
	v_fmac_f32_e32 v5, v230, v209
	v_fmac_f32_e32 v27, v234, v190
	v_fmac_f32_e32 v237, v114, v188
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v52, v12 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[125:128], v0 offset:36864
	ds_load_b128 v[134:137], v0 offset:36880
	ds_load_b128 v[150:153], v0 offset:37376
	ds_load_b128 v[160:163], v0 offset:37392
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v222, v98, v140
	v_mul_f32_e32 v8, v98, v141
	v_mul_f32_e32 v200, v89, v141
	v_mul_f32_e32 v202, v91, v141
	v_mul_f32_e32 v206, v89, v172
	v_mul_f32_e32 v214, v91, v172
	v_mul_f32_e32 v220, v91, v173
	v_mov_b32_e32 v2, v228
	v_mul_f32_e32 v228, v97, v140
	v_mul_f32_e32 v86, v99, v140
	v_mul_f32_e32 v10, v97, v141
	v_mul_f32_e32 v194, v99, v141
	v_mul_f32_e32 v16, v100, v172
	v_mul_f32_e32 v14, v99, v172
	v_mul_f32_e32 v20, v97, v173
	v_mov_b32_e32 v28, v21
	v_mul_f32_e32 v30, v100, v173
	v_mul_f32_e32 v21, v99, v173
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v98, v135, v173
	v_mul_f32_e32 v68, v126, v140
	v_mul_f32_e32 v67, v125, v140
	v_mul_f32_e32 v69, v128, v140
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v66, v127, v140 :: v_dual_mul_f32 v129, v152, v173
	v_mul_f32_e32 v72, v126, v141
	v_mul_f32_e32 v71, v125, v141
	v_mul_f32_e32 v105, v128, v141
	v_dual_mul_f32 v70, v127, v141 :: v_dual_mul_f32 v139, v152, v172
	v_mul_f32_e32 v92, v126, v172
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v100, v125, v172 :: v_dual_mul_f32 v155, v162, v141
	v_mul_f32_e32 v97, v128, v172
	v_mul_f32_e32 v80, v127, v172
	v_mul_f32_e32 v88, v126, v173
	v_dual_mul_f32 v90, v125, v173 :: v_dual_mul_f32 v53, v163, v140
	v_mul_f32_e32 v89, v128, v173
	v_mul_f32_e32 v91, v127, v173
	v_mul_f32_e32 v58, v135, v140
	v_mul_f32_e32 v57, v134, v140
	v_mul_f32_e32 v59, v137, v140
	v_mul_f32_e32 v56, v136, v140
	v_mul_f32_e32 v130, v135, v141
	v_dual_mul_f32 v132, v134, v141 :: v_dual_mul_f32 v147, v163, v172
	v_mul_f32_e32 v131, v137, v141
	v_dual_mul_f32 v133, v136, v141 :: v_dual_mul_f32 v106, v135, v172
	v_mul_f32_e32 v78, v134, v172
	v_mul_f32_e32 v79, v137, v172
	v_mul_f32_e32 v125, v136, v172
	v_mul_f32_e32 v103, v134, v173
	v_mul_f32_e32 v99, v137, v173
	v_mul_f32_e32 v104, v136, v173
	v_mul_f32_e32 v136, v151, v140
	v_mul_f32_e32 v137, v150, v140
	v_mul_f32_e32 v55, v153, v140
	v_mul_f32_e32 v54, v152, v140
	v_mul_f32_e32 v144, v151, v141
	v_mul_f32_e32 v148, v150, v141
	v_mul_f32_e32 v145, v153, v141
	v_dual_mul_f32 v149, v152, v141 :: v_dual_mul_f32 v134, v151, v172
	v_mul_f32_e32 v77, v150, v172
	v_dual_mul_f32 v135, v153, v172 :: v_dual_mul_f32 v126, v151, v173
	v_mul_f32_e32 v128, v150, v173
	v_mul_f32_e32 v127, v153, v173
	v_mul_f32_e32 v151, v161, v140
	v_mul_f32_e32 v12, v160, v140
	v_mul_f32_e32 v52, v162, v140
	v_mul_f32_e32 v152, v161, v141
	v_mul_f32_e32 v154, v160, v141
	v_dual_mul_f32 v153, v163, v141 :: v_dual_mul_f32 v146, v161, v172
	v_dual_mul_f32 v150, v160, v172 :: v_dual_mul_f32 v161, v161, v173
	v_mul_f32_e32 v140, v160, v173
	v_mul_f32_e32 v160, v163, v173
	v_mul_f32_e32 v141, v162, v173
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_clause 0x6                            ; 32-byte Folded Reload
	scratch_load_b32 v173, off, off offset:152
	scratch_load_b32 v185, off, off offset:172
	scratch_load_b32 v208, off, off offset:176
	scratch_load_b32 v115, off, off offset:136
	scratch_load_b32 v65, off, off offset:132
	scratch_load_b64 v[93:94], off, off offset:500
	scratch_load_b32 v0, off, off offset:248
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v172, v162, v172
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	scratch_load_b32 v162, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v254, v219, v96
	scratch_load_b32 v96, off, off offset:660 ; 4-byte Folded Reload
	v_fmac_f32_e32 v238, v11, v63
	scratch_load_b32 v63, off, off offset:124 ; 4-byte Folded Reload
	v_mov_b32_e32 v219, v76
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v185, v228, v124
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v208, v6, v64
	v_mov_b32_e32 v228, v2
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v2, off, off offset:548
	scratch_load_b32 v64, off, off offset:128
	scratch_load_b32 v6, off, off offset:544
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v115, v10, v60
	scratch_load_b32 v60, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v65, v7, v51
	scratch_load_b32 v51, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v63, v196, v49 :: v_dual_fmac_f32 v112, v222, v2
	scratch_load_b32 v2, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v233, v186, v6
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v6, off, off offset:276 ; 4-byte Folded Reload
	v_mov_b32_e32 v186, v224
	v_mov_b32_e32 v224, v13
	v_mov_b32_e32 v124, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v60, v180, v46
	v_fmac_f32_e32 v64, v194, v50
	scratch_load_b32 v50, off, off offset:92 ; 4-byte Folded Reload
	v_mov_b32_e32 v114, v43
	scratch_load_b32 v180, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v193, v86, v2
	scratch_load_b32 v2, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v162, s18, v162
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v181, v105, v6
	scratch_load_b32 v6, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v162, v[93:94] offset:32768
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v162, off, off offset:244
	scratch_load_b32 v163, off, off
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v163, v175, v159
	scratch_store_b32 off, v163, off        ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v159, off, off offset:148
	scratch_load_b32 v175, off, off offset:240
	scratch_load_b32 v163, off, off offset:4
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v175, v220, v102
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v163, v174, v184
	scratch_store_b32 off, v163, off offset:4 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v184, off, off offset:168
	scratch_load_b32 v174, off, off offset:236
	scratch_load_b32 v163, off, off offset:8
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v163, v177, v118
	scratch_store_b32 off, v163, off offset:8 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v118, off, off offset:140
	scratch_load_b32 v177, off, off offset:228
	scratch_load_b32 v163, off, off offset:12
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v118, v8, v61 :: v_dual_fmac_f32 v177, v21, v87
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v163, v176, v158
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v176, off, off offset:156
	scratch_load_b32 v158, off, off offset:144
	scratch_load_b32 v61, off, off offset:116
	v_dual_mov_b32 v8, v41 :: v_dual_mov_b32 v21, v28
	scratch_store_b32 off, v163, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v163, v233
	scratch_load_b32 v233, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v21, v132, v6
	scratch_load_b32 v6, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v61, v122, v47
	scratch_load_b32 v47, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v233, v197, v62
	v_mov_b32_e32 v197, v9
	scratch_load_b32 v62, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v22, v130, v6
	scratch_load_b32 v6, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v197, v1, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:564
	scratch_load_b32 v2, off, off offset:36
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v62, v204, v48
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:104
	scratch_load_b32 v48, off, off offset:96
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v240, v18 :: v_dual_fmac_f32 v191, v179, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v179, off, off offset:164
	scratch_load_b32 v1, off, off offset:560
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v2, v16, v213
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v49, v85, v45
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v85, v113 :: v_dual_fmac_f32 v224, v178, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:160
	scratch_load_b32 v1, off, off offset:572
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v184, v183, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:224
	scratch_load_b32 v1, off, off offset:568
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v183, v20, v81
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v186, v182, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v182, off, off offset:220
	scratch_load_b32 v1, off, off offset:580
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v178, v244, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v243, off, off offset:188
	scratch_load_b32 v1, off, off offset:576
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v244, v32 :: v_dual_fmac_f32 v179, v241, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v112, off, off offset:196
	scratch_load_b32 v1, off, off offset:588
	v_mov_b32_e32 v241, v34
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v173, v252, v1
	scratch_load_b32 v1, off, off offset:584 ; 4-byte Folded Reload
	v_mov_b32_e32 v252, v31
	scratch_load_b32 v31, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v176, v247, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:192
	scratch_load_b32 v1, off, off offset:596
	v_mov_b32_e32 v247, v33
	scratch_load_b32 v33, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v31, v14, v211 :: v_dual_fmac_f32 v162, v201, v1
	scratch_load_b32 v1, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v33, v29, v82
	scratch_load_b32 v29, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v0, v200, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v1, 24, v108
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v200, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v0, off, off offset:604 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v158, v205, v0
	scratch_load_b32 v0, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v159, v202, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:60
	scratch_load_b32 v0, off, off offset:608
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v226, v140, v107 :: v_dual_fmac_f32 v51, v255, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v45, off, off offset:76
	scratch_load_b32 v41, off, off offset:64
	scratch_load_b32 v0, off, off offset:612
	v_mov_b32_e32 v255, v38
	scratch_load_b32 v38, off, off offset:48 ; 4-byte Folded Reload
	v_fmac_f32_e32 v174, v35, v95
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v95, off, off offset:656
	scratch_load_b32 v34, off, off offset:200
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v222, v3 :: v_dual_fmac_f32 v41, v214, v251
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v50, v203, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:204
	scratch_load_b32 v0, off, off offset:616
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v38, v111, v248
	v_mov_b32_e32 v111, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v111, v217, v101
	scratch_load_b32 v101, off, off offset:664 ; 4-byte Folded Reload
	v_mov_b32_e32 v217, v74
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v48, v218, v0
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v207, v0
	scratch_load_b32 v0, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v47, v206, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v0, 8, v108
	v_and_b16 v0.h, 0xff, v108.l
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v3, off, off offset:180
	scratch_load_b32 v214, off, off offset:272
	scratch_load_b32 v207, off, off offset:268
	scratch_load_b32 v202, off, off offset:264
	scratch_load_b32 v201, off, off offset:260
	scratch_load_b32 v205, off, off offset:256
	scratch_load_b32 v206, off, off offset:252
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v108.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v109
	v_or_b16 v9.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v109
	v_and_b16 v0.h, 0xff, v109.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v10.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v109.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v10.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v164
	v_and_b16 v0.h, 0xff, v164.l
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v11.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v164.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v165
	v_or_b16 v11.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v165
	v_and_b16 v0.h, 0xff, v165.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v13.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v165.h
	v_lshlrev_b16 v0.h, 8, v1.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v1, 24, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v13.h, v0.l, v0.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v0, 8, v166
	v_and_b16 v0.h, 0xff, v166.l
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v14.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v166.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v167
	v_or_b16 v14.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v167
	v_and_b16 v0.h, 0xff, v167.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v15.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v167.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v15.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v168
	v_and_b16 v0.h, 0xff, v168.l
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v16.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v168.h
	v_lshlrev_b16 v0.h, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v169
	scratch_load_b32 v168, off, off offset:232 ; 4-byte Folded Reload
	v_or_b16 v16.h, v0.l, v0.h
	v_lshrrev_b32_e32 v0, 8, v169
	v_and_b16 v0.h, 0xff, v169.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v17.l, v0.h, v0.l
	v_and_b16 v0.l, 0xff, v169.h
	v_lshlrev_b16 v0.h, 8, v1.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s46, v96
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v17.h, v0.l, v0.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s46, v95
	ds_store_b16 v0, v9
	ds_store_b16_d16_hi v0, v9 offset:32
	ds_store_b16 v0, v10 offset:64
	ds_store_b16_d16_hi v0, v10 offset:96
	ds_store_b16 v1, v13 offset:64
	ds_store_b16_d16_hi v1, v13 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v0, v14 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v1, v11
	ds_store_b16_d16_hi v1, v11 offset:32
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v0, v15 offset:16448
	ds_store_b16_d16_hi v0, v14 offset:16416
	ds_store_b16_d16_hi v0, v15 offset:16480
	ds_store_b16 v1, v16 offset:16384
	ds_store_b16_d16_hi v1, v16 offset:16416
	ds_store_b16 v1, v17 offset:16448
	ds_store_b16_d16_hi v1, v17 offset:16480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v1, 8, v157
	v_and_b16 v9.h, 0xff, v157.l
	v_and_b16 v10.h, 0xff, v156.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v11.h, 0xff, v170.l
	v_and_b16 v13.h, 0xff, v171.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v9.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v157
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v15, off, off offset:44
	scratch_load_b32 v43, off, off offset:68
	scratch_load_b32 v16, off, off offset:56
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v157.h
	v_lshlrev_b16 v10.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 8, v156
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v157, off, off offset:212
	scratch_load_b32 v40, off, off offset:52
	v_or_b16 v9.h, v9.h, v10.l
	v_lshlrev_b16 v10.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v156.h
	v_lshlrev_b16 v11.l, 8, v1.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v1, 8, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v10.h, v10.h, v11.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v170.h
	v_lshlrev_b16 v13.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 8, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v11.h, v11.h, v13.l
	v_lshlrev_b16 v13.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v13.l, v13.h, v13.l
	v_and_b16 v13.h, 0xff, v171.h
	v_lshlrev_b16 v14.l, 8, v1.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s46, v101
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v13.h, v13.h, v14.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v1, v9
	ds_store_b16_d16_hi v1, v9 offset:32
	ds_store_b16 v1, v10 offset:64
	ds_store_b16_d16_hi v1, v10 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v1, v11 offset:16384
	ds_store_b16_d16_hi v1, v11 offset:16416
	ds_store_b16 v1, v13 offset:16448
	ds_store_b16_d16_hi v1, v13 offset:16480
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v1, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v9.h, 0xff, v142.l
	v_and_b16 v10.h, 0xff, v83.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v11.h, 0xff, v143.l
	v_and_b16 v13.h, 0xff, v138.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v157, v141, v110 :: v_dual_fmac_f32 v112, v67, v1
	scratch_load_b32 v1, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v39, v68, v1
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v32, v66, v1
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v34, v69, v1
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v29, v57, v1
	scratch_load_b32 v1, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v243, v58, v1
	scratch_load_b32 v1, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v214, v56, v1
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v194, v36 :: v_dual_fmac_f32 v3, v59, v1
	scratch_load_b32 v1, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v194, v120, v187
	v_mov_b32_e32 v120, v42
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v202, v137, v1
	scratch_load_b32 v1, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v207, v136, v1
	scratch_load_b32 v1, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v86, v37 :: v_dual_fmac_f32 v205, v54, v1
	scratch_load_b32 v1, off, off offset:488 ; 4-byte Folded Reload
	v_mov_b32_e32 v230, v245
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v86, v232, v189
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v201, v55, v1
	scratch_load_b32 v1, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v12, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:28
	scratch_load_b32 v1, off, off offset:492
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v206, v151, v1
	scratch_load_b32 v1, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v46, v215, v250
	v_mov_b32_e32 v215, v75
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v221, v52, v1
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v20, off, off offset:84
	scratch_load_b32 v17, off, off offset:72
	scratch_load_b32 v1, off, off offset:496
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v25, v53, v1
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v19, off, off offset:100
	scratch_load_b32 v18, off, off offset:88
	scratch_load_b32 v1, off, off offset:536
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v24, v71, v1
	scratch_load_b32 v1, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v222, v72, v1
	scratch_load_b32 v1, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v232, v44 :: v_dual_fmac_f32 v23, v70, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v1, 8, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v9.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v142
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v142.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v10.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 8, v83
	v_or_b16 v9.h, v9.h, v10.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v10.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v83
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v83.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v11.l, 8, v1.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v1, 8, v143
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v10.h, v10.h, v11.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v11.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v143
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v143.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v13.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 8, v138
	v_or_b16 v11.h, v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v13.l, 8, v1.l
	v_lshrrev_b32_e32 v1, 24, v138
	v_or_b16 v13.l, v13.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v14.l, 8, v1.l
	v_dual_mov_b32 v1, v73 :: v_dual_fmac_f32 v8, v123, v117
	v_and_b16 v13.h, 0xff, v138.h
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v1, v133, v6
	scratch_load_b32 v6, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v13.h, v13.h, v14.l
	scratch_load_b32 v14, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v212, v131, v6
	scratch_load_b32 v6, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v255, v148, v6
	scratch_load_b32 v6, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v228, v144, v6
	scratch_load_b32 v6, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v182, v30, v84 :: v_dual_fmac_f32 v247, v149, v6
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v6, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v252, v145, v6
	scratch_load_b32 v6, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v244, v154, v6
	scratch_load_b32 v6, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v217, v152, v6
	scratch_load_b32 v6, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v0, v9 offset:384
	ds_store_b16_d16_hi v0, v9 offset:416
	scratch_load_b32 v9, off, off offset:20 ; 4-byte Folded Reload
	ds_store_b16 v0, v10 offset:448
	ds_store_b16_d16_hi v0, v10 offset:480
	scratch_load_b32 v10, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v0, v11 offset:16768
	ds_store_b16_d16_hi v0, v11 offset:16800
	ds_store_b16 v0, v13 offset:16832
	ds_store_b16_d16_hi v0, v13 offset:16864
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v240, v155, v6
	scratch_load_b32 v6, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v241, v153, v6
	scratch_load_b32 v6, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v219, v100, v6
	scratch_load_b32 v6, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v215, v92, v6
	scratch_load_b32 v6, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v231, v80, v6
	scratch_load_b32 v6, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v232, v97, v6
	scratch_load_b32 v6, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v227, v78, v6
	scratch_load_b32 v6, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v230, v106, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:216
	scratch_load_b32 v6, off, off offset:368
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v19, v125, v6
	scratch_load_b32 v6, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v229, v79, v6
	scratch_load_b32 v6, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v20, v77, v6
	scratch_load_b32 v6, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v18, v134, v6
	scratch_load_b32 v6, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v43, v139, v6
	scratch_load_b32 v6, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v135, v6
	scratch_load_b32 v6, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v40, v150, v6
	scratch_load_b32 v6, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v16, v146, v6
	scratch_load_b32 v6, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v14, v172, v6
	scratch_load_b32 v6, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v15, v147, v6
	scratch_load_b32 v6, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v10, v90, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:652
	scratch_load_b32 v6, off, off offset:404
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v12, v88, v6
	scratch_load_b32 v6, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v253, v91, v6
	scratch_load_b32 v6, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v4, v89, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v89, off, off offset:648
	scratch_load_b32 v6, off, off offset:428
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v216, v103, v6
	scratch_load_b32 v6, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v9, v98, v6
	scratch_load_b32 v6, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v198, v104, v6
	scratch_load_b32 v6, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v199, v99, v6
	scratch_load_b32 v6, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v119, v128, v6
	scratch_load_b32 v6, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v223, v126, v6
	scratch_load_b32 v6, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v192, v129, v6
	scratch_load_b32 v6, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v168, v127, v6
	scratch_load_b32 v6, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v106, v161, v6
	scratch_load_b32 v6, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v225, v160, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v113, off, off offset:8
	scratch_load_b32 v209, off, off offset:12
	scratch_load_b32 v213, off, off
	scratch_load_b32 v220, off, off offset:4
	scratch_load_b32 v210, off, off offset:640
	scratch_load_b32 v203, off, off offset:644
	scratch_load_b32 v140, off, off offset:740
	scratch_load_b32 v141, off, off offset:744
	scratch_load_b32 v142, off, off offset:748
	scratch_load_b32 v11, off, off offset:756
	scratch_load_b32 v13, off, off offset:760
	scratch_load_b32 v123, off, off offset:736
	scratch_load_b32 v36, off, off offset:752
	v_dual_mov_b32 v105, v233 :: v_dual_mov_b32 v172, v238
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v7, 4, v123
	v_and_b32_e32 v6, 8, v123
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v112, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v209, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v239, 0
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v213, 0
	v_mov_b32_e32 v39, 0
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %Flow1206
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v39, off offset:204
	scratch_store_b32 off, v34, off offset:200
	scratch_store_b32 off, v112, off offset:196
	scratch_store_b32 off, v32, off offset:192
	scratch_store_b32 off, v243, off offset:188
	scratch_store_b32 off, v29, off offset:184
	scratch_store_b32 off, v3, off offset:180
	scratch_store_b32 off, v26, off offset:800
	scratch_store_b32 off, v25, off offset:788
	scratch_store_b32 off, v24, off offset:784
	scratch_store_b32 off, v23, off offset:780
	scratch_store_b32 off, v22, off offset:768
	scratch_store_b32 off, v21, off offset:764
	scratch_store_b32 off, v212, off offset:760
	scratch_store_b32 off, v1, off offset:748
	scratch_store_b32 off, v124, off offset:364
	scratch_store_b32 off, v197, off offset:360
	scratch_store_b32 off, v224, off offset:356
	scratch_store_b32 off, v118, off offset:140
	scratch_store_b32 off, v115, off offset:136
	scratch_store_b32 off, v62, off offset:120
	scratch_store_b32 off, v63, off offset:124
	scratch_store_b32 off, v60, off offset:112
	scratch_store_b32 off, v61, off offset:116
	scratch_store_b32 off, v49, off offset:104
	scratch_store_b32 off, v229, off offset:344
	scratch_store_b32 off, v51, off offset:108
	scratch_store_b32 off, v19, off offset:100
	scratch_store_b32 off, v48, off offset:96
	scratch_store_b32 off, v50, off offset:92
	scratch_store_b32 off, v18, off offset:88
	scratch_store_b32 off, v20, off offset:84
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v47, off offset:80
	scratch_store_b32 off, v45, off offset:76
	scratch_store_b32 off, v17, off offset:72
	scratch_store_b32 off, v43, off offset:68
	scratch_store_b32 off, v41, off offset:64
	scratch_store_b32 off, v46, off offset:60
	scratch_store_b32 off, v16, off offset:56
	scratch_store_b32 off, v40, off offset:52
	scratch_store_b32 off, v85, off offset:340
	scratch_store_b32 off, v38, off offset:48
	scratch_store_b32 off, v15, off offset:44
	scratch_store_b32 off, v14, off offset:40
	scratch_store_b32 off, v2, off offset:36
	scratch_store_b32 off, v31, off offset:32
	scratch_store_b32 off, v12, off offset:28
	scratch_store_b32 off, v10, off offset:24
	scratch_store_b32 off, v121, off offset:328
	scratch_store_b32 off, v5, off offset:324
	scratch_store_b32 off, v4, off offset:320
	scratch_store_b32 off, v253, off offset:316
	scratch_store_b32 off, v27, off offset:288
	scratch_store_b32 off, v86, off offset:284
	scratch_store_b32 off, v9, off offset:20
	scratch_store_b32 off, v216, off offset:280
	scratch_store_b32 off, v237, off offset:260
	scratch_store_b32 off, v199, off offset:256
	scratch_store_b32 off, v198, off offset:252
	scratch_store_b32 off, v195, off offset:248
	scratch_store_b32 off, v223, off offset:240
	scratch_store_b32 off, v119, off offset:228
	scratch_store_b32 off, v111, off offset:224
	scratch_store_b32 off, v254, off offset:220
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v220, off offset:4
	scratch_store_b32 off, v213, off
	scratch_store_b32 off, v209, off offset:12
	scratch_store_b32 off, v113, off offset:8
	scratch_store_b32 off, v242, off offset:376
	scratch_store_b32 off, v239, off offset:372
	scratch_store_b32 off, v159, off offset:148
	scratch_store_b32 off, v65, off offset:132
	scratch_store_b32 off, v64, off offset:128
	scratch_store_b32 off, v8, off offset:244
	scratch_store_b32 off, v33, off offset:16
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v197, off, off offset:632 ; 4-byte Folded Reload
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v21, 0, 1, s2
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v132, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s1, 1, v21
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v38, v0, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x110, 0, vcc_lo
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v44, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v37, 16, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v0, v0, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, s49, v38
	v_mov_b32_e32 v45, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v130, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v115, v0, v11
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v0, s49, v37
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[17:20], v1 offset:512
	ds_load_b128 v[9:12], v1 offset:1024
	ds_load_b128 v[5:8], v1 offset:1536
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[39:42], v0 offset:512
	ds_load_b128 v[13:16], v0 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v0 offset:1536
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v126, 0
	v_xor_b32_e32 v212, 16, v115
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v23, 0
	scratch_store_b32 off, v35, off offset:212 ; 4-byte Folded Spill
	v_mov_b32_e32 v35, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	scratch_store_b32 off, v35, off offset:216 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s16, v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v50, s11 :: v_dual_mov_b32 v45, s6
	v_mov_b32_e32 v49, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v0
	ds_load_b128 v[124:127], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v47, s8 :: v_dual_add_nc_u32 v0, s16, v212
	v_dual_mov_b32 v48, s9 :: v_dual_mov_b32 v43, s4
	v_dual_mov_b32 v46, s7 :: v_dual_mov_b32 v21, v106
	v_dual_mov_b32 v44, s5 :: v_dual_mov_b32 v23, v105
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[128:131], v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[116:119], v[25:28], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[116:119], v[17:20], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[116:119], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[116:119], v[5:8], v[43:50] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v0 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[124:127], v[25:28], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[124:127], v[17:20], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[124:127], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[124:127], v[5:8], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[128:131], v[29:32], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[128:131], v[39:42], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[128:131], v[13:16], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[128:131], v[1:4], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v134, v53
	v_cvt_f32_i32_e32 v113, v54
	v_cvt_f32_i32_e32 v132, v55
	v_cvt_f32_i32_e32 v133, v56
	v_cvt_f32_i32_e32 v121, v67
	v_cvt_f32_i32_e32 v122, v68
	v_cvt_f32_i32_e32 v120, v70
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[116:119], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[116:119], v[29:32], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[116:119], v[39:42], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[116:119], v[13:16], v[97:104] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v119, v69
	v_cvt_f32_i32_e32 v35, v49
	v_cvt_f32_i32_e32 v130, v59
	v_cvt_f32_i32_e32 v131, v60
	v_cvt_f32_i32_e32 v128, v61
	v_cvt_f32_i32_e32 v129, v62
	v_cvt_f32_i32_e32 v126, v63
	v_cvt_f32_i32_e32 v127, v64
	v_cvt_f32_i32_e32 v124, v65
	v_cvt_f32_i32_e32 v125, v66
	v_cvt_f32_i32_e32 v117, v71
	v_cvt_f32_i32_e32 v118, v72
	v_cvt_f32_i32_e32 v114, v73
	v_cvt_f32_i32_e32 v116, v74
	v_cvt_f32_i32_e32 v94, v75
	v_cvt_f32_i32_e32 v95, v76
	v_cvt_f32_i32_e32 v84, v77
	v_cvt_f32_i32_e32 v85, v78
	v_cvt_f32_i32_e32 v83, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v78, v81
	v_cvt_f32_i32_e32 v79, v82
	v_cvt_f32_i32_e32 v24, v86
	v_cvt_f32_i32_e32 v77, v87
	v_cvt_f32_i32_e32 v75, v88
	v_cvt_f32_i32_e32 v76, v89
	v_cvt_f32_i32_e32 v73, v90
	v_cvt_f32_i32_e32 v74, v91
	v_cvt_f32_i32_e32 v71, v92
	v_cvt_f32_i32_e32 v72, v93
	v_cvt_f32_i32_e32 v69, v97
	v_cvt_f32_i32_e32 v70, v98
	v_cvt_f32_i32_e32 v67, v99
	v_cvt_f32_i32_e32 v68, v100
	v_cvt_f32_i32_e32 v65, v101
	v_cvt_f32_i32_e32 v66, v102
	v_cvt_f32_i32_e32 v63, v103
	v_cvt_f32_i32_e32 v64, v104
	v_cvt_f32_i32_e32 v61, v105
	v_cvt_f32_i32_e32 v62, v106
	v_dual_mov_b32 v106, v21 :: v_dual_mov_b32 v105, v23
	v_cvt_f32_i32_e32 v59, v107
	v_cvt_f32_i32_e32 v60, v108
	v_cvt_f32_i32_e32 v55, v109
	v_cvt_f32_i32_e32 v56, v110
	v_cvt_f32_i32_e32 v53, v111
	v_cvt_f32_i32_e32 v54, v112
	v_cvt_f32_i32_e32 v33, v43
	v_cvt_f32_i32_e32 v34, v44
	v_cvt_f32_i32_e32 v22, v45
	v_cvt_f32_i32_e32 v23, v46
	v_cvt_f32_i32_e32 v0, v47
	v_cvt_f32_i32_e32 v21, v48
	scratch_store_b32 off, v35, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v35, v50
	v_cvt_f32_i32_e32 v43, v57
	v_cvt_f32_i32_e32 v44, v58
	v_cvt_f32_i32_e32 v45, v51
	v_cvt_f32_i32_e32 v213, v52
	scratch_store_b32 off, v35, off offset:216 ; 4-byte Folded Spill
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v45, off offset:912
	scratch_store_b32 off, v134, off offset:908
	scratch_store_b32 off, v105, off offset:208
	scratch_store_b32 off, v44, off offset:756
	scratch_store_b32 off, v43, off offset:752
	scratch_store_b32 off, v133, off offset:744
	scratch_store_b32 off, v132, off offset:740
	scratch_store_b32 off, v131, off offset:720
	scratch_store_b32 off, v130, off offset:716
	scratch_store_b32 off, v129, off offset:684
	scratch_store_b32 off, v128, off offset:680
	scratch_store_b32 off, v127, off offset:668
	scratch_store_b32 off, v126, off offset:664
	scratch_store_b32 off, v125, off offset:660
	scratch_store_b32 off, v124, off offset:656
	scratch_store_b32 off, v122, off offset:652
	scratch_store_b32 off, v121, off offset:648
	scratch_store_b32 off, v119, off offset:640
	scratch_store_b32 off, v118, off offset:616
	scratch_store_b32 off, v95, off offset:600
	scratch_store_b32 off, v94, off offset:596
	scratch_store_b32 off, v80, off offset:576
	scratch_store_b32 off, v79, off offset:568
	scratch_store_b32 off, v78, off offset:564
	scratch_store_b32 off, v77, off offset:560
	scratch_store_b32 off, v24, off offset:556
	scratch_store_b32 off, v76, off offset:544
	scratch_store_b32 off, v75, off offset:540
	scratch_store_b32 off, v74, off offset:536
	scratch_store_b32 off, v73, off offset:532
	scratch_store_b32 off, v72, off offset:528
	scratch_store_b32 off, v71, off offset:524
	s_clause 0x14                           ; 84-byte Folded Spill
	scratch_store_b32 off, v70, off offset:520
	scratch_store_b32 off, v69, off offset:516
	scratch_store_b32 off, v68, off offset:512
	scratch_store_b32 off, v67, off offset:508
	scratch_store_b32 off, v66, off offset:500
	scratch_store_b32 off, v65, off offset:496
	scratch_store_b32 off, v64, off offset:492
	scratch_store_b32 off, v63, off offset:488
	scratch_store_b32 off, v62, off offset:440
	scratch_store_b32 off, v61, off offset:436
	scratch_store_b32 off, v60, off offset:416
	scratch_store_b32 off, v59, off offset:412
	scratch_store_b32 off, v56, off offset:400
	scratch_store_b32 off, v55, off offset:396
	scratch_store_b32 off, v54, off offset:384
	scratch_store_b32 off, v53, off offset:380
	scratch_store_b32 off, v34, off offset:352
	scratch_store_b32 off, v33, off offset:348
	scratch_store_b32 off, v23, off offset:268
	scratch_store_b32 off, v21, off offset:236
	scratch_store_b32 off, v0, off offset:232
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v0, 0
	v_mov_b32_e32 v33, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s1
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
	v_add_nc_u32_e32 v0, s48, v212
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v50, s11 :: v_dual_mov_b32 v45, s6
	v_mov_b32_e32 v49, s10
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[75:78], v0 offset:4096
	ds_load_b128 v[79:82], v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v47, s8 :: v_dual_add_nc_u32 v0, s48, v115
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[86:89], v0 offset:4096
	ds_load_b128 v[90:93], v0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v48, s9 :: v_dual_mov_b32 v43, s4
	v_mov_b32_e32 v46, s7
	v_mov_b32_e32 v44, s5
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[86:89], v[25:28], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[90:93], v[25:28], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[90:93], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[86:89], v[9:12], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[79:82], v[29:32], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[75:78], v[29:32], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[90:93], v[17:20], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[86:89], v[17:20], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[79:82], v[13:16], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[75:78], v[13:16], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[90:93], v[5:8], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[86:89], v[5:8], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[79:82], v[39:42], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[39:42], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[79:82], v[1:4], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v122, v53
	v_wmma_i32_16x16x16_iu8 v[43:50], v[75:78], v[1:4], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v159, v54
	v_cvt_f32_i32_e32 v119, v55
	v_cvt_f32_i32_e32 v121, v56
	v_cvt_f32_i32_e32 v111, v57
	v_cvt_f32_i32_e32 v118, v58
	v_cvt_f32_i32_e32 v108, v59
	v_cvt_f32_i32_e32 v110, v60
	v_cvt_f32_i32_e32 v101, v61
	v_cvt_f32_i32_e32 v112, v62
	v_cvt_f32_i32_e32 v94, v63
	v_cvt_f32_i32_e32 v95, v64
	v_cvt_f32_i32_e32 v21, v65
	v_cvt_f32_i32_e32 v23, v66
	v_cvt_f32_i32_e32 v254, v25
	v_cvt_f32_i32_e32 v82, v26
	v_cvt_f32_i32_e32 v253, v27
	v_cvt_f32_i32_e32 v81, v28
	v_cvt_f32_i32_e32 v246, v29
	v_cvt_f32_i32_e32 v251, v30
	v_cvt_f32_i32_e32 v196, v31
	v_cvt_f32_i32_e32 v245, v32
	v_cvt_f32_i32_e32 v242, v67
	v_cvt_f32_i32_e32 v243, v68
	v_cvt_f32_i32_e32 v198, v69
	v_cvt_f32_i32_e32 v239, v70
	v_cvt_f32_i32_e32 v234, v71
	v_cvt_f32_i32_e32 v238, v72
	v_cvt_f32_i32_e32 v199, v73
	v_cvt_f32_i32_e32 v233, v74
	v_cvt_f32_i32_e32 v224, v124
	v_cvt_f32_i32_e32 v229, v125
	v_cvt_f32_i32_e32 v204, v126
	v_cvt_f32_i32_e32 v223, v127
	v_cvt_f32_i32_e32 v220, v128
	v_cvt_f32_i32_e32 v209, v129
	v_cvt_f32_i32_e32 v70, v130
	v_cvt_f32_i32_e32 v71, v131
	v_cvt_f32_i32_e32 v68, v132
	v_cvt_f32_i32_e32 v69, v133
	v_cvt_f32_i32_e32 v66, v134
	v_cvt_f32_i32_e32 v67, v135
	v_cvt_f32_i32_e32 v64, v136
	v_cvt_f32_i32_e32 v65, v137
	v_cvt_f32_i32_e32 v24, v138
	v_cvt_f32_i32_e32 v63, v139
	v_cvt_f32_i32_e32 v61, v9
	v_cvt_f32_i32_e32 v62, v10
	v_cvt_f32_i32_e32 v59, v11
	v_cvt_f32_i32_e32 v60, v12
	v_cvt_f32_i32_e32 v57, v13
	v_cvt_f32_i32_e32 v58, v14
	v_cvt_f32_i32_e32 v55, v15
	v_cvt_f32_i32_e32 v56, v16
	v_cvt_f32_i32_e32 v53, v43
	v_cvt_f32_i32_e32 v54, v44
	v_cvt_f32_i32_e32 v43, v45
	v_cvt_f32_i32_e32 v44, v46
	v_cvt_f32_i32_e32 v34, v47
	v_cvt_f32_i32_e32 v35, v48
	v_cvt_f32_i32_e32 v0, v49
	v_cvt_f32_i32_e32 v33, v50
	v_cvt_f32_i32_e32 v96, v51
	v_cvt_f32_i32_e32 v188, v52
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s30, 31
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v71, off offset:736
	scratch_store_b32 off, v70, off offset:724
	scratch_store_b32 off, v69, off offset:676
	scratch_store_b32 off, v68, off offset:672
	scratch_store_b32 off, v67, off offset:624
	scratch_store_b32 off, v66, off offset:620
	scratch_store_b32 off, v117, off offset:612
	scratch_store_b32 off, v116, off offset:608
	scratch_store_b32 off, v114, off offset:604
	scratch_store_b32 off, v65, off offset:592
	scratch_store_b32 off, v85, off offset:588
	scratch_store_b32 off, v84, off offset:584
	scratch_store_b32 off, v64, off offset:580
	scratch_store_b32 off, v83, off offset:572
	scratch_store_b32 off, v63, off offset:552
	scratch_store_b32 off, v24, off offset:548
	scratch_store_b32 off, v62, off offset:460
	scratch_store_b32 off, v61, off offset:452
	scratch_store_b32 off, v60, off offset:448
	scratch_store_b32 off, v59, off offset:444
	scratch_store_b32 off, v58, off offset:432
	scratch_store_b32 off, v57, off offset:428
	scratch_store_b32 off, v56, off offset:424
	scratch_store_b32 off, v55, off offset:420
	scratch_store_b32 off, v54, off offset:408
	scratch_store_b32 off, v53, off offset:404
	scratch_store_b32 off, v44, off offset:392
	scratch_store_b32 off, v163, off offset:368
	scratch_store_b32 off, v208, off offset:176
	scratch_store_b32 off, v185, off offset:172
	scratch_store_b32 off, v184, off offset:168
	scratch_store_b32 off, v173, off offset:152
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v158, off offset:144
	scratch_store_b32 off, v43, off offset:332
	scratch_store_b32 off, v35, off offset:312
	scratch_store_b32 off, v34, off offset:292
	scratch_store_b32 off, v33, off offset:276
	scratch_store_b32 off, v0, off offset:272
	scratch_store_b32 off, v22, off offset:264
	scratch_store_b32 off, v194, off offset:336
	s_lshr_b32 s1, s1, 26
	s_mov_b32 s15, 0x31027000
	s_add_i32 s1, s30, s1
	s_mov_b32 s14, 0x7ffffffe
	s_ashr_i32 s1, s1, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s1, s34
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s44
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v0, v180, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_lshl_u32 v1, v197, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v6, v203, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v2, 0x80000000, v0, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v0, 0x80000000, v1, vcc_lo
	s_and_b32 s29, s29, 0xffff
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	v_add3_u32 v1, s26, s27, v123
	scratch_load_b32 v123, off, off offset:628 ; 4-byte Folded Reload
	v_dual_mov_b32 v249, 0 :: v_dual_and_b32 v4, 28, v142
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v3, v0, s[28:31], 0 offen
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v0, 32, v36
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v5, v210, s1, 1
	s_and_b32 s13, s13, 0xffff
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v8, v1, s4, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v0, 0, v141, v0
	v_mov_b32_e32 v79, 0
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v9, s47, v37
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_add_nc_u32_e32 v0, v0, v4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v4, 0x80000000, v5 :: v_dual_cndmask_b32 v5, 0x80000000, v6
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v91, 0
	v_mov_b32_e32 v92, 0
	s_mov_b32 s4, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add_nc_u32_e32 v195, 0, v140
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v140, 0
	v_mov_b32_e32 v135, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v154, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v7, v123, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x2
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v124, v4, s[12:15], 0 offen
	buffer_load_u16 v4, v5, s[12:15], 0 offen
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, s47, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v0, v3 offset:36864
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v4, off offset:916 ; 4-byte Folded Spill
	buffer_load_u16 v4, v6, s[12:15], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v4, off offset:880 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v3, v7, s[28:31], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v4, 0, 1, s3
	v_mov_b32_e32 v24, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[36:39], v195 offset:36864
	ds_load_b128 v[28:31], v195 offset:36880
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s1, 1, v4
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[4:7], v195 offset:37376
	ds_load_b128 v[10:13], v195 offset:37392
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[10:13], off offset:296 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v3, 16, v3
	ds_store_b32 v0, v3 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[56:59], v8
	ds_load_b128 v[44:47], v8 offset:512
	ds_load_b128 v[97:100], v8 offset:1024
	ds_load_b128 v[16:19], v8 offset:1536
	ds_load_b128 v[60:63], v9
	ds_load_b128 v[48:51], v9 offset:512
	ds_load_b128 v[102:105], v9 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_b128 v[12:15], v9 offset:1536
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v3, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v3, s46, v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v77, s11 :: v_dual_mov_b32 v72, s6
	v_mov_b32_e32 v76, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[8:11], v3
	ds_load_b128 v[32:35], v3 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v74, s8 :: v_dual_add_nc_u32 v3, s46, v212
	v_dual_mov_b32 v75, s9 :: v_dual_mov_b32 v70, s4
	v_dual_mov_b32 v73, s7 :: v_dual_mov_b32 v20, v174
	v_dual_mov_b32 v71, s5 :: v_dual_mov_b32 v22, v175
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[40:43], v3
	v_dual_mov_b32 v27, v162 :: v_dual_mov_b32 v24, v168
	v_mov_b32_e32 v25, v172
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[8:11], v[56:59], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[8:11], v[44:47], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[8:11], v[97:100], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[8:11], v[16:19], v[70:77] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[8:11], v3 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[32:35], v[56:59], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[32:35], v[44:47], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[32:35], v[97:100], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[32:35], v[16:19], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[40:43], v[60:63], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[40:43], v[48:51], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[40:43], v[102:105], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[40:43], v[12:15], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v116, v127
	v_cvt_f32_i32_e32 v117, v128
	v_cvt_f32_i32_e32 v79, v129
	v_cvt_f32_i32_e32 v83, v130
	v_cvt_f32_i32_e32 v65, v141
	v_cvt_f32_i32_e32 v66, v142
	v_cvt_f32_i32_e32 v55, v143
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[8:11], v[60:63], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[8:11], v[48:51], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[8:11], v[102:105], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[8:11], v[12:15], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v64, v144
	v_cvt_f32_i32_e32 v114, v133
	v_cvt_f32_i32_e32 v109, v134
	v_cvt_f32_i32_e32 v85, v135
	v_cvt_f32_i32_e32 v84, v136
	v_cvt_f32_i32_e32 v67, v137
	v_cvt_f32_i32_e32 v80, v138
	v_cvt_f32_i32_e32 v78, v139
	v_cvt_f32_i32_e32 v68, v140
	v_cvt_f32_i32_e32 v53, v145
	v_cvt_f32_i32_e32 v54, v146
	v_cvt_f32_i32_e32 v42, v147
	v_cvt_f32_i32_e32 v43, v148
	v_cvt_f32_i32_e32 v40, v149
	v_cvt_f32_i32_e32 v41, v150
	v_cvt_f32_i32_e32 v34, v151
	v_cvt_f32_i32_e32 v35, v152
	v_cvt_f32_i32_e32 v152, v153
	v_cvt_f32_i32_e32 v153, v154
	v_cvt_f32_i32_e32 v147, v155
	v_cvt_f32_i32_e32 v150, v156
	v_cvt_f32_i32_e32 v145, v160
	v_cvt_f32_i32_e32 v146, v161
	v_cvt_f32_i32_e32 v143, v162
	v_mov_b32_e32 v162, v27
	v_cvt_f32_i32_e32 v144, v163
	v_cvt_f32_i32_e32 v141, v164
	v_cvt_f32_i32_e32 v142, v165
	v_cvt_f32_i32_e32 v139, v166
	v_cvt_f32_i32_e32 v140, v167
	v_cvt_f32_i32_e32 v33, v168
	v_mov_b32_e32 v168, v24
	v_cvt_f32_i32_e32 v135, v169
	v_cvt_f32_i32_e32 v32, v170
	v_cvt_f32_i32_e32 v27, v171
	v_cvt_f32_i32_e32 v26, v172
	v_mov_b32_e32 v172, v25
	v_cvt_f32_i32_e32 v25, v173
	v_cvt_f32_i32_e32 v24, v174
	v_mov_b32_e32 v174, v20
	v_cvt_f32_i32_e32 v20, v175
	v_mov_b32_e32 v175, v22
	v_cvt_f32_i32_e32 v10, v86
	v_cvt_f32_i32_e32 v9, v87
	v_cvt_f32_i32_e32 v8, v88
	v_cvt_f32_i32_e32 v3, v89
	v_cvt_f32_i32_e32 v165, v90
	v_cvt_f32_i32_e32 v155, v91
	v_cvt_f32_i32_e32 v151, v92
	v_cvt_f32_i32_e32 v154, v93
	v_cvt_f32_i32_e32 v136, v70
	v_cvt_f32_i32_e32 v134, v71
	v_cvt_f32_i32_e32 v130, v72
	v_cvt_f32_i32_e32 v133, v73
	v_cvt_f32_i32_e32 v129, v74
	v_cvt_f32_i32_e32 v128, v75
	v_cvt_f32_i32_e32 v91, v76
	v_cvt_f32_i32_e32 v92, v77
	v_cvt_f32_i32_e32 v160, v131
	v_cvt_f32_i32_e32 v161, v132
	v_cvt_f32_i32_e32 v248, v125
	v_cvt_f32_i32_e32 v249, v126
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v85, off offset:888
	scratch_store_b32 off, v84, off offset:884
	scratch_store_b32 off, v67, off offset:876
	scratch_store_b32 off, v80, off offset:872
	scratch_store_b32 off, v78, off offset:864
	scratch_store_b32 off, v68, off offset:860
	scratch_store_b32 off, v66, off offset:852
	scratch_store_b32 off, v65, off offset:848
	scratch_store_b32 off, v64, off offset:844
	scratch_store_b32 off, v55, off offset:840
	scratch_store_b32 off, v54, off offset:836
	scratch_store_b32 off, v53, off offset:832
	scratch_store_b32 off, v43, off offset:828
	scratch_store_b32 off, v42, off offset:824
	scratch_store_b32 off, v41, off offset:820
	scratch_store_b32 off, v40, off offset:816
	scratch_store_b32 off, v35, off offset:812
	scratch_store_b32 off, v34, off offset:808
	scratch_store_b32 off, v33, off offset:804
	scratch_store_b32 off, v32, off offset:796
	scratch_store_b32 off, v27, off offset:792
	scratch_store_b32 off, v26, off offset:776
	scratch_store_b32 off, v25, off offset:772
	scratch_store_b32 off, v120, off offset:644
	scratch_store_b32 off, v24, off offset:480
	scratch_store_b32 off, v20, off offset:476
	scratch_store_b32 off, v10, off offset:472
	scratch_store_b32 off, v9, off offset:468
	scratch_store_b32 off, v8, off offset:464
	scratch_store_b32 off, v3, off offset:456
	scratch_store_b32 off, v236, off offset:900
	scratch_store_b32 off, v235, off offset:904
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v193, off offset:868
	scratch_store_b32 off, v191, off offset:856
	scratch_store_b32 off, v186, off offset:388
	scratch_store_b32 off, v179, off offset:164
	scratch_store_b32 off, v178, off offset:160
	scratch_store_b32 off, v176, off offset:156
	ds_load_b128 v[52:55], v195 offset:36864
	ds_load_b128 v[40:43], v195 offset:36880
	ds_load_b128 v[32:35], v195 offset:37376
	ds_load_b128 v[8:11], v195 offset:37392
	v_dual_mov_b32 v173, v117 :: v_dual_mov_b32 v170, v79
	v_dual_mov_b32 v171, v116 :: v_dual_mov_b32 v84, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v114, off offset:896
	scratch_store_b32 off, v109, off offset:892
	v_dual_mov_b32 v169, v83 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v148, 0
	v_mov_b32_e32 v24, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	v_dual_mov_b32 v20, v91 :: v_dual_add_nc_u32 v3, s45, v212
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	ds_load_b128 v[64:67], v3 offset:4096
	ds_load_b128 v[77:80], v3
	v_dual_mov_b32 v22, v92 :: v_dual_add_nc_u32 v3, s45, v115
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[86:89], v3 offset:4096
	ds_load_b128 v[90:93], v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s10, s4
	v_dual_mov_b32 v24, v128 :: v_dual_mov_b32 v25, v129
	v_mov_b32_e32 v26, v130
	v_dual_mov_b32 v132, s11 :: v_dual_mov_b32 v129, s8
	v_dual_mov_b32 v131, s10 :: v_dual_mov_b32 v130, s9
	v_dual_mov_b32 v127, s6 :: v_dual_mov_b32 v128, s7
	v_dual_mov_b32 v125, s4 :: v_dual_mov_b32 v126, s5
	v_mov_b32_e32 v3, v133
	v_dual_mov_b32 v27, v134 :: v_dual_mov_b32 v68, v136
	v_dual_mov_b32 v116, v135 :: v_dual_mov_b32 v179, v144
	v_dual_mov_b32 v117, v139 :: v_dual_mov_b32 v120, v140
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[90:93], v[56:59], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[86:89], v[56:59], v[125:132] neg_lo:[1,1,0]
	v_dual_mov_b32 v158, v141 :: v_dual_mov_b32 v185, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[60:63], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[64:67], v[60:63], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[90:93], v[44:47], v[125:132] neg_lo:[1,1,0]
	v_dual_mov_b32 v176, v142 :: v_dual_mov_b32 v109, v151
	v_dual_mov_b32 v178, v143 :: v_dual_mov_b32 v191, v152
	v_dual_mov_b32 v180, v145 :: v_dual_mov_b32 v115, v155
	v_dual_mov_b32 v184, v146 :: v_dual_mov_b32 v193, v153
	v_wmma_i32_16x16x16_iu8 v[141:148], v[86:89], v[44:47], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[77:80], v[48:51], v[56:63] neg_lo:[1,1,0]
	v_mov_b32_e32 v114, v154
	v_mov_b32_e32 v186, v150
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[64:67], v[48:51], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[90:93], v[97:100], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[86:89], v[97:100], v[125:132] neg_lo:[1,1,0]
	v_dual_mov_b32 v85, v162 :: v_dual_mov_b32 v98, v165
	v_dual_mov_b32 v99, v160 :: v_dual_mov_b32 v100, v161
	v_wmma_i32_16x16x16_iu8 v[160:167], v[90:93], v[16:19], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[86:89], v[16:19], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[77:80], v[102:105], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[64:67], v[102:105], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[160:167], v[77:80], v[12:15], v[160:167] neg_lo:[1,1,0]
	v_mov_b32_e32 v92, v22
	v_wmma_i32_16x16x16_iu8 v[125:132], v[64:67], v[12:15], v[125:132] neg_lo:[1,1,0]
	v_mov_b32_e32 v91, v20
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v89, v70
	v_cvt_f32_i32_e32 v87, v71
	v_cvt_f32_i32_e32 v12, v125
	v_cvt_f32_i32_e32 v88, v72
	v_cvt_f32_i32_e32 v83, v73
	v_cvt_f32_i32_e32 v84, v74
	v_cvt_f32_i32_e32 v79, v75
	v_cvt_f32_i32_e32 v80, v76
	v_cvt_f32_i32_e32 v77, v133
	v_mov_b32_e32 v133, v3
	v_cvt_f32_i32_e32 v78, v134
	v_mov_b32_e32 v134, v27
	v_cvt_f32_i32_e32 v75, v135
	v_mov_b32_e32 v135, v116
	v_cvt_f32_i32_e32 v76, v136
	v_mov_b32_e32 v136, v68
	v_cvt_f32_i32_e32 v66, v137
	v_cvt_f32_i32_e32 v74, v138
	v_cvt_f32_i32_e32 v72, v139
	v_mov_b32_e32 v139, v117
	v_cvt_f32_i32_e32 v73, v140
	v_mov_b32_e32 v140, v120
	v_cvt_f32_i32_e32 v70, v56
	v_cvt_f32_i32_e32 v71, v57
	v_cvt_f32_i32_e32 v67, v58
	v_cvt_f32_i32_e32 v68, v59
	v_cvt_f32_i32_e32 v250, v60
	v_cvt_f32_i32_e32 v3, v61
	v_cvt_f32_i32_e32 v117, v62
	v_cvt_f32_i32_e32 v218, v63
	v_cvt_f32_i32_e32 v211, v141
	v_mov_b32_e32 v141, v158
	v_cvt_f32_i32_e32 v216, v142
	v_mov_b32_e32 v142, v176
	v_cvt_f32_i32_e32 v65, v143
	v_mov_b32_e32 v143, v178
	v_cvt_f32_i32_e32 v208, v144
	v_mov_b32_e32 v144, v179
	v_cvt_f32_i32_e32 v194, v145
	v_mov_b32_e32 v145, v180
	v_cvt_f32_i32_e32 v64, v146
	v_mov_b32_e32 v146, v184
	v_cvt_f32_i32_e32 v190, v147
	v_mov_b32_e32 v147, v185
	v_cvt_f32_i32_e32 v86, v148
	v_cvt_f32_i32_e32 v187, v44
	v_cvt_f32_i32_e32 v189, v45
	v_cvt_f32_i32_e32 v184, v46
	v_cvt_f32_i32_e32 v185, v47
	v_cvt_f32_i32_e32 v158, v48
	v_cvt_f32_i32_e32 v180, v49
	v_cvt_f32_i32_e32 v236, v50
	v_cvt_f32_i32_e32 v237, v51
	v_cvt_f32_i32_e32 v107, v149
	v_cvt_f32_i32_e32 v235, v150
	v_mov_b32_e32 v150, v186
	v_cvt_f32_i32_e32 v179, v151
	v_mov_b32_e32 v151, v109
	v_cvt_f32_i32_e32 v186, v152
	v_mov_b32_e32 v152, v191
	v_cvt_f32_i32_e32 v176, v153
	v_mov_b32_e32 v153, v193
	v_cvt_f32_i32_e32 v178, v154
	v_mov_b32_e32 v154, v114
	v_cvt_f32_i32_e32 v120, v155
	v_mov_b32_e32 v155, v115
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v114, v160
	v_mov_b32_e32 v160, v99
	v_cvt_f32_i32_e32 v116, v161
	v_mov_b32_e32 v161, v100
	v_cvt_f32_i32_e32 v93, v162
	v_mov_b32_e32 v162, v85
	v_cvt_f32_i32_e32 v109, v163
	v_cvt_f32_i32_e32 v85, v164
	v_cvt_f32_i32_e32 v90, v165
	v_mov_b32_e32 v165, v98
	v_cvt_f32_i32_e32 v22, v166
	v_cvt_f32_i32_e32 v27, v167
	v_cvt_f32_i32_e32 v20, v126
	v_cvt_f32_i32_e32 v148, v127
	v_cvt_f32_i32_e32 v149, v128
	v_mov_b32_e32 v128, v24
	v_cvt_f32_i32_e32 v137, v129
	v_mov_b32_e32 v129, v25
	v_cvt_f32_i32_e32 v138, v130
	v_mov_b32_e32 v130, v26
	v_cvt_f32_i32_e32 v24, v131
	v_cvt_f32_i32_e32 v25, v132
	v_mov_b32_e32 v132, v12
.LBB0_16:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(4)
	scratch_load_b32 v12, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s35, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s35, s1
	v_dual_mov_b32 v125, v93 :: v_dual_mov_b32 v126, v116
	s_ashr_i32 s1, s1, 6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v116.l, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s1, s34
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s44
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v13, v197, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v14, v210, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v16, v123, s1, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v1, v1, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v15, v203, s1, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	scratch_store_b32 off, v24, off offset:484 ; 4-byte Folded Spill
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v212.h, v2.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	v_mov_b16_e64 v212.l, v116.l
	v_mov_b32_e32 v103, v20
	s_clause 0x1
	buffer_load_u16 v20, v14, s[12:15], 0 offen
	buffer_load_u16 v115, v15, s[12:15], 0 offen
	v_mov_b16_e64 v193.h, v124.l
	v_mov_b16_e64 v193.l, v116.l
	v_mov_b16_e32 v102.l, v116.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s33, s33, s27
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_mov_b32 v104, v22
	v_mov_b32_e32 v105, v27
	buffer_load_u16 v13, v13, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v12, v12, s1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v17, v12, s[12:15], 0 offen
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v191, 16, v20
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v93, v16, s[12:15], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v0, v13 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[56:59], v195 offset:36864
	ds_load_b128 v[44:47], v195 offset:36880
	ds_load_b128 v[97:100], v195 offset:37376
	ds_load_b128 v[12:15], v195 offset:37392
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v210, 16, v17
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v0, v1 offset:36864
	scratch_load_b32 v1, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v195 offset:36864
	ds_load_b128 v[48:51], v195 offset:36880
	v_mul_f32_e32 v0, v53, v212
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v20, v61, v191
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, v0, v188, v1
	v_mov_b32_e32 v188, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v1, v0, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v1, v61, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v89, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v16, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v2, v16, 1.0
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v17, v16
	v_fma_f32 v19, -v2, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v16
	v_fma_f32 v2, -v2, v18, v17
	scratch_load_b32 v17, off, off offset:196 ; 4-byte Folded Reload
	v_div_fmas_f32 v2, v2, v16, v18
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v52, v212
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v16, v16, v96, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v96, v2, v1, v0
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v54, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v17, v16, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v60, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v69, v16
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
	v_rcp_f32_e32 v19, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v18, v19, 1.0
	v_fmac_f32_e32 v19, v22, v19
	v_div_scale_f32 v22, vcc_lo, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v22, v19
	v_fma_f32 v25, -v18, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v19
	v_fma_f32 v18, -v18, v24, v22
	scratch_load_b32 v22, off, off offset:200 ; 4-byte Folded Reload
	v_div_fmas_f32 v18, v18, v19, v24
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v19, v55, v212
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v0, v0, v122, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v122, v18, v17, v16
	scratch_load_b32 v17, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v41, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v1, v0, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v19, v19, v159, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v22, v19, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v63, v210
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v88, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v22, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v22, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v26, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v19, v22, v19
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v24, v27, v26
	v_fmac_f32_e32 v27, v69, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v27, v26
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v16, v16, v121, v17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v121, v24, v22, v19
	scratch_load_b32 v22, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v19, v40, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v17, v16, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v17, v49, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v84, v16
	v_mov_b32_e32 v84, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v17, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v19, v19, v119, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v22, v19, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v48, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v83, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v22, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v1, v62, v210 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v19
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v87, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v2
	v_fma_f32 v26, -v2, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v2, v27, v26
	v_fmac_f32_e32 v27, v69, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v27, v26
	v_div_fmas_f32 v2, v2, v25, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v119, v2, v1, v0
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v43, v212
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
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
	v_rcp_f32_e32 v25, v18
	v_fma_f32 v26, -v18, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v16, v17, v16
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v18, v27, v26
	v_fmac_f32_e32 v27, v69, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v27, v26
	v_div_fmas_f32 v18, v18, v25, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v19
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v24
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v22, v22, v19
	v_rcp_f32_e32 v25, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v24, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v19, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v69, -v24, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v69, v25
	v_fma_f32 v24, -v24, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v24, v24, v25, v27
	v_div_fixup_f32 v131, v24, v22, v19
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v118, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v118, v18, v17, v16
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v42, v212
	v_mul_f32_e32 v17, v50, v210
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v1, v0, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v1, v51, v210
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v111, v214
	v_mov_b32_e32 v111, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v1, v1, v80, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v214, v16, s2
	scratch_load_b32 v214, off, off offset:800 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v0, v0, v1, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v79, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v25, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v2, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v69, -v2, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v69, v25
	v_fma_f32 v2, -v2, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v25, v27
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v16, v17, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v127, v2, v1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v25
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v32, v212
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v108, v202
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v202, v0, s2
	scratch_load_b32 v202, off, off offset:784 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v16, null, v26, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v25, v26, v25
	v_mul_f32_e32 v27, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v16, v27, v18
	v_fmac_f32_e32 v27, v69, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v27, v18
	v_div_fmas_f32 v27, v16, v17, v27
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v33, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v110, v207
	v_mov_b32_e32 v110, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v207, v16, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[87:90], v195 offset:37376
	ds_load_b128 v[16:19], v195 offset:37392
	scratch_load_b32 v207, off, off offset:788 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v24, v88, v210
	v_mul_f32_e32 v1, v87, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v24, v24, v78, v22
	v_fma_f32 v1, v1, v77, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v24, s3
	v_cndmask_b32_e64 v0, v0, v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v24, 0xbfb8aa3b, v22 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v22
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v69
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v24, v24, v22
	v_rcp_f32_e32 v78, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v69, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v22, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v83, -v69, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v83, v78
	v_fma_f32 v69, -v69, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v78, v80
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
	v_rcp_f32_e32 v77, v2
	v_fma_f32 v78, -v2, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v79, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v2, v79, v78
	v_fmac_f32_e32 v79, v80, v77
	v_div_fixup_f32 v80, v27, v26, v25
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v25, v35, v212 :: v_dual_mul_f32 v26, v90, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v2, -v2, v79, v78
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v25, v25, v112, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v2, v2, v77, v79
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v201, v25, s2
	scratch_load_b32 v201, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v26, v26, v76, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v26, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v26, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v27
	v_fma_f32 v77, -v27, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v25, v26, v25
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v27, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	v_div_fixup_f32 v79, v69, v24, v22
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v34, v212
	v_mul_f32_e32 v24, v89, v210
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v27, v78, v77
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v101, v205
	v_mov_b32_e32 v101, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v27, v76, v78
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v205, v22, s2
	scratch_load_b32 v205, off, off offset:768 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v24, v24, v75, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v24, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v24, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v75, v69
	v_fma_f32 v76, -v69, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v22, v24, v22
	v_mul_f32_e32 v77, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v69, v77, v76
	v_fmac_f32_e32 v77, v78, v75
	v_div_fixup_f32 v78, v2, v1, v0
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v9, v212
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v1, v17, v210
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v69, -v69, v77, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v95, v206
	v_mov_b32_e32 v95, v179
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v69, v69, v75, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v206, v0, s2
	scratch_load_b32 v206, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v74, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v74, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v2, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v74
	v_fma_f32 v77, -v2, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v77, v74
	v_div_fixup_f32 v77, v27, v26, v25
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v25, v8, v212
	v_dual_mul_f32 v26, v16, v210 :: v_dual_mov_b32 v83, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v2, -v2, v76, v75
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v85, 16, v115
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(5)
	v_fma_f32 v25, v25, v94, v214
	v_mov_b32_e32 v94, v178
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v2, v2, v74, v76
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v214, v25, s2
	scratch_load_b32 v214, off, off offset:760 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v197, v2, v1, v0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v10, v212
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v26, v26, v66, v25
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v1, v18, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v21, v221
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v26, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, v221, v0, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v72, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v1, 0xbfb8aa3b, v0 :: v_dual_fmac_f32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v26, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v27
	v_fma_f32 v74, -v27, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v74, v66
	v_div_scale_f32 v74, vcc_lo, v25, v26, v25
	v_mul_f32_e32 v75, v74, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v27, v75, v74
	v_dual_fmac_f32 v75, v76, v66 :: v_dual_mov_b32 v76, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v75, v74
	v_div_fmas_f32 v27, v27, v66, v75
	v_div_fixup_f32 v75, v69, v24, v22
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v11, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v221, v27, v26, v25
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(4)
	v_fma_f32 v22, v22, v23, v207
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v19, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v207, v22, s2
	scratch_load_b32 v207, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v73, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v23, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v24
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v23, v23, v22
	v_rcp_f32_e32 v66, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v24, v66, 1.0
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, vcc_lo, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v69, v66
	v_fma_f32 v74, -v24, v73, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v66
	v_fma_f32 v24, -v24, v73, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v24, v24, v66, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:88
	scratch_load_b32 v74, off, off offset:676
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v21, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v2, v21, 1.0
	v_fmac_f32_e32 v21, v66, v21
	v_div_scale_f32 v66, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v66, v21
	v_fma_f32 v72, -v2, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v72, v21
	v_fma_f32 v2, -v2, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v2, v2, v21, v69
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v21, v53, v193
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v82, v222
	v_mov_b32_e32 v82, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v222, v21, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v71, v21
	v_mov_b32_e32 v71, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v21, v20, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v66, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v25, v66, v27
	v_fmac_f32_e32 v66, v69, v26
	v_div_fixup_f32 v222, v24, v23, v22
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v52, v193
	v_mul_f32_e32 v23, v60, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v25, -v25, v66, v27
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v254, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v25, v26, v66
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v202, v22, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v70, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v23, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v24
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v23, v23, v22
	v_rcp_f32_e32 v26, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v24, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v27, v26
	v_fma_f32 v69, -v24, v66, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v66, v69, v26
	v_div_fixup_f32 v186, v2, v1, v0
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v55, v193
	v_mul_f32_e32 v1, v63, v191
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v24, -v24, v66, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v81, v181
	v_mov_b32_e32 v81, v120
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v24, v24, v26, v66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v181, v0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v181, v25, v21, v20
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v54, v193
	v_mul_f32_e32 v21, v62, v191
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v123, v24, v23, v22
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v68, v0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v41, v193
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(6)
	v_fma_f32 v20, v20, v253, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(5)
	v_fma_f32 v22, v22, v251, v205
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v201, v20, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v205, v22, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v67, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v21, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v26, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v2, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v27, v26
	v_fma_f32 v68, -v2, v66, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v68, v26
	v_fma_f32 v2, -v2, v66, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v26, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v120, v2, v1, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v0, v40, v193 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(4)
	v_fma_f32 v0, v0, v246, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v206, v0, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v21, v21, v25
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, null, v21, v21, v20
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v66, v27, v26 :: v_dual_mul_f32 v23, v49, v191
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v1, v48, v191
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v67, -v25, v66, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v23, v3, v22
	v_fma_f32 v1, v1, v250, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v66, v67, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v22, v3, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v0, v0, v1, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v25, -v25, v66, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v22, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v25, v26, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v114, v25, v21, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v43, v193
	v_mul_f32_e32 v21, v51, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v20, v20, v245, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v214, v20, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v218, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v21, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v3
	v_rcp_f32_e32 v24, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v23, v24, 1.0
	v_fmac_f32_e32 v24, v26, v24
	v_div_scale_f32 v26, vcc_lo, v3, v22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v24
	v_fma_f32 v66, -v23, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v66, v24
	v_fma_f32 v23, -v23, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v24, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v109, v23, v22, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v42, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v22, v50, v191 :: v_dual_fmac_f32 v1, 0xbfb8aa3b, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v196, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v1, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v207, v3, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v117, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v22, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v1, 1.0, v1 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v24, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v2, v24, 1.0
	v_fmac_f32_e32 v24, v26, v24
	v_div_scale_f32 v26, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v24
	v_fma_f32 v66, -v2, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v66, v24
	v_fma_f32 v2, -v2, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v24, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v196, v2, v1, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v0, v33, v193 :: v_dual_mul_f32 v1, v88, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v243, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v228, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v216, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v21, v21, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v26, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v24, v27, v26
	v_fmac_f32_e32 v27, v66, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v27, v26
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v228, v24, v21, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v20, v32, v193 :: v_dual_mul_f32 v21, v87, v191
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v242, v255
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v255, v20, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v211, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v22, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v21, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v20
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v23
	v_fma_f32 v26, -v23, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v3, v22, v3
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v23, v27, v26
	v_fmac_f32_e32 v27, v66, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v27, v26
	v_div_fmas_f32 v23, v23, v25, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v255, v23, v22, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v3, v35, v193 :: v_dual_mul_f32 v22, v90, v191
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v239, v252
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v252, v3, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v208, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v1, v1, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v22, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v1, 1.0, v1 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v3
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v2
	v_fma_f32 v26, -v2, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v2, v27, v26
	v_fmac_f32_e32 v27, v66, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v27, v26
	v_div_fmas_f32 v2, v2, v25, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v252, v2, v1, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v0, v34, v193 :: v_dual_mul_f32 v1, v89, v191
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v198, v247
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v247, v0, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v65, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v21, v21, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v21, v21, v20
	v_rcp_f32_e32 v25, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v24, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v66, -v24, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v66, v25
	v_fma_f32 v24, -v24, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v198, v24, v21, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v17, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v3
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v22, v22, v3
	v_rcp_f32_e32 v25, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v23, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v3, v22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v66, -v23, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v66, v25
	v_fma_f32 v23, -v23, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v25, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v247, v23, v22, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v9, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v238, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v1, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v217, v3, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v64, v3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v20, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v1, 1.0, v1 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v25, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v2, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v65, -v2, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v65, v25
	v_fma_f32 v2, -v2, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v25, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v20, v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v23, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v3, v20, v3
	v_mul_f32_e32 v24, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v21, v24, v23
	v_fmac_f32_e32 v24, v25, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v21, v24, v23
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v16, v191
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v21, v22, v24
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v8, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v234, v244
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v244, v22, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v194, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v23, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v24
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v23, v23, v22
	v_rcp_f32_e32 v25, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v24, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v64, -v24, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v64, v25
	v_fma_f32 v24, -v24, v27, v26
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v26, v19, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v25, v11, v193
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v244, v24, v23, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v25, v25, v233, v241
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v241, v25, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v241, v21, v20, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v26, v26, v86, v25
	v_mov_b32_e32 v86, v176
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v26, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v25
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v26, v26, v25
	v_rcp_f32_e32 v64, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v27, v64, 1.0
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v25, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v65, v64
	v_fma_f32 v67, -v27, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v64
	v_fma_f32 v27, -v27, v66, v65
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v18, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v27, v64, v66
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v64, v10, v193
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v237, v27, v26, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v64, v64, v199, v240
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v199, v2, v1, v0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v0, off, off offset:916 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v1, v61, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v240, v64, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v190, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v65, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v64, v65, v64
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v66, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v66, v66, v67, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v240, v66, v65, v64
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v102.h, v0.l
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v53, v102
	v_mul_f32_e32 v72, v32, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v229, v215
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v215, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v189, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v20, v3
	v_div_scale_f32 v20, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, v20, v3
	v_fma_f32 v22, -v2, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v3
	v_fma_f32 v2, -v2, v21, v20
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v60, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v2, v2, v3, v21
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v52, v102
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v203, v2, v1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v224, v219
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v40, v102
	v_mul_f32_e32 v1, v48, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v219, v3, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v0, v220, v227
	scratch_load_b32 v220, off, off offset:4 ; 4-byte Folded Reload
	v_fma_f32 v20, v20, v187, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v227, v0, s2
	v_cndmask_b32_e64 v3, v3, v20, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v1, v1, v158, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v227, v0, v1, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v227
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v20, v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v23, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v3, v20, v3
	v_mul_f32_e32 v24, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v21, v24, v23
	v_fmac_f32_e32 v24, v25, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v21, v24, v23
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v63, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v21, v22, v24
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v55, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v223, v232
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v232, v22, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v185, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v23, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v24
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v23, v23, v22
	v_rcp_f32_e32 v25, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v24, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v64, -v24, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v64, v25
	v_fma_f32 v24, -v24, v27, v26
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v26, v62, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v25, v54, v102
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v25, v25, v204, v231
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v204, v21, v20, v3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v59, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v231, v25, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v26, v26, v184, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v26, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v26, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v27
	v_fma_f32 v65, -v27, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v25, v26, v25
	v_mul_f32_e32 v66, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v27, v66, v65
	v_fmac_f32_e32 v66, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v66, v65
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v49, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v27, v27, v64, v66
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v64, v41, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v235, v27, v26, v25
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v64, v64, v209, v230
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v209, off, off offset:12
	scratch_load_b32 v27, off, off offset:728
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v230, v64, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v180, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v65, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v65, v65, v64
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v64, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v66, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mov_b32_e32 v67, v236
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v236, v24, v23, v22
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v230, v66, v65, v64
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v227
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v1
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v231, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v0, null, v231, v231, v227
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v2, v1
	v_div_scale_f32 v2, vcc_lo, v227, v231, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v3, v2, v1
	v_fma_f32 v20, -v0, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v3, v20, v1 :: v_dual_mul_f32 v20, v58, v210
	v_fma_f32 v0, -v0, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v232, v0, v1, v3
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v37, v212
	v_mul_f32_e32 v1, v36, v212
	v_mul_f32_e32 v3, v56, v210
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v0, v0, v213, v220
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v213, off, off
	scratch_load_b32 v2, off, off offset:912
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v220, v0, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v64, s27, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v1, v1, v2, v213
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v57, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v213, v1, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v249, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v3, v3, v248, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v211, v0, v2, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v39, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v216, v1, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v208, v0, v113, v209
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:8
	scratch_load_b32 v1, off, off offset:908
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v38, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v209, v208, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v173, v2
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v0, v1, v113
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	scratch_load_b32 v0, off, off offset:880 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v211, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v113, v65, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v20, v171, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v22, v1, v22, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v21, s3
	v_cndmask_b32_e64 v2, v3, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v23, off, off offset:372
	scratch_load_b32 v20, off, off offset:740
	scratch_load_b32 v24, off, off offset:376
	scratch_load_b32 v21, off, off offset:744
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v121
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v178.h, 0x7fff, v22.h, vcc_lo
	v_mov_b16_e32 v22.h, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v1, v1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v116.h, v0.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v216, v122
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v54, v54, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v40, v40, v116 :: v_dual_and_b32 v3, 1, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v0, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v2, v119
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v28, v212
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v178.l, 0x7fff, v3.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v173, off, off offset:904
	scratch_load_b32 v3, off, off offset:752
	s_waitcnt vmcnt(4)
	v_fma_f32 v2, v2, v20, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v29, v212
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v23, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v20, v20, v21, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v1.h
	v_mov_b16_e32 v21.h, v116.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v45, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v1, v21, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v24, v20, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v44, v210
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v0.h
	v_mov_b16_e32 v24.h, v116.l
	v_cndmask_b16 v179.h, 0x7fff, v21.h, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v169, v1
	v_fma_f32 v20, v20, v170, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v21, v47, v210 :: v_dual_and_b32 v24, 1, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v0, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v1, v23, s3
	v_cndmask_b32_e64 v1, v2, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v171, off, off offset:900
	scratch_load_b32 v20, off, off offset:756
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v30, v212
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v179.l, 0x7fff, v24.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v0, v118 :: v_dual_mul_f32 v1, v1, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:368
	scratch_load_b32 v24, off, off offset:720
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v22.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v1, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b16 v176.l, 0x7fff, v22.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v22, off, off offset:892 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fma_f32 v2, v2, v3, v173
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v31, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v173, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v3, v3, v20, v171
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v116.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v171, v3, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v46, v210
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v176.h, 0x7fff, v20.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v161, v0
	v_fma_f32 v3, v3, v160, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v97, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v21, s3
	v_cndmask_b32_e64 v1, v2, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:176
	scratch_load_b32 v3, off, off offset:716
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v4, v212
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v0, v127 :: v_dual_mul_f32 v1, v1, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v2, v2, v3, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v5, v212
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v21, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v21, off, off offset:896 ; 4-byte Folded Reload
	v_fma_f32 v3, v3, v24, v23
	scratch_load_b32 v24, off, off offset:884 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v23, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v20, v20, v21, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v98, v210
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:680
	scratch_load_b32 v23, off, off offset:208
	v_fma_f32 v21, v21, v22, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v0.h
	v_mov_b16_e32 v22.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v0, v22, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v3, v21, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v21, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v79
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v2, v78
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v6, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v20, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v7, v212
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v23, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v23, off, off offset:888 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v20, v20, v21, v172
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e32 v21.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v172, v20, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v99, v210
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v172.l, 0x7fff, v3.h, s1
	v_cndmask_b16 v172.h, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v173.h, 0x7fff, v21.h, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:172
	scratch_load_b32 v3, off, off offset:664
	s_waitcnt vmcnt(2)
	v_fma_f32 v20, v20, v23, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v100, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v24, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v1.h
	v_mov_b16_e32 v24.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v23, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v24, 1, v24
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v77
	scratch_load_b128 v[77:80], off, off offset:296 ; 16-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v1, v24, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:364
	scratch_load_b32 v20, off, off offset:668
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v173.l, 0x7fff, v24.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v75
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:360
	scratch_load_b32 v24, off, off offset:660
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v2, v77, v212 :: v_dual_mul_f32 v65, v30, v102
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v75, v87, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v3, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v78, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v21, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fma_f32 v3, v3, v20, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v21, off, off offset:876 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v22, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v22, off, off offset:872 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v12, v210
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v170.h, 0x7fff, v20.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v14, v210
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v3, v3, v21, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v13, v210
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v21, v21, v22, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v1.h
	v_mov_b16_e32 v22.h, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v21, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v197
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v1, v22, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:868
	scratch_load_b32 v3, off, off offset:656
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v79, v212
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v170.l, 0x7fff, v22.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v22, off, off offset:860 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v3, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v80, v212
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v21, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v21, off, off offset:864 ; 4-byte Folded Reload
	v_fma_f32 v3, v3, v24, v23
	scratch_load_b32 v24, off, off offset:852 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v23, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v20, v20, v21, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v15, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v22, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v0.h
	v_mov_b16_e32 v22.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:856
	scratch_load_b32 v20, off, off offset:648
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v22, v0, v22, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v3, v21, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:356
	scratch_load_b32 v21, off, off offset:652
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v116.l
	v_cndmask_b16 v166.h, 0x7fff, v22.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v222
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v22, off, off offset:844 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v1, v2, v186 :: v_dual_mul_f32 v2, v36, v193
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v166.l, 0x7fff, v3.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v2, v2, v20, v113
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v37, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v113, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v20, v20, v21, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e32 v21.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v23, v20, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v23, off, off offset:848 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v56, v191
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v167.h, 0x7fff, v21.h, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:168
	scratch_load_b32 v3, off, off offset:640
	s_waitcnt vmcnt(2)
	v_fma_f32 v20, v20, v23, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v57, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v24, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v1.h
	v_mov_b16_e32 v24.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v23, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v23, off, off offset:824 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v24, 1, v24
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v181
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v1, v24, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v169, off, off offset:388
	scratch_load_b32 v20, off, off offset:644
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v38, v193
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v167.l, 0x7fff, v24.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v123
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v2, v2, v3, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v39, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v21, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v21, off, off offset:840 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v20, v169
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v169, v3, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v58, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v164.h, 0x7fff, v20.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v44, v191
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v3, v21, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v59, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v22, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v1.h
	v_mov_b16_e32 v22.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v21, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:164
	scratch_load_b32 v21, off, off offset:616
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v22
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v120
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v1, v22, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v171, off, off offset:160
	scratch_load_b32 v3, off, off offset:612
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v28, v193
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v164.l, 0x7fff, v22.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:836
	scratch_load_b32 v24, off, off offset:828
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v2, v2, v3, v171
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v29, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v171, v2, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v21, v113
	scratch_load_b32 v21, off, off offset:832 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v113, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v20, v21, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v45, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v22, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v0.h
	v_mov_b16_e32 v22.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:152
	scratch_load_b32 v20, off, off offset:604
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v22, v0, v22, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v3, v21, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v169, off, off offset:156
	scratch_load_b32 v21, off, off offset:608
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v116.l
	v_cndmask_b16 v160.h, 0x7fff, v22.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v109
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v22, off, off offset:820 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v109, v15, v85
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v2, v196
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v30, v193
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v160.l, 0x7fff, v3.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v3, off, off offset:596 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v2, v2, v20, v113
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v31, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v113, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v20, v20, v21, v169
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e32 v21.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v169, v20, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v46, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v161.h, 0x7fff, v21.h, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v21, off, off offset:816 ; 4-byte Folded Reload
	v_fma_f32 v20, v20, v23, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v47, v191
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v24, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v1.h
	v_mov_b16_e32 v24.h, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v23, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v228
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v1, v24, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v20, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v4, v193
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v161.l, 0x7fff, v24.h, s5
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v255
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v2, v2, v3, v162
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v5, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v162, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v3, v3, v20, v200
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v116.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v200, v3, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v97, v191
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v156.h, 0x7fff, v20.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v99, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v21, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v98, v191
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v22, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v1.h
	v_mov_b16_e32 v22.h, v116.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v21, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:148
	scratch_load_b32 v23, off, off offset:588
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v22
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v252
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v1, v22, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:144
	scratch_load_b32 v3, off, off offset:584
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v6, v193
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v156.l, 0x7fff, v22.h, s1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v22, off, off offset:812 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v3, v113
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v7, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v113, v2, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v23, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v21, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v21, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v20, v21, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v100, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v22, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v0.h
	v_mov_b16_e32 v22.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:136
	scratch_load_b32 v20, off, off offset:572
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v22, v0, v22, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v3, v21, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:140
	scratch_load_b32 v21, off, off offset:576
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v1, v2, v199 :: v_dual_mul_f32 v2, v77, v193
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v2, v2, v20, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v78, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v23, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v13, v191
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v20, v20, v21, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e32 v21.h, v116.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v24, v20, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v12, v191
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v1.h
	v_mov_b16_e32 v24.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v153, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v20, v20, v152, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v152.l, 0x7fff, v3.h, s1
	v_and_b32_e32 v24, 1, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:128
	scratch_load_b32 v3, off, off offset:564
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v153.h, 0x7fff, v21.h, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v23, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v152.h, 0x7fff, v22.h, vcc_lo
	v_add3_u32 v24, v1, v24, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:132
	scratch_load_b32 v20, off, off offset:568
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v79, v193
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v241
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v244
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v153.l, 0x7fff, v24.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v22.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v1, v1
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v1, v22, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v2, v2, v3, v113
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v80, v193
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v113, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v3, v3, v20, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v116.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v21, v3, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v14, v191
	v_mul_f32_e32 v21, v15, v191
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v147, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v21, v21, v150, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v150.h, 0x7fff, v20.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v56, v85
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v150.l, 0x7fff, v22.h, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:120
	scratch_load_b32 v3, off, off offset:556
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v21, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:124
	scratch_load_b32 v23, off, off offset:560
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v36, v102
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v1, v1, v240 :: v_dual_mul_f32 v0, v0, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	v_mov_b16_e32 v22.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v0, v22, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v2, v2, v3, v113
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v37, v102
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v113, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v3, v3, v23, v21
	v_fma_f32 v20, v20, v145, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v21, v3, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v57, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:112
	scratch_load_b32 v20, off, off offset:540
	v_fma_f32 v21, v21, v146, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v146.h, 0x7fff, v22.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v3, v21, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:116
	scratch_load_b32 v21, off, off offset:544
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v203
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v2, v204
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v38, v102
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v146.l, 0x7fff, v3.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v2, v2, v20, v113
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v39, v102
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v113, v2, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:100
	scratch_load_b32 v25, off, off offset:724
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v20, v20, v21, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e32 v21.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v23, v20, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v59, v85
	v_mul_f32_e32 v23, v58, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v147.h, 0x7fff, v21.h, s4
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:344
	scratch_load_b32 v21, off, off offset:736
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v20, v144, v0
	v_fma_f32 v23, v23, v143, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v20, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v1.h
	v_mov_b16_e32 v20.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v20, v1, v20, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v2, v23, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:104
	scratch_load_b32 v3, off, off offset:532
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e32 v2.h, v116.l
	v_cndmask_b16 v147.l, 0x7fff, v20.h, s5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:108
	scratch_load_b32 v20, off, off offset:536
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v1, v1, v235 :: v_dual_and_b32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v28, v102
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v0, v0, v3, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v29, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v23, v0, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v3, v20, v24
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v20, v43, v102 :: v_dual_mul_f32 v23, v50, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v24, v3, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v21, v22
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v21, v42, v102
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	scratch_load_b32 v24, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v22, v20, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v25, v113
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v51, v85
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v25.l, v1.h
	v_mov_b16_e32 v25.h, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v113, v21, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v71, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v25, 1, v25
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v67, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:92
	scratch_load_b32 v67, off, off offset:524
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v22, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v45, v85
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v25, v1, v25, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v23, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v23, v44, v85 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v22, v142, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v142.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v1.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v22, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v142.l, 0x7fff, v25.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v141, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s1
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v3, v230
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s1
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v23, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v232, v231, v227
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v26, v26
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v1, 1, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v23
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.h, v116.l
	v_add3_u32 v1, v2, v1, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:96
	scratch_load_b32 v2, off, off offset:528
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v22, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v0.h
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v26, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v0, v0
	v_cndmask_b16 v144.h, 0x7fff, v1.h, vcc_lo
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v141, s27, 4, v64
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v23, 1, v23
	.loc	1 441 34 is_stmt 1              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v22, v25
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v31, v102
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v26, null, v3, v3, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v23, v0, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v144.l, 0x7fff, v23.h, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v5, v102
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v65, v65, v67, v113
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v113, v65, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v46, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v69, v65, v139, v68
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v65, v33, v102
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v139, s27, 5, v64
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v65, v65, v74, v73
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:84
	scratch_load_b32 v74, off, off offset:672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v73, v65, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v73, v88, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v73, v73, v76, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v2, v25, v2, v66
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, null, v22, v22, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v65, v73, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v0, v66, v2, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v2, -v26, v27, 1.0
	v_rcp_f32_e32 v67, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v66, v47, v85 :: v_dual_fmac_f32 v27, v2, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v2, s4, v20, v3, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v66, v140, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v25, v67, 1.0
	v_mul_f32_e32 v71, v2, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v70, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v70, 0xbfb8aa3b, v73 :: v_dual_fmac_f32 v67, v66, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v66, -v26, v71, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v71, v66, v27
	.loc	1 448 18 is_stmt 1              ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[65:66], null, s27, 48, v[64:65]
	s_mov_b32 s27, 0x31027000
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v2, -v26, v71, v2
	v_div_fmas_f32 v2, v2, v27, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v2, v3, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v68, v69, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v69, v34, v102
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v72, v74, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, s5, v21, v22, v21
	s_mov_b32 vcc_lo, s5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v113, v72, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v76, v74, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v75, v75, v107, v72
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v72, v75, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v75, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v24, 1, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:72
	scratch_load_b32 v70, off, off offset:624
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v26
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v66, s33, s26, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v24, -v25, v76, v74
	s_mov_b32 s26, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v1
	.loc	1 448 18 is_stmt 1              ; generate_amdgcn.py:448:18
	v_add_nc_u32_e32 v140, 0x80, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v76, v24, v67
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	v_cndmask_b32_e64 v1, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v25, -v25, v76, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v73 :: v_dual_fmac_f32 v1, 0xbfb8aa3b, v26
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v74, v89, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v25, v25, v67, v76
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v20, v25, v22, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s6
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.h, v116.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v3, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v116.l
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v24, v21
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s4
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v24, v4, v102
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v2.h
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v1, v1, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_and_b32 v22, 1, v22
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v0, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v0, 1.0, v1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v3, v3, v73
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v145.h, 0x7fff, v20.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:80
	scratch_load_b32 v20, off, off offset:520
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, null, v0, v0, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v2, v22, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v145.l, 0x7fff, v22.h, s1
	v_mov_b16_e32 v22.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v21, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v27, v1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v27, v35, v102
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v27, v27, v70, v72
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v70, v97, v85
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v72, v27, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, s4, v26, v0, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v23, v20, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:76
	scratch_load_b32 v23, off, off offset:516
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v67, v20, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, vcc_lo, v73, v3, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v67, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v23, v24, v23, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v24, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v113, v23, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v98, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v70, v75, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v25, v24, 1.0
	v_fma_f32 v75, -v21, v71, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v135, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v24, v68, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:68
	scratch_load_b32 v68, off, off offset:620
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v71, v75, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v23, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v75, off, off offset:796 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v76, v72, v24
	v_fma_f32 v21, -v21, v71, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v1, v21, v1, v71
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v1, v1, v3, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v20, v70, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:56
	scratch_load_b32 v71, off, off offset:592
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v70, v8, v102
	v_dual_mul_f32 v8, v8, v116 :: v_dual_mul_f32 v1, v2, v1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v68, v69, v68, v113
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v69, v90, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v113, v68, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v69, v69, v101, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v74, v74, v95, v68
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v69, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v69, -v25, v76, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v68, v74, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v76, v69, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v25, v76, v72
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v74, v16, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v23
	v_cndmask_b32_e64 v67, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v21, v24, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, s6
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v27
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v21, v0, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v68
	v_exp_f32_e32 v24, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v3, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v2, v23
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v7, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v116
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v24, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v1.h
	v_mov_b16_e32 v20.h, v116.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v24, v6, v102
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v2, v2, v21
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_and_b32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v6, v6, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v0, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v3, v3, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v1, v20, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v135.l, 0x7fff, v22.h, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v2, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.h, v116.l
	v_cndmask_b16 v135.h, 0x7fff, v20.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:64
	scratch_load_b32 v20, off, off offset:512
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, null, v1, v1, v68
	v_fma_f32 v26, -v21, v2, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v2, v26, v2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v26, v9, v102
	v_mul_f32_e32 v9, v9, v116
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v26, v26, v71, v73
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v71, v99, v85
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v73, v26, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v73, s4, v68, v1, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v23, v20, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:60
	scratch_load_b32 v23, off, off offset:508
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v67, v20, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, vcc_lo, v27, v3, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v67, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v23, v24, v23, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v24, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v113, v23, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v100, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v69, -v25, v24, 1.0
	v_fmac_f32_e32 v24, v69, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:52
	scratch_load_b32 v69, off, off offset:580
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v76, v73, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v70, v69, v113
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v70, v17, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v113, v69, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v70, v70, v94, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v74, v74, v86, v69
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v70, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v70, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v143, 16, v93
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v71, v71, v75, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v75, -v21, v72, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v69, v74, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v26
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v48, v48, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v56, v56, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v72, v75, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v75, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v74
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v74, v18, v85 :: v_dual_mul_f32 v49, v49, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v21, v72, v67
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v33, v33, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v67, 0, 0x42800000, s5
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v17, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v15, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v2, v21, v2, v72
	s_mov_b32 vcc_lo, s4
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v2, v3, v27
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v20, v71, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v23, v23, v70, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v70, -v25, v76, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v23, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v76, v70, v24 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v69
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v70, v10, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v2
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v25, v76, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v23
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:44
	scratch_load_b32 v71, off, off offset:552
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v21, v24, v76
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v67
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v1, v21, v1, v68
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v3, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v24, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v2, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v78, v102
	v_mul_f32_e32 v24, v77, v102
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v1.h
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_and_b32 v22, 1, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v0, v20, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v2, v2, v21
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v3, v3, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v1, v22, 0x7fff
	v_cndmask_b16 v131.h, 0x7fff, v20.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:340
	scratch_load_b32 v20, off, off offset:500
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v0, 1.0, v2
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v2, v21
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v131.l, 0x7fff, v22.h, s1
	v_mov_b16_e32 v22.h, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, null, v0, v0, v69
	v_fma_f32 v27, -v21, v2, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v2, v27, v2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v27, v11, v102
	v_mul_f32_e32 v11, v11, v116
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v27, v27, v71, v73
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v71, v12, v85
	v_mul_f32_e32 v12, v12, v143
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v73, v27, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v73, s4, v69, v0, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v23, v20, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:48
	scratch_load_b32 v23, off, off offset:496
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v67, v20, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, vcc_lo, v26, v3, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v67, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v23, v24, v23, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v24, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v113, v23, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v13, v85
	v_mul_f32_e32 v13, v13, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v68, -v25, v24, 1.0
	v_fmac_f32_e32 v24, v68, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:40
	scratch_load_b32 v68, off, off offset:548
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v76, v73, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v68, v70, v68, v113
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v70, v19, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v113, v68, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v70, v70, v82, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v74, v74, v81, v68
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v27, v70, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v27, off, off offset:772 ; 4-byte Folded Reload
	v_fma_f32 v71, v71, v75, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v75, -v21, v72, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v82, v68, v74, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v72, v75, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v21, v72, v67
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v67, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v2, v21, v2, v72
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v2, v2, v3, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v20, v71, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v36, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v23, v23, v27, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v25, v76, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v23, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v76, v27, v24
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, s5
	v_mul_f32_e32 v23, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v25, v76, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v81
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v21, v24, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v27
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, s6
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v21, v0, v69
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v82 :: v_dual_mul_f32 v0, v3, v0
	v_ldexp_f32 v3, v24, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.l, v1.h
	v_mov_b16_e32 v20.h, v116.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v2, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v0.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v86, 1.0, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v0, v0
	v_and_b32_e32 v3, 1, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v24, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v96, null, v86, v86, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v80, v102
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v94, v0, v20, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v2, v2, v21
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v95, v96
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v127.h, 0x7fff, v3.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:36
	scratch_load_b32 v3, off, off offset:492
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v0, v53, v116 :: v_dual_add_f32 v93, 1.0, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v79, v102
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v127.l, 0x7fff, v94.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v101, null, v93, v93, v82
	v_rcp_f32_e32 v102, v101
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v1, v1, v3, v20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:32
	scratch_load_b32 v3, off, off offset:488
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v108, v20, v1, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:28
	scratch_load_b32 v20, off, off offset:460
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v1, vcc_lo, v81, v86, v81
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v2, v2, v3, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v3, -v96, v95, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v107, v113, v2, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v2, -v101, v102, 1.0
	v_fmac_f32_e32 v95, v3, v95
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v52, v116
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v20, v22
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v14, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v102, v2, v102
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:24
	scratch_load_b32 v2, off, off offset:452
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v21, v1, v95
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v22, v0, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v22, s4, v82, v93, v82
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v52, v55, v116
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v14, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v25, v22, v102
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v2, v3, v2, v23
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v3, v61, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v23, v2, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v3, v3, v126, v0
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v60, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v3, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v3, off, off offset:476 ; 4-byte Folded Reload
	v_fma_f32 v20, v20, v24, v107
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v24, -v96, v21, v1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v111, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v107, v20, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v21, v24, v95
	v_fma_f32 v24, -v101, v25, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v23, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v0
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v1, -v96, v21, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v24, v102
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v1, v1, v95, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v101, v25, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v1, v1, v86, v81
	v_div_fmas_f32 v21, v21, v102, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, s6
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v37, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s5
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v21, v21, v93, v82
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v23, v23
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v20, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v21, v23, v24
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s6
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v20.h
	v_mov_b16_e32 v24.h, v116.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_and_b32 v24, 1, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v24, v20, v24, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v3, v109, v3, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v108, v3, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v3, v1
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v3, v22
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.h, v116.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v22.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v22, 1, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v3, v23
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v21, v21, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v1, v22, 0x7fff
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v3, v23
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v36.h, 0x7fff, v22.h, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v60, off, off offset:328
	scratch_load_b32 v22, off, off offset:440
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v1, v1, v2
	v_fma_f32 v37, -v23, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v3, v37, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v22, v25, v22, v60
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:324
	scratch_load_b32 v25, off, off offset:436
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v60, v22, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v26, v25, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v26, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v53, v25, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v53, v57, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:320
	scratch_load_b32 v37, off, off offset:448
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v27, v26, 1.0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v53, v53, v67, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v26, v55, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v53, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v53, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v37, v52, v37, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v52, vcc_lo, v0, v21, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v57, v37, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v57, v63, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v61, off, off offset:316
	scratch_load_b32 v63, off, off offset:444
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v60, v52, v3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v55, v57, v110, v37
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v57, s1, v2, v1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v55, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v55, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v54, v54, v63, v61
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v63, 0xbfb8aa3b, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v61, v54, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v61, v62, v143 :: v_dual_mul_f32 v62, v57, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v56, v55, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v23, v60, v52
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v61, v61, v125, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v60, v56, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v54, v61, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v56, -v27, v62, v57
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v61, 0, 0x42800000, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v23, v60, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v62, v56, v26 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v3, v23, v3, v60
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v27, v62, v57
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v27, v61
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v3, v21, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v23, v23, v26, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s4
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v25, v55, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v54
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v1, v23, v1, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v27, v21
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v36.l, 0x7fff, v24.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v24, v39, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v2, v52
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:288
	scratch_load_b32 v27, off, off offset:416
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v22, v0 :: v_dual_mul_f32 v1, v3, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.h, v116.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v38, v116
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v55, off, off offset:20
	scratch_load_b32 v56, off, off offset:432
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s5
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v1.h
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v22.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v2, v2, v21
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v20, v20, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v0, v3, 0x7fff
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v23, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v22, v1, v22, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v26, null, v2, v2, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v21, v23, 1.0
	v_fmac_f32_e32 v23, v38, v23
	v_div_scale_f32 v38, vcc_lo, v37, v20, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v24, v24, v27, v52
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:284
	scratch_load_b32 v27, off, off offset:412
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v52, v24, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v52, v59, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v25, v27, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v39, v25, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v58, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:280
	scratch_load_b32 v58, off, off offset:428
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v39, v41, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v39, v39, v56, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v27, v41, v27
	v_div_scale_f32 v41, s4, v54, v2, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v55, v39, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v56, v41, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v49, v49, v84, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v49, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v40, v40, v58, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v58, off, off offset:456 ; 4-byte Folded Reload
	v_fma_f32 v25, v25, v53, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v53, v38, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v57, v40, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v24, v24, v25, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v21, v53, v38
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v25, v43, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v55, v23
	v_fma_f32 v55, -v26, v56, v41
	v_fma_f32 v21, -v21, v53, v38
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v38, v48, v83, v40
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v56, v55, v27
	v_div_fmas_f32 v21, v21, v23, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v38, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v26, v56, v41
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v20, v21, v20, v37
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v37.h, 0x7fff, v3.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v23, v23, v27, v56
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v40
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v39
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v23, v2, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:256
	scratch_load_b32 v41, off, off offset:424
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v37.l, 0x7fff, v22.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v28, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v24, v2
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.h, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v40
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v24.l, v2.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v21, v3
	v_exp_f32_e32 v21, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v23, 1, v24
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v1, 1.0, v3
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v1, v1, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v3, v21, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v21, v24
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v52, v52, v58, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v0, v52, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v0, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.h, v116.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v20.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v0, v20, 0x7fff
	v_add3_u32 v0, v2, v23, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v23, null, v3, v3, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v38.h, 0x7fff, v20.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v29, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:260
	scratch_load_b32 v26, off, off offset:400
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v27, v23
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v25, v25, v41, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, vcc_lo, v39, v1, v39
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v113, v25, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:252
	scratch_load_b32 v43, off, off offset:420
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v20, v20, v26, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:336
	scratch_load_b32 v26, off, off offset:396
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v29, v20, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v29, v42, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v23, v27, 1.0
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v29, v29, v43, v113
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v43, v44, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v27, v42, v27
	v_div_scale_f32 v42, s1, v40, v3, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v49, v42, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v22, v22, v26, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v24, v21, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v28, v22, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v21, v26, v21 :: v_dual_mul_f32 v26, v51, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v45, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v43, v165, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v44, v41, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v26, v26, v105, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v28, v155, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v43, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v48, -v24, v44, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v26, s3
	v_cndmask_b32_e64 v26, v113, v29, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v29, v50, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v28, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v44, v48, v21
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v29, v29, v104, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v24, -v24, v44, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v29, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v23, v49, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v24, v21, v44
	s_mov_b32 vcc_lo, s1
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_dual_mul_f32 v48, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v49, v29, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v1, v21, v1, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v48
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v23, v49, v42
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v20, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v28, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v29, 0, 0x42800000, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v23, v23, v27, v49
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v26
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v3, v23, v3, v40
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.h, v116.l
	v_cndmask_b16 v38.l, 0x7fff, v0.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v28, v24
	v_exp_f32_e32 v27, v29
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v31, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:248
	scratch_load_b32 v31, off, off offset:380
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v22, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v22.l, v1.h
	v_mov_b16_e32 v22.h, v116.l
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v2, 1.0, v24
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v40, v47, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 1, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v27, v21
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v2, v2, v25
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v22, 1, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v30, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v24, v21
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v0, v1, v0, 0x7fff
	v_add3_u32 v22, v3, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v27, null, v20, v20, v26
	v_rcp_f32_e32 v28, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v21, v24, 1.0
	v_fmac_f32_e32 v24, v30, v24
	v_div_scale_f32 v30, vcc_lo, v25, v2, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v23, v23, v31, v113
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:244
	scratch_load_b32 v31, off, off offset:384
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v113, v23, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:240
	scratch_load_b32 v43, off, off offset:408
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v29, v29, v31, v39
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v39, v29, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v29, v30, v24
	v_fmac_f32_e32 v28, v31, v28
	v_div_scale_f32 v31, s4, v26, v20, v26
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v33, v43, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v21, v29, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v43, v88, v143 :: v_dual_mul_f32 v42, v31, v28
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v39, v46, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v113, v33, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v29, v41, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v40, v154, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v27, v42, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v39, v39, v151, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v21, v29, v30
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v30, v32, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v42, v41, v28
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v32, v43, v103, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v39, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v21, v21, v24, v29
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v24, -v27, v42, v31
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:228
	scratch_load_b32 v27, off, off offset:404
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v33, v32, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v2, v21, v2, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v40, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v24, v24, v28, v42
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v28, v87, v143
	v_mul_f32_e32 v42, v34, v116
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v40, v98, v143
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v20, v24, v20, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v24.h, 0x7fff, v0.h, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v1, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.h, v116.l
	v_cmp_o_f32_e64 s1, v3, v3
	v_mov_b16_e32 v3.h, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v1.l, v0.h
	v_cndmask_b16 v24.l, 0x7fff, v22.h, s1
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_and_b32_e32 v1, 1, v1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v27, v30, v27, v113
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v30, 0xbfb8aa3b, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v113, v27, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v30, v23, v20
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v28, v132, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v3.l, v30.h
	v_add3_u32 v28, v0, v1, 0x7fff
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v5, v116
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v27, v21, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v29
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v5, v35, v116 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v31
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v20, v25
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v27, v90, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v25, v30, v3, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s1
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v20, v20, v21
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v32, 1.0, v20
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:224
	scratch_load_b32 v21, off, off offset:352
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v0, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v4, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v4, null, v32, v32, v29
	v_div_scale_f32 v22, vcc_lo, v29, v32, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v33, v4
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_ldexp_f32 v0, v0, v3
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	scratch_load_b32 v3, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v34, -v4, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v1, v1, v21, v20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:220
	scratch_load_b32 v21, off, off offset:348
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v20, v1, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v1, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v20, v89, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v40, v134, v39
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v3, v5, v3, v168
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v5, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v39, v34, s3
	v_cndmask_b32_e64 v41, v168, v3, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v0, v27, v149, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v27, v22, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v41, v0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v40, -v4, v27, v22
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v27, v40, v33
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v4, -v4, v27, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v4, v4, v33, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s4
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v33, v99, v143
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v4, v4, v32, v29
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v34, v4
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v34, v100, v143
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v22, v23, v40
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v21, v113
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v5, v5, v31
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v1, v42, v1, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v3, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v113, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v97, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v192, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v136, v35
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v148, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v26, -v21, v3, 1.0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v35, v2, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v1, v1, v20, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v3, v26, v3
	v_div_scale_f32 v20, s5, v31, v5, v31
	s_mov_b32 vcc_lo, s5
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v26, 0xbfb8aa3b, v1 :: v_dual_mul_f32 v41, v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v39, -v21, v41, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v41, v39, v3 :: v_dual_fmac_f32 v26, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v21, v41, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s6
	v_exp_f32_e32 v23, v26
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v26.h, v116.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v3, v20, v3, v41
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v30, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v3, v3, v5, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v31, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v28.l, 0x7fff, v25.h, vcc_lo
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v20, v23, v21
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v22, v22, v0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v4.h
	v_mov_b16_e32 v23.h, v116.l
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v5, 1.0, v20
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v20, v21
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v26.l, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v23, 1, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v3, null, v5, v5, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v25, 1, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v26, vcc_lo, v0, v22, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v23, v4, v23, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v21, v20, 1.0
	v_rcp_f32_e32 v27, v3
	v_fmac_f32_e32 v20, v29, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v3, v27, 1.0
	v_fmac_f32_e32 v27, v29, v27
	v_div_scale_f32 v29, s1, v1, v5, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v32, v29, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v7, v7, v30, v175
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v30, v26, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v6, v31, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v175, v7, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v21, v30, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v174, v6, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v34, v133, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v30, v31, v20
	v_fma_f32 v31, -v3, v32, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v33, v130, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v34, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v21, v30, v26
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v26, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v32, v31, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v34, 0x7632
	v_add3_u32 v25, v2, v25, 0x7fff
	v_cndmask_b32_e64 v31, v28, v38, s0
	v_cndmask_b32_e64 v28, v38, v28, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v3, -v3, v32, v29
	v_div_fmas_f32 v20, v21, v20, v30
	s_mov_b32 vcc_lo, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v33, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v3, v3, v27, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v20, v22, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v1, v3, v5, v1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v3, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v0, v7, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v7.h, 0x7fff, v23.h, vcc_lo
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v5, v16, v143
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v7.l, 0x7fff, v25.h, s1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v18, v143
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v6, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v18, v77, v116
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v9, v9, v26, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v106, v9, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v138, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v9, v17, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e32 v9.h, v116.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v6, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v2, 1, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v1, v2, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v6, v6
	v_ldexp_f32 v6, v6, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v9, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v17, null, v6, v6, v4
	v_div_scale_f32 v21, s5, v4, v6, v4
	v_rcp_f32_e32 v20, v17
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v9, v11, v9, v225
	scratch_load_b32 v11, off, off offset:272 ; 4-byte Folded Reload
	v_fma_f32 v3, v8, v3, v226
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e32 v8.h, v116.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v225, v9, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v3, v226, v3, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v5, v5, v137, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v5, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v5, 1, v8
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v5, v0, v5, 0x7fff
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v0, v10, v116
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v78, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v8, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v3
	v_exp_f32_e32 v8, v8
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v11, v157
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v19, v143
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v19, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v157, v0, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v11, v11, v188, v9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v11, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:16
	scratch_load_b32 v11, off, off offset:236
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v10, v11, v113
	scratch_load_b32 v11, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v16, v16, v19, v0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v113, v10, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v0, v0, v16, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v8, v8, v19
	v_mul_f32_e32 v16, 0xbfb8aa3b, v9
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v19, -v17, v20, 1.0
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v128, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v20, v19, v20
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v10, v10, v13, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v19, null, v8, v8, v3
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v23, v21, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v22, v19
	s_mov_b32 vcc_lo, s5
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v27, -v17, v23, v21
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v23, v27, v20
	v_fma_f32 v29, -v19, v22, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v17, v23, v21
	v_fmac_f32_e32 v22, v29, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v16, v16, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v17, v17, v20, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v4, v17, v6, v4
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v79, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v10, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v10.h, v116.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v18, v11, v183
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v183, v11, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v129, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s1
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v25, s1, v3, v8, v3
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v12, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v12, v80, v116 :: v_dual_mul_f32 v21, v25, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v18, v18
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v20, -v19, v21, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v21, v20, v22
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	scratch_load_b32 v20, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v18, v26
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v26, null, v16, v16, v9
	v_fma_f32 v19, -v19, v21, v25
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v25, v127, v135, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v29, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v22, v21
	v_div_scale_f32 v27, null, v18, v18, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v19, v8, v3
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v19, v153, v146, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v30, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v6, -v26, v29, 1.0
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v3, v11, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v29, v6, v29
	v_div_scale_f32 v6, s4, v9, v16, v9
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v13, -v27, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v13, v30
	v_div_scale_f32 v13, s5, v0, v18, v0
	v_mul_f32_e32 v23, v13, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v27, v23, v13
	v_fmac_f32_e32 v23, v22, v30
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v22, v145, v142, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v13, -v27, v23, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v27, v36, v131, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v17, v17, v20, v177
	scratch_load_b32 v20, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v177, v17, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v14, v91, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v17, v8, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v17, v152, v150, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v12, v12, v20, v182
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v20, v6, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v182, v12, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v26, v20, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s2, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v15, v92, v12
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v20, v21, v29
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v15, v160, v156, s0
	v_cndmask_b32_e64 v21, v147, v144, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v12, v14, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v6, -v26, v20, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v26, v135, v127, s0
	v_cndmask_b32_e64 v12, v161, v164, s0
	v_cndmask_b32_e64 v14, v156, v160, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v6, v6, v29, v20
	s_mov_b32 vcc_lo, s5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v29, v131, v36, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v13, v13, v30, v23
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v6, v16, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v3.h
	v_mov_b16_e32 v9.h, v116.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v0, v13, v18, v0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v5.l, 0x7fff, v2.h, vcc_lo
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v11, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v116.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v0, v8, v0 :: v_dual_and_b32 v9, 1, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v4.h
	v_mov_b16_e32 v8.h, v116.l
	v_mov_b16_e32 v10.l, v6.h
	v_add3_u32 v1, v3, v9, 0x7fff
	v_mov_b16_e32 v11.l, v0.h
	v_cmp_o_f32_e64 s3, v6, v6
	v_and_b32_e32 v8, 1, v8
	v_and_b32_e32 v10, 1, v10
	v_cmp_o_f32_e64 s4, v0, v0
	v_and_b32_e32 v9, 1, v11
	v_cndmask_b32_e64 v11, v170, v167, s0
	v_add3_u32 v8, v4, v8, 0x7fff
	v_add3_u32 v4, v6, v10, 0x7fff
	v_cndmask_b32_e64 v6, v179, v172, s0
	v_add3_u32 v3, v0, v9, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s1
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s3
	v_cndmask_b32_e64 v9, v173, v166, s0
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s4
	v_cndmask_b32_e64 v3, v178, v176, s0
	v_cndmask_b32_e64 v32, v0, v7, s0
	v_cndmask_b32_e64 v0, v7, v0, s0
	v_mov_b32_e32 v7, 0x5410
	v_cndmask_b32_e64 v33, v1, v5, s0
	v_cndmask_b32_e64 v1, v5, v1, s0
	v_cndmask_b32_e64 v13, v164, v161, s0
	v_cndmask_b32_e64 v23, v142, v145, s0
	v_cndmask_b32_e64 v5, 0x1054, v7, s0
	v_cndmask_b32_e64 v7, 0x3276, v34, s0
	v_cndmask_b32_e64 v30, v24, v37, s0
	v_cndmask_b32_e64 v24, v37, v24, s0
	s_mov_b32 s1, 0x76543210
	v_lshl_or_b32 v5, v5, 8, v5
	v_lshl_or_b32 v7, v7, 8, v7
	v_cndmask_b32_e64 v2, v176, v178, s0
	v_cndmask_b32_e64 v4, v172, v179, s0
	v_cndmask_b32_e64 v8, v166, v173, s0
	v_and_b32_e32 v5, 0x540054, v5
	v_and_b32_e32 v7, 0x760076, v7
	v_cndmask_b32_e64 v10, v167, v170, s0
	v_cndmask_b32_e64 v16, v150, v152, s0
	v_cndmask_b32_e64 v18, v146, v153, s0
	v_lshl_or_b32 v5, v5, 4, v5
	v_lshl_or_b32 v7, v7, 4, v7
	v_cndmask_b32_e64 v20, v144, v147, s0
	v_permlanex16_b32 v3, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v35, 0x5040504, v5
	v_and_b32_e32 v36, 0x7060706, v7
	v_permlanex16_b32 v28, v28, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v24, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v3, v2, v35
	v_perm_b32 v1, v3, v2, v36
	v_perm_b32 v2, v6, v4, v35
	v_perm_b32 v3, v6, v4, v36
	v_perm_b32 v4, v9, v8, v35
	v_perm_b32 v5, v9, v8, v36
	v_perm_b32 v6, v11, v10, v35
	v_perm_b32 v7, v11, v10, v36
	v_perm_b32 v8, v13, v12, v35
	v_perm_b32 v9, v13, v12, v36
	v_perm_b32 v10, v15, v14, v35
	v_perm_b32 v11, v15, v14, v36
	v_perm_b32 v12, v17, v16, v35
	v_perm_b32 v13, v17, v16, v36
	v_perm_b32 v14, v19, v18, v35
	v_perm_b32 v15, v19, v18, v36
	v_perm_b32 v16, v21, v20, v35
	v_perm_b32 v17, v21, v20, v36
	v_perm_b32 v18, v23, v22, v35
	v_perm_b32 v19, v23, v22, v36
	v_perm_b32 v20, v26, v25, v35
	v_perm_b32 v21, v26, v25, v36
	v_perm_b32 v22, v29, v27, v35
	v_perm_b32 v23, v29, v27, v36
	v_perm_b32 v26, v28, v31, v35
	v_perm_b32 v27, v28, v31, v36
	v_perm_b32 v28, v37, v32, v35
	v_perm_b32 v29, v37, v32, v36
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v32, v66, v64, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v24, v34, v30, v35
	v_perm_b32 v25, v34, v30, v36
	v_add_lshl_u32 v34, v66, v141, 1
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v32, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v34, s[24:27], 0 offen
	v_add_lshl_u32 v0, v140, v141, 1
	v_add_lshl_u32 v1, v66, v139, 1
	v_add_lshl_u32 v2, v140, v139, 1
	v_add_lshl_u32 v3, v66, v65, 1
	v_perm_b32 v30, v38, v33, v35
	v_perm_b32 v31, v38, v33, v36
	v_add_lshl_u32 v4, v140, v65, 1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 924
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 924
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 42976
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 924
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 924
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 411
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
