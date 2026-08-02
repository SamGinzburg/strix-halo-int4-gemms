	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v9, 7, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 6, v0
	v_and_b32_e32 v36, 8, v0
	v_and_b32_e32 v37, 32, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v10, 2, v0
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
	s_mov_b32 s34, 0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
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
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v1, 2, v0
	s_mov_b32 s11, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v11, 62, v1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v1, s35, v11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s17
	s_add_i32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s7
	s_mul_i32 s17, s4, s16
	s_ashr_i32 s22, s10, 31
	s_sub_i32 s5, s5, s17
	s_add_i32 s17, s4, 1
	s_sub_i32 s18, s5, s16
	s_cmp_ge_u32 s5, s16
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v12, v9, 4, v1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s17, s4
	s_cselect_b32 s5, s18, s5
	s_add_i32 s17, s4, 1
	s_cmp_ge_u32 s5, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s17, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s18, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s22
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s19, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s22
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s18, v11
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
	s_lshr_b32 s4, s4, 24
.Ltmp17:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s33, s16, v12
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
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s35, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[18:21], v3, s[20:23], 0 offen
	buffer_load_b128 v[22:25], v1, s[20:23], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s6, s19
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s35, 8, v2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v14, 2, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v4, s19, v3
	s_mov_b64 s[16:17], s[14:15]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s18, v14
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v15, v4, v14, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v5
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v4, s18, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x1ff
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s7, s18, 0x100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v5, s7, v11
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s19, v5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s35, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	s_clause 0x1
	buffer_load_b128 v[26:29], v2, s[20:23], 0 offen
	buffer_load_b128 v[30:33], v5, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v2, 0x80000000, v4, vcc_lo
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v5, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v53, v2, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s7, v14
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v7, 0x70, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 0x420, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v8, 48, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s7, v15
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v4, v3, 1, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v7, v5, v11
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v39, v10, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	v_lshlrev_b32_e32 v3, 3, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v40, v6, 10, v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v55, 0, v39
	v_lshlrev_b32_e32 v38, 6, v9
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 2, v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v54, v2, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v41, 0x90, v40
	v_xor_b32_e32 v42, 0x120, v40
	v_xor_b32_e32 v43, 0x1b0, v40
	v_xor_b32_e32 v44, 0x210, v40
	v_xor_b32_e32 v45, 0x330, v40
	v_xor_b32_e32 v46, 0x3a0, v40
	v_add_nc_u32_e32 v56, 0, v40
	v_add_nc_u32_e32 v57, 0, v41
	v_add_nc_u32_e32 v58, 0, v42
	v_add_nc_u32_e32 v59, 0, v43
	v_add_nc_u32_e32 v60, 0, v44
	v_add_nc_u32_e32 v61, 0, v45
	v_add_nc_u32_e32 v62, 0, v46
	v_lshlrev_b32_e32 v2, 5, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v13, 4, v4
	v_or_b32_e32 v16, 6, v4
	v_or_b32_e32 v17, 8, v4
	v_or_b32_e32 v5, 10, v4
	v_or_b32_e32 v6, 12, v4
	v_or_b32_e32 v7, 14, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x2ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v34, v22, v18, 0x5010400
	v_perm_b32 v22, v22, v18, 0x7030602
	v_perm_b32 v35, v23, v19, 0x5010400
	v_perm_b32 v23, v23, v19, 0x7030602
	v_perm_b32 v47, v24, v20, 0x5010400
	v_lshrrev_b32_e32 v50, 8, v34
	v_lshrrev_b32_e32 v51, 24, v34
	v_perm_b32 v24, v24, v20, 0x7030602
	v_perm_b32 v48, v25, v21, 0x5010400
	v_perm_b32 v49, v25, v21, 0x7030602
	v_and_b16 v18.l, 0xff, v34.l
	v_and_b16 v18.h, 0xff, v34.h
	v_lshrrev_b32_e32 v52, 8, v22
	v_lshlrev_b16 v34.l, 8, v50.l
	v_lshlrev_b16 v34.h, 8, v51.l
	v_lshrrev_b32_e32 v63, 24, v22
	v_lshrrev_b32_e32 v64, 8, v35
	v_lshrrev_b32_e32 v65, 24, v35
	v_lshrrev_b32_e32 v66, 8, v23
	v_lshrrev_b32_e32 v67, 24, v23
	v_lshrrev_b32_e32 v68, 8, v47
	v_lshrrev_b32_e32 v69, 24, v47
	v_lshrrev_b32_e32 v70, 8, v24
	v_lshrrev_b32_e32 v71, 24, v24
	v_lshrrev_b32_e32 v72, 8, v48
	v_lshrrev_b32_e32 v73, 24, v48
	v_lshrrev_b32_e32 v74, 8, v49
	v_lshrrev_b32_e32 v75, 24, v49
	v_and_b16 v19.l, 0xff, v22.l
	v_and_b16 v20.l, 0xff, v35.l
	v_lshlrev_b16 v35.l, 8, v52.l
	v_or_b16 v18.l, v18.l, v34.l
	v_or_b16 v18.h, v18.h, v34.h
	v_and_b16 v19.h, 0xff, v22.h
	v_and_b16 v20.h, 0xff, v35.h
	v_lshlrev_b16 v35.h, 8, v63.l
	v_and_b16 v21.l, 0xff, v23.l
	v_and_b16 v21.h, 0xff, v23.h
	v_and_b16 v22.l, 0xff, v47.l
	v_and_b16 v22.h, 0xff, v47.h
	v_and_b16 v23.l, 0xff, v24.l
	v_and_b16 v23.h, 0xff, v24.h
	v_and_b16 v24.l, 0xff, v48.l
	v_and_b16 v24.h, 0xff, v48.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v34, v30, v26, 0x5010400
	v_and_b16 v25.l, 0xff, v49.l
	v_and_b16 v25.h, 0xff, v49.h
	v_lshlrev_b16 v47.l, 8, v64.l
	v_lshlrev_b16 v47.h, 8, v65.l
	v_lshlrev_b16 v48.l, 8, v66.l
	v_lshlrev_b16 v48.h, 8, v67.l
	v_lshlrev_b16 v49.l, 8, v68.l
	v_lshlrev_b16 v49.h, 8, v69.l
	v_lshlrev_b16 v50.l, 8, v70.l
	v_lshlrev_b16 v50.h, 8, v71.l
	v_lshlrev_b16 v51.l, 8, v72.l
	v_lshlrev_b16 v51.h, 8, v73.l
	v_lshlrev_b16 v52.l, 8, v74.l
	v_lshlrev_b16 v52.h, 8, v75.l
	v_perm_b32 v26, v30, v26, 0x7030602
	v_perm_b32 v30, v31, v27, 0x5010400
	v_perm_b32 v27, v31, v27, 0x7030602
	v_perm_b32 v31, v32, v28, 0x5010400
	v_perm_b32 v28, v32, v28, 0x7030602
	v_perm_b32 v32, v33, v29, 0x5010400
	v_perm_b32 v29, v33, v29, 0x7030602
	v_or_b16 v19.l, v19.l, v35.l
	v_lshrrev_b32_e32 v33, 8, v34
	v_or_b16 v19.h, v19.h, v35.h
	v_lshrrev_b32_e32 v35, 24, v34
	v_or_b16 v20.l, v20.l, v47.l
	v_or_b16 v20.h, v20.h, v47.h
	v_or_b16 v21.l, v21.l, v48.l
	v_or_b16 v21.h, v21.h, v48.h
	v_or_b16 v22.l, v22.l, v49.l
	v_or_b16 v22.h, v22.h, v49.h
	v_or_b16 v23.l, v23.l, v50.l
	v_or_b16 v23.h, v23.h, v50.h
	v_or_b16 v24.l, v24.l, v51.l
	v_or_b16 v24.h, v24.h, v51.h
	v_or_b16 v25.l, v25.l, v52.l
	v_or_b16 v25.h, v25.h, v52.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v55, v53 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v56, v18
	ds_store_b16_d16_hi v56, v18 offset:64
	ds_store_b16 v57, v19
	ds_store_b16_d16_hi v57, v19 offset:64
	ds_store_b16 v58, v20
	ds_store_b16_d16_hi v58, v20 offset:64
	ds_store_b16 v59, v21
	ds_store_b16_d16_hi v59, v21 offset:64
	ds_store_b16 v60, v22
	ds_store_b16_d16_hi v60, v22 offset:64
	ds_store_b16 v56, v23 offset:640
	ds_store_b16_d16_hi v56, v23 offset:704
	ds_store_b16 v61, v24
	ds_store_b16_d16_hi v61, v24 offset:64
	ds_store_b16 v62, v25
	ds_store_b16_d16_hi v62, v25 offset:64
	v_and_b16 v18.l, 0xff, v34.l
	v_and_b16 v18.h, 0xff, v34.h
	v_lshrrev_b32_e32 v34, 8, v26
	v_lshrrev_b32_e32 v47, 24, v26
	v_and_b16 v20.l, 0xff, v30.l
	v_lshrrev_b32_e32 v48, 8, v30
	v_lshrrev_b32_e32 v49, 24, v30
	v_and_b16 v20.h, 0xff, v30.h
	v_lshrrev_b32_e32 v30, 8, v27
	v_lshrrev_b32_e32 v50, 24, v27
	v_and_b16 v22.l, 0xff, v31.l
	v_lshrrev_b32_e32 v51, 8, v31
	v_lshrrev_b32_e32 v52, 24, v31
	v_and_b16 v22.h, 0xff, v31.h
	v_lshrrev_b32_e32 v31, 8, v28
	v_lshrrev_b32_e32 v53, 24, v28
	v_lshrrev_b32_e32 v63, 8, v32
	v_lshrrev_b32_e32 v64, 24, v32
	v_lshrrev_b32_e32 v65, 8, v29
	v_lshrrev_b32_e32 v66, 24, v29
	v_and_b16 v19.l, 0xff, v26.l
	v_lshlrev_b16 v26.l, 8, v33.l
	v_and_b16 v19.h, 0xff, v26.h
	v_lshlrev_b16 v26.h, 8, v35.l
	v_and_b16 v21.l, 0xff, v27.l
	v_lshlrev_b16 v27.l, 8, v34.l
	v_and_b16 v21.h, 0xff, v27.h
	v_lshlrev_b16 v27.h, 8, v47.l
	v_and_b16 v23.l, 0xff, v28.l
	v_and_b16 v23.h, 0xff, v28.h
	v_and_b16 v24.l, 0xff, v32.l
	v_and_b16 v24.h, 0xff, v32.h
	v_and_b16 v25.l, 0xff, v29.l
	v_and_b16 v25.h, 0xff, v29.h
	v_lshlrev_b16 v28.l, 8, v48.l
	v_lshlrev_b16 v28.h, 8, v49.l
	v_lshlrev_b16 v29.l, 8, v30.l
	v_lshlrev_b16 v29.h, 8, v50.l
	v_lshlrev_b16 v30.l, 8, v51.l
	v_lshlrev_b16 v30.h, 8, v52.l
	v_lshlrev_b16 v31.l, 8, v31.l
	v_lshlrev_b16 v31.h, 8, v53.l
	v_lshlrev_b16 v32.l, 8, v63.l
	v_lshlrev_b16 v32.h, 8, v64.l
	v_lshlrev_b16 v33.l, 8, v65.l
	v_lshlrev_b16 v33.h, 8, v66.l
	v_or_b16 v18.l, v18.l, v26.l
	v_or_b16 v18.h, v18.h, v26.h
	v_or_b16 v19.l, v19.l, v27.l
	v_or_b16 v19.h, v19.h, v27.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v20.l, v20.l, v28.l
	v_or_b16 v20.h, v20.h, v28.h
	v_or_b16 v21.l, v21.l, v29.l
	v_or_b16 v21.h, v21.h, v29.h
	v_or_b16 v22.l, v22.l, v30.l
	v_or_b16 v22.h, v22.h, v30.h
	v_or_b16 v23.l, v23.l, v31.l
	v_or_b16 v23.h, v23.h, v31.h
	v_or_b16 v24.l, v24.l, v32.l
	v_or_b16 v24.h, v24.h, v32.h
	v_or_b16 v25.l, v25.l, v33.l
	v_or_b16 v25.h, v25.h, v33.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v55, v54 offset:17408
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v56, v18 offset:8192
	ds_store_b16_d16_hi v56, v18 offset:8256
	ds_store_b16 v57, v19 offset:8192
	ds_store_b16_d16_hi v57, v19 offset:8256
	ds_store_b16 v58, v20 offset:8192
	ds_store_b16_d16_hi v58, v20 offset:8256
	ds_store_b16 v59, v21 offset:8192
	ds_store_b16_d16_hi v59, v21 offset:8256
	ds_store_b16 v60, v22 offset:8192
	ds_store_b16_d16_hi v60, v22 offset:8256
	ds_store_b16 v56, v23 offset:8832
	ds_store_b16_d16_hi v56, v23 offset:8896
	ds_store_b16 v61, v24 offset:8192
	ds_store_b16_d16_hi v61, v24 offset:8256
	ds_store_b16 v62, v25 offset:8192
	ds_store_b16_d16_hi v62, v25 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v32, v1, 6, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v48, 6, v9
	v_and_b32_e32 v49, 8, v0
	v_and_b32_e32 v50, 32, v0
	v_and_or_b32 v47, 0x1800, v2, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v35, 16, v32
	v_xor_b32_e32 v33, 32, v32
	v_xor_b32_e32 v34, 48, v32
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr47
.LBB0_3:                                ; %Flow15
	s_load_b64 s[4:5], s[0:1], 0x20
	v_or_b32_e32 v18, s6, v1
	s_ashr_i32 s1, s24, 8
	v_or_b32_e32 v30, s33, v4
	v_or_b32_e32 v29, s33, v8
	v_or_b32_e32 v28, s33, v13
	v_mul_lo_u32 v31, v18, s1
	v_or_b32_e32 v26, s33, v16
	v_or_b32_e32 v24, s33, v17
	v_or_b32_e32 v27, s33, v5
	v_or_b32_e32 v25, s33, v6
	v_or_b32_e32 v23, s33, v7
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v4, v0, 5, 1
	v_bfe_i32 v5, v0, 3, 1
	v_lshl_or_b32 v32, v1, 6, v3
	v_and_or_b32 v47, 0x1800, v2, v3
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v48, s35, v12
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v4, 0x420, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v35, 16, v32
	v_xor_b32_e32 v33, 32, v32
	v_xor_b32_e32 v34, 48, v32
	v_and_or_b32 v1, 0x210, v5, v4
	v_mov_b32_e32 v16, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_max_i32 s38, s1, 3
	v_xor_b32_e32 v1, v1, v47
	s_add_i32 s15, s7, 0x100
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_and_b32 s29, s17, 0xffff
	v_or_b32_e32 v49, v1, v38
	v_mov_b32_e32 v1, 0
	s_mov_b32 s28, s16
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s36, 0, 0x4400
	v_xor_b32_e32 v50, 16, v49
	v_xor_b32_e32 v51, 32, v49
	v_xor_b32_e32 v52, 48, v49
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v8, v1
	s_add_i32 s37, 0, 0x2000
	s_add_i32 s38, s38, -3
	s_mov_b32 s39, 1
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s40, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s41, s40, 8
	s_mov_b32 s0, s18
	s_mov_b32 s18, s7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s7, s15, s41
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s41, s0, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v53, s7, v14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s41, s41, 24
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v54, s7, v11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s0, s41
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v55, s7, v15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s42, s7, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s41, s0, 8
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e64 s0, s19, v53
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s42, s42, s33
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v54
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v56, s42, v12
	v_add_nc_u32_e32 v57, s42, v48
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v53, 0x80000000, v55, s0
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s41, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v54, v31, s41, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s41, s41, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v55, v30, s41, 1
	v_add_lshl_u32 v58, v29, s41, 1
	v_add_lshl_u32 v59, v28, s41, 1
	v_add_lshl_u32 v60, v26, s41, 1
	v_add_lshl_u32 v61, v24, s41, 1
	v_add_lshl_u32 v62, v27, s41, 1
	v_add_lshl_u32 v63, v25, s41, 1
	v_add_lshl_u32 v64, v23, s41, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v101, v53, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v53, 0x80000000, v57, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v54, 0x80000000, v54, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v55, 0x80000000, v55, s0
	v_cndmask_b32_e64 v57, 0x80000000, v58, s0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v58, 0x80000000, v59, s0
	v_cndmask_b32_e64 v59, 0x80000000, v60, s0
	v_cndmask_b32_e64 v60, 0x80000000, v61, s0
	v_cndmask_b32_e64 v69, 0x80000000, v62, s0
	v_cndmask_b32_e64 v70, 0x80000000, v63, s0
	v_cndmask_b32_e64 v71, 0x80000000, v64, s0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[61:64], v56, s[20:23], 0 offen
	buffer_load_b128 v[65:68], v53, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v102, v54, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v103, v55, s[28:31], 0 offen
	buffer_load_u16 v104, v57, s[28:31], 0 offen
	buffer_load_u16 v105, v58, s[28:31], 0 offen
	buffer_load_u16 v106, v59, s[28:31], 0 offen
	buffer_load_u16 v107, v60, s[28:31], 0 offen
	buffer_load_u16 v108, v69, s[28:31], 0 offen
	buffer_load_u16 v109, v70, s[28:31], 0 offen
	buffer_load_u16 v110, v71, s[28:31], 0 offen
	s_mov_b32 s0, s14
	s_mov_b32 s14, s36
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v53, s0, v32
	v_add_nc_u32_e32 v54, s0, v35
	s_mov_b32 s36, s34
	v_add_nc_u32_e32 v55, s0, v33
	v_add_nc_u32_e32 v56, s0, v34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v57, s36, v49
	v_add_nc_u32_e32 v58, s36, v50
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[69:72], v53
	ds_load_b128 v[73:76], v54
	ds_load_b128 v[77:80], v55
	ds_load_b128 v[81:84], v56
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[85:88], v57
	ds_load_b128 v[89:92], v58
	v_add_nc_u32_e32 v59, s36, v51
	v_add_nc_u32_e32 v60, s36, v52
	ds_load_b128 v[93:96], v59
	ds_load_b128 v[97:100], v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s39, 1
	s_mov_b32 s34, s37
	s_cmp_lt_i32 s0, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s39, s0, 0
	s_add_i32 s0, s40, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s36, s39, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s37, s39, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s41, s36, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s37, s37, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s36, s41, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s40, s38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[85:88], v[69:72], v[1:8] neg_lo:[1,1,0]
	s_mov_b32 s40, s0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v115, s37, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[89:92], v[73:76], v[53:60] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v117, s37, v45
	v_add_nc_u32_e32 v118, s37, v46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[93:96], v[77:80], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[97:100], v[81:84], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v70, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v71, v55
	v_cvt_f32_i32_e32 v72, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v73, v57
	v_cvt_f32_i32_e32 v74, v58
	v_cvt_f32_i32_e32 v75, v59
	v_cvt_f32_i32_e32 v76, v60
	v_cvt_f32_i32_e32 v69, v53
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(9)
	v_perm_b32 v54, v65, v61, 0x5010400
	v_perm_b32 v55, v65, v61, 0x7030602
	v_perm_b32 v56, v66, v62, 0x5010400
	v_perm_b32 v57, v66, v62, 0x7030602
	v_perm_b32 v58, v67, v63, 0x5010400
	v_perm_b32 v59, v67, v63, 0x7030602
	v_perm_b32 v60, v68, v64, 0x5010400
	v_perm_b32 v61, v68, v64, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v62, 16, v102
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v63, 16, v103
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v64, 16, v104
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v65, 16, v105
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v66, 16, v106
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v67, 16, v107
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v68, 16, v108
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v77, 16, v109
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v78, 16, v110
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v79, 8, v54
	v_lshrrev_b32_e32 v80, 24, v54
	v_lshrrev_b32_e32 v81, 8, v55
	v_lshrrev_b32_e32 v82, 24, v55
	v_lshrrev_b32_e32 v83, 8, v56
	v_and_b16 v53.l, 0xff, v54.l
	v_and_b16 v54.l, 0xff, v55.l
	v_and_b16 v55.l, 0xff, v56.l
	v_lshrrev_b32_e32 v84, 24, v56
	v_and_b16 v56.l, 0xff, v57.l
	v_lshrrev_b32_e32 v85, 8, v57
	v_lshrrev_b32_e32 v86, 24, v57
	v_and_b16 v57.l, 0xff, v58.l
	v_lshrrev_b32_e32 v87, 8, v58
	v_lshrrev_b32_e32 v88, 24, v58
	v_and_b16 v58.l, 0xff, v59.l
	v_lshrrev_b32_e32 v89, 8, v59
	v_lshrrev_b32_e32 v90, 24, v59
	v_and_b16 v59.l, 0xff, v60.l
	v_lshrrev_b32_e32 v91, 8, v60
	v_lshrrev_b32_e32 v92, 24, v60
	v_and_b16 v60.l, 0xff, v61.l
	v_lshrrev_b32_e32 v93, 8, v61
	v_lshrrev_b32_e32 v94, 24, v61
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v95, v62, v63
	v_mul_f32_e32 v96, v62, v64
	v_mul_f32_e32 v97, v62, v65
	v_mul_f32_e32 v98, v62, v66
	v_mul_f32_e32 v99, v62, v67
	v_mul_f32_e32 v100, v62, v68
	v_mul_f32_e32 v77, v62, v77
	v_mul_f32_e32 v78, v62, v78
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v61.l, 8, v79.l
	v_and_b16 v53.h, 0xff, v54.h
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.h, 0xff, v56.h
	v_and_b16 v56.h, 0xff, v57.h
	v_and_b16 v57.h, 0xff, v58.h
	v_and_b16 v58.h, 0xff, v59.h
	v_and_b16 v59.h, 0xff, v60.h
	v_and_b16 v60.h, 0xff, v61.h
	v_lshlrev_b16 v61.h, 8, v80.l
	v_lshlrev_b16 v62.l, 8, v81.l
	v_lshlrev_b16 v62.h, 8, v82.l
	v_lshlrev_b16 v63.l, 8, v83.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v16, v78, v76 :: v_dual_add_nc_u32 v111, s41, v39
	v_dual_fmac_f32 v17, v96, v70 :: v_dual_add_nc_u32 v112, s37, v40
	v_dual_fmac_f32 v22, v77, v75 :: v_dual_add_nc_u32 v113, s37, v41
	v_dual_fmac_f32 v19, v98, v72 :: v_dual_add_nc_u32 v114, s37, v42
	v_dual_fmac_f32 v21, v100, v74 :: v_dual_add_nc_u32 v116, s37, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v63.h, 8, v84.l
	v_lshlrev_b16 v64.l, 8, v85.l
	v_lshlrev_b16 v64.h, 8, v86.l
	v_lshlrev_b16 v65.l, 8, v87.l
	v_lshlrev_b16 v65.h, 8, v88.l
	v_lshlrev_b16 v66.l, 8, v89.l
	v_lshlrev_b16 v66.h, 8, v90.l
	v_lshlrev_b16 v67.l, 8, v91.l
	v_lshlrev_b16 v67.h, 8, v92.l
	v_lshlrev_b16 v68.l, 8, v93.l
	v_lshlrev_b16 v68.h, 8, v94.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v13, v95, v69 :: v_dual_fmac_f32 v18, v97, v71
	v_fmac_f32_e32 v20, v99, v73
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v53.l, v53.l, v61.l
	v_or_b16 v53.h, v53.h, v61.h
	v_or_b16 v54.l, v54.l, v62.l
	v_or_b16 v54.h, v54.h, v62.h
	v_or_b16 v55.l, v55.l, v63.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v111, v101 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v55.h, v55.h, v63.h
	v_or_b16 v56.l, v56.l, v64.l
	v_or_b16 v56.h, v56.h, v64.h
	v_or_b16 v57.l, v57.l, v65.l
	v_or_b16 v57.h, v57.h, v65.h
	v_or_b16 v58.l, v58.l, v66.l
	v_or_b16 v58.h, v58.h, v66.h
	v_or_b16 v59.l, v59.l, v67.l
	v_or_b16 v59.h, v59.h, v67.h
	v_or_b16 v60.l, v60.l, v68.l
	v_or_b16 v60.h, v60.h, v68.h
	ds_store_b16 v112, v53
	ds_store_b16_d16_hi v112, v53 offset:64
	ds_store_b16 v113, v54
	ds_store_b16_d16_hi v113, v54 offset:64
	ds_store_b16 v114, v55
	ds_store_b16_d16_hi v114, v55 offset:64
	ds_store_b16 v115, v56
	ds_store_b16_d16_hi v115, v56 offset:64
	ds_store_b16 v116, v57
	ds_store_b16_d16_hi v116, v57 offset:64
	ds_store_b16 v112, v58 offset:640
	ds_store_b16_d16_hi v112, v58 offset:704
	ds_store_b16 v117, v59
	ds_store_b16_d16_hi v117, v59 offset:64
	ds_store_b16 v118, v60
	ds_store_b16_d16_hi v118, v60 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v48, v38 :: v_dual_mov_b32 v49, v36
	v_mov_b32_e32 v50, v37
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s36, 0, 0x4400
	s_add_i32 s37, 0, 0x2000
