	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s6, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s8, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v5, 7, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v6, 15, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v11, 6, v0
	v_and_b32_e32 v31, 8, v0
	v_and_b32_e32 v32, 32, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v2, 62, v2
	s_mov_b32 s33, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s9, s18, 15
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
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s10, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s16, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 351 20 is_stmt 0              ; generate_amdgcn.py:351:20
	s_min_i32 s17, s7, 4
	.loc	1 352 29 is_stmt 1              ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s7, s17
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s18, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_sub_i32 s10, 0, s7
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v5
	s_mov_b32 s11, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[3:4], null, s19, v2, v[1:2]
	.loc	1 353 13 is_stmt 1              ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s18, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s18
	s_mul_hi_u32 s4, s18, s10
	s_xor_b32 s10, s2, s17
	s_add_i32 s18, s18, s4
	s_ashr_i32 s30, s10, 31
	s_mul_hi_u32 s4, s5, s18
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s22, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s22, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s10
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s18, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s7, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s28, s4, s30
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s26, s6, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s5, s28, s30
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s7, v2
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s17, s5, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s3, s26, 31
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s19, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s5, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v7, s18, s4, v3
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s25, s6, 63
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s26, s26, s3
.Ltmp20:
	.loc	1 400 23 is_stmt 1              ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v4
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s31, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s25, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s19, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[17:20], v4, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v3, s[20:23], 0 offen
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v3, 2, v6
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s31, s6
	v_lshlrev_b32_e32 v33, 6, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s7, v3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v8, s6, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v9
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v8, v8, v3, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s25, 0x7f
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s24, s7, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s34, s19, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v10, s24, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s34, v7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v9, s7, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s6, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s19, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	s_clause 0x1
	buffer_load_b128 v[25:28], v7, s[20:23], 0 offen
	buffer_load_b128 v[42:45], v10, s[20:23], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v9, v0, 0, 1
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v10, 2, v0
	buffer_load_b32 v52, v7, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s24, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v14, 0x420, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s24, v8
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v8, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s25, 0xbf
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v12, 0x70, v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v13, 48, v8
	v_lshlrev_b32_e32 v8, 3, v11
	buffer_load_b32 v53, v7, s[8:11], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v9, v4, 1, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v12, v14, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v34, v10, v13
	v_lshlrev_b32_e32 v7, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v13, 2, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v35, v11, 10, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v54, 0, v34
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v14, 4, v9
	v_or_b32_e32 v15, 6, v9
	v_or_b32_e32 v16, 8, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v36, 0x90, v35
	v_xor_b32_e32 v37, 0x120, v35
	v_xor_b32_e32 v38, 0x1b0, v35
	v_xor_b32_e32 v39, 0x210, v35
	v_xor_b32_e32 v40, 0x330, v35
	v_xor_b32_e32 v41, 0x3a0, v35
	v_add_nc_u32_e32 v55, 0, v35
	v_add_nc_u32_e32 v56, 0, v36
	v_add_nc_u32_e32 v57, 0, v37
	v_add_nc_u32_e32 v58, 0, v38
	v_add_nc_u32_e32 v59, 0, v39
	v_add_nc_u32_e32 v60, 0, v40
	v_add_nc_u32_e32 v61, 0, v41
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v10, 10, v9
	v_or_b32_e32 v11, 12, v9
	v_or_b32_e32 v12, 14, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v29, v21, v17, 0x5010400
	v_perm_b32 v21, v21, v17, 0x7030602
	v_perm_b32 v30, v22, v18, 0x5010400
	v_perm_b32 v22, v22, v18, 0x7030602
	v_perm_b32 v46, v23, v19, 0x5010400
	v_lshrrev_b32_e32 v49, 8, v29
	v_lshrrev_b32_e32 v50, 24, v29
	v_perm_b32 v23, v23, v19, 0x7030602
	v_perm_b32 v47, v24, v20, 0x5010400
	v_perm_b32 v48, v24, v20, 0x7030602
	v_lshrrev_b32_e32 v51, 8, v21
	v_lshrrev_b32_e32 v62, 24, v21
	v_and_b16 v17.l, 0xff, v29.l
	v_and_b16 v17.h, 0xff, v29.h
	v_lshlrev_b16 v29.l, 8, v49.l
	v_lshlrev_b16 v29.h, 8, v50.l
	v_lshrrev_b32_e32 v63, 8, v30
	v_lshrrev_b32_e32 v64, 24, v30
	v_lshrrev_b32_e32 v65, 8, v22
	v_lshrrev_b32_e32 v66, 24, v22
	v_lshrrev_b32_e32 v67, 8, v46
	v_lshrrev_b32_e32 v68, 24, v46
	v_lshrrev_b32_e32 v69, 8, v23
	v_lshrrev_b32_e32 v70, 24, v23
	v_lshrrev_b32_e32 v71, 8, v47
	v_lshrrev_b32_e32 v72, 24, v47
	v_lshrrev_b32_e32 v73, 8, v48
	v_lshrrev_b32_e32 v74, 24, v48
	v_and_b16 v18.l, 0xff, v21.l
	v_and_b16 v18.h, 0xff, v21.h
	v_and_b16 v19.l, 0xff, v30.l
	v_and_b16 v19.h, 0xff, v30.h
	v_lshlrev_b16 v30.l, 8, v51.l
	v_lshlrev_b16 v30.h, 8, v62.l
	v_or_b16 v17.l, v17.l, v29.l
	v_or_b16 v17.h, v17.h, v29.h
	v_and_b16 v20.l, 0xff, v22.l
	v_and_b16 v20.h, 0xff, v22.h
	v_and_b16 v21.l, 0xff, v46.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v29, v42, v25, 0x5010400
	v_and_b16 v21.h, 0xff, v46.h
	v_and_b16 v22.l, 0xff, v23.l
	v_and_b16 v22.h, 0xff, v23.h
	v_and_b16 v23.l, 0xff, v47.l
	v_and_b16 v23.h, 0xff, v47.h
	v_and_b16 v24.l, 0xff, v48.l
	v_and_b16 v24.h, 0xff, v48.h
	v_lshlrev_b16 v46.l, 8, v63.l
	v_lshlrev_b16 v46.h, 8, v64.l
	v_lshlrev_b16 v47.l, 8, v65.l
	v_lshlrev_b16 v47.h, 8, v66.l
	v_lshlrev_b16 v48.l, 8, v67.l
	v_lshlrev_b16 v48.h, 8, v68.l
	v_lshlrev_b16 v49.l, 8, v69.l
	v_lshlrev_b16 v49.h, 8, v70.l
	v_lshlrev_b16 v50.l, 8, v71.l
	v_lshlrev_b16 v50.h, 8, v72.l
	v_lshlrev_b16 v51.l, 8, v73.l
	v_lshlrev_b16 v51.h, 8, v74.l
	v_perm_b32 v25, v42, v25, 0x7030602
	v_or_b16 v18.l, v18.l, v30.l
	v_or_b16 v18.h, v18.h, v30.h
	v_perm_b32 v30, v43, v26, 0x5010400
	v_perm_b32 v26, v43, v26, 0x7030602
	v_perm_b32 v42, v44, v27, 0x5010400
	v_perm_b32 v27, v44, v27, 0x7030602
	v_perm_b32 v43, v45, v28, 0x5010400
	v_perm_b32 v28, v45, v28, 0x7030602
	v_lshrrev_b32_e32 v44, 8, v29
	v_lshrrev_b32_e32 v45, 24, v29
	v_or_b16 v19.l, v19.l, v46.l
	v_or_b16 v19.h, v19.h, v46.h
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
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v54, v52 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v55, v17
	ds_store_b16_d16_hi v55, v17 offset:64
	ds_store_b16 v56, v18
	ds_store_b16_d16_hi v56, v18 offset:64
	ds_store_b16 v57, v19
	ds_store_b16_d16_hi v57, v19 offset:64
	ds_store_b16 v58, v20
	ds_store_b16_d16_hi v58, v20 offset:64
	ds_store_b16 v59, v21
	ds_store_b16_d16_hi v59, v21 offset:64
	ds_store_b16 v55, v22 offset:640
	ds_store_b16_d16_hi v55, v22 offset:704
	ds_store_b16 v60, v23
	ds_store_b16_d16_hi v60, v23 offset:64
	ds_store_b16 v61, v24
	ds_store_b16_d16_hi v61, v24 offset:64
	v_and_b16 v17.l, 0xff, v29.l
	v_and_b16 v17.h, 0xff, v29.h
	v_lshrrev_b32_e32 v29, 8, v25
	v_lshrrev_b32_e32 v46, 24, v25
	v_and_b16 v19.l, 0xff, v30.l
	v_lshrrev_b32_e32 v47, 8, v30
	v_lshrrev_b32_e32 v48, 24, v30
	v_and_b16 v19.h, 0xff, v30.h
	v_lshrrev_b32_e32 v30, 8, v26
	v_lshrrev_b32_e32 v49, 24, v26
	v_and_b16 v21.l, 0xff, v42.l
	v_lshrrev_b32_e32 v50, 8, v42
	v_lshrrev_b32_e32 v51, 24, v42
	v_and_b16 v21.h, 0xff, v42.h
	v_lshrrev_b32_e32 v42, 8, v27
	v_lshrrev_b32_e32 v52, 24, v27
	v_and_b16 v23.l, 0xff, v43.l
	v_lshrrev_b32_e32 v62, 8, v43
	v_lshrrev_b32_e32 v63, 24, v43
	v_and_b16 v23.h, 0xff, v43.h
	v_lshrrev_b32_e32 v43, 8, v28
	v_lshrrev_b32_e32 v64, 24, v28
	v_and_b16 v18.l, 0xff, v25.l
	v_lshlrev_b16 v25.l, 8, v44.l
	v_and_b16 v18.h, 0xff, v25.h
	v_lshlrev_b16 v25.h, 8, v45.l
	v_and_b16 v20.l, 0xff, v26.l
	v_lshlrev_b16 v26.l, 8, v29.l
	v_and_b16 v20.h, 0xff, v26.h
	v_lshlrev_b16 v26.h, 8, v46.l
	v_and_b16 v22.l, 0xff, v27.l
	v_and_b16 v22.h, 0xff, v27.h
	v_and_b16 v24.l, 0xff, v28.l
	v_and_b16 v24.h, 0xff, v28.h
	v_lshlrev_b16 v27.l, 8, v47.l
	v_lshlrev_b16 v27.h, 8, v48.l
	v_lshlrev_b16 v28.l, 8, v30.l
	v_lshlrev_b16 v28.h, 8, v49.l
	v_lshlrev_b16 v29.l, 8, v50.l
	v_lshlrev_b16 v29.h, 8, v51.l
	v_lshlrev_b16 v30.l, 8, v42.l
	v_lshlrev_b16 v30.h, 8, v52.l
	v_lshlrev_b16 v42.l, 8, v62.l
	v_lshlrev_b16 v42.h, 8, v63.l
	v_lshlrev_b16 v43.l, 8, v43.l
	v_lshlrev_b16 v43.h, 8, v64.l
	v_or_b16 v17.l, v17.l, v25.l
	v_or_b16 v17.h, v17.h, v25.h
	v_or_b16 v18.l, v18.l, v26.l
	v_or_b16 v18.h, v18.h, v26.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v19.l, v19.l, v27.l
	v_or_b16 v19.h, v19.h, v27.h
	v_or_b16 v20.l, v20.l, v28.l
	v_or_b16 v20.h, v20.h, v28.h
	v_or_b16 v21.l, v21.l, v29.l
	v_or_b16 v21.h, v21.h, v29.h
	v_or_b16 v22.l, v22.l, v30.l
	v_or_b16 v22.h, v22.h, v30.h
	v_or_b16 v23.l, v23.l, v42.l
	v_or_b16 v23.h, v23.h, v42.h
	v_or_b16 v24.l, v24.l, v43.l
	v_or_b16 v24.h, v24.h, v43.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v54, v53 offset:17408
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v55, v17 offset:8192
	ds_store_b16_d16_hi v55, v17 offset:8256
	ds_store_b16 v56, v18 offset:8192
	ds_store_b16_d16_hi v56, v18 offset:8256
	ds_store_b16 v57, v19 offset:8192
	ds_store_b16_d16_hi v57, v19 offset:8256
	ds_store_b16 v58, v20 offset:8192
	ds_store_b16_d16_hi v58, v20 offset:8256
	ds_store_b16 v59, v21 offset:8192
	ds_store_b16_d16_hi v59, v21 offset:8256
	ds_store_b16 v55, v22 offset:8832
	ds_store_b16_d16_hi v55, v22 offset:8896
	ds_store_b16 v60, v23 offset:8192
	ds_store_b16_d16_hi v60, v23 offset:8256
	ds_store_b16 v61, v24 offset:8192
	ds_store_b16_d16_hi v61, v24 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v27, v6, 6, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v5, 6, v5
	v_and_b32_e32 v43, 8, v0
	v_and_b32_e32 v44, 32, v0
	v_and_or_b32 v42, 0x1800, v7, v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v29, 16, v27
	v_xor_b32_e32 v28, 32, v27
	v_xor_b32_e32 v30, 48, v27
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr42
.LBB0_3:                                ; %Flow79
	s_load_b64 s[16:17], s[0:1], 0x20
	v_or_b32_e32 v17, s31, v6
	s_ashr_i32 s0, s26, 8
	v_or_b32_e32 v25, s18, v9
	v_or_b32_e32 v24, s18, v13
	v_or_b32_e32 v23, s18, v14
	v_mul_lo_u32 v26, v17, s0
	v_or_b32_e32 v21, s18, v15
	v_or_b32_e32 v19, s18, v16
	v_or_b32_e32 v22, s18, v10
	v_or_b32_e32 v20, s18, v11
	v_or_b32_e32 v18, s18, v12
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v5, v0, 5, 1
	v_bfe_i32 v9, v0, 3, 1
	v_lshl_or_b32 v27, v6, 6, v8
	v_and_or_b32 v42, 0x1800, v7, v8
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v6, s7, v2
	v_and_b32_e32 v5, 0x420, v5
	v_add_nc_u32_e32 v4, s31, v4
	s_lshl_b32 s14, s28, 7
	s_lshl_b32 s15, s30, 7
	v_add_nc_u32_e32 v7, 0x81, v6
	v_and_or_b32 v5, 0x210, v9, v5
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v6, 0x80, v6
	v_mul_lo_u32 v4, s6, v4
	v_xor_b32_e32 v29, 16, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v5, v5, v42
	v_mul_lo_u32 v6, s19, v6
	v_xor_b32_e32 v28, 32, v27
	v_xor_b32_e32 v30, 48, v27
	v_or_b32_e32 v50, 0x80, v2
	v_or_b32_e32 v43, v5, v33
	v_mul_lo_u32 v5, s19, v7
	v_add3_u32 v49, v4, v3, 0x80
	v_or_b32_e32 v51, 0x80, v3
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	v_xor_b32_e32 v44, 16, v43
	v_xor_b32_e32 v45, 32, v43
	v_xor_b32_e32 v46, 48, v43
	v_add3_u32 v5, v5, s14, v1
	v_add3_u32 v1, v6, s14, v1
	v_mov_b32_e32 v10, 0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s25, 6
	s_mov_b32 s27, 0x31027000
