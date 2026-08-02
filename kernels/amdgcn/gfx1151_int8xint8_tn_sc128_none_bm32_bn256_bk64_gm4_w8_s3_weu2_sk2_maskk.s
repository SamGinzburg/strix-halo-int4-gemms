	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
	v_and_b32_e32 v26, 0xf0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v20, 15, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v64, 2, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v27, 14, v0
	v_and_b32_e32 v28, 1, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v65, 2, v26
	v_or_b32_e32 v69, 0x3f0, v0
	v_or_b32_e32 v70, 0x7f0, v0
	v_and_b32_e32 v71, 8, v0
	v_and_b32_e32 v72, 32, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 31
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
	s_lshr_b32 s9, s9, 27
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
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s12, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s35, v65
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s33, s35, 3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v66, v20, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_lshl_add_u32 v67, s35, 1, v66
	v_add_nc_u32_e32 v68, s33, v66
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_lshl_b32 s15, s13, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s13, s13, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s14, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s13
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s14, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s13, s2
	s_abs_i32 s14, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s17, s14
	s_sub_i32 s18, 0, s14
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s34, v64
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
	s_xor_b32 s17, s2, s16
	s_mul_i32 s18, s12, s14
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s13, s13, s18
	s_add_i32 s18, s12, 1
	s_sub_i32 s19, s13, s14
	s_cmp_ge_u32 s13, s14
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s13, s19, s13
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s13, s14
	s_cselect_b32 s12, s18, s12
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s12, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s31, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s30, v64
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s13, s3, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s12, s14, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s13
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s12, s12, 25
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s46, s3, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s14, s12
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s26, s2, 5
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0x7f
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s30, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s17, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v63, 3, v0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s46, s17
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s31, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v67
	v_add_nc_u32_e32 v5, s12, v68
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 24, v63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s12, v66
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s18, s34, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v17, v1, v2, s26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v4, s2
	v_cndmask_b32_e64 v4, 0x80000000, v5, s2
	v_cndmask_b32_e64 v1, 0x80000000, v3, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s35, v3
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v13, s18, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[5:8], v2, s[20:23], 0 offen
	buffer_load_b128 v[9:12], v4, s[20:23], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s14, 0xff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v13, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s27, s30, 0x80
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s15, s35, 7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[18:19], v2, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v1, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v3, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s27, v65
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s15
	v_and_b32_e32 v73, 48, v63
	v_add_nc_u32_e32 v2, s12, v66
	v_add_nc_u32_e32 v3, s12, v67
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s12, v68
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s12, s34, 7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s35, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_clause 0x3
	buffer_load_b128 v[29:32], v2, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v1, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v3, s[20:23], 0 offen
	buffer_load_b128 v[41:44], v4, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s27, v64
	v_lshlrev_b32_e32 v2, 5, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v1, s18, s12, v17
	s_mov_b32 s12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s14, 0x17f
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_b64 v[45:46], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 0x420, v1
	v_xor_b32_e32 v3, v1, v65
	v_lshlrev_b32_e32 v1, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v75, v27, 10, v3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v3, 0, v63
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v76, 0x90, v75
	v_xor_b32_e32 v77, 0x120, v75
	v_xor_b32_e32 v78, 0x1b0, v75
	v_xor_b32_e32 v79, 0x210, v75
	v_add_nc_u32_e32 v25, 0, v75
	v_xor_b32_e32 v80, 0x330, v75
	v_xor_b32_e32 v81, 0x3a0, v75
	v_add_nc_u32_e32 v47, 0, v76
	v_add_nc_u32_e32 v48, 0, v77
	v_add_nc_u32_e32 v49, 0, v78
	v_add_nc_u32_e32 v50, 0, v79
	v_add_nc_u32_e32 v51, 0, v80
	v_add_nc_u32_e32 v52, 0, v81
	v_add_nc_u32_e32 v53, 0x4000, v25
	v_add_nc_u32_e32 v54, 0x4000, v47
	v_add_nc_u32_e32 v55, 0x4000, v48
	v_add_nc_u32_e32 v56, 0x4000, v49
	v_add_nc_u32_e32 v57, 0x4000, v50
	v_add_nc_u32_e32 v58, 0x4000, v51
	v_add_nc_u32_e32 v59, 0x4000, v52
	s_waitcnt vmcnt(8)
	v_perm_b32 v60, v9, v5, 0x4000501
	v_perm_b32 v5, v9, v5, 0x6020703
	v_perm_b32 v9, v10, v6, 0x4000501
	v_perm_b32 v6, v10, v6, 0x6020703
	v_perm_b32 v10, v11, v7, 0x4000501
	v_perm_b32 v7, v11, v7, 0x6020703
	v_perm_b32 v11, v12, v8, 0x4000501
	v_perm_b32 v8, v12, v8, 0x6020703
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(7)
	ds_store_b64 v3, v[18:19] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(5)
	v_perm_b32 v12, v21, v13, 0x4000501
	v_perm_b32 v13, v21, v13, 0x6020703
	v_perm_b32 v18, v22, v14, 0x4000501
	v_perm_b32 v14, v22, v14, 0x6020703
	v_perm_b32 v19, v23, v15, 0x4000501
	v_perm_b32 v15, v23, v15, 0x6020703
	v_perm_b32 v21, v24, v16, 0x4000501
	v_perm_b32 v16, v24, v16, 0x6020703
	v_perm_b32 v22, v60, v12, 0x7060302
	v_perm_b32 v12, v60, v12, 0x5040100
	v_perm_b32 v23, v5, v13, 0x7060302
	v_perm_b32 v5, v5, v13, 0x5040100
	v_perm_b32 v13, v9, v18, 0x7060302
	v_perm_b32 v9, v9, v18, 0x5040100
	v_perm_b32 v18, v6, v14, 0x7060302
	v_perm_b32 v6, v6, v14, 0x5040100
	v_perm_b32 v14, v10, v19, 0x7060302
	v_perm_b32 v10, v10, v19, 0x5040100
	v_perm_b32 v19, v7, v15, 0x7060302
	v_perm_b32 v7, v7, v15, 0x5040100
	v_perm_b32 v15, v11, v21, 0x7060302
	v_perm_b32 v11, v11, v21, 0x5040100
	v_perm_b32 v21, v8, v16, 0x7060302
	v_perm_b32 v8, v8, v16, 0x5040100
	s_waitcnt vmcnt(3)
	v_perm_b32 v16, v33, v29, 0x4000501
	s_waitcnt vmcnt(1)
	v_perm_b32 v24, v41, v37, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	v_perm_b32 v33, v41, v37, 0x6020703
	v_perm_b32 v37, v34, v30, 0x4000501
	v_perm_b32 v41, v42, v38, 0x4000501
	v_perm_b32 v30, v34, v30, 0x6020703
	v_perm_b32 v34, v42, v38, 0x6020703
	v_perm_b32 v38, v35, v31, 0x4000501
	v_perm_b32 v42, v43, v39, 0x4000501
	v_perm_b32 v31, v35, v31, 0x6020703
	v_perm_b32 v35, v43, v39, 0x6020703
	v_perm_b32 v39, v36, v32, 0x4000501
	v_perm_b32 v43, v44, v40, 0x4000501
	v_perm_b32 v32, v36, v32, 0x6020703
	v_perm_b32 v36, v44, v40, 0x6020703
	ds_store_2addr_b32 v25, v22, v12 offset1:16
	ds_store_2addr_b32 v47, v23, v5 offset1:16
	ds_store_2addr_b32 v48, v13, v9 offset1:16
	ds_store_2addr_b32 v49, v18, v6 offset1:16
	ds_store_2addr_b32 v50, v14, v10 offset1:16
	ds_store_2addr_b32 v25, v19, v7 offset0:160 offset1:176
	ds_store_2addr_b32 v51, v15, v11 offset1:16
	ds_store_2addr_b32 v52, v21, v8 offset1:16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v3, v[45:46] offset:34816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v3, v24, v16, 0x7060302
	v_perm_b32 v5, v24, v16, 0x5040100
	v_perm_b32 v6, v33, v29, 0x7060302
	v_perm_b32 v7, v33, v29, 0x5040100
	v_perm_b32 v8, v41, v37, 0x7060302
	v_perm_b32 v9, v41, v37, 0x5040100
	v_perm_b32 v10, v34, v30, 0x7060302
	v_perm_b32 v11, v34, v30, 0x5040100
	v_perm_b32 v12, v42, v38, 0x7060302
	v_perm_b32 v13, v42, v38, 0x5040100
	v_perm_b32 v14, v35, v31, 0x7060302
	v_perm_b32 v15, v35, v31, 0x5040100
	v_perm_b32 v16, v43, v39, 0x7060302
	v_perm_b32 v18, v43, v39, 0x5040100
	v_perm_b32 v19, v36, v32, 0x7060302
	v_perm_b32 v21, v36, v32, 0x5040100
	ds_store_2addr_b32 v53, v3, v5 offset1:16
	ds_store_2addr_b32 v54, v6, v7 offset1:16
	ds_store_2addr_b32 v55, v8, v9 offset1:16
	ds_store_2addr_b32 v56, v10, v11 offset1:16
	ds_store_2addr_b32 v57, v12, v13 offset1:16
	ds_store_2addr_b32 v53, v14, v15 offset0:160 offset1:176
	ds_store_2addr_b32 v58, v16, v18 offset1:16
	ds_store_2addr_b32 v59, v19, v21 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v7, 0x1800, v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v87, 0x3f0, v0
	v_or_b32_e32 v98, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 48, v63
	v_and_b32_e32 v6, 8, v0
	v_and_b32_e32 v5, 32, v0
	v_and_or_b32 v74, 0x1c0, v1, v7
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr74
.LBB0_3:                                ; %Flow58
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v7, s26, v20
	v_or_b32_e32 v4, s26, v4
	s_ashr_i32 s1, s13, 7
	v_cmp_eq_u32_e64 s0, 0, v28
	v_or_b32_e32 v25, s46, v0
	v_mul_lo_u32 v62, v7, s1
	v_mul_lo_u32 v61, v4, s1
	v_lshlrev_b32_e32 v23, 2, v26
	v_lshlrev_b32_e32 v21, 1, v27
	v_lshlrev_b32_e32 v24, 5, v28
	v_lshlrev_b32_e32 v22, 1, v26
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 3, 1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v2, 0x1800, v2
	v_and_b32_e32 v3, 0x210, v3
	v_bfe_i32 v4, v0, 5, 1
	v_add3_u32 v9, 0, v23, v24
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v82, s35, v66
	v_and_or_b32 v74, 0x1c0, v1, v2
	v_xor_b32_e32 v1, v3, v73
	v_and_b32_e32 v2, 0x420, v4
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v88, 0, v22
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v1, v74, v1
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v87, v9, v21
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v37, 0
	v_xor_b32_e32 v83, v1, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v84, 16, v83
	v_xor_b32_e32 v85, 32, v83
	v_xor_b32_e32 v86, 48, v83
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v60, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s47, s1, 3
	s_add_i32 s10, s27, 0x80
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s11, 1
	s_add_i32 s48, 0, 0x8000
	s_add_i32 s44, 0, 0x8800
	s_add_i32 s45, 0, 0x4000
	s_add_i32 s47, s47, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 7
	s_mov_b32 s14, s12
	s_mov_b32 s12, s30
	s_mov_b32 s30, s27
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s27, s10, s15
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v140, s48, v20
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v13, s27, v64
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s27, s34, v[17:18]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s14, v83
	v_add_nc_u32_e32 v12, s14, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v13
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b64 v[18:19], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v140 offset:416
	ds_load_u8 v10, v140 offset:384
	ds_load_u8 v13, v140 offset:480
	ds_load_u8 v14, v140 offset:448
	ds_load_u8 v15, v140 offset:288
	ds_load_u8 v16, v140 offset:256
	ds_load_u8 v89, v140 offset:352
	ds_load_u8 v90, v140 offset:320
	ds_load_u8 v91, v140 offset:160
	ds_load_u8 v92, v140 offset:128
	ds_load_u8 v93, v140 offset:224
	ds_load_u8 v94, v140 offset:192
	ds_load_u8 v95, v140 offset:96
	ds_load_u8 v96, v140 offset:64
	ds_load_u8 v105, v140
	ds_load_u8 v106, v140 offset:32
	ds_load_u8 v109, v140 offset:928
	ds_load_u8 v110, v140 offset:896
	ds_load_u8 v111, v140 offset:992
	ds_load_u8 v112, v140 offset:960
	ds_load_u8 v113, v140 offset:800
	ds_load_u8 v114, v140 offset:768
	ds_load_u8 v115, v140 offset:864
	ds_load_u8 v116, v140 offset:832
	ds_load_u8 v117, v140 offset:672
	ds_load_u8 v118, v140 offset:640
	ds_load_u8 v119, v140 offset:736
	ds_load_u8 v120, v140 offset:704
	ds_load_u8 v121, v140 offset:544
	ds_load_u8 v122, v140 offset:512
	ds_load_u8 v123, v140 offset:608
	ds_load_u8 v124, v140 offset:576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[97:100], v11
	ds_load_b128 v[101:104], v11 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v10, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v14, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v11, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v89, v105, v106, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[105:108], v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v90, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v91, v112, v111, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[109:112], v12 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v13, v16, v15, 0xc0c0004
	v_perm_b32 v15, v94, v93, 0xc0c0004
	v_perm_b32 v16, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v12, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v93, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v94, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v95, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v124, v123, 0xc0c0004
	v_lshl_or_b32 v116, v10, 16, v9
	v_lshl_or_b32 v115, v14, 16, v13
	v_lshl_or_b32 v114, v15, 16, v11
	v_lshl_or_b32 v113, v16, 16, v89
	v_lshl_or_b32 v120, v91, 16, v90
	v_lshl_or_b32 v119, v12, 16, v92
	v_lshl_or_b32 v118, v94, 16, v93
	v_lshl_or_b32 v117, v96, 16, v95
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[101:104], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v113, v140 offset:400
	ds_load_u8 v114, v140 offset:496
	ds_load_u8 v115, v140 offset:464
	ds_load_u8 v116, v140 offset:304
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[105:108], v[117:120], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v125, v140 offset:432
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[109:112], v[117:120], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v117, v140 offset:272
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v140 offset:368
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v117, v117, v116, 0xc0c0004
	ds_load_u8 v116, v140 offset:336
	v_perm_b32 v113, v113, v125, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v140 offset:176
	ds_load_u8 v114, v140 offset:144
	v_lshl_or_b32 v115, v115, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v140 offset:240
	ds_load_u8 v117, v140 offset:208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v117, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v140 offset:112
	ds_load_u8 v117, v140 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v117, v113, 0xc0c0004
	ds_load_u8 v117, v140 offset:16
	ds_load_u8 v118, v140 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v113, 16, v117
	ds_load_u8 v117, v140 offset:944
	ds_load_u8 v118, v140 offset:912
	v_wmma_i32_16x16x16_iu8 v[128:135], v[101:104], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v118, s48, v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v118, v118
	ds_load_u8 v119, v140 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v140 offset:816
	ds_load_u8 v120, v140 offset:784
	v_lshl_or_b32 v139, v118, 16, v117
	ds_load_u8 v117, v140 offset:688
	ds_load_u8 v118, v140 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v140 offset:880
	ds_load_u8 v121, v140 offset:848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v120, 16, v119
	v_wmma_i32_16x16x16_iu8 v[120:127], v[97:100], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v97, v140 offset:1440
	ds_load_u8 v98, v140 offset:1408
	ds_load_u8 v99, v140 offset:1504
	ds_load_u8 v100, v140 offset:1472
	ds_load_u8 v101, v140 offset:1312
	ds_load_u8 v118, v140 offset:752
	ds_load_u8 v119, v140 offset:720
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v140 offset:1280
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v140 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v118, 16, v117
	ds_load_u8 v117, v140 offset:560
	ds_load_u8 v118, v140 offset:528
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v98, v98, v101, 0xc0c0004
	ds_load_u8 v101, v140 offset:1344
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v140 offset:624
	ds_load_u8 v119, v140 offset:592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v101, v100, 0xc0c0004
	v_lshl_or_b32 v100, v99, 16, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v101, 16, v98
	ds_load_u8 v97, v140 offset:1184
	ds_load_u8 v98, v140 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_lshl_or_b32 v136, v118, 16, v117
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[105:108], v[136:139], v[120:127] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v105, s14, v85
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[128:135], v[109:112], v[136:139], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v140 offset:1248
	ds_load_u8 v101, v140 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v101, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v140 offset:1056
	ds_load_u8 v101, v140 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v101, v97, 0xc0c0004
	ds_load_u8 v101, v140 offset:1120
	ds_load_u8 v102, v140 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v101, 16, v97
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[101:104], v105
	ds_load_b128 v[105:108], v105 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[101:104], v[97:100], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[105:108], v[97:100], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v97, v140 offset:1456
	ds_load_u8 v98, v140 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v140 offset:1520
	ds_load_u8 v99, v140 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v140 offset:1328
	ds_load_u8 v100, v140 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v140 offset:1392
	ds_load_u8 v109, v140 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v109, v100, 0xc0c0004
	v_lshl_or_b32 v100, v98, 16, v97
	ds_load_u8 v97, v140 offset:1200
	ds_load_u8 v98, v140 offset:1168
	v_lshl_or_b32 v99, v109, 16, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v140 offset:1264
	ds_load_u8 v109, v140 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v109, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v140 offset:1072
	ds_load_u8 v109, v140 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v109, v97, 0xc0c0004
	ds_load_u8 v109, v140 offset:1136
	ds_load_u8 v110, v140 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v109, 16, v97
	v_wmma_i32_16x16x16_iu8 v[120:127], v[101:104], v[97:100], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[105:108], v[97:100], v[128:135] neg_lo:[1,1,0]
	ds_load_u8 v97, v140 offset:1952
	ds_load_u8 v98, v140 offset:1920
	ds_load_u8 v99, v140 offset:2016
	ds_load_u8 v100, v140 offset:1984
	ds_load_u8 v101, v140 offset:1824
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v105, s14, v86
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s14, s27, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s14, s14, s46
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v140 offset:1792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v140 offset:1888
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v98, v98, v101, 0xc0c0004
	ds_load_u8 v101, v140 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v101, v100, 0xc0c0004
	v_lshl_or_b32 v100, v99, 16, v97
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v99, v101, 16, v98
	ds_load_u8 v97, v140 offset:1696
	ds_load_u8 v98, v140 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v140 offset:1760
	ds_load_u8 v101, v140 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v101, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v140 offset:1568
	ds_load_u8 v101, v140 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v101, v97, 0xc0c0004
	ds_load_u8 v101, v140 offset:1632
	ds_load_u8 v102, v140 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v101, 16, v97
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[101:104], v105
	ds_load_b128 v[105:108], v105 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[101:104], v[97:100], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[105:108], v[97:100], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v97, v140 offset:1968
	ds_load_u8 v98, v140 offset:1936
	v_cvt_f32_i32_e32 v111, v16
	v_cvt_f32_i32_e32 v112, v89
	v_cvt_f32_i32_e32 v113, v90
	v_cvt_f32_i32_e32 v114, v91
	v_cvt_f32_i32_e32 v115, v92
	v_cvt_f32_i32_e32 v116, v93
	v_cvt_f32_i32_e32 v117, v94
	v_cvt_f32_i32_e32 v118, v95
	v_cvt_f32_i32_e32 v119, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v98, s48, v70
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v98, v98
	ds_load_u8 v99, v140 offset:2000
	s_mov_b32 s48, s44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v140 offset:1840
	ds_load_u8 v100, v140 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v140 offset:1904
	ds_load_u8 v109, v140 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v109, v100, 0xc0c0004
	v_lshl_or_b32 v100, v98, 16, v97
	ds_load_u8 v97, v140 offset:1712
	ds_load_u8 v98, v140 offset:1680
	v_lshl_or_b32 v99, v109, 16, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v140 offset:1776
	ds_load_u8 v109, v140 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v109, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v140 offset:1584
	ds_load_u8 v109, v140 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v109, v97, 0xc0c0004
	ds_load_u8 v109, v140 offset:1648
	ds_load_u8 v110, v140 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_cvt_f32_i32_e32 v110, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v97, v109, 16, v97
	v_cvt_f32_i32_e32 v109, v14
	v_wmma_i32_16x16x16_iu8 v[120:127], v[101:104], v[97:100], v[120:127] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v104, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s27, v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[128:135], v[105:108], v[97:100], v[128:135] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v105, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s14, v66
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v106, v11
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s14, v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v108, v13
	v_cvt_f32_i32_e32 v107, v12
	v_cvt_f32_i32_e32 v103, v121
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	v_cndmask_b32_e32 v13, 0x80000000, v11, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v89, v122
	v_cvt_f32_i32_e32 v90, v123
	v_cvt_f32_i32_e32 v91, v124
	v_cvt_f32_i32_e32 v92, v125
	v_cvt_f32_i32_e32 v93, v126
	v_cvt_f32_i32_e32 v94, v127
	v_cvt_f32_i32_e32 v95, v128
	v_cvt_f32_i32_e32 v96, v129
	v_cvt_f32_i32_e32 v97, v130
	v_cvt_f32_i32_e32 v98, v131
	v_cvt_f32_i32_e32 v99, v132
	v_cvt_f32_i32_e32 v100, v133
	v_cvt_f32_i32_e32 v101, v134
	v_cvt_f32_i32_e32 v102, v135
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v121, v13, v9, 0x4000501
	v_perm_b32 v122, v13, v9, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s14, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v123, v14, v10, 0x4000501
	v_perm_b32 v124, v14, v10, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s14, v68
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v125, v15, v11, 0x4000501
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_perm_b32 v126, v15, v11, 0x6020703
	v_perm_b32 v127, v16, v12, 0x4000501
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	v_perm_b32 v128, v16, v12, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s14, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 25
	s_add_i32 s12, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s12, 7
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s12, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v13, v9, 0x4000501
	v_perm_b32 v13, v13, v9, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v9, v25, s14, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v130, v14, v10, 0x4000501
	v_perm_b32 v14, v14, v10, 0x6020703
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v61, s12, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v131, v15, v11, 0x4000501
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v15, v15, v11, 0x6020703
	v_perm_b32 v132, v16, v12, 0x4000501
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v16, v16, v12, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s14, s11, 14
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v87, v9 offset:36864
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v9, v62, s12, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s12, s11, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s15, s12, 0
	s_mov_b32 s12, s45
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x1
	buffer_load_u16 v9, v9, s[36:39], 0 offen
	buffer_load_u16 v10, v10, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s45, s14, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s14, s13, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s44, s15, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s47
	s_mov_b32 s13, s14
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v134, 16, v10
	v_lshlrev_b32_e32 v133, 16, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v88 offset:36864
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v135, v9, v133
	v_mul_f32_e32 v136, v10, v133
	v_mul_f32_e32 v137, v11, v133
	v_dual_mul_f32 v138, v12, v133 :: v_dual_mul_f32 v139, v9, v134
	v_mul_f32_e32 v140, v10, v134
	v_mul_f32_e32 v141, v11, v134
	v_mul_f32_e32 v142, v12, v134
	ds_load_b128 v[9:12], v88 offset:36880
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v29, v135, v104 :: v_dual_fmac_f32 v46, v140, v103
	v_dual_fmac_f32 v30, v136, v105 :: v_dual_fmac_f32 v31, v137, v106
	v_dual_fmac_f32 v32, v138, v107 :: v_dual_fmac_f32 v45, v139, v120
	v_dual_fmac_f32 v47, v141, v89 :: v_dual_fmac_f32 v48, v142, v90
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v103, v15, v126, 0x7060302
	v_perm_b32 v15, v15, v126, 0x5040100
	v_perm_b32 v104, v132, v127, 0x7060302
	v_perm_b32 v105, v132, v127, 0x5040100
	v_perm_b32 v106, v16, v128, 0x7060302
	v_perm_b32 v16, v16, v128, 0x5040100
	v_add_nc_u32_e32 v107, s45, v81
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v143, v9, v133
	v_mul_f32_e32 v144, v10, v133
	v_mul_f32_e32 v145, v11, v133
	v_dual_mul_f32 v146, v12, v133 :: v_dual_mul_f32 v147, v9, v134
	v_mul_f32_e32 v148, v10, v134
	v_mul_f32_e32 v149, v11, v134
	v_mul_f32_e32 v150, v12, v134
	ds_load_b128 v[9:12], v88 offset:37376
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v33, v143, v108 :: v_dual_fmac_f32 v34, v144, v109
	v_dual_fmac_f32 v35, v145, v110 :: v_dual_fmac_f32 v50, v148, v92
	v_fmac_f32_e32 v36, v146, v111
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v52, v150, v94 :: v_dual_mul_f32 v151, v9, v133
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v152, v10, v133
	v_mul_f32_e32 v153, v11, v133
	v_dual_mul_f32 v154, v12, v133 :: v_dual_mul_f32 v155, v9, v134
	v_mul_f32_e32 v156, v10, v134
	v_mul_f32_e32 v157, v11, v134
	v_mul_f32_e32 v158, v12, v134
	ds_load_b128 v[9:12], v88 offset:37392
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v40, v154, v115
	v_dual_fmac_f32 v38, v152, v113 :: v_dual_fmac_f32 v49, v147, v91
	v_dual_fmac_f32 v54, v155, v95 :: v_dual_fmac_f32 v55, v156, v96
	v_dual_fmac_f32 v56, v157, v97 :: v_dual_fmac_f32 v57, v158, v98
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v160, v10, v133
	v_dual_mul_f32 v10, v10, v134 :: v_dual_mul_f32 v159, v9, v133
	v_mul_f32_e32 v161, v11, v133
	v_mul_f32_e32 v133, v12, v133
	v_mul_f32_e32 v9, v9, v134
	v_mul_f32_e32 v11, v11, v134
	v_mul_f32_e32 v12, v12, v134
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v134, s15, v63
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v42, v160, v117
	v_dual_fmac_f32 v44, v133, v119 :: v_dual_fmac_f32 v37, v151, v112
	v_fmac_f32_e32 v39, v153, v114
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b64 v134, v[18:19] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v18, v129, v121, 0x7060302
	v_perm_b32 v19, v129, v121, 0x5040100
	v_add_nc_u32_e32 v121, s45, v75
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v43, v161, v118 :: v_dual_fmac_f32 v60, v11, v101
	v_fmac_f32_e32 v51, v149, v93
	v_fmac_f32_e32 v58, v9, v99
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v121, v18, v19 offset1:16
	v_perm_b32 v18, v13, v122, 0x7060302
	v_perm_b32 v13, v13, v122, 0x5040100
	v_add_nc_u32_e32 v19, s45, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v59, v10, v100
	v_fmac_f32_e32 v53, v12, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v19, v18, v13 offset1:16
	v_perm_b32 v13, v130, v123, 0x7060302
	v_perm_b32 v18, v130, v123, 0x5040100
	v_add_nc_u32_e32 v19, s45, v77
	ds_store_2addr_b32 v19, v13, v18 offset1:16
	v_perm_b32 v13, v14, v124, 0x7060302
	v_perm_b32 v14, v14, v124, 0x5040100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v41, v159, v116 :: v_dual_add_nc_u32 v18, s45, v78
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v19, v131, v125, 0x5040100
	ds_store_2addr_b32 v18, v13, v14 offset1:16
	v_add_nc_u32_e32 v13, s45, v79
	v_perm_b32 v18, v131, v125, 0x7060302
	v_add_nc_u32_e32 v14, s45, v80
	ds_store_2addr_b32 v13, v18, v19 offset1:16
	ds_store_2addr_b32 v121, v103, v15 offset0:160 offset1:176
	ds_store_2addr_b32 v14, v104, v105 offset1:16
	ds_store_2addr_b32 v107, v106, v16 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v87, v69 :: v_dual_mov_b32 v98, v70
	v_dual_mov_b32 v3, v73 :: v_dual_mov_b32 v6, v71
	v_mov_b32_e32 v5, v72
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	s_add_i32 s48, 0, 0x8000
	s_add_i32 s44, 0, 0x8800
	s_add_i32 s45, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v66, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v3
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v69, 0
	v_or_b32_e32 v1, v74, v1
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v78, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v18, v1, v2
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_xor_b32_e32 v19, 16, v18
	v_xor_b32_e32 v101, 32, v18
	v_xor_b32_e32 v102, 48, v18
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v95, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v5, s12, v102
	v_add_nc_u32_e32 v13, s12, v101
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v79, s48, v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v95, s23 :: v_dual_mov_b32 v94, s22
	v_mov_b32_e32 v92, s20
	v_mov_b32_e32 v90, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v5 offset:8192
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[9:12], v13 offset:8192
	ds_load_b128 v[13:16], v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v68, v79 offset:288
	ds_load_u8 v69, v79 offset:256
	ds_load_u8 v70, v79 offset:352
	ds_load_u8 v72, v79 offset:320
	ds_load_u8 v73, v79 offset:160
	ds_load_u8 v74, v79 offset:128
	ds_load_u8 v75, v79 offset:224
	ds_load_u8 v76, v79 offset:192
	ds_load_u8 v96, v79 offset:464
	ds_load_u8 v97, v79 offset:432
	ds_load_u8 v99, v79 offset:400
	ds_load_u8 v100, v79 offset:368
	ds_load_u8 v80, v79 offset:96
	ds_load_u8 v81, v79 offset:64
	ds_load_u8 v82, v79
	ds_load_u8 v83, v79 offset:32
	ds_load_u8 v123, v79 offset:336
	ds_load_u8 v124, v79 offset:304
	ds_load_u8 v125, v79 offset:272
	ds_load_u8 v127, v79 offset:240
	v_dual_mov_b32 v88, s16 :: v_dual_add_nc_u32 v71, s12, v19
	ds_load_u8 v85, v79 offset:800
	ds_load_u8 v86, v79 offset:768
	ds_load_u8 v107, v79 offset:864
	ds_load_u8 v108, v79 offset:832
	ds_load_u8 v109, v79 offset:672
	ds_load_u8 v110, v79 offset:640
	ds_load_u8 v119, v79 offset:736
	ds_load_u8 v120, v79 offset:704
	ds_load_u8 v136, v79 offset:976
	ds_load_u8 v137, v79 offset:944
	ds_load_u8 v138, v79 offset:912
	ds_load_u8 v139, v79 offset:880
	ds_load_u8 v63, v79 offset:416
	ds_load_u8 v64, v79 offset:384
	ds_load_u8 v65, v79 offset:480
	ds_load_u8 v66, v79 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v67, s12, v18
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v128, v79 offset:208
	ds_load_u8 v129, v79 offset:176
	ds_load_u8 v130, v79 offset:144
	ds_load_u8 v131, v79 offset:112
	ds_load_u8 v132, v79 offset:80
	ds_load_u8 v133, v79 offset:48
	ds_load_u8 v148, v79 offset:592
	ds_load_u8 v149, v79 offset:560
	ds_load_u8 v150, v79 offset:528
	ds_load_u8 v151, v79 offset:496
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v84, v69, v68, 0xc0c0004
	ds_load_u8 v144, v79 offset:720
	ds_load_u8 v145, v79 offset:688
	ds_load_u8 v146, v79 offset:656
	ds_load_u8 v147, v79 offset:624
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v72, v72, v70, 0xc0c0004
	ds_load_u8 v163, v79 offset:1264
	ds_load_u8 v164, v79 offset:1232
	ds_load_u8 v165, v79 offset:1200
	ds_load_u8 v166, v79 offset:1168
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v74, v76, v75, 0xc0c0004
	v_lshl_or_b32 v105, v72, 16, v84
	v_perm_b32 v72, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v86, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v108, v120, v119, 0xc0c0004
	v_lshl_or_b32 v104, v74, 16, v73
	v_perm_b32 v73, v82, v83, 0xc0c0004
	ds_load_u8 v80, v79 offset:928
	ds_load_u8 v81, v79 offset:896
	ds_load_u8 v82, v79 offset:992
	ds_load_u8 v83, v79 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[111:114], v71 offset:8192
	ds_load_b128 v[115:118], v71
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v119, v79 offset:1440
	ds_load_u8 v120, v79 offset:1408
	v_perm_b32 v107, v110, v109, 0xc0c0004
	v_lshl_or_b32 v109, v86, 16, v85
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v75, s48, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v77, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v78, v66, v65, 0xc0c0004
	v_lshl_or_b32 v108, v108, 16, v107
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[63:66], v67 offset:8192
	ds_load_b128 v[67:70], v67
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v134, v79 offset:16
	ds_load_u8 v135, v75
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v84, s48, v87
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v106, v78, 16, v77
	v_lshl_or_b32 v103, v72, 16, v73
	v_mov_b32_e32 v93, s21
	v_mov_b32_e32 v91, s19
	v_mov_b32_e32 v89, s17
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v79 offset:544
	ds_load_u8 v121, v79 offset:512
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v79 offset:608
	ds_load_u8 v122, v79 offset:576
	ds_load_u8 v140, v79 offset:848
	ds_load_u8 v141, v79 offset:816
	ds_load_u8 v142, v79 offset:784
	ds_load_u8 v143, v79 offset:752
	ds_load_u8 v179, v79 offset:1904
	ds_load_u8 v180, v79 offset:1872
	ds_load_u8 v181, v79 offset:1840
	ds_load_u8 v182, v79 offset:1808
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v79 offset:1056
	ds_load_u8 v157, v79 offset:1024
	v_lshl_or_b32 v110, v82, 16, v80
	ds_load_u8 v185, v79 offset:1776
	ds_load_u8 v186, v79 offset:1744
	ds_load_u8 v187, v79 offset:1712
	ds_load_u8 v188, v79 offset:1680
	v_perm_b32 v97, v99, v97, 0xc0c0004
	v_perm_b32 v96, v96, v151, 0xc0c0004
	v_perm_b32 v99, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[67:70], v[103:106], v[88:95] neg_lo:[1,1,0]
	v_perm_b32 v100, v123, v100, 0xc0c0004
	v_perm_b32 v123, v146, v145, 0xc0c0004
	v_perm_b32 v125, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v83, v122, v83, 0xc0c0004
	v_perm_b32 v81, v121, v81, 0xc0c0004
	ds_load_u8 v121, v79 offset:1504
	ds_load_u8 v122, v79 offset:1472
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v124, v144, v143, 0xc0c0004
	v_lshl_or_b32 v107, v83, 16, v81
	ds_load_u8 v80, v79 offset:1312
	ds_load_u8 v81, v79 offset:1280
	ds_load_u8 v82, v79 offset:1376
	ds_load_u8 v83, v79 offset:1344
	ds_load_u8 v85, v79 offset:1184
	ds_load_u8 v86, v79 offset:1152
	ds_load_u8 v126, v79 offset:1248
	ds_load_u8 v152, v79 offset:1216
	ds_load_u8 v153, v79 offset:1520
	ds_load_u8 v154, v79 offset:1488
	ds_load_u8 v155, v79 offset:1456
	ds_load_u8 v156, v79 offset:1424
	v_wmma_i32_16x16x16_iu8 v[71:78], v[115:118], v[107:110], v[71:78] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v86, v85, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v79 offset:1120
	ds_load_u8 v158, v79 offset:1088
	ds_load_u8 v159, v79 offset:1392
	ds_load_u8 v160, v79 offset:1360
	ds_load_u8 v161, v79 offset:1328
	ds_load_u8 v162, v79 offset:1296
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v83, v152, v126, 0xc0c0004
	v_perm_b32 v85, v157, v120, 0xc0c0004
	ds_load_u8 v86, v79 offset:1952
	ds_load_u8 v126, v79 offset:1920
	ds_load_u8 v157, v79 offset:2016
	ds_load_u8 v170, v79 offset:1984
	ds_load_u8 v152, v79 offset:1136
	ds_load_u8 v167, v79 offset:1104
	ds_load_u8 v168, v79 offset:1072
	ds_load_u8 v169, v79 offset:1040
	v_lshl_or_b32 v120, v83, 16, v82
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v158, v158, v122, 0xc0c0004
	v_lshl_or_b32 v122, v121, 16, v119
	v_lshl_or_b32 v121, v81, 16, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v119, v158, 16, v85
	ds_load_u8 v80, v79 offset:1824
	ds_load_u8 v81, v79 offset:1792
	ds_load_u8 v82, v79 offset:1888
	ds_load_u8 v83, v79 offset:1856
	ds_load_u8 v85, v79 offset:1696
	ds_load_u8 v158, v79 offset:1664
	ds_load_u8 v171, v79 offset:1760
	ds_load_u8 v172, v79 offset:1728
	ds_load_u8 v173, v84
	ds_load_u8 v174, v79 offset:2000
	ds_load_u8 v175, v79 offset:1968
	ds_load_u8 v176, v79 offset:1936
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v84, v126, v86, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v86, v170, v157, 0xc0c0004
	ds_load_u8 v157, v79 offset:1568
	ds_load_u8 v170, v79 offset:1536
	ds_load_u8 v177, v79 offset:1632
	ds_load_u8 v178, v79 offset:1600
	v_wmma_i32_16x16x16_iu8 v[71:78], v[13:16], v[119:122], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v126, v86, 16, v84
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v183, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v184, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v158, v158, v85, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v79 offset:1648
	ds_load_u8 v189, v79 offset:1616
	ds_load_u8 v190, v79 offset:1584
	ds_load_u8 v191, v79 offset:1552
	v_wmma_i32_16x16x16_iu8 v[79:86], v[63:66], v[103:106], v[88:95] neg_lo:[1,1,0]
	v_perm_b32 v103, v130, v129, 0xc0c0004
	v_perm_b32 v104, v128, v127, 0xc0c0004
	v_perm_b32 v105, v132, v131, 0xc0c0004
	v_perm_b32 v106, v134, v133, 0xc0c0004
	v_lshl_or_b32 v130, v96, 16, v97
	v_lshl_or_b32 v129, v100, 16, v99
	v_lshl_or_b32 v128, v104, 16, v103
	v_perm_b32 v96, v138, v137, 0xc0c0004
	v_lshl_or_b32 v127, v105, 16, v106
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v97, v136, v173, 0xc0c0004
	v_perm_b32 v99, v142, v141, 0xc0c0004
	v_perm_b32 v100, v140, v139, 0xc0c0004
	v_perm_b32 v131, v148, v147, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[79:86], v[111:114], v[107:110], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[67:70], v[127:130], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v97, 16, v96
	v_lshl_or_b32 v69, v100, 16, v99
	v_lshl_or_b32 v68, v124, 16, v123
	v_lshl_or_b32 v67, v131, 16, v125
	v_perm_b32 v96, v156, v155, 0xc0c0004
	v_perm_b32 v97, v154, v153, 0xc0c0004
	v_perm_b32 v99, v162, v161, 0xc0c0004
	v_perm_b32 v100, v160, v159, 0xc0c0004
	v_perm_b32 v123, v166, v165, 0xc0c0004
	v_perm_b32 v124, v164, v163, 0xc0c0004
	v_perm_b32 v125, v169, v168, 0xc0c0004
	v_perm_b32 v131, v167, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[115:118], v[67:70], v[103:110] neg_lo:[1,1,0]
	v_lshl_or_b32 v118, v97, 16, v96
	v_lshl_or_b32 v117, v100, 16, v99
	v_lshl_or_b32 v116, v124, 16, v123
	v_lshl_or_b32 v115, v131, 16, v125
	v_wmma_i32_16x16x16_iu8 v[88:95], v[63:66], v[127:130], v[88:95] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v157, v170, v157, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v170, v178, v177, 0xc0c0004
	v_perm_b32 v96, v180, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[13:16], v[115:118], v[103:110] neg_lo:[1,1,0]
	v_perm_b32 v13, v176, v175, 0xc0c0004
	v_perm_b32 v14, v174, v135, 0xc0c0004
	v_perm_b32 v15, v182, v181, 0xc0c0004
	v_perm_b32 v63, v188, v187, 0xc0c0004
	v_perm_b32 v64, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v191, v190, 0xc0c0004
	v_perm_b32 v66, v189, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[88:95], v[111:114], v[67:70], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v125, v184, 16, v183
	v_lshl_or_b32 v124, v171, 16, v158
	v_lshl_or_b32 v123, v170, 16, v157
	v_wmma_i32_16x16x16_iu8 v[79:86], v[9:12], v[119:122], v[79:86] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v14, 16, v13
	v_lshl_or_b32 v15, v96, 16, v15
	v_lshl_or_b32 v14, v64, 16, v63
	v_lshl_or_b32 v13, v66, 16, v65
	v_wmma_i32_16x16x16_iu8 v[88:95], v[9:12], v[115:118], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[5:8], v[123:126], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[1:4], v[123:126], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[5:8], v[13:16], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[1:4], v[13:16], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v72
	v_cvt_f32_i32_e32 v64, v73
	v_cvt_f32_i32_e32 v65, v74
	v_cvt_f32_i32_e32 v66, v75
	v_cvt_f32_i32_e32 v67, v76
	v_cvt_f32_i32_e32 v68, v77
	v_cvt_f32_i32_e32 v69, v78
	v_cvt_f32_i32_e32 v70, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v75, v83
	v_cvt_f32_i32_e32 v76, v84
	v_cvt_f32_i32_e32 v77, v85
	v_cvt_f32_i32_e32 v78, v86
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v81, v105
	v_cvt_f32_i32_e32 v82, v106
	v_cvt_f32_i32_e32 v83, v107
	v_cvt_f32_i32_e32 v84, v108
	v_cvt_f32_i32_e32 v85, v109
	v_cvt_f32_i32_e32 v86, v110
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v71, v71
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v62, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v25, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v61, s4, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_add_nc_u32 v96, 0, v22
	s_clause 0x1
	buffer_load_u16 v99, v1, s[8:11], 0 offen
	buffer_load_u16 v100, v3, s[8:11], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v23, v24
	v_mov_b32_e32 v112, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v103, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v97, v1, v21
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_mov_b32_e32 v111, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v129, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v97, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v96 offset:36864
	ds_load_b128 v[5:8], v96 offset:36880
	ds_load_b128 v[9:12], v96 offset:37376
	ds_load_b128 v[13:16], v96 offset:37392
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v87, s44, v87
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v21, s45, v102
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v109, s44, v20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v101, s45, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v129, s19 :: v_dual_add_nc_u32 v106, s45, v19
	v_dual_mov_b32 v122, s12 :: v_dual_add_nc_u32 v107, s45, v18
	v_mov_b32_e32 v128, s18
	v_mov_b32_e32 v126, s16
	v_mov_b32_e32 v124, s14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[17:20], v21 offset:8192
	ds_load_b128 v[21:24], v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v108, v109 offset:288
	ds_load_u8 v110, v109 offset:256
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[117:120], v101 offset:8192
	ds_load_b128 v[138:141], v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v101, v109 offset:352
	ds_load_u8 v111, v109 offset:320
	ds_load_u8 v112, v109 offset:160
	ds_load_u8 v113, v109 offset:128
	ds_load_u8 v114, v109 offset:224
	ds_load_u8 v115, v109 offset:192
	ds_load_u8 v121, v109 offset:464
	ds_load_u8 v162, v109 offset:432
	ds_load_u8 v163, v109 offset:400
	ds_load_u8 v164, v109 offset:368
	ds_load_u8 v102, v109 offset:416
	ds_load_u8 v103, v109 offset:384
	ds_load_u8 v104, v109 offset:480
	ds_load_u8 v105, v109 offset:448
	v_dual_mov_b32 v127, s17 :: v_dual_add_nc_u32 v98, s44, v98
	ds_load_u8 v170, v109 offset:208
	ds_load_u8 v171, v109 offset:176
	ds_load_u8 v172, v109 offset:144
	ds_load_u8 v173, v109 offset:112
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[142:145], v107 offset:8192
	ds_load_b128 v[146:149], v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v174, v109 offset:80
	ds_load_u8 v175, v109 offset:48
	ds_load_u8 v189, v109 offset:592
	ds_load_u8 v190, v109 offset:560
	ds_load_u8 v191, v109 offset:528
	ds_load_u8 v192, v109 offset:496
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v108, v110, v108, 0xc0c0004
	ds_load_u8 v110, v109
	ds_load_u8 v116, v109 offset:32
	ds_load_u8 v176, v109 offset:16
	ds_load_u8 v98, v98
	ds_load_u8 v185, v109 offset:720
	ds_load_u8 v186, v109 offset:688
	ds_load_u8 v187, v109 offset:656
	ds_load_u8 v188, v109 offset:624
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v101, v111, v101, 0xc0c0004
	ds_load_u8 v203, v109 offset:1264
	ds_load_u8 v204, v109 offset:1232
	ds_load_u8 v205, v109 offset:1200
	ds_load_u8 v206, v109 offset:1168
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v111, v113, v112, 0xc0c0004
	ds_load_u8 v207, v109 offset:1136
	ds_load_u8 v208, v109 offset:1104
	ds_load_u8 v209, v109 offset:1072
	ds_load_u8 v210, v109 offset:1040
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v112, v115, v114, 0xc0c0004
	v_lshl_or_b32 v132, v101, 16, v108
	v_mov_b32_e32 v125, s15
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_mov_b32_e32 v123, s13
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v103, v105, v104, 0xc0c0004
	v_lshl_or_b32 v131, v112, 16, v111
	ds_load_u8 v104, v109 offset:96
	ds_load_u8 v105, v109 offset:64
	ds_load_u8 v166, v109 offset:336
	ds_load_u8 v167, v109 offset:304
	ds_load_u8 v168, v109 offset:272
	ds_load_u8 v169, v109 offset:240
	ds_load_u8 v219, v109 offset:1904
	ds_load_u8 v220, v109 offset:1872
	ds_load_u8 v221, v109 offset:1840
	ds_load_u8 v222, v109 offset:1808
	ds_load_u8 v225, v109 offset:1776
	ds_load_u8 v226, v109 offset:1744
	ds_load_u8 v227, v109 offset:1712
	ds_load_u8 v228, v109 offset:1680
	v_lshl_or_b32 v133, v103, 16, v102
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v121, v121, v192, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v102, v110, v116, 0xc0c0004
	ds_load_u8 v110, v109 offset:928
	ds_load_u8 v111, v109 offset:896
	ds_load_u8 v112, v109 offset:992
	ds_load_u8 v113, v109 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[150:153], v106 offset:8192
	ds_load_b128 v[154:157], v106
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v114, v109 offset:800
	ds_load_u8 v115, v109 offset:768
	ds_load_u8 v116, v109 offset:864
	ds_load_u8 v134, v109 offset:832
	ds_load_u8 v135, v109 offset:672
	ds_load_u8 v136, v109 offset:640
	ds_load_u8 v137, v109 offset:736
	ds_load_u8 v158, v109 offset:704
	ds_load_u8 v177, v109 offset:976
	ds_load_u8 v178, v109 offset:944
	ds_load_u8 v179, v109 offset:912
	ds_load_u8 v180, v109 offset:880
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v101, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v115, v134, v116, 0xc0c0004
	v_lshl_or_b32 v130, v101, 16, v102
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v116, v136, v135, 0xc0c0004
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v109 offset:544
	ds_load_u8 v159, v109 offset:512
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v109 offset:608
	ds_load_u8 v160, v109 offset:576
	ds_load_u8 v181, v109 offset:848
	ds_load_u8 v182, v109 offset:816
	ds_load_u8 v183, v109 offset:784
	ds_load_u8 v184, v109 offset:752
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v134, v158, v137, 0xc0c0004
	v_lshl_or_b32 v136, v115, 16, v114
	v_wmma_i32_16x16x16_iu8 v[101:108], v[146:149], v[130:133], v[122:129] neg_lo:[1,1,0]
	v_lshl_or_b32 v137, v112, 16, v110
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v135, v134, 16, v116
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v113, v160, v113, 0xc0c0004
	ds_load_u8 v160, v109 offset:1504
	ds_load_u8 v161, v109 offset:1472
	v_perm_b32 v111, v159, v111, 0xc0c0004
	ds_load_u8 v158, v109 offset:1440
	ds_load_u8 v159, v109 offset:1408
	v_lshl_or_b32 v134, v113, 16, v111
	ds_load_u8 v110, v109 offset:1312
	ds_load_u8 v111, v109 offset:1280
	ds_load_u8 v112, v109 offset:1376
	ds_load_u8 v113, v109 offset:1344
	ds_load_u8 v114, v109 offset:1184
	ds_load_u8 v115, v109 offset:1152
	ds_load_u8 v116, v109 offset:1248
	ds_load_u8 v165, v109 offset:1216
	ds_load_u8 v193, v109 offset:1520
	ds_load_u8 v194, v109 offset:1488
	ds_load_u8 v195, v109 offset:1456
	ds_load_u8 v196, v109 offset:1424
	v_wmma_i32_16x16x16_iu8 v[101:108], v[154:157], v[134:137], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v113, v112, 0xc0c0004
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v109 offset:1120
	ds_load_u8 v198, v109 offset:1088
	ds_load_u8 v199, v109 offset:1392
	ds_load_u8 v200, v109 offset:1360
	ds_load_u8 v201, v109 offset:1328
	ds_load_u8 v202, v109 offset:1296
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v109 offset:1056
	ds_load_u8 v197, v109 offset:1024
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v112, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v113, v165, v116, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v198, v198, v161, 0xc0c0004
	v_lshl_or_b32 v161, v160, 16, v158
	v_lshl_or_b32 v160, v111, 16, v110
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v197, v159, 0xc0c0004
	ds_load_u8 v115, v109 offset:1952
	ds_load_u8 v116, v109 offset:1920
	ds_load_u8 v165, v109 offset:2016
	ds_load_u8 v197, v109 offset:1984
	v_lshl_or_b32 v159, v113, 16, v112
	v_lshl_or_b32 v158, v198, 16, v114
	ds_load_u8 v110, v109 offset:1824
	ds_load_u8 v111, v109 offset:1792
	ds_load_u8 v112, v109 offset:1888
	ds_load_u8 v113, v109 offset:1856
	ds_load_u8 v114, v109 offset:1696
	ds_load_u8 v198, v109 offset:1664
	ds_load_u8 v211, v109 offset:1760
	ds_load_u8 v212, v109 offset:1728
	ds_load_u8 v87, v87
	ds_load_u8 v213, v109 offset:2000
	ds_load_u8 v214, v109 offset:1968
	ds_load_u8 v215, v109 offset:1936
	v_wmma_i32_16x16x16_iu8 v[101:108], v[138:141], v[158:161], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v223, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v224, v113, v112, 0xc0c0004
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v198, v198, v114, 0xc0c0004
	v_perm_b32 v116, v197, v165, 0xc0c0004
	ds_load_u8 v197, v109 offset:1568
	ds_load_u8 v216, v109 offset:1536
	ds_load_u8 v217, v109 offset:1632
	ds_load_u8 v218, v109 offset:1600
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v211, v212, v211, 0xc0c0004
	ds_load_u8 v212, v109 offset:1648
	ds_load_u8 v229, v109 offset:1616
	ds_load_u8 v230, v109 offset:1584
	ds_load_u8 v231, v109 offset:1552
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v87, v177, v87, 0xc0c0004
	v_lshl_or_b32 v165, v116, 16, v115
	v_wmma_i32_16x16x16_iu8 v[109:116], v[142:145], v[130:133], v[122:129] neg_lo:[1,1,0]
	v_perm_b32 v130, v163, v162, 0xc0c0004
	v_perm_b32 v131, v168, v167, 0xc0c0004
	v_perm_b32 v132, v166, v164, 0xc0c0004
	v_perm_b32 v133, v172, v171, 0xc0c0004
	v_perm_b32 v162, v170, v169, 0xc0c0004
	v_perm_b32 v163, v174, v173, 0xc0c0004
	v_perm_b32 v164, v176, v175, 0xc0c0004
	v_lshl_or_b32 v169, v121, 16, v130
	v_lshl_or_b32 v168, v132, 16, v131
	v_lshl_or_b32 v167, v162, 16, v133
	v_perm_b32 v121, v179, v178, 0xc0c0004
	v_lshl_or_b32 v166, v163, 16, v164
	v_perm_b32 v162, v183, v182, 0xc0c0004
	v_perm_b32 v163, v181, v180, 0xc0c0004
	v_perm_b32 v164, v187, v186, 0xc0c0004
	v_perm_b32 v170, v185, v184, 0xc0c0004
	v_perm_b32 v171, v191, v190, 0xc0c0004
	v_perm_b32 v172, v189, v188, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[109:116], v[150:153], v[134:137], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[146:149], v[166:169], v[122:129] neg_lo:[1,1,0]
	v_lshl_or_b32 v149, v87, 16, v121
	v_lshl_or_b32 v148, v163, 16, v162
	v_lshl_or_b32 v147, v170, 16, v164
	v_lshl_or_b32 v146, v172, 16, v171
	v_perm_b32 v87, v196, v195, 0xc0c0004
	v_perm_b32 v121, v194, v193, 0xc0c0004
	v_perm_b32 v162, v202, v201, 0xc0c0004
	v_perm_b32 v163, v200, v199, 0xc0c0004
	v_perm_b32 v164, v206, v205, 0xc0c0004
	v_perm_b32 v170, v204, v203, 0xc0c0004
	v_perm_b32 v171, v210, v209, 0xc0c0004
	v_perm_b32 v172, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[130:137], v[154:157], v[146:149], v[130:137] neg_lo:[1,1,0]
	v_lshl_or_b32 v157, v121, 16, v87
	v_lshl_or_b32 v156, v163, 16, v162
	v_lshl_or_b32 v155, v170, 16, v164
	v_lshl_or_b32 v154, v172, 16, v171
	v_wmma_i32_16x16x16_iu8 v[122:129], v[142:145], v[166:169], v[122:129] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v216, v197, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v216, v218, v217, 0xc0c0004
	v_perm_b32 v87, v215, v214, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[130:137], v[138:141], v[154:157], v[130:137] neg_lo:[1,1,0]
	v_perm_b32 v98, v213, v98, 0xc0c0004
	v_perm_b32 v121, v222, v221, 0xc0c0004
	v_perm_b32 v138, v220, v219, 0xc0c0004
	v_perm_b32 v139, v228, v227, 0xc0c0004
	v_perm_b32 v142, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v231, v230, 0xc0c0004
	v_perm_b32 v144, v229, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[122:129], v[150:153], v[146:149], v[122:129] neg_lo:[1,1,0]
	v_lshl_or_b32 v164, v224, 16, v223
	v_lshl_or_b32 v163, v211, 16, v198
	v_lshl_or_b32 v162, v216, 16, v197
	v_wmma_i32_16x16x16_iu8 v[109:116], v[117:120], v[158:161], v[109:116] neg_lo:[1,1,0]
	v_lshl_or_b32 v141, v98, 16, v87
	v_lshl_or_b32 v140, v138, 16, v121
	v_lshl_or_b32 v139, v142, 16, v139
	v_lshl_or_b32 v138, v144, 16, v143
	v_wmma_i32_16x16x16_iu8 v[122:129], v[117:120], v[154:157], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[21:24], v[162:165], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[17:20], v[162:165], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[21:24], v[138:141], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[17:20], v[138:141], v[122:129] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v17, v101
	v_cvt_f32_i32_e32 v22, v102
	v_cvt_f32_i32_e32 v23, v103
	v_cvt_f32_i32_e32 v24, v104
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v108, v110
	v_cvt_f32_i32_e32 v109, v111
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v21, v114
	v_cvt_f32_i32_e32 v112, v115
	v_cvt_f32_i32_e32 v113, v116
	v_cvt_f32_i32_e32 v114, v130
	v_cvt_f32_i32_e32 v115, v131
	v_cvt_f32_i32_e32 v116, v132
	v_cvt_f32_i32_e32 v117, v133
	v_cvt_f32_i32_e32 v118, v134
	v_cvt_f32_i32_e32 v119, v135
	v_cvt_f32_i32_e32 v120, v136
	v_cvt_f32_i32_e32 v121, v137
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s27, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s27, s4
	v_mov_b16_e32 v87.l, 0
	s_ashr_i32 s4, s4, 7
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v87.h, v100.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s4, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v18, v62, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v19, v25, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v101, v14, v87 :: v_dual_lshlrev_b32 v28, 6, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v132, v10, v87
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v134, v8, v87
	v_mul_f32_e32 v136, v6, v87
	v_mul_f32_e32 v137, v5, v87
	v_mul_f32_e32 v138, v4, v87
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v20, v19, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v19, v61, s4, 1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v131, v11, v87 :: v_dual_lshlrev_b32 v0, 2, v0
	v_mul_f32_e32 v133, v9, v87
	v_mul_f32_e32 v139, v3, v87
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x1
	buffer_load_u16 v61, v18, s[8:11], 0 offen
	buffer_load_u16 v62, v19, s[8:11], 0 offen
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mad_u64_u32 v[18:19], null, s26, s35, v[25:26]
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v98, v16, v87 :: v_dual_lshlrev_b32 v25, 3, v26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v26, 2, v27
	v_cndmask_b32_e64 v19, 0x840, 0, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v100, v15, v87
	v_mul_f32_e32 v130, v12, v87
	v_mul_f32_e32 v135, v7, v87
	v_mul_f32_e32 v140, v2, v87
	v_dual_mul_f32 v141, v1, v87 :: v_dual_and_b32 v0, 0x3f8, v0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v25, v25, v28, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v102, v13, v87
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v87.h, v99.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v98, v95, v53
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v0, v19, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v16, v16, v87
	v_mul_f32_e32 v11, v11, v87
	v_mul_f32_e32 v10, v10, v87
	v_mul_f32_e32 v9, v9, v87
	v_mul_f32_e32 v8, v8, v87
	v_mul_f32_e32 v7, v7, v87
	v_mul_f32_e32 v6, v6, v87
	v_mul_f32_e32 v5, v5, v87
	v_mul_f32_e32 v4, v4, v87
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v78, v44
	v_fma_f32 v11, v11, v73, v39
	v_fma_f32 v10, v10, v72, v38
	v_fma_f32 v9, v9, v70, v37
	v_fma_f32 v8, v8, v69, v36
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v27, v27, 11, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v15, v87
	v_mul_f32_e32 v14, v14, v87
	v_mul_f32_e32 v12, v12, v87
	v_mul_f32_e32 v3, v3, v87
	v_mul_f32_e32 v2, v2, v87
	v_mul_f32_e32 v1, v1, v87
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v68, v35
	v_fma_f32 v6, v6, v67, v34
	v_fma_f32 v5, v5, v66, v33
	v_fma_f32 v4, v4, v65, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v16, s3
	v_cndmask_b32_e64 v39, v39, v11, s3
	v_cndmask_b32_e64 v38, v38, v10, s3
	v_cndmask_b32_e64 v16, v37, v9, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v99, 2, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v100, v94, v60
	v_fma_f32 v93, v101, v93, v59
	v_fma_f32 v91, v130, v91, v57
	v_fma_f32 v90, v131, v90, v56
	v_fma_f32 v89, v132, v89, v55
	v_fma_f32 v86, v134, v86, v52
	v_fma_f32 v85, v135, v85, v51
	v_fma_f32 v84, v136, v84, v50
	v_fma_f32 v83, v137, v83, v49
	v_fma_f32 v82, v138, v82, v48
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v94, 0x840, v25, 0
	v_xad_u32 v95, 0x1008, v25, 0
	v_xad_u32 v98, 0x1848, v25, 0
	v_xad_u32 v100, 0x2010, v25, 0
	v_xad_u32 v101, 0x2850, v25, 0
	v_xad_u32 v130, 0x3858, v25, 0
	v_xad_u32 v131, 0x4020, v25, 0
	v_xad_u32 v132, 0x4860, v25, 0
	v_xad_u32 v134, 0x5868, v25, 0
	v_xad_u32 v135, 0x6030, v25, 0
	v_xad_u32 v136, 0x6870, v25, 0
	v_xad_u32 v137, 0x7038, v25, 0
	v_xad_u32 v138, 0x7878, v25, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v26, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v3, v64, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v7, s3
	v_cndmask_b32_e64 v34, v34, v6, s3
	v_cndmask_b32_e64 v33, v33, v5, s3
	v_cndmask_b32_e64 v32, v32, v4, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v76, v42
	v_fma_f32 v12, v12, v74, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v60, v28, s3
	v_cndmask_b32_e64 v28, v59, v93, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v37, v27, 8, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v42, v14, s3
	v_cndmask_b32_e64 v40, v40, v12, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v59, v27, 24, 0
	v_xad_u32 v64, v27, 48, 0
	v_xad_u32 v65, v27, 56, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v31, v19, s3
	v_cndmask_b32_e64 v55, v55, v89, s3
	v_cndmask_b32_e64 v56, v56, v90, s3
	v_cndmask_b32_e64 v57, v57, v91, s3
	v_cndmask_b32_e64 v48, v48, v82, s3
	v_cndmask_b32_e64 v52, v52, v86, s3
	v_cndmask_b32_e64 v51, v51, v85, s3
	v_cndmask_b32_e64 v50, v50, v84, s3
	v_cndmask_b32_e64 v49, v49, v83, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v142, v18, s35, 2
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s35, 5
	s_mul_i32 s5, s35, 6
	s_mul_i32 s6, s35, 7
	s_mul_i32 s7, s35, 9
	s_mul_i32 s8, s35, 10
	s_mul_i32 s9, s35, 11
	s_mul_i32 s12, s35, 12
	s_mul_i32 s13, s35, 13
	s_mul_i32 s14, s35, 14
	s_mul_i32 s15, s35, 15
	s_mul_i32 s16, s35, 17
	s_mul_i32 s17, s35, 18
	s_mul_i32 s18, s35, 19
	s_mul_i32 s19, s35, 20
	s_mul_i32 s20, s35, 21
	s_mul_i32 s21, s35, 22
	s_mul_i32 s22, s35, 23
	s_mul_i32 s23, s35, 24
	s_mul_i32 s28, s35, 25
	s_mul_i32 s29, s35, 26
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	v_add_lshl_u32 v143, v18, s33, 2
	s_and_b32 s25, s25, 0xffff
	v_add_lshl_u32 v144, v18, s4, 2
	v_add_lshl_u32 v145, v18, s5, 2
	v_add_lshl_u32 v146, v18, s6, 2
	v_add_lshl_u32 v147, v18, s7, 2
	v_add_lshl_u32 v148, v18, s8, 2
	v_add_lshl_u32 v149, v18, s9, 2
	v_add_lshl_u32 v150, v18, s12, 2
	v_add_lshl_u32 v151, v18, s13, 2
	v_add_lshl_u32 v152, v18, s14, 2
	v_add_lshl_u32 v153, v18, s15, 2
	v_add_lshl_u32 v154, v18, s16, 2
	v_add_lshl_u32 v155, v18, s17, 2
	v_add_lshl_u32 v156, v18, s18, 2
	v_add_lshl_u32 v157, v18, s19, 2
	v_add_lshl_u32 v158, v18, s20, 2
	v_add_lshl_u32 v159, v18, s21, 2
	v_add_lshl_u32 v160, v18, s22, 2
	v_add_lshl_u32 v161, v18, s23, 2
	v_add_lshl_u32 v162, v18, s28, 2
	v_add_lshl_u32 v163, v18, s29, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s30, s35, 27
	s_mul_i32 s31, s35, 28
	s_mul_i32 s34, s35, 29
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v164, v18, s30, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s36, s35, 30
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v165, v18, s31, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s35, 31
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v166, v18, s34, 2
	v_add_lshl_u32 v167, v18, s36, 2
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v36, v8, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v88, v133, v88, v54
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v133, 0x5028, v25, 0
	v_add_nc_u32_e32 v36, 0, v27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v97, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v96 offset:37376
	v_mul_f32_e32 v13, v13, v87
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v87, 0, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v102, v92, v58
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v102, 0x3018, v25, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v25, v2, v63, v30
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[4:7], v96 offset:36880
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v75, v41
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v58, v92, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v58, v1, v71, v29
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[0:3], v96 offset:36864
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v30, v25, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v30, 16, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v41, v13, s3
	v_cndmask_b32_e64 v29, v29, v58, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v58, v27, 16, 0
	v_xad_u32 v63, v27, 32, 0
	v_xad_u32 v61, v27, 40, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v62
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v54, v88, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v70, v6, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v77, v43
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v68, v4, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v141, v79, v45
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v62, v1, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v81, v139, v81, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v15, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[12:15], v96 offset:37392
	v_mul_f32_e32 v75, v11, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v140, v80, v46
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v79, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v0, v30
	v_mul_f32_e32 v67, v3, v30
	v_mul_f32_e32 v69, v5, v30
	v_mul_f32_e32 v72, v8, v30
	v_mul_f32_e32 v74, v10, v30
	v_mul_f32_e32 v0, v0, v27
	v_mul_f32_e32 v8, v8, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v80, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v66, v2, v30
	v_mul_f32_e32 v71, v7, v30
	v_mul_f32_e32 v73, v9, v30
	v_mul_f32_e32 v1, v1, v27
	v_mul_f32_e32 v9, v9, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v81, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v27
	v_mul_f32_e32 v10, v10, v27
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v76, v12, v30
	v_mul_f32_e32 v77, v13, v30
	v_mul_f32_e32 v3, v3, v27
	v_dual_mul_f32 v11, v11, v27 :: v_dual_mul_f32 v78, v14, v30
	v_mul_f32_e32 v30, v15, v30
	v_mul_f32_e32 v4, v4, v27
	v_mul_f32_e32 v5, v5, v27
	v_mul_f32_e32 v6, v6, v27
	v_mul_f32_e32 v7, v7, v27
	v_mul_f32_e32 v12, v12, v27
	v_mul_f32_e32 v13, v13, v27
	v_mul_f32_e32 v14, v14, v27
	v_mul_f32_e32 v15, v15, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v31, v17, v29
	v_fma_f32 v24, v67, v24, v32
	v_fma_f32 v31, v69, v104, v34
	v_fma_f32 v67, v72, v107, v16
	v_fma_f32 v69, v74, v109, v39
	v_fma_f32 v74, v0, v114, v45
	v_fma_f32 v82, v8, v122, v54
	v_fma_f32 v22, v62, v22, v25
	v_fma_f32 v23, v66, v23, v19
	v_fma_f32 v27, v68, v103, v33
	v_fma_f32 v62, v70, v105, v35
	v_fma_f32 v66, v71, v106, v20
	v_fma_f32 v68, v73, v108, v38
	v_fma_f32 v70, v75, v110, v40
	v_fma_f32 v75, v1, v115, v46
	v_fma_f32 v83, v9, v123, v55
	v_fma_f32 v71, v76, v111, v41
	v_fma_f32 v76, v2, v116, v47
	v_fma_f32 v84, v10, v124, v56
	v_fma_f32 v72, v77, v21, v42
	v_fma_f32 v77, v3, v117, v48
	v_fma_f32 v85, v11, v125, v57
	v_fma_f32 v73, v78, v112, v43
	v_fma_f32 v30, v30, v113, v44
	v_fma_f32 v78, v4, v118, v49
	v_fma_f32 v79, v5, v119, v50
	v_fma_f32 v80, v6, v120, v51
	v_fma_f32 v81, v7, v121, v52
	v_fma_f32 v86, v12, v126, v26
	v_fma_f32 v88, v13, v127, v28
	v_fma_f32 v89, v14, v128, v60
	v_fma_f32 v90, v15, v129, v53
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v29, v17, s2
	v_cndmask_b32_e64 v16, v16, v67, s2
	v_cndmask_b32_e64 v1, v45, v74, s2
	v_cndmask_b32_e64 v17, v54, v82, s2
	v_cndmask_b32_e64 v2, v25, v22, s2
	v_cndmask_b32_e64 v4, v19, v23, s2
	v_cndmask_b32_e64 v14, v20, v66, s2
	v_cndmask_b32_e64 v19, v38, v68, s2
	v_cndmask_b32_e64 v3, v46, v75, s2
	v_cndmask_b32_e64 v20, v55, v83, s2
	v_cndmask_b32_e64 v21, v39, v69, s2
	v_cndmask_b32_e64 v5, v47, v76, s2
	v_cndmask_b32_e64 v22, v56, v84, s2
	v_cndmask_b32_e64 v6, v32, v24, s2
	v_cndmask_b32_e64 v23, v40, v70, s2
	v_cndmask_b32_e64 v7, v48, v77, s2
	v_cndmask_b32_e64 v24, v57, v85, s2
	v_cndmask_b32_e64 v8, v33, v27, s2
	v_cndmask_b32_e64 v10, v34, v31, s2
	v_cndmask_b32_e64 v12, v35, v62, s2
	v_cndmask_b32_e64 v25, v41, v71, s2
	v_cndmask_b32_e64 v27, v42, v72, s2
	v_cndmask_b32_e64 v29, v43, v73, s2
	v_cndmask_b32_e64 v31, v44, v30, s2
	v_cndmask_b32_e64 v9, v49, v78, s2
	v_cndmask_b32_e64 v11, v50, v79, s2
	v_cndmask_b32_e64 v13, v51, v80, s2
	v_cndmask_b32_e64 v15, v52, v81, s2
	v_cndmask_b32_e64 v26, v26, v86, s2
	v_cndmask_b32_e64 v28, v28, v88, s2
	v_cndmask_b32_e64 v30, v60, v89, s2
	v_cndmask_b32_e64 v32, v53, v90, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v36, v[0:1], v[16:17] offset1:2
	ds_store_2addr_stride64_b64 v37, v[2:3], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v58, v[4:5], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v59, v[6:7], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v63, v[8:9], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v61, v[10:11], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v64, v[12:13], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v65, v[14:15], v[31:32] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v87
	ds_load_b64 v[2:3], v94
	ds_load_b64 v[4:5], v95
	ds_load_b64 v[6:7], v98
	ds_load_b64 v[8:9], v100
	ds_load_b64 v[10:11], v101
	ds_load_b64 v[12:13], v102
	ds_load_b64 v[14:15], v130
	ds_load_b64 v[16:17], v131
	ds_load_b64 v[19:20], v132
	ds_load_b64 v[21:22], v133
	ds_load_b64 v[23:24], v134
	ds_load_b64 v[25:26], v135
	ds_load_b64 v[27:28], v136
	ds_load_b64 v[29:30], v137
	ds_load_b64 v[31:32], v138
	v_lshl_add_u32 v33, s35, 3, v99
	v_lshl_add_u32 v34, s35, 4, v99
	v_lshl_add_u32 v35, s35, 5, v99
	v_lshl_add_u32 v36, s35, 6, v99
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v99, s[24:27], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v142, s[24:27], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v33, s[24:27], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v143, s[24:27], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v34, s[24:27], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v10, v144, s[24:27], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v12, v145, s[24:27], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v14, v146, s[24:27], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v16, v35, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v147, s[24:27], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v148, s[24:27], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v149, s[24:27], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v150, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v151, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v152, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v153, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v36, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v154, s[24:27], 0 offen
	buffer_atomic_add_f32 v5, v155, s[24:27], 0 offen
	buffer_atomic_add_f32 v7, v156, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v157, s[24:27], 0 offen
	buffer_atomic_add_f32 v11, v158, s[24:27], 0 offen
	buffer_atomic_add_f32 v13, v159, s[24:27], 0 offen
	buffer_atomic_add_f32 v15, v160, s[24:27], 0 offen
	buffer_atomic_add_f32 v17, v161, s[24:27], 0 offen
	buffer_atomic_add_f32 v20, v162, s[24:27], 0 offen
	buffer_atomic_add_f32 v22, v163, s[24:27], 0 offen
	v_add_lshl_u32 v0, v18, s1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v164, s[24:27], 0 offen
	buffer_atomic_add_f32 v26, v165, s[24:27], 0 offen
	buffer_atomic_add_f32 v28, v166, s[24:27], 0 offen
	buffer_atomic_add_f32 v30, v167, s[24:27], 0 offen
	buffer_atomic_add_f32 v32, v0, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 232
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15120
; TotalNumSgprs: 51
; NumVgprs: 232
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     232
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
