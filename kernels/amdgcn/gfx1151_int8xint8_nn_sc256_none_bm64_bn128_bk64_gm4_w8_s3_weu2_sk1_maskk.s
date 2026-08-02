	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x30
	s_load_b32 s18, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v4, 7, v0
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v12, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 62, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v14, v0, 0, 1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v17, 1, v0
	v_lshrrev_b32_e32 v11, 4, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v12, 48, v12
	v_and_b32_e32 v66, 8, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v14, 0x420, v14
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v15, 48, v17
	v_and_b32_e32 v67, 32, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v68, v10, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v13, 6, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s31, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s30, 63
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
	s_mov_b64 s[12:13], s[22:23]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s15, s23
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v61, 0, v68
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_or_b32 v11, v11, 1, v15
	s_mov_b64 s[16:17], s[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_or_b32_e32 v15, 4, v11
	v_or_b32_e32 v16, 6, v11
	v_or_b32_e32 v18, 8, v11
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v19, 10, v11
	v_or_b32_e32 v20, 12, v11
	v_or_b32_e32 v22, 14, v11
	v_or_b32_e32 v24, 64, v11
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v25, 0x42, v11
	v_or_b32_e32 v26, 0x44, v11
	v_or_b32_e32 v27, 0x46, v11
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_u32_f32 s6, s6
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v28, 0x48, v11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_lshl_b32 s10, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s10
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s9, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s8, 0, s7
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s6, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v1, 4, v4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[5:6], null, s31, v2, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s8, s8, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s6, s8
	s_add_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_xor_b32 s6, s2, s9
	s_mul_i32 s8, s4, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s4, 1
	s_sub_i32 s11, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s8, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s19, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s7, s4, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s18, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s11, s7, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v6, s19, v2
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s14, s11, s9
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s5, s31, s19
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s30, s11, 7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s14
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s4, s4, 24
.Ltmp17:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add3_u32 v7, s30, s5, v5
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s10
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s8, s18, 63
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s9, s3, s4
.Ltmp20:
	.loc	1 400 23 is_stmt 1              ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v6
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s33, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s8, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s31, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s14, s22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	s_clause 0x1
	buffer_load_b128 v[29:32], v6, s[12:15], 0 offen
	buffer_load_b128 v[33:36], v5, s[12:15], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v5, 48, v10
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v6, s18, v3
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s33, s18
	.loc	1 356 32 is_stmt 1              ; generate_amdgcn.py:356:32
	v_or_b32_e32 v10, 0x4a, v11
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v8, s19, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v6, v6, v5, s3
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v8, s19, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s8, 0x7f
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s5, s19, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s34, s31, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s5, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s34, v7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s5, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s18, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s31, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	s_clause 0x1
	buffer_load_b128 v[37:40], v7, s[12:15], 0 offen
	buffer_load_b128 v[41:44], v9, s[12:15], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v12, v14, v2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v9, 3, v0
	v_lshlrev_b32_e32 v8, 5, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v14, 2, v11
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[45:48], v7, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v7, s5, v5
	s_mov_b32 s4, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v69, v13, 10, v12
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v12, 0x4c, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v7
	v_lshlrev_b32_e32 v7, 3, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v70, 0x90, v69
	v_xor_b32_e32 v71, 0x120, v69
	v_xor_b32_e32 v72, 0x1b0, v69
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v73, 0x210, v69
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v74, 0x330, v69
	v_xor_b32_e32 v75, 0x3a0, v69
	v_add_nc_u32_e32 v62, 0, v69
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s8, 0xbf
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[49:52], v6, s[20:23], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v6, 15, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v63, 0, v70
	v_add_nc_u32_e32 v64, 0, v71
	v_add_nc_u32_e32 v65, 0, v72
	v_add_nc_u32_e32 v76, 0, v73
	v_add_nc_u32_e32 v77, 0, v74
	v_add_nc_u32_e32 v78, 0, v75
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_or_b32 v21, v9, 16, v6
	v_lshlrev_b32_e32 v9, 3, v13
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v13, 0x4e, v11
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v23, 32, v21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v53, v33, v29, 0x5010400
	v_perm_b32 v33, v33, v29, 0x7030602
	v_perm_b32 v54, v34, v30, 0x5010400
	v_perm_b32 v34, v34, v30, 0x7030602
	v_perm_b32 v55, v35, v31, 0x5010400
	v_lshrrev_b32_e32 v58, 8, v53
	v_lshrrev_b32_e32 v59, 24, v53
	v_perm_b32 v35, v35, v31, 0x7030602
	v_perm_b32 v56, v36, v32, 0x5010400
	v_perm_b32 v57, v36, v32, 0x7030602
	v_lshrrev_b32_e32 v60, 8, v33
	v_and_b16 v29.l, 0xff, v53.l
	v_and_b16 v29.h, 0xff, v53.h
	v_lshrrev_b32_e32 v79, 24, v33
	v_lshlrev_b16 v53.l, 8, v58.l
	v_lshlrev_b16 v53.h, 8, v59.l
	v_lshrrev_b32_e32 v80, 8, v54
	v_lshrrev_b32_e32 v81, 24, v54
	v_lshrrev_b32_e32 v82, 8, v34
	v_lshrrev_b32_e32 v83, 24, v34
	v_lshrrev_b32_e32 v84, 8, v55
	v_lshrrev_b32_e32 v85, 24, v55
	v_lshrrev_b32_e32 v86, 8, v35
	v_lshrrev_b32_e32 v87, 24, v35
	v_lshrrev_b32_e32 v88, 8, v56
	v_lshrrev_b32_e32 v89, 24, v56
	v_lshrrev_b32_e32 v90, 8, v57
	v_lshrrev_b32_e32 v91, 24, v57
	v_and_b16 v30.l, 0xff, v33.l
	v_and_b16 v31.l, 0xff, v54.l
	v_lshlrev_b16 v54.l, 8, v60.l
	v_and_b16 v30.h, 0xff, v33.h
	v_and_b16 v31.h, 0xff, v54.h
	v_lshlrev_b16 v54.h, 8, v79.l
	v_or_b16 v29.l, v29.l, v53.l
	v_or_b16 v29.h, v29.h, v53.h
	v_and_b16 v32.l, 0xff, v34.l
	v_and_b16 v32.h, 0xff, v34.h
	v_and_b16 v33.l, 0xff, v55.l
	s_waitcnt vmcnt(2)
	v_perm_b32 v53, v41, v37, 0x5010400
	v_and_b16 v33.h, 0xff, v55.h
	v_and_b16 v34.l, 0xff, v35.l
	v_and_b16 v34.h, 0xff, v35.h
	v_and_b16 v35.l, 0xff, v56.l
	v_and_b16 v35.h, 0xff, v56.h
	v_and_b16 v36.l, 0xff, v57.l
	v_and_b16 v36.h, 0xff, v57.h
	v_lshlrev_b16 v55.l, 8, v80.l
	v_lshlrev_b16 v55.h, 8, v81.l
	v_lshlrev_b16 v56.l, 8, v82.l
	v_lshlrev_b16 v56.h, 8, v83.l
	v_lshlrev_b16 v57.l, 8, v84.l
	v_lshlrev_b16 v57.h, 8, v85.l
	v_lshlrev_b16 v58.l, 8, v86.l
	v_lshlrev_b16 v58.h, 8, v87.l
	v_lshlrev_b16 v59.l, 8, v88.l
	v_lshlrev_b16 v59.h, 8, v89.l
	v_lshlrev_b16 v60.l, 8, v90.l
	v_lshlrev_b16 v60.h, 8, v91.l
	v_perm_b32 v37, v41, v37, 0x7030602
	v_or_b16 v30.l, v30.l, v54.l
	v_perm_b32 v41, v42, v38, 0x5010400
	v_perm_b32 v38, v42, v38, 0x7030602
	v_perm_b32 v42, v43, v39, 0x5010400
	v_perm_b32 v39, v43, v39, 0x7030602
	v_perm_b32 v43, v44, v40, 0x5010400
	v_perm_b32 v40, v44, v40, 0x7030602
	v_or_b16 v30.h, v30.h, v54.h
	v_lshrrev_b32_e32 v44, 8, v53
	v_or_b16 v31.l, v31.l, v55.l
	v_or_b16 v31.h, v31.h, v55.h
	v_or_b16 v32.l, v32.l, v56.l
	v_or_b16 v32.h, v32.h, v56.h
	v_or_b16 v33.l, v33.l, v57.l
	v_or_b16 v33.h, v33.h, v57.h
	v_or_b16 v34.l, v34.l, v58.l
	v_or_b16 v34.h, v34.h, v58.h
	v_or_b16 v35.l, v35.l, v59.l
	v_or_b16 v35.h, v35.h, v59.h
	v_or_b16 v36.l, v36.l, v60.l
	v_or_b16 v36.h, v36.h, v60.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v61, v[45:48] offset:16384
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v62, v29
	ds_store_b16_d16_hi v62, v29 offset:64
	ds_store_b16 v63, v30
	ds_store_b16_d16_hi v63, v30 offset:64
	ds_store_b16 v64, v31
	ds_store_b16_d16_hi v64, v31 offset:64
	ds_store_b16 v65, v32
	ds_store_b16_d16_hi v65, v32 offset:64
	ds_store_b16 v76, v33
	ds_store_b16_d16_hi v76, v33 offset:64
	ds_store_b16 v62, v34 offset:640
	ds_store_b16_d16_hi v62, v34 offset:704
	ds_store_b16 v77, v35
	ds_store_b16_d16_hi v77, v35 offset:64
	ds_store_b16 v78, v36
	ds_store_b16_d16_hi v78, v36 offset:64
	v_lshrrev_b32_e32 v45, 24, v53
	v_lshrrev_b32_e32 v46, 8, v37
	v_lshrrev_b32_e32 v47, 24, v37
	v_and_b16 v29.l, 0xff, v53.l
	v_and_b16 v29.h, 0xff, v53.h
	v_and_b16 v31.l, 0xff, v41.l
	v_lshrrev_b32_e32 v48, 8, v41
	v_lshrrev_b32_e32 v53, 24, v41
	v_and_b16 v31.h, 0xff, v41.h
	v_lshrrev_b32_e32 v41, 8, v38
	v_lshrrev_b32_e32 v54, 24, v38
	v_and_b16 v33.l, 0xff, v42.l
	v_lshrrev_b32_e32 v55, 8, v42
	v_lshrrev_b32_e32 v56, 24, v42
	v_and_b16 v33.h, 0xff, v42.h
	v_lshrrev_b32_e32 v42, 8, v39
	v_lshrrev_b32_e32 v57, 24, v39
	v_lshrrev_b32_e32 v58, 8, v43
	v_lshrrev_b32_e32 v59, 24, v43
	v_lshrrev_b32_e32 v60, 8, v40
	v_lshrrev_b32_e32 v79, 24, v40
	v_and_b16 v30.l, 0xff, v37.l
	v_lshlrev_b16 v37.l, 8, v44.l
	v_and_b16 v30.h, 0xff, v37.h
	v_lshlrev_b16 v37.h, 8, v45.l
	v_and_b16 v32.l, 0xff, v38.l
	v_lshlrev_b16 v38.l, 8, v46.l
	v_and_b16 v32.h, 0xff, v38.h
	v_lshlrev_b16 v38.h, 8, v47.l
	v_and_b16 v34.l, 0xff, v39.l
	v_and_b16 v34.h, 0xff, v39.h
	v_and_b16 v35.l, 0xff, v43.l
	v_and_b16 v35.h, 0xff, v43.h
	v_and_b16 v36.l, 0xff, v40.l
	v_and_b16 v36.h, 0xff, v40.h
	v_lshlrev_b16 v39.l, 8, v48.l
	v_lshlrev_b16 v39.h, 8, v53.l
	v_lshlrev_b16 v40.l, 8, v41.l
	v_lshlrev_b16 v40.h, 8, v54.l
	v_lshlrev_b16 v41.l, 8, v55.l
	v_lshlrev_b16 v41.h, 8, v56.l
	v_lshlrev_b16 v42.l, 8, v42.l
	v_lshlrev_b16 v42.h, 8, v57.l
	v_lshlrev_b16 v43.l, 8, v58.l
	v_lshlrev_b16 v43.h, 8, v59.l
	v_lshlrev_b16 v44.l, 8, v60.l
	v_lshlrev_b16 v44.h, 8, v79.l
	v_or_b16 v29.l, v29.l, v37.l
	v_or_b16 v29.h, v29.h, v37.h
	v_or_b16 v30.l, v30.l, v38.l
	v_or_b16 v30.h, v30.h, v38.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v31.l, v31.l, v39.l
	v_or_b16 v31.h, v31.h, v39.h
	v_or_b16 v32.l, v32.l, v40.l
	v_or_b16 v32.h, v32.h, v40.h
	v_or_b16 v33.l, v33.l, v41.l
	v_or_b16 v33.h, v33.h, v41.h
	v_or_b16 v34.l, v34.l, v42.l
	v_or_b16 v34.h, v34.h, v42.h
	v_or_b16 v35.l, v35.l, v43.l
	v_or_b16 v35.h, v35.h, v43.h
	v_or_b16 v36.l, v36.l, v44.l
	v_or_b16 v36.h, v36.h, v44.h
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v61, v[49:52] offset:20480
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b16 v62, v29 offset:8192
	ds_store_b16_d16_hi v62, v29 offset:8256
	ds_store_b16 v63, v30 offset:8192
	ds_store_b16_d16_hi v63, v30 offset:8256
	ds_store_b16 v64, v31 offset:8192
	ds_store_b16_d16_hi v64, v31 offset:8256
	ds_store_b16 v65, v32 offset:8192
	ds_store_b16_d16_hi v65, v32 offset:8256
	ds_store_b16 v76, v33 offset:8192
	ds_store_b16_d16_hi v76, v33 offset:8256
	ds_store_b16 v62, v34 offset:8832
	ds_store_b16_d16_hi v62, v34 offset:8896
	ds_store_b16 v77, v35 offset:8192
	ds_store_b16_d16_hi v77, v35 offset:8256
	ds_store_b16 v78, v36 offset:8192
	ds_store_b16_d16_hi v78, v36 offset:8256
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v29, 0x430, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v78, 8, v0
	v_and_b32_e32 v79, 32, v0
	v_and_b32_e32 v76, 0x800, v8
	v_lshl_or_b32 v77, v4, 6, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v62, v6, 6, v29
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v63, 16, v62
	v_xor_b32_e32 v65, 32, v62
	v_xor_b32_e32 v64, 48, v62
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
.LBB0_3:                                ; %Flow167
	s_load_b64 s[28:29], s[0:1], 0x20
	v_or_b32_e32 v29, s33, v21
	v_or_b32_e32 v30, s33, v23
	s_ashr_i32 s0, s9, 8
	v_or_b32_e32 v59, s30, v11
	v_or_b32_e32 v58, s30, v14
	v_mul_lo_u32 v60, v29, s0
	v_mul_lo_u32 v61, v30, s0
	v_or_b32_e32 v57, s30, v15
	v_or_b32_e32 v56, s30, v16
	v_or_b32_e32 v55, s30, v18
	v_or_b32_e32 v54, s30, v19
	v_or_b32_e32 v53, s30, v20
	v_or_b32_e32 v52, s30, v22
	v_or_b32_e32 v51, s30, v24
	v_or_b32_e32 v50, s30, v25
	v_or_b32_e32 v49, s30, v26
	v_or_b32_e32 v48, s30, v27
	v_or_b32_e32 v46, s30, v28
	v_or_b32_e32 v47, s30, v10
	v_or_b32_e32 v18, s30, v12
	v_or_b32_e32 v19, s30, v13
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v10, v0, 5, 1
	v_bfe_i32 v11, v0, 3, 1
	v_dual_mov_b32 v20, 0 :: v_dual_and_b32 v7, 0x430, v7
	v_and_b32_e32 v76, 0x800, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v10, 0x420, v10
	v_lshl_or_b32 v77, v4, 6, v9
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v8, s19, v2
	v_lshl_or_b32 v62, v6, 6, v7
	s_lshl_b32 s4, s7, 7
	v_and_or_b32 v4, 0x210, v11, v10
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s8, 6
.Ltmp22:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add_nc_u32_e32 v6, 0x81, v8
	v_add_nc_u32_e32 v7, 0x80, v8
	v_or_b32_e32 v85, 0x80, v2
	v_xor_b32_e32 v4, v4, v77
	v_or_b32_e32 v86, 0x80, v5
	v_xor_b32_e32 v63, 16, v62
	v_xor_b32_e32 v65, 32, v62
	v_xor_b32_e32 v64, 48, v62
	v_or_b32_e32 v78, v4, v76
	v_mul_lo_u32 v4, s31, v6
	v_mul_lo_u32 v6, s31, v7
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v11, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v79, 16, v78
	v_xor_b32_e32 v80, 32, v78
	v_xor_b32_e32 v81, 48, v78
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_add3_u32 v4, v4, s4, v1
	v_add3_u32 v1, v6, s4, v1
	s_lshl_b32 s4, s6, 7
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v82, s4, v4
	v_subrev_nc_u32_e32 v83, s4, v1
	s_mov_b32 s4, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v3, s33, v3
	v_mov_b32_e32 v33, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v39, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v3, s18, v3
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_add3_u32 v84, v3, v5, 0x80
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v12, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_and_b32 s41, s17, 0xffff
	s_mov_b32 s40, s16
	s_add_i32 s27, s1, -2
	s_add_i32 s26, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s35, 0, 0x2000
	s_mov_b32 s44, 1
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s5, s19
	.loc	1 418 29 is_stmt 1              ; generate_amdgcn.py:418:29
	s_ashr_i32 s6, s19, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_add_nc_u32_e32 v87, s5, v86
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_add_nc_u32_e32 v88, s5, v85
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v89, s5, v84
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s6, s6, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s19, s6
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v87
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s6, s6, 8
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s6, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v90, v61, s6, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v87, 0x80000000, v89, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v88
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v89, v60, s6, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s6, s6, s31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 422 22 is_stmt 0              ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v91, v58, s6, 1
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v88, 0x80000000, v83, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[119:122], v87, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v87, 0x80000000, v82, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[123:126], v88, s[12:15], 0 offen
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[127:130], v87, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v88, v59, s6, 1
	v_add_lshl_u32 v92, v57, s6, 1
	v_add_lshl_u32 v93, v56, s6, 1
	v_add_lshl_u32 v94, v55, s6, 1
	v_add_lshl_u32 v95, v54, s6, 1
	v_add_lshl_u32 v96, v53, s6, 1
	v_add_lshl_u32 v97, v52, s6, 1
	v_add_lshl_u32 v98, v51, s6, 1
	v_add_lshl_u32 v99, v50, s6, 1
	v_add_lshl_u32 v100, v49, s6, 1
	v_add_lshl_u32 v101, v48, s6, 1
	v_add_lshl_u32 v102, v46, s6, 1
	v_add_lshl_u32 v103, v47, s6, 1
	v_add_lshl_u32 v104, v18, s6, 1
	v_add_lshl_u32 v105, v19, s6, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_dual_cndmask_b32 v87, 0x80000000, v88 :: v_dual_cndmask_b32 v88, 0x80000000, v91
	v_dual_cndmask_b32 v91, 0x80000000, v92 :: v_dual_cndmask_b32 v92, 0x80000000, v93
	v_dual_cndmask_b32 v93, 0x80000000, v94 :: v_dual_cndmask_b32 v94, 0x80000000, v95
	v_dual_cndmask_b32 v95, 0x80000000, v96 :: v_dual_cndmask_b32 v96, 0x80000000, v97
	v_dual_cndmask_b32 v97, 0x80000000, v98 :: v_dual_cndmask_b32 v98, 0x80000000, v99
	v_dual_cndmask_b32 v99, 0x80000000, v100 :: v_dual_cndmask_b32 v100, 0x80000000, v101
	v_dual_cndmask_b32 v101, 0x80000000, v102 :: v_dual_cndmask_b32 v102, 0x80000000, v103
	v_dual_cndmask_b32 v103, 0x80000000, v104 :: v_dual_cndmask_b32 v104, 0x80000000, v105
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v187, v89, s[36:39], 0 offen
	buffer_load_u16 v188, v90, s[36:39], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0xf
	buffer_load_u16 v189, v88, s[40:43], 0 offen
	buffer_load_u16 v190, v87, s[40:43], 0 offen
	buffer_load_u16 v191, v92, s[40:43], 0 offen
	buffer_load_u16 v192, v91, s[40:43], 0 offen
	buffer_load_u16 v193, v94, s[40:43], 0 offen
	buffer_load_u16 v194, v93, s[40:43], 0 offen
	buffer_load_u16 v195, v96, s[40:43], 0 offen
	buffer_load_u16 v196, v95, s[40:43], 0 offen
	buffer_load_u16 v197, v98, s[40:43], 0 offen
	buffer_load_u16 v198, v97, s[40:43], 0 offen
	buffer_load_u16 v199, v100, s[40:43], 0 offen
	buffer_load_u16 v200, v99, s[40:43], 0 offen
	buffer_load_u16 v201, v102, s[40:43], 0 offen
	buffer_load_u16 v202, v101, s[40:43], 0 offen
	buffer_load_u16 v203, v104, s[40:43], 0 offen
	buffer_load_u16 v204, v103, s[40:43], 0 offen
	s_mov_b32 s6, s26
	s_mov_b32 s26, s1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v87, s6, v62
	v_add_nc_u32_e32 v88, s6, v63
	s_mov_b32 s1, s4
	v_add_nc_u32_e32 v89, s6, v65
	v_add_nc_u32_e32 v90, s6, v64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v91, s1, v78
	v_add_nc_u32_e32 v92, s1, v79
	v_add_nc_u32_e32 v93, s1, v80
	v_add_nc_u32_e32 v94, s1, v81
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[103:106], v87
	ds_load_b128 v[131:134], v87 offset:2048
	ds_load_b128 v[135:138], v88
	ds_load_b128 v[139:142], v88 offset:2048
	ds_load_b128 v[143:146], v89
	ds_load_b128 v[147:150], v89 offset:2048
	ds_load_b128 v[151:154], v90
	ds_load_b128 v[155:158], v90 offset:2048
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[111:114], v91
	ds_load_b128 v[159:162], v91 offset:4096
	ds_load_b128 v[163:166], v92
	ds_load_b128 v[167:170], v92 offset:4096
	ds_load_b128 v[171:174], v93
	ds_load_b128 v[175:178], v93 offset:4096
	ds_load_b128 v[179:182], v94
	ds_load_b128 v[183:186], v94 offset:4096
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s44, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s1, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s44, s1, 0
	s_mov_b32 s4, s35
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s6, s44, 12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s27, s27, -1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s7, s6, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s19, s19, 64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s35, s7, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s7, 0x4000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[87:94], v[111:114], v[103:106], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[159:162], v[103:106], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[111:114], v[131:134], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[87:94], v[163:166], v[135:138], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[167:170], v[135:138], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[159:162], v[131:134], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[163:166], v[139:142], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[171:174], v[143:146], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[175:178], v[143:146], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[167:170], v[139:142], v[111:118] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s27, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[103:110], v[171:174], v[147:150], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[179:182], v[151:154], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[183:186], v[151:154], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[175:178], v[147:150], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[179:182], v[155:158], v[103:110] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v134, v90
	v_cvt_f32_i32_e32 v135, v91
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v137, v93
	v_cvt_f32_i32_e32 v140, v96
	v_cvt_f32_i32_e32 v143, v99
	v_cvt_f32_i32_e32 v131, v87
	v_cvt_f32_i32_e32 v141, v97
	v_cvt_f32_i32_e32 v132, v88
	v_cvt_f32_i32_e32 v138, v94
	v_cvt_f32_i32_e32 v139, v95
	v_cvt_f32_i32_e32 v133, v89
	v_cvt_f32_i32_e32 v142, v98
	v_cvt_f32_i32_e32 v144, v100
	v_cvt_f32_i32_e32 v145, v101
	v_wmma_i32_16x16x16_iu8 v[111:118], v[183:186], v[155:158], v[111:118] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v146, v102
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(18)
	v_perm_b32 v90, v128, v124, 0x5010400
	v_perm_b32 v91, v128, v124, 0x7030602
	v_perm_b32 v92, v129, v125, 0x5010400
	v_perm_b32 v93, v129, v125, 0x7030602
	v_perm_b32 v94, v130, v126, 0x5010400
	v_perm_b32 v95, v130, v126, 0x7030602
	v_perm_b32 v88, v127, v123, 0x5010400
	v_perm_b32 v89, v127, v123, 0x7030602
	v_lshrrev_b32_e32 v150, 8, v90
	v_lshrrev_b32_e32 v151, 24, v90
	v_lshrrev_b32_e32 v152, 8, v91
	v_lshrrev_b32_e32 v130, 8, v88
	v_lshrrev_b32_e32 v147, 24, v88
	v_lshrrev_b32_e32 v148, 8, v89
	v_lshrrev_b32_e32 v149, 24, v89
	v_and_b16 v87.l, 0xff, v88.l
	v_and_b16 v88.l, 0xff, v89.l
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v96, 16, v187
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v89.l, 0xff, v90.l
	v_and_b16 v90.l, 0xff, v91.l
	v_lshrrev_b32_e32 v153, 24, v91
	v_and_b16 v91.l, 0xff, v92.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v101, 16, v192
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v154, 8, v92
	v_lshrrev_b32_e32 v155, 24, v92
	v_and_b16 v92.l, 0xff, v93.l
	v_lshrrev_b32_e32 v156, 8, v93
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v166, v101, v96
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v157, 24, v93
	v_and_b16 v93.l, 0xff, v94.l
	v_lshrrev_b32_e32 v158, 8, v94
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v126, 16, v201
	v_lshlrev_b32_e32 v123, 16, v198
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v159, 24, v94
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v129, 16, v204
	v_lshlrev_b32_e32 v124, 16, v199
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v180, v126, v96 :: v_dual_lshlrev_b32 v99, 16, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v181, v129, v96 :: v_dual_lshlrev_b32 v128, 16, v203
	v_mul_f32_e32 v178, v124, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v162, v99, v96
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v97, 16, v188
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v175, v123, v96 :: v_dual_add_nc_u32 v210, s35, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v15, v180, v144 :: v_dual_fmac_f32 v20, v162, v131
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v205, s7, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v129, v97, v129
	v_mul_f32_e32 v124, v97, v124
	v_dual_mul_f32 v123, v97, v123 :: v_dual_lshlrev_b32 v98, 16, v189
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v205, v[119:122] offset:16384
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v119, 16, v194
	v_lshlrev_b32_e32 v120, 16, v195
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v182, v128, v96 :: v_dual_lshlrev_b32 v127, 16, v202
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v102, 16, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v170, v119, v96
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v125, 16, v200
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v163, v98, v96 :: v_dual_lshlrev_b32 v122, 16, v197
	v_dual_mul_f32 v174, v120, v96 :: v_dual_add_nc_u32 v83, s34, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v38, v170, v135
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v100, 16, v191
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v177, v125, v96 :: v_dual_add_nc_u32 v212, s35, v75
	v_dual_mul_f32 v125, v97, v125 :: v_dual_add_nc_u32 v82, s34, v82
	v_mul_f32_e32 v119, v97, v119
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v167, v100, v96
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v121, 16, v196
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v120, v97, v120 :: v_dual_add_nc_u32 v207, s35, v70
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v94.l, 0xff, v95.l
	v_lshrrev_b32_e32 v160, 8, v95
	v_lshrrev_b32_e32 v161, 24, v95
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v164, v97, v98
	v_mul_f32_e32 v165, v97, v99
	v_mul_f32_e32 v168, v97, v100
	v_mul_f32_e32 v179, v127, v96
	v_dual_mul_f32 v171, v102, v96 :: v_dual_mul_f32 v172, v97, v102
	v_mul_f32_e32 v127, v97, v127
	v_dual_mul_f32 v176, v122, v96 :: v_dual_add_nc_u32 v211, s35, v74
	v_mul_f32_e32 v122, v97, v122
	v_dual_mul_f32 v128, v97, v128 :: v_dual_fmac_f32 v37, v168, v106
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b16 v95.l, 8, v130.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v45, v163, v132
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v126, v97, v126 :: v_dual_add_nc_u32 v209, s35, v72
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v42, v166, v133
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v169, v97, v101 :: v_dual_fmac_f32 v44, v167, v134
	v_dual_mul_f32 v173, v121, v96 :: v_dual_add_nc_u32 v206, s35, v69
	v_dual_mul_f32 v121, v97, v121 :: v_dual_add_nc_u32 v208, s35, v71
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b16 v87.h, 0xff, v88.h
	v_and_b16 v88.h, 0xff, v89.h
	v_and_b16 v89.h, 0xff, v90.h
	v_and_b16 v90.h, 0xff, v91.h
	v_and_b16 v91.h, 0xff, v92.h
	v_and_b16 v92.h, 0xff, v93.h
	v_and_b16 v93.h, 0xff, v94.h
	v_and_b16 v94.h, 0xff, v95.h
	v_lshlrev_b16 v95.h, 8, v147.l
	v_lshlrev_b16 v96.l, 8, v148.l
	v_lshlrev_b16 v96.h, 8, v149.l
	v_lshlrev_b16 v97.l, 8, v150.l
	v_lshlrev_b16 v97.h, 8, v151.l
	v_lshlrev_b16 v98.l, 8, v152.l
	v_lshlrev_b16 v98.h, 8, v153.l
	v_lshlrev_b16 v99.l, 8, v154.l
	v_lshlrev_b16 v99.h, 8, v155.l
	v_lshlrev_b16 v100.l, 8, v156.l
	v_lshlrev_b16 v100.h, 8, v157.l
	v_lshlrev_b16 v101.l, 8, v158.l
	v_lshlrev_b16 v101.h, 8, v159.l
	v_lshlrev_b16 v102.l, 8, v160.l
	v_lshlrev_b16 v102.h, 8, v161.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v40, v171, v136 :: v_dual_fmac_f32 v11, v181, v145
	v_fmac_f32_e32 v34, v173, v137
	v_dual_fmac_f32 v36, v174, v138 :: v_dual_fmac_f32 v43, v165, v103
	v_dual_fmac_f32 v30, v175, v139 :: v_dual_fmac_f32 v41, v164, v104
	v_dual_fmac_f32 v32, v176, v140 :: v_dual_fmac_f32 v39, v169, v105
	v_dual_fmac_f32 v26, v177, v141 :: v_dual_fmac_f32 v35, v119, v107
	v_dual_fmac_f32 v28, v178, v142 :: v_dual_fmac_f32 v33, v172, v108
	v_dual_fmac_f32 v16, v179, v143 :: v_dual_fmac_f32 v31, v121, v109
	v_dual_fmac_f32 v10, v182, v146 :: v_dual_fmac_f32 v27, v123, v111
	v_dual_fmac_f32 v29, v120, v110 :: v_dual_fmac_f32 v24, v125, v113
	v_dual_fmac_f32 v25, v122, v112 :: v_dual_fmac_f32 v22, v124, v114
	v_dual_fmac_f32 v14, v127, v115 :: v_dual_fmac_f32 v13, v126, v116
	v_dual_fmac_f32 v12, v129, v117 :: v_dual_fmac_f32 v9, v128, v118
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b16 v87.l, v87.l, v95.l
	v_or_b16 v87.h, v87.h, v95.h
	v_or_b16 v88.l, v88.l, v96.l
	v_or_b16 v88.h, v88.h, v96.h
	v_or_b16 v89.l, v89.l, v97.l
	v_or_b16 v89.h, v89.h, v97.h
	v_or_b16 v90.l, v90.l, v98.l
	v_or_b16 v90.h, v90.h, v98.h
	v_or_b16 v91.l, v91.l, v99.l
	v_or_b16 v91.h, v91.h, v99.h
	v_or_b16 v92.l, v92.l, v100.l
	v_or_b16 v92.h, v92.h, v100.h
	v_or_b16 v93.l, v93.l, v101.l
	v_or_b16 v93.h, v93.h, v101.h
	v_or_b16 v94.l, v94.l, v102.l
	v_or_b16 v94.h, v94.h, v102.h
	ds_store_b16 v206, v87
	ds_store_b16_d16_hi v206, v87 offset:64
	ds_store_b16 v207, v88
	ds_store_b16_d16_hi v207, v88 offset:64
	ds_store_b16 v208, v89
	ds_store_b16_d16_hi v208, v89 offset:64
	ds_store_b16 v209, v90
	ds_store_b16_d16_hi v209, v90 offset:64
	ds_store_b16 v210, v91
	ds_store_b16_d16_hi v210, v91 offset:64
	ds_store_b16 v206, v92 offset:640
	ds_store_b16_d16_hi v206, v92 offset:704
	ds_store_b16 v211, v93
	ds_store_b16_d16_hi v211, v93 offset:64
	ds_store_b16 v212, v94
	ds_store_b16_d16_hi v212, v94 offset:64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v78, v66 :: v_dual_mov_b32 v79, v67
	s_addk_i32 s5, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v20, 0
	s_add_i32 s26, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s35, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v78
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v73, 0
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v79
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_mov_b32_e32 v74, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v5, 0
	v_mov_b32_e32 v6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v1, v1, v2
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_xor_b32_e32 v1, v1, v77
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v79, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v138, v1, v76
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v83, 0
	v_xor_b32_e32 v139, 16, v138
	v_xor_b32_e32 v142, 32, v138
	v_xor_b32_e32 v140, 48, v138
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v4, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s8, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v71, s4, v138
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v81, s26, v62
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v99, s15 :: v_dual_add_nc_u32 v80, s4, v139
	v_dual_mov_b32 v97, s13 :: v_dual_add_nc_u32 v82, s26, v65
	v_mov_b32_e32 v94, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[67:70], v71 offset:4096
	ds_load_b128 v[71:74], v71
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v92, s8 :: v_dual_add_nc_u32 v83, s26, v63
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[75:78], v81 offset:2048
	ds_load_b128 v[88:91], v81
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v80 offset:4096
	ds_load_b128 v[120:123], v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v98, s14 :: v_dual_add_nc_u32 v5, s4, v142
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[124:127], v82 offset:2048
	ds_load_b128 v[128:131], v82
	ds_load_b128 v[132:135], v83 offset:2048
	ds_load_b128 v[143:146], v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v96, s12 :: v_dual_add_nc_u32 v79, s4, v140
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v5 offset:4096
	ds_load_b128 v[5:8], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v95, s11 :: v_dual_add_nc_u32 v80, s26, v64
	v_mov_b32_e32 v93, s9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[151:154], v79
	ds_load_b128 v[155:158], v79 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[159:162], v80 offset:2048
	ds_load_b128 v[147:150], v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[71:74], v[75:78], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[71:74], v[88:91], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[67:70], v[88:91], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[67:70], v[75:78], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[120:123], v[143:146], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[120:123], v[132:135], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[116:119], v[143:146], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[116:119], v[132:135], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[5:8], v[128:131], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[5:8], v[124:127], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[1:4], v[128:131], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[1:4], v[124:127], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[151:154], v[147:150], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[151:154], v[159:162], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[155:158], v[147:150], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[155:158], v[159:162], v[92:99] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v72, v81
	v_cvt_f32_i32_e32 v69, v82
	v_cvt_f32_i32_e32 v73, v83
	v_cvt_f32_i32_e32 v70, v84
	v_cvt_f32_i32_e32 v74, v85
	v_cvt_f32_i32_e32 v71, v86
	v_cvt_f32_i32_e32 v75, v87
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v78, v101
	v_cvt_f32_i32_e32 v77, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v6, v104
	v_cvt_f32_i32_e32 v5, v105
	v_cvt_f32_i32_e32 v2, v106
	v_cvt_f32_i32_e32 v1, v107
	v_cvt_f32_i32_e32 v82, v108
	v_cvt_f32_i32_e32 v88, v109
	v_cvt_f32_i32_e32 v86, v110
	v_cvt_f32_i32_e32 v91, v111
	v_cvt_f32_i32_e32 v81, v112
	v_cvt_f32_i32_e32 v85, v113
	v_cvt_f32_i32_e32 v83, v114
	v_cvt_f32_i32_e32 v89, v115
	v_cvt_f32_i32_e32 v84, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v87, v94
	v_cvt_f32_i32_e32 v92, v95
	v_cvt_f32_i32_e32 v8, v96
	v_cvt_f32_i32_e32 v7, v97
	v_cvt_f32_i32_e32 v4, v98
	v_cvt_f32_i32_e32 v3, v99
	v_cvt_f32_i32_e32 v80, v80
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s19, 31
	s_mov_b32 s27, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s26, 0x7ffffffe
	s_add_i32 s4, s19, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s26
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v67, v60, s4, 1
	v_add_lshl_u32 v68, v61, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s6, -1, 0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s4, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v93, v59, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_cndmask_b32 v68, 0x80000000, v68
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v94, v58, s4, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s25, s25, 0xffff
	s_clause 0x1
	buffer_load_u16 v136, v67, s[24:27], 0 offen
	buffer_load_u16 v137, v68, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v67, v57, s4, 1
	v_dual_cndmask_b32 v68, 0x80000000, v93 :: v_dual_cndmask_b32 v93, 0x80000000, v94
	v_add_lshl_u32 v94, v56, s4, 1
	v_add_lshl_u32 v95, v55, s4, 1
	v_add_lshl_u32 v96, v54, s4, 1
	v_add_lshl_u32 v97, v53, s4, 1
	v_add_lshl_u32 v98, v52, s4, 1
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_add_lshl_u32 v99, v51, s4, 1
	s_and_b32 s17, s17, 0xffff
	v_add_lshl_u32 v100, v50, s4, 1
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_add_lshl_u32 v101, v49, s4, 1
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	s_clause 0x7
	buffer_load_u16 v141, v68, s[16:19], 0 offen
	buffer_load_u16 v143, v93, s[16:19], 0 offen
	buffer_load_u16 v134, v67, s[16:19], 0 offen
	buffer_load_u16 v135, v94, s[16:19], 0 offen
	buffer_load_u16 v132, v95, s[16:19], 0 offen
	buffer_load_u16 v133, v96, s[16:19], 0 offen
	buffer_load_u16 v130, v97, s[16:19], 0 offen
	buffer_load_u16 v131, v98, s[16:19], 0 offen
	v_add_lshl_u32 v94, v48, s4, 1
	v_add_lshl_u32 v95, v46, s4, 1
	v_dual_cndmask_b32 v67, 0x80000000, v99 :: v_dual_cndmask_b32 v68, 0x80000000, v100
	v_add_lshl_u32 v96, v47, s4, 1
	v_add_lshl_u32 v97, v18, s4, 1
	v_add_lshl_u32 v98, v19, s4, 1
	v_dual_cndmask_b32 v93, 0x80000000, v101 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	s_clause 0x7
	buffer_load_u16 v128, v67, s[16:19], 0 offen
	buffer_load_u16 v129, v68, s[16:19], 0 offen
	buffer_load_u16 v126, v93, s[16:19], 0 offen
	buffer_load_u16 v127, v94, s[16:19], 0 offen
	buffer_load_u16 v124, v95, s[16:19], 0 offen
	buffer_load_u16 v125, v96, s[16:19], 0 offen
	buffer_load_u16 v68, v97, s[16:19], 0 offen
	buffer_load_u16 v67, v98, s[16:19], 0 offen
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v95, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v151, s15 :: v_dual_add_nc_u32 v66, s35, v142
	v_dual_mov_b32 v148, s12 :: v_dual_add_nc_u32 v95, s35, v138
	v_dual_mov_b32 v147, s11 :: v_dual_add_nc_u32 v62, s1, v62
	v_dual_mov_b32 v150, s14 :: v_dual_add_nc_u32 v93, s35, v139
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[101:104], v66 offset:4096
	ds_load_b128 v[105:108], v66
	ds_load_b128 v[118:121], v93 offset:4096
	ds_load_b128 v[160:163], v93
	ds_load_b128 v[164:167], v95 offset:4096
	ds_load_b128 v[168:171], v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v145, s9 :: v_dual_add_nc_u32 v66, s1, v65
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[172:175], v62 offset:2048
	ds_load_b128 v[152:155], v62
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v146, s10 :: v_dual_add_nc_u32 v93, s1, v63
	v_dual_mov_b32 v144, s8 :: v_dual_add_nc_u32 v95, s1, v64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[62:65], v66 offset:2048
	ds_load_b128 v[176:179], v66
	ds_load_b128 v[180:183], v93 offset:2048
	ds_load_b128 v[184:187], v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v149, s13 :: v_dual_add_nc_u32 v94, s35, v140
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[188:191], v95
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[192:195], v94
	ds_load_b128 v[196:199], v94 offset:4096
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[200:203], v95 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[168:171], v[152:155], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[164:167], v[152:155], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[168:171], v[172:175], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[164:167], v[172:175], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[160:163], v[184:187], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[118:121], v[184:187], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[160:163], v[180:183], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[118:121], v[180:183], v[144:151] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[105:108], v[176:179], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[101:104], v[176:179], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[152:159], v[105:108], v[62:65], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[101:104], v[62:65], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[192:195], v[188:191], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[196:199], v[188:191], v[110:117] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[152:159], v[192:195], v[200:203], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[196:199], v[200:203], v[144:151] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v66, v93
	v_cvt_f32_i32_e32 v106, v94
	v_cvt_f32_i32_e32 v101, v95
	v_cvt_f32_i32_e32 v107, v96
	v_cvt_f32_i32_e32 v102, v97
	v_cvt_f32_i32_e32 v108, v98
	v_cvt_f32_i32_e32 v103, v99
	v_cvt_f32_i32_e32 v109, v100
	v_cvt_f32_i32_e32 v104, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v105, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v97, v114
	v_cvt_f32_i32_e32 v98, v115
	v_cvt_f32_i32_e32 v94, v116
	v_cvt_f32_i32_e32 v93, v117
	v_cvt_f32_i32_e32 v113, v152
	v_cvt_f32_i32_e32 v119, v153
	v_cvt_f32_i32_e32 v117, v154
	v_cvt_f32_i32_e32 v122, v155
	v_cvt_f32_i32_e32 v112, v156
	v_cvt_f32_i32_e32 v116, v157
	v_cvt_f32_i32_e32 v114, v158
	v_cvt_f32_i32_e32 v120, v159
	v_cvt_f32_i32_e32 v115, v144
	v_cvt_f32_i32_e32 v121, v145
	v_cvt_f32_i32_e32 v118, v146
	v_cvt_f32_i32_e32 v123, v147
	v_cvt_f32_i32_e32 v99, v148
	v_cvt_f32_i32_e32 v100, v149
	v_cvt_f32_i32_e32 v95, v150
	v_cvt_f32_i32_e32 v96, v151
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s5, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s18, s26
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s19, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s5, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v125.h, v134.l
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s1, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v134.h, v125.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v60, v60, s1, 1
	v_add_lshl_u32 v61, v61, s1, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s31
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v59, v59, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v58, v58, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v57, v57, s0, 1
	v_add_lshl_u32 v56, v56, s0, 1
	v_add_lshl_u32 v55, v55, s0, 1
	v_add_lshl_u32 v54, v54, s0, 1
	v_add_lshl_u32 v53, v53, s0, 1
	v_add_lshl_u32 v52, v52, s0, 1
	v_add_lshl_u32 v51, v51, s0, 1
	v_add_lshl_u32 v50, v50, s0, 1
	v_dual_cndmask_b32 v62, 0x80000000, v59 :: v_dual_cndmask_b32 v63, 0x80000000, v58
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x1
	buffer_load_u16 v58, v60, s[24:27], 0 offen
	buffer_load_u16 v59, v61, s[24:27], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v49, v49, s0, 1
	v_add_lshl_u32 v48, v48, s0, 1
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	s_clause 0xb
	buffer_load_u16 v60, v63, s[16:19], 0 offen
	buffer_load_u16 v61, v62, s[16:19], 0 offen
	buffer_load_u16 v56, v56, s[16:19], 0 offen
	buffer_load_u16 v57, v57, s[16:19], 0 offen
	buffer_load_u16 v54, v54, s[16:19], 0 offen
	buffer_load_u16 v55, v55, s[16:19], 0 offen
	buffer_load_u16 v52, v52, s[16:19], 0 offen
	buffer_load_u16 v53, v53, s[16:19], 0 offen
	buffer_load_u16 v50, v50, s[16:19], 0 offen
	buffer_load_u16 v51, v51, s[16:19], 0 offen
	buffer_load_u16 v62, v48, s[16:19], 0 offen
	buffer_load_u16 v63, v49, s[16:19], 0 offen
	v_add_lshl_u32 v48, v46, s0, 1
	v_add_lshl_u32 v49, v47, s0, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v46.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v46.h, v137.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v18, v18, s0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	v_mov_b16_e32 v125.l, v46.l
	v_add_lshl_u32 v19, v19, s0, 1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v47.h, v136.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x1
	buffer_load_u16 v48, v48, s[16:19], 0 offen
	buffer_load_u16 v49, v49, s[16:19], 0 offen
	v_mov_b16_e64 v65.h, v141.l
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v47.l, v46.l
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v65.l, v46.l
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v150, v46, v125 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v64, 56, v17
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v17, s31, v23
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v23.h, v143.l
	v_mov_b16_e32 v23.l, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v148, v46, v65 :: v_dual_mul_f32 v65, v65, v47
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_clause 0x1
	buffer_load_u16 v152, v18, s[16:19], 0 offen
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	v_mov_b16_e64 v124.h, v135.l
	v_mov_b16_e64 v127.h, v132.l
	v_mov_b16_e64 v128.h, v131.l
	v_mov_b16_e64 v131.h, v128.l
	v_mov_b16_e64 v132.h, v127.l
	v_mov_b16_e64 v135.h, v124.l
	v_mov_b16_e32 v124.l, v46.l
	v_mov_b16_e32 v127.l, v46.l
	v_mov_b16_e64 v128.l, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v149, v46, v23
	v_mul_f32_e32 v23, v23, v47
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v126.h, v133.l
	v_mov_b16_e64 v129.h, v130.l
	v_mov_b16_e64 v130.h, v129.l
	v_mov_b16_e64 v133.h, v126.l
	v_mov_b16_e32 v126.l, v46.l
	v_mov_b16_e64 v129.l, v46.l
	v_mov_b16_e64 v130.l, v46.l
	v_mov_b16_e64 v131.l, v46.l
	v_mov_b16_e64 v135.l, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v151, v46, v124 :: v_dual_mul_f32 v124, v124, v47
	v_dual_mul_f32 v125, v125, v47 :: v_dual_mul_f32 v154, v46, v126
	v_mul_f32_e32 v153, v46, v127
	v_dual_mul_f32 v127, v127, v47 :: v_dual_mul_f32 v156, v46, v128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v23, v72, v45
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v133.l, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v126, v126, v47
	v_dual_mul_f32 v155, v46, v129 :: v_dual_mul_f32 v128, v128, v47
	v_dual_mul_f32 v129, v129, v47 :: v_dual_mul_f32 v158, v46, v130
	v_mul_f32_e32 v157, v46, v131
	v_mul_f32_e32 v130, v130, v47
	v_mul_f32_e32 v161, v135, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v65, v80, v20
	v_fma_f32 v72, v151, v91, v37
	v_fma_f32 v80, v150, v86, v39
	v_fma_f32 v73, v124, v73, v44
	v_fma_f32 v69, v125, v69, v42
	v_fma_f32 v86, v156, v89, v29
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v45, v23, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v132.l, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v159, v46, v133
	v_mul_f32_e32 v133, v133, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v72, s2
	v_cndmask_b32_e64 v44, v44, v73, s2
	v_cndmask_b32_e64 v42, v42, v69, s2
	v_cndmask_b32_e64 v29, v29, v86, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s33, s31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v85, v154, v85, v33
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_add_i32 s1, s1, s30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v127, v70, v38
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_or_b32_e32 v162, s1, v64
	v_add3_u32 v18, s1, v64, 64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v149, v88, v41
	v_fma_f32 v75, v128, v75, v36
	v_fma_f32 v71, v129, v71, v34
	v_fma_f32 v88, v158, v90, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v65, s2
	v_cndmask_b32_e64 v41, v41, v64, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v138.h, v46.l
	v_mov_b16_e64 v142.h, v46.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v85, s2
	v_cndmask_b32_e64 v38, v38, v70, s2
	v_cndmask_b32_e64 v36, v36, v75, s2
	v_cndmask_b32_e64 v34, v34, v71, s2
	v_cndmask_b32_e64 v25, v25, v88, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v136.h, v46.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v82, v148, v82, v43
	v_fma_f32 v83, v155, v83, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v80, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v140.h, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v131, v131, v47 :: v_dual_mul_f32 v160, v46, v132
	v_mul_f32_e32 v132, v132, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v82, s2
	v_cndmask_b32_e64 v31, v31, v83, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v145.h, v46.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v131, v76, v30
	v_fma_f32 v79, v132, v79, v28
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v139.h, v46.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v87, v159, v87, v24
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v137.h, v46.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v76, s2
	v_cndmask_b32_e64 v28, v28, v79, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v143.h, v46.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v87, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e64 v134.l, v46.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v141.h, v46.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v89, v160, v92, v22
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v147.h, v46.l
	v_mov_b16_e64 v146.h, v46.l
	v_mov_b16_e64 v144.h, v46.l
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v21, s31, v21
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v22, v22, v89, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	v_and_b32_e32 v0, 16, v0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v45, 16, v58
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v58, 16, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v126, v74, v40
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v59, 16, v60
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v60, 16, v61
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v56, 16, v56
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v57, 16, v57
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v64, v59, v45 :: v_dual_lshlrev_b32 v55, 16, v55
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v77, v133, v77, v26
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v70, v55, v45 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v61, 16, v62
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v62, 16, v63
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v63, v60, v45
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v69, v56, v45 :: v_dual_mul_f32 v56, v58, v56
	v_dual_mul_f32 v73, v52, v45 :: v_dual_mul_f32 v52, v58, v52
	v_dual_mul_f32 v59, v58, v59 :: v_dual_lshlrev_b32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v56, v56, v122, v37
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v60, v58, v60
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v52, v52, v120, v29
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v65, v57, v45
	v_mul_f32_e32 v72, v53, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v56, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v63, v63, v66, v20
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v52, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v59, v59, v119, v41
	v_fma_f32 v65, v65, v101, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v138.l, v37.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v71, v54, v45
	v_mul_f32_e32 v54, v58, v54
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v142.l, v29.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v75, v50, v45
	v_mul_f32_e32 v50, v58, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v77, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v77, v61, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v69, v107, v44
	v_fma_f32 v69, v70, v102, v38
	v_fma_f32 v54, v54, v116, v33
	v_fma_f32 v50, v50, v121, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v63, s3
	v_cndmask_b32_e64 v41, v41, v59, s3
	v_cndmask_b32_e64 v42, v42, v65, s3
	v_cndmask_b32_e64 v40, v40, v74, s2
	v_cndmask_b32_e64 v38, v38, v69, s3
	v_cndmask_b32_e64 v33, v33, v54, s3
	v_cndmask_b32_e64 v25, v25, v50, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v50, v20, 16, 1
	v_mov_b16_e64 v136.l, v41.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v57, v58, v57
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v52, v42, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v157, v84, v27
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cmp_o_f32_e64 s5, v42, v42
	v_bfe_u32 v54, v38, 16, 1
	v_mov_b16_e64 v140.l, v33.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v53, v58, v53
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v20, v20, v50, 0x7fff
	v_and_b32_e32 v50, 1, v136
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v57, v57, v117, v39
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v42, v42, v52, 0x7fff
	v_and_b32_e32 v52, 1, v138
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v70, v71, v108, v40
	v_fma_f32 v71, v72, v103, v34
	v_fma_f32 v78, v130, v78, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v84, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v55, v58, v55 :: v_dual_mul_f32 v74, v51, v45
	v_mul_f32_e32 v51, v58, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v64, v106, v23
	v_fma_f32 v60, v60, v113, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v66, s3
	v_cndmask_b32_e64 v39, v39, v57, s3
	v_cndmask_b32_e64 v34, v34, v71, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s9, v38, v38
	v_add3_u32 v38, v38, v54, 0x7fff
	v_and_b32_e32 v54, 1, v140
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v53, v53, v114, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v78, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v51, v51, v115, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v64, s3
	v_cndmask_b32_e64 v43, v43, v60, s3
	v_cndmask_b32_e64 v31, v31, v53, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v53, v44, 16, 1
	v_mov_b16_e64 v139.l, v39.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v76, v62, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v56, v34, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v72, v73, v109, v36
	v_fma_f32 v73, v74, v104, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v27, v51, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v51, v23, 16, 1
	v_mov_b16_e64 v137.l, v43.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v62, v58, v62
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s6, v44, v44
	v_cmp_o_f32_e64 s13, v34, v34
	v_add3_u32 v44, v44, v53, 0x7fff
	v_and_b32_e32 v53, 1, v139
	v_add3_u32 v34, v34, v56, 0x7fff
	v_and_b32_e32 v56, 1, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v75, v110, v32
	v_fma_f32 v75, v76, v105, v26
	v_fma_f32 v76, v77, v111, v28
	v_fma_f32 v81, v153, v81, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v72, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s0, v23, v23
	v_add3_u32 v23, v23, v51, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v28, v76, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v51, 1, v137
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v62, v62, v118, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v81, s2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v57, v36, 16, 1
	v_cmp_o_f32_e64 s4, v43, v43
	v_cmp_o_f32_e64 s7, v37, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v62, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v62, v28, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v55, v55, v112, v35
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s14, v36, v36
	v_mov_b16_e64 v143.l, v31.h
	v_add3_u32 v36, v36, v57, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s0
	v_add3_u32 v23, v43, v51, 0x7fff
	v_add3_u32 v37, v37, v52, 0x7fff
	v_cmp_o_f32_e64 s22, v28, v28
	v_add3_u32 v28, v28, v62, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v40, v40, v70, s3
	v_cndmask_b32_e64 v35, v35, v55, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s13
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s14
	v_cndmask_b16 v28.l, 0x7fff, v23.h, s4
	v_cndmask_b16 v23.h, 0x7fff, v37.h, s7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v6, v161, v6, v16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v37, v46, v134 :: v_dual_lshlrev_b32 v36, 16, v48
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v57, 1, v143
	v_bfe_u32 v55, v40, 16, 1
	v_mov_b16_e64 v141.l, v35.h
	v_cmp_o_f32_e64 s16, v31, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v6, v16, v6, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v36, v45
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v31, v31, v57, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v32, v32, v74, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s15, v29, v29
	v_add3_u32 v29, v29, v56, 0x7fff
	v_cmp_o_f32_e64 s10, v40, v40
	v_add3_u32 v40, v40, v55, 0x7fff
	v_and_b32_e32 v55, 1, v141
	v_cndmask_b16 v29.l, 0x7fff, v31.h, s16
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v31, v134, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v60, v32, 16, 1
	v_cmp_o_f32_e64 s12, v35, v35
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s9
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s10
	v_add3_u32 v35, v35, v55, 0x7fff
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v31, v5, v15
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v31, 16, v49
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s18, v32, v32
	v_add3_u32 v32, v32, v60, 0x7fff
	v_mov_b16_e64 v147.l, v24.h
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v61, v58, v61
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v32.l, 0x7fff, v35.h, s12
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v35, v46, v135
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v15, v5, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v15, v31, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v75, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v62, 1, v147
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v61, v61, v123, v22
	v_fma_f32 v8, v35, v8, v14
	v_fma_f32 v16, v16, v97, v6
	v_fma_f32 v7, v37, v7, v13
	v_fma_f32 v15, v15, v98, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v73, s3
	v_cndmask_b32_e64 v22, v22, v61, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v61, v26, 16, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v14, v8, s2
	v_cndmask_b32_e64 v6, v6, v16, s3
	v_cndmask_b32_e64 v7, v13, v7, s2
	v_cndmask_b32_e64 v5, v5, v15, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v58, v31
	v_mul_f32_e32 v14, v58, v36
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v41, v41
	v_bfe_u32 v59, v30, 16, 1
	v_mov_b16_e64 v145.l, v27.h
	v_cmp_o_f32_e64 s21, v26, v26
	v_mov_b16_e64 v146.l, v22.h
	v_add3_u32 v26, v26, v61, 0x7fff
	v_add3_u32 v41, v41, v50, 0x7fff
	v_bfe_u32 v15, v6, 16, 1
	v_bfe_u32 v16, v5, 16, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v100, v7
	v_fma_f32 v14, v14, v99, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e64 v144.l, v25.h
	v_cmp_o_f32_e64 s11, v33, v33
	v_cmp_o_f32_e64 s17, v30, v30
	v_add3_u32 v30, v30, v59, 0x7fff
	v_and_b32_e32 v60, 1, v145
	v_add3_u32 v33, v33, v54, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s22
	v_cndmask_b16 v28.h, 0x7fff, v41.h, s1
	v_add3_u32 v15, v6, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v6, v6
	v_add3_u32 v6, v5, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v7, v13, s3
	v_cndmask_b32_e64 v7, v8, v14, s3
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v14.l, v46.l
	v_mov_b16_e32 v14.h, v68.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v61, 1, v146
	v_and_b32_e32 v59, 1, v144
	v_cmp_o_f32_e64 s20, v27, v27
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s17
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s18
	v_add3_u32 v27, v27, v60, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v33.h, s11
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e32 v8.h, v46.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v46, v14
	v_mul_f32_e32 v14, v14, v47
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v33, v22, v61, 0x7fff
	v_cmp_o_f32_e64 s19, v25, v25
	v_add3_u32 v25, v25, v59, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v27.h, s20
	v_add3_u32 v27, v24, v62, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_cndmask_b16 v6.l, 0x7fff, v15.h, s0
	v_and_b32_e32 v8, 1, v8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_mov_b16_e32 v15.l, v46.l
	v_mov_b16_e32 v15.h, v67.l
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v22.l, 0x7fff, v27.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v8, v5, v8, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v46, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v4, v16, v4, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v13.l, v7.h
	v_mov_b16_e32 v13.h, v46.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v2, v14, v2, v11
	v_fma_f32 v3, v5, v3, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v15, v47
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v12, v4, s2
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v152
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s5
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v1, v5, v1, v10
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v19
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v13, 1, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v9, v3, s2
	v_cndmask_b32_e64 v2, v11, v2, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v12, v45
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v10, v1, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v10, v58, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v13, v7, v13, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v5, v5, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v94, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v10, v96, v3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s8, v39, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v5, v5, v93, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v2, v9, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v9.h, v46.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v3, v7, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v39, v39, v53, 0x7fff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v1, v5, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v5, v2, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v13.h, vcc_lo
	v_mov_b16_e32 v9.l, v3.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cndmask_b16 v23.l, 0x7fff, v39.h, s8
	v_add3_u32 v5, v2, v5, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s15
	v_and_b32_e32 v2, 1, v9
	v_cmp_o_f32_e64 s1, v3, v3
	v_bfe_u32 v10, v1, 16, 1
	v_mov_b16_e32 v7.h, v46.l
	v_cmp_o_f32_e64 s0, v1, v1
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v58, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v9, v1, v10, 0x7fff
	v_mov_b32_e32 v10, 0x5410
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s19
	v_cndmask_b32_e32 v14, v29, v23, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v95, v4
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v3.h, 0x7fff, v9.h, s0
	v_cndmask_b32_e32 v10, 0x1054, v10, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b32_e32 v2, v20, v38, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v4, v11, s3
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v11, 0x7632
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v5, v42, v34, vcc_lo
	v_cndmask_b32_e32 v13, v28, v32, vcc_lo
	v_mov_b16_e32 v7.l, v4.h
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_cmp_o_f32_e64 s2, v4, v4
	v_dual_cndmask_b32 v15, v23, v29 :: v_dual_and_b32 v10, 0x540054, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 1, v7
	v_lshl_or_b32 v11, v11, 8, v11
	v_cndmask_b32_e32 v16, v8, v25, vcc_lo
	v_cndmask_b32_e32 v8, v25, v8, vcc_lo
	v_lshl_or_b32 v10, v10, 4, v10
	v_add3_u32 v1, v4, v7, 0x7fff
	v_and_b32_e32 v11, 0x760076, v11
	v_cndmask_b32_e32 v7, v6, v30, vcc_lo
	v_cndmask_b32_e32 v6, v30, v6, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v1, v38, v20, vcc_lo
	v_cndmask_b32_e32 v9, v3, v26, vcc_lo
	v_cndmask_b32_e32 v3, v26, v3, vcc_lo
	v_lshl_or_b32 v11, v11, 4, v11
	v_dual_cndmask_b32 v19, v0, v22 :: v_dual_cndmask_b32 v0, v22, v0
	v_cndmask_b32_e32 v4, v34, v42, vcc_lo
	v_cndmask_b32_e32 v12, v32, v28, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x5040504, v10
	v_permlanex16_b32 v20, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x7060706, v11
	v_permlanex16_b32 v11, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v22
	v_perm_b32 v1, v2, v1, v23
	v_perm_b32 v2, v5, v4, v22
	v_perm_b32 v3, v5, v4, v23
	v_perm_b32 v4, v6, v7, v22
	v_perm_b32 v5, v6, v7, v23
	v_perm_b32 v6, v20, v9, v22
	v_perm_b32 v7, v20, v9, v23
	v_perm_b32 v8, v13, v12, v22
	v_perm_b32 v9, v13, v12, v23
	v_perm_b32 v12, v15, v16, v22
	v_perm_b32 v13, v15, v16, v23
	v_add_lshl_u32 v16, v162, v21, 1
	v_perm_b32 v10, v11, v14, v22
	v_perm_b32 v11, v11, v14, v23
	v_perm_b32 v14, v24, v19, v22
	v_perm_b32 v15, v24, v19, v23
	v_add_lshl_u32 v19, v18, v21, 1
	v_add_lshl_u32 v20, v162, v17, 1
	v_add_lshl_u32 v17, v18, v17, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[28:31], 0 offen
	buffer_store_b128 v[4:7], v19, s[28:31], 0 offen
	buffer_store_b128 v[8:11], v20, s[28:31], 0 offen
	buffer_store_b128 v[12:15], v17, s[28:31], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 213
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11496
; TotalNumSgprs: 47
; NumVgprs: 213
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 47
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     213
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