.Ltmp22:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_subrev_nc_u32_e32 v47, s15, v5
	v_subrev_nc_u32_e32 v48, s15, v1
	v_mov_b32_e32 v1, 0
	s_mov_b32 s26, 0x7ffffffe
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v7, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v15, 0
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_and_b32 s29, s5, 0xffff
	s_mov_b32 s28, s4
	s_add_i32 s14, s1, -2
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s35, 0, 0x4400
	s_add_i32 s36, 0, 0x2000
	s_mov_b32 s15, 1
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s37, s7
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s7, s7, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_add_nc_u32_e32 v52, s37, v51
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_add_nc_u32_e32 v53, s37, v50
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v54, s37, v49
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s7, s7, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s37, s7
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v52
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s7, s7, 8
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s7, s0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v52, 0x80000000, v54, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v53
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v54, v26, s7, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s7, s7, s19
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 422 22 is_stmt 0              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v56, v23, s7, 1
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v53, 0x80000000, v48, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v100, v52, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v52, 0x80000000, v47, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[60:63], v53, s[20:23], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v55, v24, s7, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[64:67], v52, s[20:23], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v53, v25, s7, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v57, v21, s7, 1
	v_add_lshl_u32 v58, v19, s7, 1
	v_add_lshl_u32 v59, v22, s7, 1
	v_add_lshl_u32 v68, v20, s7, 1
	v_add_lshl_u32 v69, v18, s7, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v52, 0x80000000, v53 :: v_dual_cndmask_b32 v53, 0x80000000, v55
	v_dual_cndmask_b32 v55, 0x80000000, v56 :: v_dual_cndmask_b32 v56, 0x80000000, v57
	v_dual_cndmask_b32 v57, 0x80000000, v58 :: v_dual_cndmask_b32 v58, 0x80000000, v59
	v_dual_cndmask_b32 v59, 0x80000000, v68 :: v_dual_cndmask_b32 v68, 0x80000000, v69
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v101, v54, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v102, v52, s[28:31], 0 offen
	buffer_load_u16 v103, v53, s[28:31], 0 offen
	buffer_load_u16 v104, v55, s[28:31], 0 offen
	buffer_load_u16 v105, v56, s[28:31], 0 offen
	buffer_load_u16 v106, v57, s[28:31], 0 offen
	buffer_load_u16 v107, v58, s[28:31], 0 offen
	buffer_load_u16 v108, v59, s[28:31], 0 offen
	buffer_load_u16 v109, v68, s[28:31], 0 offen
	s_mov_b32 s7, s1
	s_mov_b32 s1, s35
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v52, s7, v27
	v_add_nc_u32_e32 v53, s7, v29
	s_mov_b32 s35, s33
	v_add_nc_u32_e32 v54, s7, v28
	v_add_nc_u32_e32 v55, s7, v30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v56, s35, v43
	v_add_nc_u32_e32 v57, s35, v44
	v_add_nc_u32_e32 v58, s35, v45
	v_add_nc_u32_e32 v59, s35, v46
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[68:71], v52
	ds_load_b128 v[72:75], v53
	ds_load_b128 v[76:79], v54
	ds_load_b128 v[80:83], v55
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[84:87], v56
	ds_load_b128 v[88:91], v57
	ds_load_b128 v[92:95], v58
	ds_load_b128 v[96:99], v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s7, s15, 1
	s_mov_b32 s33, s36
	s_cmp_lt_i32 s7, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s15, s7, 0
	s_add_i32 s14, s14, -1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s35, s15, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s36, s15, 13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s38, s35, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s36, s36, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s7, s37, 64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s35, s38, 0x4000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v112, s36, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s14, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v114, s36, v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[52:59], v[84:87], v[68:71], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v115, s36, v39
	v_add_nc_u32_e32 v116, s36, v40
	v_add_nc_u32_e32 v117, s36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[52:59], v[88:91], v[72:75], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[92:95], v[76:79], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[96:99], v[80:83], v[52:59] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v68, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v71, v54
	v_cvt_f32_i32_e32 v70, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v72, v57
	v_cvt_f32_i32_e32 v73, v56
	v_cvt_f32_i32_e32 v74, v59
	v_cvt_f32_i32_e32 v75, v58
	v_cvt_f32_i32_e32 v69, v52
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(9)
	v_perm_b32 v53, v64, v60, 0x5010400
	v_perm_b32 v54, v64, v60, 0x7030602
	v_perm_b32 v55, v65, v61, 0x5010400
	v_perm_b32 v56, v65, v61, 0x7030602
	v_perm_b32 v57, v66, v62, 0x5010400
	v_perm_b32 v58, v66, v62, 0x7030602
	v_perm_b32 v59, v67, v63, 0x5010400
	v_perm_b32 v60, v67, v63, 0x7030602
	v_lshrrev_b32_e32 v78, 8, v53
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v61, 16, v101
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v62, 16, v102
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v63, 16, v103
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v64, 16, v104
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v65, 16, v105
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v66, 16, v106
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v67, 16, v107
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v76, 16, v108
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v77, 16, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v79, 24, v53
	v_lshrrev_b32_e32 v80, 8, v54
	v_lshrrev_b32_e32 v81, 24, v54
	v_lshrrev_b32_e32 v82, 8, v55
	v_and_b16 v52.l, 0xff, v53.l
	v_and_b16 v53.l, 0xff, v54.l
	v_and_b16 v54.l, 0xff, v55.l
	v_lshrrev_b32_e32 v83, 24, v55
	v_and_b16 v55.l, 0xff, v56.l
	v_lshrrev_b32_e32 v84, 8, v56
	v_lshrrev_b32_e32 v85, 24, v56
	v_and_b16 v56.l, 0xff, v57.l
	v_lshrrev_b32_e32 v86, 8, v57
	v_lshrrev_b32_e32 v87, 24, v57
	v_and_b16 v57.l, 0xff, v58.l
	v_lshrrev_b32_e32 v88, 8, v58
	v_lshrrev_b32_e32 v89, 24, v58
	v_and_b16 v58.l, 0xff, v59.l
	v_lshrrev_b32_e32 v90, 8, v59
	v_lshrrev_b32_e32 v91, 24, v59
	v_and_b16 v59.l, 0xff, v60.l
	v_lshrrev_b32_e32 v92, 8, v60
	v_lshrrev_b32_e32 v93, 24, v60
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v94, v61, v63
	v_mul_f32_e32 v95, v61, v62
	v_mul_f32_e32 v96, v61, v65
	v_mul_f32_e32 v97, v61, v64
	v_mul_f32_e32 v98, v61, v67
	v_mul_f32_e32 v99, v61, v66
	v_mul_f32_e32 v77, v61, v77
	v_mul_f32_e32 v76, v61, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v60.l, 8, v78.l
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.h, 0xff, v54.h
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.h, 0xff, v56.h
	v_and_b16 v56.h, 0xff, v57.h
	v_and_b16 v57.h, 0xff, v58.h
	v_and_b16 v58.h, 0xff, v59.h
	v_and_b16 v59.h, 0xff, v60.h
	v_lshlrev_b16 v60.h, 8, v79.l
	v_lshlrev_b16 v61.l, 8, v80.l
	v_lshlrev_b16 v61.h, 8, v81.l
	v_lshlrev_b16 v62.l, 8, v82.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v13, v99, v73 :: v_dual_add_nc_u32 v48, s34, v48
	v_dual_fmac_f32 v16, v94, v68 :: v_dual_add_nc_u32 v47, s34, v47
	v_dual_fmac_f32 v11, v76, v75 :: v_dual_add_nc_u32 v110, s38, v34
	v_dual_fmac_f32 v12, v98, v72 :: v_dual_add_nc_u32 v111, s36, v35
	v_dual_fmac_f32 v10, v77, v74 :: v_dual_add_nc_u32 v113, s36, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v62.h, 8, v83.l
	v_lshlrev_b16 v63.l, 8, v84.l
	v_lshlrev_b16 v63.h, 8, v85.l
	v_lshlrev_b16 v64.l, 8, v86.l
	v_lshlrev_b16 v64.h, 8, v87.l
	v_lshlrev_b16 v65.l, 8, v88.l
	v_lshlrev_b16 v65.h, 8, v89.l
	v_lshlrev_b16 v66.l, 8, v90.l
	v_lshlrev_b16 v66.h, 8, v91.l
	v_lshlrev_b16 v67.l, 8, v92.l
	v_lshlrev_b16 v67.h, 8, v93.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v9, v95, v69
	v_dual_fmac_f32 v15, v97, v71 :: v_dual_fmac_f32 v14, v96, v70
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v52.l, v52.l, v60.l
	v_or_b16 v52.h, v52.h, v60.h
	v_or_b16 v53.l, v53.l, v61.l
	v_or_b16 v53.h, v53.h, v61.h
	v_or_b16 v54.l, v54.l, v62.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v110, v100 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v54.h, v54.h, v62.h
	v_or_b16 v55.l, v55.l, v63.l
	v_or_b16 v55.h, v55.h, v63.h
	v_or_b16 v56.l, v56.l, v64.l
	v_or_b16 v56.h, v56.h, v64.h
	v_or_b16 v57.l, v57.l, v65.l
	v_or_b16 v57.h, v57.h, v65.h
	v_or_b16 v58.l, v58.l, v66.l
	v_or_b16 v58.h, v58.h, v66.h
	v_or_b16 v59.l, v59.l, v67.l
	v_or_b16 v59.h, v59.h, v67.h
	ds_store_b16 v111, v52
	ds_store_b16_d16_hi v111, v52 offset:64
	ds_store_b16 v112, v53
	ds_store_b16_d16_hi v112, v53 offset:64
	ds_store_b16 v113, v54
	ds_store_b16_d16_hi v113, v54 offset:64
	ds_store_b16 v114, v55
	ds_store_b16_d16_hi v114, v55 offset:64
	ds_store_b16 v115, v56
	ds_store_b16_d16_hi v115, v56 offset:64
	ds_store_b16 v111, v57 offset:640
	ds_store_b16_d16_hi v111, v57 offset:704
	ds_store_b16 v116, v58
	ds_store_b16_d16_hi v116, v58 offset:64
	ds_store_b16 v117, v59
	ds_store_b16_d16_hi v117, v59 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v5, v33 :: v_dual_mov_b32 v44, v32
	v_mov_b32_e32 v43, v31
	s_add_i32 s24, s37, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v9, 0
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s35, 0, 0x4400
	s_add_i32 s36, 0, 0x2000
