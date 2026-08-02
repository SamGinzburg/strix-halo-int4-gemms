	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s19, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s9, s2
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v30, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v10, 1, v0
	v_or_b32_e32 v34, 0x3f0, v0
	v_and_b32_e32 v35, 8, v0
	v_and_b32_e32 v36, 32, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v31, 62, v30
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v6, 0x70, v10
	s_mov_b32 s35, 0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v33, 2, v0
	v_and_b32_e32 v25, 15, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v56, 0, v33
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s10, s6, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s12, s10, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s12, s12, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s10, s10, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s10, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s7, v31
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s5
	s_sub_i32 s11, 0, s5
	v_rcp_iflag_f32_e32 v1, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s8
	s_mul_hi_u32 s11, s8, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s11
	s_xor_b32 s11, s2, s4
	s_mul_hi_u32 s8, s9, s8
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s8, s5
	s_sub_i32 s9, s9, s12
	s_add_i32 s12, s8, 1
	s_sub_i32 s13, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s8, s12, s8
	s_cselect_b32 s9, s13, s9
	s_add_i32 s12, s8, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s12, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s11
	s_sub_i32 s5, s5, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s16, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s8, s10, s16
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s17, s8, 4
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s18, s17
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s20, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s20
	v_readfirstlane_b32 s20, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s22, s20, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v32, v1, 4, v2
	s_mov_b32 s11, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s10, s22
	s_sub_i32 s22, 0, s18
	s_mul_i32 s22, s22, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s22
	s_add_i32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s17
	s_mul_i32 s22, s4, s18
	s_ashr_i32 s23, s10, 31
	s_sub_i32 s5, s5, s22
	s_add_i32 s22, s4, 1
	s_sub_i32 s24, s5, s18
	s_cmp_ge_u32 s5, s18
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s22, s4
	s_cselect_b32 s5, s24, s5
	s_add_i32 s22, s4, 1
	s_cmp_ge_u32 s5, s18
	s_cselect_b32 s4, s22, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s18, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s23
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s19, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s23
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s18, v31
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s17, s3, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s4, s5, 31
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s22, s7, s18
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s3, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v3, s33, s22, v32
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s24, s5, s4
.Ltmp19:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s25, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s7, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s18, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s10
	v_cndmask_b32_e32 v4, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_mov_b32 s23, s11
	s_and_b32 s21, s21, 0xffff
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[15:18], v4, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v2, s[20:23], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v2, s6, v30
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 12, v33
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v3, s7, 6, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s18, 64
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v9, v2, v4, s25
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s34, v31
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s16, s6, s18
	v_lshlrev_b32_e32 v37, 6, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 6, v0
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v2, s16, v9
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s19, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s7, v3
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
	buffer_load_b128 v[26:29], v3, s[20:23], 0 offen
	buffer_load_b128 v[45:48], v4, s[20:23], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v54, v2, s[8:11], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s34, v30
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s6, 6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v4, v0, 0, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v2, s16, s4, v9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v7, 0x420, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v4, v3, 1, v6
	v_lshlrev_b32_e32 v3, 3, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v6, v7, v31
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v8, 2, v4
	v_or_b32_e32 v11, 4, v4
	v_or_b32_e32 v12, 6, v4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v55, v2, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v38, v5, 10, v6
	v_lshlrev_b32_e32 v2, 5, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v14, 8, v4
	v_or_b32_e32 v5, 10, v4
	v_or_b32_e32 v6, 12, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v39, 0x90, v38
	v_xor_b32_e32 v40, 0x120, v38
	v_xor_b32_e32 v41, 0x1b0, v38
	v_xor_b32_e32 v42, 0x210, v38
	v_xor_b32_e32 v43, 0x330, v38
	v_xor_b32_e32 v44, 0x3a0, v38
	v_add_nc_u32_e32 v57, 0, v38
	v_add_nc_u32_e32 v58, 0, v39
	v_add_nc_u32_e32 v59, 0, v40
	v_add_nc_u32_e32 v60, 0, v41
	v_add_nc_u32_e32 v61, 0, v42
	v_add_nc_u32_e32 v62, 0, v43
	v_add_nc_u32_e32 v63, 0, v44
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v7, 14, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v23, v19, v15, 0x5010400
	v_perm_b32 v19, v19, v15, 0x7030602
	v_perm_b32 v24, v20, v16, 0x5010400
	v_perm_b32 v49, v21, v17, 0x5010400
	v_perm_b32 v21, v21, v17, 0x7030602
	v_perm_b32 v50, v22, v18, 0x5010400
	v_perm_b32 v22, v22, v18, 0x7030602
	v_lshrrev_b32_e32 v51, 8, v23
	v_lshrrev_b32_e32 v52, 24, v23
	v_and_b16 v13.l, 0xff, v23.l
	v_and_b16 v13.h, 0xff, v23.h
	v_lshrrev_b32_e32 v23, 8, v19
	v_lshrrev_b32_e32 v53, 24, v19
	v_perm_b32 v20, v20, v16, 0x7030602
	v_lshrrev_b32_e32 v64, 8, v24
	v_lshrrev_b32_e32 v65, 24, v24
	v_and_b16 v15.l, 0xff, v19.l
	v_and_b16 v15.h, 0xff, v19.h
	v_and_b16 v19.l, 0xff, v21.l
	v_lshrrev_b32_e32 v70, 8, v21
	v_lshrrev_b32_e32 v71, 24, v21
	v_and_b16 v19.h, 0xff, v21.h
	v_and_b16 v21.l, 0xff, v22.l
	v_lshrrev_b32_e32 v74, 8, v22
	v_lshrrev_b32_e32 v75, 24, v22
	v_and_b16 v21.h, 0xff, v22.h
	v_lshlrev_b16 v22.l, 8, v51.l
	v_lshlrev_b16 v22.h, 8, v52.l
	v_lshlrev_b16 v23.l, 8, v23.l
	v_lshlrev_b16 v23.h, 8, v53.l
	v_lshrrev_b32_e32 v66, 8, v20
	v_lshrrev_b32_e32 v67, 24, v20
	v_lshrrev_b32_e32 v72, 8, v50
	v_lshrrev_b32_e32 v73, 24, v50
	v_and_b16 v16.l, 0xff, v24.l
	v_and_b16 v16.h, 0xff, v24.h
	v_lshrrev_b32_e32 v68, 8, v49
	v_lshrrev_b32_e32 v69, 24, v49
	v_lshlrev_b16 v24.l, 8, v64.l
	v_lshlrev_b16 v24.h, 8, v65.l
	v_or_b16 v13.l, v13.l, v22.l
	v_or_b16 v13.h, v13.h, v22.h
	s_waitcnt vmcnt(2)
	v_perm_b32 v22, v45, v26, 0x5010400
	v_or_b16 v15.l, v15.l, v23.l
	v_or_b16 v15.h, v15.h, v23.h
	v_perm_b32 v23, v45, v26, 0x7030602
	v_and_b16 v17.l, 0xff, v20.l
	v_and_b16 v17.h, 0xff, v20.h
	v_and_b16 v18.l, 0xff, v49.l
	v_and_b16 v18.h, 0xff, v49.h
	v_and_b16 v20.l, 0xff, v50.l
	v_and_b16 v20.h, 0xff, v50.h
	v_lshlrev_b16 v49.l, 8, v66.l
	v_lshlrev_b16 v49.h, 8, v67.l
	v_lshlrev_b16 v52.l, 8, v72.l
	v_lshlrev_b16 v52.h, 8, v73.l
	v_lshlrev_b16 v50.l, 8, v68.l
	v_lshlrev_b16 v50.h, 8, v69.l
	v_lshlrev_b16 v51.l, 8, v70.l
	v_lshlrev_b16 v51.h, 8, v71.l
	v_lshlrev_b16 v53.l, 8, v74.l
	v_lshlrev_b16 v53.h, 8, v75.l
	v_or_b16 v16.l, v16.l, v24.l
	v_or_b16 v16.h, v16.h, v24.h
	v_perm_b32 v24, v46, v27, 0x5010400
	v_perm_b32 v26, v46, v27, 0x7030602
	v_perm_b32 v27, v47, v28, 0x5010400
	v_perm_b32 v28, v47, v28, 0x7030602
	v_perm_b32 v45, v48, v29, 0x5010400
	v_perm_b32 v29, v48, v29, 0x7030602
	v_lshrrev_b32_e32 v46, 8, v22
	v_lshrrev_b32_e32 v47, 24, v22
	v_lshrrev_b32_e32 v48, 8, v23
	v_or_b16 v17.l, v17.l, v49.l
	v_or_b16 v17.h, v17.h, v49.h
	v_or_b16 v20.l, v20.l, v52.l
	v_or_b16 v20.h, v20.h, v52.h
	v_lshrrev_b32_e32 v49, 24, v23
	v_or_b16 v18.l, v18.l, v50.l
	v_or_b16 v18.h, v18.h, v50.h
	v_or_b16 v19.l, v19.l, v51.l
	v_or_b16 v19.h, v19.h, v51.h
	v_or_b16 v21.l, v21.l, v53.l
	v_or_b16 v21.h, v21.h, v53.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v56, v54 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v13
	ds_store_b16_d16_hi v57, v13 offset:64
	ds_store_b16 v58, v15
	ds_store_b16_d16_hi v58, v15 offset:64
	ds_store_b16 v59, v16
	ds_store_b16_d16_hi v59, v16 offset:64
	ds_store_b16 v60, v17
	ds_store_b16_d16_hi v60, v17 offset:64
	ds_store_b16 v61, v18
	ds_store_b16_d16_hi v61, v18 offset:64
	ds_store_b16 v57, v19 offset:640
	ds_store_b16_d16_hi v57, v19 offset:704
	ds_store_b16 v62, v20
	ds_store_b16_d16_hi v62, v20 offset:64
	ds_store_b16 v63, v21
	ds_store_b16_d16_hi v63, v21 offset:64
	v_lshrrev_b32_e32 v50, 8, v24
	v_lshrrev_b32_e32 v51, 24, v24
	v_lshrrev_b32_e32 v52, 8, v26
	v_lshrrev_b32_e32 v53, 24, v26
	v_lshrrev_b32_e32 v54, 8, v27
	v_lshrrev_b32_e32 v64, 24, v27
	v_lshrrev_b32_e32 v65, 8, v28
	v_lshrrev_b32_e32 v66, 24, v28
	v_and_b16 v20.l, 0xff, v45.l
	v_lshrrev_b32_e32 v67, 8, v45
	v_lshrrev_b32_e32 v68, 24, v45
	v_and_b16 v20.h, 0xff, v45.h
	v_lshrrev_b32_e32 v45, 8, v29
	v_lshrrev_b32_e32 v69, 24, v29
	v_and_b16 v13.l, 0xff, v22.l
	v_lshlrev_b16 v22.l, 8, v46.l
	v_and_b16 v13.h, 0xff, v22.h
	v_lshlrev_b16 v22.h, 8, v47.l
	v_and_b16 v15.l, 0xff, v23.l
	v_lshlrev_b16 v23.l, 8, v48.l
	v_and_b16 v15.h, 0xff, v23.h
	v_lshlrev_b16 v23.h, 8, v49.l
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
	v_lshlrev_b16 v24.l, 8, v50.l
	v_lshlrev_b16 v24.h, 8, v51.l
	v_lshlrev_b16 v26.l, 8, v52.l
	v_lshlrev_b16 v26.h, 8, v53.l
	v_lshlrev_b16 v27.l, 8, v54.l
	v_lshlrev_b16 v27.h, 8, v64.l
	v_lshlrev_b16 v28.l, 8, v65.l
	v_lshlrev_b16 v28.h, 8, v66.l
	v_lshlrev_b16 v29.l, 8, v67.l
	v_lshlrev_b16 v29.h, 8, v68.l
	v_lshlrev_b16 v45.l, 8, v45.l
	v_lshlrev_b16 v45.h, 8, v69.l
	v_or_b16 v13.l, v13.l, v22.l
	v_or_b16 v13.h, v13.h, v22.h
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
	v_or_b16 v21.l, v21.l, v45.l
	v_or_b16 v21.h, v21.h, v45.h
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v55 offset:17408
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v57, v13 offset:8192
	ds_store_b16_d16_hi v57, v13 offset:8256
	ds_store_b16 v58, v15 offset:8192
	ds_store_b16_d16_hi v58, v15 offset:8256
	ds_store_b16 v59, v16 offset:8192
	ds_store_b16_d16_hi v59, v16 offset:8256
	ds_store_b16 v60, v17 offset:8192
	ds_store_b16_d16_hi v60, v17 offset:8256
	ds_store_b16 v61, v18 offset:8192
	ds_store_b16_d16_hi v61, v18 offset:8256
	ds_store_b16 v57, v19 offset:8832
	ds_store_b16_d16_hi v57, v19 offset:8896
	ds_store_b16 v62, v20 offset:8192
	ds_store_b16_d16_hi v62, v20 offset:8256
	ds_store_b16 v63, v21 offset:8192
	ds_store_b16_d16_hi v63, v21 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v46, 0x3f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v47, 6, v1
	v_and_b32_e32 v1, 8, v0
	v_and_b32_e32 v48, 32, v0
	v_and_or_b32 v45, 0x1800, v2, v3
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr45
.LBB0_3:                                ; %Flow15
	s_load_b64 s[4:5], s[0:1], 0x20
	v_or_b32_e32 v13, s25, v25
	s_ashr_i32 s1, s24, 6
	v_or_b32_e32 v28, s33, v4
	v_or_b32_e32 v27, s33, v8
	v_or_b32_e32 v26, s33, v11
	v_mul_lo_u32 v29, v13, s1
	v_or_b32_e32 v23, s33, v12
	v_or_b32_e32 v21, s33, v14
	v_or_b32_e32 v24, s33, v5
	v_or_b32_e32 v22, s33, v6
	v_or_b32_e32 v20, s33, v7
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 5, 1
	v_bfe_i32 v4, v0, 3, 1
	v_and_or_b32 v45, 0x1800, v2, v3
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v46, s7, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v1, 0x420, v1
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s38, s1, 3
	v_and_or_b32 v1, 0x210, v4, v1
	s_add_i32 s15, s34, 64
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_and_b32 s29, s17, 0xffff
	v_xor_b32_e32 v1, v1, v45
	s_mov_b32 s28, s16
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s36, 0, 0x4400
	s_add_i32 s37, 0, 0x2000
	v_or_b32_e32 v47, v1, v37
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v16, 0
	s_add_i32 s38, s38, -3
	s_mov_b32 s39, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v48, 16, v47
	v_xor_b32_e32 v49, 32, v47
	v_xor_b32_e32 v50, 48, v47
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s40, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s41, s40, 6
	s_mov_b32 s0, s18
	s_mov_b32 s18, s34
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s15, s41
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s41, s0, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v53, s34, v30
	v_or_b32_e32 v54, s34, v31
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[51:52], null, s34, s6, v[9:10]
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s41, s41, 26
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s42, s34, s7
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s0, s41
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s42, s42, s33
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s19, v53
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s41, s0, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v52, s42, v32
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s19, v54
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v55, s42, v46
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s41, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v53, v29, s41, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s41, s41, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v54, v28, s41, 1
	v_add_lshl_u32 v56, v27, s41, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v57, v26, s41, 1
	v_add_lshl_u32 v58, v23, s41, 1
	v_add_lshl_u32 v59, v21, s41, 1
	v_add_lshl_u32 v60, v24, s41, 1
	v_add_lshl_u32 v61, v22, s41, 1
	v_add_lshl_u32 v62, v20, s41, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v55, 0x80000000, v55, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b32 v99, v51, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v51, 0x80000000, v54 :: v_dual_cndmask_b32 v54, 0x80000000, v56
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v56, 0x80000000, v57 :: v_dual_cndmask_b32 v57, 0x80000000, v58
	v_cndmask_b32_e32 v68, 0x80000000, v61, vcc_lo
	v_dual_cndmask_b32 v58, 0x80000000, v59 :: v_dual_cndmask_b32 v67, 0x80000000, v60
	v_cndmask_b32_e32 v69, 0x80000000, v62, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[59:62], v52, s[20:23], 0 offen
	buffer_load_b128 v[63:66], v55, s[20:23], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v100, v53, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x7
	buffer_load_u16 v101, v51, s[28:31], 0 offen
	buffer_load_u16 v102, v54, s[28:31], 0 offen
	buffer_load_u16 v103, v56, s[28:31], 0 offen
	buffer_load_u16 v104, v57, s[28:31], 0 offen
	buffer_load_u16 v105, v58, s[28:31], 0 offen
	buffer_load_u16 v106, v67, s[28:31], 0 offen
	buffer_load_u16 v107, v68, s[28:31], 0 offen
	buffer_load_u16 v108, v69, s[28:31], 0 offen
	s_mov_b32 s0, s14
	s_mov_b32 s14, s36
	s_mov_b32 s36, s35
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v51, s0, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v53, s36, v47
	v_add_nc_u32_e32 v54, s36, v48
	v_add_nc_u32_e32 v55, s36, v49
	v_add_nc_u32_e32 v56, s36, v50
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v52, s0, v34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[67:70], v53
	ds_load_b128 v[71:74], v54
	ds_load_b128 v[75:78], v55
	ds_load_b128 v[79:82], v56
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v53, v51 offset:208
	ds_load_u8 v54, v51 offset:240
	ds_load_u8 v55, v51 offset:224
	ds_load_u8 v56, v51 offset:192
	ds_load_u8 v57, v51 offset:144
	ds_load_u8 v58, v51 offset:176
	ds_load_u8 v83, v51 offset:160
	ds_load_u8 v84, v51 offset:128
	ds_load_u8 v85, v51 offset:80
	ds_load_u8 v86, v51 offset:112
	ds_load_u8 v87, v51 offset:96
	ds_load_u8 v88, v51 offset:64
	ds_load_u8 v89, v51
	ds_load_u8 v90, v51 offset:16
	ds_load_u8 v91, v51 offset:32
	ds_load_u8 v92, v51 offset:48
	ds_load_u8 v93, v51 offset:464
	ds_load_u8 v94, v51 offset:496
	ds_load_u8 v95, v51 offset:480
	ds_load_u8 v96, v51 offset:448
	ds_load_u8 v97, v51 offset:400
	ds_load_u8 v98, v51 offset:432
	ds_load_u8 v109, v51 offset:416
	ds_load_u8 v110, v51 offset:384
	ds_load_u8 v111, v51 offset:336
	ds_load_u8 v112, v51 offset:368
	ds_load_u8 v113, v51 offset:352
	ds_load_u8 v114, v51 offset:320
	ds_load_u8 v115, v51 offset:272
	ds_load_u8 v116, v51 offset:304
	ds_load_u8 v117, v51 offset:288
	ds_load_u8 v118, v51 offset:256
	ds_load_u8 v119, v51 offset:720
	ds_load_u8 v120, v51 offset:752
	ds_load_u8 v121, v51 offset:736
	ds_load_u8 v122, v51 offset:704
	ds_load_u8 v123, v51 offset:656
	ds_load_u8 v124, v51 offset:688
	ds_load_u8 v125, v51 offset:672
	ds_load_u8 v126, v51 offset:640
	ds_load_u8 v127, v51 offset:592
	ds_load_u8 v128, v51 offset:624
	ds_load_u8 v129, v51 offset:608
	ds_load_u8 v130, v51 offset:576
	ds_load_u8 v131, v51 offset:528
	ds_load_u8 v132, v51 offset:560
	ds_load_u8 v133, v51 offset:544
	ds_load_u8 v134, v51 offset:512
	ds_load_u8 v135, v51 offset:976
	ds_load_u8 v52, v52
	ds_load_u8 v136, v51 offset:992
	ds_load_u8 v137, v51 offset:960
	ds_load_u8 v138, v51 offset:912
	ds_load_u8 v139, v51 offset:944
	ds_load_u8 v140, v51 offset:928
	ds_load_u8 v141, v51 offset:896
	ds_load_u8 v142, v51 offset:848
	ds_load_u8 v143, v51 offset:880
	ds_load_u8 v144, v51 offset:864
	ds_load_u8 v145, v51 offset:832
	ds_load_u8 v146, v51 offset:784
	ds_load_u8 v147, v51 offset:816
	ds_load_u8 v148, v51 offset:800
	ds_load_u8 v51, v51 offset:768
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v53, v56, v53, 0xc0c0004
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v55, v84, v57, 0xc0c0004
	v_perm_b32 v56, v83, v58, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v57, v88, v85, 0xc0c0004
	v_perm_b32 v58, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v83, v89, v90, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v87, v91, v92, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v88, v96, v93, 0xc0c0004
	v_perm_b32 v89, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v91, v110, v97, 0xc0c0004
	v_perm_b32 v92, v109, v98, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v93, v114, v111, 0xc0c0004
	v_perm_b32 v94, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v95, v118, v115, 0xc0c0004
	v_perm_b32 v96, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v97, v122, v119, 0xc0c0004
	v_perm_b32 v98, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v115, v137, v135, 0xc0c0004
	v_perm_b32 v52, v136, v52, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v51, v146, 0xc0c0004
	v_perm_b32 v120, v148, v147, 0xc0c0004
	v_lshl_or_b32 v86, v54, 16, v53
	v_lshl_or_b32 v85, v56, 16, v55
	v_lshl_or_b32 v84, v58, 16, v57
	v_lshl_or_b32 v83, v87, 16, v83
	v_perm_b32 v109, v126, v123, 0xc0c0004
	v_perm_b32 v110, v125, v124, 0xc0c0004
	v_perm_b32 v111, v130, v127, 0xc0c0004
	v_perm_b32 v112, v129, v128, 0xc0c0004
	v_perm_b32 v113, v134, v131, 0xc0c0004
	v_perm_b32 v114, v133, v132, 0xc0c0004
	v_lshl_or_b32 v90, v89, 16, v88
	v_lshl_or_b32 v89, v92, 16, v91
	v_lshl_or_b32 v88, v94, 16, v93
	v_lshl_or_b32 v87, v96, 16, v95
	v_lshl_or_b32 v94, v98, 16, v97
	v_lshl_or_b32 v98, v52, 16, v115
	v_lshl_or_b32 v95, v120, 16, v51
	v_wmma_i32_16x16x16_iu8 v[51:58], v[67:70], v[83:86], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v116, v141, v138, 0xc0c0004
	v_perm_b32 v117, v140, v139, 0xc0c0004
	v_perm_b32 v118, v145, v142, 0xc0c0004
	v_perm_b32 v119, v144, v143, 0xc0c0004
	v_lshl_or_b32 v93, v110, 16, v109
	v_lshl_or_b32 v92, v112, 16, v111
	v_lshl_or_b32 v91, v114, 16, v113
	v_wmma_i32_16x16x16_iu8 v[51:58], v[71:74], v[87:90], v[51:58] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v117, 16, v116
	v_lshl_or_b32 v96, v119, 16, v118
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s39, 1
	s_mov_b32 s35, s37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[75:78], v[91:94], v[51:58] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s0, 2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s39, s0, 0
	s_add_i32 s0, s40, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[79:82], v[95:98], v[51:58] neg_lo:[1,1,0]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s36, s39, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s37, s39, 13
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s41, s36, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s37, s37, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v70, v54
	v_cvt_f32_i32_e32 v71, v55
	v_cvt_f32_i32_e32 v72, v56
	v_cvt_f32_i32_e32 v73, v57
	v_cvt_f32_i32_e32 v74, v58
	v_cvt_f32_i32_e32 v67, v51
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s36, s41, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s40, s38
	s_mov_b32 s40, s0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(9)
	v_perm_b32 v52, v63, v59, 0x5010400
	v_perm_b32 v53, v63, v59, 0x7030602
	v_perm_b32 v54, v64, v60, 0x5010400
	v_perm_b32 v55, v64, v60, 0x7030602
	v_perm_b32 v56, v65, v61, 0x5010400
	v_perm_b32 v57, v65, v61, 0x7030602
	v_perm_b32 v58, v66, v62, 0x5010400
	v_perm_b32 v59, v66, v62, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v60, 16, v100
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v61, 16, v101
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v62, 16, v102
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v63, 16, v103
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v64, 16, v104
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v65, 16, v105
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v66, 16, v106
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v75, 16, v107
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v77, 8, v52
	v_lshrrev_b32_e32 v78, 24, v52
	v_lshrrev_b32_e32 v79, 8, v53
	v_lshrrev_b32_e32 v80, 24, v53
	v_lshrrev_b32_e32 v81, 8, v54
	v_and_b16 v51.l, 0xff, v52.l
	v_and_b16 v52.l, 0xff, v53.l
	v_and_b16 v53.l, 0xff, v54.l
	v_lshrrev_b32_e32 v82, 24, v54
	v_and_b16 v54.l, 0xff, v55.l
	v_lshrrev_b32_e32 v83, 8, v55
	v_lshrrev_b32_e32 v84, 24, v55
	v_and_b16 v55.l, 0xff, v56.l
	v_lshrrev_b32_e32 v85, 8, v56
	v_lshrrev_b32_e32 v86, 24, v56
	v_and_b16 v56.l, 0xff, v57.l
	v_lshrrev_b32_e32 v87, 8, v57
	v_lshrrev_b32_e32 v88, 24, v57
	v_and_b16 v57.l, 0xff, v58.l
	v_lshrrev_b32_e32 v89, 8, v58
	v_lshrrev_b32_e32 v90, 24, v58
	v_and_b16 v58.l, 0xff, v59.l
	v_lshrrev_b32_e32 v91, 8, v59
	v_lshrrev_b32_e32 v92, 24, v59
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v93, v60, v61
	v_mul_f32_e32 v94, v60, v62
	v_mul_f32_e32 v95, v60, v63
	v_mul_f32_e32 v96, v60, v64
	v_mul_f32_e32 v97, v60, v65
	v_mul_f32_e32 v98, v60, v66
	v_mul_f32_e32 v75, v60, v75
	v_mul_f32_e32 v76, v60, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v59.l, 8, v77.l
	v_and_b16 v51.h, 0xff, v52.h
	v_and_b16 v52.h, 0xff, v53.h
	v_and_b16 v53.h, 0xff, v54.h
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.h, 0xff, v56.h
	v_and_b16 v56.h, 0xff, v57.h
	v_and_b16 v57.h, 0xff, v58.h
	v_and_b16 v58.h, 0xff, v59.h
	v_lshlrev_b16 v59.h, 8, v78.l
	v_lshlrev_b16 v60.l, 8, v79.l
	v_lshlrev_b16 v60.h, 8, v80.l
	v_lshlrev_b16 v61.l, 8, v81.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v14, v94, v68 :: v_dual_add_nc_u32 v149, s41, v33
	v_dual_fmac_f32 v11, v93, v67 :: v_dual_add_nc_u32 v150, s37, v38
	v_dual_fmac_f32 v16, v96, v70 :: v_dual_add_nc_u32 v151, s37, v39
	v_dual_fmac_f32 v15, v95, v69 :: v_dual_add_nc_u32 v152, s37, v40
	v_dual_fmac_f32 v18, v98, v72 :: v_dual_add_nc_u32 v153, s37, v41
	v_dual_fmac_f32 v17, v97, v71 :: v_dual_add_nc_u32 v154, s37, v42
	v_dual_fmac_f32 v12, v76, v74 :: v_dual_add_nc_u32 v155, s37, v43
	v_dual_fmac_f32 v19, v75, v73 :: v_dual_add_nc_u32 v156, s37, v44
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v61.h, 8, v82.l
	v_lshlrev_b16 v62.l, 8, v83.l
	v_lshlrev_b16 v62.h, 8, v84.l
	v_lshlrev_b16 v63.l, 8, v85.l
	v_lshlrev_b16 v63.h, 8, v86.l
	v_lshlrev_b16 v64.l, 8, v87.l
	v_lshlrev_b16 v64.h, 8, v88.l
	v_lshlrev_b16 v65.l, 8, v89.l
	v_lshlrev_b16 v65.h, 8, v90.l
	v_lshlrev_b16 v66.l, 8, v91.l
	v_lshlrev_b16 v66.h, 8, v92.l
	v_or_b16 v51.l, v51.l, v59.l
	v_or_b16 v51.h, v51.h, v59.h
	v_or_b16 v52.l, v52.l, v60.l
	v_or_b16 v52.h, v52.h, v60.h
	v_or_b16 v53.l, v53.l, v61.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b32 v149, v99 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v53.h, v53.h, v61.h
	v_or_b16 v54.l, v54.l, v62.l
	v_or_b16 v54.h, v54.h, v62.h
	v_or_b16 v55.l, v55.l, v63.l
	v_or_b16 v55.h, v55.h, v63.h
	v_or_b16 v56.l, v56.l, v64.l
	v_or_b16 v56.h, v56.h, v64.h
	v_or_b16 v57.l, v57.l, v65.l
	v_or_b16 v57.h, v57.h, v65.h
	v_or_b16 v58.l, v58.l, v66.l
	v_or_b16 v58.h, v58.h, v66.h
	ds_store_b16 v150, v51
	ds_store_b16_d16_hi v150, v51 offset:64
	ds_store_b16 v151, v52
	ds_store_b16_d16_hi v151, v52 offset:64
	ds_store_b16 v152, v53
	ds_store_b16_d16_hi v152, v53 offset:64
	ds_store_b16 v153, v54
	ds_store_b16_d16_hi v153, v54 offset:64
	ds_store_b16 v154, v55
	ds_store_b16_d16_hi v154, v55 offset:64
	ds_store_b16 v150, v56 offset:640
	ds_store_b16_d16_hi v150, v56 offset:704
	ds_store_b16 v155, v57
	ds_store_b16_d16_hi v155, v57 offset:64
	ds_store_b16 v156, v58
	ds_store_b16_d16_hi v156, v58 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v46, v34 :: v_dual_mov_b32 v47, v37
	v_dual_mov_b32 v1, v35 :: v_dual_mov_b32 v48, v36
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s36, 0, 0x4400
	s_add_i32 s37, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_mov_b32_e32 v5, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v9, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v48
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v2, v1, v2
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v6, v2, v45
	v_mov_b32_e32 v2, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v36, v6, v47
	v_mov_b32_e32 v6, 0
	v_xor_b32_e32 v40, 16, v36
	v_xor_b32_e32 v41, 32, v36
	v_xor_b32_e32 v42, 48, v36
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v34, s14, v25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v2, s35, v42
	v_add_nc_u32_e32 v6, s35, v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v30, v34 offset:208
	ds_load_u8 v31, v34 offset:224
	ds_load_u8 v32, v34 offset:192
	ds_load_u8 v37, v34 offset:240
	ds_load_u8 v38, v34 offset:144
	ds_load_u8 v39, v34 offset:176
	ds_load_u8 v43, v34 offset:160
	ds_load_u8 v44, v34 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[6:9], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v45, v34 offset:112
	ds_load_u8 v47, v34 offset:80
	ds_load_u8 v48, v34 offset:96
	ds_load_u8 v49, v34 offset:64
	ds_load_u8 v50, v34
	ds_load_u8 v51, v34 offset:16
	ds_load_u8 v52, v34 offset:32
	ds_load_u8 v53, v34 offset:48
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v39, v43, v39, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v38, v44, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v39, 16, v38
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v38, v48, v45, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v50, v51, 0xc0c0004
	v_perm_b32 v54, v32, v30, 0xc0c0004
	v_perm_b32 v37, v31, v37, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v52, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v62, v37, 16, v54
	v_perm_b32 v37, v49, v47, 0xc0c0004
	v_mov_b32_e32 v47, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v33, s35, v40
	v_add_nc_u32_e32 v35, s35, v36
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v59, v48, 16, v45
	ds_load_u8 v63, v34 offset:336
	ds_load_u8 v64, v34 offset:352
	ds_load_u8 v65, v34 offset:320
	ds_load_u8 v66, v34 offset:272
	ds_load_u8 v67, v34 offset:304
	ds_load_u8 v68, v34 offset:288
	ds_load_u8 v69, v34 offset:256
	v_mov_b32_e32 v48, v47
	v_mov_b32_e32 v50, v47
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[30:33], v33
	ds_load_b128 v[55:58], v35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v52, v47 :: v_dual_add_nc_u32 v35, s14, v46
	ds_load_u8 v70, v34 offset:496
	ds_load_u8 v71, v34 offset:400
	ds_load_u8 v72, v34 offset:432
	ds_load_u8 v73, v34 offset:416
	ds_load_u8 v74, v34 offset:384
	v_lshl_or_b32 v60, v38, 16, v37
	ds_load_u8 v37, v34 offset:368
	ds_load_u8 v39, v34 offset:464
	ds_load_u8 v43, v34 offset:480
	ds_load_u8 v44, v34 offset:448
	ds_load_u8 v35, v35
	v_mov_b32_e32 v49, v47
	v_mov_b32_e32 v51, v47
	v_mov_b32_e32 v53, v47
	v_mov_b32_e32 v54, v47
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v63, v65, v63, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v65, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[55:58], v[59:62], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v43, v70, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v38, v44, v39, 0xc0c0004
	ds_load_u8 v39, v34 offset:592
	ds_load_u8 v44, v34 offset:608
	ds_load_u8 v45, v34 offset:576
	ds_load_u8 v75, v34 offset:528
	ds_load_u8 v76, v34 offset:560
	ds_load_u8 v77, v34 offset:544
	ds_load_u8 v78, v34 offset:512
	v_perm_b32 v70, v74, v71, 0xc0c0004
	v_perm_b32 v71, v73, v72, 0xc0c0004
	v_perm_b32 v37, v64, v37, 0xc0c0004
	v_perm_b32 v64, v69, v66, 0xc0c0004
	v_lshl_or_b32 v58, v43, 16, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v57, v71, 16, v70
	v_lshl_or_b32 v56, v37, 16, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v55, v65, 16, v64
	ds_load_u8 v37, v34 offset:752
	ds_load_u8 v38, v34 offset:720
	ds_load_u8 v43, v34 offset:736
	ds_load_u8 v59, v34 offset:704
	ds_load_u8 v60, v34 offset:656
	ds_load_u8 v61, v34 offset:672
	ds_load_u8 v62, v34 offset:640
	ds_load_u8 v63, v34 offset:688
	ds_load_u8 v64, v34 offset:624
	ds_load_u8 v65, v34 offset:976
	ds_load_u8 v66, v34 offset:992
	ds_load_u8 v67, v34 offset:960
	ds_load_u8 v68, v34 offset:912
	ds_load_u8 v69, v34 offset:944
	ds_load_u8 v70, v34 offset:928
	ds_load_u8 v71, v34 offset:896
	ds_load_u8 v72, v34 offset:880
	ds_load_u8 v73, v34 offset:848
	ds_load_u8 v74, v34 offset:864
	ds_load_u8 v79, v34 offset:832
	ds_load_u8 v80, v34 offset:784
	ds_load_u8 v81, v34 offset:816
	ds_load_u8 v82, v34 offset:800
	ds_load_u8 v34, v34 offset:768
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v38, v59, v38, 0xc0c0004
	v_perm_b32 v37, v43, v37, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v43, v62, v60, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v59, v61, v63, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v44, v44, v64, 0xc0c0004
	v_perm_b32 v39, v45, v39, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[30:33], v[55:58], v[47:54] neg_lo:[1,1,0]
	v_lshl_or_b32 v33, v37, 16, v38
	v_perm_b32 v60, v77, v76, 0xc0c0004
	v_perm_b32 v45, v78, v75, 0xc0c0004
	v_lshl_or_b32 v32, v59, 16, v43
	v_lshl_or_b32 v31, v44, 16, v39
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v37, v67, v65, 0xc0c0004
	v_perm_b32 v35, v66, v35, 0xc0c0004
	v_lshl_or_b32 v30, v60, 16, v45
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v38, v71, v68, 0xc0c0004
	v_perm_b32 v39, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v79, v73, 0xc0c0004
	v_perm_b32 v44, v74, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v34, v80, 0xc0c0004
	v_perm_b32 v45, v82, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[6:9], v[30:33], v[47:54] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v35, 16, v37
	v_lshl_or_b32 v8, v39, 16, v38
	v_lshl_or_b32 v7, v44, 16, v43
	v_lshl_or_b32 v6, v45, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[2:5], v[6:9], v[47:54] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v49
	v_cvt_f32_i32_e32 v5, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v51
	v_cvt_f32_i32_e32 v7, v52
	v_cvt_f32_i32_e32 v8, v53
	v_cvt_f32_i32_e32 v9, v54
	v_cvt_f32_i32_e32 v4, v47
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s18, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s18, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v30, v29, s0, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s7
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s6, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v31, v28, s0, 1
	v_add_lshl_u32 v32, v27, s0, 1
	v_add_lshl_u32 v33, v26, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v34, v23, s0, 1
	v_add_lshl_u32 v35, v21, s0, 1
	v_add_lshl_u32 v37, v24, s0, 1
	v_add_lshl_u32 v38, v22, s0, 1
	v_add_lshl_u32 v39, v20, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v30, 0x80000000, v30 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	s_and_b32 s17, s17, 0xffff
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_mov_b32 v44, 0
	s_clause 0x7
	buffer_load_u16 v31, v31, s[16:19], 0 offen
	buffer_load_u16 v32, v32, s[16:19], 0 offen
	buffer_load_u16 v33, v33, s[16:19], 0 offen
	buffer_load_u16 v34, v34, s[16:19], 0 offen
	buffer_load_u16 v35, v35, s[16:19], 0 offen
	buffer_load_u16 v37, v37, s[16:19], 0 offen
	buffer_load_u16 v38, v38, s[16:19], 0 offen
	buffer_load_u16 v39, v39, s[16:19], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v49, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s36, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v42, s37, v42
	v_add_nc_u32_e32 v41, s37, v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v25, v1 offset:208
	ds_load_u8 v43, v1 offset:224
	ds_load_u8 v44, v1 offset:192
	ds_load_u8 v45, v1 offset:240
	ds_load_u8 v47, v1 offset:144
	ds_load_u8 v48, v1 offset:176
	ds_load_u8 v49, v1 offset:160
	ds_load_u8 v50, v1 offset:128
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[51:54], v42
	ds_load_b128 v[55:58], v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v41, v1 offset:112
	ds_load_u8 v42, v1 offset:80
	ds_load_u8 v67, v1 offset:96
	ds_load_u8 v68, v1 offset:64
	ds_load_u8 v71, v1
	ds_load_u8 v72, v1 offset:16
	ds_load_u8 v73, v1 offset:32
	ds_load_u8 v74, v1 offset:48
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v43, v43, v45, 0xc0c0004
	v_perm_b32 v25, v44, v25, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v44, v50, v47, 0xc0c0004
	v_perm_b32 v45, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v70, v43, 16, v25
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v40, s37, v40
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v36, s37, v36
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v69, v45, 16, v44
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v68, v42, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v44, v71, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v73, v74, 0xc0c0004
	v_mov_b32_e32 v47, v43
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[59:62], v40
	ds_load_b128 v[63:66], v36
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v40, v67, v41, 0xc0c0004
	v_dual_mov_b32 v49, v43 :: v_dual_add_nc_u32 v36, s36, v46
	v_lshl_or_b32 v67, v45, 16, v44
	v_mov_b32_e32 v44, v43
	ds_load_u8 v75, v1 offset:336
	ds_load_u8 v76, v1 offset:352
	ds_load_u8 v77, v1 offset:320
	ds_load_u8 v78, v1 offset:272
	ds_load_u8 v79, v1 offset:304
	ds_load_u8 v80, v1 offset:288
	ds_load_u8 v81, v1 offset:256
	ds_load_u8 v71, v1 offset:496
	ds_load_u8 v72, v1 offset:400
	ds_load_u8 v73, v1 offset:432
	ds_load_u8 v74, v1 offset:416
	ds_load_u8 v83, v1 offset:384
	v_lshl_or_b32 v68, v40, 16, v25
	ds_load_u8 v25, v1 offset:368
	ds_load_u8 v41, v1 offset:464
	ds_load_u8 v42, v1 offset:480
	ds_load_u8 v82, v1 offset:448
	ds_load_u8 v36, v36
	v_mov_b32_e32 v45, v43
	v_mov_b32_e32 v46, v43
	v_mov_b32_e32 v48, v43
	v_mov_b32_e32 v50, v43
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[63:66], v[67:70], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v42, v71, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v40, v82, v41, 0xc0c0004
	ds_load_u8 v41, v1 offset:592
	ds_load_u8 v82, v1 offset:608
	ds_load_u8 v84, v1 offset:576
	ds_load_u8 v85, v1 offset:528
	ds_load_u8 v86, v1 offset:560
	ds_load_u8 v87, v1 offset:544
	ds_load_u8 v88, v1 offset:512
	v_perm_b32 v71, v83, v72, 0xc0c0004
	v_perm_b32 v72, v74, v73, 0xc0c0004
	v_perm_b32 v73, v77, v75, 0xc0c0004
	v_perm_b32 v25, v76, v25, 0xc0c0004
	v_perm_b32 v74, v81, v78, 0xc0c0004
	v_perm_b32 v75, v80, v79, 0xc0c0004
	v_lshl_or_b32 v66, v42, 16, v40
	v_lshl_or_b32 v65, v72, 16, v71
	v_lshl_or_b32 v64, v25, 16, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v63, v75, 16, v74
	ds_load_u8 v25, v1 offset:752
	ds_load_u8 v40, v1 offset:720
	ds_load_u8 v42, v1 offset:736
	ds_load_u8 v67, v1 offset:704
	ds_load_u8 v68, v1 offset:656
	ds_load_u8 v69, v1 offset:672
	ds_load_u8 v70, v1 offset:640
	ds_load_u8 v71, v1 offset:688
	ds_load_u8 v72, v1 offset:624
	ds_load_u8 v73, v1 offset:976
	ds_load_u8 v74, v1 offset:992
	ds_load_u8 v75, v1 offset:960
	ds_load_u8 v76, v1 offset:912
	ds_load_u8 v77, v1 offset:944
	ds_load_u8 v78, v1 offset:928
	ds_load_u8 v79, v1 offset:896
	ds_load_u8 v80, v1 offset:880
	ds_load_u8 v81, v1 offset:848
	ds_load_u8 v83, v1 offset:864
	ds_load_u8 v89, v1 offset:832
	ds_load_u8 v90, v1 offset:784
	ds_load_u8 v91, v1 offset:816
	ds_load_u8 v92, v1 offset:800
	ds_load_u8 v1, v1 offset:768
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v40, v67, v40, 0xc0c0004
	v_perm_b32 v25, v42, v25, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v42, v70, v68, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v67, v69, v71, 0xc0c0004
	v_perm_b32 v41, v84, v41, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v68, v82, v72, 0xc0c0004
	v_perm_b32 v70, v87, v86, 0xc0c0004
	v_perm_b32 v69, v88, v85, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[59:62], v[63:66], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v25, 16, v40
	v_lshl_or_b32 v61, v67, 16, v42
	v_lshl_or_b32 v60, v68, 16, v41
	v_lshl_or_b32 v59, v70, 16, v69
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v25, v75, v73, 0xc0c0004
	v_perm_b32 v36, v74, v36, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v40, v79, v76, 0xc0c0004
	v_perm_b32 v41, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v42, v89, v81, 0xc0c0004
	v_perm_b32 v63, v83, v80, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v90, 0xc0c0004
	v_perm_b32 v64, v92, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[55:58], v[59:62], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v36, 16, v25
	v_lshl_or_b32 v57, v41, 16, v40
	v_lshl_or_b32 v56, v63, 16, v42
	v_lshl_or_b32 v55, v64, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[51:54], v[55:58], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s34, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v31.h, v38.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v37.h, v31.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s34, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s15
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v25, v29, s0, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v29.l, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v28, v28, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v27, v27, s0, 1
	v_add_lshl_u32 v26, v26, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v23, v23, s0, 1
	v_add_lshl_u32 v21, v21, s0, 1
	v_add_lshl_u32 v24, v24, s0, 1
	v_add_lshl_u32 v22, v22, s0, 1
	v_add_lshl_u32 v20, v20, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v29.h, v30.l
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
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v36.h, v32.l
	v_mov_b16_e32 v36.l, v29.l
	v_mov_b16_e32 v30.h, v39.l
	v_mov_b16_e32 v32.h, v37.l
	v_mov_b16_e32 v33.h, v35.l
	v_mov_b16_e32 v34.h, v34.l
	v_mov_b16_e32 v35.h, v33.l
	v_mov_b16_e32 v30.l, v29.l
	v_mov_b16_e32 v32.l, v29.l
	v_mov_b16_e32 v33.l, v29.l
	v_mov_b16_e32 v34.l, v29.l
	v_mov_b16_e32 v35.l, v29.l
	v_mov_b16_e32 v37.l, v29.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v36, v29, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v31, v8, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v38, 0x5410 :: v_dual_mul_f32 v33, v29, v33
	v_mov_b16_e32 v40.h, v29.l
	v_mov_b16_e32 v41.h, v29.l
	v_mov_b16_e32 v42.h, v29.l
	v_mov_b16_e32 v46.h, v29.l
	v_mov_b16_e32 v51.h, v29.l
	v_mov_b16_e32 v52.h, v29.l
	v_mov_b16_e32 v53.h, v29.l
	v_mov_b16_e32 v54.h, v29.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v29, v30
	v_mul_f32_e32 v32, v29, v32
	v_mul_f32_e32 v34, v29, v34
	v_mul_f32_e32 v35, v29, v35
	v_mul_f32_e32 v29, v29, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v19, v8, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v33, v6, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v39, 0x7632 :: v_dual_and_b32 v0, 16, v0
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v13, v13, s7
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v17, v6, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v17, 16, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v34, v5, v16
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v36, v2, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v16, v5, s2
	v_cndmask_b32_e64 v2, v14, v2, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v14, 16, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v29, v4, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v11, v4, s2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v30, v9, v12
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v16, 16, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v19, v11, v19 :: v_dual_lshlrev_b32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v12, v9, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v12, 16, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v35, v3, v15
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v14, v11, v14
	v_mul_f32_e32 v17, v11, v17
	v_mul_f32_e32 v12, v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v15, v3, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v15, 16, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v32, v7, v18
	v_fma_f32 v1, v12, v1, v4
	v_fma_f32 v12, v14, v43, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v11, v15
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v18, v7, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v18, 16, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v4, v1, s3
	v_cndmask_b32_e64 v2, v2, v12, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v15, v44, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v1, v1, v1 :: v_dual_mul_f32 v16, v11, v16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v14, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, 0, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v16, v45, v5
	v_fma_f32 v16, v17, v47, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v1, v1, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v5, v15, s3
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v6, v16, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v41.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v4, v4, v4
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v18, v11, v18 :: v_dual_max_f32 v3, 0, v3
	v_mul_f32_e32 v11, v11, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v4, 0, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v18, v48, v7
	v_fma_f32 v18, v19, v49, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v11, v11, v50, v9
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v5, 0, v5
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v3, v3, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v7, v17, s3
	v_cndmask_b32_e64 v7, v8, v18, s3
	v_cndmask_b32_e64 v8, v9, v11, s3
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v5, v5, v5 :: v_dual_mul_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v6, v6, v6 :: v_dual_and_b32 v9, 1, v41
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v52.l, v5.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v2, 0, v2
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v8, 0, v8
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_and_b32 v11, 1, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.l, v3.h
	v_add3_u32 v5, v5, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v2.h
	v_mov_b16_e32 v51.l, v6.h
	v_dual_cndmask_b32 v11, 0x1054, v38 :: v_dual_mul_f32 v8, v8, v8
	v_add3_u32 v1, v1, v9, 0x7fff
	v_mov_b16_e32 v42.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v14, 1, v51
	v_mov_b16_e32 v54.l, v7.h
	v_and_b32_e32 v0, 1, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v6, v14, 0x7fff
	v_mov_b16_e32 v6.l, v5.h
	v_and_b32_e32 v12, 1, v40
	v_add3_u32 v0, v4, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v2, v12, 0x7fff
	v_mov_b16_e32 v2.l, v1.h
	v_and_b32_e32 v1, 1, v46
	v_mov_b16_e32 v53.l, v8.h
	v_dual_cndmask_b32 v12, 0x3276, v39 :: v_dual_cndmask_b32 v9, v6, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v3, v1, 0x7fff
	v_and_b32_e32 v5, 1, v53
	v_lshl_or_b32 v3, v11, 8, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v4, v12, 8, v12
	v_cndmask_b32_e32 v2, v2, v6, vcc_lo
	v_mov_b16_e32 v0.l, v1.h
	v_add3_u32 v5, v8, v5, 0x7fff
	v_and_b32_e32 v14, 1, v54
	v_and_b32_e32 v1, 0x540054, v3
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v7, v14, 0x7fff
	v_lshl_or_b32 v1, v1, 4, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v5.l, v7.h
	v_and_b32_e32 v3, 0x760076, v4
	v_and_b32_e32 v6, 0x5040504, v1
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_and_or_b32 v7, 0x78, v10, s33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e32 v4, v0, v5, vcc_lo
	v_lshl_or_b32 v3, v3, 4, v3
	v_cndmask_b32_e32 v5, v5, v0, vcc_lo
	v_perm_b32 v0, v2, v9, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v3, 0x7060706, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v1, v2, v9, v3
	v_perm_b32 v2, v4, v5, v6
	v_perm_b32 v3, v4, v5, v3
	v_add_lshl_u32 v4, v7, v13, 1
	buffer_store_b128 v[0:3], v4, s[4:7], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 157
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9788
; TotalNumSgprs: 45
; NumVgprs: 157
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     157
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
