	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s27, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v75, 2, v0
	v_lshlrev_b32_e32 v78, 4, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v24, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v7, v0, 0, 1
	v_and_b32_e32 v6, 6, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v76, 62, v75
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v56, 0, v78
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v8, 48, v24
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v7, 0x420, v7
	v_and_b32_e32 v80, 32, v0
	v_and_b32_e32 v79, 8, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s34, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s35, v76
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
	s_lshl_b32 s7, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 351 20 is_stmt 0              ; generate_amdgcn.py:351:20
	s_min_i32 s16, s6, 4
	.loc	1 352 29 is_stmt 1              ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s6, s16
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s17, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b64 s[24:25], s[14:15]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s31, s11
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v77, v1, 4, v2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 353 13 is_stmt 1              ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s6
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s17
	s_add_i32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s16
	s_mul_i32 s17, s4, s6
	s_ashr_i32 s18, s10, 31
	s_sub_i32 s5, s5, s17
	s_add_i32 s17, s4, 1
	s_sub_i32 s19, s5, s6
	s_cmp_ge_u32 s5, s6
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s17, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s17, s4, 1
	s_cmp_ge_u32 s5, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s30, s10
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s4, s17, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s6, s27, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s18
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s26, v76
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s16, s3, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s4, s6, 31
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s17, s35, s26
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s3, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v3, s33, s17, v77
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s6, s4
.Ltmp19:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s40, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s6, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s35, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s26, v75
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[25:28], v4, s[28:31], 0 offen
	buffer_load_b128 v[29:32], v2, s[28:31], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s34, v75
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 48, v78
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v3, s35, 6, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s41, s26, 64
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v21, v2, v4, s40
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s41, v76
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s7, s34, s26
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v5, 4, v0
	s_mov_b32 s16, 0
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v2, s7, v21
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s27, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s35, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_clause 0x1
	buffer_load_b128 v[33:36], v3, s[28:31], 0 offen
	buffer_load_b128 v[37:40], v4, s[28:31], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[41:44], v2, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s41, v75
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v3, 15, v0
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s34, 6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v2, s7, s4, v21
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v22, v4, 16, v3
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v4, v5, 1, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v7, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	v_lshlrev_b32_e32 v3, 3, v6
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v23, 32, v22
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 2, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v81, v6, 10, v5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v9, 4, v4
	v_or_b32_e32 v10, 6, v4
	v_or_b32_e32 v11, 8, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v57, 0, v81
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[45:48], v2, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v82, 0x90, v81
	v_xor_b32_e32 v83, 0x120, v81
	v_xor_b32_e32 v84, 0x1b0, v81
	v_xor_b32_e32 v85, 0x210, v81
	v_xor_b32_e32 v86, 0x330, v81
	v_xor_b32_e32 v87, 0x3a0, v81
	v_add_nc_u32_e32 v58, 0, v82
	v_add_nc_u32_e32 v59, 0, v83
	v_add_nc_u32_e32 v60, 0, v84
	v_add_nc_u32_e32 v61, 0, v85
	v_add_nc_u32_e32 v62, 0, v86
	v_add_nc_u32_e32 v63, 0, v87
	v_lshlrev_b32_e32 v2, 5, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v12, 10, v4
	v_or_b32_e32 v13, 12, v4
	v_or_b32_e32 v14, 14, v4
	v_or_b32_e32 v15, 64, v4
	v_or_b32_e32 v16, 0x42, v4
	v_or_b32_e32 v17, 0x44, v4
	v_or_b32_e32 v18, 0x46, v4
	v_or_b32_e32 v19, 0x48, v4
	v_or_b32_e32 v5, 0x4a, v4
	v_or_b32_e32 v6, 0x4c, v4
	v_or_b32_e32 v7, 0x4e, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s6, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v49, v29, v25, 0x5010400
	v_perm_b32 v29, v29, v25, 0x7030602
	v_perm_b32 v51, v31, v27, 0x5010400
	v_perm_b32 v31, v31, v27, 0x7030602
	v_perm_b32 v52, v32, v28, 0x5010400
	v_perm_b32 v32, v32, v28, 0x7030602
	v_lshrrev_b32_e32 v53, 8, v49
	v_lshrrev_b32_e32 v54, 24, v49
	v_perm_b32 v50, v30, v26, 0x5010400
	v_perm_b32 v30, v30, v26, 0x7030602
	v_and_b16 v20.l, 0xff, v49.l
	v_and_b16 v20.h, 0xff, v49.h
	v_lshrrev_b32_e32 v49, 8, v29
	v_and_b16 v25.l, 0xff, v29.l
	v_lshrrev_b32_e32 v55, 24, v29
	v_and_b16 v25.h, 0xff, v29.h
	v_and_b16 v29.l, 0xff, v31.l
	v_lshrrev_b32_e32 v70, 8, v31
	v_lshrrev_b32_e32 v71, 24, v31
	v_and_b16 v29.h, 0xff, v31.h
	v_and_b16 v31.l, 0xff, v32.l
	v_lshrrev_b32_e32 v74, 8, v32
	v_lshrrev_b32_e32 v88, 24, v32
	v_and_b16 v31.h, 0xff, v32.h
	v_lshlrev_b16 v32.l, 8, v53.l
	v_lshlrev_b16 v32.h, 8, v54.l
	v_lshrrev_b32_e32 v64, 8, v50
	v_lshrrev_b32_e32 v65, 24, v50
	v_lshrrev_b32_e32 v66, 8, v30
	v_lshrrev_b32_e32 v67, 24, v30
	v_lshrrev_b32_e32 v68, 8, v51
	v_lshrrev_b32_e32 v69, 24, v51
	v_lshrrev_b32_e32 v72, 8, v52
	v_lshrrev_b32_e32 v73, 24, v52
	v_lshlrev_b16 v49.l, 8, v49.l
	v_lshlrev_b16 v49.h, 8, v55.l
	v_or_b16 v20.l, v20.l, v32.l
	v_or_b16 v20.h, v20.h, v32.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v32, v37, v33, 0x5010400
	v_and_b16 v26.l, 0xff, v50.l
	v_and_b16 v26.h, 0xff, v50.h
	v_and_b16 v27.l, 0xff, v30.l
	v_and_b16 v27.h, 0xff, v30.h
	v_and_b16 v28.l, 0xff, v51.l
	v_and_b16 v28.h, 0xff, v51.h
	v_and_b16 v30.l, 0xff, v52.l
	v_and_b16 v30.h, 0xff, v52.h
	v_lshlrev_b16 v50.l, 8, v64.l
	v_lshlrev_b16 v50.h, 8, v65.l
	v_lshlrev_b16 v51.l, 8, v66.l
	v_lshlrev_b16 v51.h, 8, v67.l
	v_lshlrev_b16 v52.l, 8, v68.l
	v_lshlrev_b16 v52.h, 8, v69.l
	v_lshlrev_b16 v53.l, 8, v70.l
	v_lshlrev_b16 v53.h, 8, v71.l
	v_lshlrev_b16 v54.l, 8, v72.l
	v_lshlrev_b16 v54.h, 8, v73.l
	v_lshlrev_b16 v55.l, 8, v74.l
	v_lshlrev_b16 v55.h, 8, v88.l
	v_perm_b32 v33, v37, v33, 0x7030602
	v_or_b16 v25.l, v25.l, v49.l
	v_perm_b32 v37, v38, v34, 0x5010400
	v_perm_b32 v34, v38, v34, 0x7030602
	v_perm_b32 v38, v39, v35, 0x5010400
	v_perm_b32 v35, v39, v35, 0x7030602
	v_perm_b32 v39, v40, v36, 0x5010400
	v_perm_b32 v36, v40, v36, 0x7030602
	v_or_b16 v25.h, v25.h, v49.h
	v_lshrrev_b32_e32 v40, 8, v32
	v_or_b16 v26.l, v26.l, v50.l
	v_or_b16 v26.h, v26.h, v50.h
	v_or_b16 v27.l, v27.l, v51.l
	v_or_b16 v27.h, v27.h, v51.h
	v_or_b16 v28.l, v28.l, v52.l
	v_or_b16 v28.h, v28.h, v52.h
	v_or_b16 v29.l, v29.l, v53.l
	v_or_b16 v29.h, v29.h, v53.h
	v_or_b16 v30.l, v30.l, v54.l
	v_or_b16 v30.h, v30.h, v54.h
	v_or_b16 v31.l, v31.l, v55.l
	v_or_b16 v31.h, v31.h, v55.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v56, v[41:44] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v20
	ds_store_b16_d16_hi v57, v20 offset:64
	ds_store_b16 v58, v25
	ds_store_b16_d16_hi v58, v25 offset:64
	ds_store_b16 v59, v26
	ds_store_b16_d16_hi v59, v26 offset:64
	ds_store_b16 v60, v27
	ds_store_b16_d16_hi v60, v27 offset:64
	ds_store_b16 v61, v28
	ds_store_b16_d16_hi v61, v28 offset:64
	ds_store_b16 v57, v29 offset:640
	ds_store_b16_d16_hi v57, v29 offset:704
	ds_store_b16 v62, v30
	ds_store_b16_d16_hi v62, v30 offset:64
	ds_store_b16 v63, v31
	ds_store_b16_d16_hi v63, v31 offset:64
	v_lshrrev_b32_e32 v41, 24, v32
	v_lshrrev_b32_e32 v42, 8, v33
	v_lshrrev_b32_e32 v43, 24, v33
	v_and_b16 v26.l, 0xff, v37.l
	v_lshrrev_b32_e32 v44, 8, v37
	v_lshrrev_b32_e32 v49, 24, v37
	v_and_b16 v26.h, 0xff, v37.h
	v_lshrrev_b32_e32 v37, 8, v34
	v_lshrrev_b32_e32 v50, 24, v34
	v_and_b16 v28.l, 0xff, v38.l
	v_lshrrev_b32_e32 v51, 8, v38
	v_lshrrev_b32_e32 v52, 24, v38
	v_and_b16 v28.h, 0xff, v38.h
	v_lshrrev_b32_e32 v38, 8, v35
	v_lshrrev_b32_e32 v53, 24, v35
	v_and_b16 v30.l, 0xff, v39.l
	v_lshrrev_b32_e32 v54, 8, v39
	v_lshrrev_b32_e32 v55, 24, v39
	v_and_b16 v30.h, 0xff, v39.h
	v_lshrrev_b32_e32 v39, 8, v36
	v_lshrrev_b32_e32 v64, 24, v36
	v_and_b16 v20.l, 0xff, v32.l
	v_lshlrev_b16 v32.l, 8, v40.l
	v_and_b16 v20.h, 0xff, v32.h
	v_lshlrev_b16 v32.h, 8, v41.l
	v_and_b16 v25.l, 0xff, v33.l
	v_lshlrev_b16 v33.l, 8, v42.l
	v_and_b16 v25.h, 0xff, v33.h
	v_lshlrev_b16 v33.h, 8, v43.l
	v_and_b16 v27.l, 0xff, v34.l
	v_and_b16 v27.h, 0xff, v34.h
	v_and_b16 v29.l, 0xff, v35.l
	v_and_b16 v29.h, 0xff, v35.h
	v_and_b16 v31.l, 0xff, v36.l
	v_and_b16 v31.h, 0xff, v36.h
	v_lshlrev_b16 v34.l, 8, v44.l
	v_lshlrev_b16 v34.h, 8, v49.l
	v_lshlrev_b16 v35.l, 8, v37.l
	v_lshlrev_b16 v35.h, 8, v50.l
	v_lshlrev_b16 v36.l, 8, v51.l
	v_lshlrev_b16 v36.h, 8, v52.l
	v_lshlrev_b16 v37.l, 8, v38.l
	v_lshlrev_b16 v37.h, 8, v53.l
	v_lshlrev_b16 v38.l, 8, v54.l
	v_lshlrev_b16 v38.h, 8, v55.l
	v_lshlrev_b16 v39.l, 8, v39.l
	v_lshlrev_b16 v39.h, 8, v64.l
	v_or_b16 v20.l, v20.l, v32.l
	v_or_b16 v20.h, v20.h, v32.h
	v_or_b16 v25.l, v25.l, v33.l
	v_or_b16 v25.h, v25.h, v33.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v26.l, v26.l, v34.l
	v_or_b16 v26.h, v26.h, v34.h
	v_or_b16 v27.l, v27.l, v35.l
	v_or_b16 v27.h, v27.h, v35.h
	v_or_b16 v28.l, v28.l, v36.l
	v_or_b16 v28.h, v28.h, v36.h
	v_or_b16 v29.l, v29.l, v37.l
	v_or_b16 v29.h, v29.h, v37.h
	v_or_b16 v30.l, v30.l, v38.l
	v_or_b16 v30.h, v30.h, v38.h
	v_or_b16 v31.l, v31.l, v39.l
	v_or_b16 v31.h, v31.h, v39.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v56, v[45:48] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v20 offset:8192
	ds_store_b16_d16_hi v57, v20 offset:8256
	ds_store_b16 v58, v25 offset:8192
	ds_store_b16_d16_hi v58, v25 offset:8256
	ds_store_b16 v59, v26 offset:8192
	ds_store_b16_d16_hi v59, v26 offset:8256
	ds_store_b16 v60, v27 offset:8192
	ds_store_b16_d16_hi v60, v27 offset:8256
	ds_store_b16 v61, v28 offset:8192
	ds_store_b16_d16_hi v61, v28 offset:8256
	ds_store_b16 v57, v29 offset:8832
	ds_store_b16_d16_hi v57, v29 offset:8896
	ds_store_b16 v62, v30 offset:8192
	ds_store_b16_d16_hi v62, v30 offset:8256
	ds_store_b16 v63, v31 offset:8192
	ds_store_b16_d16_hi v63, v31 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v20, 8, v0
	v_and_b32_e32 v90, 32, v0
	v_and_b32_e32 v88, 0x800, v2
	v_lshl_or_b32 v89, v1, 6, v3
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr89
.LBB0_3:                                ; %Flow43
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v25, s40, v22
	v_or_b32_e32 v26, s40, v23
	s_ashr_i32 s42, s5, 6
	v_or_b32_e32 v72, s33, v4
	v_or_b32_e32 v71, s33, v8
	v_mul_lo_u32 v73, v25, s42
	v_mul_lo_u32 v74, v26, s42
	v_or_b32_e32 v70, s33, v9
	v_or_b32_e32 v69, s33, v10
	v_or_b32_e32 v68, s33, v11
	v_or_b32_e32 v67, s33, v12
	v_or_b32_e32 v66, s33, v13
	v_or_b32_e32 v65, s33, v14
	v_or_b32_e32 v58, s33, v15
	v_or_b32_e32 v54, s33, v16
	v_or_b32_e32 v51, s33, v17
	v_or_b32_e32 v44, s33, v18
	v_or_b32_e32 v42, s33, v19
	v_or_b32_e32 v45, s33, v5
	v_or_b32_e32 v43, s33, v6
	v_or_b32_e32 v41, s33, v7
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v4, v0, 5, 1
	v_bfe_i32 v5, v0, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v4, 0x420, v4
	v_lshl_or_b32 v89, v1, 6, v3
	v_and_b32_e32 v88, 0x800, v2
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v90, s35, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_or_b32 v1, 0x210, v5, v4
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_xor_b32_e32 v1, v1, v89
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v29, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v91, v1, v88
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_mov_b32_e32 v5, s20
	v_mov_b32_e32 v3, s18
	v_xor_b32_e32 v92, 16, v91
	v_xor_b32_e32 v93, 32, v91
	v_xor_b32_e32 v94, 48, v91
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v6, s21
	v_mov_b32_e32 v8, s23
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v56, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s15, s42, 3
	s_add_i32 s14, s41, 64
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_add_i32 s46, 0, 0x4000
	s_add_i32 s44, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
	s_add_i32 s15, s15, -3
	s_mov_b32 s45, 1
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 6
	s_mov_b32 s18, s16
	s_mov_b32 s16, s26
	s_mov_b32 s26, s41
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s41, s14, s19
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v143, s46, v22
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s41, v75
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s41, s34, v[21:22]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v95, s18, v91
	v_add_nc_u32_e32 v96, s18, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v11
	s_mov_b32 s46, s44
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v13, v143 offset:832
	ds_load_u8 v14, v143 offset:768
	ds_load_u8 v15, v143 offset:960
	ds_load_u8 v16, v143 offset:896
	ds_load_u8 v17, v143 offset:576
	ds_load_u8 v18, v143 offset:512
	ds_load_u8 v19, v143 offset:704
	ds_load_u8 v20, v143 offset:640
	ds_load_u8 v97, v143 offset:320
	ds_load_u8 v98, v143 offset:256
	ds_load_u8 v99, v143 offset:448
	ds_load_u8 v100, v143 offset:384
	ds_load_u8 v101, v143 offset:64
	ds_load_u8 v102, v143
	ds_load_u8 v103, v143 offset:192
	ds_load_u8 v104, v143 offset:128
	ds_load_u8 v105, v143 offset:1856
	ds_load_u8 v106, v143 offset:1792
	ds_load_u8 v107, v143 offset:1984
	ds_load_u8 v108, v143 offset:1920
	ds_load_u8 v109, v143 offset:1600
	ds_load_u8 v110, v143 offset:1536
	ds_load_u8 v111, v143 offset:1728
	ds_load_u8 v112, v143 offset:1664
	ds_load_u8 v113, v143 offset:1344
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v143 offset:1280
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v143 offset:1472
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v143 offset:1408
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v143 offset:1088
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v143 offset:1216
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v143 offset:1152
	ds_load_u8 v98, v143 offset:1024
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v117, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v119, v110, v109, 0xc0c0004
	v_perm_b32 v115, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v120, v112, v111, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[103:106], v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v118, v117, 16, v116
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v14, v14, v113, 0xc0c0004
	v_lshl_or_b32 v110, v15, 16, v13
	v_lshl_or_b32 v117, v120, 16, v119
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[119:122], v95 offset:4096
	ds_load_b128 v[123:126], v96 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v16, v18, v16, 0xc0c0004
	v_lshl_or_b32 v109, v19, 16, v17
	v_lshl_or_b32 v108, v99, 16, v97
	v_lshl_or_b32 v107, v115, 16, v101
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[111:114], v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v116, v16, 16, v14
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v102, v100, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v98, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v13, 16, v18
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[103:106], v[107:110], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[119:122], v[107:110], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v107, v143 offset:864
	ds_load_u8 v108, v143 offset:800
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[123:126], v[115:118], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[111:114], v[115:118], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v143 offset:992
	ds_load_u8 v109, v143 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v143 offset:608
	ds_load_u8 v110, v143 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v143 offset:736
	ds_load_u8 v115, v143 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v110, 0xc0c0004
	v_lshl_or_b32 v110, v108, 16, v107
	ds_load_u8 v107, v143 offset:352
	ds_load_u8 v108, v143 offset:288
	v_lshl_or_b32 v109, v115, 16, v109
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v143 offset:480
	ds_load_u8 v115, v143 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v115, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v108, 16, v107
	ds_load_u8 v107, v143 offset:32
	ds_load_u8 v115, v143 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v115, 0xc0c0004
	ds_load_u8 v115, v143 offset:224
	ds_load_u8 v116, v143 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v115, 16, v107
	ds_load_u8 v115, v143 offset:1888
	ds_load_u8 v116, v143 offset:1824
	v_wmma_i32_16x16x16_iu8 v[135:142], v[119:122], v[107:110], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v143 offset:2016
	ds_load_u8 v117, v143 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v143 offset:1632
	ds_load_u8 v118, v143 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v143 offset:1760
	ds_load_u8 v127, v143 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v127, v118, 0xc0c0004
	v_lshl_or_b32 v118, v116, 16, v115
	ds_load_u8 v115, v143 offset:1376
	ds_load_u8 v116, v143 offset:1312
	v_lshl_or_b32 v117, v127, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v143 offset:1504
	ds_load_u8 v127, v143 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v127, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v116, 16, v115
	ds_load_u8 v115, v143 offset:1120
	ds_load_u8 v127, v143 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v127, v115, 0xc0c0004
	ds_load_u8 v127, v143 offset:1248
	ds_load_u8 v128, v143 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v127, 16, v115
	v_wmma_i32_16x16x16_iu8 v[127:134], v[103:106], v[107:110], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v103, v143 offset:2880
	ds_load_u8 v104, v143 offset:2816
	v_wmma_i32_16x16x16_iu8 v[135:142], v[123:126], v[115:118], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[111:114], v[115:118], v[127:134] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v111, s18, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:3008
	ds_load_u8 v105, v143 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v143 offset:2624
	ds_load_u8 v106, v143 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v143 offset:2752
	ds_load_u8 v107, v143 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v106, 0xc0c0004
	v_lshl_or_b32 v106, v104, 16, v103
	ds_load_u8 v103, v143 offset:2368
	ds_load_u8 v104, v143 offset:2304
	v_lshl_or_b32 v105, v107, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:2496
	ds_load_u8 v107, v143 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v107, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v143 offset:2112
	ds_load_u8 v107, v143 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v107, v103, 0xc0c0004
	ds_load_u8 v107, v143 offset:2240
	ds_load_u8 v108, v143 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v107, 16, v103
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[107:110], v111
	ds_load_b128 v[111:114], v111 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[107:110], v[103:106], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[111:114], v[103:106], v[95:102] neg_lo:[1,1,0]
	ds_load_u8 v103, v143 offset:2912
	ds_load_u8 v104, v143 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:3040
	ds_load_u8 v105, v143 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v143 offset:2656
	ds_load_u8 v106, v143 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v143 offset:2784
	ds_load_u8 v115, v143 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v106, 0xc0c0004
	v_lshl_or_b32 v106, v104, 16, v103
	ds_load_u8 v103, v143 offset:2400
	ds_load_u8 v104, v143 offset:2336
	v_lshl_or_b32 v105, v115, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:2528
	ds_load_u8 v115, v143 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v115, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v143 offset:2144
	ds_load_u8 v115, v143 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v115, v103, 0xc0c0004
	ds_load_u8 v115, v143 offset:2272
	ds_load_u8 v116, v143 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v103, v115, 16, v103
	v_wmma_i32_16x16x16_iu8 v[127:134], v[107:110], v[103:106], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[111:114], v[103:106], v[135:142] neg_lo:[1,1,0]
	ds_load_u8 v103, v143 offset:3904
	ds_load_u8 v104, v143 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v111, s18, v94
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s41, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s18, s18, s33
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:4032
	ds_load_u8 v105, v143 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v143 offset:3648
	ds_load_u8 v106, v143 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v143 offset:3776
	ds_load_u8 v107, v143 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v106, 0xc0c0004
	v_lshl_or_b32 v106, v104, 16, v103
	ds_load_u8 v103, v143 offset:3392
	ds_load_u8 v104, v143 offset:3328
	v_lshl_or_b32 v105, v107, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:3520
	ds_load_u8 v107, v143 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v107, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v143 offset:3136
	ds_load_u8 v107, v143 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v107, v103, 0xc0c0004
	ds_load_u8 v107, v143 offset:3264
	ds_load_u8 v108, v143 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v107, 16, v103
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[107:110], v111
	ds_load_b128 v[111:114], v111 offset:4096
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[107:110], v[103:106], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[111:114], v[103:106], v[95:102] neg_lo:[1,1,0]
	ds_load_u8 v103, v143 offset:3936
	ds_load_u8 v104, v143 offset:3872
	v_cvt_f32_i32_e32 v126, v13
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v13, s41, v76
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v125, v14
	v_cvt_f32_i32_e32 v124, v15
	v_cvt_f32_i32_e32 v123, v16
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v14, s18, v90
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s18, v77
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s16, 31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v122, v17
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s18, 26
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v121, v18
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s16, s16, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s16, 6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v120, v19
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s16, s35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:4064
	ds_load_u8 v105, v143 offset:4000
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s16, s42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v119, v20
	v_cvt_f32_i32_e32 v118, v95
	v_cvt_f32_i32_e32 v117, v96
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v144, v41, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v143 offset:3680
	ds_load_u8 v106, v143 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v143 offset:3808
	ds_load_u8 v115, v143 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v106, 0xc0c0004
	v_lshl_or_b32 v106, v104, 16, v103
	ds_load_u8 v103, v143 offset:3424
	ds_load_u8 v104, v143 offset:3360
	v_lshl_or_b32 v105, v115, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v143 offset:3552
	ds_load_u8 v115, v143 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v115, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v143 offset:3168
	ds_load_u8 v115, v143 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v115, v103, 0xc0c0004
	ds_load_u8 v115, v143 offset:3296
	ds_load_u8 v116, v143 offset:3232
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v143, v43, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_cvt_f32_i32_e32 v116, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v103, v115, 16, v103
	v_cvt_f32_i32_e32 v115, v98
	v_wmma_i32_16x16x16_iu8 v[127:134], v[107:110], v[103:106], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[111:114], v[103:106], v[135:142] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v114, v99
	v_cvt_f32_i32_e32 v113, v100
	v_cvt_f32_i32_e32 v112, v101
	v_cvt_f32_i32_e32 v105, v132
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v132, v69, s18, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v17, 0x80000000, v14, vcc_lo
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v110, v127
	v_cvt_f32_i32_e32 v109, v128
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v132, 0x80000000, v132, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v17, s[28:31], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v108, v129
	v_cvt_f32_i32_e32 v107, v130
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v130, v71, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v106, v131
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v131, v70, s18, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v111, v102
	v_cvt_f32_i32_e32 v104, v133
	v_cvt_f32_i32_e32 v103, v134
	v_cvt_f32_i32_e32 v102, v135
	v_cvt_f32_i32_e32 v101, v136
	v_cvt_f32_i32_e32 v100, v137
	v_cvt_f32_i32_e32 v99, v138
	v_cvt_f32_i32_e32 v98, v139
	v_cvt_f32_i32_e32 v97, v140
	v_cvt_f32_i32_e32 v96, v141
	v_cvt_f32_i32_e32 v95, v142
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v133, v68, s18, 1
	v_add_lshl_u32 v134, v67, s18, 1
	v_add_lshl_u32 v135, v66, s18, 1
	v_add_lshl_u32 v136, v65, s18, 1
	v_add_lshl_u32 v137, v58, s18, 1
	v_add_lshl_u32 v138, v54, s18, 1
	v_add_lshl_u32 v139, v51, s18, 1
	v_add_lshl_u32 v140, v44, s18, 1
	v_add_lshl_u32 v141, v42, s18, 1
	v_add_lshl_u32 v142, v45, s18, 1
	v_dual_cndmask_b32 v131, 0x80000000, v131 :: v_dual_cndmask_b32 v134, 0x80000000, v134
	v_dual_cndmask_b32 v133, 0x80000000, v133 :: v_dual_cndmask_b32 v136, 0x80000000, v136
	v_dual_cndmask_b32 v135, 0x80000000, v135 :: v_dual_cndmask_b32 v138, 0x80000000, v138
	v_dual_cndmask_b32 v137, 0x80000000, v137 :: v_dual_cndmask_b32 v140, 0x80000000, v140
	v_dual_cndmask_b32 v139, 0x80000000, v139 :: v_dual_cndmask_b32 v142, 0x80000000, v142
	v_dual_cndmask_b32 v141, 0x80000000, v141 :: v_dual_cndmask_b32 v144, 0x80000000, v144
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s19, s45, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v130, 0x80000000, v130, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s19, 2
	s_cselect_b32 s45, s19, 0
	s_add_i32 s20, s17, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v17, v13, 0x5010400
	v_perm_b32 v128, v17, v13, 0x7030602
	v_perm_b32 v127, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v14, v20, v16, 0x5010400
	v_perm_b32 v13, v20, v16, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v16, v73, s16, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v17, v19, v15, 0x5010400
	v_perm_b32 v15, v19, v15, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v19, v74, s16, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v20, v72, s18, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s18, s45, 12
	s_mov_b32 s16, s43
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x1
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0xf
	buffer_load_u16 v20, v20, s[36:39], 0 offen
	buffer_load_u16 v130, v130, s[36:39], 0 offen
	buffer_load_u16 v131, v131, s[36:39], 0 offen
	buffer_load_u16 v132, v132, s[36:39], 0 offen
	buffer_load_u16 v133, v133, s[36:39], 0 offen
	buffer_load_u16 v134, v134, s[36:39], 0 offen
	buffer_load_u16 v135, v135, s[36:39], 0 offen
	buffer_load_u16 v136, v136, s[36:39], 0 offen
	buffer_load_u16 v137, v137, s[36:39], 0 offen
	buffer_load_u16 v138, v138, s[36:39], 0 offen
	buffer_load_u16 v139, v139, s[36:39], 0 offen
	buffer_load_u16 v140, v140, s[36:39], 0 offen
	buffer_load_u16 v141, v141, s[36:39], 0 offen
	buffer_load_u16 v142, v142, s[36:39], 0 offen
	buffer_load_u16 v143, v143, s[36:39], 0 offen
	buffer_load_u16 v144, v144, s[36:39], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s19, s18, 0
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v145, s19, v78
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s43, s19, s18
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s44, s19, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s15
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b128 v145, v[9:12] offset:16384
	s_mov_b32 s17, s20
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v10, 16, v20
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v9, 16, v16
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v9, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v25, v11, v126
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v11, 16, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v9, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v26, v12, v125
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v12, 16, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v9, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v27, v16, v124
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v16, 16, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v20, v9, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v28, v20, v123
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v20, 16, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v9, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v29, v123, v122
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v122, 16, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v9, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v30, v123, v121 :: v_dual_lshlrev_b32 v121, 16, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v9, v121
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v31, v123, v120
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v120, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v9, v120
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v32, v123, v119 :: v_dual_lshlrev_b32 v119, 16, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v9, v119
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v33, v123, v118
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v118, 16, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v9, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v34, v123, v117 :: v_dual_lshlrev_b32 v117, 16, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v9, v117
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v35, v123, v116
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v116, 16, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v9, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v36, v123, v115 :: v_dual_lshlrev_b32 v115, 16, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v9, v115
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v37, v123, v114
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v114, 16, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v9, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v38, v123, v113 :: v_dual_lshlrev_b32 v113, 16, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v9, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v39, v123, v112
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v112, 16, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v9, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v40, v9, v111 :: v_dual_mul_f32 v9, v19, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v46, v9, v110 :: v_dual_mul_f32 v9, v19, v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v110, 24, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v47, v9, v109
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v48, v9, v108 :: v_dual_add_nc_u32 v109, s43, v87
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v16
	v_mul_f32_e32 v16, v19, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v49, v9, v107 :: v_dual_add_nc_u32 v108, s43, v85
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v63, v16, v97
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v20, 8, v129
	v_lshrrev_b32_e32 v97, 8, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v50, v9, v106 :: v_dual_add_nc_u32 v107, s43, v83
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v19, v113
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v106, s43, v81
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v64, v16, v96 :: v_dual_mul_f32 v9, v19, v122
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v19, v117
	v_mul_f32_e32 v12, v19, v115
	v_mul_f32_e32 v10, v19, v118
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v96, 24, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v52, v9, v105
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v121
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v60, v11, v100
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v100, 8, v128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v62, v12, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v12.l, 0xff, v18.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v53, v9, v104
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v120
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v12.h, 0xff, v18.h
	v_lshrrev_b32_e32 v18, 8, v17
	v_and_b16 v16.h, 0xff, v17.h
	v_lshlrev_b16 v17.h, 8, v20.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v55, v9, v103
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v19, v119
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v59, v10, v101
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v10.l, 0xff, v128.l
	v_lshrrev_b32_e32 v101, 24, v129
	v_and_b16 v10.h, 0xff, v128.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v57, v9, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v9.l, 0xff, v129.l
	v_lshrrev_b32_e32 v102, 24, v128
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v19, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v98, 24, v127
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v19, v19, v112
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v9.l, v9.l, v17.h
	v_lshlrev_b16 v17.h, 8, v100.l
	v_and_b16 v9.h, 0xff, v129.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v61, v11, v99
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v99, 8, v127
	v_and_b16 v11.h, 0xff, v127.h
	v_or_b16 v10.l, v10.l, v17.h
	v_lshlrev_b16 v17.h, 8, v102.l
	v_and_b16 v16.l, 0xff, v17.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v56, v19, v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v17.l, 0xff, v15.l
	v_lshrrev_b32_e32 v19, 8, v15
	v_lshrrev_b32_e32 v20, 24, v15
	v_and_b16 v15.l, 0xff, v15.h
	v_lshlrev_b16 v15.h, 8, v101.l
	v_or_b16 v10.h, v10.h, v17.h
	v_lshlrev_b16 v17.h, 8, v98.l
	v_and_b16 v11.l, 0xff, v127.l
	v_lshrrev_b32_e32 v95, 8, v14
	v_or_b16 v9.h, v9.h, v15.h
	v_and_b16 v15.h, 0xff, v14.l
	v_lshrrev_b32_e32 v100, 24, v14
	v_and_b16 v14.l, 0xff, v14.h
	v_lshlrev_b16 v14.h, 8, v99.l
	v_or_b16 v11.h, v11.h, v17.h
	v_lshrrev_b32_e32 v98, 8, v13
	v_lshlrev_b16 v17.h, 8, v97.l
	v_lshrrev_b32_e32 v97, 24, v13
	v_or_b16 v11.l, v11.l, v14.h
	v_and_b16 v14.h, 0xff, v13.l
	v_and_b16 v13.l, 0xff, v13.h
	v_or_b16 v12.l, v12.l, v17.h
	v_lshlrev_b16 v13.h, 8, v110.l
	v_lshlrev_b16 v17.h, 8, v18.l
	v_lshlrev_b16 v18.l, 8, v96.l
	v_lshlrev_b16 v18.h, 8, v19.l
	v_lshlrev_b16 v19.l, 8, v20.l
	v_lshlrev_b16 v19.h, 8, v95.l
	v_lshlrev_b16 v20.l, 8, v100.l
	v_lshlrev_b16 v20.h, 8, v98.l
	v_lshlrev_b16 v95.l, 8, v97.l
	v_add_nc_u32_e32 v105, s43, v82
	v_add_nc_u32_e32 v104, s43, v84
	v_add_nc_u32_e32 v103, s43, v86
	v_or_b16 v12.h, v12.h, v13.h
	v_or_b16 v13.h, v16.l, v17.h
	v_or_b16 v16.l, v16.h, v18.l
	v_or_b16 v16.h, v17.l, v18.h
	v_or_b16 v15.l, v15.l, v19.l
	v_or_b16 v15.h, v15.h, v19.h
	v_or_b16 v14.l, v14.l, v20.l
	v_or_b16 v14.h, v14.h, v20.h
	v_or_b16 v13.l, v13.l, v95.l
	ds_store_b16 v106, v9
	ds_store_b16_d16_hi v106, v9 offset:64
	ds_store_b16 v105, v10
	ds_store_b16_d16_hi v105, v10 offset:64
	ds_store_b16 v107, v11
	ds_store_b16_d16_hi v107, v11 offset:64
	ds_store_b16 v104, v12
	ds_store_b16_d16_hi v104, v12 offset:64
	ds_store_b16_d16_hi v108, v13
	ds_store_b16 v108, v16 offset:64
	ds_store_b16_d16_hi v106, v16 offset:640
	ds_store_b16 v106, v15 offset:704
	ds_store_b16_d16_hi v103, v15
	ds_store_b16 v103, v14 offset:64
	ds_store_b16_d16_hi v109, v14
	ds_store_b16 v109, v13 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v20, v79
	v_mov_b32_e32 v90, v80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	s_add_i32 s46, 0, 0x4000
	s_add_i32 s44, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v20
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v90
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v2, v1, v2
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_xor_b32_e32 v6, v2, v89
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v76, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v105, v6, v88
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_xor_b32_e32 v106, 16, v105
	v_xor_b32_e32 v107, 32, v105
	v_xor_b32_e32 v108, 48, v105
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v85, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
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
	v_add_nc_u32_e32 v6, s16, v108
	v_add_nc_u32_e32 v10, s16, v107
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v87, s46, v22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[18:21], v10 offset:4096
	ds_load_b128 v[75:78], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v10, v87 offset:832
	ds_load_u8 v11, v87 offset:768
	ds_load_u8 v12, v87 offset:960
	ds_load_u8 v13, v87 offset:896
	ds_load_u8 v16, v87 offset:576
	ds_load_u8 v17, v87 offset:512
	ds_load_u8 v79, v87 offset:704
	ds_load_u8 v80, v87 offset:640
	ds_load_u8 v81, v87 offset:320
	ds_load_u8 v82, v87 offset:256
	ds_load_u8 v83, v87 offset:448
	ds_load_u8 v84, v87 offset:384
	ds_load_u8 v85, v87 offset:64
	ds_load_u8 v86, v87
	ds_load_u8 v88, v87 offset:192
	ds_load_u8 v89, v87 offset:128
	ds_load_u8 v103, v87 offset:992
	ds_load_u8 v104, v87 offset:928
	ds_load_u8 v129, v87 offset:864
	ds_load_u8 v130, v87 offset:800
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v14, s16, v106
	v_add_nc_u32_e32 v15, s16, v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v11, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v13, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v79, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v80, v89, v88, 0xc0c0004
	v_perm_b32 v12, v17, v16, 0xc0c0004
	v_perm_b32 v16, v82, v81, 0xc0c0004
	v_perm_b32 v17, v84, v83, 0xc0c0004
	v_lshl_or_b32 v98, v11, 16, v10
	v_lshl_or_b32 v95, v80, 16, v79
	v_mov_b32_e32 v86, s11
	ds_load_u8 v88, v87 offset:1856
	ds_load_u8 v89, v87 offset:1792
	v_mov_b32_e32 v81, s6
	ds_load_u8 v90, v87 offset:1984
	ds_load_u8 v91, v87 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[117:120], v14 offset:4096
	ds_load_b128 v[121:124], v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v92, v87 offset:1600
	ds_load_u8 v93, v87 offset:1536
	ds_load_u8 v94, v87 offset:1728
	ds_load_u8 v99, v87 offset:1664
	ds_load_u8 v100, v87 offset:1344
	ds_load_u8 v101, v87 offset:1280
	ds_load_u8 v102, v87 offset:1472
	ds_load_u8 v125, v87 offset:1408
	ds_load_u8 v144, v87 offset:2016
	ds_load_u8 v145, v87 offset:1952
	ds_load_u8 v146, v87 offset:1888
	ds_load_u8 v147, v87 offset:1824
	ds_load_u8 v131, v87 offset:736
	ds_load_u8 v133, v87 offset:672
	ds_load_u8 v134, v87 offset:608
	ds_load_u8 v135, v87 offset:544
	ds_load_u8 v136, v87 offset:480
	ds_load_u8 v137, v87 offset:416
	ds_load_u8 v138, v87 offset:352
	ds_load_u8 v139, v87 offset:288
	ds_load_u8 v140, v87 offset:224
	ds_load_u8 v141, v87 offset:160
	ds_load_u8 v142, v87 offset:96
	ds_load_u8 v143, v87 offset:32
	v_mov_b32_e32 v84, s9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[109:112], v15 offset:4096
	ds_load_b128 v[113:116], v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v152, v87 offset:1504
	ds_load_u8 v153, v87 offset:1440
	ds_load_u8 v154, v87 offset:1376
	ds_load_u8 v155, v87 offset:1312
	ds_load_u8 v156, v87 offset:1248
	ds_load_u8 v157, v87 offset:1184
	ds_load_u8 v158, v87 offset:1120
	ds_load_u8 v159, v87 offset:1056
	ds_load_u8 v170, v87 offset:2528
	ds_load_u8 v171, v87 offset:2464
	ds_load_u8 v172, v87 offset:2400
	ds_load_u8 v173, v87 offset:2336
	ds_load_u8 v174, v87 offset:2272
	ds_load_u8 v175, v87 offset:2208
	ds_load_u8 v176, v87 offset:2144
	ds_load_u8 v177, v87 offset:2080
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_lshl_or_b32 v97, v13, 16, v12
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v93, v99, v94, 0xc0c0004
	v_lshl_or_b32 v96, v17, 16, v16
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v94, v101, v100, 0xc0c0004
	v_mov_b32_e32 v85, s10
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v99, v125, v102, 0xc0c0004
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v87 offset:1088
	ds_load_u8 v126, v87 offset:1024
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v87 offset:1216
	ds_load_u8 v127, v87 offset:1152
	ds_load_u8 v148, v87 offset:1760
	ds_load_u8 v149, v87 offset:1696
	ds_load_u8 v150, v87 offset:1632
	ds_load_u8 v151, v87 offset:1568
	v_lshl_or_b32 v101, v93, 16, v92
	v_lshl_or_b32 v100, v99, 16, v94
	v_mov_b32_e32 v83, s8
	v_lshl_or_b32 v102, v90, 16, v88
	v_dual_mov_b32 v82, s7 :: v_dual_mov_b32 v79, s4
	v_mov_b32_e32 v80, s5
	ds_load_u8 v187, v87 offset:3808
	ds_load_u8 v188, v87 offset:3744
	ds_load_u8 v189, v87 offset:3680
	ds_load_u8 v190, v87 offset:3616
	ds_load_u8 v193, v87 offset:3552
	ds_load_u8 v194, v87 offset:3488
	ds_load_u8 v195, v87 offset:3424
	ds_load_u8 v196, v87 offset:3360
	s_waitcnt lgkmcnt(32)
	v_wmma_i32_16x16x16_iu8 v[10:17], v[113:116], v[95:98], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v127, v91, 0xc0c0004
	ds_load_u8 v127, v87 offset:3008
	ds_load_u8 v128, v87 offset:2944
	v_perm_b32 v89, v126, v89, 0xc0c0004
	ds_load_u8 v125, v87 offset:2880
	ds_load_u8 v126, v87 offset:2816
	v_lshl_or_b32 v99, v91, 16, v89
	ds_load_u8 v88, v87 offset:2624
	ds_load_u8 v89, v87 offset:2560
	ds_load_u8 v90, v87 offset:2752
	ds_load_u8 v91, v87 offset:2688
	ds_load_u8 v92, v87 offset:2368
	ds_load_u8 v93, v87 offset:2304
	ds_load_u8 v94, v87 offset:2496
	ds_load_u8 v132, v87 offset:2432
	ds_load_u8 v160, v87 offset:3040
	ds_load_u8 v161, v87 offset:2976
	ds_load_u8 v162, v87 offset:2912
	ds_load_u8 v163, v87 offset:2848
	v_wmma_i32_16x16x16_iu8 v[10:17], v[121:124], v[99:102], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v89, v91, v90, 0xc0c0004
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v87 offset:2240
	ds_load_u8 v165, v87 offset:2176
	ds_load_u8 v166, v87 offset:2784
	ds_load_u8 v167, v87 offset:2720
	ds_load_u8 v168, v87 offset:2656
	ds_load_u8 v169, v87 offset:2592
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v87 offset:2112
	ds_load_u8 v164, v87 offset:2048
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v132, v94, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v165, v165, v128, 0xc0c0004
	v_lshl_or_b32 v128, v127, 16, v125
	v_lshl_or_b32 v127, v89, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v164, v126, 0xc0c0004
	ds_load_u8 v93, v87 offset:3904
	ds_load_u8 v94, v87 offset:3840
	ds_load_u8 v132, v87 offset:4032
	ds_load_u8 v164, v87 offset:3968
	v_lshl_or_b32 v126, v91, 16, v90
	v_lshl_or_b32 v125, v165, 16, v92
	ds_load_u8 v88, v87 offset:3648
	ds_load_u8 v89, v87 offset:3584
	ds_load_u8 v90, v87 offset:3776
	ds_load_u8 v91, v87 offset:3712
	ds_load_u8 v92, v87 offset:3392
	ds_load_u8 v165, v87 offset:3328
	ds_load_u8 v178, v87 offset:3520
	ds_load_u8 v179, v87 offset:3456
	ds_load_u8 v180, v87 offset:4064
	ds_load_u8 v181, v87 offset:4000
	ds_load_u8 v182, v87 offset:3936
	ds_load_u8 v183, v87 offset:3872
	v_wmma_i32_16x16x16_iu8 v[10:17], v[75:78], v[125:128], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v191, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v192, v91, v90, 0xc0c0004
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v165, v165, v92, 0xc0c0004
	v_perm_b32 v94, v164, v132, 0xc0c0004
	ds_load_u8 v164, v87 offset:3136
	ds_load_u8 v184, v87 offset:3072
	ds_load_u8 v185, v87 offset:3264
	ds_load_u8 v186, v87 offset:3200
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	ds_load_u8 v179, v87 offset:3296
	ds_load_u8 v197, v87 offset:3232
	ds_load_u8 v198, v87 offset:3168
	ds_load_u8 v199, v87 offset:3104
	v_lshl_or_b32 v132, v94, 16, v93
	v_wmma_i32_16x16x16_iu8 v[87:94], v[109:112], v[95:98], v[79:86] neg_lo:[1,1,0]
	v_perm_b32 v95, v130, v129, 0xc0c0004
	v_perm_b32 v96, v104, v103, 0xc0c0004
	v_perm_b32 v97, v135, v134, 0xc0c0004
	v_perm_b32 v98, v133, v131, 0xc0c0004
	v_perm_b32 v103, v139, v138, 0xc0c0004
	v_perm_b32 v104, v137, v136, 0xc0c0004
	v_perm_b32 v129, v143, v142, 0xc0c0004
	v_perm_b32 v130, v141, v140, 0xc0c0004
	v_lshl_or_b32 v136, v96, 16, v95
	v_lshl_or_b32 v135, v98, 16, v97
	v_lshl_or_b32 v134, v104, 16, v103
	v_perm_b32 v103, v147, v146, 0xc0c0004
	v_lshl_or_b32 v133, v130, 16, v129
	v_perm_b32 v104, v145, v144, 0xc0c0004
	v_perm_b32 v129, v151, v150, 0xc0c0004
	v_perm_b32 v130, v149, v148, 0xc0c0004
	v_perm_b32 v131, v155, v154, 0xc0c0004
	v_perm_b32 v137, v153, v152, 0xc0c0004
	v_perm_b32 v138, v159, v158, 0xc0c0004
	v_perm_b32 v139, v157, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[87:94], v[117:120], v[99:102], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[113:116], v[133:136], v[79:86] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v104, 16, v103
	v_lshl_or_b32 v115, v130, 16, v129
	v_lshl_or_b32 v114, v137, 16, v131
	v_lshl_or_b32 v113, v139, 16, v138
	v_perm_b32 v103, v163, v162, 0xc0c0004
	v_perm_b32 v104, v161, v160, 0xc0c0004
	v_perm_b32 v129, v169, v168, 0xc0c0004
	v_perm_b32 v130, v167, v166, 0xc0c0004
	v_perm_b32 v131, v173, v172, 0xc0c0004
	v_perm_b32 v137, v171, v170, 0xc0c0004
	v_perm_b32 v138, v177, v176, 0xc0c0004
	v_perm_b32 v139, v175, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[95:102], v[121:124], v[113:116], v[95:102] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v104, 16, v103
	v_lshl_or_b32 v123, v130, 16, v129
	v_lshl_or_b32 v122, v137, 16, v131
	v_lshl_or_b32 v121, v139, 16, v138
	v_wmma_i32_16x16x16_iu8 v[79:86], v[109:112], v[133:136], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v164, v184, v164, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v184, v186, v185, 0xc0c0004
	v_perm_b32 v103, v188, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[95:102], v[75:78], v[121:124], v[95:102] neg_lo:[1,1,0]
	v_perm_b32 v75, v183, v182, 0xc0c0004
	v_perm_b32 v76, v181, v180, 0xc0c0004
	v_perm_b32 v77, v190, v189, 0xc0c0004
	v_perm_b32 v104, v196, v195, 0xc0c0004
	v_perm_b32 v109, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v199, v198, 0xc0c0004
	v_perm_b32 v111, v197, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[79:86], v[117:120], v[113:116], v[79:86] neg_lo:[1,1,0]
	v_lshl_or_b32 v131, v192, 16, v191
	v_lshl_or_b32 v130, v178, 16, v165
	v_lshl_or_b32 v129, v184, 16, v164
	v_wmma_i32_16x16x16_iu8 v[87:94], v[18:21], v[125:128], v[87:94] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v76, 16, v75
	v_lshl_or_b32 v77, v103, 16, v77
	v_lshl_or_b32 v76, v109, 16, v104
	v_lshl_or_b32 v75, v111, 16, v110
	v_wmma_i32_16x16x16_iu8 v[79:86], v[18:21], v[121:124], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[10:17], v[6:9], v[129:132], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[2:5], v[129:132], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[6:9], v[75:78], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[2:5], v[75:78], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v11
	v_cvt_f32_i32_e32 v3, v12
	v_cvt_f32_i32_e32 v4, v13
	v_cvt_f32_i32_e32 v5, v14
	v_cvt_f32_i32_e32 v6, v15
	v_cvt_f32_i32_e32 v7, v16
	v_cvt_f32_i32_e32 v8, v17
	v_cvt_f32_i32_e32 v9, v87
	v_cvt_f32_i32_e32 v11, v88
	v_cvt_f32_i32_e32 v12, v89
	v_cvt_f32_i32_e32 v13, v90
	v_cvt_f32_i32_e32 v14, v91
	v_cvt_f32_i32_e32 v15, v92
	v_cvt_f32_i32_e32 v16, v93
	v_cvt_f32_i32_e32 v17, v94
	v_cvt_f32_i32_e32 v18, v95
	v_cvt_f32_i32_e32 v19, v96
	v_cvt_f32_i32_e32 v20, v97
	v_cvt_f32_i32_e32 v21, v98
	v_cvt_f32_i32_e32 v75, v99
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v10, v10
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s26, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s26, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s42
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v87, v73, s4, 1
	v_add_lshl_u32 v88, v74, s4, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v89, v72, s4, 1
	v_add_lshl_u32 v97, v58, s4, 1
	v_add_lshl_u32 v90, v71, s4, 1
	v_add_lshl_u32 v98, v54, s4, 1
	v_add_lshl_u32 v91, v70, s4, 1
	v_add_lshl_u32 v99, v51, s4, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v92, v69, s4, 1
	v_add_lshl_u32 v100, v44, s4, 1
	v_add_lshl_u32 v93, v68, s4, 1
	v_add_lshl_u32 v94, v67, s4, 1
	v_add_lshl_u32 v95, v66, s4, 1
	v_add_lshl_u32 v96, v65, s4, 1
	v_add_lshl_u32 v101, v42, s4, 1
	v_add_lshl_u32 v102, v45, s4, 1
	v_add_lshl_u32 v103, v43, s4, 1
	v_add_lshl_u32 v104, v41, s4, 1
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	s_and_b32 s25, s25, 0xffff
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	s_clause 0xf
	buffer_load_u16 v89, v89, s[24:27], 0 offen
	buffer_load_u16 v90, v90, s[24:27], 0 offen
	buffer_load_u16 v91, v91, s[24:27], 0 offen
	buffer_load_u16 v92, v92, s[24:27], 0 offen
	buffer_load_u16 v93, v93, s[24:27], 0 offen
	buffer_load_u16 v94, v94, s[24:27], 0 offen
	buffer_load_u16 v95, v95, s[24:27], 0 offen
	buffer_load_u16 v96, v96, s[24:27], 0 offen
	buffer_load_u16 v97, v97, s[24:27], 0 offen
	buffer_load_u16 v98, v98, s[24:27], 0 offen
	buffer_load_u16 v99, v99, s[24:27], 0 offen
	buffer_load_u16 v100, v100, s[24:27], 0 offen
	buffer_load_u16 v101, v101, s[24:27], 0 offen
	buffer_load_u16 v102, v102, s[24:27], 0 offen
	buffer_load_u16 v103, v103, s[24:27], 0 offen
	buffer_load_u16 v104, v104, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v87, 0x80000000, v87 :: v_dual_cndmask_b32 v88, 0x80000000, v88
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v87, v87, s[12:15], 0 offen
	buffer_load_u16 v88, v88, s[12:15], 0 offen
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v139, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s43, v108
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v139, s11 :: v_dual_add_nc_u32 v116, s44, v22
	v_dual_mov_b32 v136, s8 :: v_dual_add_nc_u32 v107, s43, v107
	v_dual_mov_b32 v132, s4 :: v_dual_add_nc_u32 v105, s43, v105
	v_mov_b32_e32 v138, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[140:143], v1 offset:4096
	ds_load_b128 v[144:147], v1
	ds_load_b128 v[148:151], v107 offset:4096
	ds_load_b128 v[152:155], v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v134, s6 :: v_dual_add_nc_u32 v1, s43, v106
	ds_load_u8 v106, v116 offset:832
	ds_load_u8 v107, v116 offset:768
	ds_load_u8 v108, v116 offset:960
	ds_load_u8 v109, v116 offset:896
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[156:159], v105 offset:4096
	ds_load_b128 v[160:163], v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v105, v116 offset:576
	ds_load_u8 v110, v116 offset:512
	ds_load_u8 v111, v116 offset:704
	ds_load_u8 v112, v116 offset:640
	ds_load_u8 v113, v116 offset:320
	ds_load_u8 v114, v116 offset:256
	ds_load_u8 v115, v116 offset:448
	ds_load_u8 v117, v116 offset:384
	ds_load_u8 v118, v116 offset:64
	ds_load_u8 v119, v116
	ds_load_u8 v120, v116 offset:192
	ds_load_u8 v121, v116 offset:128
	ds_load_u8 v176, v116 offset:992
	ds_load_u8 v177, v116 offset:928
	ds_load_u8 v178, v116 offset:864
	ds_load_u8 v180, v116 offset:800
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v107, v109, v108, 0xc0c0004
	ds_load_u8 v181, v116 offset:736
	ds_load_u8 v182, v116 offset:672
	ds_load_u8 v183, v116 offset:608
	ds_load_u8 v184, v116 offset:544
	ds_load_u8 v185, v116 offset:480
	ds_load_u8 v186, v116 offset:416
	ds_load_u8 v187, v116 offset:352
	ds_load_u8 v188, v116 offset:288
	ds_load_u8 v189, v116 offset:224
	ds_load_u8 v190, v116 offset:160
	ds_load_u8 v191, v116 offset:96
	ds_load_u8 v192, v116 offset:32
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v105, v110, v105, 0xc0c0004
	v_lshl_or_b32 v127, v107, 16, v106
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v108, v112, v111, 0xc0c0004
	ds_load_u8 v201, v116 offset:1504
	ds_load_u8 v202, v116 offset:1440
	ds_load_u8 v203, v116 offset:1376
	ds_load_u8 v204, v116 offset:1312
	ds_load_u8 v205, v116 offset:1248
	ds_load_u8 v206, v116 offset:1184
	ds_load_u8 v207, v116 offset:1120
	ds_load_u8 v208, v116 offset:1056
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v109, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v110, v117, v115, 0xc0c0004
	v_lshl_or_b32 v126, v108, 16, v105
	ds_load_u8 v105, v116 offset:1856
	ds_load_u8 v106, v116 offset:1792
	ds_load_u8 v107, v116 offset:1984
	ds_load_u8 v117, v116 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[164:167], v1 offset:4096
	ds_load_b128 v[168:171], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v111, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v112, v121, v120, 0xc0c0004
	ds_load_u8 v1, v116 offset:1600
	ds_load_u8 v118, v116 offset:1536
	ds_load_u8 v119, v116 offset:1728
	ds_load_u8 v120, v116 offset:1664
	ds_load_u8 v121, v116 offset:1344
	ds_load_u8 v122, v116 offset:1280
	ds_load_u8 v123, v116 offset:1472
	ds_load_u8 v128, v116 offset:1408
	ds_load_u8 v193, v116 offset:2016
	ds_load_u8 v194, v116 offset:1952
	ds_load_u8 v195, v116 offset:1888
	ds_load_u8 v196, v116 offset:1824
	ds_load_u8 v219, v116 offset:2272
	ds_load_u8 v220, v116 offset:2208
	ds_load_u8 v221, v116 offset:2144
	ds_load_u8 v222, v116 offset:2080
	v_lshl_or_b32 v125, v110, 16, v109
	v_mov_b32_e32 v137, s9
	v_lshl_or_b32 v124, v112, 16, v111
	v_mov_b32_e32 v135, s7
	v_mov_b32_e32 v133, s5
	ds_load_u8 v232, v116 offset:3808
	ds_load_u8 v233, v116 offset:3744
	ds_load_u8 v234, v116 offset:3680
	ds_load_u8 v235, v116 offset:3616
	ds_load_u8 v236, v116 offset:3552
	ds_load_u8 v237, v116 offset:3488
	ds_load_u8 v238, v116 offset:3424
	ds_load_u8 v239, v116 offset:3360
	ds_load_u8 v241, v116 offset:3296
	ds_load_u8 v242, v116 offset:3232
	ds_load_u8 v243, v116 offset:3168
	ds_load_u8 v244, v116 offset:3104
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v1, v118, v1, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[108:115], v[160:163], v[124:127], v[132:139] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v118, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v119, v122, v121, 0xc0c0004
	ds_load_u8 v121, v116 offset:2880
	ds_load_u8 v122, v116 offset:2816
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v116 offset:1088
	ds_load_u8 v129, v116 offset:1024
	v_perm_b32 v107, v117, v107, 0xc0c0004
	ds_load_u8 v117, v116 offset:1216
	ds_load_u8 v130, v116 offset:1152
	ds_load_u8 v197, v116 offset:1760
	ds_load_u8 v198, v116 offset:1696
	ds_load_u8 v199, v116 offset:1632
	ds_load_u8 v200, v116 offset:1568
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v120, v128, v123, 0xc0c0004
	ds_load_u8 v123, v116 offset:3008
	ds_load_u8 v172, v116 offset:2944
	v_lshl_or_b32 v131, v107, 16, v105
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v117, v130, v117, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v106, v129, v106, 0xc0c0004
	ds_load_u8 v122, v116 offset:2112
	ds_load_u8 v173, v116 offset:2048
	v_lshl_or_b32 v130, v118, 16, v1
	v_lshl_or_b32 v129, v120, 16, v119
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v172, v123, 0xc0c0004
	v_lshl_or_b32 v128, v117, 16, v106
	ds_load_u8 v1, v116 offset:2624
	ds_load_u8 v105, v116 offset:2560
	ds_load_u8 v106, v116 offset:2752
	ds_load_u8 v107, v116 offset:2688
	ds_load_u8 v117, v116 offset:2368
	ds_load_u8 v118, v116 offset:2304
	ds_load_u8 v119, v116 offset:2496
	ds_load_u8 v120, v116 offset:2432
	ds_load_u8 v209, v116 offset:3040
	ds_load_u8 v210, v116 offset:2976
	ds_load_u8 v211, v116 offset:2912
	ds_load_u8 v212, v116 offset:2848
	ds_load_u8 v172, v116 offset:2240
	ds_load_u8 v174, v116 offset:2176
	ds_load_u8 v213, v116 offset:2784
	ds_load_u8 v214, v116 offset:2720
	ds_load_u8 v215, v116 offset:2656
	ds_load_u8 v216, v116 offset:2592
	v_lshl_or_b32 v175, v123, 16, v121
	v_wmma_i32_16x16x16_iu8 v[108:115], v[168:171], v[128:131], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v105, v1, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v105, v107, v106, 0xc0c0004
	ds_load_u8 v106, v116 offset:2528
	ds_load_u8 v107, v116 offset:2464
	ds_load_u8 v217, v116 offset:2400
	ds_load_u8 v218, v116 offset:2336
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v118, v120, v119, 0xc0c0004
	v_perm_b32 v119, v173, v122, 0xc0c0004
	ds_load_u8 v120, v116 offset:3904
	ds_load_u8 v122, v116 offset:3840
	ds_load_u8 v179, v116 offset:4032
	ds_load_u8 v223, v116 offset:3968
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v172, v174, v172, 0xc0c0004
	v_lshl_or_b32 v174, v105, 16, v1
	v_lshl_or_b32 v173, v118, 16, v117
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v172, v172, 16, v119
	ds_load_u8 v1, v116 offset:3648
	ds_load_u8 v105, v116 offset:3584
	ds_load_u8 v117, v116 offset:3776
	ds_load_u8 v118, v116 offset:3712
	ds_load_u8 v119, v116 offset:3392
	ds_load_u8 v121, v116 offset:3328
	ds_load_u8 v123, v116 offset:3520
	ds_load_u8 v224, v116 offset:3456
	ds_load_u8 v225, v116 offset:4064
	ds_load_u8 v226, v116 offset:4000
	ds_load_u8 v227, v116 offset:3936
	ds_load_u8 v228, v116 offset:3872
	v_wmma_i32_16x16x16_iu8 v[108:115], v[152:155], v[172:175], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v107, v222, v221, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v105, v1, 0xc0c0004
	v_perm_b32 v120, v122, v120, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v105, v118, v117, 0xc0c0004
	v_perm_b32 v122, v223, v179, 0xc0c0004
	ds_load_u8 v223, v116 offset:3136
	ds_load_u8 v229, v116 offset:3072
	ds_load_u8 v230, v116 offset:3264
	ds_load_u8 v231, v116 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v240, v121, v119, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v224, v224, v123, 0xc0c0004
	v_lshl_or_b32 v179, v122, 16, v120
	v_wmma_i32_16x16x16_iu8 v[116:123], v[156:159], v[124:127], v[132:139] neg_lo:[1,1,0]
	v_perm_b32 v124, v180, v178, 0xc0c0004
	v_perm_b32 v125, v177, v176, 0xc0c0004
	v_perm_b32 v126, v184, v183, 0xc0c0004
	v_perm_b32 v127, v182, v181, 0xc0c0004
	v_perm_b32 v176, v188, v187, 0xc0c0004
	v_perm_b32 v177, v186, v185, 0xc0c0004
	v_perm_b32 v178, v192, v191, 0xc0c0004
	v_perm_b32 v180, v190, v189, 0xc0c0004
	v_lshl_or_b32 v183, v125, 16, v124
	v_lshl_or_b32 v182, v127, 16, v126
	v_lshl_or_b32 v181, v177, 16, v176
	v_perm_b32 v176, v196, v195, 0xc0c0004
	v_lshl_or_b32 v180, v180, 16, v178
	v_perm_b32 v177, v194, v193, 0xc0c0004
	v_perm_b32 v178, v200, v199, 0xc0c0004
	v_perm_b32 v184, v198, v197, 0xc0c0004
	v_perm_b32 v185, v204, v203, 0xc0c0004
	v_perm_b32 v186, v202, v201, 0xc0c0004
	v_perm_b32 v187, v208, v207, 0xc0c0004
	v_perm_b32 v188, v206, v205, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[116:123], v[164:167], v[128:131], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[160:163], v[180:183], v[132:139] neg_lo:[1,1,0]
	v_lshl_or_b32 v163, v177, 16, v176
	v_lshl_or_b32 v162, v184, 16, v178
	v_lshl_or_b32 v161, v186, 16, v185
	v_lshl_or_b32 v160, v188, 16, v187
	v_perm_b32 v176, v212, v211, 0xc0c0004
	v_perm_b32 v177, v210, v209, 0xc0c0004
	v_perm_b32 v178, v216, v215, 0xc0c0004
	v_perm_b32 v184, v214, v213, 0xc0c0004
	v_perm_b32 v185, v218, v217, 0xc0c0004
	v_perm_b32 v186, v220, v219, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[124:131], v[168:171], v[160:163], v[124:131] neg_lo:[1,1,0]
	v_lshl_or_b32 v171, v177, 16, v176
	v_lshl_or_b32 v170, v184, 16, v178
	v_lshl_or_b32 v169, v106, 16, v185
	v_lshl_or_b32 v168, v186, 16, v107
	v_wmma_i32_16x16x16_iu8 v[132:139], v[156:159], v[180:183], v[132:139] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v223, v229, v223, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v231, v230, 0xc0c0004
	v_lshl_or_b32 v178, v105, 16, v1
	v_wmma_i32_16x16x16_iu8 v[124:131], v[152:155], v[168:171], v[124:131] neg_lo:[1,1,0]
	v_perm_b32 v1, v228, v227, 0xc0c0004
	v_perm_b32 v105, v226, v225, 0xc0c0004
	v_perm_b32 v106, v235, v234, 0xc0c0004
	v_perm_b32 v107, v233, v232, 0xc0c0004
	v_perm_b32 v152, v239, v238, 0xc0c0004
	v_perm_b32 v153, v237, v236, 0xc0c0004
	v_perm_b32 v156, v244, v243, 0xc0c0004
	v_perm_b32 v157, v242, v241, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[132:139], v[164:167], v[160:163], v[132:139] neg_lo:[1,1,0]
	v_lshl_or_b32 v177, v224, 16, v240
	v_lshl_or_b32 v176, v229, 16, v223
	v_wmma_i32_16x16x16_iu8 v[116:123], v[148:151], v[172:175], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v155, v105, 16, v1
	v_lshl_or_b32 v154, v107, 16, v106
	v_lshl_or_b32 v153, v153, 16, v152
	v_lshl_or_b32 v152, v157, 16, v156
	v_wmma_i32_16x16x16_iu8 v[132:139], v[148:151], v[168:171], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[144:147], v[176:179], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[140:143], v[176:179], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[124:131], v[144:147], v[152:155], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[140:143], v[152:155], v[132:139] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s41, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s41, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v88.h, v104.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v89.h, v103.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s42
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v73, v73, s4, 1
	v_add_lshl_u32 v74, v74, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v72, v72, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v71, v71, s4, 1
	v_add_lshl_u32 v70, v70, s4, 1
	v_add_lshl_u32 v58, v58, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	buffer_load_u16 v74, v74, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v69, v69, s4, 1
	v_add_lshl_u32 v54, v54, s4, 1
	v_add_lshl_u32 v68, v68, s4, 1
	v_add_lshl_u32 v67, v67, s4, 1
	v_add_lshl_u32 v66, v66, s4, 1
	v_add_lshl_u32 v65, v65, s4, 1
	v_add_lshl_u32 v51, v51, s4, 1
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	v_add_lshl_u32 v44, v44, s4, 1
	v_add_lshl_u32 v42, v42, s4, 1
	v_add_lshl_u32 v45, v45, s4, 1
	v_add_lshl_u32 v43, v43, s4, 1
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_cndmask_b32 v69, 0x80000000, v69
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	v_add_lshl_u32 v41, v41, s4, 1
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v45, 0x80000000, v45
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	v_dual_cndmask_b32 v66, 0x80000000, v66 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	s_clause 0x7
	buffer_load_u16 v72, v72, s[24:27], 0 offen
	buffer_load_u16 v71, v71, s[24:27], 0 offen
	buffer_load_u16 v70, v70, s[24:27], 0 offen
	buffer_load_u16 v69, v69, s[24:27], 0 offen
	buffer_load_u16 v68, v68, s[24:27], 0 offen
	buffer_load_u16 v67, v67, s[24:27], 0 offen
	buffer_load_u16 v66, v66, s[24:27], 0 offen
	buffer_load_u16 v65, v65, s[24:27], 0 offen
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_cndmask_b32 v43, 0x80000000, v43
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	s_clause 0x7
	buffer_load_u16 v58, v58, s[24:27], 0 offen
	buffer_load_u16 v54, v54, s[24:27], 0 offen
	buffer_load_u16 v51, v51, s[24:27], 0 offen
	buffer_load_u16 v44, v44, s[24:27], 0 offen
	buffer_load_u16 v42, v42, s[24:27], 0 offen
	buffer_load_u16 v45, v45, s[24:27], 0 offen
	buffer_load_u16 v43, v43, s[24:27], 0 offen
	buffer_load_u16 v105, v41, s[24:27], 0 offen
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v41.h, v88.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v90.h, v102.l
	v_mov_b16_e32 v91.h, v101.l
	v_mov_b16_e32 v92.h, v100.l
	v_mov_b16_e32 v93.h, v99.l
	v_mov_b16_e32 v94.h, v98.l
	v_mov_b16_e32 v95.h, v97.l
	v_mov_b16_e32 v96.h, v96.l
	v_mov_b16_e32 v97.h, v95.l
	v_mov_b16_e32 v98.h, v94.l
	v_mov_b16_e32 v99.h, v93.l
	v_mov_b16_e32 v100.h, v92.l
	v_mov_b16_e32 v101.h, v91.l
	v_mov_b16_e32 v102.h, v90.l
	v_mov_b16_e32 v103.h, v89.l
	v_mov_b16_e32 v88.l, v41.l
	v_mov_b16_e32 v89.l, v41.l
	v_mov_b16_e32 v90.l, v41.l
	v_mov_b16_e32 v91.l, v41.l
	v_mov_b16_e32 v92.l, v41.l
	v_mov_b16_e32 v93.l, v41.l
	v_mov_b16_e32 v94.l, v41.l
	v_mov_b16_e32 v95.l, v41.l
	v_mov_b16_e32 v96.l, v41.l
	v_mov_b16_e32 v97.l, v41.l
	v_mov_b16_e32 v98.l, v41.l
	v_mov_b16_e32 v99.l, v41.l
	v_mov_b16_e32 v100.l, v41.l
	v_mov_b16_e32 v101.l, v41.l
	v_mov_b16_e32 v102.l, v41.l
	v_mov_b16_e32 v103.l, v41.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v107, v41, v90 :: v_dual_and_b32 v24, 56, v24
	v_mul_f32_e32 v104, v41, v88
	v_mul_f32_e32 v106, v41, v89
	v_mul_f32_e32 v108, v41, v91
	v_mul_f32_e32 v140, v41, v92
	v_mul_f32_e32 v141, v41, v93
	v_mul_f32_e32 v142, v41, v94
	v_mul_f32_e32 v143, v41, v95
	v_mul_f32_e32 v144, v41, v96
	v_mul_f32_e32 v145, v41, v97
	v_mul_f32_e32 v146, v41, v98
	v_mul_f32_e32 v147, v41, v99
	v_mul_f32_e32 v148, v41, v100
	v_mul_f32_e32 v149, v41, v101
	v_mul_f32_e32 v150, v41, v102
	v_mul_f32_e32 v151, v41, v103
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v41.h, v87.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v107, v84, v63
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v22, s35, v22
	v_mul_lo_u32 v23, s35, v23
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v87, v41, v88
	v_mul_f32_e32 v88, v41, v89
	v_mul_f32_e32 v89, v41, v90
	v_mul_f32_e32 v90, v41, v91
	v_mul_f32_e32 v91, v41, v92
	v_mul_f32_e32 v92, v41, v93
	v_mul_f32_e32 v93, v41, v94
	v_mul_f32_e32 v94, v41, v95
	v_mul_f32_e32 v95, v41, v96
	v_mul_f32_e32 v96, v41, v97
	v_mul_f32_e32 v97, v41, v98
	v_mul_f32_e32 v98, v41, v99
	v_mul_f32_e32 v99, v41, v100
	v_mul_f32_e32 v100, v41, v101
	v_mul_f32_e32 v101, v41, v102
	v_mul_f32_e32 v102, v41, v103
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v89, v15, v38
	v_fma_f32 v6, v97, v6, v30
	v_fma_f32 v3, v100, v3, v27
	v_fma_f32 v2, v101, v2, v26
	v_fma_f32 v10, v102, v10, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v38, v15, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v87, v17, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v27, v3, s2
	v_cndmask_b32_e64 v2, v26, v2, s2
	v_cndmask_b32_e64 v10, v25, v10, s2
	v_cndmask_b32_e64 v6, v30, v6, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v96, v7, v31
	v_fma_f32 v5, v98, v5, v29
	v_fma_f32 v4, v99, v4, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v40, v17, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v94, v9, v33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v31, v7, s2
	v_cndmask_b32_e64 v5, v29, v5, s2
	v_cndmask_b32_e64 v4, v28, v4, s2
	v_cndmask_b32_e64 v63, v63, v84, s2
	v_cndmask_b32_e64 v9, v33, v9, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v25, 16, v73
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v26, 16, v74
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v104, v86, v56
	v_fma_f32 v81, v141, v81, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v56, v86, s2
	v_cndmask_b32_e64 v60, v60, v81, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v27, 16, v72
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v28, 16, v71
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v29, 16, v70
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v30, 16, v69
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v31, 16, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v106, v85, v64
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v33, 16, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v143, v79, v57
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v38, 16, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v44, v25, v27
	v_mul_f32_e32 v27, v26, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v88, v16, v39
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v40, 16, v45
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v45, v25, v28
	v_mul_f32_e32 v28, v26, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v93, v11, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v39, v16, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v39, 16, v42
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v42, 16, v43
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v150, v19, v47
	v_fma_f32 v13, v91, v13, v36
	v_fma_f32 v21, v148, v21, v49
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v34, v11, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v34, 16, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v47, v19, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v25, v30
	v_mul_f32_e32 v30, v26, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v95, v8, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v36, v13, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v36, 16, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v18, v151, v18, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v49, v21, s2
	v_cndmask_b32_e64 v8, v32, v8, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v32, 16, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v20, v149, v20, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v46, v18, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v25, v29
	v_mul_f32_e32 v29, v26, v29
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v90, v14, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v48, v20, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v48, v25, v31
	v_mul_f32_e32 v31, v26, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v92, v12, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v37, v14, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v37, 16, v51
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v51, v25, v33
	v_mul_f32_e32 v49, v25, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v35, v12, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v35, 16, v58
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v54, v25, v34
	v_mul_f32_e32 v65, v25, v36
	v_mul_f32_e32 v66, v25, v37
	v_mul_f32_e32 v67, v25, v38
	v_mul_f32_e32 v58, v25, v35
	v_mul_f32_e32 v68, v25, v39
	v_mul_f32_e32 v69, v25, v40
	v_mul_f32_e32 v70, v25, v42
	v_mul_f32_e32 v32, v26, v32
	v_mul_f32_e32 v33, v26, v33
	v_mul_f32_e32 v34, v26, v34
	v_mul_f32_e32 v35, v26, v35
	v_mul_f32_e32 v36, v26, v36
	v_mul_f32_e32 v37, v26, v37
	v_mul_f32_e32 v38, v26, v38
	v_mul_f32_e32 v39, v26, v39
	v_mul_f32_e32 v40, v26, v40
	v_mul_f32_e32 v42, v26, v42
	v_mul_f32_e32 v26, v26, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v44, v1, v10
	v_fma_f32 v44, v46, v110, v3
	v_fma_f32 v46, v48, v112, v5
	v_fma_f32 v48, v51, v114, v7
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v25, v25, v43
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v45, v109, v2
	v_fma_f32 v45, v47, v111, v4
	v_fma_f32 v47, v49, v113, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v48, s3
	v_cndmask_b32_e64 v64, v64, v85, s2
	v_cndmask_b32_e64 v57, v57, v79, s2
	v_cndmask_b32_e64 v2, v2, v43, s3
	v_cndmask_b32_e64 v4, v4, v45, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v7, v7, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v49, v54, v115, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v47, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v75, v147, v75, v50
	v_fma_f32 v51, v58, v116, v9
	v_fma_f32 v58, v66, v118, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v49, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v68, v120, v14
	v_fma_f32 v68, v70, v122, v16
	v_fma_f32 v27, v27, v124, v18
	v_fma_f32 v28, v28, v125, v19
	v_fma_f32 v29, v29, v126, v20
	v_fma_f32 v35, v35, v132, v57
	v_fma_f32 v42, v42, v138, v64
	v_fma_f32 v26, v26, v139, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v10, v1, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v2, v2, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v54, v65, v117, v11
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v4, v4, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v67, v119, v13
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v6, v6, v6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v69, v121, v15
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v8, v8, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v25, v123, v17
	v_fma_f32 v80, v142, v80, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v50, v75, s2
	v_cndmask_b32_e64 v3, v3, v44, s3
	v_cndmask_b32_e64 v10, v11, v54, s3
	v_cndmask_b32_e64 v11, v12, v58, s3
	v_cndmask_b32_e64 v12, v13, v65, s3
	v_cndmask_b32_e64 v13, v14, v66, s3
	v_cndmask_b32_e64 v14, v15, v67, s3
	v_cndmask_b32_e64 v15, v16, v68, s3
	v_cndmask_b32_e64 v16, v17, v25, s3
	v_cndmask_b32_e64 v17, v18, v27, s3
	v_cndmask_b32_e64 v18, v19, v28, s3
	v_cndmask_b32_e64 v19, v20, v29, s3
	v_cndmask_b32_e64 v29, v57, v35, s3
	v_cndmask_b32_e64 v35, v64, v42, s3
	v_cndmask_b32_e64 v26, v56, v26, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v10, v10, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v83, v108, v83, v62
	v_fma_f32 v77, v145, v77, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v59, v80, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v30, v127, v21
	v_fma_f32 v31, v31, v128, v50
	v_fma_f32 v37, v37, v134, v60
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v2, 0, v2
	v_max_f32_e32 v1, 0, v1
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v26, v26, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v62, v62, v83, s2
	v_cndmask_b32_e64 v53, v53, v77, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v36, v133, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v5, v46, s3
	v_cndmask_b32_e64 v20, v21, v30, s3
	v_cndmask_b32_e64 v21, v50, v31, s3
	v_cndmask_b32_e64 v31, v60, v37, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v26, 0, v26 :: v_dual_mul_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v33, v130, v53
	v_fma_f32 v39, v39, v136, v62
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v59, v36, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v12, v12, v12
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v4, 0, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v36.l, v2.h
	v_mov_b16_e32 v37.l, v1.h
	v_mov_b16_e32 v37.h, v41.l
	v_mov_b16_e32 v36.h, v41.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v53, v33, s3
	v_cndmask_b32_e64 v33, v62, v39, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v5, 0, v5
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v4, v4, v4 :: v_dual_and_b32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v33, v33, v33 :: v_dual_and_b32 v36, 1, v36
	v_max_f32_e32 v6, 0, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v39.l, v3.h
	v_mov_b16_e32 v39.h, v41.l
	v_add3_u32 v1, v1, v37, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v5, v5, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v2, v2, v36, 0x7fff
	v_mov_b16_e32 v36.l, v4.h
	v_mov_b16_e32 v36.h, v41.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_and_b32 v37, 1, v39
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, 0, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v2.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v1, 1, v36
	v_add3_u32 v3, v3, v37, 0x7fff
	v_mov_b16_e32 v36.l, v6.h
	v_mov_b16_e32 v37.l, v5.h
	v_mov_b16_e32 v37.h, v41.l
	v_add3_u32 v1, v4, v1, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v51, s3
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v4, v7, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, v3.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_and_b32 v3, 1, v37
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v7, 1, v36
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v14, v14, v14
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v16, v16, v16
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v36.l, v4.h
	v_add3_u32 v3, v5, v3, 0x7fff
	v_add3_u32 v5, v6, v7, 0x7fff
	v_mov_b16_e32 v6.l, v8.h
	v_mov_b16_e32 v6.h, v41.l
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v9, 0, v9
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_max_f32_e32 v13, 0, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v7, 1, v36
	v_mov_b16_e32 v5.l, v3.h
	v_and_b32_e32 v3, 1, v6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v146, v76, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.l, v10.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v144, v78, v55
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v15, v15, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v8, v3, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v8, v11, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v4, v7, 0x7fff
	v_mov_b16_e32 v7.h, v41.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v9, v9, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v52, v52, v76, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v3.l, v4.h
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v7.l, v9.h
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v32, v129, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v41.l
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v15, 0, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v4, 1, v7
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v12, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v6, v10, v6, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v78, s2
	v_cndmask_b32_e64 v25, v52, v32, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v4, v9, v4, 0x7fff
	v_mov_b16_e32 v9.l, v7.h
	v_mov_b16_e32 v9.h, v41.l
	v_and_b32_e32 v10, 1, v11
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v11, v14, v14 :: v_dual_mul_f32 v12, v13, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v6.l, v4.h
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v4, 1, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v34, v34, v131, v55
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v30, v30, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v8, v8, v10, 0x7fff
	v_mov_b16_e32 v10.l, v12.h
	v_mov_b16_e32 v10.h, v41.l
	v_add3_u32 v4, v7, v4, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v7, v15, v15 :: v_dual_max_f32 v16, 0, v16
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v19, 0, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v11.h
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v55, v34, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v18, v18, v18
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v20, 0, v20
	v_max_f32_e32 v25, 0, v25
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v4.l, v8.h
	v_and_b32_e32 v8, 1, v10
	v_mov_b16_e32 v13.l, v7.h
	v_mov_b16_e32 v13.h, v41.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v10, v16, v16 :: v_dual_and_b32 v9, 1, v9
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, 0, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v8, v12, v8, 0x7fff
	v_and_b32_e32 v12, 1, v13
	v_add3_u32 v9, v11, v9, 0x7fff
	v_mov_b16_e32 v11.l, v10.h
	v_mov_b16_e32 v11.h, v41.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v13, v18, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v12.h, v41.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v14, v17, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.l, v8.h
	v_and_b32_e32 v8, 1, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v140, v82, v61
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v13.h
	v_mov_b16_e32 v12.l, v14.h
	v_mov_b16_e32 v15.h, v41.l
	v_add3_u32 v8, v10, v8, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v61, v82, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v8.l, v7.h
	v_and_b32_e32 v7, 1, v12
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v12, v20, v20 :: v_dual_and_b32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v38, v38, v135, v61
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v28, 0, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v14, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v11, v13, v11, 0x7fff
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v13.h, v41.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v10, v19, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v61, v38, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v27, v27, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.l, v7.h
	v_and_b32_e32 v13, 1, v13
	v_mov_b16_e32 v15.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v27, 0, v27
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v21, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.h, v41.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v17, v28, v28 :: v_dual_and_b32 v14, 1, v15
	v_mul_f32_e32 v15, v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.l, v7.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v30, 0, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v10, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v14.h, v41.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v18, v27, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v12, v12, v13, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v40, v137, v63
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.h, v41.l
	v_and_b32_e32 v13, 1, v14
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v16.l, v17.h
	v_mov_b16_e32 v19.l, v18.h
	v_mov_b16_e32 v12.l, v10.h
	v_add3_u32 v10, v15, v13, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v15, v30, v30
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v7, v7, v14, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v63, v40, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v31, 0, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v13, 1, v19
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v10.l, v7.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v7, v29, v29 :: v_dual_max_f32 v34, v34, v34
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v33, 0, v33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v13, v18, v13, 0x7fff
	v_add3_u32 v14, v17, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v18.l, v7.h
	v_mov_b16_e32 v18.h, v41.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v17, v31, v31 :: v_dual_max_f32 v34, 0, v34
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v35, 0, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v16.l, v15.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v19, v32, v32
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v20.h, v41.l
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v20.l, v17.h
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v21.l, v19.h
	v_mov_b16_e32 v21.h, v41.l
	v_and_b32_e32 v0, 16, v0
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v14.l, v13.h
	v_add3_u32 v13, v15, v16, 0x7fff
	v_add3_u32 v7, v7, v18, 0x7fff
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v15, 1, v21
	v_add3_u32 v16, v17, v20, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v17, v33, v33 :: v_dual_mul_f32 v20, v26, v26
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v15, v19, v15, 0x7fff
	v_mov_b16_e32 v15.l, v16.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v16, v35, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v17.h
	v_mov_b16_e32 v19.h, v41.l
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v7, v34, v34
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v25.l, v20.h
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v25.h, v41.l
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v18.l, v7.h
	v_mov_b16_e32 v18.h, v41.l
	v_and_b32_e32 v21, 1, v21
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_mul_i32 s2, s40, s35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v17, v17, v19, 0x7fff
	v_and_b32_e32 v19, 1, v25
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v16, v16, v21, 0x7fff
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s2, s2, s33
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s3, s15
	v_add3_u32 v0, v20, v19, 0x7fff
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v38, s2, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v0.l, v16.h
	v_cndmask_b32_e32 v16, v5, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v5, vcc_lo
	v_cndmask_b32_e32 v5, v3, v1, vcc_lo
	v_add3_u32 v7, v7, v18, 0x7fff
	v_mov_b16_e32 v7.l, v17.h
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_cndmask_b32_e32 v17, v9, v6, vcc_lo
	v_dual_cndmask_b32 v3, v6, v9 :: v_dual_mov_b32 v6, 0x5410
	v_dual_mov_b32 v18, 0x7632 :: v_dual_cndmask_b32 v9, v8, v4
	v_dual_cndmask_b32 v4, v4, v8 :: v_dual_cndmask_b32 v19, v10, v11
	v_cndmask_b32_e32 v8, v11, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v6, 0x1054, v6, vcc_lo
	v_cndmask_b32_e32 v10, 0x3276, v18, vcc_lo
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v24, s2, v24, 64
	s_mov_b32 s2, 0x76543210
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_cndmask_b32 v11, v14, v12 :: v_dual_cndmask_b32 v12, v12, v14
	v_lshl_or_b32 v6, v6, 8, v6
	v_lshl_or_b32 v10, v10, 8, v10
	v_dual_cndmask_b32 v14, v7, v13 :: v_dual_cndmask_b32 v7, v13, v7
	v_permlanex16_b32 v13, v1, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v6, 0x540054, v6
	v_and_b32_e32 v10, 0x760076, v10
	v_permlanex16_b32 v2, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v6, 4, v6
	v_lshl_or_b32 v6, v10, 4, v10
	v_cndmask_b32_e32 v18, v0, v15, vcc_lo
	v_cndmask_b32_e32 v0, v15, v0, vcc_lo
	v_permlanex16_b32 v10, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v1
	v_and_b32_e32 v25, 0x7060706, v6
	v_permlanex16_b32 v15, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v16, v21
	v_perm_b32 v1, v2, v16, v25
	v_perm_b32 v2, v13, v5, v21
	v_perm_b32 v3, v13, v5, v25
	v_add_lshl_u32 v16, v38, v22, 1
	v_perm_b32 v4, v10, v17, v21
	v_perm_b32 v5, v10, v17, v25
	v_perm_b32 v6, v15, v9, v21
	v_perm_b32 v7, v15, v9, v25
	v_add_lshl_u32 v17, v24, v22, 1
	v_perm_b32 v8, v20, v19, v21
	v_perm_b32 v9, v20, v19, v25
	v_perm_b32 v10, v12, v11, v21
	v_perm_b32 v11, v12, v11, v25
	v_perm_b32 v12, v26, v14, v21
	v_perm_b32 v13, v26, v14, v25
	v_perm_b32 v14, v27, v18, v21
	v_perm_b32 v15, v27, v18, v25
	v_add_lshl_u32 v18, v38, v23, 1
	s_mov_b32 s2, s14
	v_add_lshl_u32 v19, v24, v23, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[0:3], 0 offen
	buffer_store_b128 v[4:7], v17, s[0:3], 0 offen
	buffer_store_b128 v[8:11], v18, s[0:3], 0 offen
	buffer_store_b128 v[12:15], v19, s[0:3], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 245
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 245
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17536
; TotalNumSgprs: 49
; NumVgprs: 245
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 245
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     245
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
