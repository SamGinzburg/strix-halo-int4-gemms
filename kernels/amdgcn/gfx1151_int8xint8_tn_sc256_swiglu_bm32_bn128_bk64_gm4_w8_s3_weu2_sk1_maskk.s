	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v84, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v87, 3, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v11, 6, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v44, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v85, 62, v84
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v10, 16, v44
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s26, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
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
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s31, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s17
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s30, v85
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
	s_add_i32 s5, s31, 63
.Ltmp19:
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s35, s27, 1
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s4, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s16
.Ltmp21:
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s35, v85
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v1, 7, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	s_and_b32 s37, s37, 0xffff
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s30, v84
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v86, v1, 4, v2
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s7, s26, s30
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v2, s33, s18, v86
	v_add_nc_u32_e32 v3, s35, v2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v4, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_clause 0x1
	buffer_load_b128 v[12:15], v4, s[36:39], 0 offen
	buffer_load_b128 v[16:19], v3, s[36:39], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v3, s27, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v2, s27, 7, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v4, s35, v3
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v5
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[20:23], v3, s[36:39], 0 offen
	buffer_load_b128 v[24:27], v4, s[36:39], 0 offen
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v3, s26, v84
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v4, 24, v87
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v5, s27, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s30, 64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v29, v3, v4, s34
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s44, v85
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v6, s35, v5
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v28, s44, v84
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v3, s7, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s35, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_clause 0x1
	buffer_load_b128 v[30:33], v2, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v4, s[36:39], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v2, 0x80000000, v5, s4
	v_cndmask_b32_e64 v4, 0x80000000, v6, s4
	s_clause 0x1
	buffer_load_b128 v[38:41], v2, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v4, s[36:39], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s26, 6
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v28
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v28, s7, s4, v29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[55:56], v2, s[8:11], 0 offen
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_dual_cndmask_b32 v28, 0x80000000, v28 :: v_dual_add_nc_u32 v59, 0, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 0x420, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v4, 0x70, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[57:58], v28, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v3, v3, v85
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v88, v11, 10, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v2, v2, 1, v4
	v_lshlrev_b32_e32 v11, 3, v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v89, 0x90, v88
	v_xor_b32_e32 v90, 0x120, v88
	v_add_nc_u32_e32 v60, 0, v88
	v_xor_b32_e32 v91, 0x1b0, v88
	v_xor_b32_e32 v92, 0x210, v88
	v_add_nc_u32_e32 v61, 0, v89
	v_xor_b32_e32 v93, 0x330, v88
	v_add_nc_u32_e32 v62, 0, v90
	v_xor_b32_e32 v94, 0x3a0, v88
	v_add_nc_u32_e32 v63, 0, v91
	v_add_nc_u32_e32 v64, 0, v92
	v_add_nc_u32_e32 v65, 0, v93
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v6, 2, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v66, 0, v94
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v7, 4, v2
	v_or_b32_e32 v8, 6, v2
	v_or_b32_e32 v9, 8, v2
	v_or_b32_e32 v3, 10, v2
	v_or_b32_e32 v4, 12, v2
	v_or_b32_e32 v5, 14, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	v_perm_b32 v28, v16, v12, 0x5010400
	v_perm_b32 v16, v16, v12, 0x7030602
	v_perm_b32 v42, v17, v13, 0x5010400
	v_perm_b32 v17, v17, v13, 0x7030602
	v_perm_b32 v43, v18, v14, 0x5010400
	v_perm_b32 v18, v18, v14, 0x7030602
	v_perm_b32 v49, v19, v15, 0x5010400
	v_perm_b32 v50, v19, v15, 0x7030602
	v_and_b16 v12.l, 0xff, v28.l
	v_lshrrev_b32_e32 v51, 8, v28
	v_lshrrev_b32_e32 v52, 24, v28
	v_and_b16 v12.h, 0xff, v28.h
	v_and_b16 v13.l, 0xff, v16.l
	v_lshrrev_b32_e32 v28, 8, v16
	v_lshrrev_b32_e32 v53, 24, v16
	v_and_b16 v13.h, 0xff, v16.h
	v_and_b16 v14.l, 0xff, v42.l
	v_lshrrev_b32_e32 v54, 8, v42
	v_lshrrev_b32_e32 v67, 24, v42
	v_and_b16 v14.h, 0xff, v42.h
	v_and_b16 v15.l, 0xff, v17.l
	v_lshrrev_b32_e32 v42, 8, v17
	v_lshrrev_b32_e32 v68, 24, v17
	v_and_b16 v15.h, 0xff, v17.h
	v_and_b16 v16.l, 0xff, v43.l
	v_lshrrev_b32_e32 v69, 8, v43
	v_lshrrev_b32_e32 v70, 24, v43
	v_and_b16 v16.h, 0xff, v43.h
	v_and_b16 v17.l, 0xff, v18.l
	v_lshrrev_b32_e32 v43, 8, v18
	v_lshrrev_b32_e32 v71, 24, v18
	v_and_b16 v17.h, 0xff, v18.h
	v_and_b16 v18.l, 0xff, v49.l
	v_lshrrev_b32_e32 v72, 8, v49
	v_lshrrev_b32_e32 v73, 24, v49
	v_and_b16 v18.h, 0xff, v49.h
	v_and_b16 v19.l, 0xff, v50.l
	v_lshrrev_b32_e32 v49, 8, v50
	v_lshrrev_b32_e32 v74, 24, v50
	v_and_b16 v19.h, 0xff, v50.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(6)
	v_perm_b32 v50, v24, v20, 0x5010400
	v_perm_b32 v75, v24, v20, 0x7030602
	v_perm_b32 v76, v25, v21, 0x5010400
	v_perm_b32 v77, v25, v21, 0x7030602
	v_perm_b32 v78, v26, v22, 0x5010400
	v_perm_b32 v79, v26, v22, 0x7030602
	v_perm_b32 v80, v27, v23, 0x5010400
	v_perm_b32 v81, v27, v23, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v20.l, 8, v51.l
	v_lshlrev_b16 v20.h, 8, v52.l
	v_lshlrev_b16 v21.l, 8, v28.l
	v_lshlrev_b16 v21.h, 8, v53.l
	v_lshlrev_b16 v22.l, 8, v54.l
	v_lshlrev_b16 v22.h, 8, v67.l
	v_lshlrev_b16 v23.l, 8, v42.l
	v_lshlrev_b16 v23.h, 8, v68.l
	v_lshlrev_b16 v24.l, 8, v69.l
	v_lshlrev_b16 v24.h, 8, v70.l
	v_lshlrev_b16 v25.l, 8, v43.l
	v_lshlrev_b16 v25.h, 8, v71.l
	v_lshlrev_b16 v26.l, 8, v72.l
	v_lshlrev_b16 v26.h, 8, v73.l
	v_lshlrev_b16 v27.l, 8, v49.l
	v_lshlrev_b16 v27.h, 8, v74.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v28.l, 0xff, v50.l
	v_lshrrev_b32_e32 v54, 8, v50
	v_lshrrev_b32_e32 v67, 24, v50
	v_and_b16 v28.h, 0xff, v50.h
	v_and_b16 v42.l, 0xff, v75.l
	v_lshrrev_b32_e32 v68, 8, v75
	v_lshrrev_b32_e32 v69, 24, v75
	v_and_b16 v42.h, 0xff, v75.h
	v_and_b16 v43.l, 0xff, v76.l
	v_lshrrev_b32_e32 v70, 8, v76
	v_lshrrev_b32_e32 v71, 24, v76
	v_and_b16 v43.h, 0xff, v76.h
	v_and_b16 v49.l, 0xff, v77.l
	v_lshrrev_b32_e32 v72, 8, v77
	v_lshrrev_b32_e32 v73, 24, v77
	v_and_b16 v49.h, 0xff, v77.h
	v_and_b16 v50.l, 0xff, v78.l
	v_lshrrev_b32_e32 v74, 8, v78
	v_lshrrev_b32_e32 v75, 24, v78
	v_and_b16 v50.h, 0xff, v78.h
	v_and_b16 v51.l, 0xff, v79.l
	v_lshrrev_b32_e32 v76, 8, v79
	v_lshrrev_b32_e32 v77, 24, v79
	v_and_b16 v51.h, 0xff, v79.h
	v_and_b16 v52.l, 0xff, v80.l
	v_lshrrev_b32_e32 v78, 8, v80
	v_lshrrev_b32_e32 v79, 24, v80
	v_and_b16 v52.h, 0xff, v80.h
	v_and_b16 v53.l, 0xff, v81.l
	v_lshrrev_b32_e32 v80, 8, v81
	v_lshrrev_b32_e32 v82, 24, v81
	v_and_b16 v53.h, 0xff, v81.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v81, v34, v30, 0x5010400
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v83, v35, v31, 0x5010400
	v_perm_b32 v35, v35, v31, 0x7030602
	v_perm_b32 v95, v36, v32, 0x5010400
	v_perm_b32 v36, v36, v32, 0x7030602
	v_perm_b32 v96, v37, v33, 0x5010400
	v_perm_b32 v97, v37, v33, 0x7030602
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v98, v45, v38, 0x5010400
	v_perm_b32 v45, v45, v38, 0x7030602
	v_perm_b32 v99, v46, v39, 0x5010400
	v_perm_b32 v46, v46, v39, 0x7030602
	v_perm_b32 v100, v47, v40, 0x5010400
	v_perm_b32 v101, v48, v41, 0x5010400
	v_perm_b32 v102, v48, v41, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v12.l, v12.l, v20.l
	v_or_b16 v15.l, v15.l, v23.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v23.l, 8, v72.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v48, 8, v81
	v_or_b16 v12.h, v12.h, v20.h
	v_or_b16 v15.h, v15.h, v23.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v20.l, 8, v54.l
	v_lshlrev_b16 v23.h, 8, v73.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v54, 24, v81
	v_or_b16 v13.l, v13.l, v21.l
	v_or_b16 v16.l, v16.l, v24.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v20.h, 8, v67.l
	v_lshlrev_b16 v24.l, 8, v74.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v67, 8, v34
	v_or_b16 v13.h, v13.h, v21.h
	v_or_b16 v16.h, v16.h, v24.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v21.l, 8, v68.l
	v_lshlrev_b16 v24.h, 8, v75.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v68, 24, v34
	v_or_b16 v14.l, v14.l, v22.l
	v_or_b16 v14.h, v14.h, v22.h
	v_or_b16 v17.l, v17.l, v25.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v21.h, 8, v69.l
	v_lshlrev_b16 v25.l, 8, v76.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v69, 8, v83
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v47, v47, v40, 0x7030602
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v17.h, v17.h, v25.h
	v_or_b16 v18.l, v18.l, v26.l
	v_or_b16 v18.h, v18.h, v26.h
	v_or_b16 v19.l, v19.l, v27.l
	v_or_b16 v19.h, v19.h, v27.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v22.l, 8, v70.l
	v_lshlrev_b16 v22.h, 8, v71.l
	v_lshlrev_b16 v25.h, 8, v77.l
	v_lshlrev_b16 v26.l, 8, v78.l
	v_lshlrev_b16 v26.h, 8, v79.l
	v_lshlrev_b16 v27.l, 8, v80.l
	v_lshlrev_b16 v27.h, 8, v82.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v30.l, 0xff, v81.l
	v_and_b16 v30.h, 0xff, v81.h
	v_and_b16 v31.l, 0xff, v34.l
	v_and_b16 v31.h, 0xff, v34.h
	v_and_b16 v32.l, 0xff, v83.l
	v_lshrrev_b32_e32 v70, 24, v83
	v_and_b16 v32.h, 0xff, v83.h
	v_and_b16 v33.l, 0xff, v35.l
	v_lshrrev_b32_e32 v71, 8, v35
	v_lshrrev_b32_e32 v72, 24, v35
	v_and_b16 v33.h, 0xff, v35.h
	v_and_b16 v34.l, 0xff, v95.l
	v_lshrrev_b32_e32 v73, 8, v95
	v_lshrrev_b32_e32 v74, 24, v95
	v_and_b16 v34.h, 0xff, v95.h
	v_and_b16 v35.l, 0xff, v36.l
	v_lshrrev_b32_e32 v75, 8, v36
	v_lshrrev_b32_e32 v76, 24, v36
	v_and_b16 v35.h, 0xff, v36.h
	v_and_b16 v36.l, 0xff, v96.l
	v_lshrrev_b32_e32 v77, 8, v96
	v_lshrrev_b32_e32 v78, 24, v96
	v_and_b16 v36.h, 0xff, v96.h
	v_and_b16 v37.l, 0xff, v97.l
	v_lshrrev_b32_e32 v79, 8, v97
	v_lshrrev_b32_e32 v80, 24, v97
	v_and_b16 v37.h, 0xff, v97.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v38.l, 0xff, v98.l
	v_lshrrev_b32_e32 v81, 8, v98
	v_lshrrev_b32_e32 v82, 24, v98
	v_and_b16 v38.h, 0xff, v98.h
	v_lshrrev_b32_e32 v83, 8, v45
	v_lshrrev_b32_e32 v95, 24, v45
	v_and_b16 v40.l, 0xff, v99.l
	v_lshrrev_b32_e32 v96, 8, v99
	v_lshrrev_b32_e32 v97, 24, v99
	v_and_b16 v40.h, 0xff, v99.h
	v_lshrrev_b32_e32 v98, 8, v46
	v_lshrrev_b32_e32 v99, 24, v46
	v_lshrrev_b32_e32 v103, 8, v100
	v_lshrrev_b32_e32 v104, 24, v100
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v60, v12
	ds_store_b16_d16_hi v60, v12 offset:64
	ds_store_b16 v61, v13
	ds_store_b16_d16_hi v61, v13 offset:64
	ds_store_b16 v62, v14
	ds_store_b16_d16_hi v62, v14 offset:64
	ds_store_b16 v63, v15
	ds_store_b16_d16_hi v63, v15 offset:64
	ds_store_b16 v64, v16
	ds_store_b16_d16_hi v64, v16 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v14.h, v49.l, v23.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v23.l, 8, v48.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v20.l, v28.l, v20.l
	v_or_b16 v15.l, v49.h, v23.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v23.h, 8, v54.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v15.h, v50.l, v24.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v24.l, 8, v67.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v16.l, v50.h, v24.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v24.h, 8, v68.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v12.l, v28.h, v20.h
	v_or_b16 v16.h, v51.l, v25.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v25.l, 8, v69.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v39.l, 0xff, v45.l
	v_and_b16 v39.h, 0xff, v45.h
	v_and_b16 v41.l, 0xff, v46.l
	v_and_b16 v41.h, 0xff, v46.h
	v_and_b16 v45.l, 0xff, v100.l
	v_and_b16 v45.h, 0xff, v100.h
	v_and_b16 v46.l, 0xff, v47.l
	v_lshrrev_b32_e32 v100, 8, v47
	v_lshrrev_b32_e32 v105, 24, v47
	v_and_b16 v46.h, 0xff, v47.h
	v_and_b16 v47.l, 0xff, v101.l
	v_lshrrev_b32_e32 v106, 8, v101
	v_lshrrev_b32_e32 v107, 24, v101
	v_and_b16 v47.h, 0xff, v101.h
	v_lshrrev_b32_e32 v101, 8, v102
	v_or_b16 v12.h, v42.l, v21.l
	v_or_b16 v13.l, v42.h, v21.h
	v_or_b16 v13.h, v43.l, v22.l
	v_or_b16 v14.l, v43.h, v22.h
	v_or_b16 v20.h, v51.h, v25.h
	v_or_b16 v21.l, v52.l, v26.l
	v_or_b16 v21.h, v52.h, v26.h
	v_or_b16 v22.l, v53.l, v27.l
	v_or_b16 v22.h, v53.h, v27.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v25.h, 8, v70.l
	v_lshlrev_b16 v26.l, 8, v71.l
	v_lshlrev_b16 v26.h, 8, v72.l
	v_lshlrev_b16 v27.l, 8, v73.l
	v_lshlrev_b16 v27.h, 8, v74.l
	v_lshlrev_b16 v28.l, 8, v75.l
	v_lshlrev_b16 v28.h, 8, v76.l
	v_lshlrev_b16 v42.l, 8, v77.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v48.l, 8, v81.l
	v_lshlrev_b16 v48.h, 8, v82.l
	v_lshlrev_b16 v49.l, 8, v83.l
	v_lshlrev_b16 v49.h, 8, v95.l
	v_lshlrev_b16 v50.l, 8, v96.l
	v_lshlrev_b16 v50.h, 8, v97.l
	v_lshlrev_b16 v51.l, 8, v98.l
	v_lshlrev_b16 v51.h, 8, v99.l
	v_lshlrev_b16 v52.l, 8, v103.l
	v_lshlrev_b16 v52.h, 8, v104.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v59, v[55:56] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v60, v20 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v60, v17 offset:640
	ds_store_b16_d16_hi v60, v17 offset:704
	ds_store_b16 v65, v18
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v60, v12 offset:16448
	ds_store_b16_d16_hi v61, v12 offset:16384
	ds_store_b16 v61, v13 offset:16448
	ds_store_b16_d16_hi v62, v13 offset:16384
	ds_store_b16 v62, v14 offset:16448
	ds_store_b16_d16_hi v63, v14 offset:16384
	ds_store_b16 v63, v15 offset:16448
	ds_store_b16_d16_hi v64, v15 offset:16384
	ds_store_b16 v64, v16 offset:16448
	ds_store_b16_d16_hi v60, v16 offset:17024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v65, v18 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v60, v20 offset:17088
	ds_store_b16 v65, v21 offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v66, v19
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v65, v21 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v66, v19 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v66, v22 offset:16384
	ds_store_b16_d16_hi v66, v22 offset:16448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v12.l, v30.l, v23.l
	v_or_b16 v12.h, v30.h, v23.h
	v_or_b16 v13.l, v31.l, v24.l
	v_or_b16 v13.h, v31.h, v24.h
	v_or_b16 v14.l, v32.l, v25.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v108, 24, v102
	v_lshlrev_b16 v53.l, 8, v100.l
	v_lshlrev_b16 v54.l, 8, v106.l
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v14.h, v32.h, v25.h
	v_or_b16 v15.l, v33.l, v26.l
	v_or_b16 v15.h, v33.h, v26.h
	v_or_b16 v16.l, v34.l, v27.l
	v_or_b16 v16.h, v34.h, v27.h
	v_or_b16 v17.l, v35.l, v28.l
	v_or_b16 v17.h, v35.h, v28.h
	v_or_b16 v18.l, v36.l, v42.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v20.l, v38.l, v48.l
	v_or_b16 v20.h, v38.h, v48.h
	v_or_b16 v21.l, v39.l, v49.l
	v_or_b16 v21.h, v39.h, v49.h
	v_or_b16 v22.l, v40.l, v50.l
	v_or_b16 v22.h, v40.h, v50.h
	v_or_b16 v23.l, v41.l, v51.l
	v_or_b16 v23.h, v41.h, v51.h
	v_or_b16 v24.l, v45.l, v52.l
	v_or_b16 v24.h, v45.h, v52.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v60, v12 offset:8192
	ds_store_b16_d16_hi v60, v12 offset:8256
	ds_store_b16 v61, v13 offset:8192
	ds_store_b16_d16_hi v61, v13 offset:8256
	ds_store_b16 v62, v14 offset:8192
	ds_store_b16_d16_hi v62, v14 offset:8256
	ds_store_b16 v63, v15 offset:8192
	ds_store_b16_d16_hi v63, v15 offset:8256
	ds_store_b16 v64, v16 offset:8192
	ds_store_b16_d16_hi v64, v16 offset:8256
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v59, v[57:58] offset:34816
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v60, v20 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v60, v17 offset:8832
	ds_store_b16_d16_hi v60, v17 offset:8896
	ds_store_b16 v65, v18 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v60, v20 offset:24640
	ds_store_b16 v61, v21 offset:24576
	ds_store_b16_d16_hi v61, v21 offset:24640
	ds_store_b16 v62, v22 offset:24576
	ds_store_b16_d16_hi v62, v22 offset:24640
	ds_store_b16 v63, v23 offset:24576
	ds_store_b16_d16_hi v63, v23 offset:24640
	ds_store_b16 v64, v24 offset:24576
	ds_store_b16_d16_hi v64, v24 offset:24640
	v_and_b16 v12.l, 0xff, v102.l
	v_lshlrev_b16 v12.h, 8, v101.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v42.h, 8, v78.l
	v_lshlrev_b16 v43.l, 8, v79.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v53.h, 8, v105.l
	v_lshlrev_b16 v54.h, 8, v107.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v43.h, 8, v80.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v25.l, v46.l, v53.l
	v_lshlrev_b16 v13.l, 8, v108.l
	v_and_b16 v13.h, 0xff, v102.h
	v_or_b16 v14.l, v47.l, v54.l
	v_or_b16 v15.l, v12.l, v12.h
	v_or_b32_e32 v96, 0x3f0, v0
	v_or_b32_e32 v97, 0x7f0, v0
	v_lshlrev_b32_e32 v98, 6, v1
	v_lshlrev_b32_e32 v12, 5, v0
	v_and_b32_e32 v99, 8, v0
	v_and_b32_e32 v100, 32, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v18.h, v36.h, v42.h
	v_or_b16 v19.l, v37.l, v43.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_or_b16 v25.h, v46.h, v53.h
	v_or_b16 v14.h, v47.h, v54.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v19.h, v37.h, v43.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v60, v25 offset:25216
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v65, v18 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v60, v25 offset:25280
	v_or_b16 v13.l, v13.h, v13.l
	ds_store_b16 v65, v14 offset:24576
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v66, v19 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16_d16_hi v65, v14 offset:24640
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16_d16_hi v66, v19 offset:8256
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v66, v15 offset:24576
	ds_store_b16 v66, v13 offset:24640
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v102, 0x3f0, v0
	v_or_b32_e32 v101, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v13, 6, v1
	v_and_b32_e32 v14, 8, v0
	v_and_b32_e32 v15, 32, v0
	v_and_or_b32 v95, 0x1800, v12, v11
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr14
                                        ; implicit-def: $vgpr15
                                        ; implicit-def: $vgpr95
