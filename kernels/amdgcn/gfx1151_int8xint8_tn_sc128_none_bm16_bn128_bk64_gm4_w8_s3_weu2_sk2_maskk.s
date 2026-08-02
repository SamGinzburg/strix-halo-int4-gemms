	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s19, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v30, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v10, 7, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v11, 2, v0
	v_and_b32_e32 v25, 15, v0
	v_or_b32_e32 v33, 0x3f0, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v31, 62, v30
	v_and_b32_e32 v35, 32, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v55, 0, v11
	s_mov_b32 s36, 0
	v_and_b32_e32 v34, 8, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
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
	s_lshl_b32 s6, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s8, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 351 20 is_stmt 0              ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 352 29 is_stmt 1              ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s16, s7
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v1, s35, v31
	s_mov_b32 s11, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s16
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v32, v10, 4, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s17, s17, s10
	s_mul_hi_u32 s4, s10, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s4
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s7
	s_mul_i32 s17, s4, s16
	s_ashr_i32 s22, s10, 31
	s_sub_i32 s5, s5, s17
	s_add_i32 s17, s4, 1
	s_sub_i32 s18, s5, s16
	s_cmp_ge_u32 s5, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s17, s4
	s_cselect_b32 s5, s18, s5
	s_add_i32 s17, s4, 1
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s17, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s18, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s22
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s19, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s22
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s18, v31
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s3, s7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s4, s5, 31
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s35, s18
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s3, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s4, s4, 25
.Ltmp17:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s33, s16, v32
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s24, s5, s4
.Ltmp19:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v1
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s6, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s35, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s18, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s10
	v_cndmask_b32_e32 v3, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_and_b32 s21, s21, 0xffff
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v4, 6, v0
	s_clause 0x1
	buffer_load_b128 v[14:17], v3, s[20:23], 0 offen
	buffer_load_b128 v[18:21], v1, s[20:23], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s34, v30
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 12, v11
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s35, 7, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s7, s18, 0x80
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v9, v1, v3, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s7, v31
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s16, s34, s18
	v_lshlrev_b32_e32 v36, 6, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v1, s16, v9
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s19, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s35, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x1
	buffer_load_b128 v[26:29], v2, s[20:23], 0 offen
	buffer_load_b128 v[44:47], v3, s[20:23], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v53, v1, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s7, v30
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s34, 7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v1, s16, s4, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x420, v3
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s5, 0x17f
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_b32 v54, v1, s[8:11], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v1, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v5, 0x70, v1
	v_lshlrev_b32_e32 v1, 5, v0
	v_and_or_b32 v3, v2, 1, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v6, v31
	v_lshlrev_b32_e32 v2, 3, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v7, 2, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v37, v4, 10, v5
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 4, v3
	v_or_b32_e32 v12, 6, v3
	v_or_b32_e32 v13, 8, v3
	v_or_b32_e32 v4, 10, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v38, 0x90, v37
	v_xor_b32_e32 v39, 0x120, v37
	v_xor_b32_e32 v40, 0x1b0, v37
	v_xor_b32_e32 v41, 0x210, v37
	v_xor_b32_e32 v42, 0x330, v37
	v_xor_b32_e32 v43, 0x3a0, v37
	v_add_nc_u32_e32 v56, 0, v37
	v_add_nc_u32_e32 v57, 0, v38
	v_add_nc_u32_e32 v58, 0, v39
	v_add_nc_u32_e32 v59, 0, v40
	v_add_nc_u32_e32 v60, 0, v41
	v_add_nc_u32_e32 v61, 0, v42
	v_add_nc_u32_e32 v62, 0, v43
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v5, 12, v3
	v_or_b32_e32 v6, 14, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v22, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v23, v19, v15, 0x5010400
	v_perm_b32 v19, v19, v15, 0x7030602
	v_perm_b32 v48, v21, v17, 0x5010400
	v_lshrrev_b32_e32 v50, 8, v22
	v_lshrrev_b32_e32 v51, 24, v22
	v_lshrrev_b32_e32 v52, 8, v18
	v_lshrrev_b32_e32 v63, 24, v18
	v_perm_b32 v24, v20, v16, 0x5010400
	v_perm_b32 v20, v20, v16, 0x7030602
	v_perm_b32 v49, v21, v17, 0x7030602
	v_lshrrev_b32_e32 v64, 8, v23
	v_lshrrev_b32_e32 v65, 24, v23
	v_and_b16 v14.l, 0xff, v22.l
	v_and_b16 v14.h, 0xff, v22.h
	v_lshlrev_b16 v22.l, 8, v50.l
	v_lshlrev_b16 v22.h, 8, v51.l
	v_and_b16 v15.l, 0xff, v18.l
	v_and_b16 v15.h, 0xff, v18.h
	v_and_b16 v16.l, 0xff, v23.l
	v_and_b16 v16.h, 0xff, v23.h
	v_lshlrev_b16 v23.l, 8, v52.l
	v_lshlrev_b16 v23.h, 8, v63.l
	v_lshrrev_b32_e32 v66, 8, v19
	v_lshrrev_b32_e32 v67, 24, v19
	v_lshrrev_b32_e32 v72, 8, v48
	v_lshrrev_b32_e32 v73, 24, v48
	v_and_b16 v18.l, 0xff, v24.l
	v_lshrrev_b32_e32 v68, 8, v24
	v_lshrrev_b32_e32 v69, 24, v24
	v_and_b16 v18.h, 0xff, v24.h
	v_lshrrev_b32_e32 v70, 8, v20
	v_lshrrev_b32_e32 v71, 24, v20
	v_lshrrev_b32_e32 v74, 8, v49
	v_lshrrev_b32_e32 v75, 24, v49
	v_lshlrev_b16 v24.l, 8, v64.l
	v_lshlrev_b16 v24.h, 8, v65.l
	v_or_b16 v14.l, v14.l, v22.l
	v_or_b16 v14.h, v14.h, v22.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v22, v44, v26, 0x5010400
	v_or_b16 v15.l, v15.l, v23.l
	v_or_b16 v15.h, v15.h, v23.h
	v_perm_b32 v23, v44, v26, 0x7030602
	v_and_b16 v17.l, 0xff, v19.l
	v_and_b16 v17.h, 0xff, v19.h
	v_and_b16 v19.l, 0xff, v20.l
	v_and_b16 v19.h, 0xff, v20.h
	v_and_b16 v20.l, 0xff, v48.l
	v_and_b16 v20.h, 0xff, v48.h
	v_lshlrev_b16 v48.l, 8, v66.l
	v_lshlrev_b16 v48.h, 8, v67.l
	v_lshlrev_b16 v51.l, 8, v72.l
	v_lshlrev_b16 v51.h, 8, v73.l
	v_and_b16 v21.l, 0xff, v49.l
	v_and_b16 v21.h, 0xff, v49.h
	v_lshlrev_b16 v49.l, 8, v68.l
	v_lshlrev_b16 v49.h, 8, v69.l
	v_lshlrev_b16 v50.l, 8, v70.l
	v_lshlrev_b16 v50.h, 8, v71.l
	v_lshlrev_b16 v52.l, 8, v74.l
	v_lshlrev_b16 v52.h, 8, v75.l
	v_or_b16 v16.l, v16.l, v24.l
	v_or_b16 v16.h, v16.h, v24.h
	v_perm_b32 v24, v45, v27, 0x5010400
	v_perm_b32 v26, v45, v27, 0x7030602
	v_perm_b32 v27, v46, v28, 0x5010400
	v_perm_b32 v28, v46, v28, 0x7030602
	v_perm_b32 v44, v47, v29, 0x5010400
	v_perm_b32 v29, v47, v29, 0x7030602
	v_lshrrev_b32_e32 v45, 8, v22
	v_lshrrev_b32_e32 v46, 24, v22
	v_lshrrev_b32_e32 v47, 8, v23
	v_or_b16 v17.l, v17.l, v48.l
	v_or_b16 v17.h, v17.h, v48.h
	v_or_b16 v20.l, v20.l, v51.l
	v_or_b16 v20.h, v20.h, v51.h
	v_lshrrev_b32_e32 v48, 24, v23
	v_or_b16 v18.l, v18.l, v49.l
	v_or_b16 v18.h, v18.h, v49.h
	v_or_b16 v19.l, v19.l, v50.l
	v_or_b16 v19.h, v19.h, v50.h
	v_or_b16 v21.l, v21.l, v52.l
	v_or_b16 v21.h, v21.h, v52.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v55, v53 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v56, v14
	ds_store_b16_d16_hi v56, v14 offset:64
	ds_store_b16 v57, v15
	ds_store_b16_d16_hi v57, v15 offset:64
	ds_store_b16 v58, v16
	ds_store_b16_d16_hi v58, v16 offset:64
	ds_store_b16 v59, v17
	ds_store_b16_d16_hi v59, v17 offset:64
	ds_store_b16 v60, v18
	ds_store_b16_d16_hi v60, v18 offset:64
	ds_store_b16 v56, v19 offset:640
	ds_store_b16_d16_hi v56, v19 offset:704
	ds_store_b16 v61, v20
	ds_store_b16_d16_hi v61, v20 offset:64
	ds_store_b16 v62, v21
	ds_store_b16_d16_hi v62, v21 offset:64
	v_lshrrev_b32_e32 v49, 8, v24
	v_lshrrev_b32_e32 v50, 24, v24
	v_lshrrev_b32_e32 v51, 8, v26
	v_lshrrev_b32_e32 v52, 24, v26
	v_lshrrev_b32_e32 v53, 8, v27
	v_lshrrev_b32_e32 v63, 24, v27
	v_lshrrev_b32_e32 v64, 8, v28
	v_lshrrev_b32_e32 v65, 24, v28
	v_and_b16 v20.l, 0xff, v44.l
	v_lshrrev_b32_e32 v66, 8, v44
	v_lshrrev_b32_e32 v67, 24, v44
	v_and_b16 v20.h, 0xff, v44.h
	v_lshrrev_b32_e32 v44, 8, v29
	v_lshrrev_b32_e32 v68, 24, v29
	v_and_b16 v14.l, 0xff, v22.l
	v_lshlrev_b16 v22.l, 8, v45.l
	v_and_b16 v14.h, 0xff, v22.h
	v_lshlrev_b16 v22.h, 8, v46.l
	v_and_b16 v15.l, 0xff, v23.l
	v_lshlrev_b16 v23.l, 8, v47.l
	v_and_b16 v15.h, 0xff, v23.h
	v_lshlrev_b16 v23.h, 8, v48.l
	v_and_b16 v16.l, 0xff, v24.l
	v_and_b16 v16.h, 0xff, v24.h
	v_and_b16 v17.l, 0xff, v26.l
	v_and_b16 v17.h, 0xff, v26.h
	v_and_b16 v18.l, 0xff, v27.l
	v_and_b16 v18.h, 0xff, v27.h
	v_and_b16 v19.l, 0xff, v28.l
	v_and_b16 v19.h, 0xff, v28.h
	v_and_b16 v21.l, 0xff, v29.l
	v_and_b16 v21.h, 0xff, v29.h
	v_lshlrev_b16 v24.l, 8, v49.l
	v_lshlrev_b16 v24.h, 8, v50.l
	v_lshlrev_b16 v26.l, 8, v51.l
	v_lshlrev_b16 v26.h, 8, v52.l
	v_lshlrev_b16 v27.l, 8, v53.l
	v_lshlrev_b16 v27.h, 8, v63.l
	v_lshlrev_b16 v28.l, 8, v64.l
	v_lshlrev_b16 v28.h, 8, v65.l
	v_lshlrev_b16 v29.l, 8, v66.l
	v_lshlrev_b16 v29.h, 8, v67.l
	v_lshlrev_b16 v44.l, 8, v44.l
	v_lshlrev_b16 v44.h, 8, v68.l
	v_or_b16 v14.l, v14.l, v22.l
	v_or_b16 v14.h, v14.h, v22.h
	v_or_b16 v15.l, v15.l, v23.l
	v_or_b16 v15.h, v15.h, v23.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v16.l, v16.l, v24.l
	v_or_b16 v16.h, v16.h, v24.h
	v_or_b16 v17.l, v17.l, v26.l
	v_or_b16 v17.h, v17.h, v26.h
	v_or_b16 v18.l, v18.l, v27.l
	v_or_b16 v18.h, v18.h, v27.h
	v_or_b16 v19.l, v19.l, v28.l
	v_or_b16 v19.h, v19.h, v28.h
	v_or_b16 v20.l, v20.l, v29.l
	v_or_b16 v20.h, v20.h, v29.h
	v_or_b16 v21.l, v21.l, v44.l
	v_or_b16 v21.h, v21.h, v44.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v55, v54 offset:17408
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v56, v14 offset:8192
	ds_store_b16_d16_hi v56, v14 offset:8256
	ds_store_b16 v57, v15 offset:8192
	ds_store_b16_d16_hi v57, v15 offset:8256
	ds_store_b16 v58, v16 offset:8192
	ds_store_b16_d16_hi v58, v16 offset:8256
	ds_store_b16 v59, v17 offset:8192
	ds_store_b16_d16_hi v59, v17 offset:8256
	ds_store_b16 v60, v18 offset:8192
	ds_store_b16_d16_hi v60, v18 offset:8256
	ds_store_b16 v56, v19 offset:8832
	ds_store_b16_d16_hi v56, v19 offset:8896
	ds_store_b16 v61, v20 offset:8192
	ds_store_b16_d16_hi v61, v20 offset:8256
	ds_store_b16 v62, v21 offset:8192
	ds_store_b16_d16_hi v62, v21 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v45, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v46, 6, v10
	v_and_b32_e32 v47, 8, v0
	v_and_b32_e32 v48, 32, v0
	v_and_or_b32 v44, 0x1800, v1, v2
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr44
.LBB0_3:                                ; %Flow15
	s_load_b64 s[4:5], s[0:1], 0x20
	v_or_b32_e32 v14, s6, v25
	s_ashr_i32 s1, s24, 7
	v_or_b32_e32 v28, s33, v3
	v_or_b32_e32 v27, s33, v7
	v_or_b32_e32 v26, s33, v8
	v_mul_lo_u32 v29, v14, s1
	v_or_b32_e32 v23, s33, v12
	v_or_b32_e32 v21, s33, v13
	v_or_b32_e32 v24, s33, v4
	v_or_b32_e32 v22, s33, v5
	v_or_b32_e32 v20, s33, v6
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 5, 1
	v_bfe_i32 v4, v0, 3, 1
	v_and_or_b32 v44, 0x1800, v1, v2
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v45, s35, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v3, 0x420, v3
	v_mov_b32_e32 v13, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s39, s1, 3
	v_and_or_b32 v1, 0x210, v4, v3
	s_add_i32 s15, s7, 0x80
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_and_b32 s29, s17, 0xffff
	v_xor_b32_e32 v1, v1, v44
	s_mov_b32 s28, s16
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s37, 0, 0x4400
	s_add_i32 s38, 0, 0x2000
	v_or_b32_e32 v46, v1, v36
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v14, 0
	s_add_i32 s39, s39, -3
	s_mov_b32 s40, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v47, 16, v46
	v_xor_b32_e32 v48, 32, v46
	v_xor_b32_e32 v49, 48, v46
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v19, 0
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s41, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s42, s41, 7
	s_mov_b32 s0, s18
	s_mov_b32 s18, s7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s7, s15, s42
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s42, s0, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v52, s7, v30
	v_or_b32_e32 v53, s7, v31
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[50:51], null, s7, s34, v[9:10]
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s42, s42, 25
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s43, s7, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s0, s42
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s43, s43, s33
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v52
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s42, s0, 7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v51, s43, v32
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s19, v53
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v54, s43, v45
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s42, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v52, v29, s42, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s42, s42, s35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v53, v28, s42, 1
	v_add_lshl_u32 v55, v27, s42, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v56, v26, s42, 1
	v_add_lshl_u32 v57, v23, s42, 1
	v_add_lshl_u32 v58, v21, s42, 1
	v_add_lshl_u32 v59, v24, s42, 1
	v_add_lshl_u32 v60, v22, s42, 1
	v_add_lshl_u32 v61, v20, s42, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v54, 0x80000000, v54, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v98, v50, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v50, 0x80000000, v53 :: v_dual_cndmask_b32 v53, 0x80000000, v55
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v55, 0x80000000, v56 :: v_dual_cndmask_b32 v56, 0x80000000, v57
	v_cndmask_b32_e32 v67, 0x80000000, v60, vcc_lo
	v_dual_cndmask_b32 v57, 0x80000000, v58 :: v_dual_cndmask_b32 v66, 0x80000000, v59
	v_cndmask_b32_e32 v68, 0x80000000, v61, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[58:61], v51, s[20:23], 0 offen
	buffer_load_b128 v[62:65], v54, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v99, v52, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v100, v50, s[28:31], 0 offen
	buffer_load_u16 v101, v53, s[28:31], 0 offen
	buffer_load_u16 v102, v55, s[28:31], 0 offen
	buffer_load_u16 v103, v56, s[28:31], 0 offen
	buffer_load_u16 v104, v57, s[28:31], 0 offen
	buffer_load_u16 v105, v66, s[28:31], 0 offen
	buffer_load_u16 v106, v67, s[28:31], 0 offen
	buffer_load_u16 v107, v68, s[28:31], 0 offen
	s_mov_b32 s0, s14
	s_mov_b32 s14, s37
	s_mov_b32 s37, s36
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v50, s0, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v52, s37, v46
	v_add_nc_u32_e32 v53, s37, v47
	v_add_nc_u32_e32 v54, s37, v48
	v_add_nc_u32_e32 v55, s37, v49
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v51, s0, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[66:69], v52
	ds_load_b128 v[70:73], v53
	ds_load_b128 v[74:77], v54
	ds_load_b128 v[78:81], v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v52, v50 offset:208
	ds_load_u8 v53, v50 offset:240
	ds_load_u8 v54, v50 offset:224
	ds_load_u8 v55, v50 offset:192
	ds_load_u8 v56, v50 offset:144
	ds_load_u8 v57, v50 offset:176
	ds_load_u8 v82, v50 offset:160
	ds_load_u8 v83, v50 offset:128
	ds_load_u8 v84, v50 offset:80
	ds_load_u8 v85, v50 offset:112
	ds_load_u8 v86, v50 offset:96
	ds_load_u8 v87, v50 offset:64
	ds_load_u8 v88, v50
	ds_load_u8 v89, v50 offset:16
	ds_load_u8 v90, v50 offset:32
	ds_load_u8 v91, v50 offset:48
	ds_load_u8 v92, v50 offset:464
	ds_load_u8 v93, v50 offset:496
	ds_load_u8 v94, v50 offset:480
	ds_load_u8 v95, v50 offset:448
	ds_load_u8 v96, v50 offset:400
	ds_load_u8 v97, v50 offset:432
	ds_load_u8 v108, v50 offset:416
	ds_load_u8 v109, v50 offset:384
	ds_load_u8 v110, v50 offset:336
	ds_load_u8 v111, v50 offset:368
	ds_load_u8 v112, v50 offset:352
	ds_load_u8 v113, v50 offset:320
	ds_load_u8 v114, v50 offset:272
	ds_load_u8 v115, v50 offset:304
	ds_load_u8 v116, v50 offset:288
	ds_load_u8 v117, v50 offset:256
	ds_load_u8 v118, v50 offset:720
	ds_load_u8 v119, v50 offset:752
	ds_load_u8 v120, v50 offset:736
	ds_load_u8 v121, v50 offset:704
	ds_load_u8 v122, v50 offset:656
	ds_load_u8 v123, v50 offset:688
	ds_load_u8 v124, v50 offset:672
	ds_load_u8 v125, v50 offset:640
	ds_load_u8 v126, v50 offset:592
	ds_load_u8 v127, v50 offset:624
	ds_load_u8 v128, v50 offset:608
	ds_load_u8 v129, v50 offset:576
	ds_load_u8 v130, v50 offset:528
	ds_load_u8 v131, v50 offset:560
	ds_load_u8 v132, v50 offset:544
	ds_load_u8 v133, v50 offset:512
	ds_load_u8 v134, v50 offset:976
	ds_load_u8 v51, v51
	ds_load_u8 v135, v50 offset:992
	ds_load_u8 v136, v50 offset:960
	ds_load_u8 v137, v50 offset:912
	ds_load_u8 v138, v50 offset:944
	ds_load_u8 v139, v50 offset:928
	ds_load_u8 v140, v50 offset:896
	ds_load_u8 v141, v50 offset:848
	ds_load_u8 v142, v50 offset:880
	ds_load_u8 v143, v50 offset:864
	ds_load_u8 v144, v50 offset:832
	ds_load_u8 v145, v50 offset:784
	ds_load_u8 v146, v50 offset:816
	ds_load_u8 v147, v50 offset:800
	ds_load_u8 v50, v50 offset:768
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v52, v55, v52, 0xc0c0004
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v54, v83, v56, 0xc0c0004
	v_perm_b32 v55, v82, v57, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v56, v87, v84, 0xc0c0004
	v_perm_b32 v57, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v82, v88, v89, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v86, v90, v91, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v87, v95, v92, 0xc0c0004
	v_perm_b32 v88, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v90, v109, v96, 0xc0c0004
	v_perm_b32 v91, v108, v97, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v92, v113, v110, 0xc0c0004
	v_perm_b32 v93, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v94, v117, v114, 0xc0c0004
	v_perm_b32 v95, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v96, v121, v118, 0xc0c0004
	v_perm_b32 v97, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v114, v136, v134, 0xc0c0004
	v_perm_b32 v51, v135, v51, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v50, v145, 0xc0c0004
	v_perm_b32 v119, v147, v146, 0xc0c0004
	v_lshl_or_b32 v85, v53, 16, v52
	v_lshl_or_b32 v84, v55, 16, v54
	v_lshl_or_b32 v83, v57, 16, v56
	v_lshl_or_b32 v82, v86, 16, v82
	v_perm_b32 v108, v125, v122, 0xc0c0004
	v_perm_b32 v109, v124, v123, 0xc0c0004
	v_perm_b32 v110, v129, v126, 0xc0c0004
	v_perm_b32 v111, v128, v127, 0xc0c0004
	v_perm_b32 v112, v133, v130, 0xc0c0004
	v_perm_b32 v113, v132, v131, 0xc0c0004
	v_lshl_or_b32 v89, v88, 16, v87
	v_lshl_or_b32 v88, v91, 16, v90
	v_lshl_or_b32 v87, v93, 16, v92
	v_lshl_or_b32 v86, v95, 16, v94
	v_lshl_or_b32 v93, v97, 16, v96
	v_lshl_or_b32 v97, v51, 16, v114
	v_lshl_or_b32 v94, v119, 16, v50
	v_wmma_i32_16x16x16_iu8 v[50:57], v[66:69], v[82:85], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v115, v140, v137, 0xc0c0004
	v_perm_b32 v116, v139, v138, 0xc0c0004
	v_perm_b32 v117, v144, v141, 0xc0c0004
	v_perm_b32 v118, v143, v142, 0xc0c0004
	v_lshl_or_b32 v92, v109, 16, v108
	v_lshl_or_b32 v91, v111, 16, v110
	v_lshl_or_b32 v90, v113, 16, v112
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[86:89], v[50:57] neg_lo:[1,1,0]
	v_lshl_or_b32 v96, v116, 16, v115
	v_lshl_or_b32 v95, v118, 16, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s40, 1
	s_mov_b32 s36, s38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[50:57], v[74:77], v[90:93], v[50:57] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s0, 2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s40, s0, 0
	s_add_i32 s0, s41, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[50:57], v[78:81], v[94:97], v[50:57] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s37, s40, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s38, s40, 13
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s42, s37, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s38, s38, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v67, v51
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v70, v54
	v_cvt_f32_i32_e32 v71, v55
	v_cvt_f32_i32_e32 v72, v56
	v_cvt_f32_i32_e32 v73, v57
	v_cvt_f32_i32_e32 v66, v50
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s37, s42, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s41, s39
	s_mov_b32 s41, s0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v155, s38, v43
	s_waitcnt vmcnt(9)
	v_perm_b32 v51, v62, v58, 0x5010400
	v_perm_b32 v52, v62, v58, 0x7030602
	v_perm_b32 v53, v63, v59, 0x5010400
	v_perm_b32 v54, v63, v59, 0x7030602
	v_perm_b32 v55, v64, v60, 0x5010400
	v_perm_b32 v56, v64, v60, 0x7030602
	v_perm_b32 v57, v65, v61, 0x5010400
	v_perm_b32 v58, v65, v61, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v59, 16, v99
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v60, 16, v100
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v61, 16, v101
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v62, 16, v102
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v63, 16, v103
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v64, 16, v104
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v65, 16, v105
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v74, 16, v106
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v75, 16, v107
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v76, 8, v51
	v_lshrrev_b32_e32 v77, 24, v51
	v_lshrrev_b32_e32 v78, 8, v52
	v_lshrrev_b32_e32 v79, 24, v52
	v_lshrrev_b32_e32 v80, 8, v53
	v_and_b16 v50.l, 0xff, v51.l
	v_and_b16 v51.l, 0xff, v52.l
	v_and_b16 v52.l, 0xff, v53.l
	v_lshrrev_b32_e32 v81, 24, v53
	v_and_b16 v53.l, 0xff, v54.l
	v_lshrrev_b32_e32 v82, 8, v54
	v_lshrrev_b32_e32 v83, 24, v54
	v_and_b16 v54.l, 0xff, v55.l
	v_lshrrev_b32_e32 v84, 8, v55
	v_lshrrev_b32_e32 v85, 24, v55
	v_and_b16 v55.l, 0xff, v56.l
	v_lshrrev_b32_e32 v86, 8, v56
	v_lshrrev_b32_e32 v87, 24, v56
	v_and_b16 v56.l, 0xff, v57.l
	v_lshrrev_b32_e32 v88, 8, v57
	v_lshrrev_b32_e32 v89, 24, v57
	v_and_b16 v57.l, 0xff, v58.l
	v_lshrrev_b32_e32 v90, 8, v58
	v_lshrrev_b32_e32 v91, 24, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v92, v59, v60
	v_mul_f32_e32 v93, v59, v61
	v_mul_f32_e32 v94, v59, v62
	v_mul_f32_e32 v95, v59, v63
	v_mul_f32_e32 v96, v59, v64
	v_mul_f32_e32 v97, v59, v65
	v_mul_f32_e32 v74, v59, v74
	v_mul_f32_e32 v75, v59, v75
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v58.l, 8, v76.l
	v_and_b16 v50.h, 0xff, v51.h
	v_and_b16 v51.h, 0xff, v52.h
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.h, 0xff, v54.h
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.h, 0xff, v56.h
	v_and_b16 v56.h, 0xff, v57.h
	v_and_b16 v57.h, 0xff, v58.h
	v_lshlrev_b16 v58.h, 8, v77.l
	v_lshlrev_b16 v59.l, 8, v78.l
	v_lshlrev_b16 v59.h, 8, v79.l
	v_lshlrev_b16 v60.l, 8, v80.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v15, v94, v68 :: v_dual_add_nc_u32 v148, s42, v11
	v_dual_fmac_f32 v12, v92, v66 :: v_dual_add_nc_u32 v149, s38, v37
	v_dual_fmac_f32 v19, v74, v72 :: v_dual_add_nc_u32 v150, s38, v38
	v_dual_fmac_f32 v16, v95, v69 :: v_dual_add_nc_u32 v151, s38, v39
	v_dual_fmac_f32 v17, v96, v70 :: v_dual_add_nc_u32 v152, s38, v40
	v_dual_fmac_f32 v14, v93, v67 :: v_dual_add_nc_u32 v153, s38, v41
	v_dual_fmac_f32 v13, v75, v73 :: v_dual_add_nc_u32 v154, s38, v42
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v60.h, 8, v81.l
	v_lshlrev_b16 v61.l, 8, v82.l
	v_lshlrev_b16 v61.h, 8, v83.l
	v_lshlrev_b16 v62.l, 8, v84.l
	v_lshlrev_b16 v62.h, 8, v85.l
	v_lshlrev_b16 v63.l, 8, v86.l
	v_lshlrev_b16 v63.h, 8, v87.l
	v_lshlrev_b16 v64.l, 8, v88.l
	v_lshlrev_b16 v64.h, 8, v89.l
	v_lshlrev_b16 v65.l, 8, v90.l
	v_lshlrev_b16 v65.h, 8, v91.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v18, v97, v71
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v50.l, v50.l, v58.l
	v_or_b16 v50.h, v50.h, v58.h
	v_or_b16 v51.l, v51.l, v59.l
	v_or_b16 v51.h, v51.h, v59.h
	v_or_b16 v52.l, v52.l, v60.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b32 v148, v98 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v52.h, v52.h, v60.h
	v_or_b16 v53.l, v53.l, v61.l
	v_or_b16 v53.h, v53.h, v61.h
	v_or_b16 v54.l, v54.l, v62.l
	v_or_b16 v54.h, v54.h, v62.h
	v_or_b16 v55.l, v55.l, v63.l
	v_or_b16 v55.h, v55.h, v63.h
	v_or_b16 v56.l, v56.l, v64.l
	v_or_b16 v56.h, v56.h, v64.h
	v_or_b16 v57.l, v57.l, v65.l
	v_or_b16 v57.h, v57.h, v65.h
	ds_store_b16 v149, v50
	ds_store_b16_d16_hi v149, v50 offset:64
	ds_store_b16 v150, v51
	ds_store_b16_d16_hi v150, v51 offset:64
	ds_store_b16 v151, v52
	ds_store_b16_d16_hi v151, v52 offset:64
	ds_store_b16 v152, v53
	ds_store_b16_d16_hi v152, v53 offset:64
	ds_store_b16 v153, v54
	ds_store_b16_d16_hi v153, v54 offset:64
	ds_store_b16 v149, v55 offset:640
	ds_store_b16_d16_hi v149, v55 offset:704
	ds_store_b16 v154, v56
	ds_store_b16_d16_hi v154, v56 offset:64
	ds_store_b16 v155, v57
	ds_store_b16_d16_hi v155, v57 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v45, v33 :: v_dual_mov_b32 v46, v36
	v_dual_mov_b32 v47, v34 :: v_dual_mov_b32 v48, v35
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s37, 0, 0x4400
	s_add_i32 s38, 0, 0x2000
