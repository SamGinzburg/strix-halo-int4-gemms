	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v34, 0xf0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v12, 3, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v13, 1, v0
	v_lshlrev_b32_e32 v17, 5, v0
	v_and_b32_e32 v19, 8, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v10, 3, v34
	v_and_b32_e32 v18, 4, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v61, 0, v13
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
	s_min_i32 s6, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s16
	s_sub_i32 s18, 0, s16
	v_rcp_iflag_f32_e32 v1, s8
	s_load_b256 s[8:15], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s17, v1
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
	s_add_i32 s3, s31, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s30, v10
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
	s_lshr_b32 s16, s16, 24
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
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v1, s35, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v33, 15, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s30, v12
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v11, v33, 4, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s7, s26, s30
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v1, s33, s18, v11
	v_add_nc_u32_e32 v2, s35, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v3, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[36:39], 0 offen
	buffer_load_b128 v[23:26], v2, s[36:39], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v2, s27, v1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v1, s27, 6, v1
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v20, v33, 9, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v7, s35, v2
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v21, 0x90, v20
	v_xor_b32_e32 v22, 0x110, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[27:30], v2, s[36:39], 0 offen
	buffer_load_b128 v[35:38], v7, s[36:39], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s26, v12
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v7, 14, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s5, 63
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v8, s27, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s30, 32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v63, 0, v21
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v9, v2, v7, s34
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s44, v10
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v14, s35, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v64, 0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v2, s7, v9
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s35, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	s_clause 0x1
	buffer_load_b128 v[39:42], v1, s[36:39], 0 offen
	buffer_load_b128 v[43:46], v7, s[36:39], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v1, 0x80000000, v8, s4
	v_cndmask_b32_e64 v7, 0x80000000, v14, s4
	s_clause 0x1
	buffer_load_b128 v[47:50], v1, s[36:39], 0 offen
	buffer_load_b128 v[51:54], v7, s[36:39], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s26, 5
	v_lshlrev_b32_e32 v2, 4, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_u16 v60, v1, s[8:11], 0 offen
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s44, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v1, s7, s4, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v62, 0, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x5f
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_u16 v65, v1, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v7, v23, v3, 0x5010400
	v_perm_b32 v8, v23, v3, 0x7030602
	v_perm_b32 v14, v24, v4, 0x5010400
	v_perm_b32 v15, v24, v4, 0x7030602
	v_perm_b32 v16, v25, v5, 0x5010400
	v_perm_b32 v23, v25, v5, 0x7030602
	v_perm_b32 v24, v26, v6, 0x5010400
	v_perm_b32 v25, v26, v6, 0x7030602
	v_lshrrev_b32_e32 v26, 8, v7
	v_lshrrev_b32_e32 v32, 8, v8
	v_lshrrev_b32_e32 v55, 24, v8
	v_lshrrev_b32_e32 v56, 8, v14
	v_lshrrev_b32_e32 v57, 24, v14
	v_lshrrev_b32_e32 v67, 24, v16
	v_lshrrev_b32_e32 v68, 8, v23
	v_lshrrev_b32_e32 v70, 8, v24
	v_lshrrev_b32_e32 v71, 24, v24
	v_lshrrev_b32_e32 v72, 8, v25
	v_lshrrev_b32_e32 v73, 24, v25
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v74, v35, v27, 0x5010400
	v_perm_b32 v35, v35, v27, 0x7030602
	v_perm_b32 v75, v36, v28, 0x5010400
	v_perm_b32 v36, v36, v28, 0x7030602
	v_perm_b32 v76, v37, v29, 0x5010400
	v_perm_b32 v37, v37, v29, 0x7030602
	v_perm_b32 v77, v38, v30, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v31, 24, v7
	v_lshrrev_b32_e32 v58, 8, v15
	v_lshrrev_b32_e32 v59, 24, v15
	v_lshrrev_b32_e32 v69, 24, v23
	v_lshrrev_b32_e32 v66, 8, v16
	v_and_b16 v1.l, 0xff, v7.l
	v_and_b16 v1.h, 0xff, v7.h
	v_and_b16 v3.l, 0xff, v8.l
	v_and_b16 v4.h, 0xff, v14.h
	v_and_b16 v5.l, 0xff, v15.l
	v_and_b16 v6.l, 0xff, v16.l
	v_and_b16 v6.h, 0xff, v16.h
	v_and_b16 v7.l, 0xff, v23.l
	v_and_b16 v7.h, 0xff, v23.h
	v_and_b16 v14.h, 0xff, v25.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v78, v38, v30, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v15.l, 8, v26.l
	v_lshlrev_b16 v16.l, 8, v32.l
	v_lshlrev_b16 v16.h, 8, v55.l
	v_lshlrev_b16 v23.l, 8, v56.l
	v_lshlrev_b16 v23.h, 8, v57.l
	v_lshlrev_b16 v25.h, 8, v67.l
	v_lshlrev_b16 v26.l, 8, v68.l
	v_lshlrev_b16 v27.l, 8, v70.l
	v_lshlrev_b16 v27.h, 8, v71.l
	v_lshlrev_b16 v28.l, 8, v72.l
	v_lshlrev_b16 v28.h, 8, v73.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v29.l, 0xff, v74.l
	v_lshrrev_b32_e32 v55, 8, v74
	v_lshrrev_b32_e32 v56, 24, v74
	v_and_b16 v29.h, 0xff, v74.h
	v_lshrrev_b32_e32 v57, 8, v35
	v_and_b16 v32.l, 0xff, v36.l
	v_lshrrev_b32_e32 v67, 8, v36
	v_lshrrev_b32_e32 v68, 24, v36
	v_and_b16 v32.h, 0xff, v36.h
	v_lshrrev_b32_e32 v70, 24, v76
	v_and_b16 v36.l, 0xff, v37.l
	v_lshrrev_b32_e32 v71, 8, v37
	v_lshrrev_b32_e32 v72, 24, v37
	v_and_b16 v36.h, 0xff, v37.h
	v_and_b16 v37.l, 0xff, v77.l
	v_lshrrev_b32_e32 v73, 8, v77
	v_lshrrev_b32_e32 v74, 24, v77
	v_and_b16 v37.h, 0xff, v77.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v77, v43, v39, 0x5010400
	v_and_b16 v3.h, 0xff, v8.h
	v_and_b16 v5.h, 0xff, v15.h
	v_and_b16 v8.l, 0xff, v24.l
	v_lshlrev_b16 v15.h, 8, v31.l
	v_lshlrev_b16 v24.l, 8, v58.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v58, 24, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v4.l, 0xff, v14.l
	v_and_b16 v8.h, 0xff, v24.h
	v_lshlrev_b16 v24.h, 8, v59.l
	v_lshlrev_b16 v26.h, 8, v69.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v59, 8, v75
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v43, v43, v39, 0x7030602
	v_and_b16 v14.l, 0xff, v25.l
	v_lshlrev_b16 v25.l, 8, v66.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v66, 24, v75
	s_waitcnt vmcnt(2)
	v_perm_b32 v82, v51, v47, 0x5010400
	v_and_b16 v30.l, 0xff, v35.l
	v_and_b16 v30.h, 0xff, v35.h
	v_and_b16 v31.l, 0xff, v75.l
	v_and_b16 v31.h, 0xff, v75.h
	v_and_b16 v35.l, 0xff, v76.l
	v_lshrrev_b32_e32 v69, 8, v76
	v_and_b16 v35.h, 0xff, v76.h
	v_and_b16 v38.l, 0xff, v78.l
	v_lshrrev_b32_e32 v75, 8, v78
	v_lshrrev_b32_e32 v76, 24, v78
	v_and_b16 v38.h, 0xff, v78.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v78, v44, v40, 0x5010400
	v_perm_b32 v44, v44, v40, 0x7030602
	v_perm_b32 v79, v45, v41, 0x5010400
	v_perm_b32 v45, v45, v41, 0x7030602
	v_perm_b32 v80, v46, v42, 0x5010400
	v_perm_b32 v81, v46, v42, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v51, v51, v47, 0x7030602
	v_perm_b32 v83, v52, v48, 0x5010400
	v_perm_b32 v52, v52, v48, 0x7030602
	v_perm_b32 v84, v53, v49, 0x5010400
	v_perm_b32 v53, v53, v49, 0x7030602
	v_perm_b32 v85, v54, v50, 0x5010400
	v_perm_b32 v86, v54, v50, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v1.l, v1.l, v15.l
	v_or_b16 v3.l, v3.l, v16.l
	v_or_b16 v6.h, v6.h, v25.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v15.l, 8, v55.l
	v_lshlrev_b16 v16.l, 8, v57.l
	v_lshlrev_b16 v25.h, 8, v70.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v55, 8, v77
	v_or_b16 v1.h, v1.h, v15.h
	v_or_b16 v3.h, v3.h, v16.h
	v_or_b16 v7.l, v7.l, v26.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v15.h, 8, v56.l
	v_lshlrev_b16 v16.h, 8, v58.l
	v_lshlrev_b16 v26.l, 8, v71.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v56, 24, v77
	v_or_b16 v4.l, v4.l, v23.l
	v_or_b16 v7.h, v7.h, v26.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v23.l, 8, v59.l
	v_lshlrev_b16 v26.h, 8, v72.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v57, 8, v43
	v_or_b16 v4.h, v4.h, v23.h
	v_or_b16 v8.l, v8.l, v27.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v23.h, 8, v66.l
	v_lshlrev_b16 v27.l, 8, v73.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v58, 24, v43
	v_and_b16 v39.l, 0xff, v77.l
	v_and_b16 v39.h, 0xff, v77.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v77, 8, v82
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v5.l, v5.l, v24.l
	v_or_b16 v5.h, v5.h, v24.h
	v_or_b16 v6.l, v6.l, v25.l
	v_or_b16 v8.h, v8.h, v27.h
	v_or_b16 v14.l, v14.l, v28.l
	v_or_b16 v14.h, v14.h, v28.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v24.l, 8, v67.l
	v_lshlrev_b16 v24.h, 8, v68.l
	v_lshlrev_b16 v25.l, 8, v69.l
	v_lshlrev_b16 v27.h, 8, v74.l
	v_lshlrev_b16 v28.l, 8, v75.l
	v_lshlrev_b16 v28.h, 8, v76.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v40.l, 0xff, v43.l
	v_and_b16 v40.h, 0xff, v43.h
	v_and_b16 v41.l, 0xff, v78.l
	v_lshrrev_b32_e32 v59, 8, v78
	v_lshrrev_b32_e32 v66, 24, v78
	v_and_b16 v41.h, 0xff, v78.h
	v_and_b16 v42.l, 0xff, v44.l
	v_lshrrev_b32_e32 v67, 8, v44
	v_lshrrev_b32_e32 v68, 24, v44
	v_and_b16 v42.h, 0xff, v44.h
	v_and_b16 v43.l, 0xff, v79.l
	v_lshrrev_b32_e32 v69, 8, v79
	v_lshrrev_b32_e32 v70, 24, v79
	v_and_b16 v43.h, 0xff, v79.h
	v_and_b16 v44.l, 0xff, v45.l
	v_lshrrev_b32_e32 v71, 8, v45
	v_lshrrev_b32_e32 v72, 24, v45
	v_and_b16 v44.h, 0xff, v45.h
	v_and_b16 v45.l, 0xff, v80.l
	v_lshrrev_b32_e32 v73, 8, v80
	v_lshrrev_b32_e32 v74, 24, v80
	v_and_b16 v45.h, 0xff, v80.h
	v_and_b16 v46.l, 0xff, v81.l
	v_lshrrev_b32_e32 v75, 8, v81
	v_lshrrev_b32_e32 v76, 24, v81
	v_and_b16 v46.h, 0xff, v81.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v47.l, 0xff, v82.l
	v_lshrrev_b32_e32 v78, 24, v82
	v_and_b16 v47.h, 0xff, v82.h
	v_and_b16 v48.l, 0xff, v51.l
	v_lshrrev_b32_e32 v79, 8, v51
	v_lshrrev_b32_e32 v80, 24, v51
	v_and_b16 v48.h, 0xff, v51.h
	v_and_b16 v49.l, 0xff, v83.l
	v_lshrrev_b32_e32 v81, 8, v83
	v_lshrrev_b32_e32 v82, 24, v83
	v_and_b16 v49.h, 0xff, v83.h
	v_and_b16 v50.l, 0xff, v52.l
	v_lshrrev_b32_e32 v83, 8, v52
	v_lshrrev_b32_e32 v87, 24, v52
	v_and_b16 v50.h, 0xff, v52.h
	v_and_b16 v51.l, 0xff, v84.l
	v_lshrrev_b32_e32 v88, 8, v84
	v_lshrrev_b32_e32 v89, 24, v84
	v_and_b16 v51.h, 0xff, v84.h
	v_and_b16 v52.l, 0xff, v53.l
	v_lshrrev_b32_e32 v84, 8, v53
	v_lshrrev_b32_e32 v90, 24, v53
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.l, 0xff, v85.l
	v_lshrrev_b32_e32 v91, 8, v85
	v_lshrrev_b32_e32 v92, 24, v85
	v_and_b16 v53.h, 0xff, v85.h
	v_lshrrev_b32_e32 v85, 8, v86
	v_lshrrev_b32_e32 v93, 24, v86
	v_or_b16 v15.l, v29.l, v15.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v62, v1
	ds_store_b16_d16_hi v62, v1 offset:32
	ds_store_b16 v62, v3 offset:64
	ds_store_b16_d16_hi v62, v3 offset:96
	ds_store_b16_d16_hi v63, v4 offset:32
	ds_store_b16 v63, v5 offset:64
	ds_store_b16_d16_hi v63, v5 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.h, v30.l, v16.l
	v_or_b16 v16.l, v35.h, v25.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v25.h, 8, v55.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v3.l, v30.h, v16.h
	v_or_b16 v16.h, v36.l, v26.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v26.l, 8, v56.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v3.h, v31.l, v23.l
	v_or_b16 v23.l, v36.h, v26.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v26.h, 8, v57.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v4.h, v31.h, v23.h
	v_or_b16 v23.h, v37.l, v27.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v27.l, 8, v58.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v1.l, v29.h, v15.h
	v_lshlrev_b16 v35.h, 8, v77.l
	v_and_b16 v54.l, 0xff, v86.l
	v_and_b16 v54.h, 0xff, v86.h
	v_or_b16 v5.l, v32.l, v24.l
	v_or_b16 v5.h, v32.h, v24.h
	v_or_b16 v15.h, v35.l, v25.l
	v_or_b16 v24.l, v37.h, v27.h
	v_or_b16 v24.h, v38.l, v28.l
	v_or_b16 v25.l, v38.h, v28.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v27.h, 8, v59.l
	v_lshlrev_b16 v28.l, 8, v66.l
	v_lshlrev_b16 v28.h, 8, v67.l
	v_lshlrev_b16 v29.l, 8, v68.l
	v_lshlrev_b16 v29.h, 8, v69.l
	v_lshlrev_b16 v30.l, 8, v70.l
	v_lshlrev_b16 v30.h, 8, v71.l
	v_lshlrev_b16 v31.l, 8, v72.l
	v_lshlrev_b16 v31.h, 8, v73.l
	v_lshlrev_b16 v32.l, 8, v74.l
	v_lshlrev_b16 v32.h, 8, v75.l
	v_lshlrev_b16 v35.l, 8, v76.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v36.l, 8, v78.l
	v_lshlrev_b16 v36.h, 8, v79.l
	v_lshlrev_b16 v37.l, 8, v80.l
	v_lshlrev_b16 v37.h, 8, v81.l
	v_lshlrev_b16 v38.l, 8, v82.l
	v_lshlrev_b16 v38.h, 8, v83.l
	v_lshlrev_b16 v55.l, 8, v87.l
	v_lshlrev_b16 v55.h, 8, v88.l
	v_lshlrev_b16 v56.l, 8, v89.l
	v_lshlrev_b16 v56.h, 8, v84.l
	v_lshlrev_b16 v57.l, 8, v90.l
	v_lshlrev_b16 v57.h, 8, v91.l
	v_lshlrev_b16 v58.l, 8, v92.l
	v_lshlrev_b16 v58.h, 8, v85.l
	v_lshlrev_b16 v59.l, 8, v93.l
	ds_store_b16 v62, v15 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v63, v4
	ds_store_b16 v64, v6
	ds_store_b16_d16_hi v64, v6 offset:32
	ds_store_b16 v64, v7 offset:64
	ds_store_b16_d16_hi v64, v7 offset:96
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v61, v60 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v62, v1 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v62, v8 offset:384
	ds_store_b16_d16_hi v62, v8 offset:416
	ds_store_b16 v62, v14 offset:448
	ds_store_b16_d16_hi v62, v14 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v62, v1 offset:16416
	ds_store_b16 v62, v3 offset:16480
	ds_store_b16_d16_hi v63, v3 offset:16384
	ds_store_b16_d16_hi v63, v4 offset:16416
	ds_store_b16 v63, v5 offset:16448
	ds_store_b16_d16_hi v63, v5 offset:16480
	ds_store_b16_d16_hi v64, v15 offset:16384
	ds_store_b16 v64, v16 offset:16416
	ds_store_b16_d16_hi v64, v16 offset:16448
	ds_store_b16 v64, v23 offset:16480
	ds_store_b16_d16_hi v62, v23 offset:16768
	ds_store_b16 v62, v24 offset:16800
	ds_store_b16_d16_hi v62, v24 offset:16832
	ds_store_b16 v62, v25 offset:16864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v1.l, v39.l, v25.h
	v_or_b16 v1.h, v39.h, v26.l
	v_or_b16 v3.l, v40.l, v26.h
	v_or_b16 v3.h, v40.h, v27.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v15.l, v47.l, v35.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v4.l, v41.l, v27.h
	v_or_b16 v4.h, v41.h, v28.l
	v_or_b16 v5.l, v42.l, v28.h
	v_or_b16 v5.h, v42.h, v29.l
	v_or_b16 v6.l, v43.l, v29.h
	v_or_b16 v6.h, v43.h, v30.l
	v_or_b16 v7.l, v44.l, v30.h
	v_or_b16 v7.h, v44.h, v31.l
	v_or_b16 v8.l, v45.l, v31.h
	v_or_b16 v8.h, v45.h, v32.l
	v_or_b16 v14.l, v46.l, v32.h
	v_or_b16 v14.h, v46.h, v35.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v15.h, v47.h, v36.l
	v_or_b16 v16.l, v48.l, v36.h
	v_or_b16 v16.h, v48.h, v37.l
	v_or_b16 v23.l, v49.l, v37.h
	v_or_b16 v23.h, v49.h, v38.l
	v_or_b16 v24.l, v50.l, v38.h
	v_or_b16 v24.h, v50.h, v55.l
	v_or_b16 v25.l, v51.l, v55.h
	v_or_b16 v25.h, v51.h, v56.l
	v_or_b16 v26.l, v52.l, v56.h
	v_or_b16 v26.h, v52.h, v57.l
	v_or_b16 v27.l, v53.l, v57.h
	v_or_b16 v27.h, v53.h, v58.l
	v_or_b16 v28.l, v54.l, v58.h
	v_or_b16 v28.h, v54.h, v59.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v62, v1 offset:8192
	ds_store_b16_d16_hi v62, v1 offset:8224
	ds_store_b16 v62, v3 offset:8256
	ds_store_b16_d16_hi v62, v3 offset:8288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v62, v15 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v63, v4 offset:8192
	ds_store_b16_d16_hi v63, v4 offset:8224
	ds_store_b16 v63, v5 offset:8256
	ds_store_b16_d16_hi v63, v5 offset:8288
	ds_store_b16 v64, v6 offset:8192
	ds_store_b16_d16_hi v64, v6 offset:8224
	ds_store_b16 v64, v7 offset:8256
	ds_store_b16_d16_hi v64, v7 offset:8288
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v61, v65 offset:33280
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v62, v16 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v62, v8 offset:8576
	ds_store_b16_d16_hi v62, v8 offset:8608
	ds_store_b16 v62, v14 offset:8640
	ds_store_b16_d16_hi v62, v14 offset:8672
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v62, v15 offset:24608
	ds_store_b16_d16_hi v62, v16 offset:24672
	ds_store_b16 v63, v23 offset:24576
	ds_store_b16_d16_hi v63, v23 offset:24608
	ds_store_b16 v63, v24 offset:24640
	ds_store_b16_d16_hi v63, v24 offset:24672
	ds_store_b16 v64, v25 offset:24576
	ds_store_b16_d16_hi v64, v25 offset:24608
	ds_store_b16 v64, v26 offset:24640
	ds_store_b16_d16_hi v64, v26 offset:24672
	ds_store_b16 v62, v27 offset:24960
	ds_store_b16_d16_hi v62, v27 offset:24992
	ds_store_b16 v62, v28 offset:25024
	ds_store_b16_d16_hi v62, v28 offset:25056
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v1, 5, v0
	v_and_b32_e32 v3, 0xe00, v2
	v_and_b32_e32 v5, 4, v0
	v_and_b32_e32 v7, 8, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v23, 0x60, v1, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr23
