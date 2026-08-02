	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v14, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v13, 2, v0
	v_or_b32_e32 v39, 0x3f0, v0
	v_and_b32_e32 v40, 8, v0
	v_and_b32_e32 v41, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v3, 12, v13
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 15
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
	s_lshr_b32 s9, s9, 28
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
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s12, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s33, s35, 3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s5, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v1, 0xf0, v0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v15, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_u32_f32 s5, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s35, v15
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_lshl_b32 s14, s13, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s13, s13, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s15, s7, s14
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s13
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s15, s15, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s13, s2
	s_abs_i32 s16, s15
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v2, s17
	v_readfirstlane_b32 s17, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s34, v14
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s17, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s6
	s_mov_b64 s[28:29], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s18, s18, s17
	s_mul_hi_u32 s12, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s12
	s_mul_hi_u32 s12, s13, s17
	s_xor_b32 s17, s2, s15
	s_mul_i32 s18, s12, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s13, s13, s18
	s_add_i32 s18, s12, 1
	s_sub_i32 s19, s13, s16
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s13, s19, s13
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s12, s12, s17
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s18, s34, s30
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s12, s12, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s31, 0xff
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s15, s12, s15
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s16, s3, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s15
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s30, v15
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s14
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s16, s16, 24
.Ltmp17:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s26, s2, 4
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s31, 0x7f
.Ltmp19:
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v9, v2, v3, s26
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s45, s12, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s14, s3, s16
.Ltmp21:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s17, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v11, s18, v9
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v34, 15, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s45, s17
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s31, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v36, v34, 4, v4
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s30, v14
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v37, s35, 1, v36
	v_add_nc_u32_e32 v38, s33, v36
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v36
	v_add_nc_u32_e32 v5, s12, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v6, s12, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v4, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s35, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v5, s3
	v_cndmask_b32_e64 v10, 0x80000000, v6, s3
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[5:8], v3, s[20:23], 0 offen
	buffer_load_b128 v[16:19], v10, s[20:23], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v3, 0x80000000, v11, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s27, s30, 0x80
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s15, s35, 7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v10, v3, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[20:23], v2, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v4, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s27, v15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v3, s12, v36
	v_add_nc_u32_e32 v4, s12, v37
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s12, v38
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s12, s34, 7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s35, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_clause 0x3
	buffer_load_b128 v[28:31], v3, s[20:23], 0 offen
	buffer_load_b128 v[49:52], v2, s[20:23], 0 offen
	buffer_load_b128 v[53:56], v4, s[20:23], 0 offen
	buffer_load_b128 v[57:60], v11, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s27, v14
	v_lshlrev_b32_e32 v4, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v2, s18, s12, v9
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s13, 0x17f
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	buffer_load_b32 v11, v2, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v2, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 0x420, v2
	v_and_b32_e32 v2, 14, v0
	v_xor_b32_e32 v12, v3, v15
	v_lshlrev_b32_e32 v3, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v42, v2, 10, v12
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v12, 0, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v43, 0x90, v42
	v_xor_b32_e32 v44, 0x120, v42
	v_xor_b32_e32 v45, 0x1b0, v42
	v_xor_b32_e32 v46, 0x210, v42
	v_add_nc_u32_e32 v32, 0, v42
	v_xor_b32_e32 v47, 0x330, v42
	v_xor_b32_e32 v48, 0x3a0, v42
	v_add_nc_u32_e32 v33, 0, v43
	v_add_nc_u32_e32 v35, 0, v44
	v_add_nc_u32_e32 v61, 0, v45
	v_add_nc_u32_e32 v62, 0, v46
	v_add_nc_u32_e32 v63, 0, v47
	v_add_nc_u32_e32 v64, 0, v48
	v_add_nc_u32_e32 v65, 0x4000, v32
	v_add_nc_u32_e32 v66, 0x4000, v33
	v_add_nc_u32_e32 v67, 0x4000, v35
	v_add_nc_u32_e32 v68, 0x4000, v61
	v_add_nc_u32_e32 v69, 0x4000, v62
	v_add_nc_u32_e32 v70, 0x4000, v63
	v_add_nc_u32_e32 v71, 0x4000, v64
	s_waitcnt vmcnt(8)
	v_perm_b32 v72, v16, v5, 0x4000501
	v_perm_b32 v5, v16, v5, 0x6020703
	v_perm_b32 v16, v17, v6, 0x4000501
	v_perm_b32 v6, v17, v6, 0x6020703
	v_perm_b32 v17, v18, v7, 0x4000501
	v_perm_b32 v7, v18, v7, 0x6020703
	v_perm_b32 v18, v19, v8, 0x4000501
	v_perm_b32 v8, v19, v8, 0x6020703
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(7)
	ds_store_b32 v12, v10 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(5)
	v_perm_b32 v10, v24, v20, 0x4000501
	v_perm_b32 v19, v24, v20, 0x6020703
	v_perm_b32 v20, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	v_perm_b32 v24, v26, v22, 0x4000501
	v_perm_b32 v22, v26, v22, 0x6020703
	v_perm_b32 v25, v27, v23, 0x4000501
	v_perm_b32 v23, v27, v23, 0x6020703
	v_perm_b32 v26, v72, v10, 0x7060302
	v_perm_b32 v10, v72, v10, 0x5040100
	v_perm_b32 v27, v5, v19, 0x7060302
	v_perm_b32 v5, v5, v19, 0x5040100
	v_perm_b32 v19, v16, v20, 0x7060302
	v_perm_b32 v16, v16, v20, 0x5040100
	v_perm_b32 v20, v6, v21, 0x7060302
	v_perm_b32 v6, v6, v21, 0x5040100
	v_perm_b32 v21, v17, v24, 0x7060302
	v_perm_b32 v17, v17, v24, 0x5040100
	v_perm_b32 v24, v7, v22, 0x7060302
	v_perm_b32 v7, v7, v22, 0x5040100
	v_perm_b32 v22, v18, v25, 0x7060302
	v_perm_b32 v18, v18, v25, 0x5040100
	v_perm_b32 v25, v8, v23, 0x7060302
	v_perm_b32 v8, v8, v23, 0x5040100
	s_waitcnt vmcnt(3)
	v_perm_b32 v23, v49, v28, 0x4000501
	s_waitcnt vmcnt(1)
	v_perm_b32 v72, v57, v53, 0x4000501
	v_perm_b32 v28, v49, v28, 0x6020703
	v_perm_b32 v49, v57, v53, 0x6020703
	v_perm_b32 v53, v50, v29, 0x4000501
	v_perm_b32 v57, v58, v54, 0x4000501
	v_perm_b32 v29, v50, v29, 0x6020703
	v_perm_b32 v50, v58, v54, 0x6020703
	v_perm_b32 v54, v51, v30, 0x4000501
	v_perm_b32 v58, v59, v55, 0x4000501
	v_perm_b32 v30, v51, v30, 0x6020703
	v_perm_b32 v51, v59, v55, 0x6020703
	v_perm_b32 v55, v52, v31, 0x4000501
	v_perm_b32 v59, v60, v56, 0x4000501
	v_perm_b32 v31, v52, v31, 0x6020703
	v_perm_b32 v52, v60, v56, 0x6020703
	ds_store_2addr_b32 v32, v26, v10 offset1:16
	ds_store_2addr_b32 v33, v27, v5 offset1:16
	ds_store_2addr_b32 v35, v19, v16 offset1:16
	ds_store_2addr_b32 v61, v20, v6 offset1:16
	ds_store_2addr_b32 v62, v21, v17 offset1:16
	ds_store_2addr_b32 v32, v24, v7 offset0:160 offset1:176
	ds_store_2addr_b32 v63, v22, v18 offset1:16
	ds_store_2addr_b32 v64, v25, v8 offset1:16
	v_perm_b32 v5, v72, v23, 0x7060302
	v_perm_b32 v6, v72, v23, 0x5040100
	v_perm_b32 v7, v49, v28, 0x7060302
	v_perm_b32 v8, v49, v28, 0x5040100
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v12, v11 offset:33792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v10, v57, v53, 0x7060302
	v_perm_b32 v11, v57, v53, 0x5040100
	v_perm_b32 v12, v50, v29, 0x7060302
	v_perm_b32 v16, v50, v29, 0x5040100
	v_perm_b32 v17, v58, v54, 0x7060302
	v_perm_b32 v18, v58, v54, 0x5040100
	v_perm_b32 v19, v51, v30, 0x7060302
	v_perm_b32 v20, v51, v30, 0x5040100
	v_perm_b32 v21, v59, v55, 0x7060302
	v_perm_b32 v22, v59, v55, 0x5040100
	v_perm_b32 v23, v52, v31, 0x7060302
	v_perm_b32 v24, v52, v31, 0x5040100
	ds_store_2addr_b32 v65, v5, v6 offset1:16
	ds_store_2addr_b32 v66, v7, v8 offset1:16
	ds_store_2addr_b32 v67, v10, v11 offset1:16
	ds_store_2addr_b32 v68, v12, v16 offset1:16
	ds_store_2addr_b32 v69, v17, v18 offset1:16
	ds_store_2addr_b32 v65, v19, v20 offset0:160 offset1:176
	ds_store_2addr_b32 v70, v21, v22 offset1:16
	ds_store_2addr_b32 v71, v23, v24 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v55, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v49, 0x1800, v3
	v_and_b32_e32 v50, 48, v4
	v_and_b32_e32 v6, 8, v0
	v_and_b32_e32 v5, 32, v0
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow43
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v7, s26, v34
	s_ashr_i32 s1, s14, 8
	v_and_b32_e32 v8, 1, v0
	v_or_b32_e32 v16, s45, v0
	v_lshlrev_b32_e32 v10, 2, v1
	v_mul_lo_u32 v35, v7, s1
	v_lshlrev_b32_e32 v11, 1, v2
	v_lshlrev_b32_e32 v12, 5, v8
	v_lshlrev_b32_e32 v33, 1, v1
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 3, 1
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v2, 6, v0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s48, s13, 7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v50, 48, v4
	v_and_b32_e32 v1, 0x210, v1
	v_and_b32_e32 v49, 0x1800, v3
	v_bfe_i32 v3, v0, 5, 1
	v_and_b32_e32 v2, 0x1c0, v2
	v_add3_u32 v18, 0, v10, v12
	v_xor_b32_e32 v1, v1, v50
