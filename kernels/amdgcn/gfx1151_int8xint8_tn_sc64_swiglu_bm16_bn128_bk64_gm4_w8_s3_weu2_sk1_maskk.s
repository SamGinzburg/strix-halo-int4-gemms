	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s7, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s8, s2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v46, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v49, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v10, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v36, 15, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v47, 62, v46
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s10, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s10, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s6, s10
	s_add_i32 s6, s6, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s6, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s11, s6
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s16, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s9, s16
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s17, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s6
	s_sub_i32 s19, 0, s6
	v_rcp_iflag_f32_e32 v1, s8
	s_load_b256 s[8:15], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s18, v1
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_cvt_u32_f32 s18, s18
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_xor_b32 s10, s2, s17
	s_mul_i32 s19, s19, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s18, s19
	s_add_i32 s18, s18, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s18
	s_ashr_i32 s18, s10, 31
	s_mul_i32 s11, s4, s6
	s_add_i32 s10, s4, 1
	s_sub_i32 s5, s5, s11
	s_mov_b32 s11, 0x31027000
	s_sub_i32 s19, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s31, s11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s19, s4, 1
	s_cmp_ge_u32 s5, s6
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s19, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s6, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s19, s7, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s18
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s6, v47
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s18, s3, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s4, s19, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s16
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s34, s27, 1
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s3, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s19, s4
.Ltmp19:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v3
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s18, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s19, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s34, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s5, s34, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s30, s10
	s_and_b32 s29, s29, 0xffff
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s6, v46
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v48, v1, 4, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s20, s26, s6
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s33, s5, v48
	v_add_nc_u32_e32 v3, s34, v2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v4, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_clause 0x1
	buffer_load_b128 v[13:16], v4, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v3, s[28:31], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v3, s27, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s27, 7, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s34, v3
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v5
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[21:24], v3, s[28:31], 0 offen
	buffer_load_b128 v[25:28], v4, s[28:31], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v3, s26, v46
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 12, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v5, s27, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s6, 64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v9, v3, v4, s18
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s35, v47
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v6, s34, v5
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v33, s35, v46
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v3, s20, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s7, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s34, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_clause 0x1
	buffer_load_b128 v[29:32], v2, s[28:31], 0 offen
	buffer_load_b128 v[37:40], v4, s[28:31], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v2, 0x80000000, v5, s4
	v_cndmask_b32_e64 v4, 0x80000000, v6, s4
	s_clause 0x1
	buffer_load_b128 v[41:44], v2, s[28:31], 0 offen
	buffer_load_b128 v[57:60], v4, s[28:31], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	s_lshl_b32 s14, s26, 6
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v33
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v33, s20, s14, v9
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	buffer_load_b32 v67, v2, s[8:11], 0 offen
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v68, 0, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_and_b32 v12, 6, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 0x420, v3
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v4, 0x70, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s19, 0xbf
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v76, v33, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v3, v3, v47
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v50, v12, 10, v3
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v2, v2, 1, v4
	v_lshlrev_b32_e32 v12, 3, v12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v51, 0x90, v50
	v_xor_b32_e32 v52, 0x120, v50
	v_add_nc_u32_e32 v69, 0, v50
	v_xor_b32_e32 v53, 0x1b0, v50
	v_xor_b32_e32 v54, 0x210, v50
	v_add_nc_u32_e32 v70, 0, v51
	v_xor_b32_e32 v55, 0x330, v50
	v_add_nc_u32_e32 v71, 0, v52
	v_xor_b32_e32 v56, 0x3a0, v50
	v_add_nc_u32_e32 v72, 0, v53
	v_add_nc_u32_e32 v73, 0, v54
	v_add_nc_u32_e32 v74, 0, v55
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v6, 2, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v75, 0, v56
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v7, 4, v2
	v_or_b32_e32 v8, 6, v2
	v_or_b32_e32 v11, 8, v2
	v_or_b32_e32 v3, 10, v2
	v_or_b32_e32 v4, 12, v2
	v_or_b32_e32 v5, 14, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v33, v17, v13, 0x5010400
	v_perm_b32 v17, v17, v13, 0x7030602
	v_perm_b32 v34, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v35, v19, v15, 0x5010400
	v_perm_b32 v19, v19, v15, 0x7030602
	v_perm_b32 v45, v20, v16, 0x5010400
	v_perm_b32 v61, v20, v16, 0x7030602
	v_and_b16 v13.l, 0xff, v33.l
	v_lshrrev_b32_e32 v62, 8, v33
	v_lshrrev_b32_e32 v63, 24, v33
	v_and_b16 v13.h, 0xff, v33.h
	v_and_b16 v14.l, 0xff, v17.l
	v_lshrrev_b32_e32 v33, 8, v17
	v_lshrrev_b32_e32 v64, 24, v17
	v_and_b16 v14.h, 0xff, v17.h
	v_and_b16 v15.l, 0xff, v34.l
	v_lshrrev_b32_e32 v65, 8, v34
	v_lshrrev_b32_e32 v66, 24, v34
	v_and_b16 v15.h, 0xff, v34.h
	v_and_b16 v16.l, 0xff, v18.l
	v_lshrrev_b32_e32 v34, 8, v18
	v_lshrrev_b32_e32 v77, 24, v18
	v_and_b16 v16.h, 0xff, v18.h
	v_and_b16 v17.l, 0xff, v35.l
	v_lshrrev_b32_e32 v78, 8, v35
	v_lshrrev_b32_e32 v79, 24, v35
	v_and_b16 v17.h, 0xff, v35.h
	v_and_b16 v18.l, 0xff, v19.l
	v_lshrrev_b32_e32 v35, 8, v19
	v_lshrrev_b32_e32 v80, 24, v19
	v_and_b16 v18.h, 0xff, v19.h
	v_and_b16 v19.l, 0xff, v45.l
	v_lshrrev_b32_e32 v81, 8, v45
	v_lshrrev_b32_e32 v82, 24, v45
	v_and_b16 v19.h, 0xff, v45.h
	v_and_b16 v20.l, 0xff, v61.l
	v_lshrrev_b32_e32 v45, 8, v61
	v_lshrrev_b32_e32 v83, 24, v61
	v_and_b16 v20.h, 0xff, v61.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v61, v25, v21, 0x5010400
	v_perm_b32 v84, v25, v21, 0x7030602
	v_perm_b32 v85, v26, v22, 0x5010400
	v_perm_b32 v86, v26, v22, 0x7030602
	v_perm_b32 v87, v27, v23, 0x5010400
	v_perm_b32 v88, v27, v23, 0x7030602
	v_perm_b32 v89, v28, v24, 0x5010400
	v_perm_b32 v90, v28, v24, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v21.l, 8, v62.l
	v_lshlrev_b16 v21.h, 8, v63.l
	v_lshlrev_b16 v22.l, 8, v33.l
	v_lshlrev_b16 v22.h, 8, v64.l
	v_lshlrev_b16 v23.l, 8, v65.l
	v_lshlrev_b16 v23.h, 8, v66.l
	v_lshlrev_b16 v24.l, 8, v34.l
	v_lshlrev_b16 v24.h, 8, v77.l
	v_lshlrev_b16 v25.l, 8, v78.l
	v_lshlrev_b16 v25.h, 8, v79.l
	v_lshlrev_b16 v26.l, 8, v35.l
	v_lshlrev_b16 v26.h, 8, v80.l
	v_lshlrev_b16 v27.l, 8, v81.l
	v_lshlrev_b16 v27.h, 8, v82.l
	v_lshlrev_b16 v28.l, 8, v45.l
	v_lshlrev_b16 v28.h, 8, v83.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v33.l, 0xff, v61.l
	v_lshrrev_b32_e32 v65, 8, v61
	v_lshrrev_b32_e32 v66, 24, v61
	v_and_b16 v33.h, 0xff, v61.h
	v_and_b16 v34.l, 0xff, v84.l
	v_lshrrev_b32_e32 v77, 8, v84
	v_lshrrev_b32_e32 v78, 24, v84
	v_and_b16 v34.h, 0xff, v84.h
	v_and_b16 v35.l, 0xff, v85.l
	v_lshrrev_b32_e32 v79, 8, v85
	v_lshrrev_b32_e32 v80, 24, v85
	v_and_b16 v35.h, 0xff, v85.h
	v_and_b16 v45.l, 0xff, v86.l
	v_lshrrev_b32_e32 v81, 8, v86
	v_lshrrev_b32_e32 v82, 24, v86
	v_and_b16 v45.h, 0xff, v86.h
	v_and_b16 v61.l, 0xff, v87.l
	v_lshrrev_b32_e32 v83, 8, v87
	v_lshrrev_b32_e32 v84, 24, v87
	v_and_b16 v61.h, 0xff, v87.h
	v_and_b16 v62.l, 0xff, v88.l
	v_lshrrev_b32_e32 v85, 8, v88
	v_lshrrev_b32_e32 v86, 24, v88
	v_and_b16 v62.h, 0xff, v88.h
	v_and_b16 v63.l, 0xff, v89.l
	v_lshrrev_b32_e32 v87, 8, v89
	v_lshrrev_b32_e32 v88, 24, v89
	v_and_b16 v63.h, 0xff, v89.h
	v_and_b16 v64.l, 0xff, v90.l
	v_lshrrev_b32_e32 v89, 8, v90
	v_lshrrev_b32_e32 v91, 24, v90
	v_and_b16 v64.h, 0xff, v90.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v90, v37, v29, 0x5010400
	v_perm_b32 v37, v37, v29, 0x7030602
	v_perm_b32 v92, v38, v30, 0x5010400
	v_perm_b32 v38, v38, v30, 0x7030602
	v_perm_b32 v93, v39, v31, 0x5010400
	v_perm_b32 v39, v39, v31, 0x7030602
	v_perm_b32 v94, v40, v32, 0x5010400
	v_perm_b32 v95, v40, v32, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v96, v57, v41, 0x5010400
	v_perm_b32 v57, v57, v41, 0x7030602
	v_perm_b32 v97, v58, v42, 0x5010400
	v_perm_b32 v58, v58, v42, 0x7030602
	v_perm_b32 v98, v59, v43, 0x5010400
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v13.l, v13.l, v21.l
	v_or_b16 v16.l, v16.l, v24.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v21.l, 8, v65.l
	v_lshlrev_b16 v24.l, 8, v81.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v65, 8, v90
	v_or_b16 v13.h, v13.h, v21.h
	v_or_b16 v16.h, v16.h, v24.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v21.h, 8, v66.l
	v_lshlrev_b16 v24.h, 8, v82.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v66, 24, v90
	v_or_b16 v14.l, v14.l, v22.l
	v_or_b16 v17.l, v17.l, v25.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v22.l, 8, v77.l
	v_lshlrev_b16 v25.l, 8, v83.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v77, 8, v37
	v_or_b16 v14.h, v14.h, v22.h
	v_or_b16 v17.h, v17.h, v25.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v22.h, 8, v78.l
	v_lshlrev_b16 v25.h, 8, v84.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v78, 24, v37
	v_or_b16 v15.l, v15.l, v23.l
	v_or_b16 v15.h, v15.h, v23.h
	v_or_b16 v18.l, v18.l, v26.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v23.l, 8, v79.l
	v_lshlrev_b16 v26.l, 8, v85.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v79, 8, v92
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v59, v59, v43, 0x7030602
	v_perm_b32 v99, v60, v44, 0x5010400
	v_perm_b32 v100, v60, v44, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v18.h, v18.h, v26.h
	v_or_b16 v19.l, v19.l, v27.l
	v_or_b16 v19.h, v19.h, v27.h
	v_or_b16 v20.l, v20.l, v28.l
	v_or_b16 v20.h, v20.h, v28.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v23.h, 8, v80.l
	v_lshlrev_b16 v26.h, 8, v86.l
	v_lshlrev_b16 v27.l, 8, v87.l
	v_lshlrev_b16 v27.h, 8, v88.l
	v_lshlrev_b16 v28.l, 8, v89.l
	v_lshlrev_b16 v28.h, 8, v91.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v29.l, 0xff, v90.l
	v_and_b16 v29.h, 0xff, v90.h
	v_and_b16 v30.l, 0xff, v37.l
	v_and_b16 v30.h, 0xff, v37.h
	v_and_b16 v31.l, 0xff, v92.l
	v_lshrrev_b32_e32 v80, 24, v92
	v_and_b16 v31.h, 0xff, v92.h
	v_and_b16 v32.l, 0xff, v38.l
	v_lshrrev_b32_e32 v81, 8, v38
	v_lshrrev_b32_e32 v82, 24, v38
	v_and_b16 v32.h, 0xff, v38.h
	v_and_b16 v37.l, 0xff, v93.l
	v_lshrrev_b32_e32 v83, 8, v93
	v_lshrrev_b32_e32 v84, 24, v93
	v_and_b16 v37.h, 0xff, v93.h
	v_and_b16 v38.l, 0xff, v39.l
	v_lshrrev_b32_e32 v85, 8, v39
	v_lshrrev_b32_e32 v86, 24, v39
	v_and_b16 v38.h, 0xff, v39.h
	v_and_b16 v39.l, 0xff, v94.l
	v_lshrrev_b32_e32 v87, 8, v94
	v_lshrrev_b32_e32 v88, 24, v94
	v_and_b16 v39.h, 0xff, v94.h
	v_and_b16 v40.l, 0xff, v95.l
	v_lshrrev_b32_e32 v89, 8, v95
	v_lshrrev_b32_e32 v90, 24, v95
	v_and_b16 v40.h, 0xff, v95.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v41.l, 0xff, v96.l
	v_lshrrev_b32_e32 v91, 8, v96
	v_lshrrev_b32_e32 v92, 24, v96
	v_and_b16 v41.h, 0xff, v96.h
	v_lshrrev_b32_e32 v93, 8, v57
	v_lshrrev_b32_e32 v94, 24, v57
	v_and_b16 v43.l, 0xff, v97.l
	v_lshrrev_b32_e32 v95, 8, v97
	v_lshrrev_b32_e32 v96, 24, v97
	v_and_b16 v43.h, 0xff, v97.h
	v_lshrrev_b32_e32 v97, 8, v58
	v_lshrrev_b32_e32 v101, 24, v58
	v_lshrrev_b32_e32 v102, 8, v98
	v_lshrrev_b32_e32 v103, 24, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v69, v13
	ds_store_b16_d16_hi v69, v13 offset:64
	ds_store_b16 v70, v14
	ds_store_b16_d16_hi v70, v14 offset:64
	ds_store_b16 v71, v15
	ds_store_b16_d16_hi v71, v15 offset:64
	ds_store_b16 v72, v16
	ds_store_b16_d16_hi v72, v16 offset:64
	ds_store_b16 v73, v17
	ds_store_b16_d16_hi v73, v17 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v15.h, v45.l, v24.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v24.l, 8, v65.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v21.l, v33.l, v21.l
	v_or_b16 v16.l, v45.h, v24.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v24.h, 8, v66.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v16.h, v61.l, v25.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v25.l, 8, v77.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v17.l, v61.h, v25.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v25.h, 8, v78.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v13.l, v33.h, v21.h
	v_or_b16 v17.h, v62.l, v26.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v26.l, 8, v79.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v42.l, 0xff, v57.l
	v_and_b16 v42.h, 0xff, v57.h
	v_and_b16 v44.l, 0xff, v58.l
	v_and_b16 v44.h, 0xff, v58.h
	v_and_b16 v57.l, 0xff, v98.l
	v_and_b16 v57.h, 0xff, v98.h
	v_and_b16 v58.l, 0xff, v59.l
	v_lshrrev_b32_e32 v98, 8, v59
	v_lshrrev_b32_e32 v104, 24, v59
	v_and_b16 v58.h, 0xff, v59.h
	v_and_b16 v59.l, 0xff, v99.l
	v_lshrrev_b32_e32 v105, 8, v99
	v_lshrrev_b32_e32 v106, 24, v99
	v_and_b16 v59.h, 0xff, v99.h
	v_lshrrev_b32_e32 v99, 8, v100
	v_lshrrev_b32_e32 v107, 24, v100
	v_or_b16 v13.h, v34.l, v22.l
	v_or_b16 v14.l, v34.h, v22.h
	v_or_b16 v14.h, v35.l, v23.l
	v_or_b16 v15.l, v35.h, v23.h
	v_or_b16 v21.h, v62.h, v26.h
	v_or_b16 v22.l, v63.l, v27.l
	v_or_b16 v22.h, v63.h, v27.h
	v_or_b16 v23.l, v64.l, v28.l
	v_or_b16 v23.h, v64.h, v28.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v26.h, 8, v80.l
	v_lshlrev_b16 v27.l, 8, v81.l
	v_lshlrev_b16 v27.h, 8, v82.l
	v_lshlrev_b16 v28.l, 8, v83.l
	v_lshlrev_b16 v28.h, 8, v84.l
	v_lshlrev_b16 v33.l, 8, v85.l
	v_lshlrev_b16 v33.h, 8, v86.l
	v_lshlrev_b16 v34.l, 8, v87.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v45.l, 8, v91.l
	v_lshlrev_b16 v45.h, 8, v92.l
	v_lshlrev_b16 v60.h, 8, v93.l
	v_lshlrev_b16 v61.l, 8, v94.l
	v_lshlrev_b16 v61.h, 8, v95.l
	v_lshlrev_b16 v62.l, 8, v96.l
	v_lshlrev_b16 v62.h, 8, v97.l
	v_lshlrev_b16 v63.l, 8, v101.l
	v_lshlrev_b16 v63.h, 8, v102.l
	v_lshlrev_b16 v64.l, 8, v103.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v68, v67 offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v69, v21 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v69, v18 offset:640
	ds_store_b16_d16_hi v69, v18 offset:704
	ds_store_b16 v74, v19
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v69, v13 offset:16448
	ds_store_b16_d16_hi v70, v13 offset:16384
	ds_store_b16 v70, v14 offset:16448
	ds_store_b16_d16_hi v71, v14 offset:16384
	ds_store_b16 v71, v15 offset:16448
	ds_store_b16_d16_hi v72, v15 offset:16384
	ds_store_b16 v72, v16 offset:16448
	ds_store_b16_d16_hi v73, v16 offset:16384
	ds_store_b16 v73, v17 offset:16448
	ds_store_b16_d16_hi v69, v17 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v74, v19 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v69, v21 offset:17088
	ds_store_b16 v74, v22 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v75, v20
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v74, v22 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v75, v20 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v75, v23 offset:16384
	ds_store_b16_d16_hi v75, v23 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v13.l, v29.l, v24.l
	v_or_b16 v13.h, v29.h, v24.h
	v_or_b16 v14.l, v30.l, v25.l
	v_or_b16 v14.h, v30.h, v25.h
	v_or_b16 v15.l, v31.l, v26.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v60.l, 0xff, v100.l
	v_lshlrev_b16 v64.h, 8, v98.l
	v_lshlrev_b16 v65.l, 8, v104.l
	v_lshlrev_b16 v65.h, 8, v105.l
	v_lshlrev_b16 v66.l, 8, v106.l
	v_lshlrev_b16 v66.h, 8, v99.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v15.h, v31.h, v26.h
	v_or_b16 v16.l, v32.l, v27.l
	v_or_b16 v16.h, v32.h, v27.h
	v_or_b16 v17.l, v37.l, v28.l
	v_or_b16 v17.h, v37.h, v28.h
	v_or_b16 v18.l, v38.l, v33.l
	v_or_b16 v18.h, v38.h, v33.h
	v_or_b16 v19.l, v39.l, v34.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v21.l, v41.l, v45.l
	v_or_b16 v21.h, v41.h, v45.h
	v_or_b16 v22.l, v42.l, v60.h
	v_or_b16 v22.h, v42.h, v61.l
	v_or_b16 v23.l, v43.l, v61.h
	v_or_b16 v23.h, v43.h, v62.l
	v_or_b16 v24.l, v44.l, v62.h
	v_or_b16 v24.h, v44.h, v63.l
	v_or_b16 v25.l, v57.l, v63.h
	v_or_b16 v25.h, v57.h, v64.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v69, v13 offset:8192
	ds_store_b16_d16_hi v69, v13 offset:8256
	ds_store_b16 v70, v14 offset:8192
	ds_store_b16_d16_hi v70, v14 offset:8256
	ds_store_b16 v71, v15 offset:8192
	ds_store_b16_d16_hi v71, v15 offset:8256
	ds_store_b16 v72, v16 offset:8192
	ds_store_b16_d16_hi v72, v16 offset:8256
	ds_store_b16 v73, v17 offset:8192
	ds_store_b16_d16_hi v73, v17 offset:8256
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v68, v76 offset:33792
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v69, v21 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v69, v18 offset:8832
	ds_store_b16_d16_hi v69, v18 offset:8896
	ds_store_b16 v74, v19 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v69, v21 offset:24640
	ds_store_b16 v70, v22 offset:24576
	ds_store_b16_d16_hi v70, v22 offset:24640
	ds_store_b16 v71, v23 offset:24576
	ds_store_b16_d16_hi v71, v23 offset:24640
	ds_store_b16 v72, v24 offset:24576
	ds_store_b16_d16_hi v72, v24 offset:24640
	ds_store_b16 v73, v25 offset:24576
	ds_store_b16_d16_hi v73, v25 offset:24640
	v_lshlrev_b16 v13.l, 8, v107.l
	v_and_b16 v13.h, 0xff, v100.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v34.h, 8, v88.l
	v_lshlrev_b16 v35.l, 8, v89.l
	v_lshlrev_b16 v35.h, 8, v90.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v26.l, v58.l, v64.h
	v_or_b16 v26.h, v58.h, v65.l
	v_or_b16 v14.l, v59.l, v65.h
	v_or_b16 v14.h, v59.h, v66.l
	v_or_b16 v15.l, v60.l, v66.h
	v_or_b16 v15.h, v13.h, v13.l
	v_or_b32_e32 v58, 0x3f0, v0
	v_lshlrev_b32_e32 v59, 6, v1
	v_lshlrev_b32_e32 v13, 5, v0
	v_and_b32_e32 v60, 8, v0
	v_and_b32_e32 v61, 32, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v19.h, v39.h, v34.h
	v_or_b16 v20.l, v40.l, v35.l
	v_or_b16 v20.h, v40.h, v35.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v69, v26 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v74, v19 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v69, v26 offset:25280
	ds_store_b16 v74, v14 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v75, v20 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v74, v14 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v75, v20 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v75, v15 offset:24576
	ds_store_b16_d16_hi v75, v15 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v62, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v1, 6, v1
	v_and_b32_e32 v63, 8, v0
	v_and_b32_e32 v64, 32, v0
	v_and_or_b32 v57, 0x1800, v13, v12
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr57
.LBB0_3:                                ; %Flow147
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v27, s18, v36
	s_ashr_i32 s1, s17, 6
	v_or_b32_e32 v43, s33, v2
	v_or_b32_e32 v44, s33, v6
	v_or_b32_e32 v42, s33, v7
	v_mul_lo_u32 v45, v27, s1
	v_or_b32_e32 v41, s33, v8
	v_or_b32_e32 v40, s33, v11
	v_or_b32_e32 v39, s33, v3
	v_or_b32_e32 v38, s33, v4
	v_or_b32_e32 v37, s33, v5
	v_add_nc_u32_e32 v35, s27, v2
	v_add_nc_u32_e32 v34, s27, v6
	v_add_nc_u32_e32 v33, s27, v7
	v_add_nc_u32_e32 v31, s27, v8
	v_add_nc_u32_e32 v29, s27, v11
	v_add_nc_u32_e32 v32, s27, v3
	v_add_nc_u32_e32 v30, s27, v4
	v_add_nc_u32_e32 v28, s27, v5
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 5, 1
	v_bfe_i32 v2, v0, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 0x420, v1
	v_and_or_b32 v57, 0x1800, v13, v12
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v62, s34, v48
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_or_b32 v1, 0x210, v2, v1
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_xor_b32_e32 v1, v1, v57
	v_mov_b32_e32 v26, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v63, v1, v59
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_mov_b32_e32 v6, s21
	v_xor_b32_e32 v64, 16, v63
	v_xor_b32_e32 v65, 32, v63
	v_xor_b32_e32 v66, 48, v63
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v15, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s48, s1, 3
	s_add_i32 s47, s35, 64
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s5, 0xffff
	s_mov_b32 s40, s4
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s46, 0, 0x8400
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s48, s48, -3
	s_mov_b32 s49, 1
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s21, s17, 6
	s_mov_b32 s0, s15
	s_mov_b32 s20, s6
	s_mov_b32 s6, s35
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s35, s47, s21
	s_mov_b32 s18, s16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v67, s0, v36
	v_add_nc_u32_e32 v68, s0, v58
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s20, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v75, s35, v46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v69, s18, v63
	v_add_nc_u32_e32 v70, s18, v64
	v_add_nc_u32_e32 v71, s18, v65
	v_add_nc_u32_e32 v72, s18, v66
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[73:74], null, s35, s26, v[9:10]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s35, s34
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 26
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v76, s35, v47
	s_mov_b32 s19, s14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s18, s18, s33
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s20, s20, s0
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v75
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v79, s19, v63
	v_add_nc_u32_e32 v80, s19, v64
	v_add_nc_u32_e32 v81, s19, v65
	v_add_nc_u32_e32 v82, s19, v66
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v74, s18, v48
	v_add_nc_u32_e32 v77, s18, v62
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s18, s18, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s19, s20, 6
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s7, v76
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v75, s18, v48
	v_add_nc_u32_e32 v76, s18, v62
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s19, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v78, v45, s19, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s19, s34
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v95, v43, s18, 1
	v_add_lshl_u32 v96, v44, s18, 1
	v_add_lshl_u32 v97, v42, s18, 1
	v_add_lshl_u32 v98, v41, s18, 1
	v_add_lshl_u32 v99, v40, s18, 1
	v_add_lshl_u32 v100, v39, s18, 1
	v_add_lshl_u32 v101, v38, s18, 1
	v_add_lshl_u32 v102, v37, s18, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s18, s18, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v74, 0x80000000, v74, s0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v108, v29, s18, 1
	v_add_lshl_u32 v109, v32, s18, 1
	v_add_lshl_u32 v110, v30, s18, 1
	v_add_lshl_u32 v104, v35, s18, 1
	v_add_lshl_u32 v105, v34, s18, 1
	v_add_lshl_u32 v106, v33, s18, 1
	v_add_lshl_u32 v107, v31, s18, 1
	v_add_lshl_u32 v111, v28, s18, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v114, 0x80000000, v78, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v103, 0x80000000, v77, s0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v112, 0x80000000, v75, s0
	v_cndmask_b32_e64 v113, 0x80000000, v76, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v115, 0x80000000, v95 :: v_dual_cndmask_b32 v116, 0x80000000, v96
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v126, 0x80000000, v108 :: v_dual_cndmask_b32 v185, 0x80000000, v109
	v_dual_cndmask_b32 v186, 0x80000000, v110 :: v_dual_cndmask_b32 v111, 0x80000000, v111
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v143, v73, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v117, 0x80000000, v97 :: v_dual_cndmask_b32 v118, 0x80000000, v98
	v_dual_cndmask_b32 v119, 0x80000000, v99 :: v_dual_cndmask_b32 v120, 0x80000000, v100
	v_dual_cndmask_b32 v121, 0x80000000, v101 :: v_dual_cndmask_b32 v122, 0x80000000, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[95:98], v74, s[28:31], 0 offen
	buffer_load_b128 v[99:102], v103, s[28:31], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v74, 0x80000000, v104 :: v_dual_cndmask_b32 v123, 0x80000000, v105
	v_dual_cndmask_b32 v124, 0x80000000, v106 :: v_dual_cndmask_b32 v125, 0x80000000, v107
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v187, v114, s[36:39], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[103:106], v112, s[28:31], 0 offen
	buffer_load_b128 v[107:110], v113, s[28:31], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v188, v115, s[40:43], 0 offen
	buffer_load_u16 v189, v116, s[40:43], 0 offen
	buffer_load_u16 v190, v117, s[40:43], 0 offen
	buffer_load_u16 v191, v118, s[40:43], 0 offen
	buffer_load_u16 v192, v119, s[40:43], 0 offen
	buffer_load_u16 v193, v120, s[40:43], 0 offen
	buffer_load_u16 v194, v121, s[40:43], 0 offen
	buffer_load_u16 v195, v122, s[40:43], 0 offen
	buffer_load_u16 v196, v74, s[40:43], 0 offen
	buffer_load_u16 v197, v123, s[40:43], 0 offen
	buffer_load_u16 v198, v124, s[40:43], 0 offen
	buffer_load_u16 v199, v125, s[40:43], 0 offen
	buffer_load_u16 v200, v126, s[40:43], 0 offen
	buffer_load_u16 v185, v185, s[40:43], 0 offen
	buffer_load_u16 v186, v186, s[40:43], 0 offen
	buffer_load_u16 v201, v111, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[75:78], v69
	ds_load_b128 v[83:86], v70
	ds_load_b128 v[87:90], v71
	ds_load_b128 v[91:94], v72
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v69, v67 offset:208
	ds_load_u8 v70, v67 offset:240
	ds_load_u8 v71, v67 offset:224
	ds_load_u8 v72, v67 offset:192
	ds_load_u8 v73, v67 offset:144
	ds_load_u8 v127, v67 offset:176
	ds_load_u8 v128, v67 offset:160
	ds_load_u8 v129, v67 offset:128
	ds_load_u8 v130, v67 offset:80
	ds_load_u8 v131, v67 offset:112
	ds_load_u8 v132, v67 offset:96
	ds_load_u8 v133, v67 offset:64
	ds_load_u8 v134, v67
	ds_load_u8 v135, v67 offset:16
	ds_load_u8 v136, v67 offset:32
	ds_load_u8 v137, v67 offset:48
	ds_load_u8 v138, v67 offset:464
	ds_load_u8 v139, v67 offset:496
	ds_load_u8 v140, v67 offset:480
	ds_load_u8 v141, v67 offset:448
	ds_load_u8 v142, v67 offset:400
	ds_load_u8 v144, v67 offset:432
	ds_load_u8 v145, v67 offset:416
	ds_load_u8 v146, v67 offset:384
	ds_load_u8 v147, v67 offset:336
	ds_load_u8 v148, v67 offset:368
	ds_load_u8 v149, v67 offset:352
	ds_load_u8 v150, v67 offset:320
	ds_load_u8 v151, v67 offset:272
	ds_load_u8 v152, v67 offset:304
	ds_load_u8 v153, v67 offset:288
	ds_load_u8 v154, v67 offset:256
	ds_load_u8 v155, v67 offset:720
	ds_load_u8 v156, v67 offset:752
	ds_load_u8 v157, v67 offset:736
	ds_load_u8 v158, v67 offset:704
	ds_load_u8 v159, v67 offset:656
	ds_load_u8 v160, v67 offset:688
	ds_load_u8 v161, v67 offset:672
	ds_load_u8 v162, v67 offset:640
	ds_load_u8 v163, v67 offset:592
	ds_load_u8 v164, v67 offset:624
	ds_load_u8 v165, v67 offset:608
	ds_load_u8 v166, v67 offset:576
	ds_load_u8 v167, v67 offset:528
	ds_load_u8 v168, v67 offset:560
	ds_load_u8 v169, v67 offset:544
	ds_load_u8 v170, v67 offset:512
	ds_load_u8 v171, v67 offset:976
	ds_load_u8 v68, v68
	ds_load_u8 v172, v67 offset:992
	ds_load_u8 v173, v67 offset:960
	ds_load_u8 v174, v67 offset:912
	ds_load_u8 v175, v67 offset:944
	ds_load_u8 v176, v67 offset:928
	ds_load_u8 v177, v67 offset:896
	ds_load_u8 v178, v67 offset:848
	ds_load_u8 v179, v67 offset:880
	ds_load_u8 v180, v67 offset:864
	ds_load_u8 v181, v67 offset:832
	ds_load_u8 v182, v67 offset:784
	ds_load_u8 v183, v67 offset:816
	ds_load_u8 v184, v67 offset:800
	ds_load_u8 v67, v67 offset:768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[111:114], v79
	ds_load_b128 v[115:118], v80
	ds_load_b128 v[119:122], v81
	ds_load_b128 v[123:126], v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v69, v72, v69, 0xc0c0004
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v71, v129, v73, 0xc0c0004
	v_perm_b32 v72, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v73, v133, v130, 0xc0c0004
	v_perm_b32 v74, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v79, v134, v135, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v80, v136, v137, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v81, v141, v138, 0xc0c0004
	v_perm_b32 v82, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v131, v146, v142, 0xc0c0004
	v_perm_b32 v132, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v135, v150, v147, 0xc0c0004
	v_perm_b32 v136, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v137, v154, v151, 0xc0c0004
	v_perm_b32 v138, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v139, v158, v155, 0xc0c0004
	v_perm_b32 v140, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v141, v162, v159, 0xc0c0004
	v_perm_b32 v142, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v148, v173, v171, 0xc0c0004
	v_perm_b32 v68, v172, v68, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v67, v182, 0xc0c0004
	v_perm_b32 v153, v184, v183, 0xc0c0004
	v_lshl_or_b32 v130, v70, 16, v69
	v_lshl_or_b32 v129, v72, 16, v71
	v_lshl_or_b32 v128, v74, 16, v73
	v_lshl_or_b32 v127, v80, 16, v79
	v_perm_b32 v144, v166, v163, 0xc0c0004
	v_perm_b32 v145, v165, v164, 0xc0c0004
	v_perm_b32 v146, v170, v167, 0xc0c0004
	v_perm_b32 v147, v169, v168, 0xc0c0004
	v_lshl_or_b32 v134, v82, 16, v81
	v_lshl_or_b32 v133, v132, 16, v131
	v_lshl_or_b32 v132, v136, 16, v135
	v_lshl_or_b32 v131, v138, 16, v137
	v_lshl_or_b32 v138, v140, 16, v139
	v_lshl_or_b32 v137, v142, 16, v141
	v_lshl_or_b32 v142, v68, 16, v148
	v_lshl_or_b32 v139, v153, 16, v67
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[127:130], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v149, v177, v174, 0xc0c0004
	v_perm_b32 v150, v176, v175, 0xc0c0004
	v_perm_b32 v151, v181, v178, 0xc0c0004
	v_perm_b32 v152, v180, v179, 0xc0c0004
	v_lshl_or_b32 v136, v145, 16, v144
	v_lshl_or_b32 v135, v147, 16, v146
	v_wmma_i32_16x16x16_iu8 v[67:74], v[83:86], v[131:134], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v141, v150, 16, v149
	v_lshl_or_b32 v140, v152, 16, v151
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[111:114], v[127:130], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[67:74], v[87:90], v[135:138], v[67:74] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s19, s49, 1
	s_mov_b32 s16, s45
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[115:118], v[131:134], v[75:82] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s19, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[67:74], v[91:94], v[139:142], v[67:74] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s49, s19, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[75:82], v[119:122], v[135:138], v[75:82] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s19, s49, 13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v116, v69
	v_cvt_f32_i32_e32 v120, v71
	v_cvt_f32_i32_e32 v115, v70
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[75:82], v[123:126], v[139:142], v[75:82] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s45, s19, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v111, v68
	v_cvt_f32_i32_e32 v119, v72
	v_cvt_f32_i32_e32 v123, v74
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v125, v82
	v_cvt_f32_i32_e32 v114, v75
	v_cvt_f32_i32_e32 v117, v78
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v124, v73
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s18, s49, 10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v113, v76
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s18, s18, 0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v118, v77
	v_cvt_f32_i32_e32 v121, v80
	v_cvt_f32_i32_e32 v122, v79
	v_cvt_f32_i32_e32 v126, v81
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v112, v67
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s17, 1
	s_mov_b32 s15, s46
	s_mov_b32 s14, s44
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s46, s18, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s48
	s_mov_b32 s17, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v83, 16, v187
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(16)
	v_perm_b32 v76, v107, v103, 0x5010400
	v_perm_b32 v77, v107, v103, 0x7030602
	v_perm_b32 v78, v108, v104, 0x5010400
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v87, 16, v190
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v79, v108, v104, 0x7030602
	v_perm_b32 v80, v109, v105, 0x5010400
	v_perm_b32 v81, v109, v105, 0x7030602
	v_perm_b32 v82, v110, v106, 0x5010400
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v152, v83, v87
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v84, v110, v106, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v90, 16, v193
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v70, v100, v96, 0x5010400
	v_perm_b32 v71, v100, v96, 0x7030602
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v20, v152, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v68, v99, v95, 0x5010400
	v_perm_b32 v69, v99, v95, 0x7030602
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v100, 16, v201
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v203, s45, v50
	v_perm_b32 v72, v101, v97, 0x5010400
	v_perm_b32 v73, v101, v97, 0x7030602
	v_perm_b32 v74, v102, v98, 0x5010400
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v100, v83, v100
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v96, 16, v199
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v75, v102, v98, 0x7030602
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v95, 16, v198
	v_lshlrev_b32_e32 v97, 16, v200
	v_lshlrev_b32_e32 v98, 16, v185
	v_lshlrev_b32_e32 v99, 16, v186
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v15, v100, v125
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v159, v83, v96 :: v_dual_lshlrev_b32 v88, 16, v191
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v161, v83, v98 :: v_dual_add_nc_u32 v202, s18, v49
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v91, 16, v194
	v_lshlrev_b32_e32 v92, 16, v195
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v94, 16, v197
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v101, 8, v68
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v160, v83, v95 :: v_dual_lshlrev_b32 v85, 16, v188
	v_dual_mul_f32 v162, v83, v97 :: v_dual_lshlrev_b32 v89, 16, v192
	v_mul_f32_e32 v99, v83, v99
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v93, 16, v196
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v23, v159, v117
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v151, v83, v88 :: v_dual_lshlrev_b32 v86, 16, v189
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v102, 24, v68
	v_lshrrev_b32_e32 v103, 8, v69
	v_lshrrev_b32_e32 v104, 24, v69
	v_lshrrev_b32_e32 v105, 8, v70
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b32 v202, v143 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v67.l, 0xff, v68.l
	v_lshrrev_b32_e32 v106, 24, v70
	v_lshrrev_b32_e32 v107, 8, v71
	v_lshrrev_b32_e32 v108, 24, v71
	v_lshrrev_b32_e32 v109, 8, v72
	v_lshrrev_b32_e32 v110, 24, v72
	v_lshrrev_b32_e32 v127, 8, v73
	v_lshrrev_b32_e32 v128, 24, v73
	v_lshrrev_b32_e32 v129, 8, v74
	v_lshrrev_b32_e32 v130, 24, v74
	v_lshrrev_b32_e32 v131, 8, v75
	v_lshrrev_b32_e32 v132, 24, v75
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v133, 8, v76
	v_lshrrev_b32_e32 v134, 24, v76
	v_lshrrev_b32_e32 v135, 8, v77
	v_lshrrev_b32_e32 v136, 24, v77
	v_lshrrev_b32_e32 v137, 8, v78
	v_lshrrev_b32_e32 v138, 24, v78
	v_lshrrev_b32_e32 v139, 8, v79
	v_lshrrev_b32_e32 v140, 24, v79
	v_lshrrev_b32_e32 v141, 8, v80
	v_lshrrev_b32_e32 v142, 24, v80
	v_lshrrev_b32_e32 v143, 8, v81
	v_lshrrev_b32_e32 v144, 24, v81
	v_lshrrev_b32_e32 v145, 8, v82
	v_lshrrev_b32_e32 v146, 24, v82
	v_lshrrev_b32_e32 v147, 8, v84
	v_lshrrev_b32_e32 v148, 24, v84
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v153, v83, v90
	v_mul_f32_e32 v156, v83, v91
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v157, v83, v94
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v21, v151, v115
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v149, v83, v86
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v22, v160, v118
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v150, v83, v85
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v18, v162, v122
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v154, v83, v89
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v19, v161, v121
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v155, v83, v92
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v14, v99, v126
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v158, v83, v93
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v83.l, 8, v101.l
	v_and_b16 v67.h, 0xff, v68.h
	v_lshlrev_b16 v83.h, 8, v102.l
	v_and_b16 v68.l, 0xff, v69.l
	v_and_b16 v69.l, 0xff, v70.l
	v_and_b16 v70.l, 0xff, v71.l
	v_and_b16 v71.l, 0xff, v72.l
	v_and_b16 v72.l, 0xff, v73.l
	v_and_b16 v73.l, 0xff, v74.l
	v_and_b16 v74.l, 0xff, v75.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v75.l, 0xff, v76.l
	v_and_b16 v76.l, 0xff, v77.l
	v_and_b16 v77.l, 0xff, v78.l
	v_and_b16 v78.l, 0xff, v79.l
	v_and_b16 v79.l, 0xff, v80.l
	v_and_b16 v80.l, 0xff, v81.l
	v_and_b16 v81.l, 0xff, v82.l
	v_and_b16 v82.l, 0xff, v84.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v84.l, 8, v103.l
	v_and_b16 v68.h, 0xff, v69.h
	v_and_b16 v69.h, 0xff, v70.h
	v_and_b16 v70.h, 0xff, v71.h
	v_and_b16 v71.h, 0xff, v72.h
	v_and_b16 v72.h, 0xff, v73.h
	v_and_b16 v73.h, 0xff, v74.h
	v_and_b16 v74.h, 0xff, v75.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v75.h, 0xff, v76.h
	v_and_b16 v76.h, 0xff, v77.h
	v_and_b16 v77.h, 0xff, v78.h
	v_and_b16 v78.h, 0xff, v79.h
	v_and_b16 v79.h, 0xff, v80.h
	v_and_b16 v80.h, 0xff, v81.h
	v_and_b16 v81.h, 0xff, v82.h
	v_and_b16 v82.h, 0xff, v84.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v84.h, 8, v104.l
	v_lshlrev_b16 v85.l, 8, v105.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v13, v156, v124 :: v_dual_add_nc_u32 v204, s45, v51
	v_dual_fmac_f32 v12, v155, v123 :: v_dual_add_nc_u32 v205, s45, v52
	v_dual_fmac_f32 v25, v149, v111 :: v_dual_add_nc_u32 v206, s45, v53
	v_dual_fmac_f32 v24, v150, v112 :: v_dual_add_nc_u32 v207, s45, v54
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v11, v158, v114 :: v_dual_add_nc_u32 v208, s45, v55
	v_dual_fmac_f32 v26, v157, v113 :: v_dual_add_nc_u32 v209, s45, v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v85.h, 8, v106.l
	v_lshlrev_b16 v86.l, 8, v107.l
	v_lshlrev_b16 v86.h, 8, v108.l
	v_lshlrev_b16 v87.l, 8, v109.l
	v_lshlrev_b16 v87.h, 8, v110.l
	v_lshlrev_b16 v88.l, 8, v127.l
	v_lshlrev_b16 v88.h, 8, v128.l
	v_lshlrev_b16 v89.l, 8, v129.l
	v_lshlrev_b16 v89.h, 8, v130.l
	v_lshlrev_b16 v90.l, 8, v131.l
	v_lshlrev_b16 v90.h, 8, v132.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v91.l, 8, v133.l
	v_lshlrev_b16 v91.h, 8, v134.l
	v_lshlrev_b16 v92.l, 8, v135.l
	v_lshlrev_b16 v92.h, 8, v136.l
	v_lshlrev_b16 v93.l, 8, v137.l
	v_lshlrev_b16 v93.h, 8, v138.l
	v_lshlrev_b16 v94.l, 8, v139.l
	v_lshlrev_b16 v94.h, 8, v140.l
	v_lshlrev_b16 v95.l, 8, v141.l
	v_lshlrev_b16 v95.h, 8, v142.l
	v_lshlrev_b16 v96.l, 8, v143.l
	v_lshlrev_b16 v96.h, 8, v144.l
	v_lshlrev_b16 v97.l, 8, v145.l
	v_lshlrev_b16 v97.h, 8, v146.l
	v_lshlrev_b16 v98.l, 8, v147.l
	v_lshlrev_b16 v98.h, 8, v148.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v16, v154, v120 :: v_dual_fmac_f32 v17, v153, v119
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v67.l, v67.l, v83.l
	v_or_b16 v67.h, v67.h, v83.h
	v_or_b16 v68.l, v68.l, v84.l
	v_or_b16 v68.h, v68.h, v84.h
	v_or_b16 v69.l, v69.l, v85.l
	v_or_b16 v69.h, v69.h, v85.h
	v_or_b16 v70.l, v70.l, v86.l
	v_or_b16 v70.h, v70.h, v86.h
	v_or_b16 v71.l, v71.l, v87.l
	v_or_b16 v71.h, v71.h, v87.h
	v_or_b16 v72.l, v72.l, v88.l
	v_or_b16 v72.h, v72.h, v88.h
	v_or_b16 v73.l, v73.l, v89.l
	v_or_b16 v73.h, v73.h, v89.h
	v_or_b16 v74.l, v74.l, v90.l
	v_or_b16 v74.h, v74.h, v90.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v75.l, v75.l, v91.l
	v_or_b16 v75.h, v75.h, v91.h
	v_or_b16 v76.l, v76.l, v92.l
	v_or_b16 v76.h, v76.h, v92.h
	v_or_b16 v77.l, v77.l, v93.l
	v_or_b16 v77.h, v77.h, v93.h
	v_or_b16 v78.l, v78.l, v94.l
	v_or_b16 v78.h, v78.h, v94.h
	v_or_b16 v79.l, v79.l, v95.l
	v_or_b16 v79.h, v79.h, v95.h
	v_or_b16 v80.l, v80.l, v96.l
	v_or_b16 v80.h, v80.h, v96.h
	v_or_b16 v81.l, v81.l, v97.l
	v_or_b16 v81.h, v81.h, v97.h
	v_or_b16 v82.l, v82.l, v98.l
	v_or_b16 v82.h, v82.h, v98.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v203, v67
	ds_store_b16_d16_hi v203, v67 offset:64
	ds_store_b16 v204, v68
	ds_store_b16_d16_hi v204, v68 offset:64
	ds_store_b16 v205, v69
	ds_store_b16_d16_hi v205, v69 offset:64
	ds_store_b16 v206, v70
	ds_store_b16_d16_hi v206, v70 offset:64
	ds_store_b16 v207, v71
	ds_store_b16_d16_hi v207, v71 offset:64
	ds_store_b16 v203, v72 offset:640
	ds_store_b16_d16_hi v203, v72 offset:704
	ds_store_b16 v208, v73
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v203, v75 offset:16384
	ds_store_b16_d16_hi v203, v75 offset:16448
	ds_store_b16 v204, v76 offset:16384
	ds_store_b16_d16_hi v204, v76 offset:16448
	ds_store_b16 v205, v77 offset:16384
	ds_store_b16_d16_hi v205, v77 offset:16448
	ds_store_b16 v206, v78 offset:16384
	ds_store_b16_d16_hi v206, v78 offset:16448
	ds_store_b16 v207, v79 offset:16384
	ds_store_b16_d16_hi v207, v79 offset:16448
	ds_store_b16 v203, v80 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v208, v73 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v203, v80 offset:17088
	ds_store_b16 v208, v81 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v209, v74
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v208, v81 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v209, v74 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v209, v82 offset:16384
	ds_store_b16_d16_hi v209, v82 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v62, v58 :: v_dual_mov_b32 v1, v59
	v_dual_mov_b32 v63, v60 :: v_dual_mov_b32 v64, v61
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s15, 0, 0x8000
	s_add_i32 s46, 0, 0x8400
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v7, 0 :: v_dual_add_nc_u32 v2, s15, v36
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v63
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v94, v2
	ds_load_u8_d16 v97, v2 offset:16
	ds_load_u8_d16 v91, v2 offset:32
	ds_load_u8_d16 v95, v2 offset:48
	ds_load_u8_d16 v107, v2 offset:64
	ds_load_u8_d16 v109, v2 offset:80
	ds_load_u8_d16 v106, v2 offset:96
	ds_load_u8_d16 v108, v2 offset:112
	ds_load_u8_d16 v115, v2 offset:128
	ds_load_u8_d16 v117, v2 offset:144
	ds_load_u8_d16 v114, v2 offset:160
	ds_load_u8_d16 v116, v2 offset:176
	ds_load_u8_d16 v119, v2 offset:192
	ds_load_u8_d16 v121, v2 offset:208
	ds_load_u8_d16 v118, v2 offset:224
	ds_load_u8_d16 v120, v2 offset:240
	ds_load_u8_d16 v59, v2 offset:256
	ds_load_u8_d16 v61, v2 offset:272
	ds_load_u8_d16 v58, v2 offset:288
	ds_load_u8_d16 v60, v2 offset:304
	ds_load_u8_d16 v71, v2 offset:320
	ds_load_u8_d16 v73, v2 offset:336
	ds_load_u8_d16 v67, v2 offset:352
	ds_load_u8_d16 v72, v2 offset:368
	ds_load_u8_d16 v83, v2 offset:384
	ds_load_u8_d16 v85, v2 offset:400
	ds_load_u8_d16 v82, v2 offset:416
	ds_load_u8_d16 v84, v2 offset:432
	ds_load_u8_d16 v99, v2 offset:448
	ds_load_u8_d16 v101, v2 offset:464
	ds_load_u8_d16 v98, v2 offset:480
	ds_load_u8_d16 v100, v2 offset:496
	ds_load_u8_d16 v75, v2 offset:512
	ds_load_u8_d16 v77, v2 offset:528
	ds_load_u8_d16 v74, v2 offset:544
	ds_load_u8_d16 v76, v2 offset:560
	ds_load_u8_d16 v87, v2 offset:576
	ds_load_u8_d16 v89, v2 offset:592
	ds_load_u8_d16 v86, v2 offset:608
	ds_load_u8_d16 v88, v2 offset:624
	ds_load_u8_d16 v103, v2 offset:640
	ds_load_u8_d16 v105, v2 offset:656
	ds_load_u8_d16 v102, v2 offset:672
	ds_load_u8_d16 v104, v2 offset:688
	ds_load_u8_d16 v111, v2 offset:704
	ds_load_u8_d16 v113, v2 offset:720
	ds_load_u8_d16 v110, v2 offset:736
	ds_load_u8_d16 v112, v2 offset:752
	v_mov_b32_e32 v8, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v64
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, 0
	v_cndmask_b32_e64 v4, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v3, v3, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v4, s15, v62
	ds_load_u8_d16 v79, v2 offset:896
	ds_load_u8_d16 v81, v2 offset:912
	ds_load_u8_d16 v78, v2 offset:928
	ds_load_u8_d16 v80, v2 offset:944
	ds_load_u8_d16 v92, v2 offset:960
	ds_load_u8_d16 v96, v2 offset:976
	ds_load_u8_d16 v90, v2 offset:992
	ds_load_u8_d16 v93, v4
	v_mov_b32_e32 v4, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v3, v3, v57
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v54, v2 offset:768
	ds_load_u8_d16 v56, v2 offset:784
	ds_load_u8_d16 v53, v2 offset:800
	ds_load_u8_d16 v55, v2 offset:816
	ds_load_u8_d16 v63, v2 offset:832
	ds_load_u8_d16 v66, v2 offset:848
	ds_load_u8_d16 v57, v2 offset:864
	ds_load_u8_d16 v64, v2 offset:880
	v_mov_b32_e32 v2, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v65, v3, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v1, 0, 1, s2
	v_mov_b32_e32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v68, 16, v65
	v_xor_b32_e32 v69, 32, v65
	v_xor_b32_e32 v70, 48, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v1
	v_mov_b32_e32 v1, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v1, s16, v70
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v52, v94, v97, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v123, v91, v95, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v5, s16, v69
	v_add_nc_u32_e32 v6, s16, v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v125, v122 :: v_dual_add_nc_u32 v8, s16, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v138, v123, 16, v52
	v_mov_b32_e32 v123, v122
	v_mov_b32_e32 v124, v122
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v1
	ds_load_b128 v[46:49], v5
	ds_load_b128 v[130:133], v6
	ds_load_b128 v[134:137], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v5, v119, v121, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v6, v118, v120, 0xc0c0004
	v_perm_b32 v8, v115, v117, 0xc0c0004
	v_perm_b32 v9, v114, v116, 0xc0c0004
	v_perm_b32 v50, v107, v109, 0xc0c0004
	v_perm_b32 v51, v106, v108, 0xc0c0004
	v_lshl_or_b32 v141, v6, 16, v5
	v_mov_b32_e32 v126, v122
	v_lshl_or_b32 v140, v9, 16, v8
	v_mov_b32_e32 v127, v122
	v_lshl_or_b32 v139, v51, 16, v50
	v_mov_b32_e32 v128, v122
	v_mov_b32_e32 v129, v122
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v5, v99, v101, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v6, v98, v100, 0xc0c0004
	v_perm_b32 v8, v83, v85, 0xc0c0004
	v_perm_b32 v9, v82, v84, 0xc0c0004
	v_perm_b32 v50, v71, v73, 0xc0c0004
	v_perm_b32 v51, v67, v72, 0xc0c0004
	v_perm_b32 v52, v59, v61, 0xc0c0004
	v_perm_b32 v142, v58, v60, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[134:137], v[138:141], v[122:129] neg_lo:[1,1,0]
	v_lshl_or_b32 v137, v6, 16, v5
	v_lshl_or_b32 v136, v9, 16, v8
	v_lshl_or_b32 v135, v51, 16, v50
	v_lshl_or_b32 v134, v142, 16, v52
	v_perm_b32 v5, v111, v113, 0xc0c0004
	v_perm_b32 v6, v110, v112, 0xc0c0004
	v_perm_b32 v8, v103, v105, 0xc0c0004
	v_perm_b32 v9, v102, v104, 0xc0c0004
	v_perm_b32 v50, v87, v89, 0xc0c0004
	v_perm_b32 v51, v86, v88, 0xc0c0004
	v_perm_b32 v52, v75, v77, 0xc0c0004
	v_perm_b32 v138, v74, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[122:129], v[130:133], v[134:137], v[122:129] neg_lo:[1,1,0]
	v_lshl_or_b32 v133, v6, 16, v5
	v_lshl_or_b32 v132, v9, 16, v8
	v_lshl_or_b32 v131, v51, 16, v50
	v_lshl_or_b32 v130, v138, 16, v52
	v_perm_b32 v5, v92, v96, 0xc0c0004
	v_perm_b32 v6, v90, v93, 0xc0c0004
	v_perm_b32 v8, v79, v81, 0xc0c0004
	v_perm_b32 v9, v78, v80, 0xc0c0004
	v_perm_b32 v50, v63, v66, 0xc0c0004
	v_perm_b32 v51, v57, v64, 0xc0c0004
	v_perm_b32 v52, v54, v56, 0xc0c0004
	v_perm_b32 v134, v53, v55, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[122:129], v[46:49], v[130:133], v[122:129] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v6, 16, v5
	v_lshl_or_b32 v48, v9, 16, v8
	v_lshl_or_b32 v47, v51, 16, v50
	v_lshl_or_b32 v46, v134, 16, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[1:4], v[46:49], v[122:129] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v6, v125
	v_cvt_f32_i32_e32 v1, v126
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v127
	v_cvt_f32_i32_e32 v3, v128
	v_cvt_f32_i32_e32 v4, v129
	v_cvt_f32_i32_e32 v8, v122
	v_cvt_f32_i32_e32 v9, v123
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v48, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v7, s14, v70
	v_add_nc_u32_e32 v50, s14, v69
	v_add_nc_u32_e32 v51, s14, v68
	v_add_nc_u32_e32 v52, s14, v65
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v107, v107, v109, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[46:49], v7
	ds_load_b128 v[122:125], v50
	ds_load_b128 v[126:129], v51
	ds_load_b128 v[130:133], v52
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v7, v119, v121, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v50, v118, v120, 0xc0c0004
	v_perm_b32 v51, v115, v117, 0xc0c0004
	v_perm_b32 v52, v114, v116, 0xc0c0004
	v_perm_b32 v106, v106, v108, 0xc0c0004
	v_perm_b32 v94, v94, v97, 0xc0c0004
	v_perm_b32 v91, v91, v95, 0xc0c0004
	v_mov_b32_e32 v114, 0
	v_lshl_or_b32 v109, v50, 16, v7
	v_lshl_or_b32 v108, v52, 16, v51
	v_lshl_or_b32 v107, v106, 16, v107
	v_lshl_or_b32 v106, v91, 16, v94
	v_mov_b32_e32 v115, v114
	v_mov_b32_e32 v116, v114
	v_mov_b32_e32 v117, v114
	v_mov_b32_e32 v118, v114
	v_mov_b32_e32 v119, v114
	v_mov_b32_e32 v120, v114
	v_mov_b32_e32 v121, v114
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v7, v99, v101, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v50, v98, v100, 0xc0c0004
	v_perm_b32 v51, v83, v85, 0xc0c0004
	v_perm_b32 v52, v82, v84, 0xc0c0004
	v_perm_b32 v71, v71, v73, 0xc0c0004
	v_perm_b32 v67, v67, v72, 0xc0c0004
	v_perm_b32 v72, v59, v61, 0xc0c0004
	v_perm_b32 v58, v58, v60, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[130:133], v[106:109], v[114:121] neg_lo:[1,1,0]
	v_lshl_or_b32 v61, v50, 16, v7
	v_lshl_or_b32 v60, v52, 16, v51
	v_lshl_or_b32 v59, v67, 16, v71
	v_lshl_or_b32 v58, v58, 16, v72
	v_perm_b32 v7, v111, v113, 0xc0c0004
	v_perm_b32 v50, v110, v112, 0xc0c0004
	v_perm_b32 v51, v103, v105, 0xc0c0004
	v_perm_b32 v52, v102, v104, 0xc0c0004
	v_perm_b32 v67, v87, v89, 0xc0c0004
	v_perm_b32 v71, v86, v88, 0xc0c0004
	v_perm_b32 v72, v75, v77, 0xc0c0004
	v_perm_b32 v73, v74, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[114:121], v[126:129], v[58:61], v[114:121] neg_lo:[1,1,0]
	v_lshl_or_b32 v61, v50, 16, v7
	v_lshl_or_b32 v60, v52, 16, v51
	v_lshl_or_b32 v59, v71, 16, v67
	v_lshl_or_b32 v58, v73, 16, v72
	v_perm_b32 v7, v92, v96, 0xc0c0004
	v_perm_b32 v50, v90, v93, 0xc0c0004
	v_perm_b32 v51, v79, v81, 0xc0c0004
	v_perm_b32 v52, v78, v80, 0xc0c0004
	v_perm_b32 v63, v63, v66, 0xc0c0004
	v_perm_b32 v57, v57, v64, 0xc0c0004
	v_perm_b32 v54, v54, v56, 0xc0c0004
	v_perm_b32 v55, v53, v55, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[114:121], v[122:125], v[58:61], v[114:121] neg_lo:[1,1,0]
	v_lshl_or_b32 v53, v50, 16, v7
	v_lshl_or_b32 v52, v52, 16, v51
	v_lshl_or_b32 v51, v57, 16, v63
	v_lshl_or_b32 v50, v55, 16, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[46:49], v[50:53], v[114:121] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v50, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v51, v117
	v_cvt_f32_i32_e32 v46, v118
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v47, v119
	v_cvt_f32_i32_e32 v48, v120
	v_cvt_f32_i32_e32 v49, v121
	v_cvt_f32_i32_e32 v7, v114
	v_cvt_f32_i32_e32 v52, v115
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s6, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s6, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s6, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v36, s46, v36
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(5)
	v_add_lshl_u32 v53, v45, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s7, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v54, v43, s0, 1
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v55, v44, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v56, v42, s0, 1
	s_waitcnt lgkmcnt(1)
	v_add_lshl_u32 v57, v40, s0, 1
	v_add_lshl_u32 v58, v39, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v77, v53, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v53, 0x80000000, v54 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_cndmask_b32_e32 v54, 0x80000000, v55, vcc_lo
	v_add_lshl_u32 v55, v41, s0, 1
	v_add_lshl_u32 v59, v38, s0, 1
	v_add_lshl_u32 v60, v37, s0, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s0, s33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v61, s0, v35, 1
	v_add_lshl_u32 v63, s0, v34, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v64, s0, v33, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	s_clause 0x7
	buffer_load_u16 v79, v53, s[4:7], 0 offen
	buffer_load_u16 v78, v54, s[4:7], 0 offen
	buffer_load_u16 v74, v56, s[4:7], 0 offen
	buffer_load_u16 v73, v55, s[4:7], 0 offen
	buffer_load_u16 v67, v57, s[4:7], 0 offen
	buffer_load_u16 v66, v58, s[4:7], 0 offen
	buffer_load_u16 v54, v59, s[4:7], 0 offen
	buffer_load_u16 v53, v60, s[4:7], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v58, s0, v31, 1
	v_add_lshl_u32 v59, s0, v29, 1
	v_dual_cndmask_b32 v55, 0x80000000, v61 :: v_dual_cndmask_b32 v56, 0x80000000, v63
	v_add_lshl_u32 v60, s0, v32, 1
	v_add_lshl_u32 v61, s0, v30, 1
	v_add_lshl_u32 v63, s0, v28, 1
	v_dual_cndmask_b32 v57, 0x80000000, v64 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_mov_b32 v64, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	s_clause 0x7
	buffer_load_u16 v88, v55, s[4:7], 0 offen
	buffer_load_u16 v87, v56, s[4:7], 0 offen
	buffer_load_u16 v76, v57, s[4:7], 0 offen
	buffer_load_u16 v75, v58, s[4:7], 0 offen
	buffer_load_u16 v72, v59, s[4:7], 0 offen
	buffer_load_u16 v71, v60, s[4:7], 0 offen
	buffer_load_u16 v56, v61, s[4:7], 0 offen
	buffer_load_u16 v55, v63, s[4:7], 0 offen
	v_mov_b32_e32 v63, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v134, v36
	ds_load_u8_d16 v136, v36 offset:16
	ds_load_u8_d16 v133, v36 offset:32
	ds_load_u8_d16 v135, v36 offset:48
	ds_load_u8_d16 v142, v36 offset:64
	ds_load_u8_d16 v144, v36 offset:80
	ds_load_u8_d16 v141, v36 offset:96
	ds_load_u8_d16 v143, v36 offset:112
	ds_load_u8_d16 v146, v36 offset:128
	ds_load_u8_d16 v148, v36 offset:144
	ds_load_u8_d16 v145, v36 offset:160
	ds_load_u8_d16 v147, v36 offset:176
	ds_load_u8_d16 v150, v36 offset:192
	ds_load_u8_d16 v152, v36 offset:208
	ds_load_u8_d16 v149, v36 offset:224
	ds_load_u8_d16 v151, v36 offset:240
	ds_load_u8_d16 v115, v36 offset:256
	ds_load_u8_d16 v119, v36 offset:272
	ds_load_u8_d16 v113, v36 offset:288
	ds_load_u8_d16 v116, v36 offset:304
	ds_load_u8_d16 v123, v36 offset:320
	ds_load_u8_d16 v127, v36 offset:336
	ds_load_u8_d16 v121, v36 offset:352
	ds_load_u8_d16 v124, v36 offset:368
	ds_load_u8_d16 v130, v36 offset:384
	ds_load_u8_d16 v132, v36 offset:400
	ds_load_u8_d16 v129, v36 offset:416
	ds_load_u8_d16 v131, v36 offset:432
	ds_load_u8_d16 v138, v36 offset:448
	ds_load_u8_d16 v140, v36 offset:464
	ds_load_u8_d16 v137, v36 offset:480
	ds_load_u8_d16 v139, v36 offset:496
	ds_load_u8_d16 v98, v36 offset:512
	ds_load_u8_d16 v100, v36 offset:528
	ds_load_u8_d16 v97, v36 offset:544
	ds_load_u8_d16 v99, v36 offset:560
	ds_load_u8_d16 v106, v36 offset:576
	ds_load_u8_d16 v108, v36 offset:592
	ds_load_u8_d16 v105, v36 offset:608
	ds_load_u8_d16 v107, v36 offset:624
	ds_load_u8_d16 v117, v36 offset:640
	ds_load_u8_d16 v120, v36 offset:656
	ds_load_u8_d16 v114, v36 offset:672
	ds_load_u8_d16 v118, v36 offset:688
	ds_load_u8_d16 v125, v36 offset:704
	ds_load_u8_d16 v128, v36 offset:720
	ds_load_u8_d16 v122, v36 offset:736
	ds_load_u8_d16 v126, v36 offset:752
	ds_load_u8_d16 v90, v36 offset:768
	ds_load_u8_d16 v92, v36 offset:784
	ds_load_u8_d16 v89, v36 offset:800
	ds_load_u8_d16 v91, v36 offset:816
	ds_load_u8_d16 v94, v36 offset:832
	ds_load_u8_d16 v96, v36 offset:848
	ds_load_u8_d16 v93, v36 offset:864
	ds_load_u8_d16 v95, v36 offset:880
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v57, s46, v62
	ds_load_u8_d16 v102, v36 offset:896
	ds_load_u8_d16 v104, v36 offset:912
	ds_load_u8_d16 v101, v36 offset:928
	ds_load_u8_d16 v103, v36 offset:944
	ds_load_u8_d16 v110, v36 offset:960
	ds_load_u8_d16 v112, v36 offset:976
	ds_load_u8_d16 v109, v36 offset:992
	ds_load_u8_d16 v111, v57
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v57, 0, 1, s3
	v_mov_b32_e32 v36, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_mov_b32_e32 v61, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v57
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v80, s45, v68
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v57, s45, v70
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v86, v146, v148, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v154, v145, v147, 0xc0c0004
	v_perm_b32 v155, v142, v144, 0xc0c0004
	v_perm_b32 v156, v141, v143, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v61, s45, v69
	v_add_nc_u32_e32 v84, s45, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v167, v154, 16, v86
	v_mov_b32_e32 v154, v153
	v_lshl_or_b32 v166, v156, 16, v155
	v_mov_b32_e32 v155, v153
	v_mov_b32_e32 v156, v153
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	ds_load_b128 v[80:83], v80
	ds_load_b128 v[161:164], v84
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v84, v150, v152, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v85, v149, v151, 0xc0c0004
	v_perm_b32 v157, v134, v136, 0xc0c0004
	v_perm_b32 v158, v133, v135, 0xc0c0004
	v_mov_b32_e32 v159, v153
	v_mov_b32_e32 v160, v153
	v_lshl_or_b32 v168, v85, 16, v84
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v84, v138, v140, 0xc0c0004
	v_lshl_or_b32 v165, v158, 16, v157
	v_mov_b32_e32 v157, v153
	v_mov_b32_e32 v158, v153
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v85, v137, v139, 0xc0c0004
	v_perm_b32 v86, v130, v132, 0xc0c0004
	v_perm_b32 v169, v129, v131, 0xc0c0004
	v_perm_b32 v170, v123, v127, 0xc0c0004
	v_perm_b32 v171, v121, v124, 0xc0c0004
	v_perm_b32 v172, v115, v119, 0xc0c0004
	v_perm_b32 v173, v113, v116, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[161:164], v[165:168], v[153:160] neg_lo:[1,1,0]
	v_lshl_or_b32 v164, v85, 16, v84
	v_lshl_or_b32 v163, v169, 16, v86
	v_lshl_or_b32 v162, v171, 16, v170
	v_lshl_or_b32 v161, v173, 16, v172
	v_perm_b32 v84, v125, v128, 0xc0c0004
	v_perm_b32 v85, v122, v126, 0xc0c0004
	v_perm_b32 v86, v117, v120, 0xc0c0004
	v_perm_b32 v165, v114, v118, 0xc0c0004
	v_perm_b32 v166, v106, v108, 0xc0c0004
	v_perm_b32 v167, v105, v107, 0xc0c0004
	v_perm_b32 v168, v98, v100, 0xc0c0004
	v_perm_b32 v169, v97, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[153:160], v[80:83], v[161:164], v[153:160] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v85, 16, v84
	v_lshl_or_b32 v82, v165, 16, v86
	v_lshl_or_b32 v81, v167, 16, v166
	v_lshl_or_b32 v80, v169, 16, v168
	v_perm_b32 v84, v110, v112, 0xc0c0004
	v_perm_b32 v85, v109, v111, 0xc0c0004
	v_perm_b32 v86, v102, v104, 0xc0c0004
	v_perm_b32 v161, v101, v103, 0xc0c0004
	v_perm_b32 v162, v94, v96, 0xc0c0004
	v_perm_b32 v163, v93, v95, 0xc0c0004
	v_perm_b32 v164, v90, v92, 0xc0c0004
	v_perm_b32 v165, v89, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[153:160], v[61:64], v[80:83], v[153:160] neg_lo:[1,1,0]
	v_lshl_or_b32 v64, v85, 16, v84
	v_lshl_or_b32 v63, v161, 16, v86
	v_lshl_or_b32 v62, v163, 16, v162
	v_lshl_or_b32 v61, v165, 16, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[57:60], v[61:64], v[153:160] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v59, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v60, v156
	v_cvt_f32_i32_e32 v57, v157
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v58, v158
	v_cvt_f32_i32_e32 v61, v159
	v_cvt_f32_i32_e32 v62, v160
	v_cvt_f32_i32_e32 v63, v153
	v_cvt_f32_i32_e32 v64, v154
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_mov_b32_e32 v86, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v36, s44, v70
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v84, v141, v143, 0xc0c0004
	v_mov_b32_e32 v141, 0
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v69, s44, v69
	v_add_nc_u32_e32 v68, s44, v68
	v_add_nc_u32_e32 v65, s44, v65
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v70, v142, v144, 0xc0c0004
	v_mov_b32_e32 v142, v141
	v_mov_b32_e32 v143, v141
	v_mov_b32_e32 v144, v141
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[80:83], v36
	ds_load_b128 v[153:156], v69
	ds_load_b128 v[157:160], v68
	ds_load_b128 v[161:164], v65
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v36, v150, v152, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v65, v149, v151, 0xc0c0004
	v_perm_b32 v68, v146, v148, 0xc0c0004
	v_perm_b32 v69, v145, v147, 0xc0c0004
	v_perm_b32 v85, v134, v136, 0xc0c0004
	v_perm_b32 v86, v133, v135, 0xc0c0004
	v_lshl_or_b32 v136, v65, 16, v36
	v_lshl_or_b32 v134, v84, 16, v70
	v_lshl_or_b32 v135, v69, 16, v68
	v_mov_b32_e32 v145, v141
	v_lshl_or_b32 v133, v86, 16, v85
	v_mov_b32_e32 v146, v141
	v_mov_b32_e32 v147, v141
	v_mov_b32_e32 v148, v141
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v36, v138, v140, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v65, v137, v139, 0xc0c0004
	v_perm_b32 v68, v130, v132, 0xc0c0004
	v_perm_b32 v69, v129, v131, 0xc0c0004
	v_perm_b32 v70, v123, v127, 0xc0c0004
	v_perm_b32 v84, v121, v124, 0xc0c0004
	v_perm_b32 v85, v115, v119, 0xc0c0004
	v_perm_b32 v86, v113, v116, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[161:164], v[133:136], v[141:148] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v65, 16, v36
	v_lshl_or_b32 v131, v69, 16, v68
	v_lshl_or_b32 v130, v84, 16, v70
	v_lshl_or_b32 v129, v86, 16, v85
	v_perm_b32 v36, v125, v128, 0xc0c0004
	v_perm_b32 v65, v122, v126, 0xc0c0004
	v_perm_b32 v68, v117, v120, 0xc0c0004
	v_perm_b32 v69, v114, v118, 0xc0c0004
	v_perm_b32 v70, v106, v108, 0xc0c0004
	v_perm_b32 v84, v105, v107, 0xc0c0004
	v_perm_b32 v85, v98, v100, 0xc0c0004
	v_perm_b32 v86, v97, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[141:148], v[157:160], v[129:132], v[141:148] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v65, 16, v36
	v_lshl_or_b32 v99, v69, 16, v68
	v_lshl_or_b32 v98, v84, 16, v70
	v_lshl_or_b32 v97, v86, 16, v85
	v_perm_b32 v36, v110, v112, 0xc0c0004
	v_perm_b32 v65, v109, v111, 0xc0c0004
	v_perm_b32 v68, v102, v104, 0xc0c0004
	v_perm_b32 v69, v101, v103, 0xc0c0004
	v_perm_b32 v70, v94, v96, 0xc0c0004
	v_perm_b32 v84, v93, v95, 0xc0c0004
	v_perm_b32 v85, v90, v92, 0xc0c0004
	v_perm_b32 v86, v89, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[141:148], v[153:156], v[97:100], v[141:148] neg_lo:[1,1,0]
	v_lshl_or_b32 v92, v65, 16, v36
	v_lshl_or_b32 v91, v69, 16, v68
	v_lshl_or_b32 v90, v84, 16, v70
	v_lshl_or_b32 v89, v86, 16, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[80:83], v[89:92], v[141:148] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v36, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v80, v142
	v_cvt_f32_i32_e32 v83, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v84, v144
	v_cvt_f32_i32_e32 v81, v145
	v_cvt_f32_i32_e32 v82, v146
	v_cvt_f32_i32_e32 v85, v147
	v_cvt_f32_i32_e32 v86, v148
