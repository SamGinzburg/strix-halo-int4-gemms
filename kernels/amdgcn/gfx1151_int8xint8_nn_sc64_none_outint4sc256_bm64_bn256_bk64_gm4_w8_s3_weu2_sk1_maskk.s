	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v67, 15, v0
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshrrev_b32_e32 v66, 4, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v245, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v3, 4, v67
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v247, 3, v0
	v_or_b32_e32 v16, 16, v66
	v_or_b32_e32 v17, 32, v66
	v_or_b32_e32 v18, 48, v66
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
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
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[13:14], null, s35, v66, v[3:4]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v19, s35, 4, v13
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v20, s35, 5, v13
	v_mad_u64_u32 v[14:15], null, s35, 48, v[13:14]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s5, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s4, s5
	s_abs_i32 s16, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s31, v2
	v_dual_mov_b32 v2, v3 :: v_dual_lshlrev_b32 v69, 4, v247
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	scratch_store_b64 off, v[2:3], off offset:16 ; 8-byte Folded Spill
	s_mov_b32 s11, 0x31027000
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s17, s17
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s39, s11
	s_mov_b32 s38, s10
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s18, s18, s17
	s_mov_b64 s[28:29], s[14:15]
	s_mul_hi_u32 s2, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s2
	s_mul_hi_u32 s2, s4, s17
	s_xor_b32 s17, s5, s7
	s_mul_i32 s18, s2, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s4, s4, s18
	s_add_i32 s18, s2, 1
	s_sub_i32 s19, s4, s16
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s18, s2
	s_cselect_b32 s4, s19, s4
	s_add_i32 s18, s2, 1
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s18, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s18, s31, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s2, s2, s17
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s3, 26
.Ltmp17:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s3, s33, s7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s30, v66
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s3, s5, s3
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s30, v16
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s3, s3, s6
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s50, s33, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s18, s2
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s3, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s18, 63
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s30, v69
	v_or_b32_e32 v5, s30, v17
	v_or_b32_e32 v6, s30, v18
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s31, v3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s7, s34, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s50, s16
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v4
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v25, v1, v69, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s16, v13
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s5, s31, v5
	v_cmp_gt_i32_e64 s6, s31, v6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s16, v19
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s16, v20
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 s2, s4, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s6, s6, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s5, s3
	s_cmpk_gt_i32 s18, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s48, s30, 64
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v5, s30, v25
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v6, s48, v69
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s16, v14
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s48, v66
	v_or_b32_e32 v12, s48, v16
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s4, s35, 6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v15, s48, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v27, s48, v25
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s16, s4
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v11
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v26, s48, v18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[7:10], v1, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v2, s[36:39], 0 offen
	buffer_load_b128 v[28:31], v3, s[36:39], 0 offen
	buffer_load_b128 v[32:35], v4, s[36:39], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s16, v13
	.loc	1 400 23 is_stmt 1              ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s5, s31, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s16, v19
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s6, s31, v15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[36:39], v5, s[8:11], 0 offen
	v_cndmask_b32_e32 v5, 0x80000000, v27, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s16, v20
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s7, s31, v26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s16, v14
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v6, 48, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s7, s2
	v_lshlrev_b32_e32 v26, 6, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[40:43], v5, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[44:47], v1, s[36:39], 0 offen
	buffer_load_b128 v[48:51], v2, s[36:39], 0 offen
	buffer_load_b128 v[52:55], v3, s[36:39], 0 offen
	buffer_load_b128 v[56:59], v4, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v3, 1, v0
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 16, v67
	v_or_b32_e32 v5, 32, v67
	s_mov_b32 s16, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v1, 48, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s18, 0xbf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v27, v245, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, 0, v245
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v11, 0, v27
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v1, v[21:24] offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b128 v1, v[28:31] offset:8192
	s_waitcnt vmcnt(6)
	ds_store_b128 v1, v[32:35] offset:12288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v11, v[36:39] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b128 v1, v[7:10]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v11, v[40:43] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[44:47] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[48:51] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[52:55] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[56:59] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v1, 6, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v15, 0x70, v2
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr15
.LBB0_3:                                ; %Flow94
	s_load_b128 s[24:27], s[0:1], 0x20
	v_or_b32_e32 v7, s34, v67
	v_or_b32_e32 v4, s34, v4
	v_or_b32_e32 v5, s34, v5
	v_or_b32_e32 v6, s34, v6
	v_and_b32_e32 v246, 0xf0, v0
	s_ashr_i32 s49, s17, 6
	v_or_b32_e32 v107, s50, v0
	v_mul_lo_u32 v108, v7, s49
	v_mul_lo_u32 v104, v4, s49
	v_mul_lo_u32 v105, v5, s49
	v_mul_lo_u32 v106, v6, s49
	v_lshlrev_b32_e32 v22, 2, v246
	v_and_b32_e32 v21, 28, v3
	v_lshlrev_b32_e32 v24, 5, v0
	v_lshlrev_b32_e32 v23, 1, v246
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v1, 3, v0
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v28, v1, 48, v26
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 32, v24
	v_and_b32_e32 v15, 0x70, v2
	v_xor_b32_e32 v29, 16, v28
	v_xor_b32_e32 v30, 32, v28
	v_xor_b32_e32 v31, 48, v28
	v_add3_u32 v9, 0, v22, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_mov_b32_e32 v8, s23
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v7, s22 :: v_dual_add_nc_u32 v32, v9, v21
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v33, 0, v23
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v141, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s15, s49, 3
	s_add_i32 s14, s48, 64
	s_mov_b32 s51, 1
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s6, 0, 0x9000
	s_add_i32 s7, 0, 0x4000
	s_add_i32 s15, s15, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s4, s17, 6
	s_mov_b32 s5, s30
	s_mov_b32 s30, s48
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s48, s14, s4
	s_mov_b32 s1, s16
	v_or_b32_e32 v9, s48, v69
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s48, v25
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add3_u32 v68, s1, v15, v67
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v70, s0, v28
	v_add_nc_u32_e32 v125, s0, v29
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s5, 31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s48, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s16, s16, 26
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s18, s18, s50
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s5, s5, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s16, s5, 6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v34, v68 offset:3328
	ds_load_u8 v35, v68 offset:3072
	ds_load_u8 v36, v68 offset:3840
	ds_load_u8 v37, v68 offset:3584
	ds_load_u8 v38, v68 offset:2304
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[50:53], v70
	ds_load_b128 v[54:57], v125
	ds_load_b128 v[150:153], v70 offset:1024
	ds_load_b128 v[154:157], v125 offset:1024
	ds_load_b128 v[166:169], v70 offset:2048
	ds_load_b128 v[170:173], v125 offset:2048
	ds_load_b128 v[190:193], v70 offset:3072
	ds_load_b128 v[194:197], v125 offset:3072
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s19, s16, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s16, s49
	s_cselect_b32 s5, -1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v68 offset:2048
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v68 offset:2816
	v_lshl_or_b32 v61, v36, 16, v34
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v35, v38, 0xc0c0004
	ds_load_u8 v38, v68 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v37, 16, v35
	ds_load_u8 v34, v68 offset:1280
	ds_load_u8 v35, v68 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v68 offset:1792
	ds_load_u8 v36, v68 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v35, 16, v34
	ds_load_u8 v34, v68 offset:256
	ds_load_u8 v35, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v68 offset:768
	ds_load_u8 v36, v68 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v35, 16, v34
	ds_load_u8 v34, v68 offset:7424
	ds_load_u8 v35, v68 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v68 offset:7936
	ds_load_u8 v36, v68 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v68 offset:6400
	ds_load_u8 v37, v68 offset:6144
	v_lshl_or_b32 v65, v35, 16, v34
	ds_load_u8 v34, v68 offset:5376
	ds_load_u8 v35, v68 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v68 offset:6912
	ds_load_u8 v38, v68 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v37, 16, v36
	ds_load_u8 v35, v68 offset:5888
	ds_load_u8 v36, v68 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_lshl_or_b32 v63, v35, 16, v34
	ds_load_u8 v34, v68 offset:4352
	ds_load_u8 v35, v68 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v68 offset:4864
	ds_load_u8 v36, v68 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v35, 16, v34
	ds_load_u8 v34, v68 offset:3456
	ds_load_u8 v35, v68 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v68 offset:3968
	ds_load_u8 v36, v68 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v68 offset:2432
	ds_load_u8 v37, v68 offset:2176
	v_lshl_or_b32 v185, v35, 16, v34
	ds_load_u8 v34, v68 offset:1408
	ds_load_u8 v35, v68 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v68 offset:2944
	ds_load_u8 v38, v68 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v184, v37, 16, v36
	ds_load_u8 v35, v68 offset:1920
	ds_load_u8 v36, v68 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_lshl_or_b32 v183, v35, 16, v34
	ds_load_u8 v34, v68 offset:384
	ds_load_u8 v35, v68 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v68 offset:896
	ds_load_u8 v36, v68 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v35, 16, v34
	ds_load_u8 v34, v68 offset:7552
	ds_load_u8 v35, v68 offset:7296
	v_wmma_i32_16x16x16_iu8 v[42:49], v[182:185], v[50:53], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[182:185], v[150:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[182:185], v[166:169], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[182:185], v[190:193], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v68 offset:8064
	ds_load_u8 v36, v68 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v68 offset:6528
	ds_load_u8 v37, v68 offset:6272
	v_lshl_or_b32 v189, v35, 16, v34
	ds_load_u8 v34, v68 offset:5504
	ds_load_u8 v35, v68 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v68 offset:7040
	ds_load_u8 v38, v68 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v188, v37, 16, v36
	ds_load_u8 v35, v68 offset:6016
	ds_load_u8 v36, v68 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_lshl_or_b32 v187, v35, 16, v34
	ds_load_u8 v34, v68 offset:4480
	ds_load_u8 v35, v68 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v68 offset:4992
	ds_load_u8 v36, v68 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v186, v35, 16, v34
	v_wmma_i32_16x16x16_iu8 v[34:41], v[58:61], v[50:53], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[186:189], v[54:57], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[62:65], v[54:57], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[150:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[186:189], v[154:157], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[186:189], v[170:173], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[186:189], v[194:197], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[62:65], v[154:157], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[58:61], v[166:169], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[62:65], v[170:173], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[58:61], v[190:193], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v58, v68 offset:11520
	ds_load_u8 v59, v68 offset:11264
	v_wmma_i32_16x16x16_iu8 v[166:173], v[62:65], v[194:197], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v68 offset:12032
	ds_load_u8 v60, v68 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v68 offset:10496
	ds_load_u8 v61, v68 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v68 offset:11008
	ds_load_u8 v62, v68 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v62, v61, 0xc0c0004
	v_lshl_or_b32 v61, v59, 16, v58
	ds_load_u8 v58, v68 offset:9472
	ds_load_u8 v59, v68 offset:9216
	v_lshl_or_b32 v60, v62, 16, v60
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v68 offset:9984
	ds_load_u8 v62, v68 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v62, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v59, 16, v58
	ds_load_u8 v58, v68 offset:8448
	ds_load_u8 v62, v68 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v62, v58, 0xc0c0004
	ds_load_u8 v62, v68 offset:8960
	ds_load_u8 v63, v68 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v62, 16, v58
	ds_load_u8 v62, v68 offset:11648
	ds_load_u8 v63, v68 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v68 offset:12160
	ds_load_u8 v64, v68 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v68 offset:10624
	ds_load_u8 v65, v68 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v68 offset:11136
	ds_load_u8 v70, v68 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v65, 0xc0c0004
	v_lshl_or_b32 v65, v63, 16, v62
	ds_load_u8 v62, v68 offset:9600
	ds_load_u8 v63, v68 offset:9344
	v_lshl_or_b32 v64, v70, 16, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v68 offset:10112
	ds_load_u8 v70, v68 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v70, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v63, 16, v62
	ds_load_u8 v62, v68 offset:8576
	ds_load_u8 v70, v68 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v70, v62, 0xc0c0004
	ds_load_u8 v70, v68 offset:9088
	ds_load_u8 v125, v68 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v125, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v70, 16, v62
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v70, s0, v30
	ds_load_b128 v[182:185], v70
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[58:61], v[182:185], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[62:65], v[182:185], v[42:49] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v70 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[182:185], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[62:65], v[182:185], v[142:149] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v70 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[58:61], v[182:185], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[62:65], v[182:185], v[158:165] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v70 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[58:61], v[182:185], v[166:173] neg_lo:[1,1,0]
	ds_load_u8 v58, v68 offset:15616
	ds_load_u8 v59, v68 offset:15360
	v_wmma_i32_16x16x16_iu8 v[174:181], v[62:65], v[182:185], v[174:181] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v68 offset:16128
	ds_load_u8 v60, v68 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v68 offset:14592
	ds_load_u8 v61, v68 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v68 offset:15104
	ds_load_u8 v62, v68 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v62, v61, 0xc0c0004
	v_lshl_or_b32 v61, v59, 16, v58
	ds_load_u8 v58, v68 offset:13568
	ds_load_u8 v59, v68 offset:13312
	v_lshl_or_b32 v60, v62, 16, v60
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v68 offset:14080
	ds_load_u8 v62, v68 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v62, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v59, 16, v58
	ds_load_u8 v58, v68 offset:12544
	ds_load_u8 v62, v68 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v62, v58, 0xc0c0004
	ds_load_u8 v62, v68 offset:13056
	ds_load_u8 v63, v68 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v62, 16, v58
	ds_load_u8 v62, v68 offset:15744
	ds_load_u8 v63, v68 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v68 offset:16256
	ds_load_u8 v64, v68 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v68 offset:14720
	ds_load_u8 v65, v68 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v68 offset:15232
	ds_load_u8 v70, v68 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v65, 0xc0c0004
	v_lshl_or_b32 v65, v63, 16, v62
	ds_load_u8 v62, v68 offset:13696
	ds_load_u8 v63, v68 offset:13440
	v_lshl_or_b32 v64, v70, 16, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v68 offset:14208
	ds_load_u8 v70, v68 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v70, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v63, 16, v62
	ds_load_u8 v62, v68 offset:12672
	ds_load_u8 v70, v68 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v70, v62, 0xc0c0004
	ds_load_u8 v70, v68 offset:13184
	ds_load_u8 v68, v68 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v70, 0xc0c0004
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v70, s18, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v62, v68, 16, v62
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v68, s0, v31
	ds_load_b128 v[182:185], v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[58:61], v[182:185], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[42:49], v[62:65], v[182:185], v[42:49] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v68 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[182:185], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[62:65], v[182:185], v[142:149] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v68 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v125, v149
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[58:61], v[182:185], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[62:65], v[182:185], v[158:165] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v68 offset:3072
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v68, s18, v19
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v149, v157
	v_cvt_f32_i32_e32 v157, v165
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[174:181], v[62:65], v[182:185], v[174:181] neg_lo:[1,1,0]
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v65, s48, v66
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[166:173], v[58:61], v[182:185], v[166:173] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v58, v142
	v_cvt_f32_i32_e32 v142, v150
	v_cvt_f32_i32_e32 v150, v158
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v65
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v65, s48, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v158, v166
	v_cvt_f32_i32_e32 v166, v174
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v174, s18, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v59, v143
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s31, v65
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v65, s48, v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v143, v151
	v_cvt_f32_i32_e32 v151, v159
	v_cvt_f32_i32_e32 v159, v167
	v_cvt_f32_i32_e32 v167, v175
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s1, s31, v65
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v65, s48, v18
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v175, v104, s16, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v144
	v_cvt_f32_i32_e32 v144, v152
	v_cvt_f32_i32_e32 v152, v160
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v65
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v65, v107, s19, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v160, v168
	v_cvt_f32_i32_e32 v168, v176
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v176, v105, s16, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v186, 0x80000000, v174, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v65, 0x80000000, v65, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v174, v108, s16, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v61, v145
	v_cvt_f32_i32_e32 v145, v153
	v_cvt_f32_i32_e32 v153, v161
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v65, v65, s[44:47], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v161, v169
	v_cvt_f32_i32_e32 v169, v177
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v177, v106, s16, 1
	v_cndmask_b32_e64 v174, 0x80000000, v174, s5
	v_cndmask_b32_e64 v175, 0x80000000, v175, s5
	v_cndmask_b32_e64 v176, 0x80000000, v176, s5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v177, 0x80000000, v177, s5
	s_clause 0x3
	buffer_load_u16 v206, v174, s[40:43], 0 offen
	buffer_load_u16 v207, v175, s[40:43], 0 offen
	buffer_load_u16 v208, v176, s[40:43], 0 offen
	buffer_load_u16 v209, v177, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v70, 0x80000000, v70, s1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v62, v146
	v_cvt_f32_i32_e32 v63, v147
	v_cvt_f32_i32_e32 v64, v148
	v_cvt_f32_i32_e32 v146, v154
	v_cvt_f32_i32_e32 v147, v155
	v_cvt_f32_i32_e32 v148, v156
	v_cvt_f32_i32_e32 v154, v162
	v_cvt_f32_i32_e32 v155, v163
	v_cvt_f32_i32_e32 v156, v164
	v_cvt_f32_i32_e32 v162, v170
	v_cvt_f32_i32_e32 v163, v171
	v_cvt_f32_i32_e32 v164, v172
	v_cvt_f32_i32_e32 v165, v173
	v_cvt_f32_i32_e32 v170, v178
	v_cvt_f32_i32_e32 v171, v179
	v_cvt_f32_i32_e32 v172, v180
	v_cvt_f32_i32_e32 v173, v181
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s19, s51, 1
	s_mov_b32 s16, s7
	s_cmp_lt_i32 s19, 2
	s_cselect_b32 s51, s19, 0
	s_add_i32 s4, s17, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s0, s51, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_add_i32 s1, s0, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s0, s51, 14
	s_add_i32 s7, s0, 0
	s_mov_b32 s0, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s6, s1, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s15
	s_mov_b32 s17, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v32, v65 offset:40960
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v65, s18, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[174:177], v65, s[36:39], 0 offen
	buffer_load_b128 v[178:181], v68, s[36:39], 0 offen
	buffer_load_b128 v[182:185], v70, s[36:39], 0 offen
	buffer_load_b128 v[186:189], v186, s[36:39], 0 offen
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[190:193], v33 offset:40960
	ds_load_b128 v[194:197], v33 offset:40976
	ds_load_b128 v[198:201], v33 offset:41472
	ds_load_b128 v[202:205], v33 offset:41488
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v65, s1, v27
	ds_store_b128 v65, v[9:12] offset:32768
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v208
	v_lshlrev_b32_e32 v10, 16, v206
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v206, v192, v12 :: v_dual_lshlrev_b32 v11, 16, v207
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v9, s7, v245
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v68, v190, v10 :: v_dual_lshlrev_b32 v65, 16, v209
	v_dual_mul_f32 v70, v191, v10 :: v_dual_mul_f32 v207, v193, v12
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v208, v194, v10 :: v_dual_mul_f32 v213, v195, v11
	v_dual_mul_f32 v210, v196, v10 :: v_dual_mul_f32 v215, v197, v11
	v_dual_mul_f32 v212, v194, v11 :: v_dual_mul_f32 v217, v195, v12
	v_dual_mul_f32 v214, v196, v11 :: v_dual_mul_f32 v219, v197, v12
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v220, v198, v10 :: v_dual_mul_f32 v225, v199, v11
	v_dual_mul_f32 v222, v200, v10 :: v_dual_mul_f32 v227, v201, v11
	v_dual_mul_f32 v224, v198, v11 :: v_dual_mul_f32 v229, v199, v12
	v_dual_mul_f32 v226, v200, v11 :: v_dual_mul_f32 v231, v201, v12
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v232, v202, v10 :: v_dual_mul_f32 v237, v204, v11
	v_mul_f32_e32 v234, v204, v10
	v_dual_mul_f32 v240, v204, v12 :: v_dual_fmac_f32 v73, v70, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v84, v232, v46 :: v_dual_fmac_f32 v93, v213, v55
	v_dual_fmac_f32 v96, v224, v58 :: v_dual_fmac_f32 v111, v206, v144
	v_dual_fmac_f32 v116, v219, v149 :: v_dual_fmac_f32 v123, v240, v156
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v9, v[174:177]
	s_waitcnt vmcnt(2)
	ds_store_b128 v9, v[178:181] offset:4096
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v174, v192, v10
	v_dual_mul_f32 v175, v193, v10 :: v_dual_mul_f32 v176, v190, v11
	v_mul_f32_e32 v177, v191, v11
	v_mul_f32_e32 v178, v192, v11
	v_dual_mul_f32 v179, v193, v11 :: v_dual_mul_f32 v180, v190, v12
	v_dual_mul_f32 v181, v191, v12 :: v_dual_mul_f32 v190, v190, v65
	v_mul_f32_e32 v209, v195, v10
	v_mul_f32_e32 v191, v191, v65
	v_dual_mul_f32 v192, v192, v65 :: v_dual_mul_f32 v211, v197, v10
	v_dual_mul_f32 v193, v193, v65 :: v_dual_mul_f32 v216, v194, v12
	v_dual_mul_f32 v195, v195, v65 :: v_dual_mul_f32 v218, v196, v12
	v_mul_f32_e32 v197, v197, v65
	v_dual_mul_f32 v194, v194, v65 :: v_dual_mul_f32 v221, v199, v10
	v_dual_mul_f32 v196, v196, v65 :: v_dual_mul_f32 v223, v201, v10
	v_dual_mul_f32 v228, v198, v12 :: v_dual_mul_f32 v199, v199, v65
	v_dual_mul_f32 v230, v200, v12 :: v_dual_mul_f32 v201, v201, v65
	v_dual_mul_f32 v198, v198, v65 :: v_dual_mul_f32 v233, v203, v10
	v_dual_mul_f32 v200, v200, v65 :: v_dual_mul_f32 v235, v202, v11
	v_dual_mul_f32 v10, v205, v10 :: v_dual_mul_f32 v239, v203, v12
	v_mul_f32_e32 v236, v203, v11
	v_dual_mul_f32 v11, v205, v11 :: v_dual_mul_f32 v238, v202, v12
	v_dual_mul_f32 v203, v203, v65 :: v_dual_mul_f32 v12, v205, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v75, v175, v37
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v202, v202, v65 :: v_dual_fmac_f32 v77, v209, v39
	v_dual_mul_f32 v204, v204, v65 :: v_dual_fmac_f32 v81, v221, v43
	v_dual_mul_f32 v65, v205, v65 :: v_dual_fmac_f32 v72, v68, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v79, v211, v41 :: v_dual_fmac_f32 v74, v174, v36
	v_dual_fmac_f32 v83, v223, v45 :: v_dual_fmac_f32 v76, v208, v38
	v_dual_fmac_f32 v85, v233, v47 :: v_dual_fmac_f32 v78, v210, v40
	v_dual_fmac_f32 v89, v177, v51 :: v_dual_fmac_f32 v80, v220, v42
	v_fmac_f32_e32 v87, v10, v49
	v_dual_fmac_f32 v82, v222, v44 :: v_dual_fmac_f32 v91, v179, v53
	v_dual_fmac_f32 v86, v234, v48 :: v_dual_fmac_f32 v95, v215, v57
	v_dual_fmac_f32 v88, v176, v50 :: v_dual_fmac_f32 v97, v225, v59
	v_dual_fmac_f32 v90, v178, v52 :: v_dual_fmac_f32 v99, v227, v61
	v_dual_fmac_f32 v92, v212, v54 :: v_dual_fmac_f32 v103, v11, v125
	v_dual_fmac_f32 v94, v214, v56 :: v_dual_fmac_f32 v101, v236, v63
	v_dual_fmac_f32 v98, v226, v60 :: v_dual_fmac_f32 v109, v180, v142
	v_dual_fmac_f32 v100, v235, v62 :: v_dual_fmac_f32 v115, v218, v148
	v_dual_fmac_f32 v102, v237, v64 :: v_dual_fmac_f32 v113, v216, v146
	v_dual_fmac_f32 v110, v181, v143 :: v_dual_fmac_f32 v117, v228, v150
	v_dual_fmac_f32 v112, v207, v145 :: v_dual_fmac_f32 v119, v230, v152
	v_dual_fmac_f32 v114, v217, v147 :: v_dual_fmac_f32 v121, v238, v154
	v_dual_fmac_f32 v118, v229, v151 :: v_dual_fmac_f32 v135, v198, v166
	v_dual_fmac_f32 v120, v231, v153 :: v_dual_fmac_f32 v137, v200, v168
	v_dual_fmac_f32 v122, v239, v155 :: v_dual_fmac_f32 v129, v193, v161
	v_dual_fmac_f32 v124, v12, v157 :: v_dual_fmac_f32 v127, v191, v159
	v_dual_fmac_f32 v126, v190, v158 :: v_dual_fmac_f32 v131, v195, v163
	v_dual_fmac_f32 v128, v192, v160 :: v_dual_fmac_f32 v133, v197, v165
	v_dual_fmac_f32 v130, v194, v162 :: v_dual_fmac_f32 v141, v204, v172
	v_dual_fmac_f32 v132, v196, v164 :: v_dual_fmac_f32 v139, v202, v170
	v_fmac_f32_e32 v136, v199, v167
	v_fmac_f32_e32 v138, v201, v169
	v_fmac_f32_e32 v140, v203, v171
	v_fmac_f32_e32 v134, v65, v173
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[182:185] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[186:189] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v26
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s6, 0, 0x9000
	s_add_i32 s7, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v167, 0 :: v_dual_and_b32 v248, 6, v0
	v_mov_b32_e32 v168, 0
	v_mov_b32_e32 v170, 0
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_or_b32_e32 v38, v15, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v34, v248, 3, v1
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v174, 0
	v_mov_b32_e32 v171, 0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v200, 0
	v_mov_b32_e32 v173, 0
	v_xor_b32_e32 v36, 16, v34
	v_xor_b32_e32 v37, 32, v34
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v182, 0
	v_xor_b32_e32 v35, 48, v34
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v236, 0
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v164, 0
	v_mov_b32_e32 v159, 0
	v_mov_b32_e32 v161, 0
	v_mov_b32_e32 v163, 0
	v_mov_b32_e32 v165, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v30, s16, v38
	s_mov_b32 s16, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v42, v30 offset:2304
	ds_load_u8 v43, v30 offset:2048
	ds_load_u8 v44, v30 offset:2816
	ds_load_u8 v45, v30 offset:2560
	ds_load_u8 v46, v30 offset:1280
	ds_load_u8 v47, v30 offset:1024
	ds_load_u8 v48, v30 offset:1792
	ds_load_u8 v49, v30 offset:1536
	ds_load_u8 v56, v30 offset:3968
	ds_load_u8 v57, v30 offset:3712
	ds_load_u8 v58, v30 offset:3456
	ds_load_u8 v59, v30 offset:3200
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v25, s0, v35
	v_add_nc_u32_e32 v17, s0, v37
	v_add_nc_u32_e32 v31, s0, v36
	ds_load_b128 v[1:4], v25 offset:1024
	ds_load_b128 v[26:29], v25
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v32, v30 offset:3328
	ds_load_u8 v39, v30 offset:3072
	ds_load_u8 v40, v30 offset:3840
	ds_load_u8 v41, v30 offset:3584
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[5:8], v17 offset:3072
	ds_load_b128 v[9:12], v17 offset:2048
	ds_load_b128 v[13:16], v17 offset:1024
	ds_load_b128 v[142:145], v17
	ds_load_b128 v[17:20], v31 offset:1024
	ds_load_b128 v[146:149], v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v43, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v44, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v45, v49, v48, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v55, s0, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_lshl_or_b32 v168, v43, 16, v42
	v_lshl_or_b32 v167, v45, 16, v44
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v39, v32, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	ds_load_u8 v40, v30 offset:256
	ds_load_u8 v41, v30
	ds_load_u8 v50, v30 offset:768
	ds_load_u8 v51, v30 offset:512
	ds_load_u8 v60, v30 offset:2944
	ds_load_u8 v61, v30 offset:2688
	ds_load_u8 v62, v30 offset:2432
	ds_load_u8 v63, v30 offset:2176
	v_lshl_or_b32 v169, v39, 16, v32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v40, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v166, v40, 16, v39
	v_dual_mov_b32 v46, s23 :: v_dual_mov_b32 v45, s22
	ds_load_u8 v47, v30 offset:7424
	ds_load_u8 v48, v30 offset:7168
	ds_load_u8 v49, v30 offset:7936
	ds_load_u8 v50, v30 offset:7680
	ds_load_u8 v51, v30 offset:6400
	ds_load_u8 v52, v30 offset:6144
	ds_load_u8 v53, v30 offset:6912
	ds_load_u8 v54, v30 offset:6656
	ds_load_u8 v160, v30 offset:5376
	ds_load_u8 v161, v30 offset:5120
	ds_load_u8 v162, v30 offset:5888
	ds_load_u8 v163, v30 offset:5632
	ds_load_u8 v164, v30 offset:8064
	ds_load_u8 v165, v30 offset:7808
	ds_load_u8 v174, v30 offset:7552
	ds_load_u8 v175, v30 offset:7296
	ds_load_u8 v214, v30 offset:15616
	ds_load_u8 v215, v30 offset:15360
	v_mov_b32_e32 v40, s17
	ds_load_u8 v64, v30 offset:1920
	ds_load_u8 v65, v30 offset:1664
	ds_load_u8 v68, v30 offset:1408
	ds_load_u8 v70, v30 offset:1152
	ds_load_u8 v32, v30 offset:896
	ds_load_u8 v125, v30 offset:640
	ds_load_u8 v158, v30 offset:384
	ds_load_u8 v159, v30 offset:128
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[150:153], v55 offset:1024
	ds_load_b128 v[154:157], v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v181, v30 offset:6016
	ds_load_u8 v182, v30 offset:5760
	ds_load_u8 v183, v30 offset:5504
	ds_load_u8 v184, v30 offset:5248
	v_mov_b32_e32 v42, s19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[198:201], v31 offset:3072
	ds_load_b128 v[202:205], v31 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v44, s21
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v172, v52, v51, 0xc0c0004
	v_mov_b32_e32 v43, s20
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v180, v54, v53, 0xc0c0004
	v_mov_b32_e32 v41, s18
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_mov_b32_e32 v39, s16
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v161, v163, v162, 0xc0c0004
	v_perm_b32 v170, v48, v47, 0xc0c0004
	ds_load_u8 v162, v30 offset:11520
	ds_load_u8 v163, v30 offset:11264
	ds_load_u8 v185, v30 offset:12032
	ds_load_u8 v186, v30 offset:11776
	ds_load_u8 v187, v30 offset:4992
	ds_load_u8 v188, v30 offset:4736
	ds_load_u8 v189, v30 offset:4480
	ds_load_u8 v194, v30 offset:4224
	v_perm_b32 v171, v50, v49, 0xc0c0004
	ds_load_u8 v47, v30 offset:4352
	ds_load_u8 v48, v30 offset:4096
	ds_load_u8 v49, v30 offset:4864
	ds_load_u8 v50, v30 offset:4608
	ds_load_u8 v176, v30 offset:7040
	ds_load_u8 v177, v30 offset:6784
	ds_load_u8 v178, v30 offset:6528
	ds_load_u8 v179, v30 offset:6272
	v_lshl_or_b32 v172, v180, 16, v172
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v234, v215, v214, 0xc0c0004
	ds_load_u8 v214, v30 offset:12544
	ds_load_u8 v215, v30 offset:12288
	v_lshl_or_b32 v173, v171, 16, v170
	v_lshl_or_b32 v171, v161, 16, v160
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v32, v125, v32, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v125, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v190, v48, v47, 0xc0c0004
	v_perm_b32 v163, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v191, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[166:169], v[154:157], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v209, v163, 16, v162
	v_lshl_or_b32 v170, v191, 16, v190
	ds_load_u8 v160, v30 offset:10496
	ds_load_u8 v161, v30 offset:10240
	ds_load_u8 v180, v30 offset:11008
	ds_load_u8 v190, v30 offset:10752
	ds_load_u8 v195, v30 offset:12160
	ds_load_u8 v196, v30 offset:11904
	ds_load_u8 v197, v30 offset:11648
	ds_load_u8 v218, v30 offset:11392
	ds_load_u8 v185, v30 offset:9472
	ds_load_u8 v186, v30 offset:9216
	ds_load_u8 v191, v30 offset:9984
	ds_load_u8 v192, v30 offset:9728
	ds_load_u8 v193, v30 offset:8448
	ds_load_u8 v206, v30 offset:8192
	ds_load_u8 v207, v30 offset:8960
	ds_load_u8 v210, v30 offset:8704
	ds_load_u8 v219, v30 offset:11136
	ds_load_u8 v220, v30 offset:10880
	ds_load_u8 v221, v30 offset:10624
	ds_load_u8 v222, v30 offset:10368
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v244, v215, v214, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[170:173], v[146:149], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v163, v186, v185, 0xc0c0004
	ds_load_u8 v185, v30 offset:9088
	ds_load_u8 v186, v30 offset:8832
	ds_load_u8 v223, v30 offset:8576
	ds_load_u8 v224, v30 offset:8320
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_perm_b32 v161, v190, v180, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v180, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v190, v206, v193, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v191, v210, v207, 0xc0c0004
	v_lshl_or_b32 v208, v161, 16, v160
	v_lshl_or_b32 v207, v180, 16, v163
	ds_load_u8 v163, v30 offset:16128
	ds_load_u8 v180, v30 offset:15872
	v_lshl_or_b32 v206, v191, 16, v190
	ds_load_u8 v216, v30 offset:14592
	ds_load_u8 v217, v30 offset:14336
	ds_load_u8 v225, v30 offset:15104
	ds_load_u8 v226, v30 offset:14848
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[210:213], v55 offset:3072
	ds_load_b128 v[190:193], v55 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v55, v30 offset:13568
	ds_load_u8 v227, v30 offset:13312
	ds_load_u8 v228, v30 offset:14080
	ds_load_u8 v229, v30 offset:13824
	ds_load_u8 v230, v30 offset:16256
	ds_load_u8 v231, v30 offset:16000
	ds_load_u8 v232, v30 offset:15744
	ds_load_u8 v233, v30 offset:15488
	ds_load_u8 v31, v30 offset:10112
	ds_load_u8 v160, v30 offset:9856
	ds_load_u8 v161, v30 offset:9600
	ds_load_u8 v162, v30 offset:9344
	v_wmma_i32_16x16x16_iu8 v[47:54], v[206:209], v[142:145], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v227, v227, v55, 0xc0c0004
	v_perm_b32 v238, v217, v216, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v228, v229, v228, 0xc0c0004
	v_perm_b32 v225, v226, v225, 0xc0c0004
	ds_load_u8 v216, v30 offset:13056
	ds_load_u8 v217, v30 offset:12800
	ds_load_u8 v226, v30 offset:14208
	ds_load_u8 v239, v30 offset:13952
	ds_load_u8 v240, v30 offset:13696
	ds_load_u8 v241, v30 offset:13440
	v_perm_b32 v163, v180, v163, 0xc0c0004
	ds_load_u8 v180, v30 offset:15232
	ds_load_u8 v235, v30 offset:14976
	ds_load_u8 v236, v30 offset:14720
	ds_load_u8 v237, v30 offset:14464
	ds_load_u8 v229, v30 offset:13184
	ds_load_u8 v242, v30 offset:12928
	ds_load_u8 v243, v30 offset:12672
	ds_load_u8 v30, v30 offset:12416
	v_perm_b32 v55, v59, v58, 0xc0c0004
	v_perm_b32 v58, v61, v60, 0xc0c0004
	v_perm_b32 v59, v70, v68, 0xc0c0004
	v_perm_b32 v60, v65, v64, 0xc0c0004
	v_perm_b32 v61, v159, v158, 0xc0c0004
	v_perm_b32 v64, v165, v164, 0xc0c0004
	v_perm_b32 v65, v179, v178, 0xc0c0004
	v_perm_b32 v68, v177, v176, 0xc0c0004
	v_lshl_or_b32 v215, v60, 16, v59
	v_lshl_or_b32 v214, v32, 16, v61
	v_perm_b32 v32, v175, v174, 0xc0c0004
	v_perm_b32 v70, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v63, v217, v216, 0xc0c0004
	v_lshl_or_b32 v217, v56, 16, v55
	v_lshl_or_b32 v216, v58, 16, v57
	v_perm_b32 v158, v194, v189, 0xc0c0004
	v_perm_b32 v159, v188, v187, 0xc0c0004
	v_perm_b32 v31, v160, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[214:217], v[154:157], v[39:46] neg_lo:[1,1,0]
	v_lshl_or_b32 v157, v64, 16, v32
	v_lshl_or_b32 v156, v68, 16, v65
	v_lshl_or_b32 v155, v125, 16, v70
	v_lshl_or_b32 v154, v159, 16, v158
	v_perm_b32 v65, v222, v221, 0xc0c0004
	v_perm_b32 v68, v220, v219, 0xc0c0004
	v_perm_b32 v70, v162, v161, 0xc0c0004
	v_perm_b32 v32, v218, v197, 0xc0c0004
	v_perm_b32 v64, v196, v195, 0xc0c0004
	v_perm_b32 v125, v224, v223, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[154:157], v[146:149], v[55:62] neg_lo:[1,1,0]
	v_lshl_or_b32 v148, v68, 16, v65
	v_lshl_or_b32 v147, v31, 16, v70
	v_lshl_or_b32 v220, v225, 16, v238
	v_lshl_or_b32 v219, v228, 16, v227
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v68, v239, v226, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v242, v229, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[222:225], v25 offset:3072
	ds_load_b128 v[226:229], v25 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v149, v64, 16, v32
	v_perm_b32 v64, v235, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[174:181], v[166:169], v[190:193], v[39:46] neg_lo:[1,1,0]
	v_perm_b32 v158, v186, v185, 0xc0c0004
	v_lshl_or_b32 v221, v163, 16, v234
	v_lshl_or_b32 v218, v63, 16, v244
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[174:181], v[170:173], v[202:205], v[174:181] neg_lo:[1,1,0]
	v_perm_b32 v31, v233, v232, 0xc0c0004
	v_lshl_or_b32 v146, v158, 16, v125
	v_perm_b32 v32, v231, v230, 0xc0c0004
	v_perm_b32 v63, v237, v236, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[158:165], v[166:169], v[150:153], v[39:46] neg_lo:[1,1,0]
	v_perm_b32 v65, v241, v240, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v30, v30, v243, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[182:189], v[214:217], v[190:193], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[166:169], v[210:213], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[174:181], v[206:209], v[9:12], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[146:149], v[142:145], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[170:173], v[17:20], v[158:165] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v32, 16, v31
	v_lshl_or_b32 v144, v64, 16, v63
	v_lshl_or_b32 v143, v68, 16, v65
	v_lshl_or_b32 v142, v70, 16, v30
	v_wmma_i32_16x16x16_iu8 v[190:197], v[170:173], v[198:201], v[190:197] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[174:181], v[218:221], v[226:229], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[206:209], v[13:16], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[218:221], v[26:29], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[142:145], v[26:29], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[206:209], v[5:8], v[190:197] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v209, v180
	v_mov_b32_e32 v180, 0
	v_wmma_i32_16x16x16_iu8 v[25:32], v[214:217], v[150:153], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[214:217], v[210:213], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[218:221], v[1:4], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[154:157], v[202:205], v[182:189] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[154:157], v[17:20], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[218:221], v[222:225], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[154:157], v[198:201], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v200, v48
	v_wmma_i32_16x16x16_iu8 v[182:189], v[146:149], v[9:12], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[146:149], v[13:16], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v167, v49
	v_wmma_i32_16x16x16_iu8 v[39:46], v[146:149], v[5:8], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v168, v50
	v_wmma_i32_16x16x16_iu8 v[182:189], v[142:145], v[226:229], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[142:145], v[1:4], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v57
	v_wmma_i32_16x16x16_iu8 v[39:46], v[142:145], v[222:225], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v169, v51
	v_cvt_f32_i32_e32 v170, v52
	v_cvt_f32_i32_e32 v171, v53
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v58
	v_cvt_f32_i32_e32 v172, v54
	v_cvt_f32_i32_e32 v173, v55
	v_cvt_f32_i32_e32 v208, v56
	v_cvt_f32_i32_e32 v211, v59
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v176
	v_cvt_f32_i32_e32 v234, v60
	v_cvt_f32_i32_e32 v235, v61
	v_cvt_f32_i32_e32 v201, v62
	v_cvt_f32_i32_e32 v237, v158
	v_cvt_f32_i32_e32 v238, v159
	v_cvt_f32_i32_e32 v239, v160
	v_cvt_f32_i32_e32 v240, v161
	v_cvt_f32_i32_e32 v241, v162
	v_cvt_f32_i32_e32 v242, v163
	v_cvt_f32_i32_e32 v70, v164
	v_cvt_f32_i32_e32 v243, v165
	v_cvt_f32_i32_e32 v244, v25
	v_cvt_f32_i32_e32 v249, v26
	v_cvt_f32_i32_e32 v250, v27
	v_cvt_f32_i32_e32 v251, v28
	v_cvt_f32_i32_e32 v252, v29
	v_cvt_f32_i32_e32 v253, v30
	v_cvt_f32_i32_e32 v254, v31
	v_cvt_f32_i32_e32 v255, v32
	v_cvt_f32_i32_e32 v199, v174
	v_cvt_f32_i32_e32 v175, v175
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v33, v179
	v_cvt_f32_i32_e32 v236, v181
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v71, v185
	v_cvt_f32_i32_e32 v166, v186
	v_cvt_f32_i32_e32 v176, v187
	v_cvt_f32_i32_e32 v177, v188
	v_cvt_f32_i32_e32 v179, v189
	v_cvt_f32_i32_e32 v150, v190
	v_cvt_f32_i32_e32 v151, v191
	v_cvt_f32_i32_e32 v152, v192
	v_cvt_f32_i32_e32 v153, v193
	v_cvt_f32_i32_e32 v154, v194
	v_cvt_f32_i32_e32 v155, v195
	v_cvt_f32_i32_e32 v156, v196
	v_cvt_f32_i32_e32 v157, v197
	v_cvt_f32_i32_e32 v158, v39
	v_cvt_f32_i32_e32 v159, v40
	v_cvt_f32_i32_e32 v160, v41
	v_cvt_f32_i32_e32 v161, v42
	v_cvt_f32_i32_e32 v162, v43
	v_cvt_f32_i32_e32 v163, v44
	v_cvt_f32_i32_e32 v164, v45
	v_cvt_f32_i32_e32 v165, v46
	v_cvt_f32_i32_e32 v174, v47
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s49
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v108, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v107, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v104, s0, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v4, v105, s0, 1
	v_add_lshl_u32 v5, v106, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add_nc_u32_e32 v206, 0, v23
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x3
	buffer_load_u16 v210, v1, s[12:15], 0 offen
	buffer_load_u16 v187, v3, s[12:15], 0 offen
	buffer_load_u16 v202, v4, s[12:15], 0 offen
	buffer_load_u16 v65, v5, s[12:15], 0 offen
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v1, 32, v24
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v12, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v22, v1
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_add_nc_u32_e32 v205, v1, v21
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v233, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v7, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	v_mov_b32_e32 v226, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v205, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v206 offset:40960
	ds_load_b128 v[21:24], v206 offset:40976
	ds_load_b128 v[25:28], v206 offset:41472
	ds_load_b128 v[29:32], v206 offset:41488
	v_mov_b32_e32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v212, s6, v37
	v_add_nc_u32_e32 v215, s6, v36
	v_add_nc_u32_e32 v214, s6, v35
	v_add_nc_u32_e32 v13, s6, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s6, s4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[34:37], v212
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v213, s7, v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v213 offset:3328
	ds_load_u8 v2, v213 offset:3072
	ds_load_u8 v3, v213 offset:3840
	ds_load_u8 v4, v213 offset:3584
	ds_load_u8 v5, v213 offset:2304
	ds_load_u8 v6, v213 offset:2048
	ds_load_u8 v7, v213 offset:2816
	ds_load_u8 v8, v213 offset:2560
	ds_load_u8 v9, v213 offset:1280
	ds_load_u8 v10, v213 offset:1024
	ds_load_u8 v11, v213 offset:1792
	ds_load_u8 v12, v213 offset:1536
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[57:60], v13 offset:1024
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v164, off offset:104
	scratch_store_b32 off, v165, off offset:108
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s7, s4
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v151, off offset:52
	scratch_store_b32 off, v152, off offset:56
	scratch_store_b32 off, v153, off offset:60
	scratch_store_b32 off, v236, off offset:32
	scratch_store_b32 off, v150, off offset:48
	scratch_store_b32 off, v154, off offset:64
	scratch_store_b32 off, v155, off offset:68
	scratch_store_b32 off, v183, off offset:44
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	scratch_store_b128 off, v[34:37], off offset:112 ; 16-byte Folded Spill
	ds_load_b128 v[37:40], v215 offset:1024
	ds_load_b128 v[142:145], v215
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v14, v213 offset:256
	ds_load_u8 v15, v213
	ds_load_u8 v16, v213 offset:768
	ds_load_u8 v45, v213 offset:512
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v156, off offset:72
	scratch_store_b32 off, v157, off offset:76
	scratch_store_b32 off, v158, off offset:80
	scratch_store_b32 off, v159, off offset:84
	scratch_store_b32 off, v160, off offset:88
	scratch_store_b32 off, v161, off offset:92
	scratch_store_b32 off, v162, off offset:96
	scratch_store_b32 off, v163, off offset:100
	v_lshl_or_b32 v48, v2, 16, v1
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v1, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v2, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v4, v12, v11, 0xc0c0004
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v33, off offset:24
	scratch_store_b32 off, v234, off offset:36
	scratch_store_b32 off, v209, off offset:28
	scratch_store_b32 off, v235, off offset:40
	v_lshl_or_b32 v47, v1, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v15, v14, 0xc0c0004
	v_lshl_or_b32 v46, v4, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v45, v16, 0xc0c0004
	v_dual_mov_b32 v183, v237 :: v_dual_mov_b32 v180, v184
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v34.l, v65.l
	v_mov_b32_e32 v184, v238
	v_lshl_or_b32 v45, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	ds_load_u8 v9, v213 offset:7424
	ds_load_u8 v10, v213 offset:7168
	ds_load_u8 v11, v213 offset:7936
	ds_load_u8 v12, v213 offset:7680
	ds_load_u8 v53, v213 offset:6400
	ds_load_u8 v54, v213 offset:6144
	ds_load_u8 v14, v213 offset:6912
	ds_load_u8 v15, v213 offset:6656
	ds_load_u8 v61, v213 offset:5376
	ds_load_u8 v62, v213 offset:5120
	ds_load_u8 v150, v213 offset:4096
	ds_load_u8 v151, v213 offset:4864
	ds_load_u8 v152, v213 offset:4608
	ds_load_u8 v161, v213 offset:8192
	ds_load_u8 v235, v213 offset:4224
	ds_load_u8 v236, v213 offset:4992
	ds_load_u8 v237, v213 offset:4736
	ds_load_u8 v234, v213 offset:4480
	ds_load_u8 v154, v213 offset:11776
	ds_load_u8 v164, v213 offset:15616
	ds_load_u8 v155, v213 offset:10496
	ds_load_u8 v157, v213 offset:11008
	ds_load_u8 v158, v213 offset:10752
	ds_load_u8 v156, v213 offset:10240
	ds_load_u8 v159, v213 offset:9472
	ds_load_u8 v160, v213 offset:9216
	ds_load_u8 v162, v213 offset:8960
	ds_load_u8 v163, v213 offset:8704
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v55, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v56, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v213 offset:5888
	ds_load_u8 v63, v213 offset:5632
	ds_load_u8 v64, v213 offset:4352
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v153, v15, v14, 0xc0c0004
	ds_load_u8 v165, v213 offset:15360
	ds_load_u8 v216, v213 offset:16128
	ds_load_u8 v217, v213 offset:15872
	v_lshl_or_b32 v56, v56, 16, v55
	v_mov_b32_e32 v6, s9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[41:44], v13 offset:3072
	ds_load_b128 v[49:52], v13 offset:2048
	ds_load_b128 v[146:149], v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v55, v153, 16, v53
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v53, v62, v61, 0xc0c0004
	ds_load_u8 v61, v213 offset:11520
	ds_load_u8 v62, v213 offset:11264
	ds_load_u8 v153, v213 offset:12032
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v7, s10
	ds_load_u8 v65, v213 offset:11904
	ds_load_u8 v68, v213 offset:10624
	ds_load_u8 v209, v213 offset:10368
	ds_load_u8 v125, v213 offset:11136
	ds_load_u8 v33, v213 offset:10880
	v_mov_b32_e32 v185, v239
	v_dual_mov_b32 v207, v245 :: v_dual_mov_b32 v204, v67
	v_mov_b32_e32 v67, v182
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v54, v63, v54, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v63, v150, v64, 0xc0c0004
	v_perm_b32 v64, v152, v151, 0xc0c0004
	ds_load_u8 v150, v213 offset:9984
	ds_load_u8 v151, v213 offset:9728
	ds_load_u8 v152, v213 offset:8448
	v_mov_b32_e32 v182, v174
	v_lshl_or_b32 v54, v54, 16, v53
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[146:149], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v53, v64, 16, v63
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v62, v154, v153, 0xc0c0004
	v_perm_b32 v63, v156, v155, 0xc0c0004
	v_perm_b32 v153, v158, v157, 0xc0c0004
	v_perm_b32 v154, v160, v159, 0xc0c0004
	ds_load_u8 v155, v213 offset:3456
	ds_load_u8 v156, v213 offset:3200
	ds_load_u8 v157, v213 offset:3968
	ds_load_u8 v158, v213 offset:3712
	ds_load_u8 v159, v213 offset:2432
	ds_load_u8 v160, v213 offset:2176
	v_lshl_or_b32 v64, v62, 16, v61
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[142:145], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v153, 16, v63
	v_dual_mov_b32 v174, v173 :: v_dual_mov_b32 v173, v172
	v_dual_mov_b32 v172, v171 :: v_dual_mov_b32 v171, v170
	v_mov_b32_e32 v170, v168
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v151, v161, v152, 0xc0c0004
	v_perm_b32 v152, v163, v162, 0xc0c0004
	v_perm_b32 v162, v217, v216, 0xc0c0004
	v_perm_b32 v161, v165, v164, 0xc0c0004
	v_lshl_or_b32 v62, v150, 16, v154
	ds_load_u8 v163, v213 offset:14592
	ds_load_u8 v164, v213 offset:14336
	ds_load_u8 v165, v213 offset:15104
	ds_load_u8 v224, v213 offset:14848
	ds_load_u8 v225, v213 offset:13568
	ds_load_u8 v226, v213 offset:13312
	ds_load_u8 v227, v213 offset:14080
	v_lshl_or_b32 v61, v152, 16, v151
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v150, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v151, v158, v157, 0xc0c0004
	v_dual_mov_b32 v168, v200 :: v_dual_mov_b32 v203, v247
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v152, v160, v159, 0xc0c0004
	ds_load_u8 v153, v213 offset:2944
	ds_load_u8 v154, v213 offset:2688
	ds_load_u8 v155, v213 offset:1408
	ds_load_u8 v156, v213 offset:1152
	ds_load_u8 v157, v213 offset:1920
	ds_load_u8 v158, v213 offset:1664
	ds_load_u8 v159, v213 offset:384
	ds_load_u8 v160, v213 offset:128
	ds_load_u8 v216, v213 offset:896
	ds_load_u8 v217, v213 offset:640
	ds_load_u8 v218, v213 offset:7552
	ds_load_u8 v219, v213 offset:7296
	ds_load_u8 v220, v213 offset:8064
	ds_load_u8 v221, v213 offset:7808
	ds_load_u8 v222, v213 offset:6528
	ds_load_u8 v223, v213 offset:6272
	ds_load_u8 v228, v213 offset:7040
	ds_load_u8 v229, v213 offset:6784
	ds_load_u8 v230, v213 offset:5504
	ds_load_u8 v231, v213 offset:5248
	ds_load_u8 v232, v213 offset:6016
	ds_load_u8 v233, v213 offset:5760
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v154, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	v_lshl_or_b32 v153, v151, 16, v150
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v156, v158, v157, 0xc0c0004
	v_mov_b32_e32 v200, v246
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v157, v160, v159, 0xc0c0004
	ds_load_u8 v159, v213 offset:13824
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v158, v217, v216, 0xc0c0004
	v_lshl_or_b32 v152, v154, 16, v152
	v_lshl_or_b32 v151, v156, 16, v155
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v154, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v155, v221, v220, 0xc0c0004
	v_lshl_or_b32 v150, v158, 16, v157
	ds_load_u8 v158, v213 offset:11648
	ds_load_u8 v160, v213 offset:11392
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v156, v223, v222, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v228, v229, v228, 0xc0c0004
	v_lshl_or_b32 v157, v155, 16, v154
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v229, v231, v230, 0xc0c0004
	v_perm_b32 v231, v235, v234, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v230, v233, v232, 0xc0c0004
	v_perm_b32 v232, v237, v236, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[216:223], v[150:153], v[146:149], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v156, v228, 16, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v155, v230, 16, v229
	v_lshl_or_b32 v154, v232, 16, v231
	v_perm_b32 v163, v164, v163, 0xc0c0004
	v_perm_b32 v164, v224, v165, 0xc0c0004
	v_perm_b32 v165, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v159, v159, v227, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[216:223], v[154:157], v[142:145], v[216:223] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[45:48], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v160, v158, 0xc0c0004
	ds_load_u8 v160, v213 offset:12160
	v_wmma_i32_16x16x16_iu8 v[232:239], v[150:153], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v186, v240 :: v_dual_mov_b32 v193, v250
	v_mov_b16_e64 v181.l, v187.l
	v_dual_mov_b32 v187, v241 :: v_dual_mov_b32 v188, v242
	v_dual_mov_b32 v191, v244 :: v_dual_mov_b32 v190, v243
	v_mov_b32_e32 v189, v248
	v_wmma_i32_16x16x16_iu8 v[240:247], v[45:48], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v192, v249 :: v_dual_mov_b32 v195, v252
	v_dual_mov_b32 v194, v251 :: v_dual_mov_b32 v197, v254
	v_mov_b32_e32 v196, v253
	v_mov_b32_e32 v198, v255
	v_wmma_i32_16x16x16_iu8 v[248:255], v[150:153], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[45:48], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[150:153], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v50, v213 offset:9600
	ds_load_u8 v51, v213 offset:9344
	ds_load_u8 v52, v213 offset:10112
	ds_load_u8 v57, v213 offset:9856
	ds_load_u8 v58, v213 offset:8576
	ds_load_u8 v59, v213 offset:8320
	ds_load_u8 v60, v213 offset:9088
	ds_load_u8 v150, v213 offset:8832
	v_wmma_i32_16x16x16_iu8 v[224:231], v[53:56], v[37:40], v[224:231] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[232:239], v[154:157], v[37:40], v[232:239] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[37:40], v215 offset:2048
	ds_load_b128 v[44:47], v215 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v43, v162, 16, v161
	v_lshl_or_b32 v42, v164, 16, v163
	v_lshl_or_b32 v41, v159, 16, v165
	v_lshrrev_b32_e32 v66, 4, v0
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v57, v52, 0xc0c0004
	ds_load_u8 v57, v213 offset:12800
	v_perm_b32 v48, v65, v160, 0xc0c0004
	v_perm_b32 v65, v209, v68, 0xc0c0004
	v_perm_b32 v68, v33, v125, 0xc0c0004
	ds_load_u8 v125, v213 offset:13056
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v49, v48, 16, v158
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[53:56], v[37:40], v[240:247] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v68, 16, v65
	ds_load_u8 v65, v213 offset:12544
	ds_load_u8 v68, v213 offset:12288
	v_wmma_i32_16x16x16_iu8 v[248:255], v[154:157], v[37:40], v[248:255] neg_lo:[1,1,0]
	v_perm_b32 v59, v150, v60, 0xc0c0004
	ds_load_u8 v60, v213 offset:15744
	ds_load_u8 v150, v213 offset:15488
	ds_load_u8 v37, v213 offset:16256
	ds_load_u8 v38, v213 offset:16000
	ds_load_u8 v39, v213 offset:14720
	ds_load_u8 v158, v213 offset:14464
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[53:56], v[44:47], v[142:149] neg_lo:[1,1,0]
	ds_load_u8 v159, v213 offset:15232
	ds_load_u8 v160, v213 offset:14976
	ds_load_u8 v161, v213 offset:13696
	ds_load_u8 v162, v213 offset:13440
	v_wmma_i32_16x16x16_iu8 v[1:8], v[154:157], v[44:47], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v44, v213 offset:14208
	ds_load_u8 v45, v213 offset:13952
	ds_load_u8 v163, v213 offset:12672
	ds_load_u8 v164, v213 offset:12416
	ds_load_u8 v165, v213 offset:13184
	ds_load_u8 v209, v213 offset:12928
	v_lshl_or_b32 v46, v59, 16, v58
	v_lshl_or_b32 v47, v51, 16, v50
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[50:53], v214 offset:1024
	ds_load_b128 v[154:157], v212 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v58, v57, v125, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[54:57], v214
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v40, v68, v65, 0xc0c0004
	v_mov_b16_e32 v65.l, v34.l
	scratch_load_b128 v[33:36], off, off offset:112 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v38, v158, v39, 0xc0c0004
	v_lshl_or_b32 v40, v58, 16, v40
	v_perm_b32 v58, v150, v60, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[150:153], v212 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v39, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v59, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v60, v209, v165, 0xc0c0004
	v_lshl_or_b32 v161, v37, 16, v58
	v_lshl_or_b32 v160, v39, 16, v38
	v_lshl_or_b32 v159, v44, 16, v59
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[162:165], v214 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v158, v60, 16, v45
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[61:64], v[154:157], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[248:255], v[46:49], v[154:157], v[248:255] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v157, off, off offset:76
	scratch_load_b32 v156, off, off offset:72
	scratch_load_b32 v155, off, off offset:68
	scratch_load_b32 v154, off, off offset:64
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[46:49], v[150:153], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[61:64], v[150:153], v[224:231] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v153, off, off offset:60
	scratch_load_b32 v152, off, off offset:56
	scratch_load_b32 v151, off, off offset:52
	scratch_load_b32 v150, off, off offset:48
	v_wmma_i32_16x16x16_iu8 v[232:239], v[158:161], v[50:53], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[224:231], v[40:43], v[50:53], v[224:231] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[40:43], v[162:165], v[240:247] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v58, v236
	scratch_load_b32 v236, off, off offset:32 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v59, v237
	v_mov_b32_e32 v237, v183
	scratch_load_b32 v183, off, off offset:44 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[248:255], v[158:161], v[162:165], v[248:255] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v165, off, off offset:108
	scratch_load_b32 v164, off, off offset:104
	scratch_load_b32 v163, off, off offset:100
	scratch_load_b32 v162, off, off offset:96
	v_cvt_f32_i32_e32 v50, v228
	v_cvt_f32_i32_e32 v51, v229
	v_cvt_f32_i32_e32 v52, v230
	v_cvt_f32_i32_e32 v53, v231
	v_cvt_f32_i32_e32 v60, v238
	v_mov_b32_e32 v238, v184
	v_mov_b32_e32 v184, v180
	s_waitcnt vmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[33:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[216:223], v[46:49], v[33:36], v[216:223] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[33:36], v212 offset:3072
	ds_load_b128 v[212:215], v214 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[40:43], v[54:57], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[216:223], v[158:161], v[54:57], v[216:223] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v56, v234
	v_cvt_f32_i32_e32 v57, v235
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v235, off, off offset:40
	scratch_load_b32 v209, off, off offset:28
	v_cvt_f32_i32_e32 v54, v232
	v_cvt_f32_i32_e32 v39, v217
	v_cvt_f32_i32_e32 v44, v222
	v_cvt_f32_i32_e32 v45, v223
	v_cvt_f32_i32_e32 v55, v233
	v_cvt_f32_i32_e32 v217, v248
	v_mov_b32_e32 v248, v189
	v_cvt_f32_i32_e32 v222, v253
	v_mov_b32_e32 v253, v196
	v_cvt_f32_i32_e32 v223, v254
	v_mov_b32_e32 v254, v197
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[46:49], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[61:64], v[33:36], v[142:149] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v234, off, off offset:36
	scratch_load_b32 v33, off, off offset:24
	v_cvt_f32_i32_e32 v34, v9
	v_cvt_f32_i32_e32 v9, v10
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[158:161], v[212:215], v[1:8] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v161, off, off offset:92
	scratch_load_b32 v160, off, off offset:88
	scratch_load_b32 v159, off, off offset:84
	scratch_load_b32 v158, off, off offset:80
	v_wmma_i32_16x16x16_iu8 v[142:149], v[40:43], v[212:215], v[142:149] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v216
	v_cvt_f32_i32_e32 v40, v218
	v_cvt_f32_i32_e32 v41, v219
	v_cvt_f32_i32_e32 v42, v220
	v_cvt_f32_i32_e32 v43, v221
	v_cvt_f32_i32_e32 v46, v224
	v_cvt_f32_i32_e32 v47, v225
	v_cvt_f32_i32_e32 v48, v226
	v_cvt_f32_i32_e32 v49, v227
	v_mov_b32_e32 v180, v34
	v_cvt_f32_i32_e32 v61, v239
	v_mov_b32_e32 v239, v185
	v_cvt_f32_i32_e32 v62, v240
	v_mov_b32_e32 v240, v186
	v_cvt_f32_i32_e32 v63, v241
	v_mov_b32_e32 v241, v187
	v_mov_b16_e64 v187.l, v181.l
	v_cvt_f32_i32_e32 v64, v242
	v_mov_b32_e32 v242, v188
	v_cvt_f32_i32_e32 v212, v243
	v_mov_b32_e32 v243, v190
	v_cvt_f32_i32_e32 v213, v244
	v_mov_b32_e32 v244, v191
	v_cvt_f32_i32_e32 v214, v245
	v_cvt_f32_i32_e32 v215, v246
	v_dual_mov_b32 v246, v200 :: v_dual_mov_b32 v245, v207
	v_mov_b32_e32 v200, v168
	v_mov_b32_e32 v168, v170
	v_dual_mov_b32 v170, v171 :: v_dual_mov_b32 v171, v172
	v_dual_mov_b32 v172, v173 :: v_dual_mov_b32 v173, v174
	v_mov_b32_e32 v174, v182
	v_dual_mov_b32 v182, v67 :: v_dual_mov_b32 v67, v204
	v_cvt_f32_i32_e32 v216, v247
	v_mov_b32_e32 v247, v203
	v_cvt_f32_i32_e32 v218, v249
	v_mov_b32_e32 v249, v192
	v_cvt_f32_i32_e32 v219, v250
	v_mov_b32_e32 v250, v193
	v_cvt_f32_i32_e32 v220, v251
	v_mov_b32_e32 v251, v194
	v_cvt_f32_i32_e32 v221, v252
	v_mov_b32_e32 v252, v195
	v_cvt_f32_i32_e32 v224, v255
	v_mov_b32_e32 v255, v198
	v_cvt_f32_i32_e32 v225, v142
	v_cvt_f32_i32_e32 v226, v143
	v_cvt_f32_i32_e32 v227, v144
	v_cvt_f32_i32_e32 v228, v145
	v_cvt_f32_i32_e32 v229, v146
	v_cvt_f32_i32_e32 v230, v147
	v_cvt_f32_i32_e32 v231, v148
	v_cvt_f32_i32_e32 v232, v149
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v233, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s48, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s48, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s0, s0, 6
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s49
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v108, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v34, v107, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v35, v104, s0, 1
	v_add_lshl_u32 v36, v105, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v37, v106, s0, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x3
	buffer_load_u16 v38, v2, s[12:15], 0 offen
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	buffer_load_u16 v37, v37, s[12:15], 0 offen
.Ltmp20:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.l, 0
.Ltmp21:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v2.h, v65.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	s_mov_b32 s0, 0x76543210
.Ltmp22:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s13, s25, 0xffff
	s_mov_b32 s12, s24
.Ltmp23:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v65, v32, v2
	v_mul_f32_e32 v68, v31, v2
	v_mul_f32_e32 v104, v30, v2
	v_mul_f32_e32 v105, v29, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v165, v134
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v134, v65, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v106, v28, v2 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v107, v27, v2
	v_mul_f32_e32 v108, v26, v2
	v_mul_f32_e32 v125, v25, v2
	v_mul_f32_e32 v142, v24, v2
	v_mul_f32_e32 v143, v23, v2
	v_mul_f32_e32 v144, v22, v2
	v_mul_f32_e32 v145, v21, v2
	v_mul_f32_e32 v146, v20, v2
	v_mul_f32_e32 v147, v19, v2
	v_mul_f32_e32 v148, v18, v2
	v_mul_f32_e32 v149, v17, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v2.h, v202.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v107, v107, v160, v137
	v_fma_f32 v144, v144, v155, v131
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v105, v105, v162, v139
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v160, v22, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v146, v146, v153, v129
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v131, v131, v144, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v162, v20, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v147, v147, v152, v128
	v_fma_f32 v144, v160, v33, v114
	scratch_load_b32 v33, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v129, v129, v146, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v104, v163, v140
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v163, v19, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v128, v128, v147, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v68, v68, v164, v141
	v_fma_f32 v106, v106, v161, v138
	v_fma_f32 v108, v108, v159, v136
	v_fma_f32 v125, v125, v158, v135
	v_fma_f32 v142, v142, v157, v133
	v_fma_f32 v143, v143, v156, v132
	v_fma_f32 v145, v145, v154, v130
	v_fma_f32 v148, v148, v151, v127
	v_fma_f32 v149, v149, v150, v126
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v150, v32, v2
	v_mul_f32_e32 v151, v31, v2
	v_mul_f32_e32 v152, v30, v2
	v_mul_f32_e32 v153, v29, v2
	v_mul_f32_e32 v154, v28, v2
	v_mul_f32_e32 v155, v27, v2
	v_mul_f32_e32 v156, v26, v2
	v_mul_f32_e32 v157, v25, v2
	v_mul_f32_e32 v158, v24, v2
	v_mul_f32_e32 v159, v23, v2
	v_mul_f32_e32 v161, v21, v2
	v_mul_f32_e32 v164, v18, v2
	v_mul_f32_e32 v165, v17, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v2.h, v187.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v141, v68, s3
	v_cndmask_b32_e64 v104, v140, v104, s3
	v_cndmask_b32_e64 v105, v139, v105, s3
	v_cndmask_b32_e64 v106, v138, v106, s3
	v_cndmask_b32_e64 v107, v137, v107, s3
	v_cndmask_b32_e64 v108, v136, v108, s3
	v_cndmask_b32_e64 v125, v135, v125, s3
	v_cndmask_b32_e64 v133, v133, v142, s3
	v_cndmask_b32_e64 v132, v132, v143, s3
	v_cndmask_b32_e64 v130, v130, v145, s3
	v_cndmask_b32_e64 v127, v127, v148, s3
	v_cndmask_b32_e64 v126, v126, v149, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v134, v150, v179, v124
	v_fma_f32 v135, v151, v177, v123
	v_fma_f32 v136, v152, v176, v122
	v_fma_f32 v137, v153, v166, v121
	v_fma_f32 v138, v154, v71, v120
	v_fma_f32 v139, v155, v184, v119
	v_fma_f32 v140, v156, v183, v118
	v_fma_f32 v141, v157, v182, v117
	v_fma_f32 v142, v158, v236, v116
	v_fma_f32 v143, v159, v209, v115
	v_fma_f32 v145, v161, v178, v113
	v_fma_f32 v148, v164, v175, v110
	v_fma_f32 v149, v165, v199, v109
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v150, v32, v2
	v_mul_f32_e32 v151, v31, v2
	v_mul_f32_e32 v152, v30, v2
	v_mul_f32_e32 v153, v29, v2
	v_mul_f32_e32 v154, v28, v2
	v_mul_f32_e32 v155, v27, v2
	v_mul_f32_e32 v156, v26, v2
	v_mul_f32_e32 v157, v25, v2
	v_mul_f32_e32 v158, v24, v2
	v_mul_f32_e32 v159, v23, v2
	v_mul_f32_e32 v160, v22, v2
	v_mul_f32_e32 v161, v21, v2
	v_mul_f32_e32 v164, v18, v2
	v_mul_f32_e32 v165, v17, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v118, v118, v140, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v140, v156, v249, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v124, v124, v134, s3
	v_cndmask_b32_e64 v123, v123, v135, s3
	v_cndmask_b32_e64 v122, v122, v136, s3
	v_cndmask_b32_e64 v121, v121, v137, s3
	v_cndmask_b32_e64 v97, v97, v140, s3
	v_cndmask_b32_e64 v120, v120, v138, s3
	v_cndmask_b32_e64 v119, v119, v139, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v137, v153, v252, v100
	v_fma_f32 v138, v154, v251, v99
	v_fma_f32 v139, v155, v250, v98
	v_fma_f32 v70, v159, v70, v94
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v115, v115, v143, s3
	v_cndmask_b32_e64 v100, v100, v137, s3
	v_cndmask_b32_e64 v99, v99, v138, s3
	v_cndmask_b32_e64 v98, v98, v139, s3
	v_cndmask_b32_e64 v70, v94, v70, s3
	v_cndmask_b32_e64 v117, v117, v141, s3
	v_cndmask_b32_e64 v116, v116, v142, s3
	v_cndmask_b32_e64 v110, v110, v148, s3
	v_cndmask_b32_e64 v114, v114, v144, s3
	v_cndmask_b32_e64 v113, v113, v145, s3
	v_cndmask_b32_e64 v109, v109, v149, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v146, v162, v33, v112
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v162, v20, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v112, v112, v146, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v147, v163, v33, v111
	scratch_load_b32 v33, off, off          ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v163, v19, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v2.h, v210.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v111, v111, v147, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v28, v28, v2
	v_mul_f32_e32 v32, v32, v2
	v_mul_f32_e32 v31, v31, v2
	v_mul_f32_e32 v30, v30, v2
	v_mul_f32_e32 v29, v29, v2
	v_mul_f32_e32 v27, v27, v2
	v_mul_f32_e32 v26, v26, v2
	v_mul_f32_e32 v25, v25, v2
	v_mul_f32_e32 v17, v17, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v32, v201, v87
	v_fma_f32 v31, v31, v235, v86
	v_fma_f32 v30, v30, v234, v85
	v_fma_f32 v29, v29, v211, v84
	v_fma_f32 v26, v26, v208, v81
	v_fma_f32 v25, v25, v173, v80
	v_fma_f32 v140, v17, v174, v72
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v17, 16, v34
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v87, v32, s3
	v_cndmask_b32_e64 v86, v86, v31, s3
	v_cndmask_b32_e64 v85, v85, v30, s3
	v_cndmask_b32_e64 v84, v84, v29, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v205, v17 offset:40960
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v81, v26, s3
	v_cndmask_b32_e64 v80, v80, v25, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v24, v24, v2
	v_mul_f32_e32 v23, v23, v2
	v_mul_f32_e32 v22, v22, v2
	v_mul_f32_e32 v21, v21, v2
	v_mul_f32_e32 v20, v20, v2
	v_mul_f32_e32 v19, v19, v2
	v_mul_f32_e32 v18, v18, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v94, v24, v172, v79
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v72, v72, v140, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v137, v20, v168, v75
	v_fma_f32 v138, v19, v167, v74
	v_fma_f32 v139, v18, v200, v73
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v79, v94, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v75, v75, v137, s3
	v_cndmask_b32_e64 v74, v74, v138, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v73, v73, v139, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v28, v28, v33, v83
	scratch_load_b32 v33, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v206 offset:40960
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v83, v28, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[29:32], v206 offset:41488
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v174, v29, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v135, v151, v254, v102
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v175, v30, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v134, v150, v255, v103
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v176, v31, v36 :: v_dual_mul_f32 v159, v29, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v102, v135, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v135, v22, v170, v77
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v103, v134, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v134, v23, v171, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v77, v135, s3
	v_cndmask_b32_e64 v78, v78, v134, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v27, v27, v33, v82
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v82, v82, v27, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[25:28], v206 offset:41472
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v173, v28, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v136, v152, v253, v101
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v140, v25, v38
	v_mul_f32_e32 v155, v25, v35
	v_mul_f32_e32 v156, v26, v35
	v_mul_f32_e32 v170, v25, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v101, v101, v136, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v136, v21, v169, v76
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[21:24], v206 offset:40976
	v_mul_f32_e32 v135, v20, v38
	v_dual_mul_f32 v150, v20, v35 :: v_dual_mul_f32 v87, v17, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v76, v136, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v94, v18, v38
	v_mul_f32_e32 v171, v26, v36
	v_dual_mul_f32 v172, v27, v36 :: v_dual_mul_f32 v25, v25, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v145, v162, v240, v91
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v162, v17, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v87, v180, v72
	v_fma_f32 v9, v94, v9, v73
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v134, v19, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v91, v145, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v145, v30, v38
	v_mul_f32_e32 v149, v19, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v135, v11, v75
	v_fma_f32 v16, v140, v16, v80
	v_fma_f32 v1, v25, v1, v125
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v138, v23, v38
	v_mul_f32_e32 v153, v23, v35
	v_mul_f32_e32 v168, v23, v36
	v_mul_f32_e32 v23, v23, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v143, v160, v242, v93
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v136, v21, v38
	v_mul_f32_e32 v151, v21, v35
	v_mul_f32_e32 v166, v21, v36
	v_mul_f32_e32 v21, v21, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v142, v158, v243, v95
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v93, v143, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v143, v28, v38
	v_mul_f32_e32 v158, v28, v35
	v_mul_f32_e32 v28, v28, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v148, v165, v237, v88
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v165, v20, v36
	v_mul_f32_e32 v20, v20, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v141, v157, v244, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v95, v95, v142, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v139, v24, v38
	v_mul_f32_e32 v142, v27, v38
	v_mul_f32_e32 v154, v24, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v96, v96, v141, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v141, v26, v38
	v_mul_f32_e32 v157, v27, v35
	v_mul_f32_e32 v169, v24, v36
	v_mul_f32_e32 v24, v24, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v144, v161, v241, v92
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v26, v26, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v146, v163, v239, v90
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v27, v27, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v147, v164, v238, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v92, v92, v144, s3
	v_cndmask_b32_e64 v88, v88, v148, s3
	v_cndmask_b32_e64 v90, v90, v146, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v137, v22, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v89, v147, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v144, v29, v38
	v_dual_mul_f32 v146, v31, v38 :: v_dual_mul_f32 v147, v17, v35
	v_mul_f32_e32 v148, v18, v35
	v_mul_f32_e32 v163, v18, v36
	v_mul_f32_e32 v164, v19, v36
	v_mul_f32_e32 v167, v22, v36
	v_mul_f32_e32 v36, v32, v36
	v_mul_f32_e32 v38, v32, v38
	v_mul_f32_e32 v152, v22, v35
	v_dual_mul_f32 v160, v30, v35 :: v_dual_mul_f32 v29, v29, v37
	v_mul_f32_e32 v30, v30, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v136, v12, v76
	v_fma_f32 v13, v137, v13, v77
	v_fma_f32 v15, v139, v15, v79
	v_fma_f32 v39, v141, v39, v81
	v_fma_f32 v40, v142, v40, v82
	v_fma_f32 v87, v143, v41, v83
	v_fma_f32 v94, v144, v42, v84
	v_fma_f32 v43, v145, v43, v85
	v_fma_f32 v44, v146, v44, v86
	v_fma_f32 v135, v147, v46, v88
	v_fma_f32 v47, v148, v47, v89
	v_fma_f32 v57, v158, v57, v99
	v_fma_f32 v158, v36, v224, v124
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v72, v33, s2
	v_cndmask_b32_e64 v36, v73, v9, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v161, v31, v35
	v_mul_f32_e32 v35, v32, v35
	v_mul_f32_e32 v31, v31, v37
	v_mul_f32_e32 v32, v32, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v134, v10, v74
	v_fma_f32 v14, v138, v14, v78
	v_fma_f32 v134, v38, v45, v34
	v_fma_f32 v48, v149, v48, v90
	v_fma_f32 v136, v151, v50, v92
	v_fma_f32 v137, v152, v51, v93
	v_fma_f32 v138, v154, v53, v95
	v_fma_f32 v139, v157, v56, v98
	v_fma_f32 v140, v159, v58, v100
	v_fma_f32 v141, v160, v59, v101
	v_fma_f32 v143, v162, v62, v109
	v_fma_f32 v144, v163, v63, v110
	v_fma_f32 v3, v27, v3, v107
	v_fma_f32 v4, v28, v4, v106
	v_fma_f32 v5, v29, v5, v105
	v_fma_f32 v6, v30, v6, v104
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v38, v75, v11, s2
	v_cndmask_b32_e64 v41, v76, v12, s2
	v_cndmask_b32_e64 v42, v77, v13, s2
	v_cndmask_b32_e64 v46, v79, v15, s2
	v_cndmask_b32_e64 v50, v80, v16, s2
	v_cndmask_b32_e64 v51, v81, v39, s2
	v_cndmask_b32_e64 v53, v82, v40, s2
	v_cndmask_b32_e64 v56, v83, v87, s2
	v_cndmask_b32_e64 v58, v84, v94, s2
	v_cndmask_b32_e64 v59, v85, v43, s2
	v_cndmask_b32_e64 v62, v86, v44, s2
	v_cndmask_b32_e64 v79, v88, v135, s2
	v_cndmask_b32_e64 v80, v89, v47, s2
	v_cndmask_b32_e64 v16, v125, v1, s2
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v36|, |v36|
	v_max_f32_e64 v11, |v33|, |v33|
.Ltmp25:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v17, v17, v37
	v_mul_f32_e32 v18, v18, v37
	v_mul_f32_e32 v19, v19, v37
	v_mul_f32_e32 v22, v22, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v49, v150, v49, v91
	v_fma_f32 v52, v153, v52, v70
	v_fma_f32 v54, v155, v54, v96
	v_fma_f32 v55, v156, v55, v97
	v_fma_f32 v142, v161, v60, v102
	v_fma_f32 v146, v165, v212, v112
	v_fma_f32 v147, v166, v213, v113
	v_fma_f32 v148, v167, v214, v114
	v_fma_f32 v152, v171, v218, v118
	v_fma_f32 v153, v172, v219, v119
	v_fma_f32 v154, v173, v220, v120
	v_fma_f32 v155, v174, v221, v121
	v_fma_f32 v156, v175, v222, v122
	v_fma_f32 v157, v176, v223, v123
	v_fma_f32 v7, v31, v7, v68
	v_fma_f32 v31, v32, v8, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v74, v10, s2
	v_cndmask_b32_e64 v63, v34, v134, s2
	v_cndmask_b32_e64 v76, v90, v48, s2
	v_cndmask_b32_e64 v47, v109, v143, s2
	v_cndmask_b32_e64 v48, v110, v144, s2
	v_cndmask_b32_e64 v13, v107, v3, s2
	v_cndmask_b32_e64 v8, v106, v4, s2
	v_cndmask_b32_e64 v9, v105, v5, s2
	v_cndmask_b32_e64 v10, v104, v6, s2
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v11, v1
	v_max3_f32 v3, |v38|, |v41|, |v42|
	v_max3_f32 v4, |v51|, |v53|, |v56|
	v_max3_f32 v5, |v58|, |v59|, |v62|
	v_max_f32_e64 v6, |v80|, |v80|
	v_max_f32_e64 v12, |v79|, |v79|
.Ltmp27:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v35, v35, v61, v103
	v_fma_f32 v145, v164, v64, v111
	v_fma_f32 v149, v168, v215, v115
	v_fma_f32 v150, v169, v216, v116
	v_fma_f32 v151, v170, v217, v117
	v_fma_f32 v17, v17, v225, v126
	v_fma_f32 v18, v18, v226, v127
	v_fma_f32 v162, v24, v232, v133
	v_fma_f32 v163, v26, v233, v108
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v78, v14, s2
	v_cndmask_b32_e64 v78, v91, v49, s2
	v_cndmask_b32_e64 v77, v92, v136, s2
	v_cndmask_b32_e64 v75, v93, v137, s2
	v_cndmask_b32_e64 v73, v70, v52, s2
	v_cndmask_b32_e64 v64, v96, v54, s2
	v_cndmask_b32_e64 v72, v97, v55, s2
	v_cndmask_b32_e64 v60, v98, v139, s2
	v_cndmask_b32_e64 v61, v99, v57, s2
	v_cndmask_b32_e64 v54, v100, v140, s2
	v_cndmask_b32_e64 v55, v101, v141, s2
	v_cndmask_b32_e64 v52, v102, v142, s2
	v_cndmask_b32_e64 v44, v112, v146, s2
	v_cndmask_b32_e64 v39, v113, v147, s2
	v_cndmask_b32_e64 v40, v114, v148, s2
	v_cndmask_b32_e64 v30, v118, v152, s2
	v_cndmask_b32_e64 v28, v119, v153, s2
	v_cndmask_b32_e64 v29, v120, v154, s2
	v_cndmask_b32_e64 v27, v121, v155, s2
	v_cndmask_b32_e64 v26, v122, v156, s2
	v_cndmask_b32_e64 v24, v123, v157, s2
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, |v37|, v3
	v_max3_f32 v3, v4, v5, |v63|
	v_max_f32_e32 v4, v12, v6
	v_max_f32_e64 v5, |v48|, |v48|
	v_max_f32_e64 v6, |v47|, |v47|
.Ltmp29:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v19, v227, v128
	v_fma_f32 v20, v20, v228, v129
	v_fma_f32 v159, v21, v229, v130
	v_fma_f32 v160, v22, v230, v131
	v_fma_f32 v161, v23, v231, v132
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v74, v95, v138, s2
	v_cndmask_b32_e64 v49, v103, v35, s2
	v_cndmask_b32_e64 v43, v111, v145, s2
	v_cndmask_b32_e64 v34, v115, v149, s2
	v_cndmask_b32_e64 v35, v116, v150, s2
	v_cndmask_b32_e64 v32, v117, v151, s2
	v_cndmask_b32_e64 v25, v124, v158, s2
	v_cndmask_b32_e64 v23, v126, v17, s2
	v_cndmask_b32_e64 v21, v127, v18, s2
	v_cndmask_b32_e64 v11, v68, v7, s2
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v12, |v78|, |v77|, |v75|
	v_max3_f32 v68, |v72|, |v60|, |v61|
	v_max3_f32 v70, |v54|, |v55|, |v52|
	v_max_f32_e32 v5, v6, v5
	v_max3_f32 v6, |v44|, |v39|, |v40|
	v_max3_f32 v81, |v30|, |v28|, |v29|
	v_max3_f32 v82, |v27|, |v26|, |v24|
.Ltmp31:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v128, v19, s2
	v_cndmask_b32_e64 v20, v129, v20, s2
	v_cndmask_b32_e64 v19, v130, v159, s2
	v_cndmask_b32_e64 v18, v131, v160, s2
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, |v45|, |v46|, |v50|
	v_max3_f32 v57, |v73|, |v74|, |v64|
	v_max3_f32 v4, v4, |v76|, v12
	v_max3_f32 v68, v68, v70, |v49|
	v_max3_f32 v70, |v34|, |v35|, |v32|
	v_max3_f32 v5, v5, |v43|, v6
	v_max3_f32 v6, v81, v82, |v25|
	v_max_f32_e64 v81, |v21|, |v21|
	v_max_f32_e64 v82, |v23|, |v23|
.Ltmp33:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v108, v163, s2
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v7, v3
	v_max3_f32 v3, v4, v57, v68
	v_max3_f32 v4, v5, v70, v6
	v_max_f32_e32 v5, v82, v81
	v_max3_f32 v6, |v20|, |v19|, |v18|
.Ltmp35:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v14, v132, v161, s2
	v_cndmask_b32_e64 v15, v133, v162, s2
	v_cndmask_b32_e64 v12, v65, v31, s2
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v31, |v17|, |v13|, |v8|
	v_max3_f32 v57, |v9|, |v10|, |v11|
	v_max3_f32 v5, v5, |v22|, v6
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v6, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v65, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v68, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, |v14|, |v15|, |v16|
	v_max3_f32 v31, v31, v57, |v12|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v57, v65, v65
	v_max_f32_e32 v65, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v5, v5, v7, v31
	v_dual_max_f32 v81, v1, v6 :: v_dual_max_f32 v82, v3, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v83, v4, v65
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v3, 4, v0
	v_lshl_add_u32 v6, v247, 9, 0
	v_lshlrev_b32_e32 v4, 5, v247
	v_permlanex16_b32 v1, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x60, v0
	v_and_b32_e32 v31, 0x80, v0
	v_and_b32_e32 v57, 8, v0
	v_lshl_add_u32 v65, v3, 2, v6
	v_and_or_b32 v68, 0x680, v245, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_lshlrev_b32 v6, 1, v31
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v70, v4, v7
	v_lshl_add_u32 v65, v57, 4, v65
	v_lshrrev_b32_e32 v71, 3, v31
	v_xor_b32_e32 v68, v68, v7
	v_lshl_add_u32 v85, v3, 6, 0
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v84, v5, v1
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v65, v6, v70
	v_lshlrev_b32_e32 v57, 3, v57
	v_add_nc_u32_e32 v31, 0, v31
	v_add3_u32 v5, v85, v71, v68
.Ltmp44:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v85.h, v2.l
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b128 v1, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v81
	v_dual_mov_b32 v5, v82 :: v_dual_max_f32 v68, v81, v81
	v_mov_b32_e32 v65, v83
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v71, v84, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v70, v82, v82
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v68, v1 :: v_dual_max_f32 v68, v83, v83
	v_dual_max_f32 v5, v70, v5 :: v_dual_max_f32 v70, v84, v84
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v82, v5 :: v_dual_max_f32 v65, v68, v65
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v68, v71, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v81, v1
	v_mov_b32_e32 v70, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v82, v82, v82
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v5, v5, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v81, v81, v81 :: v_dual_max_f32 v70, v70, v70
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v82, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v81
	v_max_f32_e32 v65, v65, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v71, v68
	v_mov_b32_e32 v81, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v70, v65
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v82, v5, v82 :: v_dual_max_f32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v81, v81, v81 :: v_dual_max_f32 v68, v68, v71
	v_max_f32_e32 v81, v1, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v70, v70
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v70, 1, v7
	v_mov_b32_e32 v71, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v83, v65, v1
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v1, 5, v3
	v_add_nc_u32_e32 v3, 0, v69
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v3, v1, v57
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v5, v71, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v84, v68, v5
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v5, v31, v70, v57
	ds_store_b128 v5, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v1
.Ltmp66:
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v1, v68, v68
	v_max_f32_e32 v57, v70, v70
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v57, 0x2b8cbccc, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v69, 0x2b8cbccc, v69
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v68, null, 0x40e00000, 0x40e00000, v57
	v_div_scale_f32 v86, s0, v69, 0x40e00000, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v5, v3
	v_rcp_f32_e32 v81, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v3, v5, 1.0
	v_fmac_f32_e32 v5, v31, v5
	v_div_scale_f32 v31, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v31, v5
	v_fma_f32 v70, -v3, v65, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v65, v70, v5 :: v_dual_max_f32 v70, 0x2b8cbccc, v71
	v_div_scale_f32 v71, null, 0x40e00000, 0x40e00000, v69
	v_fma_f32 v3, -v3, v65, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v68, v81, 1.0
	v_div_scale_f32 v87, s1, v70, 0x40e00000, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v3, v3, v5, v65
	v_rcp_f32_e32 v5, v71
	v_fmac_f32_e32 v81, v31, v81
	v_div_scale_f32 v31, vcc_lo, v57, 0x40e00000, v57
	v_div_scale_f32 v65, null, 0x40e00000, 0x40e00000, v70
	v_div_fixup_f32 v1, v3, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v82, v31, v81
	v_rcp_f32_e32 v83, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v3, -v71, v5, 1.0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v85.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v84, -v68, v82, v31
	v_fmac_f32_e32 v5, v3, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v84, v81
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v84, 1, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v3, -v65, v83, 1.0
	v_mul_f32_e32 v85, v86, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v68, v82, v31
	v_fmac_f32_e32 v83, v3, v83
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v3, v1, v84, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v71, v85, v86
	v_div_fmas_f32 v31, v31, v81, v82
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v68, v87, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v1, v5 :: v_dual_and_b32 v82, 0xffff0000, v3
	v_div_fixup_f32 v31, v31, 0x40e00000, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v1, -v65, v68, v87
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v88, null, v82, v82, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v57, -v71, v85, v86
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v71, null, v82, v82, v33
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v68, v1, v83
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v86, null, v82, v82, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v84, v71
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v1, v57, v5, v85
	v_fma_f32 v57, -v65, v68, v87
	s_mov_b32 vcc_lo, s1
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.l, v31.h
	v_mov_b16_e32 v5.h, v2.l
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v65, v1, 0x40e00000, v69
	v_div_fmas_f32 v1, v57, v83, v68
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v68, null, v82, v82, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v71, v84, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 1, v5
	.loc	1 76 14 is_stmt 0               ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v69, v1, 0x40e00000, v70
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v70.l, v65.h
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v83, v68
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v70.h, v2.l
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v84, v57, v84
	v_div_scale_f32 v85, vcc_lo, v33, v82, v33
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v31, v5, 0x7fff
	v_mov_b16_e32 v5.l, v69.h
	v_mov_b16_e32 v5.h, v2.l
	v_and_b32_e32 v2, 1, v70
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v70, v85, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v31, -v68, v83, 1.0
	v_rcp_f32_e32 v87, v86
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v57, 1, v5
	v_add3_u32 v5, v65, v2, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v65, -v71, v70, v85
	v_fmac_f32_e32 v83, v31, v83
	v_div_scale_f32 v89, s0, v36, v82, v36
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v69, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v70, v65, v84
	v_rcp_f32_e32 v65, v88
	v_mul_f32_e32 v69, v89, v83
	v_fma_f32 v90, -v86, v87, 1.0
	v_div_scale_f32 v92, null, v82, v82, v41
	v_fma_f32 v71, -v71, v70, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v68, v69, v89
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s1, v37, v82, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v88, v65, 1.0
	v_div_fmas_f32 v70, v71, v84, v70
	v_fmac_f32_e32 v69, v85, v83
	v_mul_f32_e32 v71, v90, v87
	v_rcp_f32_e32 v84, v92
	v_fmac_f32_e32 v65, v91, v65
	v_div_scale_f32 v85, s2, v38, v82, v38
	v_div_scale_f32 v91, null, v82, v82, v42
	v_div_fixup_f32 v33, v70, v82, v33
	v_fma_f32 v68, -v68, v69, v89
	v_fma_f32 v70, -v86, v71, v90
	v_mul_f32_e32 v89, v85, v65
	v_rcp_f32_e32 v93, v91
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v94, -v92, v84, 1.0
	v_div_fmas_f32 v68, v68, v83, v69
	v_fmac_f32_e32 v71, v70, v87
	v_fma_f32 v69, -v88, v89, v85
	v_div_scale_f32 v70, s0, v41, v82, v41
	v_fmac_f32_e32 v84, v94, v84
	v_div_fixup_f32 v36, v68, v82, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v91, v93, 1.0
	v_fma_f32 v68, -v86, v71, v90
	v_fmac_f32_e32 v89, v69, v65
	v_div_scale_f32 v86, null, v82, v82, v45
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v69, v70, v84
	v_fmac_f32_e32 v93, v83, v93
	v_div_scale_f32 v83, s3, v42, v82, v42
	v_div_fmas_f32 v68, v68, v87, v71
	v_fma_f32 v71, -v88, v89, v85
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v82, v82, v46
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v85, -v92, v69, v70
	v_mul_f32_e32 v88, v83, v93
	v_div_fmas_f32 v65, v71, v65, v89
	v_rcp_f32_e32 v71, v90
	v_div_fixup_f32 v37, v68, v82, v37
	v_fmac_f32_e32 v69, v85, v84
	v_fma_f32 v85, -v91, v88, v83
	v_fma_f32 v89, -v86, v87, 1.0
	v_div_fixup_f32 v38, v65, v82, v38
	v_div_scale_f32 v68, s1, v45, v82, v45
	v_fma_f32 v65, -v92, v69, v70
	v_fmac_f32_e32 v88, v85, v93
	v_fmac_f32_e32 v87, v89, v87
	v_fma_f32 v70, -v90, v71, 1.0
	v_div_scale_f32 v85, null, v82, v82, v50
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v89, null, v82, v82, v51
	v_div_fmas_f32 v65, v65, v84, v69
	v_fma_f32 v69, -v91, v88, v83
	v_mul_f32_e32 v83, v68, v87
	v_fmac_f32_e32 v71, v70, v71
	v_rcp_f32_e32 v70, v85
	v_div_scale_f32 v84, s0, v46, v82, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v41, v65, v82, v41
	v_div_fmas_f32 v69, v69, v93, v88
	v_fma_f32 v88, -v86, v83, v68
	v_mul_f32_e32 v91, v84, v71
	v_rcp_f32_e32 v93, v89
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v70, 1.0
	v_fmac_f32_e32 v83, v88, v87
	v_fma_f32 v65, -v90, v91, v84
	v_div_scale_f32 v88, null, v82, v82, v53
	v_div_fixup_f32 v42, v69, v82, v42
	v_fmac_f32_e32 v70, v92, v70
	v_div_scale_f32 v69, s2, v50, v82, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v89, v93, 1.0
	v_fma_f32 v68, -v86, v83, v68
	v_fmac_f32_e32 v91, v65, v71
	v_rcp_f32_e32 v86, v88
	v_mul_f32_e32 v65, v69, v70
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s3, v51, v82, v51
	v_div_fmas_f32 v68, v68, v87, v83
	v_fma_f32 v83, -v90, v91, v84
	v_div_scale_f32 v94, null, v82, v82, v56
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v84, -v85, v65, v69
	v_mul_f32_e32 v87, v92, v93
	v_fma_f32 v90, -v88, v86, 1.0
	v_div_fmas_f32 v71, v83, v71, v91
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v65, v84, v70
	v_fma_f32 v84, -v89, v87, v92
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s0, v53, v82, v53
	v_div_fixup_f32 v45, v68, v82, v45
	v_div_fixup_f32 v46, v71, v82, v46
	v_fma_f32 v68, -v85, v65, v69
	v_fmac_f32_e32 v87, v84, v93
	v_mul_f32_e32 v69, v90, v86
	v_fma_f32 v71, -v94, v83, 1.0
	v_div_scale_f32 v84, null, v82, v82, v58
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v85, s1, v56, v82, v56
	v_div_fmas_f32 v65, v68, v70, v65
	v_fma_f32 v68, -v89, v87, v92
	v_fma_f32 v70, -v88, v69, v90
	v_fmac_f32_e32 v83, v71, v83
	v_rcp_f32_e32 v71, v84
	v_div_scale_f32 v89, null, v82, v82, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v70, v86
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v50, v65, v82, v50
	v_rcp_f32_e32 v70, v89
	v_div_fmas_f32 v68, v68, v93, v87
	v_mul_f32_e32 v87, v85, v83
	v_fma_f32 v65, -v88, v69, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v84, v71, 1.0
	v_div_scale_f32 v88, s2, v58, v82, v58
	v_div_fixup_f32 v51, v68, v82, v51
	v_fma_f32 v68, -v94, v87, v85
	v_fmac_f32_e32 v71, v91, v71
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v89, v70, 1.0
	v_div_scale_f32 v91, null, v82, v82, v62
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v87, v68, v83
	v_div_fmas_f32 v65, v65, v86, v69
	v_mul_f32_e32 v68, v88, v71
	v_fmac_f32_e32 v70, v90, v70
	v_rcp_f32_e32 v69, v91
	v_div_scale_f32 v86, s0, v59, v82, v59
	v_div_scale_f32 v90, null, v82, v82, v63
	v_div_fixup_f32 v53, v65, v82, v53
	v_fma_f32 v65, -v94, v87, v85
	v_fma_f32 v85, -v84, v68, v88
	v_mul_f32_e32 v92, v86, v70
	v_rcp_f32_e32 v93, v90
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v91, v69, 1.0
	v_div_fmas_f32 v65, v65, v83, v87
	v_fmac_f32_e32 v68, v85, v71
	v_fma_f32 v83, -v89, v92, v86
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v81, 0xffff0000, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v69, v94, v69
	v_div_scale_f32 v85, s1, v62, v82, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v90, v93, 1.0
	v_div_fixup_f32 v56, v65, v82, v56
	v_fma_f32 v65, -v84, v68, v88
	v_fmac_f32_e32 v92, v83, v70
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v83, v85, v69
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v84, s3, v63, v82, v63
	v_div_scale_f32 v87, null, v81, v81, v79
	v_div_fmas_f32 v65, v65, v71, v68
	v_fma_f32 v68, -v89, v92, v86
	v_div_scale_f32 v89, null, v81, v81, v80
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v71, -v91, v83, v85
	v_rcp_f32_e32 v86, v87
	v_mul_f32_e32 v88, v84, v93
	v_div_fmas_f32 v68, v68, v70, v92
	v_rcp_f32_e32 v70, v89
	v_fmac_f32_e32 v83, v71, v69
	v_div_fixup_f32 v58, v65, v82, v58
	v_fma_f32 v71, -v90, v88, v84
	v_div_fixup_f32 v59, v68, v82, v59
	v_div_scale_f32 v68, s0, v79, v81, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v87, v86, 1.0
	v_fma_f32 v65, -v91, v83, v85
	v_fmac_f32_e32 v88, v71, v93
	v_fma_f32 v71, -v89, v70, 1.0
	v_div_scale_f32 v85, null, v81, v81, v76
	v_fmac_f32_e32 v86, v92, v86
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v71, v70
	v_rcp_f32_e32 v71, v85
	v_div_fmas_f32 v65, v65, v69, v83
	v_fma_f32 v69, -v90, v88, v84
	v_mul_f32_e32 v83, v68, v86
	v_div_scale_f32 v84, s1, v80, v81, v80
	v_div_scale_f32 v90, null, v81, v81, v78
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v91, v84, v70
	v_div_fmas_f32 v69, v69, v93, v88
	v_fma_f32 v88, -v87, v83, v68
	v_fma_f32 v92, -v85, v71, 1.0
	v_rcp_f32_e32 v93, v90
	v_div_fixup_f32 v62, v65, v82, v62
	v_div_fixup_f32 v63, v69, v82, v63
	v_fmac_f32_e32 v83, v88, v86
	v_fma_f32 v65, -v89, v91, v84
	v_fmac_f32_e32 v71, v92, v71
	v_div_scale_f32 v82, s2, v76, v81, v76
	v_div_scale_f32 v88, null, v81, v81, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v69, -v90, v93, 1.0
	v_fma_f32 v68, -v87, v83, v68
	v_fmac_f32_e32 v91, v65, v70
	v_mul_f32_e32 v65, v82, v71
	v_rcp_f32_e32 v87, v88
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v93, v69, v93
	v_div_fmas_f32 v68, v68, v86, v83
	v_fma_f32 v69, -v89, v91, v84
	v_fma_f32 v83, -v85, v65, v82
	v_div_scale_f32 v89, null, v81, v81, v75
	v_div_scale_f32 v92, s3, v78, v81, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v88, v87, 1.0
	v_fmac_f32_e32 v65, v83, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v89
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v84, v92, v93
	v_div_fmas_f32 v70, v69, v70, v91
	v_fmac_f32_e32 v87, v86, v87
	v_div_scale_f32 v86, s0, v77, v81, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v91, -v90, v84, v92
	v_div_fixup_f32 v69, v68, v81, v79
	v_div_fixup_f32 v70, v70, v81, v80
	v_fma_f32 v68, -v85, v65, v82
	v_mul_f32_e32 v79, v86, v87
	v_fma_f32 v80, -v89, v83, 1.0
	v_div_scale_f32 v82, null, v81, v81, v73
	s_mov_b32 vcc_lo, s2
	v_dual_fmac_f32 v84, v91, v93 :: v_dual_and_b32 v31, 0xffff0000, v2
	v_div_fmas_f32 v65, v68, v71, v65
	v_fma_f32 v71, -v88, v79, v86
	v_fmac_f32_e32 v83, v80, v83
	v_rcp_f32_e32 v80, v82
	v_fma_f32 v68, -v90, v84, v92
	v_div_scale_f32 v85, s1, v75, v81, v75
	v_div_scale_f32 v90, null, v81, v81, v74
	v_fmac_f32_e32 v79, v71, v87
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v91, v85, v83
	v_div_fmas_f32 v68, v68, v93, v84
	v_rcp_f32_e32 v84, v90
	v_fma_f32 v92, -v82, v80, 1.0
	v_div_fixup_f32 v71, v65, v81, v76
	v_fma_f32 v65, -v88, v79, v86
	v_div_scale_f32 v88, null, v81, v81, v64
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v76, v68, v81, v78
	v_fma_f32 v68, -v89, v91, v85
	v_fmac_f32_e32 v80, v92, v80
	v_div_scale_f32 v78, s2, v73, v81, v73
	v_div_fmas_f32 v65, v65, v87, v79
	v_rcp_f32_e32 v79, v88
	v_fma_f32 v86, -v90, v84, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v68, v83 :: v_dual_mul_f32 v68, v78, v80
	v_div_scale_f32 v87, null, v81, v81, v72
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, s0, v74, v81, v74
	v_div_fixup_f32 v77, v65, v81, v77
	v_fma_f32 v65, -v89, v91, v85
	v_fma_f32 v85, -v82, v68, v78
	v_rcp_f32_e32 v92, v87
	v_fma_f32 v93, -v88, v79, 1.0
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v89, v86, v84
	v_div_fmas_f32 v65, v65, v83, v91
	v_fmac_f32_e32 v68, v85, v80
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s1, v64, v81, v64
	v_fma_f32 v83, -v90, v89, v86
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v87, v92, 1.0
	v_div_fixup_f32 v75, v65, v81, v75
	v_fma_f32 v65, -v82, v68, v78
	v_mul_f32_e32 v78, v85, v79
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v89, v83, v84
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v82, s3, v72, v81, v72
	v_div_fmas_f32 v65, v65, v80, v68
	v_fma_f32 v80, -v88, v78, v85
	v_div_scale_f32 v91, null, v81, v81, v61
	v_fma_f32 v68, -v90, v89, v86
	v_mul_f32_e32 v90, v82, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v80, v79
	v_rcp_f32_e32 v80, v91
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v68, v68, v84, v89
	v_fma_f32 v84, -v87, v90, v82
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v90, v84, v92
	v_fma_f32 v84, -v91, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v84, v80
	v_div_scale_f32 v83, null, v81, v81, v60
	v_div_fixup_f32 v73, v65, v81, v73
	v_div_fixup_f32 v74, v68, v81, v74
	v_fma_f32 v65, -v88, v78, v85
	v_rcp_f32_e32 v86, v83
	v_div_scale_f32 v68, s0, v60, v81, v60
	v_div_scale_f32 v85, null, v81, v81, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v65, v65, v79, v78
	v_fma_f32 v78, -v87, v90, v82
	v_div_scale_f32 v84, s1, v61, v81, v61
	v_rcp_f32_e32 v82, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v83, v86, 1.0
	v_div_scale_f32 v87, null, v81, v81, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v64, v65, v81, v64
	v_fmac_f32_e32 v86, v89, v86
	v_div_fmas_f32 v78, v78, v92, v90
	v_mul_f32_e32 v89, v84, v80
	v_rcp_f32_e32 v92, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v82, 1.0
	v_mul_f32_e32 v79, v68, v86
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v57, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v65, -v91, v89, v84
	v_div_fixup_f32 v72, v78, v81, v72
	v_fmac_f32_e32 v82, v90, v82
	v_fma_f32 v88, -v83, v79, v68
	v_div_scale_f32 v78, s2, v54, v81, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v87, v92, 1.0
	v_fmac_f32_e32 v89, v65, v80
	v_fmac_f32_e32 v79, v88, v86
	v_div_scale_f32 v88, null, v81, v81, v52
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v65, v78, v82
	v_fma_f32 v68, -v83, v79, v68
	v_rcp_f32_e32 v83, v88
	v_fmac_f32_e32 v92, v90, v92
	v_div_scale_f32 v90, s3, v55, v81, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v68, v68, v86, v79
	v_fma_f32 v79, -v91, v89, v84
	v_div_scale_f32 v93, null, v81, v81, v49
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v84, -v85, v65, v78
	v_mul_f32_e32 v86, v90, v92
	v_div_fmas_f32 v79, v79, v80, v89
	v_rcp_f32_e32 v80, v93
	v_fma_f32 v91, -v88, v83, 1.0
	v_fmac_f32_e32 v65, v84, v82
	v_fma_f32 v84, -v87, v86, v90
	v_div_scale_f32 v89, s0, v52, v81, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v91, v83
	v_div_fixup_f32 v61, v79, v81, v61
	v_fmac_f32_e32 v86, v84, v92
	v_div_scale_f32 v84, null, v57, v57, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v93, v80, 1.0
	v_div_fixup_f32 v60, v68, v81, v60
	v_fma_f32 v68, -v85, v65, v78
	v_mul_f32_e32 v78, v89, v83
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v84
	v_div_fmas_f32 v65, v68, v82, v65
	v_fma_f32 v68, -v87, v86, v90
	v_fma_f32 v82, -v88, v78, v89
	v_div_scale_f32 v87, null, v57, v57, v48
	v_div_scale_f32 v85, s1, v49, v81, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v82, v83
	v_rcp_f32_e32 v82, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v84, v79, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v54, v65, v81, v54
	v_div_fmas_f32 v68, v68, v92, v86
	v_mul_f32_e32 v86, v85, v80
	v_fma_f32 v65, -v88, v78, v89
	v_fmac_f32_e32 v79, v90, v79
	v_div_scale_f32 v90, null, v57, v57, v43
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v55, v68, v81, v55
	v_fma_f32 v68, -v93, v86, v85
	v_div_scale_f32 v88, s2, v47, v57, v47
	v_fma_f32 v89, -v87, v82, 1.0
	v_div_fmas_f32 v65, v65, v83, v78
	v_rcp_f32_e32 v78, v90
	v_fmac_f32_e32 v86, v68, v80
	v_mul_f32_e32 v68, v88, v79
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v83, s0, v48, v57, v48
	v_div_scale_f32 v89, null, v57, v57, v44
	v_div_fixup_f32 v52, v65, v81, v52
	v_fma_f32 v65, -v93, v86, v85
	v_fma_f32 v85, -v84, v68, v88
	v_mul_f32_e32 v91, v83, v82
	v_rcp_f32_e32 v92, v89
	v_fma_f32 v93, -v90, v78, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v68, v85, v79
	v_div_fmas_f32 v65, v65, v80, v86
	v_fma_f32 v80, -v87, v91, v83
	v_fmac_f32_e32 v78, v93, v78
	v_div_scale_f32 v85, s1, v43, v57, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v49, v65, v81, v49
	v_fma_f32 v86, -v89, v92, 1.0
	v_fma_f32 v65, -v84, v68, v88
	v_fmac_f32_e32 v91, v80, v82
	v_mul_f32_e32 v80, v85, v78
	v_div_scale_f32 v84, null, v57, v57, v39
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v81, s3, v44, v57, v44
	v_div_fmas_f32 v65, v65, v79, v68
	v_fma_f32 v68, -v87, v91, v83
	v_fma_f32 v79, -v90, v80, v85
	v_rcp_f32_e32 v83, v84
	v_div_scale_f32 v87, null, v57, v57, v40
	v_mul_f32_e32 v86, v81, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v68, v68, v82, v91
	v_fma_f32 v82, -v89, v86, v81
	v_div_fixup_f32 v47, v65, v57, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v84, v83, 1.0
	v_fma_f32 v65, -v90, v80, v85
	v_div_fixup_f32 v48, v68, v57, v48
	v_fmac_f32_e32 v86, v82, v92
	v_div_scale_f32 v68, s0, v39, v57, v39
	v_fmac_f32_e32 v83, v88, v83
	v_fma_f32 v82, -v87, v79, 1.0
	v_div_scale_f32 v85, null, v57, v57, v34
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v88, null, v57, v57, v35
	v_div_fmas_f32 v65, v65, v78, v80
	v_fma_f32 v78, -v89, v86, v81
	v_mul_f32_e32 v80, v68, v83
	v_fmac_f32_e32 v79, v82, v79
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v82, s1, v40, v57, v40
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v91, v88
	v_div_fmas_f32 v78, v78, v92, v86
	v_fma_f32 v86, -v84, v80, v68
	v_mul_f32_e32 v89, v82, v79
	v_div_fixup_f32 v43, v65, v57, v43
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v81, 1.0
	v_fmac_f32_e32 v80, v86, v83
	v_fma_f32 v65, -v87, v89, v82
	v_div_scale_f32 v86, null, v57, v57, v32
	v_div_fixup_f32 v44, v78, v57, v44
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v78, s2, v34, v57, v34
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v68, -v84, v80, v68
	v_fmac_f32_e32 v89, v65, v79
	v_rcp_f32_e32 v84, v86
	v_mul_f32_e32 v65, v78, v81
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s3, v35, v57, v35
	v_div_fmas_f32 v68, v68, v83, v80
	v_fma_f32 v80, -v87, v89, v82
	v_div_scale_f32 v92, null, v57, v57, v30
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v82, -v85, v65, v78
	v_mul_f32_e32 v83, v90, v91
	v_fma_f32 v87, -v86, v84, 1.0
	v_div_fmas_f32 v79, v80, v79, v89
	v_rcp_f32_e32 v80, v92
	v_fmac_f32_e32 v65, v82, v81
	v_fma_f32 v82, -v88, v83, v90
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v87, s0, v32, v57, v32
	v_div_fixup_f32 v39, v68, v57, v39
	v_div_fixup_f32 v40, v79, v57, v40
	v_fma_f32 v68, -v85, v65, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v83, v82, v91 :: v_dual_mul_f32 v78, v87, v84
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v57, v57, v28
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v85, s1, v30, v57, v30
	v_div_fmas_f32 v65, v68, v81, v65
	v_fma_f32 v68, -v88, v83, v90
	v_fma_f32 v81, -v86, v78, v87
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v88, null, v57, v57, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v81, v84
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v34, v65, v57, v34
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v68, v68, v91, v83
	v_mul_f32_e32 v83, v85, v80
	v_fma_f32 v65, -v86, v78, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v82, v79, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v35, v68, v57, v35
	v_fma_f32 v68, -v92, v83, v85
	v_div_scale_f32 v86, s2, v28, v57, v28
	v_fmac_f32_e32 v79, v89, v79
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_scale_f32 v89, null, v57, v57, v27
	v_div_fmas_f32 v65, v65, v84, v78
	v_fmac_f32_e32 v83, v68, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v87, v81
	v_rcp_f32_e32 v78, v89
	v_div_scale_f32 v87, null, v57, v57, v26
	v_mul_f32_e32 v68, v86, v79
	v_div_scale_f32 v84, s0, v29, v57, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v32, v65, v57, v32
	v_fma_f32 v65, -v92, v83, v85
	v_fma_f32 v85, -v82, v68, v86
	v_mul_f32_e32 v90, v84, v81
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v43, v43
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v65, v65, v80, v83
	v_fmac_f32_e32 v68, v85, v79
	v_fma_f32 v80, -v88, v90, v84
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v83, s1, v27, v57, v27
	v_fma_f32 v85, -v87, v91, 1.0
	v_div_fixup_f32 v30, v65, v57, v30
	v_fma_f32 v65, -v82, v68, v86
	v_fmac_f32_e32 v90, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v80, v83, v78 :: v_dual_fmac_f32 v91, v85, v91
	v_div_scale_f32 v85, null, v57, v57, v24
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v82, s3, v26, v57, v26
	v_div_fmas_f32 v65, v65, v79, v68
	v_fma_f32 v68, -v88, v90, v84
	v_fma_f32 v79, -v89, v80, v83
	v_rcp_f32_e32 v84, v85
	v_div_scale_f32 v88, null, v57, v57, v25
	v_mul_f32_e32 v86, v82, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v79, v88
	v_div_fmas_f32 v68, v68, v81, v90
	v_fma_f32 v81, -v87, v86, v82
	v_div_fixup_f32 v28, v65, v57, v28
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v84, 1.0
	v_fma_f32 v65, -v89, v80, v83
	v_div_fixup_f32 v29, v68, v57, v29
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v68, s0, v24, v57, v24
	v_fmac_f32_e32 v84, v90, v84
	v_fma_f32 v81, -v88, v79, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v89, null, v31, v31, v21
	v_div_fmas_f32 v65, v65, v78, v80
	v_fma_f32 v78, -v87, v86, v82
	v_dual_mul_f32 v80, v68, v84 :: v_dual_fmac_f32 v79, v81, v79
	v_div_scale_f32 v81, null, v31, v31, v23
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v82, s1, v25, v57, v25
	v_div_fmas_f32 v78, v78, v91, v86
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v86, -v85, v80, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v87, v82, v79
	v_div_fixup_f32 v27, v65, v57, v27
	v_div_fixup_f32 v26, v78, v57, v26
	v_rcp_f32_e32 v78, v89
	v_fmac_f32_e32 v80, v86, v84
	v_fma_f32 v65, -v88, v87, v82
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v91, null, v31, v31, v20
	v_fma_f32 v86, -v81, v83, 1.0
	v_fma_f32 v68, -v85, v80, v68
	v_div_scale_f32 v85, null, v31, v31, v22
	v_fmac_f32_e32 v87, v65, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v86, v83
	v_div_scale_f32 v65, s2, v23, v31, v23
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v90, -v89, v78, 1.0
	v_div_fmas_f32 v68, v68, v84, v80
	v_fma_f32 v80, -v88, v87, v82
	v_mul_f32_e32 v82, v65, v83
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v78, v90, v78
	v_div_scale_f32 v84, s0, v21, v31, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v81, v82, v65
	v_fma_f32 v88, -v85, v86, 1.0
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v79, v80, v79, v87
	v_mul_f32_e32 v92, v84, v78
	v_fmac_f32_e32 v82, v90, v83
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, s3, v22, v31, v22
	v_div_fixup_f32 v24, v68, v57, v24
	v_div_fixup_f32 v25, v79, v57, v25
	v_fma_f32 v57, -v81, v82, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v87, v88, v86
	v_div_scale_f32 v79, null, v31, v31, v19
	v_fma_f32 v80, -v89, v92, v84
	v_fma_f32 v68, -v91, v93, 1.0
	v_fma_f32 v65, -v85, v87, v88
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v44, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v92, v80, v78
	v_fmac_f32_e32 v93, v68, v93
	v_fmac_f32_e32 v87, v65, v86
	v_rcp_f32_e32 v65, v79
	v_div_scale_f32 v68, s1, v20, v31, v20
	v_div_fmas_f32 v57, v57, v83, v82
	v_fma_f32 v80, -v89, v92, v84
	v_div_scale_f32 v82, null, v31, v31, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v81, v68, v93
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v23, v57, v31, v23
	v_fma_f32 v83, -v79, v65, 1.0
	v_div_fmas_f32 v78, v80, v78, v92
	v_fma_f32 v80, -v85, v87, v88
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v85, -v91, v81, v68
	v_fmac_f32_e32 v65, v83, v65
	v_div_scale_f32 v83, s0, v19, v31, v19
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v81, v85, v93
	v_div_fmas_f32 v80, v80, v86, v87
	v_mul_f32_e32 v57, v83, v65
	v_div_fixup_f32 v21, v78, v31, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v82, v84, 1.0
	v_fma_f32 v68, -v91, v81, v68
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v85, -v79, v57, v83
	v_div_fixup_f32 v22, v80, v31, v22
	v_div_scale_f32 v80, null, v31, v31, v14
	v_fmac_f32_e32 v84, v78, v84
	v_div_scale_f32 v78, s2, v18, v31, v18
	v_div_fmas_f32 v68, v68, v93, v81
	v_fmac_f32_e32 v57, v85, v65
	v_rcp_f32_e32 v86, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v81, v78, v84
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v20, v68, v31, v20
	v_fma_f32 v68, -v79, v57, v83
	v_div_scale_f32 v85, null, v31, v31, v15
	v_fma_f32 v79, -v82, v81, v78
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v57, v68, v65, v57
	v_div_scale_f32 v65, null, v31, v31, v16
	v_fma_f32 v83, -v80, v86, 1.0
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v81, v79, v84
	v_rcp_f32_e32 v79, v65
	v_div_scale_f32 v68, s0, v14, v31, v14
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v83, null, v31, v31, v17
	v_div_fixup_f32 v19, v57, v31, v19
	v_fma_f32 v78, -v82, v81, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v85, v87, 1.0
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v65, v79, 1.0
	v_mul_f32_e32 v82, v68, v86
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v87, v57, v87
	v_div_scale_f32 v57, s1, v15, v31, v15
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v88, null, v31, v31, v13
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v81, -v80, v82, v68
	v_mul_f32_e32 v84, v57, v87
	v_div_scale_f32 v90, s2, v16, v31, v16
	v_fma_f32 v91, -v83, v89, 1.0
	v_rcp_f32_e32 v92, v88
	v_fmac_f32_e32 v82, v81, v86
	v_fma_f32 v81, -v85, v84, v57
	v_mul_f32_e32 v93, v90, v79
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s3, v17, v31, v17
	v_div_fixup_f32 v18, v78, v31, v18
	v_fma_f32 v68, -v80, v82, v68
	v_fmac_f32_e32 v84, v81, v87
	v_fma_f32 v78, -v65, v93, v90
	v_mul_f32_e32 v80, v91, v89
	v_fma_f32 v81, -v88, v92, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v57, -v85, v84, v57
	v_fmac_f32_e32 v93, v78, v79
	v_fma_f32 v78, -v83, v80, v91
	v_fmac_f32_e32 v92, v81, v92
	v_div_scale_f32 v81, s0, v13, v31, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v65, v93, v90
	v_fmac_f32_e32 v80, v78, v89
	v_div_fmas_f32 v68, v68, v86, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v78, v81, v92
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v82, null, v31, v31, v8
	v_div_fmas_f32 v57, v57, v87, v84
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v68, v31, v14
	v_div_fmas_f32 v65, v65, v79, v93
	v_fma_f32 v79, -v83, v80, v91
	v_fma_f32 v83, -v88, v78, v81
	v_rcp_f32_e32 v84, v82
	v_div_fixup_f32 v15, v57, v31, v15
	v_div_fixup_f32 v16, v65, v31, v16
	v_div_scale_f32 v65, null, v31, v31, v9
	v_fmac_f32_e32 v78, v83, v92
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v86, null, v31, v31, v12
	v_div_fmas_f32 v79, v79, v89, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v57, -v88, v78, v81
	v_fma_f32 v68, -v82, v84, 1.0
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v88, v86
	v_div_fixup_f32 v17, v79, v31, v17
	v_div_fmas_f32 v57, v57, v92, v78
	v_rcp_f32_e32 v78, v65
	v_fmac_f32_e32 v84, v68, v84
	v_div_scale_f32 v68, null, v31, v31, v10
	v_div_scale_f32 v79, null, v31, v31, v11
	v_div_scale_f32 v80, vcc_lo, v8, v31, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v81, v68
	v_rcp_f32_e32 v83, v79
	v_div_fixup_f32 v13, v57, v31, v13
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v65, v78, 1.0
	v_mul_f32_e32 v85, v80, v84
	v_fma_f32 v92, -v86, v88, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v78, v57, v78
	v_div_scale_f32 v57, s0, v9, v31, v9
	v_fma_f32 v87, -v68, v81, 1.0
	v_fma_f32 v90, -v79, v83, 1.0
	v_fma_f32 v89, -v82, v85, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v91, v57, v78 :: v_dual_fmac_f32 v88, v92, v88
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, s1, v10, v31, v10
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, s2, v11, v31, v11
	v_fmac_f32_e32 v85, v89, v84
	v_fma_f32 v89, -v65, v91, v57
	v_div_scale_f32 v92, s3, v12, v31, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v93, v87, v81 :: v_dual_mul_f32 v94, v90, v83
	v_fmac_f32_e32 v91, v89, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v95, v92, v88
	v_fma_f32 v80, -v82, v85, v80
	v_fma_f32 v82, -v68, v93, v87
	v_fma_f32 v89, -v79, v94, v90
	v_fma_f32 v57, -v65, v91, v57
	v_fma_f32 v65, -v86, v95, v92
	v_div_fmas_f32 v80, v80, v84, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v82, v81 :: v_dual_fmac_f32 v94, v89, v83
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v95, v65, v88
	v_div_fmas_f32 v57, v57, v78, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v68, -v68, v93, v87
	v_fma_f32 v65, -v79, v94, v90
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v78, -v86, v95, v92
	v_div_fixup_f32 v8, v80, v31, v8
	v_div_fmas_f32 v68, v68, v81, v93
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v9, v57, v31, v9
	v_div_fmas_f32 v65, v65, v83, v94
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v68, v31, v10
	v_div_fmas_f32 v78, v78, v88, v95
	s_mov_b32 s0, 0xc1000000
	v_div_fixup_f32 v11, v65, v31, v11
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v65, v71
	v_rndne_f32_e32 v71, v73
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v12, v78, v31, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v33
	v_rndne_f32_e32 v33, v36
	v_rndne_f32_e32 v36, v37
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v45
	v_rndne_f32_e32 v73, v74
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v74, v39
	v_cvt_i32_f32_e32 v92, v14
	v_cvt_i32_f32_e32 v97, v8
	v_and_b32_e32 v8, 15, v31
	v_and_b32_e32 v14, 15, v42
	v_and_b32_e32 v31, 15, v73
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v43, 15, v44
	v_and_b32_e32 v44, 15, v74
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	scratch_load_b64 v[73:74], off, off offset:16 ; 8-byte Folded Reload
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v32, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v64, v64, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v53
	v_rndne_f32_e32 v53, v56
	v_rndne_f32_e32 v56, v58
	v_rndne_f32_e32 v57, v59
	v_rndne_f32_e32 v58, v62
	v_rndne_f32_e32 v59, v63
	v_rndne_f32_e32 v62, v69
	v_rndne_f32_e32 v63, v70
	v_rndne_f32_e32 v68, v76
	v_rndne_f32_e32 v70, v75
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v20, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v75, v40
	v_cvt_i32_f32_e32 v78, v32
	v_and_b32_e32 v32, 15, v64
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v64, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v69, v77
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v83, v26
	v_cvt_i32_f32_e32 v93, v15
	v_cvt_i32_f32_e32 v98, v9
	v_and_b32_e32 v9, 15, v33
	v_and_b32_e32 v15, 15, v45
	v_and_b32_e32 v26, 15, v65
	v_and_b32_e32 v33, 15, v72
	v_and_b32_e32 v45, 15, v75
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v65, 10, v248
	v_lshlrev_b32_e32 v72, 6, v64
	v_lshlrev_b32_e32 v75, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v86, v23
	v_cvt_i32_f32_e32 v87, v21
	v_cvt_i32_f32_e32 v88, v22
	v_cvt_i32_f32_e32 v89, v20
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v65, 0, v65, v72
	v_and_or_b32 v4, 0x1b00, v75, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v79, v30
	v_cvt_i32_f32_e32 v80, v28
	v_cvt_i32_f32_e32 v81, v29
	v_cvt_i32_f32_e32 v94, v16
	v_cvt_i32_f32_e32 v95, v17
	v_cvt_i32_f32_e32 v96, v13
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v82, v27
	v_cvt_i32_f32_e32 v84, v24
	v_cvt_i32_f32_e32 v85, v25
	v_cvt_i32_f32_e32 v99, v10
	v_cvt_i32_f32_e32 v100, v11
	v_cvt_i32_f32_e32 v101, v12
	v_and_b32_e32 v10, 15, v36
	v_and_b32_e32 v11, 15, v37
	v_and_b32_e32 v12, 15, v38
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v20, 15, v56
	v_and_b32_e32 v21, 15, v57
	v_and_b32_e32 v22, 15, v58
	v_and_b32_e32 v23, 15, v59
	v_and_b32_e32 v24, 15, v62
	v_and_b32_e32 v25, 15, v63
	v_and_b32_e32 v27, 15, v68
	v_and_b32_e32 v40, 15, v47
	v_and_b32_e32 v41, 15, v48
	v_and_b32_e32 v56, 15, v86
	v_and_b32_e32 v57, 15, v87
	v_and_b32_e32 v58, 15, v88
	v_and_b32_e32 v59, 15, v89
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v4, v4, v246, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v76, v34
	v_cvt_i32_f32_e32 v77, v35
	v_cvt_i32_f32_e32 v90, v19
	v_cvt_i32_f32_e32 v91, v18
	v_and_b32_e32 v16, 15, v46
	v_and_b32_e32 v17, 15, v50
	v_and_b32_e32 v18, 15, v51
	v_and_b32_e32 v19, 15, v53
	v_and_b32_e32 v28, 15, v69
	v_and_b32_e32 v29, 15, v70
	v_and_b32_e32 v30, 15, v71
	v_and_b32_e32 v34, 15, v60
	v_and_b32_e32 v35, 15, v61
	v_and_b32_e32 v39, 15, v49
	v_and_b32_e32 v48, 15, v78
	v_and_b32_e32 v49, 15, v79
	v_and_b32_e32 v50, 15, v80
	v_and_b32_e32 v51, 15, v81
	v_and_b32_e32 v68, 15, v94
	v_and_b32_e32 v69, 15, v95
	v_and_b32_e32 v70, 15, v96
	v_and_b32_e32 v71, 15, v97
	v_and_b32_e32 v36, 15, v54
	v_and_b32_e32 v37, 15, v55
	v_and_b32_e32 v38, 15, v52
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v46, 15, v76
	v_and_b32_e32 v47, 15, v77
	v_and_b32_e32 v52, 15, v82
	v_and_b32_e32 v53, 15, v83
	v_and_b32_e32 v54, 15, v84
	v_and_b32_e32 v55, 15, v85
	v_and_b32_e32 v60, 15, v90
	v_and_b32_e32 v61, 15, v91
	v_and_b32_e32 v62, 15, v92
	v_and_b32_e32 v63, 15, v93
	v_and_b32_e32 v72, 15, v98
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v74, 15, v100
	v_and_b32_e32 v75, 15, v101
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s0, s0, 1
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 82 15 is_stmt 1               ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v73, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v73, 15, v99
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v65, v65, v7, v6
	ds_store_b128 v65, v[8:11]
	ds_store_b128 v65, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[16:19], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[24:27]
	ds_store_b128 v65, v[32:35] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v4
	ds_load_b128 v[32:35], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[40:43]
	ds_store_b128 v65, v[48:51] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v4
	ds_load_b128 v[48:51], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[56:59]
	ds_store_b128 v65, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v4
	ds_load_b128 v[68:71], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[12:15]
	ds_store_b128 v65, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[20:23], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[28:31]
	ds_store_b128 v65, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v4
	ds_load_b128 v[36:39], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[44:47]
	ds_store_b128 v65, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v4
	ds_load_b128 v[52:55], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[60:63]
	ds_store_b128 v65, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v4
	ds_load_b128 v[72:75], v4 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v16, 4, v6
	v_lshl_or_b32 v6, v17, 4, v7
	v_lshl_or_b32 v7, v18, 4, v8
	v_lshl_or_b32 v8, v19, 4, v9
	v_lshl_or_b32 v9, v20, 4, v10
	v_lshl_or_b32 v10, v21, 4, v11
	v_lshl_or_b32 v11, v22, 4, v12
	v_lshl_or_b32 v12, v23, 4, v13
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v35, 3, v67
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v36, s0, v66
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v32, 4, v24
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v35
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v12.l
	v_and_b16 v5.l, 0xff, v11.l
	v_lshlrev_b16 v6.l, 8, v10.l
	v_and_b16 v6.h, 0xff, v9.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v21, v48, 4, v40
	v_lshl_or_b32 v22, v49, 4, v41
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v28, v55, 4, v47
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v40, v38, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v2.l, 0xff, v15.l
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v4.l, 0xff, v13.l
	v_lshlrev_b16 v4.h, 8, v20.l
	v_and_b16 v5.l, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v23, v50, 4, v42
	v_lshl_or_b32 v24, v51, 4, v43
	v_lshl_or_b32 v25, v52, 4, v44
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v29, v68, 4, v56
	v_lshl_or_b32 v30, v69, 4, v57
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v37, v74, 4, v62
	v_lshl_or_b32 v39, v75, 4, v63
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v41, v36, s1, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v40, s[12:15], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v4.l, 0xff, v21.l
	v_lshlrev_b16 v4.h, 8, v28.l
	v_and_b16 v5.l, 0xff, v27.l
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	buffer_store_b64 v[7:8], v41, s[12:15], 0 offen
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_lshlrev_b16 v3.l, 8, v30.l
	v_and_b16 v4.l, 0xff, v29.l
	v_lshlrev_b16 v4.h, 8, v39.l
	v_and_b16 v5.l, 0xff, v37.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s2, s0, 5
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v31, v70, 4, v58
	v_lshl_or_b32 v32, v71, 4, v59
	v_lshl_or_b32 v33, v72, 4, v60
	v_lshl_or_b32 v34, v73, 4, v61
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v42, v36, s2, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v8.l, v6.h, v6.l
	v_or_b16 v9.l, v4.l, v3.l
	v_or_b16 v10.h, v5.l, v4.h
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v4, 2, v64
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	buffer_store_b64 v[7:8], v42, s[12:15], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v7, 2, v66
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s0, s0, 48
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.l, v1.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v36, v36, s0, v38
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.l, v6.h, v6.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v6, 0, v35
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v4, v4, v7, v35
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v0, 63, s34
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[9:10], v36, s[12:15], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s12, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
.Ltmp67:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp68:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 132
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
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 132
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26324
; TotalNumSgprs: 54
; NumVgprs: 256
; ScratchSize: 132
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 54
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x86 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x60 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x68:0x27 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x75:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x81:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 132
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 36
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