.LBB0_3:                                ; %Flow291
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v1, s34, v44
	v_or_b32_e32 v10, s34, v10
	s_ashr_i32 s1, s6, 8
	v_or_b32_e32 v81, s33, v2
	v_or_b32_e32 v80, s33, v6
	v_mul_lo_u32 v82, v1, s1
	v_mul_lo_u32 v83, v10, s1
	v_or_b32_e32 v79, s33, v7
	v_or_b32_e32 v78, s33, v8
	v_or_b32_e32 v60, s33, v9
	v_or_b32_e32 v61, s33, v3
	v_or_b32_e32 v62, s33, v4
	v_or_b32_e32 v63, s33, v5
	v_add_nc_u32_e32 v77, s27, v2
	v_add_nc_u32_e32 v76, s27, v6
	v_add_nc_u32_e32 v75, s27, v7
	v_add_nc_u32_e32 v73, s27, v8
	v_add_nc_u32_e32 v72, s27, v9
	v_add_nc_u32_e32 v74, s27, v3
	v_add_nc_u32_e32 v46, s27, v4
	v_add_nc_u32_e32 v47, s27, v5
	s_and_not1_b32 vcc_lo, exec_lo, s4
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
	v_and_or_b32 v95, 0x1800, v12, v11
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v101, s35, v86
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v50, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_or_b32 v1, 0x210, v2, v1
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v56, 0
	v_xor_b32_e32 v1, v1, v95
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_mov_b32_e32 v36, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v102, v1, v98
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_mov_b32_e32 v6, s21
	v_xor_b32_e32 v103, 16, v102
	v_xor_b32_e32 v104, 32, v102
	v_xor_b32_e32 v105, 48, v102
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v8, s23
	v_mov_b32_e32 v7, s22
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v35, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s14, s5, 6
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_add_i32 s0, s44, 64
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s14, s14, -3
	s_mov_b32 s15, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s19, s17, 6
	s_mov_b32 s18, s16
	s_mov_b32 s16, s30
	s_mov_b32 s30, s44
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s0, s19
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v106, s49, v44
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v14, s44, v84
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s44, s26, v[29:30]
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v11, s49, v96
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v12, s18, v102
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v13, s18, v103
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b64 v[30:31], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v106 offset:416
	ds_load_u8 v10, v106 offset:384
	ds_load_u8 v14, v106 offset:480
	ds_load_u8 v15, v106 offset:448
	ds_load_u8 v16, v106 offset:288
	ds_load_u8 v17, v106 offset:256
	ds_load_u8 v18, v106 offset:352
	ds_load_u8 v19, v106 offset:320
	ds_load_u8 v20, v106 offset:160
	ds_load_u8 v21, v106 offset:128
	ds_load_u8 v22, v106 offset:224
	ds_load_u8 v23, v106 offset:192
	ds_load_u8 v24, v106 offset:96
	ds_load_u8 v25, v106 offset:64
	ds_load_u8 v45, v106
	ds_load_u8 v107, v106 offset:32
	ds_load_u8 v108, v106 offset:928
	ds_load_u8 v109, v106 offset:896
	ds_load_u8 v110, v106 offset:992
	ds_load_u8 v111, v106 offset:960
	ds_load_u8 v112, v106 offset:800
	ds_load_u8 v113, v106 offset:768
	ds_load_u8 v114, v106 offset:864
	ds_load_u8 v115, v106 offset:832
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v10, v106 offset:672
	ds_load_u8 v15, v106 offset:640
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v17, v19, v18, 0xc0c0004
	v_lshl_or_b32 v28, v14, 16, v9
	ds_load_u8 v9, v106 offset:736
	ds_load_u8 v14, v106 offset:704
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v23, v22, 0xc0c0004
	ds_load_u8 v19, v106 offset:512
	v_lshl_or_b32 v27, v17, 16, v16
	v_perm_b32 v16, v21, v20, 0xc0c0004
	ds_load_u8 v17, v106 offset:544
	ds_load_u8 v21, v106 offset:432
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v20, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v22, v45, v107, 0xc0c0004
	v_lshl_or_b32 v26, v18, 16, v16
	ds_load_u8 v16, v106 offset:608
	ds_load_u8 v18, v106 offset:576
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v24, v109, v108, 0xc0c0004
	ds_load_u8 v45, v106 offset:496
	ds_load_u8 v108, v106 offset:464
	ds_load_u8 v23, v106 offset:400
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v107, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v15, v10, 0xc0c0004
	v_perm_b32 v109, v113, v112, 0xc0c0004
	ds_load_u8 v110, v106 offset:304
	ds_load_u8 v112, v106 offset:272
	ds_load_u8 v15, v106 offset:176
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v106 offset:144
	v_lshl_or_b32 v25, v20, 16, v22
	ds_load_u8 v20, v106 offset:368
	ds_load_u8 v22, v106 offset:336
	v_lshl_or_b32 v118, v107, 16, v24
	v_lshl_or_b32 v116, v9, 16, v10
	ds_load_u8 v9, v106 offset:240
	ds_load_u8 v10, v106 offset:208
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	v_perm_b32 v111, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v16, v18, v16, 0xc0c0004
	ds_load_u8 v19, v106 offset:16
	ds_load_u8 v18, v106 offset:48
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v24, v108, v45, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v23, v21, 0xc0c0004
	ds_load_u8 v23, v106 offset:112
	ds_load_u8 v45, v106 offset:80
	ds_load_u8 v108, v106 offset:944
	v_lshl_or_b32 v115, v16, 16, v17
	v_lshl_or_b32 v126, v24, 16, v21
	ds_load_u8 v16, v106 offset:976
	ds_load_u8 v17, v106 offset:816
	ds_load_u8 v21, v106 offset:656
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v14, v15, 0xc0c0004
	ds_load_u8 v15, v106 offset:784
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v20, v22, v20, 0xc0c0004
	ds_load_u8 v22, v106 offset:912
	ds_load_u8 v11, v11
	v_perm_b32 v107, v112, v110, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v106 offset:880
	v_lshl_or_b32 v117, v111, 16, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[111:114], v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v125, v20, 16, v107
	v_lshl_or_b32 v124, v9, 16, v14
	ds_load_u8 v9, v106 offset:848
	ds_load_u8 v14, v106 offset:688
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v106 offset:752
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v45, v23, 0xc0c0004
	ds_load_u8 v23, v106 offset:720
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v45, s48, v102
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v123, v20, 16, v18
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v15, v17, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v22, v22, v108, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v16, v11, 0xc0c0004
	ds_load_u8 v16, v106 offset:560
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[107:110], v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v130, v11, 16, v22
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	ds_load_u8 v10, v106 offset:624
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v14, v21, v14, 0xc0c0004
	ds_load_u8 v21, v106 offset:592
	ds_load_u8 v17, v106 offset:528
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v19, v23, v19, 0xc0c0004
	v_lshl_or_b32 v129, v9, 16, v15
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v128, v19, 16, v14
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v21, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v17, v16, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[107:110], v[123:126], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v127, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[107:110], v[25:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v107, s48, v103
	ds_load_b128 v[131:134], v45
	ds_load_b128 v[135:138], v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[111:114], v[115:118], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[111:114], v[127:130], v[17:24] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[131:134], v[25:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v25, v106 offset:1440
	ds_load_u8 v26, v106 offset:1408
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[135:138], v[115:118], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[131:134], v[123:126], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[135:138], v[127:130], v[115:122] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v106 offset:1504
	ds_load_u8 v27, v106 offset:1472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v106 offset:1312
	ds_load_u8 v28, v106 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v106 offset:1376
	ds_load_u8 v45, v106 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v28, 0xc0c0004
	v_lshl_or_b32 v28, v26, 16, v25
	ds_load_u8 v25, v106 offset:1184
	ds_load_u8 v26, v106 offset:1152
	v_lshl_or_b32 v27, v45, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v106 offset:1248
	ds_load_u8 v45, v106 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v45, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v106 offset:1056
	ds_load_u8 v45, v106 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v45, v25, 0xc0c0004
	ds_load_u8 v45, v106 offset:1120
	ds_load_u8 v123, v106 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v123, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v45, 16, v25
	ds_load_u8 v45, v106 offset:1456
	ds_load_u8 v123, v106 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v123, v45, 0xc0c0004
	ds_load_u8 v123, v106 offset:1520
	ds_load_u8 v124, v106 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v106 offset:1328
	ds_load_u8 v125, v106 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v106 offset:1392
	ds_load_u8 v126, v106 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	v_lshl_or_b32 v126, v123, 16, v45
	ds_load_u8 v45, v106 offset:1200
	ds_load_u8 v123, v106 offset:1168
	v_lshl_or_b32 v125, v125, 16, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v123, v45, 0xc0c0004
	ds_load_u8 v123, v106 offset:1264
	ds_load_u8 v124, v106 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v123, 16, v45
	ds_load_u8 v45, v106 offset:1072
	ds_load_u8 v123, v106 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v123, v45, 0xc0c0004
	ds_load_u8 v123, v106 offset:1136
	ds_load_u8 v127, v106 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v127, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v123, 16, v45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v45, s18, v104
	ds_load_b128 v[127:130], v45
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v45, s48, v104
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[127:130], v[25:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[127:130], v[123:126], v[17:24] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[127:130], v45
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[127:130], v[25:28], v[107:114] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v25, v106 offset:1952
	ds_load_u8 v26, v106 offset:1920
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[115:122], v[127:130], v[123:126], v[115:122] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v106 offset:2016
	ds_load_u8 v27, v106 offset:1984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v106 offset:1824
	ds_load_u8 v28, v106 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v106 offset:1888
	ds_load_u8 v45, v106 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v28, 0xc0c0004
	v_lshl_or_b32 v28, v26, 16, v25
	ds_load_u8 v25, v106 offset:1696
	ds_load_u8 v26, v106 offset:1664
	v_lshl_or_b32 v27, v45, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v106 offset:1760
	ds_load_u8 v45, v106 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v45, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v106 offset:1568
	ds_load_u8 v45, v106 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v45, v25, 0xc0c0004
	ds_load_u8 v45, v106 offset:1632
	ds_load_u8 v123, v106 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v123, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v45, 16, v25
	ds_load_u8 v45, v106 offset:1968
	ds_load_u8 v123, v106 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v123, v45, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v123, s49, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v123, v123
	ds_load_u8 v124, v106 offset:2000
	s_mov_b32 s49, s47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v106 offset:1840
	ds_load_u8 v125, v106 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v106 offset:1904
	ds_load_u8 v126, v106 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	v_lshl_or_b32 v126, v123, 16, v45
	ds_load_u8 v45, v106 offset:1712
	ds_load_u8 v123, v106 offset:1680
	v_lshl_or_b32 v125, v125, 16, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v123, v45, 0xc0c0004
	ds_load_u8 v123, v106 offset:1776
	ds_load_u8 v124, v106 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v123, 16, v45
	ds_load_u8 v45, v106 offset:1584
	ds_load_u8 v123, v106 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v123, v45, 0xc0c0004
	ds_load_u8 v123, v106 offset:1648
	ds_load_u8 v106, v106 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v106, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_lshl_or_b32 v123, v106, 16, v45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v45, s18, v105
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s44, s35
	s_add_i32 s18, s18, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[127:130], v45
	.loc	1 414 31 is_stmt 1              ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v45, s48, v105
	s_mov_b32 s48, s45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[127:130], v[25:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[127:130], v[123:126], v[17:24] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[127:130], v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v106, v21
	v_cvt_f32_i32_e32 v45, v22
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[127:130], v[123:126], v[115:122] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v124, v23
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[107:114], v[127:130], v[25:28], v[107:114] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v26, v20
	v_cvt_f32_i32_e32 v25, v17
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v23, v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v116, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s44, v85
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v28, v115
	v_cvt_f32_i32_e32 v21, v119
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v115, v10
	v_cvt_f32_i32_e32 v119, v14
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s18, v86
	v_add_nc_u32_e32 v10, s18, v101
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v20, v120
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v120, v13
	v_cvt_f32_i32_e32 v27, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v123, v24
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v22, v118
	v_cvt_f32_i32_e32 v24, v117
	v_cvt_f32_i32_e32 v17, v122
	v_cvt_f32_i32_e32 v19, v121
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v12
	v_cvt_f32_i32_e32 v118, v11
	v_cvt_f32_i32_e32 v121, v16
	v_cvt_f32_i32_e32 v122, v15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s18, s18, s27
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v125, v13, v9, 0x5010400
	v_perm_b32 v126, v13, v9, 0x7030602
	v_perm_b32 v127, v14, v10, 0x5010400
	v_perm_b32 v128, v14, v10, 0x7030602
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v9, s18, v86
	v_add_nc_u32_e32 v10, s18, v101
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s16, 31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v129, v15, v11, 0x5010400
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s18, 24
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s16, s16, s18
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v13, 0x80000000, v10, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s16, 8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v130, v15, v11, 0x7030602
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s16, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s16, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s19, s18, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v131, v16, v12, 0x5010400
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v144, v76, s19, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v132, v16, v12, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v142, v63, s18, 1
	v_add_lshl_u32 v141, v62, s18, 1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v143, v77, s19, 1
	v_cndmask_b32_e32 v144, 0x80000000, v144, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v145, v75, s19, 1
	v_add_lshl_u32 v146, v73, s19, 1
	v_add_lshl_u32 v147, v72, s19, 1
	v_add_lshl_u32 v148, v74, s19, 1
	v_add_lshl_u32 v149, v46, s19, 1
	v_add_lshl_u32 v150, v47, s19, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	v_cndmask_b32_e32 v145, 0x80000000, v145, vcc_lo
	v_cndmask_b32_e32 v147, 0x80000000, v147, vcc_lo
	v_cndmask_b32_e32 v149, 0x80000000, v149, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s15, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v142, 0x80000000, v142, vcc_lo
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v146, 0x80000000, v146, vcc_lo
	v_cndmask_b32_e32 v148, 0x80000000, v148, vcc_lo
	v_cndmask_b32_e32 v150, 0x80000000, v150, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s15, 2
	s_cselect_b32 s15, s15, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s19, s15, 13
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v13, v9, 0x5010400
	v_perm_b32 v134, v13, v9, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v9, v82, s16, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v135, v14, v10, 0x5010400
	v_perm_b32 v136, v14, v10, 0x7030602
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v10, v83, s16, 1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v137, v15, v11, 0x5010400
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v138, v15, v11, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v11, v81, s18, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	s_clause 0x1
	buffer_load_u16 v9, v9, s[4:7], 0 offen
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v139, v16, v12, 0x5010400
	v_perm_b32 v140, v16, v12, 0x7030602
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v12, v80, s18, 1
	v_add_lshl_u32 v13, v79, s18, 1
	v_add_lshl_u32 v14, v78, s18, 1
	v_add_lshl_u32 v15, v60, s18, 1
	v_add_lshl_u32 v16, v61, s18, 1
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_cndmask_b32 v16, 0x80000000, v16
	s_clause 0xf
	buffer_load_u16 v11, v11, s[40:43], 0 offen
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	buffer_load_u16 v14, v14, s[40:43], 0 offen
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	buffer_load_u16 v141, v141, s[40:43], 0 offen
	buffer_load_u16 v142, v142, s[40:43], 0 offen
	buffer_load_u16 v143, v143, s[40:43], 0 offen
	buffer_load_u16 v144, v144, s[40:43], 0 offen
	buffer_load_u16 v145, v145, s[40:43], 0 offen
	buffer_load_u16 v146, v146, s[40:43], 0 offen
	buffer_load_u16 v147, v147, s[40:43], 0 offen
	buffer_load_u16 v148, v148, s[40:43], 0 offen
	buffer_load_u16 v149, v149, s[40:43], 0 offen
	buffer_load_u16 v150, v150, s[40:43], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s16, s15, 11
	s_waitcnt lgkmcnt(0)
	s_add_i32 s18, s16, 0
	s_barrier
	s_mov_b32 s16, s46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s46, s19, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s19, s17, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s47, s18, 0x8000
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s14
	s_mov_b32 s17, s19
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v151, s18, v87
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v13, 16, v13
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b64 v151, v[30:31] offset:32768
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v9, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v65, v30, v116
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v9, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v66, v30, v115
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v9, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v53, v30, v118
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v9, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v54, v30, v117
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v9, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v40, v30, v120
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v30, v9, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v41, v30, v119 :: v_dual_lshlrev_b32 v30, 16, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v9, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v32, v31, v122
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v31, 16, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v115, v9, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v33, v115, v121
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v115, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v115, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v68, v10, v25
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v115, v12
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v25, 24, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v69, v10, v18 :: v_dual_mul_f32 v10, v115, v13
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshlrev_b16 v25.l, 8, v25.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v57, v10, v27 :: v_dual_mul_f32 v10, v115, v14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v27, s46, v94
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v58, v10, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v115, v15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v26, s46, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v42, v10, v106
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v115, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v43, v10, v45 :: v_dual_mul_f32 v10, v115, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v10, v124
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v115, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v35, v10, v123
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v10, 16, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v9, v10
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v48, v11, v107 :: v_dual_lshlrev_b32 v11, 16, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v12, v9, v11
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v67, v12, v108 :: v_dual_lshlrev_b32 v12, 16, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v13, v9, v12
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v55, v13, v109
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v13, 16, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v14, v9, v13
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v56, v14, v110
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v15, v9, v14
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v49, v15, v111
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v15, 16, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v16, v9, v15
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v50, v16, v112
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v18, v9, v16
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v36, v18, v113
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v9, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v37, v9, v114
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v9, v115, v10
	v_mul_f32_e32 v10, v115, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v70, v9, v28 :: v_dual_mul_f32 v9, v115, v11
	v_dual_fmac_f32 v59, v10, v24 :: v_dual_mul_f32 v10, v115, v13
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v11, v115, v14
	v_mul_f32_e32 v12, v115, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v71, v9, v23
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v13, v115, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v64, v10, v22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v22, 8, v126
	v_and_b16 v10.l, 0xff, v126.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_fmac_f32 v51, v11, v21 :: v_dual_fmac_f32 v52, v12, v20
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v21, 24, v126
	v_lshrrev_b32_e32 v20, 24, v127
	v_lshlrev_b16 v14.h, 8, v22.l
	v_lshrrev_b32_e32 v15, 8, v127
	v_lshrrev_b32_e32 v23, 8, v125
	v_lshrrev_b32_e32 v24, 24, v125
	v_and_b16 v10.h, 0xff, v126.h
	v_and_b16 v11.h, 0xff, v127.h
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v12, v115, v16 :: v_dual_fmac_f32 v39, v13, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v16, 8, v128
	v_lshrrev_b32_e32 v18, 24, v128
	v_lshrrev_b32_e32 v17, 8, v129
	v_or_b16 v10.l, v10.l, v14.h
	v_lshlrev_b16 v14.h, 8, v21.l
	v_lshrrev_b32_e32 v21, 24, v130
	v_lshlrev_b16 v15.h, 8, v20.l
	v_and_b16 v9.l, 0xff, v125.l
	v_and_b16 v9.h, 0xff, v125.h
	v_and_b16 v11.l, 0xff, v127.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fmac_f32_e32 v38, v12, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v12.h, 0xff, v128.h
	v_and_b16 v13.l, 0xff, v129.l
	v_lshlrev_b16 v13.h, 8, v23.l
	v_lshrrev_b32_e32 v19, 24, v129
	v_lshlrev_b16 v14.l, 8, v24.l
	v_lshrrev_b32_e32 v22, 8, v130
	v_or_b16 v10.h, v10.h, v14.h
	v_and_b16 v14.h, 0xff, v130.h
	v_lshlrev_b16 v15.l, 8, v15.l
	v_or_b16 v11.h, v11.h, v15.h
	v_lshrrev_b32_e32 v20, 8, v131
	v_lshlrev_b16 v15.h, 8, v16.l
	v_lshlrev_b16 v16.l, 8, v18.l
	v_lshlrev_b16 v16.h, 8, v17.l
	v_lshrrev_b32_e32 v24, 8, v132
	v_lshlrev_b16 v17.h, 8, v21.l
	v_and_b16 v12.l, 0xff, v128.l
	v_or_b16 v9.l, v9.l, v13.h
	v_and_b16 v13.h, 0xff, v129.h
	v_or_b16 v9.h, v9.h, v14.l
	v_and_b16 v14.l, 0xff, v130.l
	v_or_b16 v11.l, v11.l, v15.l
	v_and_b16 v15.l, 0xff, v131.l
	v_lshrrev_b32_e32 v23, 24, v131
	v_or_b16 v12.h, v12.h, v16.l
	v_and_b16 v16.l, 0xff, v132.l
	v_or_b16 v13.l, v13.l, v16.h
	v_lshlrev_b16 v16.h, 8, v19.l
	v_lshrrev_b32_e32 v19, 24, v132
	v_lshlrev_b16 v17.l, 8, v22.l
	v_or_b16 v14.h, v14.h, v17.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v21, 8, v133
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v17.h, 8, v20.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v20, 24, v133
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.h, 8, v24.l
	v_or_b16 v12.l, v12.l, v15.h
	v_and_b16 v15.h, 0xff, v131.h
	v_or_b16 v13.h, v13.h, v16.h
	v_and_b16 v16.h, 0xff, v132.h
	v_or_b16 v14.l, v14.l, v17.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v17.l, 0xff, v133.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v15.l, v15.l, v17.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v17.h, 0xff, v133.h
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.l, 8, v23.l
	v_or_b16 v16.l, v16.l, v18.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v22, 8, v134
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v18.h, 8, v19.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_lshrrev_b32_e32 v23, 24, v134
	v_lshlrev_b16 v19.l, 8, v21.l
	v_lshlrev_b16 v19.h, 8, v20.l
	v_lshrrev_b32_e32 v21, 8, v135
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v15.h, v15.h, v18.l
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v18.l, 0xff, v134.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v16.h, v16.h, v18.h
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_and_b16 v18.h, 0xff, v134.h
	v_or_b16 v17.l, v17.l, v19.l
	v_and_b16 v19.l, 0xff, v135.l
	v_or_b16 v17.h, v17.h, v19.h
	v_lshlrev_b16 v19.h, 8, v22.l
	v_lshrrev_b32_e32 v22, 24, v135
	v_lshlrev_b16 v20.l, 8, v23.l
	v_lshlrev_b16 v20.h, 8, v21.l
	v_lshrrev_b32_e32 v21, 8, v136
	v_or_b16 v18.l, v18.l, v19.h
	v_and_b16 v19.h, 0xff, v135.h
	v_or_b16 v18.h, v18.h, v20.l
	v_and_b16 v20.l, 0xff, v136.l
	v_or_b16 v19.l, v19.l, v20.h
	v_lshlrev_b16 v20.h, 8, v22.l
	v_lshrrev_b32_e32 v22, 24, v136
	v_lshlrev_b16 v21.l, 8, v21.l
	v_lshrrev_b32_e32 v23, 8, v137
	v_lshrrev_b32_e32 v24, 24, v139
	v_or_b16 v19.h, v19.h, v20.h
	v_and_b16 v20.h, 0xff, v136.h
	v_or_b16 v20.l, v20.l, v21.l
	v_lshlrev_b16 v21.l, 8, v22.l
	v_lshlrev_b16 v21.h, 8, v23.l
	v_lshrrev_b32_e32 v22, 24, v137
	v_lshrrev_b32_e32 v23, 24, v138
	v_lshlrev_b16 v24.l, 8, v24.l
	v_or_b16 v20.h, v20.h, v21.l
	v_and_b16 v21.l, 0xff, v137.l
	v_lshlrev_b16 v22.l, 8, v22.l
	v_lshlrev_b16 v23.l, 8, v23.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v21.l, v21.l, v21.h
	v_and_b16 v21.h, 0xff, v137.h
	v_or_b16 v21.h, v21.h, v22.l
	v_lshrrev_b32_e32 v22, 8, v138
	v_and_b16 v22.h, 0xff, v138.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v22.l, 8, v22.l
	v_or_b16 v22.l, v22.h, v22.l
	v_and_b16 v22.h, 0xff, v138.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v22.h, v22.h, v23.l
	v_lshrrev_b32_e32 v23, 8, v139
	v_and_b16 v23.h, 0xff, v139.l
	v_lshlrev_b16 v23.l, 8, v23.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v23.l, v23.h, v23.l
	v_and_b16 v23.h, 0xff, v139.h
	v_or_b16 v23.h, v23.h, v24.l
	v_lshrrev_b32_e32 v24, 8, v140
	v_and_b16 v24.h, 0xff, v140.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v24.l, 8, v24.l
	v_or_b16 v24.l, v24.h, v24.l
	v_and_b16 v24.h, 0xff, v140.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v24.h, v24.h, v25.l
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v25, s46, v88
	ds_store_b16 v25, v9
	ds_store_b16_d16_hi v25, v9 offset:64
	v_add_nc_u32_e32 v9, s46, v89
	ds_store_b16 v9, v10
	ds_store_b16_d16_hi v9, v10 offset:64
	v_add_nc_u32_e32 v10, s46, v90
	ds_store_b16 v10, v11
	ds_store_b16_d16_hi v10, v11 offset:64
	v_add_nc_u32_e32 v11, s46, v91
	ds_store_b16 v11, v12
	ds_store_b16_d16_hi v11, v12 offset:64
	v_add_nc_u32_e32 v12, s46, v93
	ds_store_b16 v26, v13
	ds_store_b16_d16_hi v26, v13 offset:64
	ds_store_b16 v25, v14 offset:640
	ds_store_b16_d16_hi v25, v14 offset:704
	ds_store_b16 v12, v15
	ds_store_b16_d16_hi v12, v15 offset:64
	ds_store_b16 v27, v16
	ds_store_b16_d16_hi v27, v16 offset:64
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_store_b16 v25, v17 offset:16384
	ds_store_b16_d16_hi v25, v17 offset:16448
	ds_store_b16 v9, v18 offset:16384
	ds_store_b16_d16_hi v9, v18 offset:16448
	ds_store_b16 v10, v19 offset:16384
	ds_store_b16_d16_hi v10, v19 offset:16448
	ds_store_b16 v11, v20 offset:16384
	ds_store_b16_d16_hi v11, v20 offset:16448
	ds_store_b16 v26, v21 offset:16384
	ds_store_b16_d16_hi v26, v21 offset:16448
	ds_store_b16 v25, v22 offset:17024
	ds_store_b16_d16_hi v25, v22 offset:17088
	ds_store_b16 v12, v23 offset:16384
	ds_store_b16_d16_hi v12, v23 offset:16448
	ds_store_b16 v27, v24 offset:16384
	ds_store_b16_d16_hi v27, v24 offset:16448
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v102, v96 :: v_dual_mov_b32 v101, v97
	v_dual_mov_b32 v13, v98 :: v_dual_mov_b32 v14, v99
	v_mov_b32_e32 v15, v100
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v48, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v6, s49, v44
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v14
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v1, v6
	ds_load_u8_d16 v11, v6 offset:16
	ds_load_u8_d16 v2, v6 offset:32
	ds_load_u8_d16 v12, v6 offset:48
	ds_load_u8_d16 v152, v6 offset:64
	ds_load_u8_d16 v153, v6 offset:96
	ds_load_u8_d16 v24, v6 offset:112
	ds_load_u8_d16 v25, v6 offset:80
	ds_load_u8_d16 v167, v6 offset:128
	ds_load_u8_d16 v170, v6 offset:160
	ds_load_u8_d16 v166, v6 offset:192
	ds_load_u8_d16 v168, v6 offset:224
	ds_load_u8_d16 v99, v6 offset:240
	ds_load_u8_d16 v103, v6 offset:208
	ds_load_u8_d16 v105, v6 offset:176
	ds_load_u8_d16 v106, v6 offset:144
	ds_load_u8_d16 v182, v6 offset:256
	ds_load_u8_d16 v185, v6 offset:288
	ds_load_u8_d16 v181, v6 offset:320
	ds_load_u8_d16 v183, v6 offset:352
	ds_load_u8_d16 v113, v6 offset:368
	ds_load_u8_d16 v115, v6 offset:336
	ds_load_u8_d16 v119, v6 offset:304
	ds_load_u8_d16 v120, v6 offset:272
	ds_load_u8_d16 v200, v6 offset:384
	ds_load_u8_d16 v202, v6 offset:416
	ds_load_u8_d16 v197, v6 offset:448
	ds_load_u8_d16 v198, v6 offset:480
	ds_load_u8_d16 v129, v6 offset:496
	ds_load_u8_d16 v132, v6 offset:464
	ds_load_u8_d16 v135, v6 offset:432
	ds_load_u8_d16 v137, v6 offset:400
	ds_load_u8_d16 v5, v6 offset:512
	ds_load_u8_d16 v96, v6 offset:544
	ds_load_u8_d16 v3, v6 offset:576
	ds_load_u8_d16 v45, v6 offset:608
	ds_load_u8_d16 v89, v6 offset:624
	ds_load_u8_d16 v90, v6 offset:592
	ds_load_u8_d16 v91, v6 offset:560
	ds_load_u8_d16 v94, v6 offset:528
	ds_load_u8_d16 v163, v6 offset:640
	ds_load_u8_d16 v165, v6 offset:672
	ds_load_u8_d16 v162, v6 offset:704
	ds_load_u8_d16 v164, v6 offset:736
	ds_load_u8_d16 v107, v6 offset:752
	ds_load_u8_d16 v108, v6 offset:720
	ds_load_u8_d16 v109, v6 offset:688
	ds_load_u8_d16 v110, v6 offset:656
	ds_load_u8_d16 v178, v6 offset:768
	ds_load_u8_d16 v180, v6 offset:800
	ds_load_u8_d16 v176, v6 offset:832
	ds_load_u8_d16 v179, v6 offset:864
	ds_load_u8_d16 v121, v6 offset:880
	ds_load_u8_d16 v122, v6 offset:848
	ds_load_u8_d16 v125, v6 offset:816
	ds_load_u8_d16 v126, v6 offset:784
	ds_load_u8_d16 v194, v6 offset:896
	ds_load_u8_d16 v196, v6 offset:928
	ds_load_u8_d16 v192, v6 offset:960
	ds_load_u8_d16 v195, v6 offset:992
	ds_load_u8_d16 v4, v6 offset:1024
	ds_load_u8_d16 v138, v6 offset:976
	ds_load_u8_d16 v140, v6 offset:944
	ds_load_u8_d16 v141, v6 offset:912
	ds_load_u8_d16 v159, v6 offset:1056
	ds_load_u8_d16 v157, v6 offset:1088
	ds_load_u8_d16 v158, v6 offset:1120
	ds_load_u8_d16 v161, v6 offset:1152
	ds_load_u8_d16 v97, v6 offset:1136
	ds_load_u8_d16 v98, v6 offset:1104
	ds_load_u8_d16 v100, v6 offset:1072
	ds_load_u8_d16 v104, v6 offset:1040
	ds_load_u8_d16 v172, v6 offset:1184
	ds_load_u8_d16 v169, v6 offset:1216
	ds_load_u8_d16 v171, v6 offset:1248
	ds_load_u8_d16 v177, v6 offset:1280
	ds_load_u8_d16 v111, v6 offset:1264
	ds_load_u8_d16 v112, v6 offset:1232
	ds_load_u8_d16 v114, v6 offset:1200
	ds_load_u8_d16 v116, v6 offset:1168
	ds_load_u8_d16 v187, v6 offset:1312
	ds_load_u8_d16 v184, v6 offset:1344
	ds_load_u8_d16 v186, v6 offset:1376
	ds_load_u8_d16 v193, v6 offset:1408
	ds_load_u8_d16 v127, v6 offset:1392
	ds_load_u8_d16 v128, v6 offset:1360
	ds_load_u8_d16 v130, v6 offset:1328
	ds_load_u8_d16 v133, v6 offset:1296
	ds_load_u8_d16 v203, v6 offset:1440
	ds_load_u8_d16 v199, v6 offset:1472
	ds_load_u8_d16 v201, v6 offset:1504
	ds_load_u8_d16 v156, v6 offset:1536
	ds_load_u8_d16 v142, v6 offset:1520
	ds_load_u8_d16 v143, v6 offset:1488
	ds_load_u8_d16 v146, v6 offset:1456
	ds_load_u8_d16 v147, v6 offset:1424
	v_dual_mov_b32 v234, 0 :: v_dual_add_nc_u32 v7, s49, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v15
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_load_u8_d16 v175, v6 offset:1568
	ds_load_u8_d16 v173, v6 offset:1600
	ds_load_u8_d16 v174, v6 offset:1632
	ds_load_u8_d16 v188, v6 offset:1664
	ds_load_u8_d16 v117, v6 offset:1648
	ds_load_u8_d16 v118, v6 offset:1616
	ds_load_u8_d16 v123, v6 offset:1584
	ds_load_u8_d16 v124, v6 offset:1552
	ds_load_u8_d16 v191, v6 offset:1696
	ds_load_u8_d16 v189, v6 offset:1728
	ds_load_u8_d16 v190, v6 offset:1760
	ds_load_u8_d16 v204, v6 offset:1792
	ds_load_u8_d16 v131, v6 offset:1776
	ds_load_u8_d16 v134, v6 offset:1744
	ds_load_u8_d16 v136, v6 offset:1712
	ds_load_u8_d16 v139, v6 offset:1680
	ds_load_u8_d16 v207, v6 offset:1824
	ds_load_u8_d16 v205, v6 offset:1856
	ds_load_u8_d16 v206, v6 offset:1888
	ds_load_u8_d16 v208, v6 offset:1920
	ds_load_u8_d16 v144, v6 offset:1904
	ds_load_u8_d16 v145, v6 offset:1872
	ds_load_u8_d16 v148, v6 offset:1840
	ds_load_u8_d16 v149, v6 offset:1808
	v_mov_b32_e32 v10, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v9, 0x420, 0, vcc_lo
	v_mov_b32_e32 v18, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v8, v8, v9
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v9, s49, v101
	ds_load_u8_d16 v211, v6 offset:1952
	ds_load_u8_d16 v209, v6 offset:1984
	ds_load_u8_d16 v210, v6 offset:2016
	ds_load_u8_d16 v160, v7
	ds_load_u8_d16 v150, v9
	ds_load_u8_d16 v151, v6 offset:2000
	ds_load_u8_d16 v154, v6 offset:1968
	ds_load_u8_d16 v155, v6 offset:1936
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v6, 0, 1, s2
	v_mov_b32_e32 v7, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v8, v8, v95
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v6
	v_mov_b32_e32 v6, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v95, v8, v13
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v9, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v235, 16, v95
	v_xor_b32_e32 v93, 32, v95
	v_xor_b32_e32 v92, 48, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
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
	v_add_nc_u32_e32 v13, s16, v235
	v_add_nc_u32_e32 v17, s16, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v219, s11 :: v_dual_add_nc_u32 v6, s16, v93
	v_mov_b32_e32 v218, s10
	v_mov_b32_e32 v216, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[13:16], v13
	ds_load_b128 v[17:20], v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v21, v200, v202, 0xc0c0004
	v_perm_b32 v22, v197, v198, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[6:9], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v23, v182, v185, 0xc0c0004
	v_perm_b32 v26, v181, v183, 0xc0c0004
	v_perm_b32 v27, v167, v170, 0xc0c0004
	v_perm_b32 v30, v166, v168, 0xc0c0004
	v_lshl_or_b32 v29, v22, 16, v21
	v_perm_b32 v21, v1, v2, 0xc0c0004
	v_perm_b32 v22, v152, v153, 0xc0c0004
	v_dual_mov_b32 v217, s9 :: v_dual_add_nc_u32 v10, s16, v92
	v_lshl_or_b32 v28, v26, 16, v23
	v_lshl_or_b32 v27, v30, 16, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v26, v22, 16, v21
	v_dual_mov_b32 v215, s7 :: v_dual_mov_b32 v214, s6
	v_dual_mov_b32 v213, s5 :: v_dual_mov_b32 v212, s4
	v_perm_b32 v21, v194, v196, 0xc0c0004
	v_perm_b32 v22, v192, v195, 0xc0c0004
	v_perm_b32 v23, v178, v180, 0xc0c0004
	v_perm_b32 v30, v176, v179, 0xc0c0004
	v_perm_b32 v31, v163, v165, 0xc0c0004
	v_perm_b32 v84, v162, v164, 0xc0c0004
	v_perm_b32 v85, v5, v96, 0xc0c0004
	v_perm_b32 v86, v3, v45, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[220:227], v[17:20], v[26:29], v[212:219] neg_lo:[1,1,0]
	v_lshl_or_b32 v29, v22, 16, v21
	v_lshl_or_b32 v28, v30, 16, v23
	v_lshl_or_b32 v27, v84, 16, v31
	v_lshl_or_b32 v26, v86, 16, v85
	v_perm_b32 v21, v193, v203, 0xc0c0004
	v_perm_b32 v22, v199, v201, 0xc0c0004
	v_perm_b32 v23, v177, v187, 0xc0c0004
	v_perm_b32 v30, v184, v186, 0xc0c0004
	v_perm_b32 v31, v161, v172, 0xc0c0004
	v_perm_b32 v84, v169, v171, 0xc0c0004
	v_perm_b32 v85, v4, v159, 0xc0c0004
	v_perm_b32 v86, v157, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[220:227], v[13:16], v[26:29], v[220:227] neg_lo:[1,1,0]
	v_lshl_or_b32 v29, v22, 16, v21
	v_lshl_or_b32 v28, v30, 16, v23
	v_lshl_or_b32 v27, v84, 16, v31
	v_lshl_or_b32 v26, v86, 16, v85
	v_perm_b32 v21, v208, v211, 0xc0c0004
	v_perm_b32 v22, v209, v210, 0xc0c0004
	v_perm_b32 v23, v204, v207, 0xc0c0004
	v_perm_b32 v30, v205, v206, 0xc0c0004
	v_perm_b32 v31, v188, v191, 0xc0c0004
	v_perm_b32 v88, v189, v190, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[84:87], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[220:227], v[6:9], v[26:29], v[220:227] neg_lo:[1,1,0]
	v_lshl_or_b32 v29, v22, 16, v21
	v_lshl_or_b32 v28, v30, 16, v23
	v_lshl_or_b32 v27, v88, 16, v31
	v_perm_b32 v10, v156, v175, 0xc0c0004
	v_perm_b32 v21, v173, v174, 0xc0c0004
	v_perm_b32 v22, v137, v135, 0xc0c0004
	v_perm_b32 v23, v132, v129, 0xc0c0004
	v_perm_b32 v30, v120, v119, 0xc0c0004
	v_perm_b32 v31, v115, v113, 0xc0c0004
	v_perm_b32 v88, v106, v105, 0xc0c0004
	v_perm_b32 v228, v103, v99, 0xc0c0004
	v_perm_b32 v232, v11, v12, 0xc0c0004
	v_perm_b32 v233, v25, v24, 0xc0c0004
	v_lshl_or_b32 v26, v21, 16, v10
	v_lshl_or_b32 v231, v23, 16, v22
	v_lshl_or_b32 v230, v31, 16, v30
	v_lshl_or_b32 v229, v228, 16, v88
	v_lshl_or_b32 v228, v233, 16, v232
	v_perm_b32 v10, v141, v140, 0xc0c0004
	v_perm_b32 v21, v138, v160, 0xc0c0004
	v_perm_b32 v22, v126, v125, 0xc0c0004
	v_perm_b32 v23, v122, v121, 0xc0c0004
	v_perm_b32 v30, v110, v109, 0xc0c0004
	v_perm_b32 v31, v108, v107, 0xc0c0004
	v_perm_b32 v88, v94, v91, 0xc0c0004
	v_perm_b32 v232, v90, v89, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[212:219], v[17:20], v[228:231], v[212:219] neg_lo:[1,1,0]
	v_lshl_or_b32 v20, v21, 16, v10
	v_lshl_or_b32 v19, v23, 16, v22
	v_lshl_or_b32 v18, v31, 16, v30
	v_lshl_or_b32 v17, v232, 16, v88
	v_perm_b32 v10, v147, v146, 0xc0c0004
	v_perm_b32 v21, v143, v142, 0xc0c0004
	v_perm_b32 v22, v133, v130, 0xc0c0004
	v_perm_b32 v23, v128, v127, 0xc0c0004
	v_perm_b32 v30, v116, v114, 0xc0c0004
	v_perm_b32 v31, v112, v111, 0xc0c0004
	v_perm_b32 v88, v104, v100, 0xc0c0004
	v_perm_b32 v228, v98, v97, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[212:219], v[13:16], v[17:20], v[212:219] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v21, 16, v10
	v_lshl_or_b32 v15, v23, 16, v22
	v_lshl_or_b32 v14, v31, 16, v30
	v_lshl_or_b32 v13, v228, 16, v88
	v_perm_b32 v10, v155, v154, 0xc0c0004
	v_perm_b32 v17, v151, v150, 0xc0c0004
	v_perm_b32 v18, v149, v148, 0xc0c0004
	v_perm_b32 v19, v145, v144, 0xc0c0004
	v_perm_b32 v20, v139, v136, 0xc0c0004
	v_perm_b32 v21, v134, v131, 0xc0c0004
	v_perm_b32 v22, v124, v123, 0xc0c0004
	v_perm_b32 v23, v118, v117, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[212:219], v[6:9], v[13:16], v[212:219] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v17, 16, v10
	v_lshl_or_b32 v8, v19, 16, v18
	v_lshl_or_b32 v7, v21, 16, v20
	v_lshl_or_b32 v6, v23, 16, v22
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[220:227], v[84:87], v[26:29], v[220:227] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[212:219], v[84:87], v[6:9], v[212:219] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v14, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v15, v223
	v_cvt_f32_i32_e32 v10, v224
	v_cvt_f32_i32_e32 v13, v225
	v_cvt_f32_i32_e32 v6, v226
	v_cvt_f32_i32_e32 v7, v227
	v_cvt_f32_i32_e32 v22, v212
	v_cvt_f32_i32_e32 v23, v213
	v_cvt_f32_i32_e32 v20, v214
	v_cvt_f32_i32_e32 v21, v215
	v_cvt_f32_i32_e32 v16, v216
	v_cvt_f32_i32_e32 v17, v217
	v_cvt_f32_i32_e32 v8, v218
	v_cvt_f32_i32_e32 v9, v219
	v_cvt_f32_i32_e32 v18, v220
	v_cvt_f32_i32_e32 v19, v221
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0xc                            ; 52-byte Folded Spill
	scratch_store_b32 off, v20, off offset:76
	scratch_store_b32 off, v19, off offset:68
	scratch_store_b32 off, v18, off offset:64
	scratch_store_b32 off, v17, off offset:60
	scratch_store_b32 off, v16, off offset:56
	scratch_store_b32 off, v15, off offset:52
	scratch_store_b32 off, v14, off offset:48
	scratch_store_b32 off, v13, off offset:20
	scratch_store_b32 off, v10, off offset:16
	scratch_store_b32 off, v9, off offset:12
	scratch_store_b32 off, v8, off offset:8
	scratch_store_b32 off, v7, off offset:4
	scratch_store_b32 off, v6, off
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v16, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
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
	v_add_nc_u32_e32 v13, s48, v235
	v_add_nc_u32_e32 v17, s48, v95
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v219, s11 :: v_dual_add_nc_u32 v6, s48, v93
	v_mov_b32_e32 v218, s10
	v_mov_b32_e32 v216, s8
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[13:16], v13
	ds_load_b128 v[17:20], v17
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v26, v200, v202, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[6:9], v6
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v27, v197, v198, 0xc0c0004
	v_perm_b32 v28, v182, v185, 0xc0c0004
	v_perm_b32 v30, v181, v183, 0xc0c0004
	v_perm_b32 v31, v167, v170, 0xc0c0004
	v_perm_b32 v84, v166, v168, 0xc0c0004
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v152, v153, 0xc0c0004
	v_dual_mov_b32 v217, s9 :: v_dual_add_nc_u32 v10, s48, v92
	v_lshl_or_b32 v29, v27, 16, v26
	v_lshl_or_b32 v28, v30, 16, v28
	v_lshl_or_b32 v27, v84, 16, v31
	v_lshl_or_b32 v26, v2, 16, v1
	v_dual_mov_b32 v215, s7 :: v_dual_mov_b32 v214, s6
	v_dual_mov_b32 v213, s5 :: v_dual_mov_b32 v212, s4
	v_perm_b32 v1, v194, v196, 0xc0c0004
	v_perm_b32 v2, v192, v195, 0xc0c0004
	v_perm_b32 v30, v178, v180, 0xc0c0004
	v_perm_b32 v31, v176, v179, 0xc0c0004
	v_perm_b32 v84, v163, v165, 0xc0c0004
	v_perm_b32 v85, v162, v164, 0xc0c0004
	v_perm_b32 v5, v5, v96, 0xc0c0004
	v_perm_b32 v3, v3, v45, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[220:227], v[17:20], v[26:29], v[212:219] neg_lo:[1,1,0]
	v_lshl_or_b32 v29, v2, 16, v1
	v_lshl_or_b32 v28, v31, 16, v30
	v_lshl_or_b32 v27, v85, 16, v84
	v_lshl_or_b32 v26, v3, 16, v5
	v_perm_b32 v1, v193, v203, 0xc0c0004
	v_perm_b32 v2, v199, v201, 0xc0c0004
	v_perm_b32 v3, v177, v187, 0xc0c0004
	v_perm_b32 v5, v184, v186, 0xc0c0004
	v_perm_b32 v30, v161, v172, 0xc0c0004
	v_perm_b32 v31, v169, v171, 0xc0c0004
	v_perm_b32 v45, v4, v159, 0xc0c0004
	v_perm_b32 v84, v157, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[220:227], v[13:16], v[26:29], v[220:227] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v2, 16, v1
	v_lshl_or_b32 v3, v5, 16, v3
	v_lshl_or_b32 v2, v31, 16, v30
	v_lshl_or_b32 v1, v84, 16, v45
	v_perm_b32 v5, v208, v211, 0xc0c0004
	v_perm_b32 v30, v209, v210, 0xc0c0004
	v_perm_b32 v31, v204, v207, 0xc0c0004
	v_perm_b32 v45, v205, v206, 0xc0c0004
	v_perm_b32 v84, v188, v191, 0xc0c0004
	v_perm_b32 v85, v189, v190, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[26:29], v10
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[220:227], v[6:9], v[1:4], v[220:227] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v30, 16, v5
	v_lshl_or_b32 v3, v45, 16, v31
	v_lshl_or_b32 v2, v85, 16, v84
	v_perm_b32 v1, v156, v175, 0xc0c0004
	v_perm_b32 v5, v173, v174, 0xc0c0004
	v_perm_b32 v10, v137, v135, 0xc0c0004
	v_perm_b32 v30, v132, v129, 0xc0c0004
	v_perm_b32 v31, v120, v119, 0xc0c0004
	v_perm_b32 v45, v115, v113, 0xc0c0004
	v_perm_b32 v84, v106, v105, 0xc0c0004
	v_perm_b32 v85, v103, v99, 0xc0c0004
	v_perm_b32 v11, v11, v12, 0xc0c0004
	v_perm_b32 v12, v25, v24, 0xc0c0004
	v_lshl_or_b32 v1, v5, 16, v1
	v_lshl_or_b32 v87, v30, 16, v10
	v_lshl_or_b32 v86, v45, 16, v31
	v_lshl_or_b32 v85, v85, 16, v84
	v_lshl_or_b32 v84, v12, 16, v11
	v_perm_b32 v5, v141, v140, 0xc0c0004
	v_perm_b32 v10, v138, v160, 0xc0c0004
	v_perm_b32 v11, v126, v125, 0xc0c0004
	v_perm_b32 v12, v122, v121, 0xc0c0004
	v_perm_b32 v24, v110, v109, 0xc0c0004
	v_perm_b32 v25, v108, v107, 0xc0c0004
	v_perm_b32 v30, v94, v91, 0xc0c0004
	v_perm_b32 v31, v90, v89, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[212:219], v[17:20], v[84:87], v[212:219] neg_lo:[1,1,0]
	v_lshl_or_b32 v20, v10, 16, v5
	v_lshl_or_b32 v19, v12, 16, v11
	v_lshl_or_b32 v18, v25, 16, v24
	v_lshl_or_b32 v17, v31, 16, v30
	v_perm_b32 v5, v147, v146, 0xc0c0004
	v_perm_b32 v10, v143, v142, 0xc0c0004
	v_perm_b32 v11, v133, v130, 0xc0c0004
	v_perm_b32 v12, v128, v127, 0xc0c0004
	v_perm_b32 v24, v116, v114, 0xc0c0004
	v_perm_b32 v25, v112, v111, 0xc0c0004
	v_perm_b32 v30, v104, v100, 0xc0c0004
	v_perm_b32 v31, v98, v97, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[212:219], v[13:16], v[17:20], v[212:219] neg_lo:[1,1,0]
	v_lshl_or_b32 v13, v10, 16, v5
	v_lshl_or_b32 v12, v12, 16, v11
	v_lshl_or_b32 v11, v25, 16, v24
	v_lshl_or_b32 v10, v31, 16, v30
	v_perm_b32 v5, v155, v154, 0xc0c0004
	v_perm_b32 v14, v151, v150, 0xc0c0004
	v_perm_b32 v15, v149, v148, 0xc0c0004
	v_perm_b32 v16, v145, v144, 0xc0c0004
	v_perm_b32 v17, v139, v136, 0xc0c0004
	v_perm_b32 v18, v134, v131, 0xc0c0004
	v_perm_b32 v19, v124, v123, 0xc0c0004
	v_perm_b32 v20, v118, v117, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[212:219], v[6:9], v[10:13], v[212:219] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v14, 16, v5
	v_lshl_or_b32 v7, v16, 16, v15
	v_lshl_or_b32 v6, v18, 16, v17
	v_lshl_or_b32 v5, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[220:227], v[26:29], v[1:4], v[220:227] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[212:219], v[26:29], v[5:8], v[212:219] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v28, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v223
	v_cvt_f32_i32_e32 v26, v224
	v_cvt_f32_i32_e32 v27, v225
	v_cvt_f32_i32_e32 v13, v226
	v_cvt_f32_i32_e32 v14, v227
	v_cvt_f32_i32_e32 v9, v212
	v_cvt_f32_i32_e32 v10, v213
	v_cvt_f32_i32_e32 v7, v214
	v_cvt_f32_i32_e32 v8, v215
	v_cvt_f32_i32_e32 v30, v216
	v_cvt_f32_i32_e32 v31, v217
	v_cvt_f32_i32_e32 v15, v218
	v_cvt_f32_i32_e32 v16, v219
	v_cvt_f32_i32_e32 v234, v220
	v_cvt_f32_i32_e32 v6, v221
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
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(62)
	v_add_lshl_u32 v1, v82, s0, 1
	v_add_lshl_u32 v2, v83, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s0, s35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v3, v81, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v4, v80, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v109, v1, s[12:15], 0 offen
	buffer_load_u16 v110, v2, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v1, v79, s0, 1
	v_dual_cndmask_b32 v2, 0x80000000, v3 :: v_dual_cndmask_b32 v3, 0x80000000, v4
	v_add_lshl_u32 v4, v78, s0, 1
	v_add_lshl_u32 v5, v60, s0, 1
	v_add_lshl_u32 v11, v61, s0, 1
	v_add_lshl_u32 v12, v62, s0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_waitcnt lgkmcnt(50)
	s_clause 0x6
	buffer_load_u16 v112, v2, s[28:31], 0 offen
	buffer_load_u16 v111, v3, s[28:31], 0 offen
	buffer_load_u16 v106, v1, s[28:31], 0 offen
	buffer_load_u16 v105, v4, s[28:31], 0 offen
	buffer_load_u16 v98, v5, s[28:31], 0 offen
	buffer_load_u16 v97, v11, s[28:31], 0 offen
	buffer_load_u16 v1, v12, s[28:31], 0 offen
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v234, off offset:72
	scratch_store_b32 off, v16, off offset:36
	scratch_store_b32 off, v15, off offset:32
	scratch_store_b32 off, v14, off offset:28
	scratch_store_b32 off, v13, off offset:24
	v_add_lshl_u32 v13, v63, s0, 1
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s0, s33
	v_mov_b32_e32 v126, 0
	.loc	1 426 31 is_stmt 0              ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v15, s0, v76, 1
	v_add_lshl_u32 v14, s0, v77, 1
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v16, s0, v75, 1
	v_add_lshl_u32 v4, s0, v73, 1
	v_cndmask_b32_e32 v2, 0x80000000, v15, vcc_lo
	v_add_lshl_u32 v5, s0, v72, 1
	v_add_lshl_u32 v11, s0, v74, 1
	v_add_lshl_u32 v12, s0, v46, 1
	v_cndmask_b32_e32 v3, 0x80000000, v16, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_dual_mov_b32 v104, 0 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_mov_b32_e32 v120, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v16, 0, 1, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v15, s47, v101
	s_waitcnt lgkmcnt(24)
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v123, 0
	s_mov_b32 s4, 0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_mov_b32 v115, 0
	v_mov_b32_e32 v122, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	buffer_load_u16 v1, v13, s[28:31], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v13, s0, v47, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v16, 0 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_cndmask_b32_e32 v1, 0x80000000, v14, vcc_lo
	s_clause 0x6
	buffer_load_u16 v117, v1, s[28:31], 0 offen
	buffer_load_u16 v116, v2, s[28:31], 0 offen
	buffer_load_u16 v108, v3, s[28:31], 0 offen
	buffer_load_u16 v107, v4, s[28:31], 0 offen
	buffer_load_u16 v100, v5, s[28:31], 0 offen
	buffer_load_u16 v99, v11, s[28:31], 0 offen
	buffer_load_u16 v1, v12, s[28:31], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v14, s47, v102
	v_mov_b32_e32 v102, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	buffer_load_u16 v1, v13, s[28:31], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v13, s47, v44
	ds_load_u8_d16 v193, v13
	ds_load_u8_d16 v128, v13 offset:16
	ds_load_u8_d16 v194, v13 offset:32
	ds_load_u8_d16 v129, v13 offset:48
	s_waitcnt lgkmcnt(27)
	ds_load_u8_d16 v191, v13 offset:64
	ds_load_u8_d16 v192, v13 offset:96
	ds_load_u8_d16 v130, v13 offset:112
	s_waitcnt lgkmcnt(26)
	ds_load_u8_d16 v131, v13 offset:80
	ds_load_u8_d16 v237, v13 offset:128
	ds_load_u8_d16 v240, v13 offset:160
	ds_load_u8_d16 v241, v13 offset:192
	ds_load_u8_d16 v243, v13 offset:224
	ds_load_u8_d16 v138, v13 offset:240
	ds_load_u8_d16 v140, v13 offset:208
	s_waitcnt lgkmcnt(25)
	ds_load_u8_d16 v144, v13 offset:176
	s_waitcnt lgkmcnt(25)
	ds_load_u8_d16 v145, v13 offset:144
	ds_load_u8_d16 v253, v13 offset:256
	ds_load_u8_d16 v255, v13 offset:288
	ds_load_u8_d16 v252, v13 offset:320
	ds_load_u8_d16 v254, v13 offset:352
	s_waitcnt lgkmcnt(21)
	ds_load_u8_d16 v154, v13 offset:368
	ds_load_u8_d16 v156, v13 offset:336
	ds_load_u8_d16 v160, v13 offset:304
	ds_load_u8_d16 v161, v13 offset:272
	ds_load_u8_d16 v25, v13 offset:384
	ds_load_u8_d16 v5, v13 offset:416
	ds_load_u8_d16 v96, v13 offset:448
	ds_load_u8_d16 v24, v13 offset:480
	ds_load_u8_d16 v170, v13 offset:496
	ds_load_u8_d16 v172, v13 offset:464
	ds_load_u8_d16 v176, v13 offset:432
	ds_load_u8_d16 v177, v13 offset:400
	ds_load_u8_d16 v218, v13 offset:512
	ds_load_u8_d16 v220, v13 offset:544
	ds_load_u8_d16 v221, v13 offset:576
	ds_load_u8_d16 v222, v13 offset:608
	ds_load_u8_d16 v132, v13 offset:624
	ds_load_u8_d16 v133, v13 offset:592
	ds_load_u8_d16 v134, v13 offset:560
	ds_load_u8_d16 v135, v13 offset:528
	ds_load_u8_d16 v228, v13 offset:640
	ds_load_u8_d16 v231, v13 offset:672
	ds_load_u8_d16 v232, v13 offset:704
	ds_load_u8_d16 v234, v13 offset:736
	ds_load_u8_d16 v146, v13 offset:752
	ds_load_u8_d16 v148, v13 offset:720
	ds_load_u8_d16 v150, v13 offset:688
	ds_load_u8_d16 v151, v13 offset:656
	ds_load_u8_d16 v249, v13 offset:768
	ds_load_u8_d16 v251, v13 offset:800
	ds_load_u8_d16 v248, v13 offset:832
	ds_load_u8_d16 v250, v13 offset:864
	ds_load_u8_d16 v162, v13 offset:880
	ds_load_u8_d16 v164, v13 offset:848
	ds_load_u8_d16 v166, v13 offset:816
	ds_load_u8_d16 v167, v13 offset:784
	ds_load_u8_d16 v12, v13 offset:896
	ds_load_u8_d16 v4, v13 offset:928
	ds_load_u8_d16 v11, v13 offset:960
	ds_load_u8_d16 v3, v13 offset:992
	ds_load_u8_d16 v200, v13 offset:1024
	ds_load_u8_d16 v178, v13 offset:976
	ds_load_u8_d16 v181, v13 offset:944
	ds_load_u8_d16 v182, v13 offset:912
	ds_load_u8_d16 v203, v13 offset:1056
	ds_load_u8_d16 v204, v13 offset:1088
	ds_load_u8_d16 v205, v13 offset:1120
	ds_load_u8_d16 v211, v13 offset:1152
	ds_load_u8_d16 v136, v13 offset:1136
	ds_load_u8_d16 v137, v13 offset:1104
	ds_load_u8_d16 v139, v13 offset:1072
	ds_load_u8_d16 v141, v13 offset:1040
	ds_load_u8_d16 v216, v13 offset:1184
	ds_load_u8_d16 v217, v13 offset:1216
	ds_load_u8_d16 v219, v13 offset:1248
	ds_load_u8_d16 v224, v13 offset:1280
	ds_load_u8_d16 v152, v13 offset:1264
	ds_load_u8_d16 v153, v13 offset:1232
	s_waitcnt lgkmcnt(62)
	ds_load_u8_d16 v155, v13 offset:1200
	ds_load_u8_d16 v157, v13 offset:1168
	ds_load_u8_d16 v229, v13 offset:1312
	ds_load_u8_d16 v230, v13 offset:1344
	ds_load_u8_d16 v233, v13 offset:1376
	ds_load_u8_d16 v235, v13 offset:1408
	ds_load_u8_d16 v168, v13 offset:1392
	ds_load_u8_d16 v169, v13 offset:1360
	ds_load_u8_d16 v171, v13 offset:1328
	ds_load_u8_d16 v173, v13 offset:1296
	ds_load_u8_d16 v238, v13 offset:1440
	ds_load_u8_d16 v239, v13 offset:1472
	ds_load_u8_d16 v242, v13 offset:1504
	ds_load_u8_d16 v202, v13 offset:1536
	ds_load_u8_d16 v183, v13 offset:1520
	ds_load_u8_d16 v184, v13 offset:1488
	ds_load_u8_d16 v185, v13 offset:1456
	ds_load_u8_d16 v186, v13 offset:1424
	ds_load_u8_d16 v209, v13 offset:1568
	ds_load_u8_d16 v206, v13 offset:1600
	ds_load_u8_d16 v207, v13 offset:1632
	ds_load_u8_d16 v223, v13 offset:1664
	ds_load_u8_d16 v142, v13 offset:1648
	ds_load_u8_d16 v143, v13 offset:1616
	ds_load_u8_d16 v147, v13 offset:1584
	ds_load_u8_d16 v149, v13 offset:1552
	ds_load_u8_d16 v227, v13 offset:1696
	ds_load_u8_d16 v225, v13 offset:1728
	ds_load_u8_d16 v226, v13 offset:1760
	ds_load_u8_d16 v236, v13 offset:1792
	ds_load_u8_d16 v158, v13 offset:1776
	ds_load_u8_d16 v159, v13 offset:1744
	ds_load_u8_d16 v163, v13 offset:1712
	ds_load_u8_d16 v165, v13 offset:1680
	ds_load_u8_d16 v246, v13 offset:1824
	ds_load_u8_d16 v244, v13 offset:1856
	ds_load_u8_d16 v245, v13 offset:1888
	ds_load_u8_d16 v247, v13 offset:1920
	ds_load_u8_d16 v174, v13 offset:1904
	ds_load_u8_d16 v175, v13 offset:1872
	ds_load_u8_d16 v179, v13 offset:1840
	ds_load_u8_d16 v180, v13 offset:1808
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v13 offset:1952
	ds_load_u8_d16 v45, v13 offset:1984
	ds_load_u8_d16 v1, v13 offset:2016
	ds_load_u8_d16 v201, v14
	ds_load_u8_d16 v187, v15
	ds_load_u8_d16 v188, v13 offset:2000
	ds_load_u8_d16 v189, v13 offset:1968
	ds_load_u8_d16 v190, v13 offset:1936
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v13, v25, v5, 0xc0c0004
	v_perm_b32 v14, v96, v24, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	v_lshl_or_b32 v104, v14, 16, v13
	v_perm_b32 v13, v237, v240, 0xc0c0004
	v_perm_b32 v14, v241, v243, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_perm_b32 v15, v253, v255, 0xc0c0004
	v_lshl_or_b32 v102, v14, 16, v13
	v_perm_b32 v13, v193, v194, 0xc0c0004
	v_perm_b32 v14, v191, v192, 0xc0c0004
	v_perm_b32 v16, v252, v254, 0xc0c0004
	v_perm_b32 v94, v12, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v101, v14, 16, v13
	v_perm_b32 v13, v177, v176, 0xc0c0004
	v_perm_b32 v14, v172, v170, 0xc0c0004
	v_lshl_or_b32 v103, v16, 16, v15
	v_perm_b32 v15, v161, v160, 0xc0c0004
	v_perm_b32 v16, v156, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v121, v14, 16, v13
	v_perm_b32 v13, v145, v144, 0xc0c0004
	v_perm_b32 v14, v140, v138, 0xc0c0004
	v_lshl_or_b32 v120, v16, 16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v14, 16, v13
	v_perm_b32 v13, v128, v129, 0xc0c0004
	v_perm_b32 v14, v131, v130, 0xc0c0004
	v_lshl_or_b32 v118, v14, 16, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v13, s46, v95
	ds_load_b128 v[122:125], v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v20, s11 :: v_dual_mov_b32 v19, s10
	v_dual_mov_b32 v18, s9 :: v_dual_mov_b32 v17, s8
	v_dual_mov_b32 v16, s7 :: v_dual_mov_b32 v15, s6
	v_dual_mov_b32 v14, s5 :: v_dual_mov_b32 v13, s4
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[122:125], v[101:104], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v101, v11, v3, 0xc0c0004
	v_perm_b32 v102, v249, v251, 0xc0c0004
	v_perm_b32 v103, v248, v250, 0xc0c0004
	v_lshl_or_b32 v104, v101, 16, v94
	v_perm_b32 v94, v228, v231, 0xc0c0004
	v_perm_b32 v101, v232, v234, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v103, v103, 16, v102
	v_lshl_or_b32 v102, v101, 16, v94
	v_perm_b32 v94, v218, v220, 0xc0c0004
	v_perm_b32 v101, v221, v222, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v101, v101, 16, v94
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v94, 16, v95
	v_add_nc_u32_e32 v94, s46, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[13:20], v[122:125], v[118:121], v[13:20] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[118:121], v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v94, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[118:121], v[101:104], v[84:91] neg_lo:[1,1,0]
	v_perm_b32 v101, v178, v201, 0xc0c0004
	v_perm_b32 v102, v167, v166, 0xc0c0004
	v_perm_b32 v103, v164, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v104, v101, 16, v94
	v_perm_b32 v94, v151, v150, 0xc0c0004
	v_perm_b32 v101, v148, v146, 0xc0c0004
	v_lshl_or_b32 v103, v103, 16, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v102, v101, 16, v94
	v_perm_b32 v94, v135, v134, 0xc0c0004
	v_perm_b32 v101, v133, v132, 0xc0c0004
	v_lshl_or_b32 v101, v101, 16, v94
	v_perm_b32 v94, v235, v238, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[118:121], v[101:104], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v101, v239, v242, 0xc0c0004
	v_perm_b32 v102, v224, v229, 0xc0c0004
	v_perm_b32 v103, v230, v233, 0xc0c0004
	v_lshl_or_b32 v104, v101, 16, v94
	v_perm_b32 v94, v211, v216, 0xc0c0004
	v_perm_b32 v101, v217, v219, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v103, v103, 16, v102
	v_lshl_or_b32 v102, v101, 16, v94
	v_perm_b32 v94, v200, v203, 0xc0c0004
	v_perm_b32 v101, v204, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v101, 16, v94
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v94, s46, v93
	ds_load_b128 v[118:121], v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v94, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[118:121], v[101:104], v[84:91] neg_lo:[1,1,0]
	v_perm_b32 v101, v184, v183, 0xc0c0004
	v_perm_b32 v102, v173, v171, 0xc0c0004
	v_perm_b32 v103, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v104, v101, 16, v94
	v_perm_b32 v94, v157, v155, 0xc0c0004
	v_perm_b32 v101, v153, v152, 0xc0c0004
	v_lshl_or_b32 v103, v103, 16, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v102, v101, 16, v94
	v_perm_b32 v94, v141, v139, 0xc0c0004
	v_perm_b32 v101, v137, v136, 0xc0c0004
	v_lshl_or_b32 v101, v101, 16, v94
	v_perm_b32 v94, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[118:121], v[101:104], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v101, v188, v187, 0xc0c0004
	v_perm_b32 v102, v180, v179, 0xc0c0004
	v_perm_b32 v103, v175, v174, 0xc0c0004
	v_lshl_or_b32 v104, v101, 16, v94
	v_perm_b32 v94, v165, v163, 0xc0c0004
	v_perm_b32 v101, v159, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v103, v103, 16, v102
	v_lshl_or_b32 v102, v101, 16, v94
	v_perm_b32 v94, v149, v147, 0xc0c0004
	v_perm_b32 v101, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v101, 16, v94
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v94, s46, v92
	ds_load_b128 v[118:121], v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v94, v247, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[118:121], v[101:104], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v101, v45, v1, 0xc0c0004
	v_perm_b32 v102, v236, v246, 0xc0c0004
	v_perm_b32 v103, v244, v245, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v122, v14
	v_lshl_or_b32 v104, v101, 16, v94
	v_perm_b32 v94, v223, v227, 0xc0c0004
	v_perm_b32 v101, v225, v226, 0xc0c0004
	v_lshl_or_b32 v103, v103, 16, v102
	v_cvt_f32_i32_e32 v123, v15
	v_cvt_f32_i32_e32 v124, v16
	v_cvt_f32_i32_e32 v14, v20
	v_lshl_or_b32 v102, v101, 16, v94
	v_perm_b32 v94, v202, v209, 0xc0c0004
	v_perm_b32 v101, v206, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v101, v101, 16, v94
	v_cvt_f32_i32_e32 v94, v19
	v_wmma_i32_16x16x16_iu8 v[84:91], v[118:121], v[101:104], v[84:91] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v121, v13
	v_cvt_f32_i32_e32 v101, v17
	v_cvt_f32_i32_e32 v102, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v119, v86
	v_cvt_f32_i32_e32 v120, v87
	v_cvt_f32_i32_e32 v103, v88
	v_cvt_f32_i32_e32 v104, v89
	v_cvt_f32_i32_e32 v15, v90
	v_cvt_f32_i32_e32 v16, v91
	v_cvt_f32_i32_e32 v125, v84
	v_cvt_f32_i32_e32 v126, v85
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v127, 0
	v_mov_b32_e32 v118, 0
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v5, v25, v5, 0xc0c0004
	v_perm_b32 v13, v96, v24, 0xc0c0004
	v_perm_b32 v17, v253, v255, 0xc0c0004
	v_perm_b32 v18, v252, v254, 0xc0c0004
	v_perm_b32 v4, v12, v4, 0xc0c0004
	v_perm_b32 v3, v11, v3, 0xc0c0004
	v_lshl_or_b32 v20, v13, 16, v5
	v_perm_b32 v5, v237, v240, 0xc0c0004
	v_perm_b32 v13, v241, v243, 0xc0c0004
	v_lshl_or_b32 v19, v18, 16, v17
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v18, v13, 16, v5
	v_perm_b32 v5, v193, v194, 0xc0c0004
	v_lshl_or_b32 v194, v3, 16, v4
	v_perm_b32 v3, v228, v231, 0xc0c0004
	v_perm_b32 v4, v232, v234, 0xc0c0004
	v_perm_b32 v13, v191, v192, 0xc0c0004
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v192, v4, 16, v3
	v_perm_b32 v3, v218, v220, 0xc0c0004
	v_perm_b32 v4, v221, v222, 0xc0c0004
	s_mov_b32 s11, s4
	v_lshl_or_b32 v17, v13, 16, v5
	v_dual_mov_b32 v91, s11 :: v_dual_mov_b32 v90, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v191, v4, 16, v3
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_xor_b32_e32 v3, 16, v95
	v_add_nc_u32_e32 v4, s45, v95
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v5, v249, v251, 0xc0c0004
	v_perm_b32 v11, v248, v250, 0xc0c0004
	v_dual_mov_b32 v89, s9 :: v_dual_mov_b32 v88, s8
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v3, s45, v3
	ds_load_b128 v[195:198], v4
	ds_load_b128 v[212:215], v3
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_dual_mov_b32 v87, s7 :: v_dual_mov_b32 v86, s6
	v_dual_mov_b32 v85, s5 :: v_dual_mov_b32 v84, s4
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v3, v235, v238, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v4, v239, v242, 0xc0c0004
	v_lshl_or_b32 v193, v11, 16, v5
	v_perm_b32 v5, v224, v229, 0xc0c0004
	v_perm_b32 v11, v230, v233, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v12, v236, v246, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v13, v244, v245, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v24, s45, v92
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v25, v223, v227, 0xc0c0004
	v_perm_b32 v92, v140, v138, 0xc0c0004
	v_perm_b32 v95, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[248:255], v[195:198], v[17:20], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v20, v4, 16, v3
	v_perm_b32 v3, v211, v216, 0xc0c0004
	v_perm_b32 v4, v217, v219, 0xc0c0004
	v_lshl_or_b32 v19, v11, 16, v5
	v_perm_b32 v5, v247, v2, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v2, s45, v93
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v11, v45, v1, 0xc0c0004
	v_lshl_or_b32 v18, v4, 16, v3
	v_perm_b32 v3, v200, v203, 0xc0c0004
	v_perm_b32 v4, v204, v205, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[248:255], v[212:215], v[191:194], v[248:255] neg_lo:[1,1,0]
	v_perm_b32 v45, v225, v226, 0xc0c0004
	v_lshl_or_b32 v194, v11, 16, v5
	v_lshl_or_b32 v193, v13, 16, v12
	v_lshl_or_b32 v17, v4, 16, v3
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[1:4], v2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v192, v45, 16, v25
	v_perm_b32 v5, v202, v209, 0xc0c0004
	v_perm_b32 v11, v206, v207, 0xc0c0004
	v_perm_b32 v12, v177, v176, 0xc0c0004
	v_perm_b32 v13, v172, v170, 0xc0c0004
	v_perm_b32 v25, v156, v154, 0xc0c0004
	v_perm_b32 v45, v145, v144, 0xc0c0004
	v_perm_b32 v93, v128, v129, 0xc0c0004
	v_lshl_or_b32 v191, v11, 16, v5
	v_lshl_or_b32 v130, v13, 16, v12
	v_perm_b32 v5, v182, v181, 0xc0c0004
	v_lshl_or_b32 v128, v92, 16, v45
	v_lshl_or_b32 v127, v95, 16, v93
	v_perm_b32 v11, v178, v201, 0xc0c0004
	v_perm_b32 v12, v167, v166, 0xc0c0004
	v_perm_b32 v13, v164, v162, 0xc0c0004
	v_perm_b32 v45, v135, v134, 0xc0c0004
	v_perm_b32 v92, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[248:255], v[1:4], v[17:20], v[248:255] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[17:20], v24
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_perm_b32 v24, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v129, v25, 16, v24
	v_perm_b32 v24, v151, v150, 0xc0c0004
	v_perm_b32 v25, v148, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[84:91], v[195:198], v[127:130], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v11, 16, v5
	v_lshl_or_b32 v129, v13, 16, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v128, v25, 16, v24
	v_lshl_or_b32 v127, v92, 16, v45
	v_perm_b32 v5, v186, v185, 0xc0c0004
	v_perm_b32 v11, v184, v183, 0xc0c0004
	v_perm_b32 v12, v173, v171, 0xc0c0004
	v_perm_b32 v13, v169, v168, 0xc0c0004
	v_perm_b32 v24, v157, v155, 0xc0c0004
	v_perm_b32 v25, v153, v152, 0xc0c0004
	v_perm_b32 v45, v141, v139, 0xc0c0004
	v_perm_b32 v92, v137, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[84:91], v[212:215], v[127:130], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v11, 16, v5
	v_lshl_or_b32 v129, v13, 16, v12
	v_lshl_or_b32 v128, v25, 16, v24
	v_lshl_or_b32 v127, v92, 16, v45
	v_perm_b32 v5, v190, v189, 0xc0c0004
	v_perm_b32 v11, v188, v187, 0xc0c0004
	v_perm_b32 v12, v180, v179, 0xc0c0004
	v_perm_b32 v13, v175, v174, 0xc0c0004
	v_perm_b32 v24, v165, v163, 0xc0c0004
	v_perm_b32 v25, v159, v158, 0xc0c0004
	v_perm_b32 v45, v149, v147, 0xc0c0004
	v_perm_b32 v92, v143, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[84:91], v[1:4], v[127:130], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v11, 16, v5
	v_lshl_or_b32 v3, v13, 16, v12
	v_lshl_or_b32 v2, v25, 16, v24
	v_lshl_or_b32 v1, v92, 16, v45
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[248:255], v[17:20], v[191:194], v[248:255] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[17:20], v[1:4], v[84:91] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v115, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v197, v249
	v_cvt_f32_i32_e32 v198, v250
	v_cvt_f32_i32_e32 v199, v251
	v_cvt_f32_i32_e32 v195, v252
	v_cvt_f32_i32_e32 v196, v253
	v_cvt_f32_i32_e32 v113, v254
	v_cvt_f32_i32_e32 v114, v255
	v_cvt_f32_i32_e32 v212, v84
	v_cvt_f32_i32_e32 v213, v85
	v_cvt_f32_i32_e32 v214, v86
	v_cvt_f32_i32_e32 v215, v87
	v_cvt_f32_i32_e32 v208, v88
	v_cvt_f32_i32_e32 v210, v89
	v_cvt_f32_i32_e32 v118, v90
	v_cvt_f32_i32_e32 v127, v91
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
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v20.h, v108.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 8
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s4, s34, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt lgkmcnt(5)
	v_add_lshl_u32 v1, v82, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v3, v81, s1, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v83, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v4, v80, s1, 1
	v_add_lshl_u32 v5, v79, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v11, v78, s1, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 426 39                        ; generate_amdgcn.py:426:39
	s_add_i32 s0, s1, s33
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v12, 0x80000000, v5 :: v_dual_cndmask_b32 v13, 0x80000000, v11
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v17, s0, v77, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x3
	buffer_load_u16 v5, v3, s[28:31], 0 offen
	buffer_load_u16 v11, v4, s[28:31], 0 offen
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	buffer_load_u16 v24, v13, s[28:31], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v4, s0, v76, 1
	v_add_lshl_u32 v13, s0, v75, 1
	v_add_lshl_u32 v18, s0, v72, 1
	v_cndmask_b32_e32 v3, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, s0, v73, 1
	v_add_lshl_u32 v19, s0, v74, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v72.l, 0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v72.h, v110.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x5
	buffer_load_u16 v25, v3, s[28:31], 0 offen
	buffer_load_u16 v45, v4, s[28:31], 0 offen
	buffer_load_u16 v74, v13, s[28:31], 0 offen
	buffer_load_u16 v75, v17, s[28:31], 0 offen
	buffer_load_u16 v76, v18, s[28:31], 0 offen
	buffer_load_u16 v77, v19, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v73.h, v109.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v17.h, v116.l
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v73.l, v72.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v17.l, v72.l
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v4, s27, v44
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v18.h, v112.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v44.h, v107.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v81.h, v105.l
	v_mov_b16_e32 v18.l, v72.l
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v3, 0x78, v3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v20.l, v72.l
	v_mov_b16_e32 v44.l, v72.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v81.l, v72.l
	v_add_lshl_u32 v60, v60, s1, 1
	v_add_lshl_u32 v62, v62, s1, 1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v92, v72, v17
	v_mul_f32_e32 v17, v73, v17
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s4, s4, s33
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v82.h, v100.l
	v_mov_b16_e32 v83.h, v99.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v78.h, v98.l
	v_mov_b16_e32 v79.h, v97.l
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v82.l, v72.l
	v_mov_b16_e32 v83.l, v72.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v96, v72, v18
	v_dual_mul_f32 v18, v73, v18 :: v_dual_mul_f32 v97, v72, v44
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v98, v72, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v99, v72, v81
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v105, v73, v44
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v44, s4, v3, v4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v3, 0x80000000, v60 :: v_dual_cndmask_b32 v60, 0x80000000, v62
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v62, off, off offset:72 ; 4-byte Folded Reload
	v_fma_f32 v6, v17, v6, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v17, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v13.h, v117.l
	v_mov_b16_e32 v13.l, v72.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v19.h, v111.l
	v_mov_b16_e32 v80.h, v106.l
	v_mov_b16_e32 v19.l, v72.l
	v_mov_b16_e32 v80.l, v72.l
	v_add_lshl_u32 v61, v61, s1, 1
	v_add_lshl_u32 v63, v63, s1, 1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v93, v72, v13 :: v_dual_mul_f32 v20, v73, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v13, v73, v13 :: v_dual_mul_f32 v100, v72, v80
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v95, v72, v19 :: v_dual_mul_f32 v80, v73, v80
	v_dual_mul_f32 v19, v73, v19 :: v_dual_cndmask_b32 v4, 0x80000000, v61
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v106, v72, v83
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v61, 0x80000000, v63, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v20, v20, v28, v55
	v_fma_f32 v28, v105, v29, v56
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:48
	scratch_load_b32 v63, off, off offset:56
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v107, v72, v82
	v_mul_f32_e32 v82, v73, v82
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v46, s0, v46, 1
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v83, v73, v83
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v78.l, v72.l
	v_mov_b16_e32 v79.l, v72.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v81, v73, v81
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v31, v106, v31, v52
	v_fma_f32 v26, v82, v26, v49
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v27, v83, v27, v50
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v108, v72, v79
	v_mul_f32_e32 v109, v72, v78
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_add_lshl_u32 v47, s0, v47, 1
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v10, v92, v10, v71
	v_fma_f32 v7, v98, v7, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v52, v31, s2
	v_cndmask_b32_e64 v27, v50, v27, s2
	v_cndmask_b32_e64 v26, v49, v26, s2
	v_cndmask_b32_e64 v10, v71, v10, s2
	v_cndmask_b32_e64 v7, v59, v7, s2
	v_cndmask_b32_e64 v28, v56, v28, s2
	v_cndmask_b32_e64 v20, v55, v20, s2
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v8, v97, v8, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v99, v21, v58
	v_fma_f32 v23, v95, v23, v69
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v9, v93, v9, v70
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v85.h, v72.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v64, v8, s2
	v_cndmask_b32_e64 v21, v58, v21, s2
	v_cndmask_b32_e64 v23, v69, v23, s2
	v_cndmask_b32_e64 v9, v70, v9, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v89.h, v72.l
	v_mov_b16_e32 v91.h, v72.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v67, v6, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v96, v22, v68
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v87.h, v72.l
	v_mov_b16_e32 v88.h, v72.l
	v_mov_b16_e32 v86.h, v72.l
	v_mov_b16_e32 v84.h, v72.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v68, v22, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v90.h, v72.l
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	s_lshl_b32 s12, s27, 4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_and_b32_e32 v0, 16, v0
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v12, 16, v12
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v30, v107, v30, v51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v51, v30, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v50, 16, v76
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v2, 16, v2
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_mul_f32 v56, v2, v12
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v52, v2, v11
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v49, 16, v75
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v55, v2, v24
	v_mul_f32_e32 v24, v1, v24
	v_mul_f32_e32 v12, v1, v12
	v_mul_f32_e32 v11, v1, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v52, v52, v122, v23
	v_fma_f32 v55, v55, v124, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v13, v13, v62, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v62, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fma_f32 v17, v18, v17, v65
	scratch_load_b32 v18, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v52, s3
	v_cndmask_b32_e64 v48, v48, v13, s2
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_clause 0x1
	buffer_load_u16 v13, v46, s[28:31], 0 offen
	buffer_load_u16 v46, v47, s[28:31], 0 offen
	v_lshlrev_b32_e32 v47, 16, v74
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v65, v17, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v29, v80, v29, v53
	scratch_load_b32 v80, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fma_f32 v63, v109, v63, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v53, v29, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v119, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v29, v12, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v62, v81, v62, v54
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x3
	buffer_load_u16 v81, v3, s[28:31], 0 offen
	buffer_load_u16 v82, v4, s[28:31], 0 offen
	buffer_load_u16 v4, v60, s[28:31], 0 offen
	buffer_load_u16 v3, v61, s[28:31], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(7)
	v_fma_f32 v18, v19, v18, v66
	scratch_load_b32 v19, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v60, v2, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v54, v54, v62, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v62, v2, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v66, v18, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v50, v1, v50 :: v_dual_mul_f32 v59, v2, v49
	v_mul_f32_e32 v49, v1, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v24, v120, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v11, v11, v126, v18
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v62, v62, v208, v30
	v_fma_f32 v50, v50, v195, v26
	v_fma_f32 v49, v49, v199, v28
	v_fma_f32 v59, v59, v215, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v18, v11, s3
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v58, v2, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v50, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v60, v60, v214, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v8, v59, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v53, v2, v5
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v58, v58, v212, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v80, v108, v80, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v60, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v9, v58, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v29, v29
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v4, 16, v4
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v19, v100, v19, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v57, v19, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v57, v2, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v56, v56, v123, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v57, v57, v213, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v19, v56, s3
	v_cndmask_b32_e64 v19, v54, v24, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v10, v10, v57, s3
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v51, 16, v77
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v28, v49, s3
	v_cndmask_b32_e64 v28, v30, v62, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s0
	v_dual_mul_f32 v30, 0xbfb8aa3b, v10 :: v_dual_mul_f32 v61, v2, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v51, v1, v51 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v29, v29, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v61, v61, v210, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v51, v51, v196, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v50
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v51, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s7
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_dual_mul_f32 v25, v1, v25 :: v_dual_fmac_f32 v30, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v125, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v24
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v25, v25, v115, v48
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v30, v30
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v17, v5, s3
	v_cndmask_b32_e64 v17, v21, v55, s3
	v_cndmask_b32_e64 v21, v48, v25, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v31, v61, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v50, v50
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s7
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v48
	v_mul_f32_e32 v52, 0xbfb8aa3b, v25
	v_ldexp_f32 v30, v30, v55
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v53, v53, v121, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s5
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v45, v1, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v52
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s5
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v8
	v_ldexp_f32 v50, v50, v61
	v_cndmask_b32_e64 v52, 0, 0x42800000, s9
	.loc	1 428 33 is_stmt 1              ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v47, v1, v47
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s9
	v_exp_f32_e32 v48, v48
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v55, null, v30, v30, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v25
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v56, vcc_lo, v10, v30, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v75, v55
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	v_fma_f32 v47, v47, v198, v20
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v52, v52
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v45, v45, v197, v6
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v48, v48, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v53, s3
	v_cndmask_b32_e64 v20, v20, v47, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v6, v45, s3
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v99, -v55, v75, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s11
	v_ldexp_f32 v52, v52, v64
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v69, null, v50, v50, v24
	v_div_scale_f32 v64, null, v48, v48, v8
	v_fmac_f32_e32 v75, v99, v75
	v_div_scale_f32 v66, s5, v8, v48, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v64
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v99, v56, v75
	v_rcp_f32_e32 v95, v69
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v70, s7, v24, v50, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v111, -v55, v99, v56
	v_div_scale_f32 v74, null, v52, v52, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v107, -v64, v92, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v99, v111, v75
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v109, -v69, v95, 1.0
	v_rcp_f32_e32 v98, v74
	v_fmac_f32_e32 v92, v107, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v55, -v55, v99, v56
	v_fmac_f32_e32 v95, v109, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v107, v66, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, s4
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s4
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v55, v75, v99
	v_mul_f32_e32 v109, v70, v95
	v_fma_f32 v117, -v64, v107, v66
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v55, v30, v10
	v_fma_f32 v120, -v69, v109, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v107, v117, v92
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v10, v23, v10 :: v_dual_fmac_f32 v109, v120, v95
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v86.l, v10.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v31, v31, v58
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v58, s0, v9, v29, v9
	s_mov_b32 vcc_lo, s0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v61, null, v31, v31, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v61
	v_fma_f32 v106, -v61, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v106, v83
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v49, 0, 0x42800000, s8
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s8
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v49, v49
	v_ldexp_f32 v49, v49, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v62, s4, v21, v31, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_mul_f32 v106, v62, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v71, null, v49, v49, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v116, -v61, v106, v62
	v_div_scale_f32 v97, s8, v20, v49, v20
	v_rcp_f32_e32 v96, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v106, v116, v83
	v_fma_f32 v110, -v71, v96, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v45, 0xbfb8aa3b, v6 :: v_dual_fmac_f32 v96, v110, v96
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v53, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v110, v97, v96
	v_cndmask_b32_e64 v45, 0, 0x42800000, s1
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v121, -v71, v110, v97
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v6 :: v_dual_fmac_f32 v110, v121, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v57, null, v29, v29, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v57
	v_fma_f32 v100, -v57, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v76, v100, v76 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v7
	v_mul_f32_e32 v100, v58, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v112, -v57, v100, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s6
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v100, v112, v76 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v56, -v57, v100, v58
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v47, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v58, -v61, v106, v62
	v_fma_f32 v61, -v69, v109, v70
	v_fma_f32 v62, -v71, v110, v97
	v_div_fmas_f32 v56, v56, v76, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v9, v56, v29, v9
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v47, v47, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v22, v9
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v87.l, v9.h
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v67, null, v47, v47, v7
	v_div_scale_f32 v68, s6, v7, v47, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v59, null, v45, v45, v6
	v_rcp_f32_e32 v93, v67
	v_div_scale_f32 v60, s1, v6, v45, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v77, v59
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v9, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v108, -v67, v93, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v105, -v59, v77, 1.0
	v_fmac_f32_e32 v93, v108, v93
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v77, v105, v77
	v_mul_f32_e32 v108, v68, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v105, v60, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v119, -v67, v108, v68
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s10
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v115, -v59, v105, v60
	v_fmac_f32_e32 v108, v119, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v105, v115, v77
	v_fma_f32 v57, -v59, v105, v60
	v_fma_f32 v59, -v64, v107, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v67, v108, v68
	v_div_fmas_f32 v57, v57, v77, v105
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v30, v58, v83, v106
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v29, v59, v92, v107
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v21, v30, v31, v21
	v_div_fmas_f32 v23, v60, v93, v108
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v8, v29, v48, v8
	v_div_fmas_f32 v22, v61, v95, v109
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v5, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v7, v23, v47, v7
	s_mov_b32 vcc_lo, s8
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v17, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v5, v22, v50, v24
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v17, 1, v86
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v18, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v18, 1, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v57, v45, v6
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v28
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v19, v5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v91.l, v7.h
	v_mov_b16_e32 v85.l, v21.h
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v6, v11, v6
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v11, v62, v96, v110
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v10, v10, v17, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v51, v51
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v84.l, v6.h
	v_cmp_o_f32_e64 s1, v6, v6
	v_cmp_o_f32_e64 s4, v21, v21
	v_mov_b16_e32 v90.l, v8.h
	v_mov_b16_e32 v88.l, v19.h
	v_and_b32_e32 v5, 1, v84
	v_cmp_o_f32_e64 s6, v7, v7
	v_add3_u32 v9, v9, v18, 0x7fff
	v_and_b32_e32 v17, 1, v90
	v_and_b32_e32 v18, 1, v88
	v_add3_u32 v6, v6, v5, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v10.h, vcc_lo
	v_and_b32_e32 v10, 1, v91
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v11, v11, v49, v20
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s5, v8, v8
	v_cndmask_b16 v5.l, 0x7fff, v9.h, s0
	v_add3_u32 v7, v7, v10, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v11, v12, v11 :: v_dual_and_b32 v12, 1, v85
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_add3_u32 v8, v8, v17, 0x7fff
	v_add3_u32 v9, v19, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v89.l, v11.h
	v_add3_u32 v12, v21, v12, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v17, v54
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v18, -v74, v98, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v26
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v89
	v_cndmask_b16 v6.l, 0x7fff, v12.h, s4
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v12, v51, v65
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s8, v11, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v98, v18, v98
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v11, v11, v20, 0x7fff
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s11
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v10, v10
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s7, v19, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v42, v63, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v17, v17, v20
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v18, null, v12, v12, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, vcc_lo, v25, v52, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v22, v18
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v10, v10, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v20, v21, v98
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.l, 0x7fff, v11.h, s8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v43, v80, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v17, v17, v27
	v_fma_f32 v30, -v74, v20, v21
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v18, v22, 1.0
	v_rcp_f32_e32 v42, v24
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v20, v30, v98
	v_div_scale_f32 v30, s0, v28, v12, v28
	v_fmac_f32_e32 v22, v31, v22
	v_div_scale_f32 v43, null, v10, v10, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v74, v20, v21
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v51, v73, v79 :: v_dual_mul_f32 v48, v30, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v49, -v24, v42, 1.0
	v_rcp_f32_e32 v31, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v20, v21, v98, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v53, v73, v78
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v21, -v18, v48, v30
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s1, v27, v17, v27
	v_div_fixup_f32 v20, v20, v52, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v48, v21, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v21, off, off offset:20
	scratch_load_b32 v25, off, off offset:80
	scratch_load_b32 v55, off, off offset:16
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v23, 16, v81
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v50, -v43, v31, 1.0
	v_fma_f32 v18, -v18, v48, v30
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v29, 16, v82
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v47, v2, v23
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v31, v50, v31
	v_div_scale_f32 v50, s4, v26, v10, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v1, v23
	v_mul_f32_e32 v45, v2, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v29, v1, v29 :: v_dual_mul_f32 v54, v50, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v18, v18, v22, v48
	s_mov_b32 vcc_lo, s1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v8.l, 0x7fff, v7.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s5
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v12, v18, v12, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.h, v72.l
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v28, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v21, v51, v21, v41
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v51, v49, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v53, v53, v55, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v41, v21, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v24, v51, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v53, s2
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v41, -v43, v54, v50
	v_fmac_f32_e32 v51, v30, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v23, v103, v40
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v54, v41, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v30, v45, v102, v11
	scratch_load_b32 v45, off, off          ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v23, -v24, v51, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v29, v104, v21
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v29, -v43, v54, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v40, v22, s3
	v_cndmask_b32_e64 v11, v11, v30, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v23, v23, v42, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v21, v24, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	s_mov_b32 vcc_lo, s4
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v24.l, v72.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v29, v29, v31, v54
	v_div_fixup_f32 v17, v23, v17, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v47, v101, v19
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v24.h, v25.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v30, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v29, v10, v26
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v21, v17
	.loc	1 422 22 is_stmt 1              ; generate_amdgcn.py:422:22
	scratch_load_b32 v26, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v19, v23, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.h, v72.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v22, v10
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v18.l, v7.h
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:84
	scratch_load_b32 v29, off, off offset:12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_mov_b16_e32 v19.l, v10.h
	v_and_b32_e32 v18, 1, v18
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_mov_b16_e32 v21.l, v72.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v17, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.h, v72.l
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v18, v7, v18, 0x7fff
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v11, v20
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v11, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v23.l, v12.h
	v_add3_u32 v19, v10, v19, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_mov_b16_e32 v20.l, v7.h
	v_mov_b16_e32 v20.h, v72.l
	v_and_b32_e32 v10, 1, v23
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v23, v72, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v19, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v24, v73, v24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v25.l, v72.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v10, v12, v10, 0x7fff
	v_add3_u32 v20, v7, v20, 0x7fff
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(7)
	v_fma_f32 v24, v24, v28, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v36, v24, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v25.h, v26.l
	scratch_load_b32 v26, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v21.h, v22.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v17, v72, v21
	v_mul_f32_e32 v21, v73, v21
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v11, v17, v11, v39
	.loc	1 426 31                        ; generate_amdgcn.py:426:31
	v_lshlrev_b32_e32 v17, 16, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v39, v11, s2
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v2, v17
	v_mul_f32_e32 v17, v1, v17
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v19, v23, v19, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v22, v22, v127, v11
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v23.l, v72.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v38, v19, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v11, v11, v22, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 428 33                        ; generate_amdgcn.py:428:33
	v_mul_f32_e32 v22, v2, v13
	v_mul_f32_e32 v13, v1, v13
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v22, v22, v118, v7
	v_fma_f32 v13, v13, v113, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v7, v7, v22, s3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	scratch_load_b32 v22, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v24, v13, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v19, v19
	v_mul_f32_e32 v27, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v23.h, v26.l
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v72, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v19, v19, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v23, v73, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v27, v30, v34
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v7
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v45, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v34, v27, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v24, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v32, v23, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v24, v24, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 431 17 is_stmt 1              ; generate_amdgcn.py:431:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v21, v21, v22, v37
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v22, v72, v25
	v_mul_f32_e32 v25, v73, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v37, v21, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v22, v22, v29, v35
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v13
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v37, v2, v4
	v_mul_f32_e32 v2, v2, v3
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_fma_f32 v17, v17, v114, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v35, v22, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v1, v3
	v_mul_f32_e32 v1, v1, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v21, v17, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v21, null, v19, v19, v11
	.loc	1 441 40 is_stmt 0              ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v37, v94, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v17
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v26, v21
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v2, v14, v22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v1, v15, v23
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v22, v2, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v23, v1, s3
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v21, v26, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v26, v30, v26
	v_div_scale_f32 v30, null, v24, v24, v7
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v35, v30
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v28, v28, v31
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v34, vcc_lo, v11, v19, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v30, v35, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v29, v29, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v31, v34, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v39, v35
	v_div_scale_f32 v36, null, v28, v28, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v21, v31, v34
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v40, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v38, v26
	v_div_scale_f32 v38, s0, v7, v24, v7
	v_div_scale_f32 v41, null, v29, v29, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v21, v31, v34
	v_mul_f32_e32 v34, v38, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v39, v41
	v_fma_f32 v42, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v26, v31
	v_fma_f32 v26, -v30, v34, v38
	s_mov_b32 vcc_lo, s0
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, s1, v17, v28, v17
	v_fmac_f32_e32 v34, v26, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	scratch_load_b32 v26, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v31, -v41, v39, 1.0
	v_div_fixup_f32 v11, v21, v19, v11
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v0, 0x5410
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v30, -v30, v34, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v31, v39
	v_div_scale_f32 v31, s4, v13, v29, v13
	v_div_fmas_f32 v4, v30, v35, v34
	s_mov_b32 vcc_lo, s1
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v2, v2, v11
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v43, v31, v39
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v11.h, v72.l
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v4, v4, v24, v7
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v7.h, v72.l
	v_mov_b16_e32 v11.l, v2.h
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v38, -v41, v43, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v11, 1, v11
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v43, v38, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_lshl_or_b32 v0, v0, 8, v0
	v_and_b32_e32 v0, 0x540054, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v25, v26, v33
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_mul_f32_e32 v26, v42, v40
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v33, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v33, -v36, v26, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v3, v3, v16, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v26, v33, v40
	v_fma_f32 v16, -v41, v43, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v25, v3, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v15, -v36, v26, v42
	v_div_fmas_f32 v15, v15, v40, v26
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v16, v16, v39, v43
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v14, v15, v28, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v12, v27, v37, s3
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v13, v16, v29, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v20.l, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v3, v3, v14 :: v_dual_mul_f32 v4, v12, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v12.h, v72.l
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v1, v1, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.h, v72.l
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v7.l, v3.h
	v_mov_b16_e32 v12.l, v4.h
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_mov_b16_e32 v13.l, v1.h
	v_cmp_o_f32_e64 s2, v4, v4
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v10, 1, v13
	v_add3_u32 v7, v3, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v1, v10, 0x7fff
	v_and_b32_e32 v10, 1, v12
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v1, v4, v10, 0x7fff
	v_add3_u32 v10, v2, v11, 0x7fff
	v_mov_b32_e32 v11, 0x7632
	v_cndmask_b16 v7.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b32_e64 v2, v18, v6, s0
	v_cndmask_b16 v3.l, 0x7fff, v1.h, s2
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s1
	v_cndmask_b32_e64 v4, 0x3276, v11, s0
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v10, v3, v8, s0
	v_lshl_or_b32 v1, v4, 8, v4
	v_cndmask_b32_e64 v4, v6, v18, s0
	v_cndmask_b32_e64 v6, v7, v9, s0
	v_cndmask_b32_e64 v7, v9, v7, s0
	v_cndmask_b32_e64 v9, v20, v5, s0
	v_and_b32_e32 v1, 0x760076, v1
	v_cndmask_b32_e64 v5, v5, v20, s0
	v_cndmask_b32_e64 v3, v8, v3, s0
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v8, 0x5040504, v0
	v_lshl_or_b32 v1, v1, 4, v1
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v2, v8
	v_and_b32_e32 v11, 0x7060706, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v1, v4, v2, v11
	v_perm_b32 v2, v7, v6, v8
	v_perm_b32 v3, v7, v6, v11
	v_perm_b32 v4, v5, v9, v8
	v_perm_b32 v6, v12, v10, v8
	v_lshlrev_b32_e32 v8, 1, v44
	v_perm_b32 v5, v5, v9, v11
	v_perm_b32 v7, v12, v10, v11
	v_add_lshl_u32 v9, v44, s12, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v9, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 92
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 92
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24880
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 92
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 92
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 22
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