.LBB0_8:                                ; %Flow16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e64 s0, 0, v47
	v_cmp_eq_u32_e32 vcc_lo, 0, v48
	v_and_b32_e32 v1, 1, v0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x210, 0, s0
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v30, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v3, v2, v3
	v_mov_b32_e32 v2, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v8, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v7, v3, v44
	v_mov_b32_e32 v3, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v38, v7, v46
	v_mov_b32_e32 v7, 0
	v_xor_b32_e32 v41, 16, v38
	v_xor_b32_e32 v42, 32, v38
	v_xor_b32_e32 v43, 48, v38
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v7, s14, v25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v3, s36, v43
	v_add_nc_u32_e32 v30, s36, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v36, v7 offset:240
	ds_load_u8 v37, v7 offset:144
	ds_load_u8 v40, v7 offset:176
	ds_load_u8 v44, v7 offset:160
	ds_load_u8 v46, v7 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[3:6], v3
	ds_load_b128 v[30:33], v30
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v47, v7 offset:112
	ds_load_u8 v48, v7 offset:80
	ds_load_u8 v49, v7 offset:96
	ds_load_u8 v50, v7 offset:64
	ds_load_u8 v51, v7
	ds_load_u8 v52, v7 offset:16
	ds_load_u8 v53, v7 offset:32
	ds_load_u8 v58, v7 offset:48
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v40, v44, v40, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v46, v46, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v40, 16, v46
	v_mov_b32_e32 v46, 0
	ds_load_u8 v8, v7 offset:208
	ds_load_u8 v9, v7 offset:224
	ds_load_u8 v34, v7 offset:192
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v35, s36, v41
	v_add_nc_u32_e32 v39, s36, v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v62, v7 offset:336
	ds_load_u8 v63, v7 offset:352
	ds_load_u8 v64, v7 offset:320
	ds_load_u8 v65, v7 offset:272
	ds_load_u8 v66, v7 offset:304
	ds_load_u8 v67, v7 offset:288
	ds_load_u8 v68, v7 offset:256
	ds_load_u8 v70, v7 offset:496
	ds_load_u8 v71, v7 offset:400
	ds_load_u8 v72, v7 offset:432
	ds_load_u8 v73, v7 offset:416
	ds_load_u8 v74, v7 offset:384
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v62, v64, v62, 0xc0c0004
	v_perm_b32 v8, v34, v8, 0xc0c0004
	v_perm_b32 v9, v9, v36, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v64, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v61, v9, 16, v8
	v_perm_b32 v8, v50, v48, 0xc0c0004
	v_perm_b32 v9, v49, v47, 0xc0c0004
	v_perm_b32 v47, v51, v52, 0xc0c0004
	v_mov_b32_e32 v50, v46
	v_mov_b32_e32 v52, v46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[34:37], v35
	ds_load_b128 v[54:57], v39
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v39, s14, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v59, v9, 16, v8
	ds_load_u8 v8, v7 offset:368
	ds_load_u8 v40, v7 offset:464
	ds_load_u8 v44, v7 offset:480
	ds_load_u8 v69, v7 offset:448
	ds_load_u8 v39, v39
	v_perm_b32 v48, v53, v58, 0xc0c0004
	v_mov_b32_e32 v49, v46
	v_mov_b32_e32 v51, v46
	v_mov_b32_e32 v53, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v48, 16, v47
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v48, v46
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[54:57], v[58:61], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v44, v44, v70, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v69, v40, 0xc0c0004
	ds_load_u8 v40, v7 offset:592
	ds_load_u8 v69, v7 offset:608
	ds_load_u8 v75, v7 offset:576
	ds_load_u8 v76, v7 offset:528
	ds_load_u8 v77, v7 offset:560
	ds_load_u8 v78, v7 offset:544
	ds_load_u8 v79, v7 offset:512
	v_perm_b32 v70, v74, v71, 0xc0c0004
	v_perm_b32 v71, v73, v72, 0xc0c0004
	v_perm_b32 v8, v63, v8, 0xc0c0004
	v_perm_b32 v63, v68, v65, 0xc0c0004
	v_lshl_or_b32 v57, v44, 16, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v56, v71, 16, v70
	v_lshl_or_b32 v55, v8, 16, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v54, v64, 16, v63
	ds_load_u8 v8, v7 offset:752
	ds_load_u8 v9, v7 offset:720
	ds_load_u8 v44, v7 offset:736
	ds_load_u8 v58, v7 offset:704
	ds_load_u8 v59, v7 offset:656
	ds_load_u8 v60, v7 offset:672
	ds_load_u8 v61, v7 offset:640
	ds_load_u8 v62, v7 offset:688
	ds_load_u8 v63, v7 offset:624
	ds_load_u8 v64, v7 offset:976
	ds_load_u8 v65, v7 offset:992
	ds_load_u8 v66, v7 offset:960
	ds_load_u8 v67, v7 offset:912
	ds_load_u8 v68, v7 offset:944
	ds_load_u8 v70, v7 offset:928
	ds_load_u8 v71, v7 offset:896
	ds_load_u8 v72, v7 offset:880
	ds_load_u8 v73, v7 offset:848
	ds_load_u8 v74, v7 offset:864
	ds_load_u8 v80, v7 offset:832
	ds_load_u8 v81, v7 offset:784
	ds_load_u8 v82, v7 offset:816
	ds_load_u8 v83, v7 offset:800
	ds_load_u8 v7, v7 offset:768
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v9, v58, v9, 0xc0c0004
	v_perm_b32 v8, v44, v8, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v44, v61, v59, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v58, v60, v62, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v59, v69, v63, 0xc0c0004
	v_perm_b32 v40, v75, v40, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[46:53], v[34:37], v[54:57], v[46:53] neg_lo:[1,1,0]
	v_lshl_or_b32 v37, v8, 16, v9
	v_perm_b32 v61, v78, v77, 0xc0c0004
	v_perm_b32 v60, v79, v76, 0xc0c0004
	v_lshl_or_b32 v36, v58, 16, v44
	v_lshl_or_b32 v35, v59, 16, v40
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v66, v64, 0xc0c0004
	v_perm_b32 v9, v65, v39, 0xc0c0004
	v_lshl_or_b32 v34, v61, 16, v60
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v71, v67, 0xc0c0004
	v_perm_b32 v40, v70, v68, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v44, v80, v73, 0xc0c0004
	v_perm_b32 v54, v74, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v81, 0xc0c0004
	v_perm_b32 v55, v83, v82, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[46:53], v[30:33], v[34:37], v[46:53] neg_lo:[1,1,0]
	v_lshl_or_b32 v33, v9, 16, v8
	v_lshl_or_b32 v32, v40, 16, v39
	v_lshl_or_b32 v31, v54, 16, v44
	v_lshl_or_b32 v30, v55, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[3:6], v[30:33], v[46:53] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v48
	v_cvt_f32_i32_e32 v6, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v7, v50
	v_cvt_f32_i32_e32 v8, v51
	v_cvt_f32_i32_e32 v9, v52
	v_cvt_f32_i32_e32 v30, v53
	v_cvt_f32_i32_e32 v5, v46
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s8, s18, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s8, s8, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s8, s18, s8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s8, s8, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s8, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v31, v29, s8, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s8, s8, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s9, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v32, v28, s8, 1
	v_add_lshl_u32 v33, v27, s8, 1
	v_add_lshl_u32 v34, v26, s8, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s9
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v35, v23, s8, 1
	v_add_lshl_u32 v36, v21, s8, 1
	v_add_lshl_u32 v37, v24, s8, 1
	v_add_lshl_u32 v39, v22, s8, 1
	v_add_lshl_u32 v40, v20, s8, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_and_b32 s17, s17, 0xffff
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_mov_b32 v44, 0
	s_clause 0x7
	buffer_load_u16 v32, v32, s[16:19], 0 offen
	buffer_load_u16 v33, v33, s[16:19], 0 offen
	buffer_load_u16 v34, v34, s[16:19], 0 offen
	buffer_load_u16 v35, v35, s[16:19], 0 offen
	buffer_load_u16 v36, v36, s[16:19], 0 offen
	buffer_load_u16 v37, v37, s[16:19], 0 offen
	buffer_load_u16 v39, v39, s[16:19], 0 offen
	buffer_load_u16 v40, v40, s[16:19], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, s37, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v43, s38, v43
	v_add_nc_u32_e32 v42, s38, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v25, v2 offset:208
	ds_load_u8 v44, v2 offset:224
	ds_load_u8 v46, v2 offset:192
	ds_load_u8 v47, v2 offset:240
	ds_load_u8 v48, v2 offset:144
	ds_load_u8 v49, v2 offset:176
	ds_load_u8 v50, v2 offset:160
	ds_load_u8 v51, v2 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[52:55], v43
	ds_load_b128 v[56:59], v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v42, v2 offset:112
	ds_load_u8 v43, v2 offset:80
	ds_load_u8 v68, v2 offset:96
	ds_load_u8 v69, v2 offset:64
	ds_load_u8 v72, v2
	ds_load_u8 v73, v2 offset:16
	ds_load_u8 v74, v2 offset:32
	ds_load_u8 v75, v2 offset:48
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v44, v44, v47, 0xc0c0004
	v_perm_b32 v25, v46, v25, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v46, v51, v48, 0xc0c0004
	v_perm_b32 v47, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v71, v44, 16, v25
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v41, s38, v41
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v38, s38, v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v70, v47, 16, v46
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v69, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v74, v75, 0xc0c0004
	v_mov_b32_e32 v49, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[60:63], v41
	ds_load_b128 v[64:67], v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v51, v44 :: v_dual_add_nc_u32 v38, s37, v45
	v_perm_b32 v41, v68, v42, 0xc0c0004
	v_perm_b32 v45, v72, v73, 0xc0c0004
	v_mov_b32_e32 v47, v44
	v_mov_b32_e32 v48, v44
	v_mov_b32_e32 v50, v44
	v_lshl_or_b32 v69, v41, 16, v25
	v_lshl_or_b32 v68, v46, 16, v45
	v_mov_b32_e32 v45, v44
	ds_load_u8 v76, v2 offset:336
	ds_load_u8 v77, v2 offset:352
	ds_load_u8 v78, v2 offset:320
	ds_load_u8 v79, v2 offset:272
	ds_load_u8 v80, v2 offset:304
	ds_load_u8 v81, v2 offset:288
	ds_load_u8 v82, v2 offset:256
	ds_load_u8 v72, v2 offset:496
	ds_load_u8 v73, v2 offset:400
	ds_load_u8 v74, v2 offset:432
	ds_load_u8 v75, v2 offset:416
	ds_load_u8 v84, v2 offset:384
	ds_load_u8 v25, v2 offset:368
	ds_load_u8 v42, v2 offset:464
	ds_load_u8 v43, v2 offset:480
	ds_load_u8 v83, v2 offset:448
	ds_load_u8 v38, v38
	v_mov_b32_e32 v46, v44
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[68:71], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v43, v72, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v41, v83, v42, 0xc0c0004
	ds_load_u8 v42, v2 offset:592
	ds_load_u8 v83, v2 offset:608
	ds_load_u8 v85, v2 offset:576
	ds_load_u8 v86, v2 offset:528
	ds_load_u8 v87, v2 offset:560
	ds_load_u8 v88, v2 offset:544
	ds_load_u8 v89, v2 offset:512
	v_perm_b32 v72, v84, v73, 0xc0c0004
	v_perm_b32 v73, v75, v74, 0xc0c0004
	v_perm_b32 v74, v78, v76, 0xc0c0004
	v_perm_b32 v25, v77, v25, 0xc0c0004
	v_perm_b32 v75, v82, v79, 0xc0c0004
	v_perm_b32 v76, v81, v80, 0xc0c0004
	v_lshl_or_b32 v67, v43, 16, v41
	v_lshl_or_b32 v66, v73, 16, v72
	v_lshl_or_b32 v65, v25, 16, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v64, v76, 16, v75
	ds_load_u8 v25, v2 offset:752
	ds_load_u8 v41, v2 offset:720
	ds_load_u8 v43, v2 offset:736
	ds_load_u8 v68, v2 offset:704
	ds_load_u8 v69, v2 offset:656
	ds_load_u8 v70, v2 offset:672
	ds_load_u8 v71, v2 offset:640
	ds_load_u8 v72, v2 offset:688
	ds_load_u8 v73, v2 offset:624
	ds_load_u8 v74, v2 offset:976
	ds_load_u8 v75, v2 offset:992
	ds_load_u8 v76, v2 offset:960
	ds_load_u8 v77, v2 offset:912
	ds_load_u8 v78, v2 offset:944
	ds_load_u8 v79, v2 offset:928
	ds_load_u8 v80, v2 offset:896
	ds_load_u8 v81, v2 offset:880
	ds_load_u8 v82, v2 offset:848
	ds_load_u8 v84, v2 offset:864
	ds_load_u8 v90, v2 offset:832
	ds_load_u8 v91, v2 offset:784
	ds_load_u8 v92, v2 offset:816
	ds_load_u8 v93, v2 offset:800
	ds_load_u8 v2, v2 offset:768
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v41, v68, v41, 0xc0c0004
	v_perm_b32 v25, v43, v25, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v43, v71, v69, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v68, v70, v72, 0xc0c0004
	v_perm_b32 v42, v85, v42, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v69, v83, v73, 0xc0c0004
	v_perm_b32 v71, v88, v87, 0xc0c0004
	v_perm_b32 v70, v89, v86, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[64:67], v[44:51] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v25, 16, v41
	v_lshl_or_b32 v62, v68, 16, v43
	v_lshl_or_b32 v61, v69, 16, v42
	v_lshl_or_b32 v60, v71, 16, v70
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v25, v76, v74, 0xc0c0004
	v_perm_b32 v38, v75, v38, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v80, v77, 0xc0c0004
	v_perm_b32 v42, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v90, v82, 0xc0c0004
	v_perm_b32 v64, v84, v81, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v91, 0xc0c0004
	v_perm_b32 v65, v93, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[60:63], v[44:51] neg_lo:[1,1,0]
	v_lshl_or_b32 v59, v38, 16, v25
	v_lshl_or_b32 v58, v42, 16, v41
	v_lshl_or_b32 v57, v64, 16, v43
	v_lshl_or_b32 v56, v65, 16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[56:59], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s8, s7, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v31.h, v40.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s8, s8, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s7, s7, s8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s7, s7, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v32.h, v39.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s7, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v25, v29, s7, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s7, s7, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v28, v28, s7, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	v_mov_b16_e32 v29.l, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v27, v27, s7, 1
	v_add_lshl_u32 v26, v26, s7, 1
	v_add_lshl_u32 v23, v23, s7, 1
	v_add_lshl_u32 v21, v21, s7, 1
	v_add_lshl_u32 v24, v24, s7, 1
	v_add_lshl_u32 v22, v22, s7, 1
	v_add_lshl_u32 v20, v20, s7, 1
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	v_mov_b16_e32 v29.h, v31.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v31.l, v29.l
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_mul_f32 v31, v29, v31
	s_clause 0x7
	buffer_load_u16 v28, v28, s[16:19], 0 offen
	buffer_load_u16 v27, v27, s[16:19], 0 offen
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	buffer_load_u16 v21, v21, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	buffer_load_u16 v20, v20, s[16:19], 0 offen
	v_mov_b16_e32 v33.h, v37.l
	v_mov_b16_e32 v34.h, v36.l
	v_mov_b16_e32 v35.h, v35.l
	v_mov_b16_e32 v36.h, v34.l
	v_mov_b16_e32 v37.h, v33.l
	v_mov_b16_e32 v38.h, v32.l
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_bfe_i32 v40, v0, 7, 1
	v_lshrrev_b32_e32 v41, 7, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v32.l, v29.l
	v_mov_b16_e32 v33.l, v29.l
	v_mov_b16_e32 v34.l, v29.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v39, 0x7f, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v35.l, v29.l
	v_mov_b16_e32 v36.l, v29.l
	v_mov_b16_e32 v37.l, v29.l
	v_mov_b16_e32 v38.l, v29.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v40, 0x204, v40
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v32, v29, v32
	v_mul_f32_e32 v33, v29, v33
	v_mul_f32_e32 v34, v29, v34
	v_mul_f32_e32 v36, v29, v36
	v_mul_f32_e32 v37, v29, v37
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v42, 0x1040, 0, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v31, v30, v13
	v_fma_f32 v7, v34, v7, v17
	v_fma_f32 v8, v33, v8, v18
	v_fma_f32 v3, v37, v3, v14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v13, v30, s2
	v_cndmask_b32_e64 v7, v17, v7, s2
	v_cndmask_b32_e64 v8, v18, v8, s2
	v_cndmask_b32_e64 v3, v14, v3, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_barrier
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v41, s35, v41
	s_mul_i32 s1, s6, s35
	s_mul_i32 s8, s35, 6
	s_add_i32 s1, s1, s33
	s_lshl_b32 s0, s35, 1
	s_mul_i32 s9, s35, 10
	s_mul_i32 s10, s35, 12
	s_mul_i32 s11, s35, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	s_and_b32 s5, s5, 0xffff
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v35, v29, v35
	v_mul_f32_e32 v29, v29, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v35, v6, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v16, v6, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v36, v4, v15
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v43, 0x1e0, v0
	v_and_b32_e32 v0, 28, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v25, v28
	v_mul_f32_e32 v27, v25, v27
	v_mul_f32_e32 v26, v25, v26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v38, v10, 2, v43
	v_and_or_b32 v0, 0x1c0, v11, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v29, v5, v12
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v29, v38, v42
	v_xor_b32_e32 v0, v0, v40
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v20, v25, v20 :: v_dual_lshlrev_b32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v10, v10, 9, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v12, v5, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v0, v1, 5, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v21, v25, v21 :: v_dual_lshlrev_b32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v1, 0, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v32, v9, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v15, v4, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v24, v25, v24
	v_mul_f32_e32 v23, v25, v23
	v_mul_f32_e32 v22, v25, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v19, v9, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v19, 0, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v28, v2, v5
	v_fma_f32 v25, v27, v44, v3
	v_fma_f32 v26, v26, v46, v4
	v_fma_f32 v23, v23, v47, v6
	v_fma_f32 v21, v21, v48, v7
	v_fma_f32 v24, v24, v49, v8
	v_fma_f32 v22, v22, v50, v9
	v_fma_f32 v20, v20, v51, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v5, v2, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v12, v10, 4, 0
	v_xad_u32 v29, 0x408, v0, 0
	v_xad_u32 v31, 0xc18, v0, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v25, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v14, v10, 8, 0
	v_xad_u32 v30, 0x810, v0, 0
	v_xad_u32 v32, 0x1040, v0, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v26, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v15, v10, 12, 0
	v_xad_u32 v33, 0x1448, v0, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v6, v23, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v16, v10, 16, 0
	v_xad_u32 v34, 0x1850, v0, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v7, v21, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v17, v10, 20, 0
	v_xad_u32 v18, v10, 24, 0
	v_xad_u32 v10, v10, 28, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v8, v24, s3
	v_cndmask_b32_e64 v8, v9, v22, s3
	v_cndmask_b32_e64 v9, v13, v20, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b32 v1, v2
	ds_store_b32 v12, v3
	ds_store_b32 v14, v4
	ds_store_b32 v15, v5
	ds_store_b32 v16, v6
	ds_store_b32 v17, v7
	ds_store_b32 v18, v8
	ds_store_b32 v10, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v19
	ds_load_b32 v2, v29
	ds_load_b32 v3, v30
	v_xad_u32 v0, 0x1c58, v0, 0
	ds_load_b32 v4, v31
	ds_load_b32 v5, v32
	ds_load_b32 v6, v33
	ds_load_b32 v7, v34
	ds_load_b32 v0, v0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_add3_u32 v11, s1, v39, v41
	s_lshl_b32 s1, s35, 2
	s_lshl_b32 s2, s35, 3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v8, 2, v11
	v_add_lshl_u32 v9, v11, s0, 2
	v_add_lshl_u32 v12, v11, s8, 2
	v_add_lshl_u32 v10, v11, s1, 2
	v_add_lshl_u32 v13, v11, s2, 2
	v_add_lshl_u32 v14, v11, s9, 2
	v_add_lshl_u32 v15, v11, s10, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v1, v8, s[4:7], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v3, v10, s[4:7], 0 offen
	v_add_lshl_u32 v1, v11, s11, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v4, v12, s[4:7], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v5, v13, s[4:7], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v6, v14, s[4:7], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v7, v15, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v0, v1, s[4:7], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 156
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9792
; TotalNumSgprs: 46
; NumVgprs: 156
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 46
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     156
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