.LBB0_3:                                ; %Flow310
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v3, s34, v33
	s_ashr_i32 s1, s6, 8
	v_or_b32_e32 v67, s33, v0
	v_lshlrev_b32_e32 v16, 2, v34
	v_and_b32_e32 v15, 28, v13
	v_mul_lo_u32 v68, v3, s1
	v_lshlrev_b32_e32 v14, 1, v34
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 2, 1
	v_bfe_i32 v3, v0, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v2, 0xe00, v2
	v_and_b32_e32 v1, 0x90, v1
	v_and_b32_e32 v3, 0x110, v3
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v24, s35, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v23, 0x60, v17, v2
	v_and_b32_e32 v2, 32, v17
	v_xor_b32_e32 v1, v1, v3
	v_add_nc_u32_e32 v27, s27, v67
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v29, 0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v28, 0, v16, v2
	v_or_b32_e32 v25, v23, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v26, 16, v25
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_add_nc_u32_e32 v28, v28, v15
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s49, s5, 5
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_add_i32 s15, s44, 32
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s48, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s47, 0, 0x8200
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s49, s49, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s18, s30
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 5
	s_mov_b32 s30, s44
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s15, s19
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s19, s18, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v32, s44, v12
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s19, s19, 24
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[30:31], null, s44, s26, v[9:10]
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s18, s18, s19
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s20, s44, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s18, 8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s20, s20, s33
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v32
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s21, s18, s35
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s19, s20, s27
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v32, v67, s21, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s18, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v31, v68, s18, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v74, s44, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v32, v32, s[40:43], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v69, s0, v33
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v75, s20, v11
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s31, v74
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v76, s20, v24
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v74, s19, v11
	v_add_nc_u32_e32 v77, s19, v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v70, s16, v25
	v_cndmask_b32_e64 v75, 0x80000000, v75, s0
	v_cndmask_b32_e64 v76, 0x80000000, v76, s0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v74, 0x80000000, v74, s0
	v_cndmask_b32_e64 v82, 0x80000000, v77, s0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[121:124], v75, s[36:39], 0 offen
	buffer_load_b128 v[125:128], v76, s[36:39], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v156, v31, s[4:7], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[129:132], v74, s[36:39], 0 offen
	buffer_load_b128 v[133:136], v82, s[36:39], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v81, v27, s21, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v71, s16, v26
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v72, s14, v25
	v_add_nc_u32_e32 v73, s14, v26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[77:80], v70
	ds_load_b128 v[85:88], v70 offset:4096
	ds_load_b128 v[101:104], v71
	ds_load_b128 v[105:108], v71 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v70, v69 offset:208
	ds_load_u8 v71, v69 offset:240
	ds_load_u8 v83, v69 offset:224
	ds_load_u8 v84, v69 offset:192
	ds_load_u8 v89, v69 offset:144
	ds_load_u8 v90, v69 offset:176
	ds_load_u8 v91, v69 offset:160
	ds_load_u8 v92, v69 offset:128
	ds_load_u8 v97, v69 offset:80
	ds_load_u8 v98, v69 offset:112
	ds_load_u8 v99, v69 offset:96
	ds_load_u8 v100, v69 offset:64
	ds_load_u8 v137, v69
	ds_load_u8 v138, v69 offset:16
	ds_load_u8 v139, v69 offset:32
	ds_load_u8 v140, v69 offset:48
	ds_load_u8 v141, v69 offset:464
	ds_load_u8 v142, v69 offset:496
	ds_load_u8 v143, v69 offset:480
	ds_load_u8 v144, v69 offset:448
	ds_load_u8 v145, v69 offset:400
	ds_load_u8 v146, v69 offset:432
	ds_load_u8 v147, v69 offset:416
	ds_load_u8 v148, v69 offset:384
	ds_load_u8 v149, v69 offset:336
	ds_load_u8 v150, v69 offset:368
	ds_load_u8 v151, v69 offset:352
	ds_load_u8 v152, v69 offset:320
	ds_load_u8 v153, v69 offset:272
	ds_load_u8 v154, v69 offset:304
	ds_load_u8 v155, v69 offset:288
	ds_load_u8 v69, v69 offset:256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[93:96], v72
	ds_load_b128 v[109:112], v72 offset:4096
	ds_load_b128 v[113:116], v73
	ds_load_b128 v[117:120], v73 offset:4096
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v72, 0x80000000, v81, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v73, v100, v97, 0xc0c0004
	v_perm_b32 v74, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v75, v137, v138, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v76, v139, v140, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v81, v144, v141, 0xc0c0004
	v_perm_b32 v82, v143, v142, 0xc0c0004
	v_lshl_or_b32 v138, v74, 16, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s48, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v137, v76, 16, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s18, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v144, v82, 16, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s48, s18, 0
	s_mov_b32 s16, s46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s20, s48, 13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v69, v153, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s46, s20, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s19, s48, 9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s17, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s19, s19, 0
	s_mov_b32 s0, s47
	s_mov_b32 s14, s45
	s_add_i32 s47, s19, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s49
	s_mov_b32 s17, s18
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v31, 16, v32
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v32, v84, v70, 0xc0c0004
	v_perm_b32 v70, v83, v71, 0xc0c0004
	v_perm_b32 v71, v92, v89, 0xc0c0004
	v_perm_b32 v83, v148, v145, 0xc0c0004
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v28, v31 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v31, v72, s[40:43], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v72, v91, v90, 0xc0c0004
	v_perm_b32 v84, v147, v146, 0xc0c0004
	v_perm_b32 v89, v152, v149, 0xc0c0004
	v_perm_b32 v90, v151, v150, 0xc0c0004
	v_perm_b32 v91, v155, v154, 0xc0c0004
	v_lshl_or_b32 v140, v70, 16, v32
	v_lshl_or_b32 v139, v72, 16, v71
	v_lshl_or_b32 v143, v84, 16, v83
	v_lshl_or_b32 v142, v90, 16, v89
	v_lshl_or_b32 v141, v91, 16, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[137:140], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[85:92], v[93:96], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[109:112], v[137:140], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[69:76], v[101:104], v[141:144], v[69:76] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[105:108], v[141:144], v[77:84] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[85:92], v[113:116], v[141:144], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[117:120], v[141:144], v[93:100] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v116, v70
	v_cvt_f32_i32_e32 v117, v69
	v_cvt_f32_i32_e32 v120, v72
	v_cvt_f32_i32_e32 v137, v71
	v_cvt_f32_i32_e32 v140, v74
	v_cvt_f32_i32_e32 v141, v73
	v_cvt_f32_i32_e32 v144, v76
	v_cvt_f32_i32_e32 v145, v75
	v_cvt_f32_i32_e32 v148, v78
	v_cvt_f32_i32_e32 v149, v77
	v_cvt_f32_i32_e32 v152, v80
	v_cvt_f32_i32_e32 v153, v79
	v_cvt_f32_i32_e32 v161, v82
	v_cvt_f32_i32_e32 v162, v81
	v_cvt_f32_i32_e32 v165, v84
	v_cvt_f32_i32_e32 v166, v83
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v69, v125, v121, 0x5010400
	v_perm_b32 v70, v125, v121, 0x7030602
	v_perm_b32 v71, v126, v122, 0x5010400
	v_perm_b32 v72, v126, v122, 0x7030602
	v_perm_b32 v73, v127, v123, 0x5010400
	v_perm_b32 v74, v127, v123, 0x7030602
	v_perm_b32 v75, v128, v124, 0x5010400
	v_perm_b32 v76, v128, v124, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(1)
	v_perm_b32 v77, v133, v129, 0x5010400
	v_perm_b32 v78, v133, v129, 0x7030602
	v_perm_b32 v79, v134, v130, 0x5010400
	v_perm_b32 v80, v134, v130, 0x7030602
	v_perm_b32 v81, v135, v131, 0x5010400
	v_perm_b32 v82, v135, v131, 0x7030602
	v_perm_b32 v83, v136, v132, 0x5010400
	v_perm_b32 v84, v136, v132, 0x7030602
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v118, v86
	v_cvt_f32_i32_e32 v119, v85
	v_cvt_f32_i32_e32 v138, v88
	v_cvt_f32_i32_e32 v139, v87
	v_cvt_f32_i32_e32 v142, v90
	v_cvt_f32_i32_e32 v143, v89
	v_cvt_f32_i32_e32 v146, v92
	v_cvt_f32_i32_e32 v147, v91
	v_cvt_f32_i32_e32 v150, v94
	v_cvt_f32_i32_e32 v151, v93
	v_cvt_f32_i32_e32 v154, v96
	v_cvt_f32_i32_e32 v155, v95
	v_cvt_f32_i32_e32 v163, v98
	v_cvt_f32_i32_e32 v164, v97
	v_cvt_f32_i32_e32 v167, v100
	v_cvt_f32_i32_e32 v168, v99
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v121, 16, v156
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v32.l, 0xff, v69.l
	v_lshrrev_b32_e32 v100, 8, v69
	v_lshrrev_b32_e32 v101, 24, v69
	v_and_b16 v32.h, 0xff, v69.h
	v_and_b16 v85.l, 0xff, v70.l
	v_lshrrev_b32_e32 v102, 8, v70
	v_lshrrev_b32_e32 v103, 24, v70
	v_and_b16 v85.h, 0xff, v70.h
	v_and_b16 v86.l, 0xff, v71.l
	v_lshrrev_b32_e32 v104, 8, v71
	v_lshrrev_b32_e32 v105, 24, v71
	v_and_b16 v86.h, 0xff, v71.h
	v_and_b16 v87.l, 0xff, v72.l
	v_lshrrev_b32_e32 v106, 8, v72
	v_lshrrev_b32_e32 v107, 24, v72
	v_and_b16 v87.h, 0xff, v72.h
	v_and_b16 v88.l, 0xff, v73.l
	v_lshrrev_b32_e32 v108, 8, v73
	v_lshrrev_b32_e32 v109, 24, v73
	v_and_b16 v88.h, 0xff, v73.h
	v_and_b16 v89.l, 0xff, v74.l
	v_lshrrev_b32_e32 v110, 8, v74
	v_lshrrev_b32_e32 v111, 24, v74
	v_and_b16 v89.h, 0xff, v74.h
	v_and_b16 v90.l, 0xff, v75.l
	v_lshrrev_b32_e32 v112, 8, v75
	v_lshrrev_b32_e32 v113, 24, v75
	v_and_b16 v90.h, 0xff, v75.h
	v_and_b16 v91.l, 0xff, v76.l
	v_lshrrev_b32_e32 v114, 8, v76
	v_lshrrev_b32_e32 v115, 24, v76
	v_and_b16 v91.h, 0xff, v76.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v92.l, 0xff, v77.l
	v_lshrrev_b32_e32 v122, 8, v77
	v_lshrrev_b32_e32 v123, 24, v77
	v_and_b16 v92.h, 0xff, v77.h
	v_and_b16 v93.l, 0xff, v78.l
	v_lshrrev_b32_e32 v124, 8, v78
	v_lshrrev_b32_e32 v125, 24, v78
	v_and_b16 v93.h, 0xff, v78.h
	v_and_b16 v94.l, 0xff, v79.l
	v_lshrrev_b32_e32 v126, 8, v79
	v_lshrrev_b32_e32 v127, 24, v79
	v_and_b16 v94.h, 0xff, v79.h
	v_and_b16 v95.l, 0xff, v80.l
	v_lshrrev_b32_e32 v128, 8, v80
	v_lshrrev_b32_e32 v129, 24, v80
	v_and_b16 v95.h, 0xff, v80.h
	v_and_b16 v96.l, 0xff, v81.l
	v_lshrrev_b32_e32 v130, 8, v81
	v_lshrrev_b32_e32 v131, 24, v81
	v_and_b16 v96.h, 0xff, v81.h
	v_and_b16 v97.l, 0xff, v82.l
	v_lshrrev_b32_e32 v132, 8, v82
	v_lshrrev_b32_e32 v133, 24, v82
	v_and_b16 v97.h, 0xff, v82.h
	v_and_b16 v98.l, 0xff, v83.l
	v_lshrrev_b32_e32 v134, 8, v83
	v_lshrrev_b32_e32 v135, 24, v83
	v_and_b16 v98.h, 0xff, v83.h
	v_and_b16 v99.l, 0xff, v84.l
	v_lshrrev_b32_e32 v136, 8, v84
	v_lshrrev_b32_e32 v156, 24, v84
	v_and_b16 v99.h, 0xff, v84.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[69:72], v29 offset:33792
	ds_load_b128 v[73:76], v29 offset:33808
	ds_load_b128 v[77:80], v29 offset:34304
	ds_load_b128 v[81:84], v29 offset:34320
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v100.l, 8, v100.l
	v_lshlrev_b16 v100.h, 8, v101.l
	v_lshlrev_b16 v101.l, 8, v102.l
	v_lshlrev_b16 v101.h, 8, v103.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v157, s19, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v102.l, 8, v104.l
	v_lshlrev_b16 v102.h, 8, v105.l
	v_lshlrev_b16 v103.l, 8, v106.l
	v_lshlrev_b16 v103.h, 8, v107.l
	v_lshlrev_b16 v104.l, 8, v108.l
	v_lshlrev_b16 v104.h, 8, v109.l
	v_lshlrev_b16 v105.l, 8, v110.l
	v_lshlrev_b16 v105.h, 8, v111.l
	v_lshlrev_b16 v106.l, 8, v112.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v69, v69, v121
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v106.h, 8, v113.l
	v_lshlrev_b16 v107.l, 8, v114.l
	v_lshlrev_b16 v107.h, 8, v115.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v108.l, 8, v122.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v64, v69, v117
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v71, v71, v121
	v_mul_f32_e32 v74, v74, v121
	v_mul_f32_e32 v76, v76, v121
	v_dual_mul_f32 v75, v75, v121 :: v_dual_add_nc_u32 v158, s46, v20
	v_dual_mul_f32 v77, v77, v121 :: v_dual_add_nc_u32 v160, s46, v22
	v_mul_f32_e32 v70, v70, v121
	v_mul_f32_e32 v72, v72, v121
	v_mul_f32_e32 v73, v73, v121
	v_dual_mul_f32 v78, v78, v121 :: v_dual_fmac_f32 v53, v76, v144
	v_dual_mul_f32 v80, v80, v121 :: v_dual_fmac_f32 v57, v74, v140
	v_mul_f32_e32 v79, v79, v121
	v_mul_f32_e32 v82, v82, v121
	v_mul_f32_e32 v81, v81, v121
	v_dual_mul_f32 v84, v84, v121 :: v_dual_fmac_f32 v49, v78, v148
	v_mul_f32_e32 v83, v83, v121
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v60, v71, v137 :: v_dual_fmac_f32 v65, v70, v116
	v_dual_fmac_f32 v61, v72, v120 :: v_dual_fmac_f32 v56, v73, v141
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v37, v83, v166
	v_fmac_f32_e32 v52, v75, v145
	v_fmac_f32_e32 v48, v77, v149
	v_dual_fmac_f32 v44, v79, v153 :: v_dual_fmac_f32 v45, v80, v152
	v_dual_fmac_f32 v40, v81, v162 :: v_dual_fmac_f32 v41, v82, v161
	v_fmac_f32_e32 v36, v84, v165
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v108.h, 8, v123.l
	v_lshlrev_b16 v109.l, 8, v124.l
	v_lshlrev_b16 v109.h, 8, v125.l
	v_lshlrev_b16 v110.l, 8, v126.l
	v_lshlrev_b16 v110.h, 8, v127.l
	v_lshlrev_b16 v111.l, 8, v128.l
	v_lshlrev_b16 v111.h, 8, v129.l
	v_lshlrev_b16 v112.l, 8, v130.l
	v_lshlrev_b16 v112.h, 8, v131.l
	v_lshlrev_b16 v113.l, 8, v132.l
	v_lshlrev_b16 v113.h, 8, v133.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v32.l, v32.l, v100.l
	v_or_b16 v32.h, v32.h, v100.h
	v_or_b16 v85.l, v85.l, v101.l
	v_or_b16 v85.h, v85.h, v101.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v114.l, 8, v134.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v86.l, v86.l, v102.l
	v_or_b16 v86.h, v86.h, v102.h
	v_or_b16 v87.l, v87.l, v103.l
	v_or_b16 v87.h, v87.h, v103.h
	v_or_b16 v88.l, v88.l, v104.l
	v_or_b16 v88.h, v88.h, v104.h
	v_or_b16 v89.l, v89.l, v105.l
	v_or_b16 v89.h, v89.h, v105.h
	v_or_b16 v90.l, v90.l, v106.l
	v_or_b16 v90.h, v90.h, v106.h
	v_or_b16 v91.l, v91.l, v107.l
	v_or_b16 v91.h, v91.h, v107.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v92.l, v92.l, v108.l
	v_or_b16 v92.h, v92.h, v108.h
	v_or_b16 v93.l, v93.l, v109.l
	v_or_b16 v93.h, v93.h, v109.h
	v_or_b16 v94.l, v94.l, v110.l
	v_or_b16 v94.h, v94.h, v110.h
	v_or_b16 v95.l, v95.l, v111.l
	v_or_b16 v95.h, v95.h, v111.h
	v_or_b16 v96.l, v96.l, v112.l
	v_or_b16 v96.h, v96.h, v112.h
	v_or_b16 v97.l, v97.l, v113.l
	v_or_b16 v97.h, v97.h, v113.h
	v_lshlrev_b16 v114.h, 8, v135.l
	v_lshlrev_b16 v115.l, 8, v136.l
	v_lshlrev_b16 v115.h, 8, v156.l
	v_or_b16 v98.l, v98.l, v114.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v98.h, v98.h, v114.h
	v_or_b16 v99.l, v99.l, v115.l
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v99.h, v99.h, v115.h
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v28, v31 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v29 offset:33792
	ds_load_b128 v[73:76], v29 offset:33808
	ds_load_b128 v[77:80], v29 offset:34304
	ds_load_b128 v[81:84], v29 offset:34320
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v31, v69, v121
	v_mul_f32_e32 v69, v71, v121
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v71, v73, v121
	v_mul_f32_e32 v73, v75, v121
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v75, v77, v121
	v_mul_f32_e32 v77, v79, v121
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v79, v81, v121
	v_mul_f32_e32 v81, v83, v121
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v58, v71, v143
	v_fmac_f32_e32 v54, v73, v147
	v_fmac_f32_e32 v50, v75, v151
	v_fmac_f32_e32 v46, v77, v155
	v_dual_fmac_f32 v38, v81, v168 :: v_dual_add_nc_u32 v159, s46, v21
	v_fmac_f32_e32 v62, v69, v139
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b16 v157, v30 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v158, v32
	ds_store_b16_d16_hi v158, v32 offset:32
	ds_store_b16 v158, v85 offset:64
	ds_store_b16_d16_hi v158, v85 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v158, v92 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v159, v86
	ds_store_b16_d16_hi v159, v86 offset:32
	ds_store_b16 v159, v87 offset:64
	ds_store_b16_d16_hi v159, v87 offset:96
	ds_store_b16 v160, v88
	ds_store_b16_d16_hi v160, v88 offset:32
	ds_store_b16 v160, v89 offset:64
	ds_store_b16_d16_hi v160, v89 offset:96
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v158, v93 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v158, v90 offset:384
	ds_store_b16_d16_hi v158, v90 offset:416
	ds_store_b16 v158, v91 offset:448
	ds_store_b16_d16_hi v158, v91 offset:480
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v158, v92 offset:16416
	ds_store_b16_d16_hi v158, v93 offset:16480
	ds_store_b16 v159, v94 offset:16384
	ds_store_b16_d16_hi v159, v94 offset:16416
	ds_store_b16 v159, v95 offset:16448
	ds_store_b16_d16_hi v159, v95 offset:16480
	ds_store_b16 v160, v96 offset:16384
	ds_store_b16_d16_hi v160, v96 offset:16416
	ds_store_b16 v160, v97 offset:16448
	ds_store_b16_d16_hi v160, v97 offset:16480
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v72, v121
	v_mul_f32_e32 v72, v76, v121
	v_mul_f32_e32 v30, v70, v121
	v_mul_f32_e32 v76, v80, v121
	v_mul_f32_e32 v70, v74, v121
	v_mul_f32_e32 v80, v84, v121
	v_mul_f32_e32 v74, v78, v121
	v_dual_mul_f32 v78, v82, v121 :: v_dual_fmac_f32 v55, v72, v146
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v66, v30, v118
	v_fmac_f32_e32 v47, v76, v154
	v_dual_fmac_f32 v59, v70, v142 :: v_dual_fmac_f32 v42, v79, v164
	v_fmac_f32_e32 v35, v31, v119
	v_fmac_f32_e32 v43, v78, v163
	v_fmac_f32_e32 v63, v32, v138
	v_fmac_f32_e32 v39, v80, v167
	v_fmac_f32_e32 v51, v74, v150
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v158, v98 offset:16768
	ds_store_b16_d16_hi v158, v98 offset:16800
	ds_store_b16 v158, v99 offset:16832
	ds_store_b16_d16_hi v158, v99 offset:16864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v17
	v_mov_b32_e32 v5, v18
	v_mov_b32_e32 v7, v19
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s47, 0, 0x8200
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v35, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v27, s0, v33
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x90, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v4, v27
	ds_load_u8_d16 v6, v27 offset:16
	ds_load_u8_d16 v2, v27 offset:32
	ds_load_u8_d16 v3, v27 offset:48
	ds_load_u8_d16 v18, v27 offset:64
	ds_load_u8_d16 v20, v27 offset:80
	ds_load_u8_d16 v17, v27 offset:96
	ds_load_u8_d16 v19, v27 offset:112
	ds_load_u8_d16 v30, v27 offset:128
	ds_load_u8_d16 v32, v27 offset:144
	ds_load_u8_d16 v29, v27 offset:160
	ds_load_u8_d16 v31, v27 offset:176
	ds_load_u8_d16 v102, v27 offset:192
	ds_load_u8_d16 v104, v27 offset:208
	ds_load_u8_d16 v86, v27 offset:224
	ds_load_u8_d16 v103, v27 offset:240
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v69, 0, 1, s2
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v76, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x110, 0, vcc_lo
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v74, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v69
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v21, v5, v7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v7, v27 offset:256
	ds_load_u8_d16 v9, v27 offset:272
	ds_load_u8_d16 v5, v27 offset:288
	ds_load_u8_d16 v8, v27 offset:304
	ds_load_u8_d16 v11, v27 offset:320
	ds_load_u8_d16 v13, v27 offset:336
	ds_load_u8_d16 v10, v27 offset:352
	ds_load_u8_d16 v12, v27 offset:368
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v135, v23, v21
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v22, v27 offset:384
	ds_load_u8_d16 v24, v27 offset:400
	ds_load_u8_d16 v21, v27 offset:416
	ds_load_u8_d16 v23, v27 offset:432
	ds_load_u8_d16 v26, v27 offset:448
	ds_load_u8_d16 v28, v27 offset:464
	ds_load_u8_d16 v25, v27 offset:480
	ds_load_u8_d16 v27, v27 offset:496
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v136, 16, v135
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v75, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v87, v102, v104, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v88, v86, v103, 0xc0c0004
	v_perm_b32 v89, v30, v32, 0xc0c0004
	v_perm_b32 v90, v29, v31, 0xc0c0004
	v_perm_b32 v91, v18, v20, 0xc0c0004
	v_perm_b32 v92, v17, v19, 0xc0c0004
	v_lshl_or_b32 v98, v88, 16, v87
	v_perm_b32 v87, v4, v6, 0xc0c0004
	v_perm_b32 v88, v2, v3, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v81, s16, v135
	v_add_nc_u32_e32 v73, s16, v136
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v97, v90, 16, v89
	v_lshl_or_b32 v96, v92, 16, v91
	v_lshl_or_b32 v95, v88, 16, v87
	v_mov_b32_e32 v94, s11
	v_mov_b32_e32 v92, s9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[77:80], v81 offset:4096
	ds_load_b128 v[81:84], v81
	ds_load_b128 v[69:72], v73 offset:4096
	ds_load_b128 v[73:76], v73
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v93, s10 :: v_dual_mov_b32 v90, s7
	v_dual_mov_b32 v91, s8 :: v_dual_mov_b32 v88, s5
	v_mov_b32_e32 v89, s6
	v_mov_b32_e32 v87, s4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v99, v26, v28, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v25, v27, 0xc0c0004
	v_perm_b32 v101, v22, v24, 0xc0c0004
	v_perm_b32 v113, v21, v23, 0xc0c0004
	v_perm_b32 v114, v11, v13, 0xc0c0004
	v_perm_b32 v115, v10, v12, 0xc0c0004
	v_perm_b32 v116, v7, v9, 0xc0c0004
	v_perm_b32 v117, v5, v8, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[81:84], v[95:98], v[87:94] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v100, 16, v99
	v_lshl_or_b32 v83, v113, 16, v101
	v_lshl_or_b32 v82, v115, 16, v114
	v_lshl_or_b32 v81, v117, 16, v116
	v_wmma_i32_16x16x16_iu8 v[87:94], v[77:80], v[95:98], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[73:76], v[81:84], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[69:72], v[81:84], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v79, v107
	v_cvt_f32_i32_e32 v81, v108
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v69, v109
	v_cvt_f32_i32_e32 v71, v110
	v_cvt_f32_i32_e32 v73, v111
	v_cvt_f32_i32_e32 v76, v112
	v_cvt_f32_i32_e32 v74, v87
	v_cvt_f32_i32_e32 v77, v88
	v_cvt_f32_i32_e32 v80, v89
	v_cvt_f32_i32_e32 v82, v90
	v_cvt_f32_i32_e32 v70, v91
	v_cvt_f32_i32_e32 v72, v92
	v_cvt_f32_i32_e32 v75, v93
	v_cvt_f32_i32_e32 v78, v94
	v_cvt_f32_i32_e32 v83, v105
	v_cvt_f32_i32_e32 v84, v106
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v93, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v94, v102, v104, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v95, v86, v103, 0xc0c0004
	v_perm_b32 v99, v18, v20, 0xc0c0004
	v_perm_b32 v100, v17, v19, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v93, s14, v135
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v96, v95, 16, v94
	v_lshl_or_b32 v94, v100, 16, v99
	v_dual_mov_b32 v107, s11 :: v_dual_mov_b32 v102, s6
	v_dual_mov_b32 v106, s10 :: v_dual_add_nc_u32 v89, s14, v136
	v_perm_b32 v97, v30, v32, 0xc0c0004
	v_perm_b32 v98, v29, v31, 0xc0c0004
	v_mov_b32_e32 v104, s8
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[17:20], v93 offset:4096
	ds_load_b128 v[29:32], v93
	ds_load_b128 v[85:88], v89 offset:4096
	ds_load_b128 v[89:92], v89
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v4, v4, v6, 0xc0c0004
	v_perm_b32 v2, v2, v3, 0xc0c0004
	v_lshl_or_b32 v95, v98, 16, v97
	v_dual_mov_b32 v105, s9 :: v_dual_mov_b32 v100, s4
	v_mov_b32_e32 v103, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v93, v2, 16, v4
	v_mov_b32_e32 v101, s5
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v25, v27, 0xc0c0004
	v_perm_b32 v22, v22, v24, 0xc0c0004
	v_perm_b32 v21, v21, v23, 0xc0c0004
	v_perm_b32 v11, v11, v13, 0xc0c0004
	v_perm_b32 v10, v10, v12, 0xc0c0004
	v_perm_b32 v23, v7, v9, 0xc0c0004
	v_perm_b32 v24, v5, v8, 0xc0c0004
	v_lshl_or_b32 v13, v25, 16, v26
	v_lshl_or_b32 v12, v21, 16, v22
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[29:32], v[93:96], v[100:107] neg_lo:[1,1,0]
	v_lshl_or_b32 v11, v10, 16, v11
	v_lshl_or_b32 v10, v24, 16, v23
	v_wmma_i32_16x16x16_iu8 v[100:107], v[17:20], v[93:96], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[89:92], v[10:13], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[85:88], v[10:13], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v97, v4
	v_cvt_f32_i32_e32 v99, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v87, v6
	v_cvt_f32_i32_e32 v89, v7
	v_cvt_f32_i32_e32 v91, v8
	v_cvt_f32_i32_e32 v94, v9
	v_cvt_f32_i32_e32 v92, v100
	v_cvt_f32_i32_e32 v95, v101
	v_cvt_f32_i32_e32 v98, v102
	v_cvt_f32_i32_e32 v100, v103
	v_cvt_f32_i32_e32 v88, v104
	v_cvt_f32_i32_e32 v90, v105
	v_cvt_f32_i32_e32 v93, v106
	v_cvt_f32_i32_e32 v96, v107
	v_cvt_f32_i32_e32 v85, v2
	v_cvt_f32_i32_e32 v101, v3
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s0, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(29)
	v_add_lshl_u32 v2, v68, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt lgkmcnt(28)
	v_add_lshl_u32 v3, v67, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v1, 32, v1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	v_add3_u32 v138, s33, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v16, v1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	s_waitcnt lgkmcnt(16)
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v102, 0, v14
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v3, v3, s[28:31], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v4, v138, s4, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add_nc_u32_e32 v86, v1, v15
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v137, v2, s[12:15], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s3
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v17, s47, v33
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v2
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v117, 0
	s_mov_b32 s4, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v119, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v86, v1 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v1, v3, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[13:16], v102 offset:33792
	ds_load_b128 v[9:12], v102 offset:33808
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v102 offset:34304
	ds_load_b128 v[1:4], v102 offset:34320
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v86, v18 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v153, v17
	ds_load_u8_d16 v154, v17 offset:16
	ds_load_u8_d16 v147, v17 offset:32
	ds_load_u8_d16 v149, v17 offset:48
	ds_load_u8_d16 v160, v17 offset:64
	ds_load_u8_d16 v162, v17 offset:80
	ds_load_u8_d16 v159, v17 offset:96
	ds_load_u8_d16 v161, v17 offset:112
	ds_load_u8_d16 v164, v17 offset:128
	ds_load_u8_d16 v166, v17 offset:144
	ds_load_u8_d16 v163, v17 offset:160
	ds_load_u8_d16 v165, v17 offset:176
	ds_load_u8_d16 v168, v17 offset:192
	ds_load_u8_d16 v170, v17 offset:208
	ds_load_u8_d16 v167, v17 offset:224
	ds_load_u8_d16 v169, v17 offset:240
	ds_load_u8_d16 v140, v17 offset:256
	ds_load_u8_d16 v142, v17 offset:272
	ds_load_u8_d16 v139, v17 offset:288
	ds_load_u8_d16 v141, v17 offset:304
	ds_load_u8_d16 v144, v17 offset:320
	ds_load_u8_d16 v146, v17 offset:336
	ds_load_u8_d16 v143, v17 offset:352
	ds_load_u8_d16 v145, v17 offset:368
	ds_load_u8_d16 v150, v17 offset:384
	ds_load_u8_d16 v152, v17 offset:400
	ds_load_u8_d16 v148, v17 offset:416
	ds_load_u8_d16 v151, v17 offset:432
	ds_load_u8_d16 v156, v17 offset:448
	ds_load_u8_d16 v158, v17 offset:464
	ds_load_u8_d16 v155, v17 offset:480
	ds_load_u8_d16 v157, v17 offset:496
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
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
	v_add_nc_u32_e32 v18, s46, v135
	v_add_nc_u32_e32 v17, s46, v136
	ds_load_b128 v[112:115], v18 offset:4096
	ds_load_b128 v[116:119], v18
	ds_load_b128 v[104:107], v17 offset:4096
	ds_load_b128 v[108:111], v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v17, v164, v166, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v21, v163, v165, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v19, v168, v170, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v20, v167, v169, 0xc0c0004
	v_perm_b32 v22, v160, v162, 0xc0c0004
	v_perm_b32 v23, v159, v161, 0xc0c0004
	v_lshl_or_b32 v122, v21, 16, v17
	v_perm_b32 v17, v153, v154, 0xc0c0004
	v_perm_b32 v18, v147, v149, 0xc0c0004
	v_lshl_or_b32 v123, v20, 16, v19
	v_lshl_or_b32 v121, v23, 16, v22
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v124, v156, v158, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v125, v155, v157, 0xc0c0004
	v_lshl_or_b32 v120, v18, 16, v17
	v_dual_mov_b32 v24, s11 :: v_dual_mov_b32 v21, s8
	v_dual_mov_b32 v23, s10 :: v_dual_mov_b32 v22, s9
	v_dual_mov_b32 v20, s7 :: v_dual_mov_b32 v19, s6
	v_dual_mov_b32 v18, s5 :: v_dual_mov_b32 v17, s4
	v_perm_b32 v126, v150, v152, 0xc0c0004
	v_perm_b32 v127, v148, v151, 0xc0c0004
	v_perm_b32 v128, v144, v146, 0xc0c0004
	v_perm_b32 v129, v143, v145, 0xc0c0004
	v_perm_b32 v130, v140, v142, 0xc0c0004
	v_perm_b32 v131, v139, v141, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[116:119], v[120:123], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v119, v125, 16, v124
	v_lshl_or_b32 v118, v127, 16, v126
	v_lshl_or_b32 v117, v129, 16, v128
	v_lshl_or_b32 v116, v131, 16, v130
	v_wmma_i32_16x16x16_iu8 v[17:24], v[112:115], v[120:123], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[108:111], v[116:119], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[104:107], v[116:119], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v106, v27
	v_cvt_f32_i32_e32 v107, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v104, v29
	v_cvt_f32_i32_e32 v105, v30
	v_cvt_f32_i32_e32 v108, v31
	v_cvt_f32_i32_e32 v109, v32
	v_cvt_f32_i32_e32 v110, v17
	v_cvt_f32_i32_e32 v111, v18
	v_cvt_f32_i32_e32 v114, v19
	v_cvt_f32_i32_e32 v115, v20
	v_cvt_f32_i32_e32 v112, v21
	v_cvt_f32_i32_e32 v113, v22
	v_cvt_f32_i32_e32 v116, v23
	v_cvt_f32_i32_e32 v117, v24
	v_cvt_f32_i32_e32 v118, v25
	v_cvt_f32_i32_e32 v119, v26