.Ltmp23:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v51, s35, v36
	v_and_b32_e32 v3, 0x420, v3
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v57, 0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v1, v2, v1, v49
	v_add_nc_u32_e32 v56, v18, v11
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v22, 0
	v_xor_b32_e32 v52, v1, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v53, 16, v52
	v_xor_b32_e32 v54, 32, v52
	v_xor_b32_e32 v55, 48, v52
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_mov_b32_e32 v31, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s11, s27, 0x80
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s47, 1
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s44, 0, 0x8400
	s_add_i32 s46, 0, 0x4000
	s_add_i32 s48, s48, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s14, s13, 7
	s_mov_b32 s0, s30
	s_mov_b32 s30, s27
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s27, s11, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s0, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v60, s27, v14
	v_or_b32_e32 v61, s27, v15
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[58:59], null, s27, s34, v[9:10]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s15, s27, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s14, s14, 24
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s15, s15, s45
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s0, s14
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v60
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v59, s15, v36
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s0, 8
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s31, v61
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v62, s15, v51
	v_add_nc_u32_e32 v63, s15, v37
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s14, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v60, v35, s14, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s14, s35
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v61, v16, s14, 1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v64, s15, v38
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	v_cndmask_b32_e64 v63, 0x80000000, v63, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v134, v58, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v58, 0x80000000, v61, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x2
	buffer_load_b128 v[74:77], v59, s[20:23], 0 offen
	buffer_load_b128 v[78:81], v62, s[20:23], 0 offen
	buffer_load_b128 v[82:85], v63, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v135, v60, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v136, v58, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[86:89], v64, s[20:23], 0 offen
	s_mov_b32 s14, s12
	s_mov_b32 s0, s10
	v_add_nc_u32_e32 v60, s14, v52
	v_add_nc_u32_e32 v61, s14, v53
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s0, v34
	v_add_nc_u32_e32 v59, s0, v39
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v62, s14, v54
	v_add_nc_u32_e32 v63, s14, v55
	ds_load_b128 v[66:69], v60
	ds_load_b128 v[90:93], v60 offset:8192
	ds_load_b128 v[94:97], v61
	ds_load_b128 v[98:101], v61 offset:8192
	ds_load_b128 v[102:105], v62
	ds_load_b128 v[106:109], v62 offset:8192
	ds_load_b128 v[110:113], v63
	ds_load_b128 v[114:117], v63 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v60, v58 offset:208
	ds_load_u8 v61, v58 offset:240
	ds_load_u8 v62, v58 offset:224
	ds_load_u8 v63, v58 offset:192
	ds_load_u8 v64, v58 offset:144
	ds_load_u8 v65, v58 offset:176
	ds_load_u8 v70, v58 offset:160
	ds_load_u8 v71, v58 offset:128
	ds_load_u8 v72, v58 offset:80
	ds_load_u8 v73, v58 offset:112
	ds_load_u8 v118, v58 offset:96
	ds_load_u8 v119, v58 offset:64
	ds_load_u8 v120, v58
	ds_load_u8 v121, v58 offset:16
	ds_load_u8 v122, v58 offset:32
	ds_load_u8 v123, v58 offset:48
	ds_load_u8 v124, v58 offset:464
	ds_load_u8 v125, v58 offset:496
	ds_load_u8 v126, v58 offset:480
	ds_load_u8 v127, v58 offset:448
	ds_load_u8 v128, v58 offset:400
	ds_load_u8 v129, v58 offset:432
	ds_load_u8 v130, v58 offset:416
	ds_load_u8 v131, v58 offset:384
	ds_load_u8 v132, v58 offset:336
	ds_load_u8 v133, v58 offset:368
	ds_load_u8 v137, v58 offset:352
	ds_load_u8 v138, v58 offset:320
	ds_load_u8 v139, v58 offset:272
	ds_load_u8 v140, v58 offset:304
	ds_load_u8 v141, v58 offset:288
	ds_load_u8 v142, v58 offset:256
	ds_load_u8 v143, v58 offset:720
	ds_load_u8 v144, v58 offset:752
	ds_load_u8 v145, v58 offset:736
	ds_load_u8 v146, v58 offset:704
	ds_load_u8 v147, v58 offset:656
	ds_load_u8 v148, v58 offset:688
	ds_load_u8 v149, v58 offset:672
	ds_load_u8 v150, v58 offset:640
	ds_load_u8 v151, v58 offset:592
	ds_load_u8 v152, v58 offset:624
	ds_load_u8 v153, v58 offset:608
	ds_load_u8 v154, v58 offset:576
	ds_load_u8 v155, v58 offset:528
	ds_load_u8 v156, v58 offset:560
	ds_load_u8 v157, v58 offset:544
	ds_load_u8 v158, v58 offset:512
	ds_load_u8 v159, v58 offset:976
	ds_load_u8 v59, v59
	ds_load_u8 v160, v58 offset:992
	ds_load_u8 v161, v58 offset:960
	ds_load_u8 v162, v58 offset:912
	ds_load_u8 v163, v58 offset:944
	ds_load_u8 v164, v58 offset:928
	ds_load_u8 v165, v58 offset:896
	ds_load_u8 v166, v58 offset:848
	ds_load_u8 v167, v58 offset:880
	ds_load_u8 v168, v58 offset:864
	ds_load_u8 v169, v58 offset:832
	ds_load_u8 v170, v58 offset:784
	ds_load_u8 v171, v58 offset:816
	ds_load_u8 v172, v58 offset:800
	ds_load_u8 v58, v58 offset:768
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v60, v63, v60, 0xc0c0004
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v62, v71, v64, 0xc0c0004
	v_perm_b32 v63, v70, v65, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v64, v119, v72, 0xc0c0004
	v_perm_b32 v65, v118, v73, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v70, v120, v121, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v71, v122, v123, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v72, v127, v124, 0xc0c0004
	v_perm_b32 v73, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v122, v131, v128, 0xc0c0004
	v_perm_b32 v123, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v126, v138, v132, 0xc0c0004
	v_perm_b32 v127, v137, v133, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v128, v142, v139, 0xc0c0004
	v_perm_b32 v129, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v130, v146, v143, 0xc0c0004
	v_perm_b32 v131, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v132, v150, v147, 0xc0c0004
	v_perm_b32 v133, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v141, v161, v159, 0xc0c0004
	v_perm_b32 v59, v160, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v170, 0xc0c0004
	v_perm_b32 v146, v172, v171, 0xc0c0004
	v_lshl_or_b32 v121, v61, 16, v60
	v_lshl_or_b32 v120, v63, 16, v62
	v_lshl_or_b32 v119, v65, 16, v64
	v_lshl_or_b32 v118, v71, 16, v70
	v_perm_b32 v137, v154, v151, 0xc0c0004
	v_perm_b32 v138, v153, v152, 0xc0c0004
	v_perm_b32 v139, v158, v155, 0xc0c0004
	v_perm_b32 v140, v157, v156, 0xc0c0004
	v_lshl_or_b32 v125, v73, 16, v72
	v_lshl_or_b32 v124, v123, 16, v122
	v_lshl_or_b32 v123, v127, 16, v126
	v_lshl_or_b32 v122, v129, 16, v128
	v_lshl_or_b32 v129, v131, 16, v130
	v_lshl_or_b32 v128, v133, 16, v132
	v_lshl_or_b32 v133, v59, 16, v141
	v_lshl_or_b32 v130, v146, 16, v58
	v_wmma_i32_16x16x16_iu8 v[58:65], v[66:69], v[118:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[90:93], v[118:121], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v142, v165, v162, 0xc0c0004
	v_perm_b32 v143, v164, v163, 0xc0c0004
	v_perm_b32 v144, v169, v166, 0xc0c0004
	v_perm_b32 v145, v168, v167, 0xc0c0004
	v_lshl_or_b32 v127, v138, 16, v137
	v_lshl_or_b32 v126, v140, 16, v139
	v_wmma_i32_16x16x16_iu8 v[58:65], v[94:97], v[122:125], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[98:101], v[122:125], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v143, 16, v142
	v_lshl_or_b32 v131, v145, 16, v144
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s47, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[58:65], v[102:105], v[126:129], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[106:109], v[126:129], v[66:73] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s0, 2
	s_mov_b32 s12, s46
	s_cselect_b32 s47, s0, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[58:65], v[110:113], v[130:133], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[114:117], v[130:133], v[66:73] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s14, s47, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s15, s47, 14
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s14, s14, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v90, v58
	v_cvt_f32_i32_e32 v91, v59
	v_cvt_f32_i32_e32 v92, v60
	v_cvt_f32_i32_e32 v93, v61
	v_cvt_f32_i32_e32 v94, v62
	v_cvt_f32_i32_e32 v95, v63
	v_cvt_f32_i32_e32 v96, v64
	v_cvt_f32_i32_e32 v97, v65
	v_cvt_f32_i32_e32 v98, v66
	v_cvt_f32_i32_e32 v99, v67
	v_cvt_f32_i32_e32 v100, v68
	v_cvt_f32_i32_e32 v101, v69
	v_cvt_f32_i32_e32 v102, v70
	v_cvt_f32_i32_e32 v103, v71
	v_cvt_f32_i32_e32 v104, v72
	v_cvt_f32_i32_e32 v105, v73
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s46, s15, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s13, 1
	s_mov_b32 s10, s44
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s44, s14, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s48
	s_mov_b32 s13, s0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v58, v78, v74, 0x4000501
	v_perm_b32 v60, v78, v74, 0x6020703
	v_perm_b32 v62, v79, v75, 0x4000501
	v_perm_b32 v64, v79, v75, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v59, v86, v82, 0x4000501
	v_perm_b32 v61, v86, v82, 0x6020703
	v_perm_b32 v63, v87, v83, 0x4000501
	v_perm_b32 v65, v87, v83, 0x6020703
	v_perm_b32 v66, v80, v76, 0x4000501
	v_perm_b32 v67, v88, v84, 0x4000501
	v_perm_b32 v68, v80, v76, 0x6020703
	v_perm_b32 v69, v88, v84, 0x6020703
	v_perm_b32 v70, v81, v77, 0x4000501
	v_perm_b32 v71, v89, v85, 0x4000501
	v_perm_b32 v72, v81, v77, 0x6020703
	v_perm_b32 v73, v89, v85, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v75, 16, v136
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v76, v59, v58, 0x7060302
	v_perm_b32 v77, v59, v58, 0x5040100
	v_perm_b32 v78, v61, v60, 0x7060302
	v_perm_b32 v79, v61, v60, 0x5040100
	v_perm_b32 v80, v63, v62, 0x7060302
	v_perm_b32 v81, v63, v62, 0x5040100
	v_perm_b32 v82, v65, v64, 0x7060302
	v_perm_b32 v83, v65, v64, 0x5040100
	v_perm_b32 v84, v67, v66, 0x7060302
	v_perm_b32 v85, v67, v66, 0x5040100
	v_perm_b32 v86, v69, v68, 0x7060302
	v_perm_b32 v87, v69, v68, 0x5040100
	v_perm_b32 v88, v71, v70, 0x7060302
	v_perm_b32 v89, v71, v70, 0x5040100
	v_perm_b32 v106, v73, v72, 0x7060302
	v_perm_b32 v107, v73, v72, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v56, v75 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v57 offset:34816
	ds_load_b128 v[62:65], v57 offset:34832
	ds_load_b128 v[66:69], v57 offset:35328
	ds_load_b128 v[70:73], v57 offset:35344
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v74, 16, v135
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v58, v74
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v17, v58, v90
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v68, v68, v74 :: v_dual_add_nc_u32 v173, s14, v13
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v70, v70, v74 :: v_dual_add_nc_u32 v175, s46, v43
	v_dual_mul_f32 v67, v67, v74 :: v_dual_add_nc_u32 v176, s46, v44
	v_dual_mul_f32 v72, v72, v74 :: v_dual_add_nc_u32 v177, s46, v45
	v_dual_mul_f32 v69, v69, v74 :: v_dual_add_nc_u32 v180, s46, v48
	v_mul_f32_e32 v59, v59, v74
	v_mul_f32_e32 v60, v60, v74
	v_mul_f32_e32 v61, v61, v74
	v_mul_f32_e32 v62, v62, v74
	v_mul_f32_e32 v63, v63, v74
	v_mul_f32_e32 v64, v64, v74
	v_mul_f32_e32 v65, v65, v74
	v_mul_f32_e32 v66, v66, v74
	v_mul_f32_e32 v71, v71, v74
	v_dual_mul_f32 v73, v73, v74 :: v_dual_fmac_f32 v18, v59, v91
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v29, v69, v101 :: v_dual_add_nc_u32 v174, s46, v42
	v_dual_fmac_f32 v20, v61, v93 :: v_dual_add_nc_u32 v179, s46, v47
	v_fmac_f32_e32 v19, v60, v92
	v_dual_fmac_f32 v21, v62, v94 :: v_dual_fmac_f32 v22, v63, v95
	v_dual_fmac_f32 v23, v64, v96 :: v_dual_fmac_f32 v24, v65, v97
	v_dual_fmac_f32 v31, v71, v103 :: v_dual_add_nc_u32 v178, s46, v46
	v_dual_fmac_f32 v25, v66, v98 :: v_dual_fmac_f32 v28, v68, v100
	v_dual_fmac_f32 v27, v67, v99 :: v_dual_fmac_f32 v30, v70, v102
	v_fmac_f32_e32 v32, v72, v104
	v_fmac_f32_e32 v26, v73, v105
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b32 v173, v134 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v174, v76, v77 offset1:16
	ds_store_2addr_b32 v175, v78, v79 offset1:16
	ds_store_2addr_b32 v176, v80, v81 offset1:16
	ds_store_2addr_b32 v177, v82, v83 offset1:16
	ds_store_2addr_b32 v178, v84, v85 offset1:16
	ds_store_2addr_b32 v174, v86, v87 offset0:160 offset1:176
	ds_store_2addr_b32 v179, v88, v89 offset1:16
	ds_store_2addr_b32 v180, v106, v107 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v55, v39 :: v_dual_mov_b32 v6, v40
	v_mov_b32_e32 v5, v41
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	s_add_i32 s10, 0, 0x8000
	s_add_i32 s44, 0, 0x8400
	s_add_i32 s46, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e64 s0, 0, v6
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v36, 7, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0x210, 0, s0
	v_dual_mov_b32 v42, 0 :: v_dual_lshlrev_b32 v1, 6, v36
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v0, v0, v50
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_or3_b32 v0, v1, v49, v0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v58, v0, v2
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v54, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v59, 16, v58
	v_xor_b32_e32 v61, 32, v58
	v_xor_b32_e32 v62, 48, v58
	s_mov_b32 s16, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v8, s10, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v0, v8 offset:208
	ds_load_u8 v1, v8 offset:224
	ds_load_u8 v2, v8 offset:192
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v9, s12, v61
	ds_load_b128 v[38:41], v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v4, v8 offset:240
	ds_load_u8 v5, v8 offset:144
	ds_load_u8 v6, v8 offset:176
	ds_load_u8 v7, v8 offset:160
	ds_load_u8 v14, v8 offset:128
	ds_load_u8 v15, v8 offset:112
	ds_load_u8 v42, v8 offset:80
	ds_load_u8 v43, v8 offset:96
	ds_load_u8 v44, v8 offset:64
	ds_load_u8 v45, v8
	ds_load_u8 v46, v8 offset:16
	ds_load_u8 v47, v8 offset:32
	ds_load_u8 v48, v8 offset:48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v3, s12, v58
	ds_load_b128 v[50:53], v3 offset:8192
	ds_load_b128 v[63:66], v3
	v_add_nc_u32_e32 v13, s12, v62
	v_add_nc_u32_e32 v49, s12, v59
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v1, v4, 0xc0c0004
	v_perm_b32 v0, v2, v0, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, s10, v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v44, v42, 0xc0c0004
	v_perm_b32 v4, v43, v15, 0xc0c0004
	v_lshl_or_b32 v70, v1, 16, v0
	v_perm_b32 v0, v14, v5, 0xc0c0004
	v_perm_b32 v1, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v68, v4, 16, v3
	ds_load_u8 v91, v2
	v_lshl_or_b32 v69, v1, 16, v0
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v0, v45, v46, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v47, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v1, 16, v0
	v_dual_mov_b32 v0, s16 :: v_dual_mov_b32 v1, s17
	ds_load_u8 v14, v8 offset:464
	ds_load_u8 v15, v8 offset:480
	ds_load_u8 v42, v8 offset:448
	ds_load_u8 v43, v8 offset:496
	ds_load_u8 v44, v8 offset:400
	ds_load_u8 v45, v8 offset:432
	ds_load_u8 v46, v8 offset:416
	ds_load_u8 v47, v8 offset:384
	ds_load_u8 v54, v8 offset:336
	ds_load_u8 v56, v8 offset:352
	ds_load_u8 v57, v8 offset:320
	ds_load_u8 v60, v8 offset:272
	ds_load_u8 v79, v8 offset:304
	ds_load_u8 v80, v8 offset:288
	ds_load_u8 v81, v8 offset:256
	ds_load_u8 v82, v8 offset:368
	ds_load_u8 v83, v8 offset:592
	ds_load_u8 v84, v8 offset:608
	ds_load_u8 v85, v8 offset:576
	ds_load_u8 v86, v8 offset:528
	ds_load_u8 v87, v8 offset:560
	ds_load_u8 v88, v8 offset:544
	ds_load_u8 v89, v8 offset:512
	ds_load_u8 v90, v8 offset:720
	ds_load_u8 v92, v8 offset:736
	ds_load_u8 v93, v8 offset:704
	v_dual_mov_b32 v2, s18 :: v_dual_mov_b32 v3, s19
	v_dual_mov_b32 v4, s20 :: v_dual_mov_b32 v5, s21
	v_dual_mov_b32 v6, s22 :: v_dual_mov_b32 v7, s23
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[71:74], v49 offset:8192
	ds_load_b128 v[75:78], v49
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v15, v15, v43, 0xc0c0004
	v_perm_b32 v14, v42, v14, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v94, v47, v44, 0xc0c0004
	v_perm_b32 v95, v46, v45, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[63:66], v[67:70], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v66, v15, 16, v14
	ds_load_u8 v14, v8 offset:752
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v15, v57, v54, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v54, v56, v82, 0xc0c0004
	v_perm_b32 v56, v81, v60, 0xc0c0004
	v_perm_b32 v57, v80, v79, 0xc0c0004
	ds_load_u8 v60, v8 offset:656
	ds_load_u8 v79, v8 offset:688
	ds_load_u8 v80, v8 offset:672
	ds_load_u8 v81, v8 offset:640
	v_lshl_or_b32 v65, v95, 16, v94
	v_lshl_or_b32 v64, v54, 16, v15
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v15, v93, v90, 0xc0c0004
	v_lshl_or_b32 v63, v57, 16, v56
	ds_load_u8 v54, v8 offset:624
	ds_load_u8 v56, v8 offset:848
	ds_load_u8 v57, v8 offset:864
	ds_load_u8 v93, v8 offset:832
	ds_load_u8 v94, v8 offset:784
	ds_load_u8 v95, v8 offset:816
	ds_load_u8 v96, v8 offset:800
	ds_load_u8 v97, v8 offset:768
	v_perm_b32 v82, v88, v87, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[0:7], v[50:53], v[67:70], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[75:78], v[63:66], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[0:7], v[71:74], v[63:66], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v92, v14, 0xc0c0004
	ds_load_u8 v92, v8 offset:976
	ds_load_u8 v98, v8 offset:992
	ds_load_u8 v99, v8 offset:960
	ds_load_u8 v100, v8 offset:912
	ds_load_u8 v101, v8 offset:944
	ds_load_u8 v102, v8 offset:928
	ds_load_u8 v103, v8 offset:896
	ds_load_u8 v8, v8 offset:880
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v54, v84, v54, 0xc0c0004
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v60, v81, v60, 0xc0c0004
	v_perm_b32 v80, v85, v83, 0xc0c0004
	v_perm_b32 v81, v89, v86, 0xc0c0004
	v_lshl_or_b32 v78, v14, 16, v15
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v50, v96, v95, 0xc0c0004
	v_lshl_or_b32 v77, v79, 16, v60
	v_lshl_or_b32 v76, v54, 16, v80
	v_lshl_or_b32 v75, v82, 16, v81
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[79:82], v9 offset:8192
	ds_load_b128 v[83:86], v13 offset:8192
	ds_load_b128 v[87:90], v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v54, v97, v94, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v98, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[38:41], v[75:78], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v99, v92, 0xc0c0004
	v_perm_b32 v38, v93, v56, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v15, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v103, v100, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v8, v57, v8, 0xc0c0004
	v_lshl_or_b32 v41, v13, 16, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v40, v15, 16, v14
	v_lshl_or_b32 v39, v8, 16, v38
	v_lshl_or_b32 v38, v50, 16, v54
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[0:7], v[79:82], v[75:78], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[87:90], v[38:41], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[83:86], v[38:41], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v38, v43
	v_cvt_f32_i32_e32 v39, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v40, v45
	v_cvt_f32_i32_e32 v41, v46
	v_cvt_f32_i32_e32 v43, v47
	v_cvt_f32_i32_e32 v44, v48
	v_cvt_f32_i32_e32 v46, v49
	v_cvt_f32_i32_e32 v47, v0
	v_cvt_f32_i32_e32 v48, v1
	v_cvt_f32_i32_e32 v49, v2
	v_cvt_f32_i32_e32 v50, v3
	v_cvt_f32_i32_e32 v51, v4
	v_cvt_f32_i32_e32 v52, v5
	v_cvt_f32_i32_e32 v53, v6
	v_cvt_f32_i32_e32 v54, v7
	v_cvt_f32_i32_e32 v42, v42
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v0, v35, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v1, v16, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_or3_b32 v57, v10, v12, v11
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v56, 0, v33
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v60, v0, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v45, 0, v57
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v0, 16, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v45, v0 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v56 offset:34816
	ds_load_b128 v[4:7], v56 offset:34832
	ds_load_b128 v[8:11], v56 offset:35328
	ds_load_b128 v[12:15], v56 offset:35344
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v34, s44, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v37, v34 offset:208
	ds_load_u8 v63, v34 offset:224
	ds_load_u8 v64, v34 offset:192
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v61, s46, v61
	v_add_nc_u32_e32 v110, s46, v62
	ds_load_b128 v[78:81], v61
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v62, v34 offset:240
	ds_load_u8 v65, v34 offset:144
	ds_load_u8 v66, v34 offset:176
	ds_load_u8 v67, v34 offset:160
	ds_load_u8 v68, v34 offset:128
	ds_load_u8 v69, v34 offset:112
	ds_load_u8 v70, v34 offset:80
	ds_load_u8 v71, v34 offset:96
	ds_load_u8 v72, v34 offset:64
	ds_load_u8 v73, v34
	ds_load_u8 v74, v34 offset:16
	ds_load_u8 v75, v34 offset:32
	ds_load_u8 v76, v34 offset:48
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v55, s44, v55
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v58, s46, v58
	v_add_nc_u32_e32 v59, s46, v59
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	v_perm_b32 v37, v64, v37, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v63, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v62, 16, v37
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v72, v70, 0xc0c0004
	v_perm_b32 v62, v71, v69, 0xc0c0004
	v_lshl_or_b32 v91, v62, 16, v37
	ds_load_u8 v37, v55
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v55, v73, v74, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v62, v75, v76, 0xc0c0004
	v_mov_b32_e32 v77, s19
	v_mov_b32_e32 v73, s15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[82:85], v58 offset:8192
	ds_load_b128 v[86:89], v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v58, v68, v65, 0xc0c0004
	ds_load_u8 v65, v34 offset:496
	ds_load_u8 v66, v34 offset:400
	ds_load_u8 v67, v34 offset:432
	ds_load_u8 v68, v34 offset:416
	ds_load_u8 v69, v34 offset:384
	ds_load_u8 v102, v34 offset:336
	ds_load_u8 v103, v34 offset:352
	ds_load_u8 v104, v34 offset:320
	ds_load_u8 v105, v34 offset:272
	ds_load_u8 v106, v34 offset:304
	ds_load_u8 v107, v34 offset:288
	ds_load_u8 v108, v34 offset:256
	v_lshl_or_b32 v90, v62, 16, v55
	ds_load_u8 v118, v34 offset:720
	ds_load_u8 v119, v34 offset:736
	ds_load_u8 v120, v34 offset:704
	v_lshl_or_b32 v92, v63, 16, v58
	ds_load_u8 v58, v34 offset:464
	ds_load_u8 v63, v34 offset:480
	ds_load_u8 v64, v34 offset:448
	v_dual_mov_b32 v76, s18 :: v_dual_mov_b32 v75, s17
	v_mov_b32_e32 v74, s16
	v_dual_mov_b32 v72, s14 :: v_dual_mov_b32 v71, s13
	v_mov_b32_e32 v70, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[94:97], v59 offset:8192
	ds_load_b128 v[98:101], v59
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v59, v104, v102, 0xc0c0004
	v_perm_b32 v122, v68, v67, 0xc0c0004
	v_perm_b32 v121, v69, v66, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v102, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v117, v63, v65, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v55, v64, v58, 0xc0c0004
	ds_load_u8 v58, v34 offset:368
	ds_load_u8 v109, v34 offset:592
	ds_load_u8 v111, v34 offset:608
	ds_load_u8 v112, v34 offset:576
	ds_load_u8 v113, v34 offset:528
	ds_load_u8 v114, v34 offset:560
	ds_load_u8 v115, v34 offset:544
	ds_load_u8 v116, v34 offset:512
	v_wmma_i32_16x16x16_iu8 v[62:69], v[86:89], v[90:93], v[70:77] neg_lo:[1,1,0]
	v_perm_b32 v86, v108, v105, 0xc0c0004
	v_lshl_or_b32 v89, v117, 16, v55
	ds_load_u8 v55, v34 offset:752
	v_lshl_or_b32 v88, v122, 16, v121
	v_wmma_i32_16x16x16_iu8 v[70:77], v[82:85], v[90:93], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v102, 16, v86
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v58, v103, v58, 0xc0c0004
	ds_load_u8 v103, v34 offset:656
	ds_load_u8 v104, v34 offset:688
	ds_load_u8 v105, v34 offset:672
	ds_load_u8 v106, v34 offset:640
	v_lshl_or_b32 v87, v58, 16, v59
	v_perm_b32 v58, v120, v118, 0xc0c0004
	ds_load_u8 v59, v34 offset:624
	ds_load_u8 v117, v34 offset:848
	ds_load_u8 v118, v34 offset:864
	ds_load_u8 v120, v34 offset:832
	ds_load_u8 v121, v34 offset:784
	ds_load_u8 v122, v34 offset:816
	ds_load_u8 v123, v34 offset:800
	ds_load_u8 v124, v34 offset:768
	v_wmma_i32_16x16x16_iu8 v[62:69], v[98:101], v[86:89], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[94:97], v[86:89], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v55, v119, v55, 0xc0c0004
	ds_load_u8 v119, v34 offset:976
	ds_load_u8 v125, v34 offset:992
	ds_load_u8 v126, v34 offset:960
	ds_load_u8 v127, v34 offset:912
	ds_load_u8 v128, v34 offset:944
	ds_load_u8 v129, v34 offset:928
	ds_load_u8 v130, v34 offset:896
	ds_load_u8 v34, v34 offset:880
	v_lshl_or_b32 v101, v55, 16, v58
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v59, v111, v59, 0xc0c0004
	v_perm_b32 v102, v106, v103, 0xc0c0004
	v_perm_b32 v103, v105, v104, 0xc0c0004
	v_perm_b32 v104, v112, v109, 0xc0c0004
	v_perm_b32 v105, v116, v113, 0xc0c0004
	v_perm_b32 v106, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v82, v123, v122, 0xc0c0004
	v_lshl_or_b32 v100, v103, 16, v102
	v_lshl_or_b32 v99, v59, 16, v104
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v55, v126, v119, 0xc0c0004
	v_lshl_or_b32 v98, v106, 16, v105
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[102:105], v61 offset:8192
	ds_load_b128 v[106:109], v110 offset:8192
	ds_load_b128 v[110:113], v110
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v37, v125, v37, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v58, v130, v127, 0xc0c0004
	v_perm_b32 v59, v129, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[78:81], v[98:101], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v61, v120, v117, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v118, v34, 0xc0c0004
	v_perm_b32 v78, v124, v121, 0xc0c0004
	v_lshl_or_b32 v81, v37, 16, v55
	v_lshl_or_b32 v80, v59, 16, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v79, v34, 16, v61
	v_lshl_or_b32 v78, v82, 16, v78
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[102:105], v[98:101], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[110:113], v[78:81], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[106:109], v[78:81], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v37, v62
	v_cvt_f32_i32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s27, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s27, s4
	v_mov_b16_e32 v59.l, 0
	s_ashr_i32 s4, s4, 8
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v59.h, v60.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s4, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v34, v35, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v35, v16, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v4, v4, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v0, v59
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v4, v41, v21
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v33, v36, 2, v33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v55, v35, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v58, v34, s[8:11], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v41, v0, v42, v17
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mad_u64_u32 v[34:35], null, s26, s35, v[16:17]
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v12, v12, v59
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v41, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v4, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v16, 0x2040, 0, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v14, v59
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v35, 0x404, v57, 0
	v_xad_u32 v60, 0x808, v57, 0
	v_xad_u32 v61, 0xc0c, v57, 0
	v_xor_b32_e32 v16, v33, v16
	v_lshlrev_b32_e32 v33, 2, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v53, v32
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v62, 0x1010, v57, 0
	v_xad_u32 v78, 0x1414, v57, 0
	v_lshl_or_b32 v16, v36, 10, v16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v15, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v14, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v79, 0x1818, v57, 0
	v_xad_u32 v80, 0x1c1c, v57, 0
	v_add_nc_u32_e32 v36, 0, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v54, v26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v42, v16, 16, 0
	v_xad_u32 v81, 0x2040, v57, 0
	v_xad_u32 v82, 0x2444, v57, 0
	v_xad_u32 v83, 0x2848, v57, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v15, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v84, 0x2c4c, v57, 0
	v_xad_u32 v85, 0x3050, v57, 0
	v_xad_u32 v86, 0x3454, v57, 0
	v_xad_u32 v87, 0x3858, v57, 0
	v_xad_u32 v57, 0x3c5c, v57, 0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s35, 5
	s_mul_i32 s5, s35, 6
	s_mul_i32 s6, s35, 7
	s_mul_i32 s7, s35, 9
	s_mul_i32 s8, s35, 10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	v_add_lshl_u32 v88, v34, s33, 2
	s_and_b32 s25, s25, 0xffff
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s9, s35, 11
	s_mul_i32 s12, s35, 12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v89, v34, s4, 2
	v_add_lshl_u32 v90, v34, s5, 2
	v_add_lshl_u32 v91, v34, s6, 2
	v_add_lshl_u32 v92, v34, s7, 2
	v_add_lshl_u32 v93, v34, s8, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s13, s35, 13
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v94, v34, s9, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s14, s35, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v95, v34, s12, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s35, 15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v96, v34, s13, 2
	v_add_lshl_u32 v97, v34, s14, 2
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v59
	v_mul_f32_e32 v6, v6, v59
	v_mul_f32_e32 v5, v5, v59
	v_mul_f32_e32 v3, v3, v59
	v_mul_f32_e32 v2, v2, v59
	v_mul_f32_e32 v1, v1, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v46, v24
	v_fma_f32 v6, v6, v44, v23
	v_fma_f32 v5, v5, v43, v22
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v0, 16, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v3, v40, v20
	v_fma_f32 v39, v2, v39, v19
	v_fma_f32 v38, v1, v38, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v7, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v45, v0 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v56 offset:34816
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v6, s2
	v_cndmask_b32_e64 v22, v22, v5, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[4:7], v56 offset:34832
	v_mul_f32_e32 v11, v11, v59
	v_mul_f32_e32 v10, v10, v59
	v_mul_f32_e32 v9, v9, v59
	v_mul_f32_e32 v8, v8, v59
	v_mul_f32_e32 v13, v13, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v51, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v38, s2
	v_cndmask_b32_e64 v19, v19, v39, s2
	v_cndmask_b32_e64 v20, v20, v40, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v38, v16, 4, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v12, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v39, v16, 8, 0
	v_xad_u32 v40, v16, 12, 0
	v_xad_u32 v43, v16, 20, 0
	v_xad_u32 v44, v16, 24, 0
	v_xad_u32 v16, v16, 28, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v1, v1, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v49, v28
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v50, v29
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v3, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v47, v25
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v4, v4, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v48, v27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v0, v0, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v52, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v11, s2
	v_cndmask_b32_e64 v28, v28, v10, s2
	v_cndmask_b32_e64 v27, v27, v9, s2
	v_cndmask_b32_e64 v25, v25, v8, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[8:11], v56 offset:35328
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v13, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[12:15], v56 offset:35344
	v_mul_f32_e32 v5, v5, v41
	v_mul_f32_e32 v6, v6, v41
	v_mul_f32_e32 v7, v7, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v37, v17
	v_fma_f32 v1, v1, v63, v18
	v_fma_f32 v2, v2, v64, v19
	v_fma_f32 v3, v3, v65, v20
	v_fma_f32 v4, v4, v66, v21
	v_fma_f32 v5, v5, v67, v22
	v_fma_f32 v6, v6, v68, v23
	v_fma_f32 v7, v7, v69, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v17, v0, s3
	v_cndmask_b32_e64 v1, v18, v1, s3
	v_cndmask_b32_e64 v2, v19, v2, s3
	v_cndmask_b32_e64 v3, v20, v3, s3
	v_cndmask_b32_e64 v4, v21, v4, s3
	v_cndmask_b32_e64 v5, v22, v5, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v8, v8, v41
	v_mul_f32_e32 v9, v9, v41
	v_mul_f32_e32 v10, v10, v41
	v_mul_f32_e32 v11, v11, v41
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v12, v12, v41
	v_mul_f32_e32 v13, v13, v41
	v_mul_f32_e32 v14, v14, v41
	v_mul_f32_e32 v15, v15, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v70, v25
	v_fma_f32 v9, v9, v71, v27
	v_fma_f32 v10, v10, v72, v28
	v_fma_f32 v11, v11, v73, v29
	v_fma_f32 v12, v12, v74, v30
	v_fma_f32 v13, v13, v75, v31
	v_fma_f32 v14, v14, v76, v32
	v_fma_f32 v15, v15, v77, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v25, v8, s3
	v_cndmask_b32_e64 v9, v27, v9, s3
	v_cndmask_b32_e64 v10, v28, v10, s3
	v_cndmask_b32_e64 v11, v29, v11, s3
	v_cndmask_b32_e64 v6, v23, v6, s3
	v_cndmask_b32_e64 v7, v24, v7, s3
	v_cndmask_b32_e64 v12, v30, v12, s3
	v_cndmask_b32_e64 v13, v31, v13, s3
	v_cndmask_b32_e64 v14, v32, v14, s3
	v_cndmask_b32_e64 v15, v26, v15, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b32 v36, v0, v8 offset1:2
	ds_store_2addr_stride64_b32 v38, v1, v9 offset1:2
	ds_store_2addr_stride64_b32 v39, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v40, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v42, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v43, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v44, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v16, v7, v15 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v45
	ds_load_b32 v1, v35
	ds_load_b32 v2, v60
	ds_load_b32 v3, v61
	ds_load_b32 v4, v62
	ds_load_b32 v5, v78
	ds_load_b32 v6, v79
	ds_load_b32 v7, v80
	ds_load_b32 v8, v81
	ds_load_b32 v9, v82
	ds_load_b32 v10, v83
	ds_load_b32 v11, v84
	ds_load_b32 v12, v85
	ds_load_b32 v13, v86
	ds_load_b32 v14, v87
	ds_load_b32 v15, v57
	v_add_lshl_u32 v59, v34, s35, 2
	v_lshl_add_u32 v16, s35, 3, v33
	v_lshl_add_u32 v17, s35, 4, v33
	v_lshl_add_u32 v18, s35, 5, v33
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v33, s[24:27], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v1, v59, s[24:27], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v2, v16, s[24:27], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v3, v88, s[24:27], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v4, v17, s[24:27], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v5, v89, s[24:27], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v6, v90, s[24:27], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v7, v91, s[24:27], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v8, v18, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v9, v92, s[24:27], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v10, v93, s[24:27], 0 offen
	v_add_lshl_u32 v0, v34, s1, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v11, v94, s[24:27], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v12, v95, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v13, v96, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v14, v97, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 181
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9820
; TotalNumSgprs: 51
; NumVgprs: 181
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 51
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     181
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