.LBB0_8:                                ; %Flow16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e64 s0, 0, v49
	v_cmp_eq_u32_e32 vcc_lo, 0, v50
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v8, 0xf0, v0
	v_and_b32_e32 v1, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x210, 0, s0
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v11, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v14, 0
	v_or_b32_e32 v3, v2, v3
	v_mov_b32_e32 v2, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v7, v3, v47
	v_mov_b32_e32 v3, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v53, v7, v48
	v_mov_b32_e32 v7, 0
	v_xor_b32_e32 v54, 16, v53
	v_xor_b32_e32 v51, 32, v53
	v_xor_b32_e32 v52, 48, v53
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v3, s34, v54
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v7, s34, v53
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v11, s14, v35
	v_add_nc_u32_e32 v12, s14, v32
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v39, v36 :: v_dual_add_nc_u32 v14, s34, v52
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v38, v36
	v_mov_b32_e32 v40, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[3:6], v3
	ds_load_b128 v[44:47], v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[55:58], v11
	ds_load_b128 v[59:62], v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v42, v36 :: v_dual_add_nc_u32 v7, s34, v51
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v11, s14, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v41, v36 :: v_dual_add_nc_u32 v12, s14, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[63:66], v14
	ds_load_b128 v[67:70], v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[71:74], v11
	ds_load_b128 v[75:78], v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v43, v36
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[44:47], v[59:62], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[3:6], v[55:58], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[67:70], v[75:78], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[63:66], v[71:74], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v3, v37
	v_cvt_f32_i32_e32 v4, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v39
	v_cvt_f32_i32_e32 v7, v40
	v_cvt_f32_i32_e32 v11, v41
	v_cvt_f32_i32_e32 v12, v42
	v_cvt_f32_i32_e32 v14, v43
	v_cvt_f32_i32_e32 v5, v36
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s8, s18, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s8, s8, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s8, s18, s8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s8, s8, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s8, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v15, v31, s8, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s9, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s8, s8, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s9
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v36, v30, s8, 1
	v_add_lshl_u32 v37, v29, s8, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v38, v28, s8, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v40, v27, s8, 1
	v_add_lshl_u32 v39, v24, s8, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v42, v15, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v15, 0x80000000, v36 :: v_dual_cndmask_b32 v36, 0x80000000, v37
	v_dual_cndmask_b32 v37, 0x80000000, v38 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	v_add_lshl_u32 v38, v26, s8, 1
	v_add_lshl_u32 v41, v25, s8, 1
	v_add_lshl_u32 v43, v23, s8, 1
	s_and_b32 s17, s17, 0xffff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v50, 0x80000000, v43
	s_clause 0x7
	buffer_load_u16 v43, v15, s[16:19], 0 offen
	buffer_load_u16 v44, v36, s[16:19], 0 offen
	buffer_load_u16 v45, v37, s[16:19], 0 offen
	buffer_load_u16 v46, v38, s[16:19], 0 offen
	buffer_load_u16 v47, v39, s[16:19], 0 offen
	buffer_load_u16 v48, v40, s[16:19], 0 offen
	buffer_load_u16 v49, v41, s[16:19], 0 offen
	buffer_load_u16 v50, v50, s[16:19], 0 offen
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v41, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v2, s37, v54
	v_add_nc_u32_e32 v15, s37, v53
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v35, s36, v35
	v_add_nc_u32_e32 v32, s36, v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v36, s37, v52
	ds_load_b128 v[52:55], v2
	ds_load_b128 v[56:59], v15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[60:63], v35
	ds_load_b128 v[64:67], v32
	v_add_nc_u32_e32 v15, s36, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v34, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v2, s37, v51
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v32, s36, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v38, v34
	v_mov_b32_e32 v39, v34
	v_mov_b32_e32 v41, v34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[68:71], v36
	ds_load_b128 v[72:75], v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[76:79], v15
	ds_load_b128 v[80:83], v32
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v36, v34
	v_mov_b32_e32 v37, v34
	v_mov_b32_e32 v40, v34
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[56:59], v[64:67], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[52:55], v[60:63], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[72:75], v[80:83], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[34:41], v[68:71], v[76:79], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v2, v34
	v_cvt_f32_i32_e32 v15, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s8, s7, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s8, s8, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s7, s7, s8
	v_mov_b16_e32 v32.l, 0
	s_ashr_i32 s7, s7, 8
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v32.h, v42.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s7, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v31, v31, s7, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s7, s7, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v30, v30, s7, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v29, v29, s7, 1
	v_add_lshl_u32 v28, v28, s7, 1
	v_add_lshl_u32 v26, v26, s7, 1
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v24, v24, s7, 1
	v_add_lshl_u32 v27, v27, s7, 1
	v_add_lshl_u32 v25, v25, s7, 1
	v_add_lshl_u32 v23, v23, s7, 1
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_lshlrev_b32 v8, 1, v8
	s_clause 0x7
	buffer_load_u16 v30, v30, s[16:19], 0 offen
	buffer_load_u16 v29, v29, s[16:19], 0 offen
	buffer_load_u16 v28, v28, s[16:19], 0 offen
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v27, v27, s[16:19], 0 offen
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v33.h, v50.l
	v_mov_b16_e32 v34.h, v49.l
	v_mov_b16_e32 v35.h, v48.l
	v_mov_b16_e32 v42.h, v47.l
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_bfe_i32 v48, v0, 7, 1
	v_lshrrev_b32_e32 v49, 7, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v33.l, v32.l
	v_mov_b16_e32 v34.l, v32.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v47, 0x7f, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v35.l, v32.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v33, v32, v33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v43.h, v46.l
	v_mov_b16_e32 v46.h, v43.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v35, v32, v35 :: v_dual_and_b32 v0, 28, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v50, 0x1040, 0, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v43.l, v32.l
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v8, v9, 2, v8
	v_and_b32_e32 v48, 0x204, v48
	v_and_or_b32 v0, 0x1c0, v10, v0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v44.h, v45.l
	v_mov_b16_e32 v45.h, v44.l
	v_mov_b16_e32 v42.l, v32.l
	v_mov_b16_e32 v44.l, v32.l
	v_mov_b16_e32 v45.l, v32.l
	v_mov_b16_e32 v46.l, v32.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v43, v32, v43
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v8, v8, v50
	v_xor_b32_e32 v0, v0, v48
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v34, v32, v34
	v_mul_f32_e32 v44, v32, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v43, v6, v19
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v8, v9, 9, v8
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v42, v32, v42
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v0, v1, 5, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v45, v32, v45
	v_mul_f32_e32 v32, v32, v46
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v33, v14, v16
	v_fma_f32 v12, v34, v12, v22
	v_fma_f32 v11, v35, v11, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v19, v6, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v33, 0x1040, v0, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v16, v14, s2
	v_cndmask_b32_e64 v12, v22, v12, s2
	v_cndmask_b32_e64 v11, v21, v11, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v14, v8, 4, 0
	v_xad_u32 v21, 0x408, v0, 0
	v_xad_u32 v16, v8, 8, 0
	v_xad_u32 v22, 0x810, v0, 0
	v_xad_u32 v34, 0x1448, v0, 0
	v_xad_u32 v1, v8, 16, 0
	v_xad_u32 v35, 0x1850, v0, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v19, v8, 24, 0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	v_mul_lo_u32 v49, s35, v49
	s_mul_i32 s1, s6, s35
	s_mul_i32 s8, s35, 6
	s_add_i32 s1, s1, s33
	s_lshl_b32 s0, s35, 1
	s_mul_i32 s9, s35, 10
	s_mul_i32 s10, s35, 12
	s_mul_i32 s11, s35, 14
	v_add3_u32 v10, s1, v47, v49
	s_lshl_b32 s1, s35, 2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	s_and_b32 s5, s5, 0xffff
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v44, v4, v18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v18, v4, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v29, 16, v29
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v32, v5, v13
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v32, 0xc18, v0, 0
	v_xad_u32 v18, v8, 20, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v29, v31, v29
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v30, v31, v30 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v13, v5, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v13, 0, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v42, v7, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v31, v27
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v28, v31, v28 :: v_dual_lshlrev_b32 v25, 16, v25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v20, v7, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v20, 0, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v45, v3, v17
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v31, v25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v26, v31, v26 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v17, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v30, v2, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v31, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v28, v36, v4
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v24, v31, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v29, v15, v3
	v_fma_f32 v26, v26, v37, v6
	v_fma_f32 v27, v27, v39, v11
	v_fma_f32 v25, v25, v40, v12
	v_fma_f32 v24, v24, v38, v7
	v_fma_f32 v23, v23, v41, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v5, v2, s3
	v_cndmask_b32_e64 v3, v3, v15, s3
	v_cndmask_b32_e64 v4, v4, v28, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v17, v8, 12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v6, v26, s3
	v_cndmask_b32_e64 v6, v7, v24, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v8, v8, 28, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v11, v27, s3
	v_cndmask_b32_e64 v11, v12, v25, s3
	v_cndmask_b32_e64 v9, v9, v23, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b32 v13, v2
	ds_store_b32 v14, v3
	ds_store_b32 v16, v4
	ds_store_b32 v17, v5
	ds_store_b32 v1, v6
	ds_store_b32 v18, v7
	ds_store_b32 v19, v11
	ds_store_b32 v8, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v20
	ds_load_b32 v2, v21
	ds_load_b32 v3, v22
	v_xad_u32 v0, 0x1c58, v0, 0
	ds_load_b32 v4, v32
	ds_load_b32 v5, v33
	ds_load_b32 v6, v34
	ds_load_b32 v7, v35
	ds_load_b32 v0, v0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_lshl_b32 s2, s35, 3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v8, 2, v10
	v_add_lshl_u32 v9, v10, s0, 2
	v_add_lshl_u32 v12, v10, s8, 2
	v_add_lshl_u32 v11, v10, s1, 2
	v_add_lshl_u32 v13, v10, s2, 2
	v_add_lshl_u32 v14, v10, s9, 2
	v_add_lshl_u32 v15, v10, s10, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v1, v8, s[4:7], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v2, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v3, v11, s[4:7], 0 offen
	v_add_lshl_u32 v1, v10, s11, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 43
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 119
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6748
; TotalNumSgprs: 45
; NumVgprs: 119
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 45
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     119
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