.LBB0_14:
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_b128 v[29:32], v102 offset:33792
	ds_load_b128 v[25:28], v102 offset:33808
	ds_load_b128 v[21:24], v102 offset:34304
	ds_load_b128 v[17:20], v102 offset:34320
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_mov_b32_e32 v134, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
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
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v103, s45, v136
	v_add_nc_u32_e32 v120, s45, v135
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_mov_b32_e32 v136, s11
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v121, v168, v170, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v122, v167, v169, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[167:170], v103 offset:4096
	ds_load_b128 v[171:174], v103
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v103, v164, v166, 0xc0c0004
	v_perm_b32 v123, v163, v165, 0xc0c0004
	v_perm_b32 v124, v160, v162, 0xc0c0004
	v_perm_b32 v125, v159, v161, 0xc0c0004
	v_mov_b32_e32 v135, s10
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[159:162], v120 offset:4096
	ds_load_b128 v[163:166], v120
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v177, v123, 16, v103
	v_perm_b32 v103, v153, v154, 0xc0c0004
	v_perm_b32 v120, v147, v149, 0xc0c0004
	v_lshl_or_b32 v178, v122, 16, v121
	v_lshl_or_b32 v176, v125, 16, v124
	v_dual_mov_b32 v134, s9 :: v_dual_mov_b32 v133, s8
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v175, v120, 16, v103
	v_dual_mov_b32 v132, s7 :: v_dual_mov_b32 v131, s6
	v_dual_mov_b32 v130, s5 :: v_dual_mov_b32 v129, s4
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v103, v156, v158, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v120, v155, v157, 0xc0c0004
	v_perm_b32 v147, v150, v152, 0xc0c0004
	v_perm_b32 v148, v148, v151, 0xc0c0004
	v_perm_b32 v144, v144, v146, 0xc0c0004
	v_perm_b32 v143, v143, v145, 0xc0c0004
	v_perm_b32 v145, v140, v142, 0xc0c0004
	v_perm_b32 v139, v139, v141, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[163:166], v[175:178], v[129:136] neg_lo:[1,1,0]
	v_lshl_or_b32 v142, v120, 16, v103
	v_lshl_or_b32 v141, v148, 16, v147
	v_lshl_or_b32 v140, v143, 16, v144
	v_lshl_or_b32 v139, v139, 16, v145
	v_wmma_i32_16x16x16_iu8 v[129:136], v[159:162], v[175:178], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[171:174], v[139:142], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[167:170], v[139:142], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v103, v121
	v_cvt_f32_i32_e32 v120, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v121, v125
	v_cvt_f32_i32_e32 v122, v126
	v_cvt_f32_i32_e32 v125, v127
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v127, v129
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v129, v133
	v_cvt_f32_i32_e32 v130, v134
	v_cvt_f32_i32_e32 v133, v135
	v_cvt_f32_i32_e32 v134, v136