.LBB0_16:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s35, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s6, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s7, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s35, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v77.h, v53.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 6
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v53.h, v88.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v45, v45, s0, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s34
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v43, v43, s0, 1
	v_add_lshl_u32 v44, v44, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v42, v42, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v65, v41, s0, 1
	v_add_lshl_u32 v40, v40, s0, 1
	v_add_lshl_u32 v39, v39, s0, 1
	v_add_lshl_u32 v38, v38, s0, 1
	v_add_lshl_u32 v37, v37, s0, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s0, s33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v69, s0, v35, 1
	v_add_lshl_u32 v32, s0, v32, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v70, s0, v34, 1
	s_waitcnt lgkmcnt(13)
	v_add_lshl_u32 v89, s0, v33, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v41, v45, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v45, 0x80000000, v65 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v31, s0, v31, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v68, 0x80000000, v37
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v29, s0, v29, 1
	v_add_lshl_u32 v30, s0, v30, 1
	v_add_lshl_u32 v28, s0, v28, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v65, 0x80000000, v38 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	s_clause 0x7
	buffer_load_u16 v33, v43, s[4:7], 0 offen
	buffer_load_u16 v34, v44, s[4:7], 0 offen
	buffer_load_u16 v35, v42, s[4:7], 0 offen
	buffer_load_u16 v37, v45, s[4:7], 0 offen
	buffer_load_u16 v38, v40, s[4:7], 0 offen
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	buffer_load_u16 v40, v65, s[4:7], 0 offen
	buffer_load_u16 v42, v68, s[4:7], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v43, 0x80000000, v69 :: v_dual_cndmask_b32 v44, 0x80000000, v70
	v_dual_cndmask_b32 v45, 0x80000000, v89 :: v_dual_cndmask_b32 v30, 0x80000000, v30
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_and_b32 v0, 16, v0
	s_clause 0x7
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v65.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v65.h, v77.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(23)
	v_mov_b16_e32 v54.h, v87.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(17)
	v_mov_b16_e32 v55.h, v79.l
	v_mov_b16_e32 v56.h, v78.l
	v_mov_b16_e32 v77.l, v65.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v66.h, v76.l
	v_mov_b16_e32 v67.h, v75.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v68.h, v74.l
	v_mov_b16_e32 v69.h, v73.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v77, v65, v77
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v70.h, v72.l
	v_mov_b16_e32 v71.h, v71.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v72.h, v67.l
	v_mov_b16_e32 v73.h, v66.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v74.h, v56.l
	v_mov_b16_e32 v75.h, v55.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v76.h, v54.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v53.l, v65.l
	v_mov_b16_e32 v54.l, v65.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v55.l, v65.l
	v_mov_b16_e32 v56.l, v65.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v66.l, v65.l
	v_mov_b16_e32 v67.l, v65.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v68.l, v65.l
	v_mov_b16_e32 v69.l, v65.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v70.l, v65.l
	v_mov_b16_e32 v71.l, v65.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v72.l, v65.l
	v_mov_b16_e32 v73.l, v65.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v74.l, v65.l
	v_mov_b16_e32 v75.l, v65.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v76.l, v65.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v78, 0x5410 :: v_dual_mul_f32 v53, v65, v53
	v_dual_mov_b32 v79, 0x7632 :: v_dual_mul_f32 v54, v65, v54
	v_mov_b16_e32 v87.h, v65.l
	v_mov_b16_e32 v88.h, v65.l
	v_mov_b16_e32 v89.h, v65.l
	v_mov_b16_e32 v90.h, v65.l
	s_waitcnt lgkmcnt(12)
	v_mov_b16_e32 v91.h, v65.l
	v_mov_b16_e32 v92.h, v65.l
	s_waitcnt lgkmcnt(9)
	v_mov_b16_e32 v93.h, v65.l
	v_mov_b16_e32 v94.h, v65.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v56, v65, v56
	v_mul_f32_e32 v55, v65, v55
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v67, v65, v67
	v_mul_f32_e32 v66, v65, v66
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v69, v65, v69
	v_mul_f32_e32 v68, v65, v68
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v71, v65, v71
	v_mul_f32_e32 v70, v65, v70
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v73, v65, v73
	v_mul_f32_e32 v72, v65, v72
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v75, v65, v75
	v_mul_f32_e32 v74, v65, v74
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v7, v53, v7, v11
	v_fma_f32 v52, v54, v52, v26
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v27, v27, s27
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v11, v7, s2
	v_cndmask_b32_e64 v26, v26, v52, s2
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v77, v4, v12
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v49, v75, v49, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v12, v4, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v65, v65, v76 :: v_dual_lshlrev_b32 v12, 16, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v55, v8, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v49, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v32, v12, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v65, v3, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v24, v8, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v24, 16, v40
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v69, v6, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v13, v3, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v13, 16, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v56, v9, v25
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v24, v12, v24
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v29, v12, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v21, v6, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v21, 16, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v25, v9, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v25, 16, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v72, v1, v16
	v_fma_f32 v5, v68, v5, v20
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v33, 16, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v13, v12, v13 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v16, v1, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v16, 16, v34
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v51, v67, v51, v23
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v34, 16, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v73, v2, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v20, v5, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v20, 16, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v23, v51, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v23, 16, v39
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v46, v70, v46, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v17, v2, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v17, 16, v35
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v50, v66, v50, v22
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v16, v12, v16 :: v_dual_lshlrev_b32 v35, 16, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v46, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v20, v12, v20 :: v_dual_lshlrev_b32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v50, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v34, v12, v34
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v29, v29, v81, v18
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v33, v12, v33
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v48, v74, v48, v14
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v12, v17
	v_mul_f32_e32 v23, v12, v23
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v29, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v35, v12, v35
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v21, v12, v21
	v_mul_f32_e32 v25, v12, v25
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v31, v12, v31
	v_mul_f32_e32 v28, v12, v28
	v_mul_f32_e32 v12, v12, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v64, v9
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v30, v33, v36, v7
	v_fma_f32 v33, v34, v80, v26
	v_fma_f32 v34, v35, v83, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v14, v48, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v20, v60, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v16, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v47, v71, v47, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v22, v34, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v12, v12, v85, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v20, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v61, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v19, v47, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v14, v12, s3
	v_cndmask_b32_e64 v7, v7, v30, s3
	v_cndmask_b32_e64 v3, v3, v24, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v32, v32, v82, v19
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	v_mul_f32_e32 v24, 0xbfb8aa3b, v12
	v_mul_f32_e32 v14, 0xbfb8aa3b, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v17, v59, v5
	v_fma_f32 v23, v23, v58, v2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	v_mul_f32_e32 v22, 0xbfb8aa3b, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v57, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v17, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v16
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v31, v84, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v19, v32, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v63, v8
	v_fma_f32 v25, v25, v62, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v11, v31, s3
	v_cndmask_b32_e64 v2, v2, v23, s3
	v_cndmask_b32_e64 v1, v1, v21, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v23, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v24, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v11
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v28, v28, v86, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v13, s3
	v_cndmask_b32_e64 v4, v4, v25, s3
	v_cndmask_b32_e64 v13, v26, v33, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v28, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	v_mul_f32_e32 v19, 0xbfb8aa3b, v13
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s3
	v_ldexp_f32 v24, v24, v34
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v41, null, v24, v24, v12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v23, v23, v31
	v_ldexp_f32 v22, v22, v32
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v20, v20, v30
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v13
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_add_f32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v14, 0, 0x42800000, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v35, null, v23, v23, v17
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v7
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v35
	v_div_scale_f32 v34, s2, v16, v20, v16
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v21, v21, v29
	v_exp_f32_e32 v14, v14
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v37, null, v22, v22, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v19, v19, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v50, s6, v12, v24, v12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_fma_f32 v55, -v35, v46, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v47, v37
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v14, v14, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v25, 0xbfb8aa3b, v15 :: v_dual_fmac_f32 v46, v55, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, null, v21, v21, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v58, -v41, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v44, v31
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v29, null, v14, v14, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v30, s0, v7, v14, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v29
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v53, -v31, v44, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v38, s4, v18, v22, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v58, v50, v49
	v_fmac_f32_e32 v44, v53, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v26, null, v19, v19, v13
	v_fma_f32 v52, -v29, v43, 1.0
	v_div_scale_f32 v28, vcc_lo, v13, v19, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v26
	v_div_scale_f32 v32, s1, v11, v21, v11
	v_mul_f32_e32 v56, v38, v47
	v_fma_f32 v66, -v41, v58, v50
	v_fma_f32 v64, -v37, v56, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v26, v42, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v15
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v56, v64, v47
	v_fmac_f32_e32 v58, v66, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v51, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v51, v28, v42
	v_fma_f32 v59, -v26, v51, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v25, v25, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v33, null, v20, v20, v16
	v_fmac_f32_e32 v51, v59, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v45, v33
	v_fma_f32 v26, -v26, v51, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v26, v26, v42, v51
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v13, v26, v19, v13
	v_fmac_f32_e32 v45, v54, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v43, v52, v43 :: v_dual_mul_f32 v54, v34, v45
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_mul_f32 v52, v30, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v62, -v33, v54, v34
	v_div_scale_f32 v39, null, v25, v25, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v29, v52, v30
	v_div_scale_f32 v40, s5, v15, v25, v15
	v_rcp_f32_e32 v48, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v52, v60, v43
	v_dual_mul_f32 v53, v32, v44 :: v_dual_fmac_f32 v54, v62, v45
	v_fma_f32 v28, -v29, v52, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v31, v53, v32
	v_fma_f32 v30, -v33, v54, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fma_f32 v34, -v41, v58, v50
	v_div_fmas_f32 v28, v28, v43, v52
	v_fmac_f32_e32 v53, v61, v44
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v36, s3, v17, v23, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v31, v53, v32
	v_div_fixup_f32 v7, v28, v14, v7
	v_fma_f32 v32, -v37, v56, v38
	v_mul_f32_e32 v55, v36, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v29, v29, v44, v53
	s_mov_b32 vcc_lo, s2
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v8, v7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v63, -v35, v55, v36
	v_div_fmas_f32 v19, v30, v45, v54
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v29, v21, v11
	v_mul_f32_e32 v57, v40, v48
	v_fmac_f32_e32 v55, v63, v46
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v88.l, v7.h
	v_cmp_o_f32_e64 s0, v7, v7
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v6, v11
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v65, -v39, v57, v40
	v_fma_f32 v31, -v35, v55, v36
	v_div_fixup_f32 v16, v19, v20, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v89.l, v6.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v57, v65, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v31, v46, v55
	s_mov_b32 vcc_lo, s4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v39, v57, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v14, v14, v23, v17
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v91.l, v2.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v9, v13
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v13, v32, v47, v56
	s_mov_b32 vcc_lo, s5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s3, v2, v2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v8, v33, v48, v57
	s_mov_b32 vcc_lo, s6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v87.l, v9.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v11, v34, v49, v58
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v8, v25, v15
	v_div_fixup_f32 v13, v13, v22, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v11, v24, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v12, 1, v87
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v3, v3, v11 :: v_dual_and_b32 v8, 1, v89
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v9, v12, 0x7fff
	v_and_b32_e32 v12, 1, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v6, v6, v8, 0x7fff
	v_mov_b16_e32 v93.l, v4.h
	v_cmp_o_f32_e64 s5, v4, v4
	v_cndmask_b16 v8.h, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v2, v2, v12, 0x7fff
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	v_mov_b16_e32 v94.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s3
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v13, 1, v88
	v_cndmask_b32_e32 v9, 0x3276, v79, vcc_lo
	v_mov_b16_e32 v92.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v7, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	v_and_b32_e32 v13, 1, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v8.l, 0x7fff, v7.h, s0
	v_cndmask_b32_e32 v7, 0x1054, v78, vcc_lo
	v_cmp_o_f32_e64 s0, v3, v3
	v_add3_u32 v1, v1, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s4
	v_and_b32_e32 v1, 1, v93
	v_add3_u32 v1, v4, v1, 0x7fff
	v_lshl_or_b32 v4, v7, 8, v7
	v_lshl_or_b32 v7, v9, 8, v9
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v90.l, v5.h
	v_cmp_o_f32_e64 s2, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v90
	v_add3_u32 v0, v5, v11, 0x7fff
	v_and_b32_e32 v11, 1, v94
	v_dual_cndmask_b32 v5, v2, v8 :: v_dual_cndmask_b32 v2, v8, v2
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_and_or_b32 v8, 0x78, v10, s33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v6.l, 0x7fff, v0.h, s2
	v_add3_u32 v3, v3, v11, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s5
	v_and_b32_e32 v1, 0x540054, v4
	v_and_b32_e32 v4, 0x760076, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s0
	s_mov_b32 s0, 0x76543210
	v_lshl_or_b32 v1, v1, 4, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v4, 4, v4
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v4, v6, v0, vcc_lo
	v_dual_cndmask_b32 v6, v0, v6 :: v_dual_and_b32 v7, 0x5040504, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v2, v5, v7
	v_perm_b32 v1, v2, v5, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v4, v6, v7
	v_perm_b32 v3, v4, v6, v3
	v_add_lshl_u32 v4, v8, v27, 1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 210
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16268
; TotalNumSgprs: 52
; NumVgprs: 210
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     210
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