.LBB0_8:                                ; %Flow80
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v43
	v_and_b32_e32 v32, 0xf0, v0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v44
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v31, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v2, v1, v2
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v4, v2, v42
	v_mov_b32_e32 v2, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v49, v4, v5
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_xor_b32_e32 v50, 16, v49
	v_xor_b32_e32 v46, 32, v49
	v_xor_b32_e32 v48, 48, v49
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v2, s33, v50
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v6, s33, v49
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v7, s1, v29
	v_add_nc_u32_e32 v8, s1, v27
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v31, s33, v48
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v37, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[41:44], v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[51:54], v7
	ds_load_b128 v[55:58], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v6, s33, v46
	v_dual_mov_b32 v38, v33 :: v_dual_add_nc_u32 v7, s1, v30
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, s1, v28
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[59:62], v31
	ds_load_b128 v[63:66], v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[67:70], v7
	ds_load_b128 v[71:74], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v40, v33
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[41:44], v[55:58], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[2:5], v[51:54], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[63:66], v[71:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[59:62], v[67:70], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v4, v35
	v_cvt_f32_i32_e32 v7, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v37
	v_cvt_f32_i32_e32 v3, v38
	v_cvt_f32_i32_e32 v5, v39
	v_cvt_f32_i32_e32 v31, v40
	v_cvt_f32_i32_e32 v6, v33
	v_cvt_f32_i32_e32 v8, v34
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s7, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s1, s1, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s1, s7, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s6, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v33, v26, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s7, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s1, s19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v34, v25, s1, 1
	v_add_lshl_u32 v35, v24, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v36, v23, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v38, v22, s1, 1
	v_add_lshl_u32 v37, v19, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v47, v33, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v33, 0x80000000, v34 :: v_dual_cndmask_b32 v34, 0x80000000, v35
	v_dual_cndmask_b32 v35, 0x80000000, v36 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_add_lshl_u32 v36, v21, s1, 1
	v_add_lshl_u32 v40, v18, s1, 1
	v_add_lshl_u32 v39, v20, s1, 1
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	v_cndmask_b32_e32 v41, 0x80000000, v40, vcc_lo
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x7
	buffer_load_u16 v51, v33, s[4:7], 0 offen
	buffer_load_u16 v52, v34, s[4:7], 0 offen
	buffer_load_u16 v44, v35, s[4:7], 0 offen
	buffer_load_u16 v45, v36, s[4:7], 0 offen
	buffer_load_u16 v42, v37, s[4:7], 0 offen
	buffer_load_u16 v43, v38, s[4:7], 0 offen
	buffer_load_u16 v40, v39, s[4:7], 0 offen
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v39, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v38, s36, v48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s36, v50
	v_add_nc_u32_e32 v37, s36, v49
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v29, s35, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v60, v53 :: v_dual_add_nc_u32 v27, s35, v27
	v_mov_b32_e32 v54, v53
	v_mov_b32_e32 v56, v53
	v_mov_b32_e32 v58, v53
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[33:36], v1
	ds_load_b128 v[61:64], v37
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[65:68], v29
	ds_load_b128 v[69:72], v27
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s36, v46
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v37, s35, v30
	v_add_nc_u32_e32 v39, s35, v28
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[27:30], v38
	ds_load_b128 v[73:76], v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[77:80], v37
	ds_load_b128 v[81:84], v39
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v55, v53
	v_mov_b32_e32 v57, v53
	v_mov_b32_e32 v59, v53
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[69:72], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[33:36], v[65:68], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[73:76], v[81:84], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[27:30], v[77:80], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v53
	v_cvt_f32_i32_e32 v34, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v35, v55
	v_cvt_f32_i32_e32 v38, v56
	v_cvt_f32_i32_e32 v33, v57
	v_cvt_f32_i32_e32 v36, v58
	v_cvt_f32_i32_e32 v37, v59
	v_cvt_f32_i32_e32 v39, v60
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s24, 31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v27.l, 0
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 24
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v27.h, v47.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s24, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v29.h, v52.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v29.l, v27.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v26, v26, s1, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s1, s19
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v24, v24, s1, 1
	v_add_lshl_u32 v25, v25, s1, 1
	v_add_lshl_u32 v21, v21, s1, 1
	v_add_lshl_u32 v23, v23, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v19, v19, s1, 1
	v_add_lshl_u32 v22, v22, s1, 1
	v_add_lshl_u32 v20, v20, s1, 1
	v_add_lshl_u32 v18, v18, s1, 1
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_mul_f32 v29, v27, v29
	s_clause 0x7
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v40.h, v44.l
	v_mov_b16_e32 v42.h, v42.l
	v_mov_b16_e32 v44.h, v40.l
	v_mov_b16_e32 v42.l, v27.l
	v_mov_b16_e32 v44.l, v27.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v28, 1, v32
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v30.h, v51.l
	v_mov_b16_e32 v32.h, v45.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v41.h, v43.l
	v_mov_b16_e32 v43.h, v41.l
	v_mov_b16_e32 v30.l, v27.l
	v_mov_b16_e32 v32.l, v27.l
	v_mov_b16_e32 v40.l, v27.l
	v_mov_b16_e32 v41.l, v27.l
	v_mov_b16_e32 v43.l, v27.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v42, v27, v42
	v_mul_f32_e32 v44, v27, v44
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v29, v8, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v45, 0x5410 :: v_dual_and_b32 v0, 16, v0
	v_dual_mov_b32 v46, 0x7632 :: v_dual_mul_f32 v41, v27, v41
	v_mov_b16_e32 v47.h, v27.l
	v_mov_b16_e32 v48.h, v27.l
	v_mov_b16_e32 v49.h, v27.l
	v_mov_b16_e32 v50.h, v27.l
	v_mov_b16_e32 v51.h, v27.l
	v_mov_b16_e32 v52.h, v27.l
	v_mov_b16_e32 v53.h, v27.l
	v_mov_b16_e32 v54.h, v27.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v27, v30
	v_mul_f32_e32 v40, v27, v40
	v_mul_f32_e32 v32, v27, v32
	v_mul_f32_e32 v27, v27, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v44, v5, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v16, v8, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v41, v3, v12
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v17, v17, s19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v27, v31, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v11, v5, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s17, s17, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v12, v3, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s19, s15
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v11, 16, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v30, v6, v9
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v9, v6, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v42, v2, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v10, v27, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v13, v2, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v13, 16, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v40, v4, v15
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v10, v11
	v_mul_f32_e32 v19, v10, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v13, v10, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v15, v4, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v15, 16, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v32, v7, v14
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v12, 16, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v34, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v10, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v14, v7, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v14, 16, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v10, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v14, v10, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v12, v1, v6
	v_fma_f32 v12, v13, v38, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v13, v14, v35, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v6, v1, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v7, v7, v12, s3
	v_cndmask_b32_e64 v6, v8, v11, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v15, v36, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v13, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v48.l, v1.h
	v_mov_b16_e32 v49.l, v7.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v10, v16
	v_mul_f32_e32 v10, v10, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v47.l, v6.h
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_and_b32_e32 v13, 1, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v16, v33, v2
	v_fma_f32 v10, v10, v39, v9
	v_fma_f32 v16, v19, v37, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v14, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v7, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v15, s3
	v_cndmask_b32_e64 v8, v9, v10, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v9, 1, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v16, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v7, v13, 0x7fff
	v_mov_b16_e32 v52.l, v2.h
	v_mov_b16_e32 v53.l, v8.h
	v_add3_u32 v6, v6, v9, 0x7fff
	v_cmp_o_f32_e64 s4, v2, v2
	v_mov_b16_e32 v54.l, v5.h
	v_and_b32_e32 v12, 1, v52
	v_cmp_o_f32_e64 s5, v8, v8
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v0, 1, v53
	v_and_b32_e32 v10, 1, v48
	v_add3_u32 v2, v2, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v1, v1
	v_mov_b16_e32 v51.l, v3.h
	v_add3_u32 v0, v8, v0, 0x7fff
	v_add3_u32 v1, v1, v10, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s4
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_mov_b16_e32 v50.l, v4.h
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	v_and_b32_e32 v2, 1, v54
	v_cmp_o_f32_e64 s6, v5, v5
	v_and_b32_e32 v11, 1, v51
	v_cmp_o_f32_e64 s3, v3, v3
	v_cndmask_b16 v6.l, 0x7fff, v1.h, s0
	v_add3_u32 v2, v5, v2, 0x7fff
	v_cndmask_b32_e32 v10, 0x3276, v46, vcc_lo
	v_add3_u32 v3, v3, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v4, v4
	s_mov_b32 s0, 0x76543210
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_and_b32_e32 v9, 1, v50
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	v_lshl_or_b32 v8, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v4, v9, 0x7fff
	v_dual_cndmask_b32 v9, 0x1054, v45 :: v_dual_cndmask_b32 v4, v1, v6
	v_cndmask_b32_e32 v1, v6, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v7.l, 0x7fff, v3.h, s2
	v_lshl_or_b32 v5, v9, 8, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v6, v0, v7 :: v_dual_and_b32 v3, 0x540054, v5
	v_and_b32_e32 v5, 0x760076, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v3, 4, v3
	v_lshl_or_b32 v3, v5, 4, v5
	v_cndmask_b32_e32 v5, v7, v0, vcc_lo
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_or_b32_e32 v7, s18, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s18, s14
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v1, v4, v2
	v_perm_b32 v1, v1, v4, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v5, v6, v2
	v_perm_b32 v3, v5, v6, v3
	v_add_lshl_u32 v4, v7, v17, 1
	buffer_store_b128 v[0:3], v4, s[16:19], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 118
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6772
; TotalNumSgprs: 41
; NumVgprs: 118
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 41
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     118
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