.LBB0_16:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s44, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s44, s0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v33, s27, v33
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 8
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s34, s34, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v68, v68, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v67, v67, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v135, v138, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v136, 16, v0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v135, 0x80000000, v135, vcc_lo
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v34, 1, v34
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v67, v67, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v68, v68, s[12:15], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v33, s34, s33, v33
	s_mov_b32 s15, 0x76543210
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_lshlrev_b32 v67, 16, v67
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	ds_store_b32 v86, v67 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	buffer_load_u16 v67, v135, s[28:31], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v135.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v135.h, v137.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v137, 0x7632 :: v_dual_mul_f32 v138, v30, v135
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v135
	v_mul_f32_e32 v140, v14, v135
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v30.h, v135.l
	v_mov_b16_e64 v14.h, v135.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v101, v138, v101, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v82, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v66, v101, s2
	v_cndmask_b32_e64 v8, v45, v8, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v22, v22, v135 :: v_dual_lshlrev_b32 v45, 16, v68
	v_mul_f32_e32 v21, v21, v135
	v_mul_f32_e32 v24, v24, v135
	v_mul_f32_e32 v23, v23, v135
	v_mul_f32_e32 v26, v26, v135
	v_mul_f32_e32 v25, v25, v135
	v_mul_f32_e32 v18, v18, v135
	v_mul_f32_e32 v17, v17, v135
	v_mul_f32_e32 v20, v20, v135
	v_mul_f32_e32 v19, v19, v135
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v92, v50
	v_fma_f32 v22, v22, v95, v51
	v_fma_f32 v23, v23, v98, v46
	v_fma_f32 v24, v24, v100, v47
	v_fma_f32 v25, v25, v87, v58
	v_fma_f32 v26, v26, v89, v59
	v_fma_f32 v82, v17, v88, v42
	v_fma_f32 v87, v18, v90, v43
	v_fma_f32 v88, v19, v93, v38
	v_fma_f32 v89, v20, v96, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v51, v22, s2
	v_cndmask_b32_e64 v50, v50, v21, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[17:20], v102 offset:33792
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v24, s2
	v_cndmask_b32_e64 v46, v46, v23, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[21:24], v102 offset:33808
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v28, v28, v135
	v_mul_f32_e32 v27, v27, v135
	v_mul_f32_e32 v32, v32, v135
	v_mul_f32_e32 v31, v31, v135
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v135
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v28, v28, v94, v55
	v_fma_f32 v27, v27, v91, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v59, v26, s2
	v_cndmask_b32_e64 v58, v58, v25, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v141, v13, v135
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v28, s2
	v_cndmask_b32_e64 v54, v54, v27, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[25:28], v102 offset:34304
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v4, v78, v36
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v4, v33, v34, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v142, v16, v135 :: v_dual_mul_f32 v19, v19, v45
	v_mul_f32_e32 v17, v17, v45
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v32, v32, v99, v63
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v22, v22, v45
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v31, v97, v62
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v143, v15, v135 :: v_dual_mul_f32 v24, v24, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v63, v32, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v20, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v62, v31, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[31:34], v102 offset:34320
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v83, v141, v83, v64
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v144, v10, v135 :: v_dual_mul_f32 v23, v23, v45
	v_mul_f32_e32 v145, v9, v135
	v_mul_f32_e32 v152, v1, v135
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v140, v84, v65
	v_fma_f32 v79, v143, v79, v60
	v_fma_f32 v81, v142, v81, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v83, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v139, v29, v135 :: v_dual_mul_f32 v18, v18, v45
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v146, v12, v135 :: v_dual_mul_f32 v27, v27, v45
	v_mul_f32_e32 v147, v11, v135
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v71, v144, v71, v57
	v_fma_f32 v70, v152, v70, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v65, v84, s2
	v_cndmask_b32_e64 v61, v61, v81, s2
	v_cndmask_b32_e64 v60, v60, v79, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v28, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v69, v145, v69, v56
	v_fma_f32 v68, v17, v118, v64
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v151, v2, v135
	v_mul_f32_e32 v153, v3, v135
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v146, v76, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v57, v71, s2
	v_cndmask_b32_e64 v56, v56, v69, s2
	v_cndmask_b32_e64 v40, v40, v70, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v34, v34, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v73, v147, v73, v52
	v_fma_f32 v69, v18, v119, v65
	v_fma_f32 v70, v19, v106, v60
	v_fma_f32 v71, v20, v107, v61
	v_fma_f32 v72, v151, v72, v41
	v_fma_f32 v75, v153, v75, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v76, s2
	v_cndmask_b32_e64 v52, v52, v73, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v21, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v41, v72, s2
	v_cndmask_b32_e64 v37, v37, v75, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v73, v22, v105, v57
	v_fma_f32 v75, v24, v109, v53
	v_fma_f32 v72, v21, v104, v56
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v148, v6, v135 :: v_dual_mul_f32 v33, v33, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v78, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v26, v45
	v_mul_f32_e32 v25, v25, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v77, v148, v77, v49
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v32, v45
	v_mul_f32_e32 v31, v31, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v82, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v28, v115, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v77, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v33, v116, v37
	v_fma_f32 v82, v34, v117, v36
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v85, v139, v85, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v89, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v77, v26, v111, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v38, v88, s2
	v_cndmask_b32_e64 v43, v43, v87, s2
	v_cndmask_b32_e64 v35, v35, v85, s2
	v_cndmask_b32_e64 v65, v65, v69, s3
	v_cndmask_b32_e64 v64, v64, v68, s3
	v_cndmask_b32_e64 v61, v61, v71, s3
	v_cndmask_b32_e64 v60, v60, v70, s3
	v_cndmask_b32_e64 v57, v57, v73, s3
	v_cndmask_b32_e64 v56, v56, v72, s3
	v_cndmask_b32_e64 v53, v53, v75, s3
	v_cndmask_b32_e64 v49, v49, v77, s3
	v_cndmask_b32_e64 v8, v8, v79, s3
	v_cndmask_b32_e64 v36, v36, v82, s3
	v_cndmask_b32_e64 v37, v37, v81, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v29.h, v135.l
	v_mov_b16_e64 v16.h, v135.l
	v_mov_b16_e64 v15.h, v135.l
	v_mov_b16_e64 v13.h, v135.l
	v_mov_b16_e64 v12.h, v135.l
	v_mov_b16_e64 v11.h, v135.l
	v_mov_b16_e64 v10.h, v135.l
	v_mov_b16_e64 v9.h, v135.l
	v_mov_b16_e64 v6.h, v135.l
	v_mov_b16_e64 v2.h, v135.l
	v_mov_b16_e64 v3.h, v135.l
	v_mov_b16_e64 v1.h, v135.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v31, v112, v40
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_store_b32 v86, v17 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v102 offset:33792
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v149, v5, v135
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v67, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v5.h, v135.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v149, v74, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v74, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v23, v108, v52
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[21:24], v102 offset:33808
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v150, v7, v135
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v7.h, v135.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v25, v110, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v52, v74, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v17, v17, v45
	v_mul_f32_e32 v20, v20, v45
	v_mul_f32_e32 v18, v18, v45
	v_mul_f32_e32 v19, v19, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v76, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v103, v35
	v_fma_f32 v20, v20, v124, v63
	v_fma_f32 v18, v18, v120, v66
	v_fma_f32 v19, v19, v123, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v35, v17, s3
	v_cndmask_b32_e64 v20, v63, v20, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v18, v66, v18, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v21, v21, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v150, v80, v44
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v22, v45
	v_mul_f32_e32 v24, v24, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v17
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v23, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v80, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v32, v113, v41
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[31:34], v102 offset:34320
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v122, v59
	v_fma_f32 v24, v24, v126, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v27, v114, v44
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	ds_load_b128 v[25:28], v102 offset:34304
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v21, v21, v121, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v59, v22, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v23, v23, v125, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v55, v24, s3
	v_cndmask_b32_e64 v44, v44, v78, s3
	v_cndmask_b32_e64 v41, v41, v80, s3
	v_cndmask_b32_e64 v19, v62, v19, s3
	v_cndmask_b32_e64 v21, v58, v21, s3
	v_cndmask_b32_e64 v23, v54, v23, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v31, v31, v45
	v_mul_f32_e32 v34, v34, v45
	v_mul_f32_e32 v33, v33, v45
	v_mul_f32_e32 v32, v32, v45
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v27, v27, v45
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v31, v129, v42
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v26, v26, v45
	v_mul_f32_e32 v25, v25, v45
	v_mul_f32_e32 v28, v28, v45
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v27, v27, v131, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v42, v31, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v33, v33, v133, v38
	v_fma_f32 v34, v34, v134, v39
	v_fma_f32 v25, v25, v127, v50
	v_fma_f32 v26, v26, v128, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v42
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v28, v28, v132, v47
	v_fma_f32 v32, v32, v130, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v46, v27, s3
	v_cndmask_b32_e64 v34, v39, v34, s3
	v_cndmask_b32_e64 v33, v38, v33, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v45, 0xbfb8aa3b, v22 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v27
	v_cndmask_b32_e64 v42, 0, 0x42800000, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v51, v26, s3
	v_cndmask_b32_e64 v25, v50, v25, s3
	v_cndmask_b32_e64 v28, v47, v28, s3
	v_cndmask_b32_e64 v32, v43, v32, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v47, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v31
	v_dual_mul_f32 v63, 0xbfb8aa3b, v34 :: v_dual_fmac_f32 v42, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v58
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s1
	v_exp_f32_e32 v42, v42
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v55, 0xbfb8aa3b, v28
	v_cndmask_b32_e64 v45, 0, 0x42800000, s3
	v_cndmask_b32_e64 v58, 0, 0x42800000, s12
	v_dual_mul_f32 v51, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v62, 0xbfb8aa3b, v33
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v22 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v31
	v_ldexp_f32 v42, v42, v68
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v55, 0, 0x42800000, s9
	v_exp_f32_e32 v45, v45
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v47
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v62
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v51
	v_cndmask_b32_e64 v47, 0, 0x42800000, s5
	v_dual_mul_f32 v43, 0xbfb8aa3b, v21 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v62, 0, 0x42800000, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v45, v45, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, null, v42, v42, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s7
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v24 :: v_dual_fmac_f32 v62, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v100, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s7
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v46
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v38, v38
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v43
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0x42800000, s6
	v_mul_f32_e32 v59, 0xbfb8aa3b, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v116, -v70, v100, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v43, 0, 0x42800000, s4
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v23
	v_ldexp_f32 v62, v62, v81
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v100, v116, v100
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v51, v51
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v38, v38, v66
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v59
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v21
	v_exp_f32_e32 v46, v46
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v59, 0, 0x42800000, s11
	v_ldexp_f32 v51, v51, v74
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v74, null, v45, v45, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v55, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v66, null, v38, v38, v18
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v102, v74
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v39, 0xbfb8aa3b, v19 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v25
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s9
	v_ldexp_f32 v46, v46, v73
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v98, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v39
	v_ldexp_f32 v47, v47, v72
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v118, -v74, v102, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v55, v55, v76
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v59, v59
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v102, v118, v102
	v_div_scale_f32 v82, null, v51, v51, v26
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v35
	v_cndmask_b32_e64 v39, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v50
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v106, v82
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v54
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v114, -v66, v98, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s0
	v_cndmask_b32_e64 v50, 0, 0x42800000, s8
	v_cndmask_b32_e64 v54, 0, 0x42800000, s10
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v19
	v_ldexp_f32 v59, v59, v78
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v122, -v82, v106, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v55, 1.0, v55 :: v_dual_fmac_f32 v98, v114, v98
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v78, null, v47, v47, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v106, v122, v106
	v_div_scale_f32 v86, null, v55, v55, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v35, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v27
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v25
	v_exp_f32_e32 v39, v39
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v104, v78
	v_rcp_f32_e32 v108, v86
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s2
	v_exp_f32_e32 v54, v54
	v_cndmask_b32_e64 v63, 0, 0x42800000, s13
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s10
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v39, v39, v69
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v120, -v78, v104, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v34
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v124, -v86, v108, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v58, v58
	v_ldexp_f32 v54, v54, v77
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s0
	v_exp_f32_e32 v50, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v104, v120, v104
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v63, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v108, v124, v108
	v_div_scale_f32 v90, null, v59, v59, v32
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s12
	v_ldexp_f32 v43, v43, v71
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v72, null, v39, v39, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s13
	v_ldexp_f32 v35, v35, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v110, v90
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v58, v58, v79
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v101, v72
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v50, v50, v75
	v_ldexp_f32 v63, v63, v80
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v35, 1.0, v35 :: v_dual_add_f32 v58, 1.0, v58
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v76, null, v43, v43, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v68, null, v35, v35, v17
	v_fma_f32 v126, -v90, v110, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, vcc_lo, v18, v38, v18
	v_rcp_f32_e32 v103, v76
	v_fma_f32 v117, -v72, v101, 1.0
	v_div_scale_f32 v80, null, v46, v46, v23
	v_rcp_f32_e32 v99, v68
	v_fmac_f32_e32 v110, v126, v110
	v_div_scale_f32 v94, null, v63, v63, v34
	v_dual_fmac_f32 v101, v117, v101 :: v_dual_mul_f32 v114, v67, v98
	v_rcp_f32_e32 v105, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v112, v94
	v_fma_f32 v119, -v76, v103, 1.0
	v_div_scale_f32 v88, null, v54, v54, v27
	v_fma_f32 v130, -v66, v114, v67
	v_fma_f32 v115, -v68, v99, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v103, v119, v103
	v_div_scale_f32 v84, null, v50, v50, v25
	v_fmac_f32_e32 v114, v130, v98
	v_div_scale_f32 v96, null, v62, v62, v33
	v_rcp_f32_e32 v109, v88
	v_div_scale_f32 v69, s0, v17, v35, v17
	v_fma_f32 v121, -v80, v105, 1.0
	v_fma_f32 v128, -v94, v112, 1.0
	v_fmac_f32_e32 v99, v115, v99
	v_div_scale_f32 v77, s4, v21, v43, v21
	v_fma_f32 v66, -v66, v114, v67
	v_div_scale_f32 v71, s1, v20, v42, v20
	v_rcp_f32_e32 v107, v84
	v_div_scale_f32 v92, null, v58, v58, v31
	v_rcp_f32_e32 v113, v96
	v_div_scale_f32 v81, s6, v23, v46, v23
	v_div_scale_f32 v83, s7, v26, v51, v26
	v_div_scale_f32 v95, s13, v34, v63, v34
	v_dual_fmac_f32 v105, v121, v105 :: v_dual_mul_f32 v116, v71, v100
	v_dual_fmac_f32 v112, v128, v112 :: v_dual_mul_f32 v115, v69, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v122, v83, v106
	v_div_scale_f32 v73, s2, v19, v39, v19
	v_div_scale_f32 v91, s11, v32, v59, v32
	v_mul_f32_e32 v119, v77, v103
	v_div_fmas_f32 v66, v66, v98, v114
	v_div_scale_f32 v75, s3, v22, v45, v22
	v_rcp_f32_e32 v111, v92
	v_fma_f32 v125, -v88, v109, 1.0
	v_dual_mul_f32 v121, v81, v105 :: v_dual_mul_f32 v128, v95, v112
	v_fma_f32 v131, -v68, v115, v69
	v_div_scale_f32 v87, s9, v28, v55, v28
	v_dual_mul_f32 v117, v73, v101 :: v_dual_mul_f32 v126, v91, v110
	v_fma_f32 v135, -v76, v119, v77
	v_div_fixup_f32 v18, v66, v38, v18
	v_fma_f32 v123, -v84, v107, 1.0
	v_fma_f32 v132, -v70, v116, v71
	v_div_scale_f32 v79, s5, v24, v47, v24
	v_fma_f32 v129, -v96, v113, 1.0
	v_dual_fmac_f32 v109, v125, v109 :: v_dual_mul_f32 v118, v75, v102
	v_fma_f32 v146, -v94, v128, v95
	v_fmac_f32_e32 v115, v131, v99
	v_mul_f32_e32 v124, v87, v108
	v_fma_f32 v133, -v72, v117, v73
	v_dual_fmac_f32 v119, v135, v103 :: v_dual_mul_f32 v18, v65, v18
	v_dual_fmac_f32 v107, v123, v107 :: v_dual_fmac_f32 v116, v132, v100
	v_fma_f32 v127, -v92, v111, 1.0
	v_dual_fmac_f32 v113, v129, v113 :: v_dual_mul_f32 v120, v79, v104
	v_fma_f32 v134, -v74, v118, v75
	v_fmac_f32_e32 v128, v146, v112
	v_fma_f32 v67, -v68, v115, v69
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v30.l, v18.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v117, v133, v101
	v_fma_f32 v68, -v70, v116, v71
	v_div_scale_f32 v85, s8, v25, v50, v25
	v_dual_fmac_f32 v111, v127, v111 :: v_dual_fmac_f32 v118, v134, v102
	v_fma_f32 v138, -v78, v120, v79
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v30, 1, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v67, v67, v99, v115
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v69, -v72, v117, v73
	v_div_fmas_f32 v68, v68, v100, v116
	v_div_scale_f32 v89, s10, v27, v54, v27
	v_dual_mul_f32 v123, v85, v107 :: v_dual_fmac_f32 v120, v138, v104
	v_fma_f32 v70, -v74, v118, v75
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v71, -v76, v119, v77
	v_div_fmas_f32 v38, v69, v101, v117
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v139, -v80, v121, v81
	v_div_fixup_f32 v20, v68, v42, v20
	v_div_scale_f32 v97, s14, v33, v62, v33
	v_fma_f32 v140, -v82, v122, v83
	v_mul_f32_e32 v125, v89, v109
	v_fma_f32 v72, -v78, v120, v79
	v_div_fixup_f32 v17, v67, v35, v17
	v_div_fmas_f32 v35, v70, v102, v118
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v141, -v84, v123, v85
	v_div_fmas_f32 v42, v71, v103, v119
	s_mov_b32 vcc_lo, s5
	v_dual_fmac_f32 v121, v139, v105 :: v_dual_mul_f32 v20, v61, v20
	v_div_scale_f32 v93, s12, v31, v58, v31
	v_fma_f32 v144, -v90, v126, v91
	v_dual_mul_f32 v129, v97, v113 :: v_dual_fmac_f32 v122, v140, v106
	v_fma_f32 v143, -v88, v125, v89
	v_div_fixup_f32 v19, v38, v39, v19
	v_div_fmas_f32 v38, v72, v104, v120
	v_div_fixup_f32 v22, v35, v45, v22
	v_fma_f32 v142, -v86, v124, v87
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.l, v20.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v123, v141, v107
	v_mul_f32_e32 v127, v93, v111
	v_dual_fmac_f32 v125, v143, v109 :: v_dual_mul_f32 v22, v57, v22
	v_fmac_f32_e32 v126, v144, v110
	v_fma_f32 v147, -v96, v129, v97
	v_fma_f32 v73, -v80, v121, v81
	v_div_fixup_f32 v24, v38, v47, v24
	v_fmac_f32_e32 v124, v142, v108
	v_fma_f32 v74, -v82, v122, v83
	s_mov_b32 vcc_lo, s6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v16, 1, v16
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v75, -v84, v123, v85
	v_fma_f32 v145, -v92, v127, v93
	v_dual_fmac_f32 v129, v147, v113 :: v_dual_mul_f32 v24, v53, v24
	v_div_fmas_f32 v35, v73, v105, v121
	s_mov_b32 vcc_lo, s7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v14.l, v22.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v76, -v86, v124, v87
	v_div_fmas_f32 v39, v74, v106, v122
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v77, -v88, v125, v89
	v_div_fmas_f32 v38, v75, v107, v123
	s_mov_b32 vcc_lo, s9
	v_dual_fmac_f32 v127, v145, v111 :: v_dual_and_b32 v14, 1, v14
	v_fma_f32 v78, -v90, v126, v91
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.l, v24.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v60, v19
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v23, v35, v46, v23
	v_div_fmas_f32 v35, v76, v108, v124
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v26, v39, v51, v26
	v_div_fmas_f32 v39, v77, v109, v125
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v79, -v92, v127, v93
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v17, v64, v17 :: v_dual_mul_f32 v26, v49, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v21, v42, v43, v21
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s4, v22, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v25, v38, v50, v25
	v_div_fmas_f32 v38, v78, v110, v126
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v15.l, v19.h
	v_add3_u32 v14, v22, v14, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v18, v18
	v_mov_b16_e32 v29.l, v17.h
	v_cmp_o_f32_e64 s2, v20, v20
	v_add3_u32 v18, v18, v30, 0x7fff
	v_and_b32_e32 v15, 1, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v30, v79, v111, v127
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v16, v20, v16, 0x7fff
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v20, v38, v59, v32
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v56, v21
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s4
	v_cmp_eq_u32_e64 s4, 0, v136
	v_cmp_o_f32_e64 s3, v19, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v28, v35, v55, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v15, v19, v15, 0x7fff
	v_mov_b16_e32 v10.l, v26.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v52, v23
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v19, v30, v58, v31
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v20, v41, v20
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v21.h
	v_cndmask_b32_e64 v0, 0x1054, v0, s4
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v27, v39, v54, v27
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v8, v28
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v17, v17, v29, 0x7fff
	v_and_b32_e32 v13, 1, v13
	v_cndmask_b16 v16.l, 0x7fff, v15.h, s3
	v_and_b32_e32 v10, 1, v10
	v_mov_b16_e32 v11.l, v23.h
	v_mov_b16_e32 v6.l, v20.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v48, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v40, v19
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v80, -v94, v128, v95
	v_fma_f32 v81, -v96, v129, v97
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v21, v21
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s1
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v13, v21, v13, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v9.l, v25.h
	v_and_b32_e32 v0, 0x540054, v0
	v_mov_b16_e32 v2.l, v15.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v44, v27
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s13
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s6, v24, v24
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v29, v80, v112, v128
	s_mov_b32 vcc_lo, s14
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s7, v23, v23
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v28, v81, v113, v129
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v12, v24, v12, 0x7fff
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v11, v23, v11, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s5
	v_and_b32_e32 v7, 1, v7
	v_and_b32_e32 v2, 1, v2
	v_mov_b16_e32 v5.l, v17.h
	v_cmp_o_f32_e64 s0, v25, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v22, v29, v63, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s2
	v_cmp_o_f32_e64 s1, v8, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v21, v28, v62, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s6
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v9, v25, v9, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s7
	v_add3_u32 v7, v8, v7, 0x7fff
	v_cndmask_b32_e64 v8, v14, v18, s4
	v_cndmask_b32_e64 v11, v18, v14, s4
	v_cndmask_b32_e64 v14, 0x3276, v137, s4
	v_add3_u32 v10, v26, v10, 0x7fff
	v_cmp_o_f32_e64 s2, v17, v17
	v_cmp_o_f32_e64 s3, v20, v20
	v_add3_u32 v5, v17, v5, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s0
	v_add3_u32 v6, v20, v6, 0x7fff
	v_cndmask_b32_e64 v9, v12, v16, s4
	v_cndmask_b32_e64 v12, v16, v12, s4
	v_lshl_or_b32 v14, v14, 8, v14
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v13, v37, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v36, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v7.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s3
	v_permlanex16_b32 v6, v12, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x760076, v14
	v_mov_b16_e32 v3.l, v19.h
	v_mov_b16_e32 v1.l, v13.h
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_cmp_o_f32_e64 s5, v15, v15
	v_cmp_o_f32_e64 s6, v19, v19
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v1, 1, v1
	v_cmp_o_f32_e64 s7, v13, v13
	v_add3_u32 v2, v15, v2, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v3, v19, v3, 0x7fff
	v_add3_u32 v1, v13, v1, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v5.l, 0x7fff, v2.h, s5
	v_permlanex16_b32 v11, v11, s15, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s7
	v_lshl_or_b32 v1, v12, 4, v12
	v_cndmask_b32_e64 v12, v5, v10, s4
	v_cndmask_b32_e64 v3, v10, v5, s4
	v_and_b32_e32 v10, 0x5040504, v0
	v_cndmask_b32_e64 v5, v7, v2, s4
	v_and_b32_e32 v13, 0x7060706, v1
	v_cndmask_b32_e64 v14, v2, v7, s4
	v_permlanex16_b32 v7, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v11, v8, v10
	v_permlanex16_b32 v15, v5, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v11, v8, v13
	v_perm_b32 v2, v6, v9, v10
	v_perm_b32 v3, v6, v9, v13
	v_perm_b32 v5, v7, v12, v10
	v_perm_b32 v6, v7, v12, v13
	v_perm_b32 v7, v15, v14, v10
	v_perm_b32 v8, v15, v14, v13
	s_clause 0x1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v4, s[24:27], 0 offen offset:256
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 179
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16020
; TotalNumSgprs: 52
; NumVgprs: 179
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 52
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     179
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
